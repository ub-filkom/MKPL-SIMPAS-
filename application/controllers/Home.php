<?php if(!defined('BASEPATH')) exit('Hacking Attempt. Keluar dari sistem.');

	class Home extends CI_Controller {

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
                            $this->load->model('m_surat');
                              $this->load->model('m_user');
                                $this->load->model('m_log');
                                $user = $this->session->userdata('data_user');
                                $id = $user->id;
				$data['dataPegawai'] = $user;
                                $data['datasurat'] = $this->m_surat->semua(); 
                                $data['dataAdmin'] = $this->m_user->getAdmin($id);
                                 $data['dataOperator'] = $this->m_user->getSingleoperator($id);
                                
                                $data['datauser'] = $this->m_user->getSingleuser($id);
                                $data['log'] = $this->m_log->getlog();
				$this->load->view('welcome_home',$data);   
            
         
           
                                
                                
                                 
    			}
                        
                        
		} 
	}
