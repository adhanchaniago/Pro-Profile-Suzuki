<?php

defined('BASEPATH') or exit('No direct script access allowed');

class M_Berita extends CI_Model
{
    public function index()
    {
        return $this->db->get('tb_berita')->result();
    }

    public function save($data)
    {
        return $this->db->insert('tb_berita', $data);
    }

    public function getById($id)
    {
        return $this->db->get_where('tb_berita', array('berita_id' => $id))->row();
    }

    public function delete($id)
    {
        return $this->db->delete('tb_berita', array('berita_id' => $id));
    }

    public function edit($id, $data)
    {
        $this->db->where('berita_id', $id);
        return $this->db->update('tb_berita', $data);
    }
}

/* End of file M_Berita.php */
