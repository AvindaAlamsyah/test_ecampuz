-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Mar 2021 pada 08.11
-- Versi server: 10.4.10-MariaDB
-- Versi PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ujian_ecampuz`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_mahasiswa`
--

CREATE TABLE `tb_mahasiswa` (
  `mhs_id` int(1) NOT NULL,
  `mhs_nim` int(8) NOT NULL,
  `mhs_nama` varchar(20) NOT NULL,
  `mhs_angkatan` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_mahasiswa`
--

INSERT INTO `tb_mahasiswa` (`mhs_id`, `mhs_nim`, `mhs_nama`, `mhs_angkatan`) VALUES
(1, 20180001, 'Jono', 2018),
(2, 20180002, 'Taufik', 2018),
(3, 20180003, 'Maria', 2018),
(4, 20190001, 'Sari', 2019),
(5, 20190002, 'Bambang', 2019);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_mahasiswa_nilai`
--

CREATE TABLE `tb_mahasiswa_nilai` (
  `mhs_nilai_id` int(1) NOT NULL,
  `mhs_id` int(1) NOT NULL,
  `mk_id` int(1) NOT NULL,
  `nilai` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_mahasiswa_nilai`
--

INSERT INTO `tb_mahasiswa_nilai` (`mhs_nilai_id`, `mhs_id`, `mk_id`, `nilai`) VALUES
(1, 1, 1, 70),
(2, 1, 2, 76),
(3, 2, 1, 82),
(4, 2, 2, 74),
(5, 4, 1, 78),
(6, 4, 2, 80),
(7, 5, 1, 60);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_matakuliah`
--

CREATE TABLE `tb_matakuliah` (
  `mk_id` int(1) NOT NULL,
  `mk_kode` varchar(5) NOT NULL,
  `mk_sks` int(1) NOT NULL,
  `mk_nama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_matakuliah`
--

INSERT INTO `tb_matakuliah` (`mk_id`, `mk_kode`, `mk_sks`, `mk_nama`) VALUES
(1, 'MK202', 3, 'OOP'),
(2, 'MK303', 2, 'Basis Data');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  ADD PRIMARY KEY (`mhs_id`);

--
-- Indeks untuk tabel `tb_mahasiswa_nilai`
--
ALTER TABLE `tb_mahasiswa_nilai`
  ADD PRIMARY KEY (`mhs_nilai_id`),
  ADD KEY `mhs_id` (`mhs_id`),
  ADD KEY `mk_id` (`mk_id`);

--
-- Indeks untuk tabel `tb_matakuliah`
--
ALTER TABLE `tb_matakuliah`
  ADD PRIMARY KEY (`mk_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  MODIFY `mhs_id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_mahasiswa_nilai`
--
ALTER TABLE `tb_mahasiswa_nilai`
  MODIFY `mhs_nilai_id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tb_matakuliah`
--
ALTER TABLE `tb_matakuliah`
  MODIFY `mk_id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_mahasiswa_nilai`
--
ALTER TABLE `tb_mahasiswa_nilai`
  ADD CONSTRAINT `tb_mahasiswa_nilai_ibfk_1` FOREIGN KEY (`mk_id`) REFERENCES `tb_matakuliah` (`mk_id`),
  ADD CONSTRAINT `tb_mahasiswa_nilai_ibfk_2` FOREIGN KEY (`mhs_id`) REFERENCES `tb_mahasiswa` (`mhs_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
