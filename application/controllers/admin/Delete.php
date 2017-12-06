<?php if(!defined('BASEPATH')) exit('Hacking Attempt. Keluar dari sistem.');

	class Delete extends CI_Controller {

		private $datauser;
  		public function __construct() {
			parent::__construct();
    
			$this->load->library(array('session'));
			$this->load->helper('url');
		     	$this->load->model('m_login');
			$this->load->database();
			$this->datauser = $this->session->userdata('data_user');
		}
  		 public function operator($id) {
                    if($this->session->userdata('data_user')->level != 1  ){
                    redirect('/login/login_form');      
                    }
                        $this->load->helper('url');
                        $this->load->model('m_user');  
                        $user = $this->session->userdata('data_user');
                        $data['dataPegawai'] = $user;
                        $this->m_user->deleteoperator($id);
                        redirect('admin/listoperator');             
                 } 
                 public function user($id) {
                    if($this->session->userdata('data_user')->level != 1  ){
                    redirect('/login/login_form');      
                    }
                        $this->load->helper('url');
                        $this->load->model('m_user');  
                        $user = $this->session->userdata('data_user');
                        $data['dataPegawai'] = $user;
                        $this->m_user->deleteuser($id);
                        redirect('admin/listuser');             
                 } 
                 public function log($id) {
                            if($this->session->userdata('data_user')->level != 1  ){
                            redirect('/login/login_form');      
                            }
                                $this->load->helper('url');
                                $this->load->model('m_log');  
                                $user = $this->session->userdata('data_user');
                                $data['dataPegawai'] = $user;
                                $this->m_log->deletelog($id);
                                redirect('admin/activity');             
                } 
	}
