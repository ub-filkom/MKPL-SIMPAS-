<?php if(!defined('BASEPATH')) exit('Hacking Attempt : Keluar dari sistem..!!');

	class M_surat extends CI_Model {
		public function __construct() {
			parent::__construct();
		}
		public function suratmasuk($datafile) {
                    
    			$this->db->insert('suratmasuk',$datafile);
  		}
                public function suratkeluar($datafile) {                     
//                        $datafile = array(
//                          'tembusan' => $array,             
//                      );        
    			$this->db->insert('suratkeluar',$datafile);
  		}
                public function getallsurat(){
                        $this->db->select('*');
                        $this->db->from('suratmasuk'); 
                        $query = $this->db->get()->result_array();

                        return $query;
                        }
                public function getallsuratkeluar(){
                        $this->db->select('*');
                        $this->db->from('suratkeluar'); 
                        $query = $this->db->get()->result_array();
                        return $query;
                }
                function search($keyword)
                            {
                $this->db->where('nosurat',$keyword);
                $query  =   $this->db->get('suratmasuk');
                return $query->result();
}
                public function getyear(){
                    $q = 'SELECT EXTRACT( YEAR FROM tanggalsurat )  as tahun
                            FROM suratkeluar';
                    $query = $this->db->query($q);
                    return $query->result();
                }
                public function getmonth(){
                    
                    $q = 'SELECT EXTRACT( MONTH FROM tanggalsurat ) as bulan
                            FROM suratkeluar';
                    $query = $this->db->query($q);
                    return $query->result();
                }
                public function semua(){
                    
                    $q = 'SELECT  suratmasuk.nosurat as id,suratmasuk.perihal,suratmasuk.jenis,suratmasuk.tanggalsurat,suratmasuk.sifatsurat,suratmasuk.status
                    FROM suratmasuk
                    UNION
                    SELECT
                    CONCAT(nosurat2,"/",nosurat1,"/",nosurat3,"/",EXTRACT( MONTH FROM tanggalsurat),"/",EXTRACT( YEAR FROM tanggalsurat))as id ,suratkeluar.perihal,suratkeluar.jenis,suratkeluar.tanggalsurat,suratkeluar.sifatsurat,suratkeluar.status
                    FROM suratkeluar

                    ';
                    $query = $this->db->query($q);
                    return $query->result();
                }
                
          
                 public function code($id){
                $this->db->select('CONCAT("Tujuan :",tujuan,"-----","Nomor:",nosurat2,"/",nosurat1,"/",nosurat3,"/",EXTRACT( MONTH FROM tanggalsurat),"/",EXTRACT( YEAR FROM tanggalsurat),"-----","perihal:",perihal,"-----","tanggal:",tanggalsurat)as nomorsurat,nosurat2 as id');
                $this->db->from('suratkeluar');              
                $this->db->where('nosurat2',$id);
                $q = $this->db->get();
                return $q->row();
            }
              
               
                public function datasurat(){
                   $q = 'SELECT isi,nosurat,perihal,status,jenis,sifatsurat FROM suratmasuk
UNION
SELECT lampiran,nosurat2,perihal,status,jenis,sifatsurat FROM suratkeluar';
                    $query = $this->db->query($q);
                    return $query->result();
            }
      
            public function getSinglesurat($id){
                $this->db->select('*');
                $this->db->from('suratmasuk');              
                $this->db->where('id',$id);
                $q = $this->db->get();
                return $q->row();
            }
            public function getSinglesuratkeluar($id){
                $this->db->select('*');
                $this->db->from('suratkeluar');              
                $this->db->where('nosurat2',$id);
                $q = $this->db->get();
                return $q->row();
            }
            public function updatesuratmasuk() {
                  $update = array(
				'nosurat' => $this->input->post('nosurat'),
				'perihal' => $this->input->post('perihal'),
                                'pengirim' => $this->input->post('pengirim'),
                                'status' => $this->input->post('status'),
                                'tanggalsurat' => $this->input->post('tanggalsurat'),
                                'tanggalmsurat' => $this->input->post('tanggalmsurat'),
                                'sifatsurat' => $this->input->post('sifatsurat'),
                                 'jenis'       => $this->input->post('jenis'),
			);
                        $this->db->where('id', $this->input->post('id'));
                        $this->db->update('suratmasuk', $update);
            }
             public function updatesuratkeluar($datafile) {
                        $this->db->where('nosurat2', $this->input->post('id'));
                        $this->db->update('suratkeluar', $datafile);
            }
  
	}  

