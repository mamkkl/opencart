<?php

	class ControllerExtensionModuleTTLoadMorePagination extends Controller {
			public function index() {
				$this->load->language('extension/module/tt_load_more_pagination');

				$this->load->model('catalog/category');

				$this->load->model('catalog/product');
				
				$this->load->model('catalog/manufacturer');

				$this->load->model('tool/image');

				//get data from ajax request
				if (isset($this->request->post['number'])) {
					$number = $this->request->post['number'];
				} else {
					$number = '';
				}

				if (isset($this->request->post['category'])) {
					$category = $this->request->post['category'];
				} else {
					$category = '';
				}
				
				if (isset($this->request->get['manufacturer_id'])) {
					$manufacturer_id = (int)$this->request->get['manufacturer_id'];
				} else {
					$manufacturer_id = 0;
				}

				if (isset($this->request->post['path'])) {
					$path = $this->request->post['path'];
				} else {
					$path = '';
				}

				if (isset($this->request->get['sort'])) {
					$sort = $this->request->get['sort'];
				} else {
					$sort = 'p.sort_order';
				}


				if (isset($this->request->post['filter'])) {
					$filter = $this->request->post['filter'];
				} else {
					$filter = '';
				}

				if (isset($this->request->post['order'])) {
					$order = $this->request->post['order'];
				} else {
					$order = 'ASC';
				}

				if (isset($this->request->post['step'])) {
					$step = $this->request->post['step'];
				} else {
					$step = 1;
				}

				if (isset($this->request->post['tax'])) {
					$tax = $this->request->post['tax'];
				} else {
					$tax = 0;
				}

				if (isset($this->request->post['review_status'])) {
					$review_status = $this->request->post['review_status'];
				} else {
					$review_status = 0;
				}

				if (isset($this->request->post['display'])) {
					$display = $this->request->post['display'];
				} else {
					$display = 'grid';
				}

				if (isset($this->request->post['cols'])) {
					$cols = $this->request->post['cols'];
				} else {
					$cols = '';
				}


				$data['text_tax'] = $this->language->get('text_points');
				$data['button_cart'] = $this->language->get('button_cart');
				$data['display'] = $display;
				$data['cols'] = $cols;


				

				$data['products'] = array();

				$filter_data = array(
					'filter_category_id' => $category,
					'filter_filter'      => $filter,
					'sort'               => $sort,
					'order'              => $order,
					'start'              => ($step) * $number,
					'limit'              => $number
				);

				$data['step'] = $step++;

				$product_total = $this->model_catalog_product->getTotalProducts($filter_data);


				$results = $this->model_catalog_product->getProducts($filter_data);


				foreach ($results as $result) {
					if ($result['image']) {
						$image = $this->model_tool_image->resize($result['image'], $this->config->get('theme_' . $this->config->get('config_theme') . '_image_product_width'), $this->config->get('theme_' . $this->config->get('config_theme') . '_image_product_height'));
					} else {
						$image = $this->model_tool_image->resize('placeholder.png', $this->config->get('theme_' . $this->config->get('config_theme') . '_image_product_width'), $this->config->get('theme_' . $this->config->get('config_theme') . '_image_product_height'));
					}
					
					
				$images = $this->model_catalog_product->getProductImages($result['product_id']);
	
				if(isset($images[0]['image']) && !empty($images[0]['image'])){
					  $images = $images[0]['image'];
					  $thumb_swap = $this->model_tool_image->resize($images, $this->config->get('theme_' . $this->config->get('config_theme') . '_image_product_width'), $this->config->get('theme_' . $this->config->get('config_theme') . '_image_product_height'));
				   } else {
						$thumb_swap="";
				   }


					if ($this->customer->isLogged() || !$this->config->get('config_customer_price')) {
						$price = $this->currency->format($this->tax->calculate($result['price'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
					} else {
						$price = false;
					}

					if ((float)$result['special']) {
						$special = $this->currency->format($this->tax->calculate($result['special'], $result['tax_class_id'], $this->config->get('config_tax')), $this->session->data['currency']);
					} else {
						$special = false;
					}
					
					if ((float)$result['special']) {
						$data['percent'] = round(100 - ($result['special']*100/$result['price']));
					} else {
						$data['percent'] = false;
					}

					if ($this->config->get('config_tax')) {
						$tax = $this->currency->format((float)$result['special'] ? $result['special'] : $result['price'], $this->session->data['currency']);
					} else {
						$tax = false;
					}

					if ($this->config->get('config_review_status')) {
						$rating = (int)$result['rating'];
					} else {
						$rating = false;
					}

					$url = '';

					if (isset($this->request->get['filter'])) {
						$url .= '&filter=' . $this->request->get['filter'];
					}

					if (isset($this->request->get['sort'])) {
						$url .= '&sort=' . $this->request->get['sort'];
					}

					if (isset($this->request->get['order'])) {
						$url .= '&order=' . $this->request->get['order'];
					}

					if (isset($this->request->get['limit'])) {
						$url .= '&limit=' . $this->request->get['limit'];
					}
					
					$to_date = $this->model_catalog_product->getProductSpecialData($result['product_id']);
					$to_date = $to_date['date_end'];

					$data['products'][] = array(
						'product_id'  => $result['product_id'],
						'thumb'       => $image,
						'thumb_swap'  => $thumb_swap,
						'name'        => $result['name'],
						'description' => utf8_substr(strip_tags(html_entity_decode($result['description'], ENT_QUOTES, 'UTF-8')), 0, $this->config->get($this->config->get('config_theme') . '_product_description_length')) . '..',
						'price'       => $price,
						'percent'     => $data['percent'],
						'special'     => $special,
						'to_date'     => $to_date,
						'tax'         => $tax,
						'rating'      => $rating,
						'product_quantity'  => $result['quantity'],
						'product_stock'  => $result['stock_status'],
						'text_stock'  => $this->language->get('text_stock'),
						'href'        => $this->url->link('product/product', 'path=' . $path . '&product_id=' . $result['product_id'] . $url)
					);
				}


				$this->response->setOutput($this->load->view('extension/module/tt_load_more_pagination', $data));
		}

		public function NumberProducts() {
			echo 'NUMBER';
		}

	}
