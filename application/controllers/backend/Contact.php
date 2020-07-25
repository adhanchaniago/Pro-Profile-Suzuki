<?php


defined('BASEPATH') or exit('No direct script access allowed');

class Contact extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        session_start();
        if (empty($_SESSION['user'])) {
            redirect(site_url('login'));
        }
        $this->load->model('M_Contact');
    }

    // List all your items
    public function index($offset = 0)
    {
        $breadcrumb         = array(
            "Home" => "secret404",
            "Contact" => ""
        );
        $data['breadcrumb'] = $breadcrumb;
        $this->load->view('backend/contact/list.php', $data);
    }

    public function ajaxDataContact()
    {
        $data = $this->M_Contact->index();
        echo json_encode($data);
    }
    // Add a new item
    public function add()
    {
    }

    public function getById()
    {
        $id = $this->input->post('id');
        $data = $this->M_Contact->getById($id);
        echo json_encode($data);
    }
    //Update one item
    public function update()
    {
        $id = 1;
        $fb = $this->input->post('contact_fb');
        $instagram = $this->input->post('contact_instagram');
        $nohp = $this->input->post('contact_nohp');
        $dataAjax = array(
            'contact_fb' => $fb,
            'contact_instagram' => $instagram,
            'contact_nohp' => $nohp,
        );
        $data = $this->M_Contact->update($id, $dataAjax);
        echo json_encode($data);
    }

    //Delete one item
    public function delete($id = NULL)
    {
    }
}

/* End of file Contact.php */
