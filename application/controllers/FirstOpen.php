<?php
defined('BASEPATH') or exit('No direct script access allowed');

class FirstOpen extends CI_Controller
{

	public function __construct()
	{
		parent::__construct();
		$this->load->model('M_Slider');
		$this->load->model('M_Headline');
		$this->load->model('M_Produk');
		$this->load->model('M_Berita');
		$this->load->model('M_Contact');

	}

	public function index()
	{
		$data['headline'] = $this->M_Headline->getAll();
		$data['slider'] = $this->M_Slider->index();
		$data['produk'] = $this->M_Produk->index();
		$data['harga'] = $this->M_Produk->harga();
		$data['kontak'] = $this->M_Produk->kontak();
		$data['berita'] = $this->M_Produk->berita();
		$this->load->view('frontend/overview', $data);
	}

	public function listHarga()
	{
		$data['headline'] = $this->M_Headline->getAll();
		$data['produk'] = $this->M_Produk->index();
		$data['harga'] = $this->M_Produk->harga();
		$data['slider'] = $this->M_Slider->index();
		$data['kontak'] = $this->M_Produk->kontak();
		$this->load->view('frontend/harga', $data);
	}

	public function detail($id)
	{
		$data['headline'] = $this->M_Headline->getAll();
		$data['produk'] = $this->M_Produk->index();
		$data['harga'] = $this->M_Produk->harga();
		$data['slider'] = $this->M_Slider->index();
		$data['kontak'] = $this->M_Produk->kontak();
		$data['berita'] = $this->M_Produk->detailBerita($id);
		$this->load->view('frontend/detailBerita', $data);
	}
}
