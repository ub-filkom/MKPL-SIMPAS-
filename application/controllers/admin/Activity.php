<?php if(!defined('BASEPATH')) exit('Hacking Attempt. Keluar dari sistem.');

    class Activity extends CI_Controller {
        private $datauser;
  		public function __construct() {
			parent::__construct();
    
			$this->load->library(array('session'));
			$this->load->helper('url');
		     	$this->load->model('m_surat');
			$this->load->database();
			$this->datauser = $this->session->userdata('data_user');
		}
            public function index() {
            if($this->session->userdata('data_user')->level != 1  ){
            redirect('/login/login_form');
           
        }
         	$this->load->model('m_log');
                $this->load->model('m_user');
                    $user = $this->session->userdata('data_user');
                    $data['dataPegawai'] = $user;
                   
                    $data['log'] = $this->m_log->getlog();
               
        	$this->load->view('admin/activity',$data);
       
                
                    
             
    }
             public function moreactivity() {
                if($this->session->userdata('data_user')->level != 1  ){
                redirect('/login/login_form');

            }
                    $this->load->model('m_log');
                    $user = $this->session->userdata('data_user');
                    $data['dataPegawai'] = $user;
                    $data['log'] = $this->m_log->getlog();
                    $this->load->view('admin/moreactivity',$data);




        }
    }
/* End of file welcome.php */
/* Location: ./application/controllers/welcome.php */
?>
