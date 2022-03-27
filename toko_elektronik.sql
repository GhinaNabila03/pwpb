-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Mar 2022 pada 05.25
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_elektronik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `harga_produk` varchar(100) NOT NULL,
  `foto_produk` text DEFAULT NULL,
  `stok_produk` varchar(100) NOT NULL,
  `deskripsi_produk` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `harga_produk`, `foto_produk`, `stok_produk`, `deskripsi_produk`) VALUES
(5, 'PIXMA E3470', '50000000', '111.png', '3', 'Printer All-In-One Nirkabel Ringkas dengan LCD untuk Pencetakan Biaya Ringan\r\n'),
(6, 'PIXMA TR150 (Dengan Baterai Lepas-Pasang)', '1000000', '2222222.png', '-1', 'Printer Portabel Nirkabel dengan Baterai Lepas-Pasang dan Pengisian Daya via USB\r\n'),
(7, 'PIXMA TR150', '200000', '333.png', '4', 'Printer Portabel Nirkabel\r\n'),
(9, 'Canon Printer Inkjet Pixma TS207 Black 1unit', '7780000', '666.jpg', '6', 'Printer fungsi tunggal yang stylish dan ringkas, mendukung pencetakan foto tanpa batas tepi hingga ukuran 4 x 6inch.\r\n');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `harga_produk` varchar(100) NOT NULL,
  `subtotal` varchar(100) NOT NULL,
  `foto_produk` text DEFAULT NULL,
  `status` enum('proses','dikirim','ditolak') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `name`, `alamat`, `no_hp`, `nama_produk`, `harga_produk`, `subtotal`, `foto_produk`, `status`) VALUES
(1, 'gina', 'jl tanah abang', '1234562345', 'Printer Brother', '2000000', '2000000', 'p.jfif', 'dikirim'),
(2, 'ginaa', 'jl batu', '0986653737', 'PIXMA E3470', '50000000', '50000000', '111.png', 'dikirim'),
(3, 'ginaa', 'jl sumurr', '0987655555', 'PIXMA TR150 (Dengan Baterai Lepas-Pasang)', '1000000', '3000000', '2222222.png', 'dikirim'),
(4, 'gina', 'jl garuda', '098765432', 'Canon Printer Inkjet Pixma TS207 Black 1unit', '7780000', '7780000', '666.jpg', 'proses');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL,
  `roles` enum('Admin','Customer') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `name`, `password`, `roles`) VALUES
(5, 'gina', 'gina', '12345', 'Customer'),
(6, 'ghina', 'ghina', '12345', 'Admin'),
(8, 'admin', 'admin', '1234', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
