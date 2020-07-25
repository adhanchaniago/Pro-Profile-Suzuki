<?php
defined('BASEPATH') or exit('No direct script access allowed');

class M_Harga extends CI_Controller
{

    // List all your items
    public function index()
    {
        $this->db->from('tb_harga');
        $this->db->where('harga_id', 1);
        $hasil = $this->db->get();
        return $hasil->row();
    }

    public function getById($id)
    {
        $this->db->from('tb_harga');
        $this->db->where('harga_id', $id);
        $hasil = $this->db->get();
        return $hasil->row();
    }

    // Add a new item
    public function edit($id, $upload)
    {
        return $this->db->update('tb_harga', array('harga_id' => $id, 'harga_gambar' => $upload));
    }
}

/* End of file M_Harga.php */
