<?php
defined('BASEPATH') or exit('No direct script access allowed');
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tambah Data</title>
</head>

<body>
    <div>
        <form action="<?php echo base_url('beranda/tambah_data') ?>" method="POST">
            <div>
                <label>Nama Instansi</label>
                <input type="text" name="nama_instansi">
            </div>
            <div>
                <label>Deskripsi</label>
                <textarea name="deskripsi_instansi" rows="4"></textarea>
            </div>
            <button type="submit">Simpan</button>
        </form>
    </div>
</body>

</html>