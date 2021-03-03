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
-- Database: `ujian_ecampuz_bonus`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akun`
--

CREATE TABLE `akun` (
  `id_akun` int(2) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `akun`
--

INSERT INTO `akun` (`id_akun`, `username`, `password`, `nama_lengkap`) VALUES
(1, 'admin', 'admin', 'Foton Graviton');

-- --------------------------------------------------------

--
-- Struktur dari tabel `instansi`
--

CREATE TABLE `instansi` (
  `id_instansi` int(2) NOT NULL,
  `nama_instansi` varchar(50) NOT NULL,
  `deskripsi_instansi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `instansi`
--

INSERT INTO `instansi` (`id_instansi`, `nama_instansi`, `deskripsi_instansi`) VALUES
(2, 'PT. Bardi', 'Perusahaan yang melayani produk - produk IoT di Indonesia'),
(3, 'PT. Makmur Dimana Aja', 'perusahaan meubel yang ada dimana saja');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id_akun`);

--
-- Indeks untuk tabel `instansi`
--
ALTER TABLE `instansi`
  ADD PRIMARY KEY (`id_instansi`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `akun`
--
ALTER TABLE `akun`
  MODIFY `id_akun` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `instansi`
--
ALTER TABLE `instansi`
  MODIFY `id_instansi` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
