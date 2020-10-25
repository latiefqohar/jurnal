<?php
 
 defined('BASEPATH') OR exit('No direct script access allowed');
 
 class Api_model extends CI_Model {
 
        function get_data($table){
            return $this->db->get($table);
        }
    
        function insert_data($data,$table){
            $this->db->insert($table,$data);
            return $this->db->affected_rows();
        }

        function edit_data($where,$table){
            return $this->db->get_where($table,$where);
        
        }

        function delete_data($where,$table){
            $this->db->delete($table,$where);
            return $this->db->affected_rows();
        }

        function update_data($where,$data,$table){
            $this->db->where($where);
            $this->db->update($table,$data);
            return $this->db->affected_rows();
            
        }

        public function cek_akses($where){
            $this->db->select("a.nik,a.id_aplikasi,a.id_akses,b.nama_aplikasi,c.role");
            $this->db->from("user_akses a");
            $this->db->join("master_aplikasi b","a.id_aplikasi=b.id");
            $this->db->join("master_akses c", "a.id_akses=c.id");
            $this->db->where($where);
            return $this->db->get();
        }
        
 
 }
 
 /* End of file ModelName.php */
  
?>