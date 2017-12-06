<?php if(!defined('BASEPATH')) exit('Hacking Attempt : Keluar dari sistem..!!');

	class M_log extends CI_Model {
            	public function logactivity($logdata){
                        $this->db->set('time', 'NOW()', FALSE);
                         $this->db->set('tanggal', 'NOW()', FALSE);  
			$insert_data = $this->db->insert('log',$logdata);
			return $insert_data;
		}
                public function getlog() {                 
                      $q ='SELECT log.username,log.action,log.status,log.time,log.tanggal,log.id
                            from log
                            JOIN user
                            on user.id=log.iduser 
                            ';
                      $query = $this->db->query($q);
                      return $query->result(); 
                }
                public function deletelog($id) {
                        $this->db->where('id', $id);  
                        $query = $this->db->get('log');
                        $row = $query->row();
                        $this->db->delete('log',array('id'=> $id));                    
                  }
               
	}  

