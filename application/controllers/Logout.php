<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Logout extends CI_Controller {
        private $datauser;
		public function __construct() {
			parent::__construct();

			$this->load->model('m_login');
			$this->load->library(array('form_validation','session'));
			$this->load->database();
			$this->load->helper('url');
                        
                       
    
			$this->load->library(array('session'));
			$this->load->helper('url');
		     	$this->load->model('m_login');
			$this->load->database();
			$this->datauser = $this->session->userdata('data_user');
		
 		}
	public function index(){
              $this->session->sess_destroy();	   		
	redirect('main');
	}
}
