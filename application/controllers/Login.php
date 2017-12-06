<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {
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
	public function index()
	{
		$this->load->view('login_form');
	}
      
        public function login_form() {                
                    $this->load->helper('security');
                    $this->form_validation->set_rules('username', 'username', 'required|trim|xss_clean');
                    $this->form_validation->set_rules('password', 'password', 'required|md5|xss_clean');
                    $this->form_validation->set_error_delimiters('<span class="error">', '</span>');
    
			if($this->form_validation->run()==FALSE) {
                              
                            redirect('main');
			}else{
       				$username = $this->input->post('username');
       				$password = $this->input->post('password');
       				//$level = $this->input->post('level');      
       				$cek = $this->m_login->ambilPengguna($username, $password, 1/*, $level*/);
                                
        			if($cek  ->num_rows() <> 0) {
					$this->session->set_userdata('isLogin', TRUE);
					$this->session->set_userdata('data_user',$cek->row());
                                        $this->load->model('m_log');                              
                                        $user = $this->session->userdata('data_user');
                                        $id = $user->id;
                                            $logdata =  array(
                                            'iduser'=> $user->id,
                                            'username'=> $user->username,
                                            'action'   =>'Login',
                                            'status'   =>'Sukses'                                                                           
                                    );
                               
                                $this->m_log->logactivity($logdata); 
					redirect('home');
                        
                                }
                                else {   
                                    $this->load->model('m_log');
                                     	$user = $this->session->userdata('data_user');				
                                        $data['dataPegawai'] = $user;                                                                       
                                            $logdata =  array(
                                                    'username'=> $this->input->post('username'),
                                                    'action'   =>'Login',
                                                    'status'   => 'gagal'                                                                           
                                            );
                                          $this->m_log->logactivity($logdata); 
         				echo " <script>
		            				alert('Gagal Login: Cek username dan password anda');
		            				history.go(-1);
		          		</script>"; 
        }
        
                        }
}
}
