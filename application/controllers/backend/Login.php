<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Login extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        session_start();
    }

    public function index()
    {
        $this->load->view('backend/login.php');
    }

    public function doLogin()
    {
        $post = $this->input->post();

        // cari user berdasakan email dan username
        $this->db->where('admin_username', $post["username"]);
        $user = $this->db->get('tb_admin')->row();

        // jika user terdaftar
        if ($user) {
            // periksa password nya
            $isPasswordTrue = $post["password"] == $user->admin_password;

            // jika password benar dan dia admin
            if ($isPasswordTrue == true) {
                // login sukses yay
                $_SESSION['user'] = $user;
                // $this->session->set_userdata(['user' => $user]);
                redirect(site_url('Home'));
                // return true;
            }
        }
        // jika login gagal
        redirect(site_url('Home'));
    }

    public function logout()
    {
        session_destroy();
        redirect(site_url('login'));
    }
}

/* End of file Harga.php */
