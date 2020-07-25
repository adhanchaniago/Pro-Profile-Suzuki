<?php

defined('BASEPATH') or exit('No direct script access allowed');

class M_Slider extends CI_Model
{
     public function index()
     {
          return $this->db->get('tb_slider')->result();
     }

     public function add($nama_gambar)

     {
          $data = array(
               'slider_gambar' => $nama_gambar
          );
          return $this->db->insert('tb_slider', $data);
     }

     public function delete($id)
     {
          return $this->db->query("DELETE FROM tb_slider WHERE slider_id = $id");
          // return $this->db->delete('tb_slider', array('slider_id' => $id));
     }
}

/* End of file Slider.php */
