-- phpMyAdmin SQL Dump
-- version 5.3.0-dev+20220523.649d9b34ea
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jan 2023 pada 05.35
-- Versi server: 10.4.24-MariaDB
-- Versi PHP: 8.1.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pendaftaran`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `kode_kelas` varchar(10) NOT NULL,
  `nama_kelas` varchar(30) DEFAULT NULL,
  `tahun_ajaran` varchar(10) DEFAULT NULL,
  `kapasitas` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`kode_kelas`, `nama_kelas`, `tahun_ajaran`, `kapasitas`) VALUES
('K002', '10 Bahasa 1', '2023', 40),
('K003', '10 Bahasa 2', '2022', 56);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `kode_pendaftaran` varchar(10) NOT NULL,
  `kode_siswa` varchar(10) DEFAULT NULL,
  `kode_kelas` varchar(10) DEFAULT NULL,
  `tanggal_pendaftaran` varchar(20) DEFAULT NULL,
  `biaya_pendaftaran` int(11) DEFAULT NULL,
  `jurusan` varchar(50) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pendaftaran`
--

INSERT INTO `pendaftaran` (`kode_pendaftaran`, `kode_siswa`, `kode_kelas`, `tanggal_pendaftaran`, `biaya_pendaftaran`, `jurusan`, `status`) VALUES
('P001', 'S001', 'K001', '2023-01-03', 200000, 'IPS', 'Diterima'),
('P002', 'S002', 'K002', '2022-04-06', 200000, 'IPA', 'Ditolak');

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `kode_siswa` varchar(10) NOT NULL,
  `nama` varchar(80) DEFAULT NULL,
  `tanggal_lahir` varchar(20) DEFAULT NULL,
  `jenis_kelamin` varchar(20) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `nomor_telepon` varchar(13) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`kode_siswa`, `nama`, `tanggal_lahir`, `jenis_kelamin`, `alamat`, `nomor_telepon`, `email`) VALUES
('S001', 'Muawwanah', '2002-03-02', 'Perempuan', 'Amuntai ', '081234567867', 'muawwanah@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`kode_kelas`);

--
-- Indeks untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD PRIMARY KEY (`kode_pendaftaran`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`kode_siswa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



