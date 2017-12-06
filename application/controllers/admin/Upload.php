<?php defined('BASEPATH') OR exit('No direct script access allowed');
class Upload extends CI_Controller{
      public function __construct() {
			parent::__construct();
			$this->load->model('m_login');
                        $this->load->model('m_user');   
                          $this->load->model('m_surat');   
			$this->load->library(array('form_validation','session'));
			$this->load->database();
			$this->load->helper(array('url','form'));
 		}         
      
      public function input() {    
             if($this->session->userdata('data_user')->level != 1){
             redirect('/login/login_form');
             }
                $this->form_validation->set_rules('nosurat', 'nosurat', 'required');
                $this->form_validation->set_rules('perihal', 'perihal', 'required');
                $this->form_validation->set_rules('pengirim', 'pengirim', 'required');
                      if($this->form_validation->run() == FALSE){
                          $user = $this->session->userdata('data_user');
                          $id = $user->id;
                          $data['dataPegawai'] = $user;
                          $this->load->model('m_log');                              
                                        $user = $this->session->userdata('data_user');
                                        $id = $user->id;
                                            $logdata =  array(
                                            'iduser'=> $user->id,
                                            'username'=> $user->username,
                                            'action'   =>'Insert Data Surat Masuk',
                                            'status'   =>'Gagal'                                                                           
                                    );
                               
                                $this->m_log->logactivity($logdata);
                          echo " <script>
		            				alert('Gagal upload: Cek Kembali file anda dan pastikan sudah mengisi semua field');
		            				history.go(-1);
		          		</script>";  
                          $this->load->view('admin/inbox',$data);                               
                        }  else {
                             $config ['upload_path'] = './assets/Berkas/SuratMasuk/';
                             $config ['allowed_types'] = 'doc|pdf|docx';
                             $config ['file_name'] = url_title($this->input->post('userfile'));
                             $this->upload->initialize($config); 
                                if (!$this->upload->do_upload('userfile')){ 
                                $user = $this->session->userdata('data_user');
                                $id = $user->id;
                                $data['dataPegawai'] = $user;
                                   $this->load->model('m_log');                              
                                        $user = $this->session->userdata('data_user');
                                        $id = $user->id;
                                            $logdata =  array(
                                            'iduser'=> $user->id,
                                            'username'=> $user->username,
                                            'action'   =>'Insert Data Surat Masuk',
                                            'status'   =>'Gagal'                                                                           
                                    );
                               
                                $this->m_log->logactivity($logdata); 
                                          echo " <script>
		            				alert('Gagal Insert Data');
		            				history.go(-1);
		          		</script>";  
                          $this->load->view('admin/inbox',$data);   
                                }else{
                            
                            $datafile = array(
                                        'isi'           => $this->upload->data()['file_name'],
                                        'jenis'       => $this->input->post('jenis'),
                                        'perihal'       => $this->input->post('perihal'),
                                        'nosurat'       => $this->input->post('nosurat'),     
                                        'pengirim'      => $this->input->post('pengirim'),
                                        'status'        => $this->input->post('status'),
                                        'tanggalsurat'  => $this->input->post('tanggalsurat'),
                                        'tanggalmsurat'        => $this->input->post('tanggalmsurat'),
                                        'sifatsurat'        => $this->input->post('sifatsurat'),
                                              
                            );
                           
                                 $this->m_surat->suratmasuk($datafile);
                                    $this->load->model('m_log');                              
                                        $user = $this->session->userdata('data_user');
                                        $id = $user->id;
                                            $logdata =  array(
                                            'iduser'=> $user->id,
                                            'username'=> $user->username,
                                            'action'   =>'Insert Data Surat Masuk',
                                            'status'   =>'Sukses'                                                                           
                                    );
                               
                                $this->m_log->logactivity($logdata); 
                                    }                                    
                                    redirect('home');
                            }
                            
}
      public function suratkeluar() {    
             if($this->session->userdata('data_user')->level != 1){
             redirect('/login/login_form');
             }
                $this->form_validation->set_rules('nosurat3', 'nosurat3', 'required');
                $this->form_validation->set_rules('perihal', 'perihal', 'required');
                $this->form_validation->set_rules('tujuan', 'tujuan', 'required');
                      if($this->form_validation->run() == FALSE){
                          $user = $this->session->userdata('data_user');
                          $id = $user->id;
                          $data['dataPegawai'] = $user;
                            $this->load->model('m_log');                              
                                        $user = $this->session->userdata('data_user');
                                        $id = $user->id;
                                            $logdata =  array(
                                            'iduser'=> $user->id,
                                            'username'=> $user->username,
                                            'action'   =>'Insert Data Surat Keluar',
                                            'status'   =>'Gagal'                                                                           
                                    );
                               
                                $this->m_log->logactivity($logdata);
                          echo " <script>
		            				alert('Gagal upload: Cek Kembali file anda dan pastikan sudah mengisi semua field');
		            				history.go(-1);
		          		</script>";  
                          $this->load->view('admin/send',$data);                               
                        }  else {
                             $config ['upload_path'] = './assets/Berkas/SuratKeluar/';
                             $config ['allowed_types'] = 'doc|pdf|docx';
                             $config ['file_name'] = url_title($this->input->post('userfile'));
                             $this->upload->initialize($config); 
                                if (!$this->upload->do_upload('userfile')){ 
                                $user = $this->session->userdata('data_user');
                                $id = $user->id;
                                                                                                                             
                               
                                    $datafile = array(
                                        'isilampiran'           => $this->upload->data()['file_name'],
                                        'lampiran'           => $this->input->post('lampiran'),
                                        'perihal'       => $this->input->post('perihal'),
                                        'nosurat3'      => $this->input->post('nosurat3'),
                                        'nosurat1'      => $this->input->post('nosurat1'), 
                                        'tujuan'        => $this->input->post('tujuan'),
                                        'status'        => $this->input->post('status'),
                                        'tanggalsurat'  => $this->input->post('tanggalsurat'),
                                        'tembusan'  => $this->input->post('tembusan'),
                                        'sifatsurat'    => $this->input->post('sifatsurat'),
                                        'isi'           => $this->input->post('isi'),
                                        'jenis'         => $this->input->post('jenis')
                                              
                            );
                                 $this->m_surat->suratkeluar($datafile); 
                                 
                             
                                  $this->load->model('m_log');                              
                                        $user = $this->session->userdata('data_user');
                                        $id = $user->id;
                                            $logdata =  array(
                                            'iduser'=> $user->id,
                                            'username'=> $user->username,
                                            'action'   =>'Insert Data Surat Keluar',
                                            'status'   =>'Sukses'                                                                           
                                    );                              
                                  redirect('home');  
                                }else{
                            $datafile = array(
                                        'isilampiran'           => $this->upload->data()['file_name'],
                                        'lampiran'           => $this->input->post('lampiran'),
                                        'perihal'       => $this->input->post('perihal'),
                                        'nosurat3'       => $this->input->post('nosurat3'),
                                        'nosurat1'       => $this->input->post('nosurat1'), 
                                        'tujuan'      => $this->input->post('tujuan'),
                                        'status'        => $this->input->post('status'),
                                        'tanggalsurat'  => $this->input->post('tanggalsurat'),
                                        'tembusan'        => $this->input->post('tembusan'),
                                        'sifatsurat'        => $this->input->post('sifatsurat'),
                                        'isi'        => $this->input->post('isi'),
                                     'jenis'       => $this->input->post('jenis')
                                              
                            );
                                 $this->m_surat->suratkeluar($datafile); 
                                   $this->load->model('m_log');                              
                                        $user = $this->session->userdata('data_user');
                                        $id = $user->id;
                                            $logdata =  array(
                                            'iduser'=> $user->id,
                                            'username'=> $user->username,
                                            'action'   =>'Insert Data Surat Keluar',
                                            'status'   =>'Sukses'                                                                           
                                    );
                               
                                $this->m_log->logactivity($logdata);
                                    }                                    
                                    redirect('home');
                            }
                                                
}
}
           