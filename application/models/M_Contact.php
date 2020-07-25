<?php


defined('BASEPATH') or exit('No direct script access allowed');

class M_Contact extends CI_Controller
{

    // List all your items
    public function index($offset = 0)
    {
        return $this->db->get('tb_contact')->row();
    }

    public function getById($id)
    {
        return $this->db->get_where('tb_contact', array('contact_id' => 1))->row();
    }

    // Add a new item
    public function add()
    {
    }

    //Update one item
    public function update($id, $data)
    {
        $this->db->where('contact_id', $id);
        return $this->db->update('tb_contact', $data);
    }

    //Delete one item
    public function delete($id = NULL)
    {
    }
}

/* End of file M_Contact.php */
