<?php if(!defined('BASEPATH')) exit('Hacking Attempt. Keluar dari sistem.');

	class Welcome extends CI_Controller {

		private $datauser;
  		public function __construct() {
			parent::__construct();
    
			$this->load->library(array('session'));
			$this->load->helper('url');
		     	$this->load->model('m_login');
			$this->load->database();
			$this->datauser = $this->session->userdata('data_user');
		}
  		public function index() {
			if($this->session->userdata('isLogin') == FALSE) {                        
				redirect('main');
			} else {  
                                $user = $this->session->userdata('data_user');
                                $id = $user->id;
				$data['dataPegawai'] = $user;
				$this->load->view('welcome_home',$data);                                                        
    			}
                        
                        
		} 
	}
