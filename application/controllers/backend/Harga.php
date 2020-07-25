<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Harga extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        session_start();
        if (empty($_SESSION['user'])) {
            redirect(site_url('login'));
        }
        $this->load->model('M_Harga');
        $this->load->library('upload');
    }

    public function index()
    {
        $breadcrumb         = array(
            "Home" => "secret404",
            "Harga" => ""
        );
        $data['breadcrumb'] = $breadcrumb;
        $data['harga'] = $this->M_Harga->index();
        $this->load->view('backend/harga/list.php', $data);
    }

    public function getById()
    {
        $breadcrumb = array(
            "Home" => "secret404",
            "Harga" => "harga",
            "Edit" => ""
        );
        $data['breadcrumb'] = $breadcrumb;
        $data['harga'] = $this->M_Harga->index();
        $this->load->view('backend/harga/edit.php', $data);
    }

    public function edit()
    {
        $config['upload_path'] = "./upload/harga/"; //path folder file upload
        $config['allowed_types'] = 'gif|jpg|png|jpeg'; //type file yang boleh di upload
        $config['encrypt_name'] = TRUE; //enkripsi file name upload

        $this->load->library('upload', $config); //call library upload 
        $this->upload->initialize($config);

        if (!$this->upload->do_upload('gambar')) {
            $error = array('error' => $this->upload->display_errors());
            redirect(site_url('harga'));
        } else {
            $data = array('upload_data' => $this->upload->data());
            $id = 1;
            $gambar = $data['upload_data']['file_name'];
            $this->M_Harga->edit($id, $gambar);
            redirect(site_url('harga'));
        }
    }
}

/* End of file Harga.php */
