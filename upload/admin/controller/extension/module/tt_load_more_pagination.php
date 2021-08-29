<?php 
class ControllerExtensionModuleTTLoadMorePagination extends Controller {
		private $error = array();

		public function index()
		{
			$this->load->language('extension/module/tt_load_more_pagination');

			$this->document->setTitle($this->language->get('heading_title'));

			$this->load->model('setting/setting');

			if (($this->request->server['REQUEST_METHOD'] == 'POST') && $this->validate()) {
				$this->model_setting_setting->editSetting('module_tt_load_more_pagination', $this->request->post);
				
				$this->session->data['success'] = $this->language->get('text_success');

				$this->response->redirect($this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=module', true));
			}


			$data['heading_title'] = $this->language->get('heading_title');

			$data['text_edit'] = $this->language->get('text_edit');
			$data['text_enabled'] = $this->language->get('text_enabled');
			$data['text_disabled'] = $this->language->get('text_disabled');

			$data['entry_status'] = $this->language->get('entry_status');

			$data['button_save'] = $this->language->get('button_save');
			$data['button_cancel'] = $this->language->get('button_cancel');
			$data['entry_name'] = $this->language->get('entry_name');
			$data['error_name'] = $this->language->get('error_name');   

			if (isset($this->error['warning'])) {
				$data['error_warning'] = $this->error['warning'];
			} else {
				$data['error_warning'] = '';
			}

			if (isset($this->session->data['success'])) {
				$data['success'] = $this->session->data['success'];
				unset($this->session->data['success']);
			} else {
				$data['success'] = '';
			}

			if (isset($this->error['name'])) {
				$data['error_name'] = $this->error['name'];
			} else {
				$data['error_name'] = '';
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
				'href' => $this->url->link('extension/module/tt_load_more_pagination', 'user_token=' . $this->session->data['user_token'], true)
			);
			
			$data['action'] = $this->url->link('extension/module/tt_load_more_pagination', 'user_token=' . $this->session->data['user_token'], true);

			$data['cancel'] = $this->url->link('marketplace/extension', 'user_token=' . $this->session->data['user_token'] . '&type=module', true);

			if (isset($this->request->post['module_tt_load_more_pagination_status'])) {
				$data['module_tt_load_more_pagination_status'] = $this->request->post['module_tt_load_more_pagination_status'];
			} else {
				$data['module_tt_load_more_pagination_status'] = $this->config->get('module_tt_load_more_pagination_status');
			}


			if (isset($this->request->post['module_tt_load_more_pagination_name'])) {
				$data['module_tt_load_more_pagination_name'] = $this->request->post['module_tt_load_more_pagination_name'];
			} else {
				$data['module_tt_load_more_pagination_name'] = $this->config->get('module_tt_load_more_pagination_name');
			}


			$data['header'] = $this->load->controller('common/header');
			$data['column_left'] = $this->load->controller('common/column_left');
			$data['footer'] = $this->load->controller('common/footer');

			$this->response->setOutput($this->load->view('extension/module/tt_load_more_pagination', $data));
		
		}


			protected function validate() {
			if (!$this->user->hasPermission('modify', 'extension/module/tt_load_more_pagination')) {
				$this->error['warning'] = $this->language->get('error_permission');
			}
	
			return !$this->error;
			}

	}