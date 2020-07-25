<?php


defined('BASEPATH') or exit('No direct script access allowed');

class M_Produk extends CI_Controller
{

    // List all your items
    public function index($id = null)
    {
        if (empty($id)) {
            return $this->db->get('tb_produk')->result();
        } else {
            return $this->db->get('tb_produk', array('produk_id' => $id))->row();
        }
    }

    // Add a new item
    public function add($data)
    {
        return $this->db->insert('tb_produk', $data);
    }

    //Update one item
    public function update($id = NULL)
    {
    }

    //Delete one item
    public function delete($id = NULL)
    {

        return  $this->db->delete('tb_produk', array('produk_id' => $id));
    }

    public function harga()
    {
        $this->db->from('tb_harga');
        $this->db->where('harga_id', 1);
        $hasil = $this->db->get();
        return $hasil->row();
    }
    public function kontak($offset = 0)
    {
        return $this->db->get('tb_contact')->row();
    }
    public function berita()
    {
        return $this->db->get('tb_berita')->result();
    }
    public function detailBerita($id)
    {
        return $this->db->get_where('tb_berita', array('berita_id' => $id))->row();
    }
}

/* End of file M_Produk.php */
