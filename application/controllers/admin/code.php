<?php if(!defined('BASEPATH')) exit('Hacking Attempt. Keluar dari sistem.');

	class Code extends CI_Controller {

		private $datauser;
  		public function __construct() {
			parent::__construct();
    
			$this->load->library(array('session'));
			$this->load->helper('url');
		     	$this->load->model('m_login');
			$this->load->database();
			$this->datauser = $this->session->userdata('data_user');
		}
  		public function qr($id) {
			if($this->session->userdata('data_user')->level != 1) {                        
				redirect('login/login_form');
			} else {  
                            //echo 'tes';
                              $this->load->library('ciqrcode');
                              $this->load->model('m_surat');
                              $params['data'] = $this->m_surat->code($id)->nomorsurat;   
                              $params['level'] = 'H';
                              $params['size'] = 10;
                              $params['savename'] = FCPATH.'rtw.png';
                              $this->ciqrcode->generate($params);
                              $data['qr'] = '<img src="'.base_url().'rtw.png" />';
                              
                            
                             
    			}                       
		} 
	}
