<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Login extends CI_Controller
{
    private $data = array('pesan' => '');

    public function __construct()
    {
        parent::__construct();
        $this->load->model('akun_model');
    }

    public function index()
    {
        $this->load->view('login', $this->data);
    }

    public function cek_akun()
    {
        $data_akun = array(
            'username' => $this->input->post('username'),
            'password' => $this->input->post('password')
        );
        $data_user = $this->akun_model->ambil_data($data_akun);
        if ($data_user != null) {
            $data_session = array(
                'id' => $data_user->id_akun,
                'nama' => $data_user->nama_lengkap
            );

            $this->session->set_userdata($data_session);

            redirect('beranda');
        } else {
            $this->data['pesan'] = 'Username atau password anda salah, coba Lagi';
            $this->load->view('login', $this->data);
        }
    }

    public function logout()
    {
        $this->session->sess_destroy();

        $this->load->view('login', $this->data);
    }
}

/* End of file Login.php */
