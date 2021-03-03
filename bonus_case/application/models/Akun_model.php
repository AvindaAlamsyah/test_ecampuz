<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Akun_model extends CI_Model
{

    public function ambil_data($data)
    {
        $this->db->select('*');
        $this->db->from('akun');
        $this->db->where($data);

        return $this->db->get()->row();
    }
}

/* End of file Akun_model.php */
