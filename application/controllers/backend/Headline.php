<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Headline extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        //Do your magic here
        session_start();
        if (empty($_SESSION['user'])) {
            redirect(site_url('login'));
        }
        $this->load->model('M_Headline');
    }

    public function index()
    {
        $breadcrumb         = array(
            "Home" => "secret404",
            "Headline" => ""
        );
        $data['breadcrumb'] = $breadcrumb;
        $this->load->view('backend/headline/list.php', $data);
    }

    public function dataHeaedline()
    {
        $data = $this->M_Headline->getAll();
        echo json_encode($data);
    }

    public function getHeadline()
    {
        $id = $this->input->get('id');
        $data = $this->M_Headline->getById($id);
        echo json_encode($data);
    }

    public function updateBarang()
    {
        $id = $this->input->post('headline_id');
        $tag = $this->input->post('headline_tag');
        $data = $this->M_Headline->update($id, $tag);
        echo json_encode($data);
    }
}

/* End of file Headline.php */
