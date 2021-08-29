<?php
class ControllerExtensionModuleTTThemeSettings extends Controller {
	private $error = array();

	public function index() {
		$this->load->language('extension/module/tt_themesettings');

		$this->document->setTitle($this->language->get('heading_title'));

		$this->load->model('setting/setting');
		
		
		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate() && isset($this->request->post['module_tt_reset'])) {
		
			$this->request->post['module_tt_themesettings_effects'] = 'fade';
			$this->request->post['module_tt_themesettings_button_effects'] = 'product_btn_style3';
			$this->request->post['module_tt_themesettings_header_layouts'] = 'header_style2';
			$this->request->post['module_tt_themesettings_header_sticky'] = 'header_sticky_on';
			$this->request->post['module_tt_themesettings_footer_layouts'] = 'footer_style2';
			$this->request->post['module_tt_themesettings_blog_style'] = 'blog_style1';
			$this->request->post['module_tt_themesettings_product_column'] = 'column_6';
			$this->request->post['module_tt_themesettings_page_filter'] = 'off-canvas_left_filter';
			$this->request->post['module_tt_themesettings_page_load'] = 'product_pagination';
			$this->request->post['module_tt_themesettings_grid_view'] = 'grid-default';
			$this->request->post['module_tt_themesettings_product_layouts'] = 'product_sticky_right';
			$this->request->post['module_tt_themesettings_responsive_layouts'] = 'responsive_style1';
						
			$this->model_setting_setting->editSetting('module_tt_themesettings', $this->request->post);
						
			$this->session->data['success'] = $this->language->get('text_success');

			$this->response->redirect($this->url->link('extension/module/tt_themesettings', 'user_token=' . $this->session->data['user_token'] . '&type=module', true));
		}

		if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
			$this->model_setting_setting->editSetting('module_tt_themesettings', $this->request->post);
			
			$sql = "SELECT * FROM " . DB_PREFIX . "layout";
			$query = $this->db->query($sql);
			$results = $query->rows;

			
			switch($this->request->post['module_tt_themesettings_footer_layouts']):
			case 'footer_default':
				$layout_modules = [
					["code"=>"ttnewslettersubscribe.93","position"=>"footer_top","sort_order"=>0],
					["code"=>"html.49","position"=>"footer_right","sort_order"=>0],
					["code"=>"html.132","position"=>"footer_right","sort_order"=>1],
					["code"=>"html.113","position"=>"footer_bottom","sort_order"=>0],
					["code"=>"html.147","position"=>"footer_bottom","sort_order"=>1]
				];
				break;
			case 'footer_style1':
				$layout_modules = [
					["code"=>"ttnewslettersubscribe.93","position"=>"footer_left","sort_order"=>1],
					["code"=>"html.49","position"=>"footer_left","sort_order"=>0],
					["code"=>"html.105","position"=>"footer_bottom","sort_order"=>0],
					["code"=>"html.108","position"=>"footer_bottom","sort_order"=>1],
					["code"=>"html.113","position"=>"footer_bottom","sort_order"=>2],
					["code"=>"html.132","position"=>"footer_bottom","sort_order"=>3],
					["code"=>"html.147","position"=>"footer_bottom","sort_order"=>4]
				];
				break;
			case 'footer_style2':
				$layout_modules = [
					["code"=>"html.142","position"=>"footer_top","sort_order"=>0],
					["code"=>"ttnewslettersubscribe.93","position"=>"footer_top","sort_order"=>1],
					["code"=>"html.108","position"=>"footer_top","sort_order"=>2],
					["code"=>"html.132","position"=>"footer_top","sort_order"=>3],
					["code"=>"html.49","position"=>"footer_right","sort_order"=>0],
					["code"=>"html.133","position"=>"footer_left","sort_order"=>2],
					["code"=>"html.113","position"=>"footer_bottom","sort_order"=>0],
					["code"=>"html.147","position"=>"footer_bottom","sort_order"=>1]
				];
			break;
			endswitch;
			
			foreach ($results as $result) {
				$this->db->query("DELETE FROM " . DB_PREFIX . "layout_module WHERE position like ('footer%') and layout_id = '" . (int)$result['layout_id'] . "'");
				foreach ($layout_modules as $layout_module) {
					$this->db->query("INSERT INTO " . DB_PREFIX . "layout_module SET layout_id = '" . (int)$result['layout_id'] . "', code = '" . $this->db->escape($layout_module['code']) . "', position = '" . $this->db->escape($layout_module['position']) . "', sort_order = '" . (int)$layout_module['sort_order'] . "'");
				}
			}
							
			$this->session->data['success'] = $this->language->get('text_success');

			$this->response->redirect($this->url->link('extension/module/tt_themesettings', 'user_token=' . $this->session->data['user_token'] . '&type=module', true));
		}
		
		$data['heading_title'] = $this->language->get('heading_title');
		
		$data['text_edit'] = $this->language->get('text_edit');
		$data['text_enabled'] = $this->language->get('text_enabled');
		$data['text_disabled'] = $this->language->get('text_disabled');

		$data['entry_status'] = $this->language->get('entry_status');
		$data['entry_effects'] = $this->language->get('entry_effects');
		$data['entry_header_layouts'] = $this->language->get('entry_header_layouts');
		$data['entry_header_sticky'] = $this->language->get('entry_header_sticky');

		$data['button_save'] = $this->language->get('button_save');
		$data['button_cancel'] = $this->language->get('button_cancel');

		if (isset($this->error['warning'])) {
			$data['error_warning'] = $this->error['warning'];
		} else {
			$data['error_warning'] = '';
		}

		$data['breadcrumbs'] = array();

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_home'),
			'href' => $this->url->link('common/dashboard', 'user_token=' . $this->session->data['user_token'], true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('text_extension'),
			'href' => $this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=module', true)
		);

		$data['breadcrumbs'][] = array(
			'text' => $this->language->get('heading_title'),
			'href' => $this->url->link('extension/module/tt_themesettings', 'user_token=' . $this->session->data['user_token'], true)
		);

		$data['action'] = $this->url->link('extension/module/tt_themesettings', 'user_token=' . $this->session->data['user_token'], true);

		$data['cancel'] = $this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=module', true);
		
		if (isset($this->request->post['module_tt_themesettings_effects'])) {
			$data['module_tt_themesettings_effects'] = $this->request->post['module_tt_themesettings_effects'];
		} elseif ($this->config->get('module_tt_themesettings_effects')) {
			$data['module_tt_themesettings_effects'] = $this->config->get('module_tt_themesettings_effects');
		} else {
			$data['module_tt_themesettings_effects'] = 'fade';
		}
		
		if (isset($this->request->post['module_tt_themesettings_button_effects'])) {
			$data['module_tt_themesettings_button_effects'] = $this->request->post['module_tt_themesettings_button_effects'];
		} elseif ($this->config->get('module_tt_themesettings_button_effects')) {
			$data['module_tt_themesettings_button_effects'] = $this->config->get('module_tt_themesettings_button_effects');
		} else {
			$data['module_tt_themesettings_button_effects'] = 'product_btn_style3';
		}
		
		if (isset($this->request->post['module_tt_themesettings_header_layouts'])) {
			$data['module_tt_themesettings_header_layouts'] = $this->request->post['module_tt_themesettings_header_layouts'];
		} elseif ($this->config->get('module_tt_themesettings_header_layouts')) {
			$data['module_tt_themesettings_header_layouts'] = $this->config->get('module_tt_themesettings_header_layouts');
		} else {
			$data['module_tt_themesettings_header_layouts'] = 'header_style2';
		}
		
		if (isset($this->request->post['module_tt_themesettings_header_sticky'])) {
			$data['module_tt_themesettings_header_sticky'] = $this->request->post['module_tt_themesettings_header_sticky'];
		} elseif ($this->config->get('module_tt_themesettings_header_sticky')) {
			$data['module_tt_themesettings_header_sticky'] = $this->config->get('module_tt_themesettings_header_sticky');
		} else {
			$data['module_tt_themesettings_header_sticky'] = 'header_sticky_on';
		}
		
		if (isset($this->request->post['module_tt_themesettings_footer_layouts'])) {
			$data['module_tt_themesettings_footer_layouts'] = $this->request->post['module_tt_themesettings_footer_layouts'];
		} elseif ($this->config->get('module_tt_themesettings_footer_layouts')) {
			$data['module_tt_themesettings_footer_layouts'] = $this->config->get('module_tt_themesettings_footer_layouts');
		} else {
			$data['module_tt_themesettings_footer_layouts'] = 'footer_style2';
		}
		
		if (isset($this->request->post['module_tt_themesettings_blog_style'])) {
			$data['module_tt_themesettings_blog_style'] = $this->request->post['module_tt_themesettings_blog_style'];
		} elseif ($this->config->get('module_tt_themesettings_blog_style')) {
			$data['module_tt_themesettings_blog_style'] = $this->config->get('module_tt_themesettings_blog_style');
		} else {
			$data['module_tt_themesettings_blog_style'] = 'blog_style1';
		}
		
		if (isset($this->request->post['module_tt_themesettings_product_column'])) {
			$data['module_tt_themesettings_product_column'] = $this->request->post['module_tt_themesettings_product_column'];
		} elseif ($this->config->get('module_tt_themesettings_product_column')) {
			$data['module_tt_themesettings_product_column'] = $this->config->get('module_tt_themesettings_product_column');
		} else {
			$data['module_tt_themesettings_product_column'] = 'column_6';
		}
		
		if (isset($this->request->post['module_tt_themesettings_page_filter'])) {
			$data['module_tt_themesettings_page_filter'] = $this->request->post['module_tt_themesettings_page_filter'];
		} elseif ($this->config->get('module_tt_themesettings_page_filter')) {
			$data['module_tt_themesettings_page_filter'] = $this->config->get('module_tt_themesettings_page_filter');
		} else {
			$data['module_tt_themesettings_page_filter'] = 'off-canvas_left_filter';
		}
		
		if (isset($this->request->post['module_tt_themesettings_page_load'])) {
			$data['module_tt_themesettings_page_load'] = $this->request->post['module_tt_themesettings_page_load'];
		} elseif ($this->config->get('module_tt_themesettings_page_load')) {
			$data['module_tt_themesettings_page_load'] = $this->config->get('module_tt_themesettings_page_load');
		} else {
			$data['module_tt_themesettings_page_load'] = 'product_pagination';
		}
		
		if (isset($this->request->post['module_tt_themesettings_grid_view'])) {
			$data['module_tt_themesettings_grid_view'] = $this->request->post['module_tt_themesettings_grid_view'];
		} elseif ($this->config->get('module_tt_themesettings_grid_view')) {
			$data['module_tt_themesettings_grid_view'] = $this->config->get('module_tt_themesettings_grid_view');
		} else {
			$data['module_tt_themesettings_grid_view'] = 'grid-default';
		}
		
		if (isset($this->request->post['module_tt_themesettings_product_layouts'])) {
			$data['module_tt_themesettings_product_layouts'] = $this->request->post['module_tt_themesettings_product_layouts'];
		} elseif ($this->config->get('module_tt_themesettings_product_layouts')) {
			$data['module_tt_themesettings_product_layouts'] = $this->config->get('module_tt_themesettings_product_layouts');
		} else {
			$data['module_tt_themesettings_product_layouts'] = 'product_sticky_right';
		}
		
		if (isset($this->request->post['module_tt_themesettings_responsive_layouts'])) {
			$data['module_tt_themesettings_responsive_layouts'] = $this->request->post['module_tt_themesettings_responsive_layouts'];
		} elseif ($this->config->get('module_tt_themesettings_responsive_layouts')) {
			$data['module_tt_themesettings_responsive_layouts'] = $this->config->get('module_tt_themesettings_responsive_layouts');
		} else {
			$data['module_tt_themesettings_responsive_layouts'] = 'responsive_style1';
		}
		
		if (isset($this->request->post['module_tt_themesettings_image'])) {
			$data['module_tt_themesettings_image'] = $this->request->post['module_tt_themesettings_image'];
		} else {
			$data['module_tt_themesettings_image'] = $this->config->get('module_tt_themesettings_image');
		}

		if (isset($this->request->post['module_tt_themesettings_status'])) {
			$data['module_tt_themesettings_status'] = $this->request->post['module_tt_themesettings_status'];
		} else {
			$data['module_tt_themesettings_status'] = $this->config->get('module_tt_themesettings_status');
		}
		
		$this->load->model('tool/image');
		
		if (isset($this->request->post['module_tt_themesettings_image']) && is_file(DIR_IMAGE . $this->request->post['module_tt_themesettings_image'])) {
			$data['thumb'] = $this->model_tool_image->resize($this->request->post['module_tt_themesettings_image'], 100, 100);
		} elseif ($this->config->get('module_tt_themesettings_image') && is_file(DIR_IMAGE . $this->config->get('module_tt_themesettings_image'))) {
			$data['thumb'] = $this->model_tool_image->resize($this->config->get('module_tt_themesettings_image'), 100, 100);
		} else {
			$data['thumb'] = $this->model_tool_image->resize('no_image.png', 100, 100);
		}
		$data['placeholder'] = $this->model_tool_image->resize('no_image.png', 100, 100);
		
		$data['header'] = $this->load->controller('common/header');
		$data['column_left'] = $this->load->controller('common/column_left');
		$data['footer'] = $this->load->controller('common/footer');

		$this->response->setOutput($this->load->view('extension/module/tt_themesettings', $data));
	}
	
	public function refresh() {
		$this->load->language('extension/module/tt_themesettings');

		$this->load->model('setting/extension');

		$this->load->model('setting/module');

		if ($this->validate()) {
			$this->model_setting_extension->uninstall('module', $this->request->get['extension']);

			$this->model_setting_module->deleteModulesByCode($this->request->get['extension']);

			// Call uninstall method if it exsits
			$this->load->controller('extension/module/' . $this->request->get['extension'] . '/uninstall');
		}

		$this->getList();
	}

	protected function validate() {
		if (!$this->user->hasPermission('modify', 'extension/module/tt_themesettings')) {
			$this->error['warning'] = $this->language->get('error_permission');
		}

		return !$this->error;
	}
}