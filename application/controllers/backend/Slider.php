<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Slider extends CI_Controller
{

     public function __construct()
     {
          parent::__construct();
          session_start();
          if (empty($_SESSION['user'])) {
               redirect(site_url('login'));
          }
          $this->load->model('M_Slider');
     }

     public function index()
     {
          $breadcrumb = array(
               "Home" => "secret404",
               "Slider" => ""
          );
          $data['breadcrumb'] = $breadcrumb;
          $this->load->view('backend/slider/list', $data);
     }

     public function add()
     {
          $breadcrumb = array(
               "Home" => "secret404",
               "Slider" => "slider",
               "Add" => ""
          );
          $data['breadcrumb'] = $breadcrumb;
          $this->load->view('backend/slider/add', $data);
     }

     public function delete()
     {
          $id = $this->input->post('idSlider');
          return $this->M_Slider->delete($id);
     }

     public function save()
     {
          $config['upload_path'] = './upload/slider';
          $config['allowed_types'] = 'gif|jpg|png|jpeg';
          $config['encrypt_name'] = TRUE; //enkripsi file name upload

          $this->load->library('upload', $config); //call library upload 
          $this->upload->initialize($config);
          if (!$this->upload->do_upload('gambar')) {
               $error = array('error' => $this->upload->display_errors());
          } else {
               $data = array('upload_data' => $this->upload->data());
               $nama_gambar = $data['upload_data']['file_name'];
               $this->M_Slider->add($nama_gambar);
               redirect(site_url('slider'));
          }
     }

     public function ajaxDataSlider()
     {
          $data = $this->M_Slider->index();
          echo json_encode($data);
     }
}

/* End of file Slider.php */
