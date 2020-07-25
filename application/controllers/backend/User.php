<?php

defined('BASEPATH') or exit('No direct script access allowed');

class User extends CI_Controller
{


    public function __construct()
    {
        parent::__construct();
        session_start();
        if (empty($_SESSION['user'])) {
            redirect(site_url('login'));
        }
        $this->load->model('userModel');
    }

    public function index()
    {
        $breadcrumb         = array(
            "Home" => "secret404",
            "User" => ""
        );
        $data['breadcrumb'] = $breadcrumb;
        $id = 1;
        $data['user'] = $this->userModel->index($id);
        $this->load->view('backend/users/list.php', $data);
    }

    public function save()
    {
        $id = 1;
        $data = array(
            'admin_username' => $this->input->post('username'),
            'admin_password' => $this->input->post('password'),
            'admin_nama' => $this->input->post('nama')
        );
        $this->userModel->save($id, $data);

        return redirect(site_url('user'));
    }
}

/* End of file User.php */
