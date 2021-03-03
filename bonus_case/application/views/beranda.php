<?php
defined('BASEPATH') or exit('No direct script access allowed');
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Beranda</title>
</head>

<body>
    <div>
        <?php
        echo "Selamat datang, " . $this->session->userdata('nama');
        ?>
        <button><a href="<?php echo base_url('/login/logout') ?>">Logout</a></button>
        <br /><br><br>
    </div>
    <div>
        <form action="<?php echo base_url('beranda/filter') ?>" method="POST">
            <div>
                <label>Cari Instansi</label>
                <input type="text" name="nama_instansi">
                <button type="submit">Cari</button>
            </div>
        </form>
    </div>
    <div>
        <button><a href="<?php echo base_url('beranda/tambah') ?>">Tambah</a></button>
    </div>
    <div>
        <table border="-1">
            <thead>
                <th>No.</th>
                <th>Aksi</th>
                <th>Instansi</th>
                <th>Deskripsi</th>
            </thead>
            <tbody>
                <?php
                $i = 1;
                if ($status) {

                    foreach ($data_instansi as $row) {
                ?>
                        <tr>
                            <td><?php echo $i; ?></td>
                            <td><button><a href="<?php echo base_url('beranda/ubah/') . $row->id_instansi ?>">Edit</a></button><button><a href="<?php echo base_url('beranda/hapus/') . $row->id_instansi ?>">Hapus</a></button></td>
                            <td><?php echo $row->nama_instansi; ?></td>
                            <td><?php echo $row->deskripsi_instansi; ?></td>
                        </tr>
                    <?php
                        $i += 1;
                    }
                } else {
                    ?>
                    <tr>
                        <td colspan="4">Pencarian tidak ditemukan</td>
                    </tr>
                <?php
                }
                ?>
            </tbody>
        </table>
    </div>
</body>

</html>