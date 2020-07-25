<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Berita extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        session_start();
        if (empty($_SESSION['user'])) {
            redirect(site_url('login'));
        }
        $this->load->model('M_Berita');
        $this->load->library('upload');
    }

    public function index()
    {
        $breadcrumb         = array(
            "Home" => "secret404",
            "Harga" => ""
        );
        $data['breadcrumb'] = $breadcrumb;
        $this->load->view('backend/berita/list.php', $data);
    }

    public function ajaxDataBerita()
    {
        $data['harga'] = $this->M_Berita->index();
        echo json_encode($data);
    }

    public function add()
    {
        $breadcrumb         = array(
            "Home" => "secret404",
            "Berita" => "berita",
            "Tambah" => "",
        );
        $data['breadcrumb'] = $breadcrumb;
        if (empty($this->input->post())) {
            $this->load->view('backend/berita/add', $data);
        } else {
            $this->load->model('M_Berita');

            $config['upload_path'] = './upload/berita/';
            $config['allowed_types'] = 'gif|jpg|png|jpeg';
            $config['encrypt_name'] = TRUE; //enkripsi file name upload

            $this->load->library('upload', $config); //call library upload 
            $this->upload->initialize($config);

            if (!$this->upload->do_upload('gambar')) {
                $error = array('error' => $this->upload->display_errors());
                return redirect(site_url('berita'));
            } else {
                $data = array('upload_data' => $this->upload->data());
                $judul = $this->input->post('judul');
                $isi = $this->input->post('isi');
                $gambar = $data['upload_data']['file_name'];
                $tgl = date('Y-m-d');

                $sql = array(
                    'berita_judul' => $judul,
                    'berita_isi' => $isi,
                    'berita_gambar' => $gambar,
                    'berita_post' => $tgl
                );
                $this->M_Berita->save($sql);
                redirect(site_url('berita'));
            }
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
        $data['berita'] = $this->M_Berita->getById($id);
        $this->load->view('backend/berita/detail.php', $data);
    }

    public function delete($id)
    {
        $this->M_Berita->delete($id);

        redirect(site_url('berita'));
    }

    public function edit($id)
    {
        if (empty($this->input->post())) {
            $breadcrumb = array(
                "Home" => "secret404",
                "Harga" => "harga",
                "Edit" => ""
            );
            $data['breadcrumb'] = $breadcrumb;
            $data['berita'] = $this->M_Berita->getById($id);
            $this->load->view('backend/berita/edit.php', $data);
        } else {
            $config['upload_path'] = './upload/berita/';
            $config['allowed_types'] = 'gif|jpg|png|jpeg';
            $config['encrypt_name'] = TRUE; //enkripsi file name upload
            $this->load->library('upload', $config); //call library upload 
            $this->upload->initialize($config);
            $data = array('upload_data' => $this->upload->data());

            if (empty($data)) {
                $gambar = $this->input->post('gambar');
                $id = $this->input->post('id');
                $judul = $this->input->post('judul');
                $isi = $this->input->post('isi');
                $tgl = date('Y-m-d');

                $sql = array(
                    'berita_judul' => $judul,
                    'berita_isi' => $isi,
                    'berita_gambar' => $gambar,
                    'berita_post' => $tgl
                );
                $this->M_Berita->edit($id, $sql);
                redirect(site_url('berita'));
            } else {
                $this->load->model('M_Berita');

                $config['upload_path'] = './upload/berita/';
                $config['allowed_types'] = 'gif|jpg|png|jpeg';
                $config['encrypt_name'] = TRUE; //enkripsi file name upload

                $this->load->library('upload', $config); //call library upload 
                $this->upload->initialize($config);

                if (!$this->upload->do_upload('gambar')) {
                    $error = array('error' => $this->upload->display_errors());
                    return redirect(site_url('berita'));
                } else {
                    $data = array('upload_data' => $this->upload->data());
                    $gambar = $data['upload_data']['file_name'];

                    $id = $this->input->post('id');
                    $judul = $this->input->post('judul');
                    $isi = $this->input->post('isi');
                    $tgl = date('Y-m-d');

                    $sql = array(
                        'berita_judul' => $judul,
                        'berita_isi' => $isi,
                        'berita_gambar' => $gambar,
                        'berita_post' => $tgl
                    );
                    $this->M_Berita->edit($id, $sql);
                    redirect(site_url('berita'));
                }
            }
        }
    }
}

/* End of file Harga.php */
