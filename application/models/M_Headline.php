<?php

defined('BASEPATH') or exit('No direct script access allowed');

class M_Headline extends CI_Model
{
    public function getAll()
    {
        $this->db->from('tb_headline');
        $this->db->where('headline_id', 1);
        $hasil = $this->db->get();
        return $hasil->row();

        // $hasil = $this->db->get_where('tb_headline', array('headline_id' => 1));
        // return $hasil->row();
    }

    public function getById($id)
    {
        $this->db->from('tb_headline');
        $this->db->where('headline_id', $id);
        $hasil = $this->db->get();
        return $hasil->row();
    }

    public function update($id, $tag)
    {
        // $this->db->set($tag);
        $data = array(
            'headline_tag' => $tag
        );
        $this->db->where('headline_id', $id);
        return $this->db->update('tb_headline', $data);
    }
}

/* End of file M_Headline.php */
