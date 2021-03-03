<?php
$mysqli = new mysqli("localhost", "root", "", "ujian_ecampuz");
if ($mysqli->connect_errno) {
    echo "Failed to connect to MySQL: " . $mysqli->connect_error;
    exit();
}
// jalankan query
$result = mysqli_query($mysqli, "SELECT tb_mahasiswa.mhs_nama, MAX(tb_mahasiswa_nilai.nilai) FROM tb_mahasiswa INNER JOIN tb_mahasiswa_nilai ON tb_mahasiswa.mhs_id = tb_mahasiswa_nilai.mhs_id INNER JOIN tb_matakuliah ON tb_mahasiswa_nilai.mk_id = tb_matakuliah.mk_id WHERE tb_matakuliah.mk_kode = 'MK303'");

while ($row = mysqli_fetch_array($result)) {
    echo $row[0];
}
