<?php if(!defined('BASEPATH')) exit('Hacking Attempt : Keluar dari sistem..!!');

	class M_login extends CI_Model {
		public function __construct() {
			parent::__construct();
		}
		public function ambilPengguna($username, $password) {
    			$this->db->select('*');
    			$this->db->from('user');
    			$this->db->where('username', $username);
    			$this->db->where('password', $password);
    			$query = $this->db->get();
    
			return $query;
  		}
  
	}  

