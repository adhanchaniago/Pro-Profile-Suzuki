<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Produk extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        session_start();
        if (empty($_SESSION['user'])) {
            redirect(site_url('login'));
        }
        $this->load->model('M_Produk');
        $this->load->library('upload');
    }

    public function index()
    {
        $breadcrumb         = array(
            "Home" => "secret404",
            "Harga" => ""
        );
        $data['breadcrumb'] = $breadcrumb;
        $data['produk'] = $this->M_Produk->index();
        $this->load->view('backend/produk/list.php', $data);
    }

    public function add()
    {
        $breadcrumb         = array(
            "Home" => "Home",
            "Harga" => ""
        );
        if (empty($this->input->post())) {
            $data['breadcrumb'] = $breadcrumb;
            $this->load->view('backend/produk/add', $data);
        } else {
            $config['upload_path'] = './upload/produk/';
            $config['allowed_types'] = 'gif|jpg|png|jpeg';
            $config['encrypt_name'] = TRUE; //enkripsi file name upload

            $this->load->library('upload', $config); //call library upload 
            $this->upload->initialize($config);

            if (!$this->upload->do_upload('gambar')) {
                $error = array('error' => $this->upload->display_errors());
                echo "<script>
                alert('Gagal menyimpan foto')
                </script>";
            } else {
                $dataGambar = array('upload_data' => $this->upload->data());
            }

            $config['upload_path'] = './upload/brosur/';
            $config['allowed_types'] = 'pdf|doc|docx';
            $config['max_size']  = '99999999999';
            $config['encrypt_name'] = TRUE; //enkripsi file name upload

            $this->load->library('upload', $config);
            $this->upload->initialize($config);

            if (!$this->upload->do_upload('brosur')) {
                $error = array('error' => $this->upload->display_errors());
                echo "<script>
                alert('Gagal menyimpan brosur')
                </script>";
            } else {
                $dataBrosur = array('upload_data' => $this->upload->data());
            }

            $dataProduk = array(
                'produk_nama' => $this->input->post('nama'),
                'produk_harga' => $this->input->post('harga'),
                'produk_des' => $this->input->post('des'),
                'produk_gambar' => $dataGambar['upload_data']['file_name'],
                'produk_brosur' => $dataBrosur['upload_data']['file_name']
            );
            $this->M_Produk->add($dataProduk);
            redirect(site_url('produk'));
        }
    }

    public function getById($id)
    {
        $breadcrumb = array(
            "Home" => "secret404",
            "Harga" => "harga",
            "Edit" => ""
        );
        $data['breadcrumb'] = $breadcrumb;
        $data['produk'] = $this->M_Produk->index($id);
        $this->load->view('backend/produk/detail.php', $data);
    }

    public function delete($id)
    {
        $this->M_Produk->delete($id);
        redirect(site_url('produk'));
    }
}

/* End of file Produk.php */
