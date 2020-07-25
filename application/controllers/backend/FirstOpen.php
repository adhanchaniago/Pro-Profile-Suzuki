<?php
defined('BASEPATH') or exit('No direct script access allowed');

class FirstOpen extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
		session_start();
		if (empty($_SESSION['user'])) {
			redirect(site_url('login'));
		}
		$this->load->model('M_Headline');
	}

	public function index()
	{
		$breadcrumb         = array(
			"Home" => ""
		);
		$data['headline'] = $this->M_Headline->getAll();
		$data['breadcrumb'] = $breadcrumb;
		$this->load->view('backend/overview', $data);
	}
}
