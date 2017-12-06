<?php if(!defined('BASEPATH')) exit('Hacking Attempt : Keluar dari sistem..!!');

	class M_user extends CI_Model {
		public function __construct() {
			parent::__construct();
		}
		public function tambahoperator($datafile) {
    			$this->db->insert('user',$datafile);
  		}
                public function tambahuser($datafile) {
    			$this->db->insert('user',$datafile);
  		}
           
                public function getSingleoperator($id){
                $this->db->select('*');
                $this->db->from('user');              
                $this->db->where('level','2');
                $this->db->where('id',$id);          
                $q = $this->db->get();
                return $q->row();
            }
             public function getSingleuser($id){
                $this->db->select('*');
                $this->db->from('user');              
                $this->db->where('level','3');
                $this->db->where('id',$id);          
                $q = $this->db->get();
                return $q->row();
            }
             public function getAdmin($id){
                $this->db->select('*');
                $this->db->from('user');              
                $this->db->where('level','1');
                $this->db->where('id',$id);          
                $q = $this->db->get();
                return $q->row();
            }
            
             public function deleteoperator($id) {
                        $this->db->where('id', $id);  
                        $query = $this->db->get('user');
                        $row = $query->row();
                        unlink("./assets/Berkas/avatar/$row->userfile");
                        $this->db->delete('user',array('id'=> $id));                    
                  }
                  public function deleteuser($id) {
                        $this->db->where('id', $id);  
                        $query = $this->db->get('user');
                        $row = $query->row();
                        unlink("./assets/Berkas/avatar/$row->userfile");
                        $this->db->delete('user',array('id'=> $id));                    
                  }
              public function updateoperator($datafile) {             
                        $this->db->where('id', $this->input->post('id'));
                        $this->db->update('user', $datafile);
            }
             public function updateadmin() {
                  $file = array(
				'nama' => $this->input->post('nama'),
				'nip' => $this->input->post('nip'),
                                'username' => $this->input->post('username'),
			);
                        $this->db->where('id', $this->input->post('id'));
                        $this->db->update('user', $file);
            }
              public function updateuser($file) {
                        $this->db->where('id', $this->input->post('id'));
                        $this->db->update('user', $file);
            }
             public function getalloperator(){
                        $this->db->select('*');
                        $this->db->from('user'); 
                        $this->db->where('level','2');
                        $query = $this->db->get()->result_array();

                        return $query;
                        }
                        
                public function getalluser(){
                $this->db->select('*');
                $this->db->from('user'); 
                $this->db->where('level','3');
                $query = $this->db->get()->result_array();

                return $query;
                }
	}  

