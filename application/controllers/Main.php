<?php if(!defined('BASEPATH')) exit('Hacking Attempt. Keluar dari sistem.');

	class Main extends CI_Controller {

		private $datauser;
  		public function __construct() {
			parent::__construct();
    
			$this->load->library(array('session'));
			$this->load->helper('url');
		     	$this->load->model('m_login');
                        $this->load->model('m_surat');
                        
			$this->load->database();
			$this->datauser = $this->session->userdata('data_user');
		}
  		public function index() {
                        $this->load->model('m_surat');
                        $user = $this->session->userdata('data_user');
                        $data['dataPegawai'] = $user;                                        
                        $keyword    =   $this->input->post('keyword');
                        $data['results']    =   $this->m_surat->search($keyword);                   
			$this->load->view('main',$data);           
		}              
	}
