<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Beranda extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('instansi_model');

        if ($this->session->userdata('id') == null) {
            redirect('login');
        }
    }
    public function index()
    {
        $data_instansi = array('status' => true, 'data_instansi' => $this->instansi_model->ambil_semua());
        $this->load->view('beranda', $data_instansi);
    }
    public function filter()
    {
        $data_cari = array('nama_instansi' => $this->input->post('nama_instansi'));
        $hasil_pencarian = $this->instansi_model->ambil_seperti($data_cari);
        if ($hasil_pencarian != null) {
            $data_instansi = array('status' => true, 'data_instansi' => $hasil_pencarian);
            $this->load->view('beranda', $data_instansi);
        } else {
            $data_instansi = array('status' => false);
            $this->load->view('beranda', $data_instansi);
        }
    }

    public function tambah()
    {
        $this->load->view('tambah_data');
    }

    public function tambah_data()
    {
        $data = array(
            'nama_instansi' => $this->input->post('nama_instansi'),
            'deskripsi_instansi' => $this->input->post('deskripsi_instansi')
        );

        $this->instansi_model->simpan_data($data);

        redirect('beranda', 'refresh');
    }

    public function ubah()
    {
        $data = array('id_instansi' => $this->uri->segment(3));
        $data_ubah = $this->instansi_model->ambil_sesuai($data);
        $this->load->view('ubah', $data_ubah);
    }

    public function ubah_data()
    {
        $data = array(
            'nama_instansi' => $this->input->post('nama_instansi'),
            'deskripsi_instansi' => $this->input->post('deskripsi_instansi')
        );
        $where = array(
            'id_instansi' => $this->input->post('id_instansi')
        );

        $this->instansi_model->edit_data($where, $data);

        redirect('beranda', 'refresh');
    }

    public function hapus()
    {
        $data = array('id_instansi' => $this->uri->segment(3));
        $this->instansi_model->hapus_data($data);

        redirect('beranda', 'refresh');
    }
}

/* End of file Beranda.php */
