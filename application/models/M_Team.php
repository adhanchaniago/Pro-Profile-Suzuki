<?php

defined('BASEPATH') or exit('No direct script access allowed');

class M_Team extends CI_Model
{

    public function index()
    {
        return $this->db->get('tb_team')->result();
    }

    public function add($data)
    {
        return $this->db->insert('tb_team', $data);
    }

    public function delete($id = NULL)
    {
        return  $this->db->delete('tb_team', array('team_id' => $id));
    }

    public function getById($id)
    {
        return $this->db->get_where('tb_team', array('team_id' => $id))->row();
    }

    public function update($id, $data)
    {
        return $this->db->update('tb_team', $data, array('team_id' => $id));
    }
}

    /* End of file M_Team.php */;
