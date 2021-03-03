<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Instansi_model extends CI_Model
{

    public function ambil_semua()
    {
        return $this->db->get('instansi')->result();
    }

    public function ambil_seperti($data)
    {
        $this->db->select('*');
        $this->db->from('instansi');
        $this->db->like($data);

        return $this->db->get()->result();
    }
    public function ambil_sesuai($data)
    {
        return $this->db->get_where('instansi', $data)->row();
    }

    public function simpan_data($data)
    {
        $this->db->insert('instansi', $data);
    }

    public function edit_data($where, $data)
    {
        $this->db->update('instansi', $data, $where);
    }

    public function hapus_data($where)
    {
        $this->db->delete('instansi', $where);
    }
}

/* End of file Instansi_model.php */
