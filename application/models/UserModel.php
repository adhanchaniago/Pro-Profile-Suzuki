<?php

defined('BASEPATH') or exit('No direct script access allowed');

class UserModel extends CI_Model
{
    public function index($id = null)
    {
        return $this->db->get_where('tb_admin', array('admin_id' => $id))->row();
    }

    public function save($id, $data)
    {

        $this->db->where('admin_id', $id);
        return $this->db->update('tb_admin', $data);
    }
}

/* End of file userModel.php */
