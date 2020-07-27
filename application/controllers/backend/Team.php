<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Team extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        session_start();
        if (empty($_SESSION['user'])) {
            redirect(site_url('login'));
        }
        $this->load->model('M_Team');
        $this->load->library('upload');
    }

    public function index()
    {
        $breadcrumb         = array(
            "Home" => "secret404",
            "Team" => ""
        );
        $data['breadcrumb'] = $breadcrumb;
        $data['teams'] = $this->M_Team->index();
        $this->load->view('backend/team/list.php', $data);
    }

    public function add()
    {
        $breadcrumb         = array(
            "Home" => "Home",
            "Team" => ""
        );
        if (empty($this->input->post())) {
            $data['breadcrumb'] = $breadcrumb;
            $this->load->view('backend/team/add', $data);
        } else {
            $config['upload_path'] = './upload/team/';
            $config['allowed_types'] = 'gif|jpg|png|jpeg';
            $config['encrypt_name'] = TRUE; //enkripsi file name upload

            $this->load->library('upload', $config); //call library upload 
            $this->upload->initialize($config);

            if (!$this->upload->do_upload('foto')) {
                $error = array('error' => $this->upload->display_errors());
                echo "<script>
                alert('Gagal menyimpan foto $error')
                </script>";
            } else {
                $dataGambar = array('upload_data' => $this->upload->data());
            }

            $dataTeam = array(
                'team_nama' => $this->input->post('nama'),
                'team_wa' => $this->input->post('wa'),
                'team_email' => $this->input->post('email'),
                'team_foto' => $dataGambar['upload_data']['file_name'],
            );

            $this->M_Team->add($dataTeam);
            redirect(site_url('team'));
        }
    }

    public function edit($id = null)
    {
        if (!empty($id)) {
            $breadcrumb = array(
                "Home" => "secret404",
                "Team" => "team",
                "Edit" => ""
            );
            $data['breadcrumb'] = $breadcrumb;
            $data['team'] = $this->M_Team->getById($id);
            $this->load->view('backend/team/edit.php', $data);
        } else {
            $config['upload_path'] = './upload/team/';
            $config['allowed_types'] = 'gif|jpg|png|jpeg';
            $config['encrypt_name'] = TRUE; //enkripsi file name upload

            $this->load->library('upload', $config); //call library upload 
            $this->upload->initialize($config);
            if (!empty($this->upload->do_upload('foto'))) {
                $dataGambar = array('upload_data' => $this->upload->data());
                $id = $this->input->post('id');
                $dataTeam = array(
                    'team_nama' => $this->input->post('nama'),
                    'team_wa' => $this->input->post('wa'),
                    'team_email' => $this->input->post('email'),
                    'team_foto' => $dataGambar['upload_data']['file_name'],
                );

                $this->M_Team->update($id, $dataTeam);
                redirect(site_url('team'));
            } else {
                $dataGambar = $this->input->post('fotoLama');
                $id = $this->input->post('id');
                $dataTeam = array(
                    'team_nama' => $this->input->post('nama'),
                    'team_wa' => $this->input->post('wa'),
                    'team_email' => $this->input->post('email'),
                    'team_foto' => $dataGambar
                );
                $this->M_Team->update($id, $dataTeam);
                redirect(site_url('team'));
            }
        }
    }

    public function detail($id)
    {
        $breadcrumb = array(
            "Home" => "secret404",
            "Team" => "team",
            "Detail" => ""
        );
        $data['breadcrumb'] = $breadcrumb;
        $data['team'] = $this->M_Team->getById($id);
        $this->load->view('backend/team/detail.php', $data);
    }

    public function delete($id)
    {
        $this->M_Team->delete($id);
        redirect(site_url('team'));
    }
}

/* End of file Produk.php */
