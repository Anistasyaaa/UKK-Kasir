-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Feb 2024 pada 06.48
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ukk`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detailpenjualan`
--

CREATE TABLE `detailpenjualan` (
  `id_detail` int(11) NOT NULL,
  `id_penjualan` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `jumlah_produk` int(11) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `detailpenjualan`
--

INSERT INTO `detailpenjualan` (`id_detail`, `id_penjualan`, `id_produk`, `jumlah_produk`, `subtotal`) VALUES
(1, 1, 8, 2, '15000.00'),
(1, 2, 7, 1, '15000.00'),
(2, 3, 6, 1, '20000.00'),
(2, 4, 3, 1, '25000.00'),
(3, 5, 5, 2, '15000.00'),
(4, 6, 5, 2, '15000.00'),
(5, 9, 2, 2, '15000.00'),
(5, 10, 6, 2, '20000.00'),
(6, 11, 1, 2, '5000.00'),
(8, 13, 6, 2, '20000.00'),
(8, 14, 7, 3, '15000.00'),
(9, 15, 11, 1, '10000.00'),
(11, 17, 10, 2, '5000.00'),
(12, 18, 6, 1, '20000.00'),
(12, 19, 2, 1, '15000.00'),
(13, 20, 4, 2, '20000.00'),
(13, 21, 6, 1, '20000.00'),
(14, 22, 2, 7, '15000.00'),
(15, 23, 2, 7, '15000.00'),
(16, 26, 3, 2, '25000.00'),
(17, 27, 6, 1, '20000.00'),
(17, 28, 7, 2, '15000.00'),
(18, 29, 10, 1, '5000.00'),
(19, 30, 8, 3, '15000.00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(255) NOT NULL,
  `no_meja` int(11) NOT NULL,
  `no_telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_pelanggan`, `no_meja`, `no_telp`) VALUES
(1, 'TIWI', 12, ''),
(2, 'wawa', 12, ''),
(3, 't', 2, ''),
(4, 't', 2, ''),
(5, 'yanto', 112, ''),
(6, 'wati', 11, ''),
(7, 'wati', 11, ''),
(8, 'wati', 11, ''),
(9, 'wa', 2, ''),
(10, 'yanto', 122, ''),
(11, 'ww', 11, ''),
(12, 'septian julian', 2, ''),
(13, 'puput', 12, ''),
(14, 'hilman', 111, ''),
(15, 'hilman', 111, ''),
(16, 'wati', 13, ''),
(17, 'wati', 14, ''),
(18, 'A', 1, ''),
(19, 'tasya', 12, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `tanggal_penjualan` date NOT NULL,
  `total_harga` decimal(10,2) NOT NULL,
  `id_pelanggan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `tanggal_penjualan`, `total_harga`, `id_pelanggan`) VALUES
(1, '2024-02-26', '0.00', 0),
(2, '2024-02-26', '0.00', 0),
(3, '2024-02-26', '0.00', 0),
(4, '2024-02-26', '0.00', 0),
(5, '2024-02-26', '0.00', 0),
(6, '2024-02-27', '0.00', 0),
(7, '2024-02-27', '0.00', 0),
(8, '2024-02-27', '0.00', 0),
(9, '2024-02-27', '0.00', 0),
(10, '2024-02-27', '0.00', 0),
(11, '2024-02-27', '0.00', 0),
(12, '2024-02-27', '0.00', 0),
(13, '2024-02-28', '0.00', 0),
(14, '2024-02-28', '0.00', 0),
(15, '2024-02-28', '0.00', 0),
(16, '2024-02-28', '0.00', 0),
(17, '2024-02-28', '0.00', 0),
(18, '2024-02-28', '0.00', 0),
(19, '2024-02-28', '0.00', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `harga` decimal(10,2) NOT NULL,
  `stok` int(11) NOT NULL,
  `terjual` int(50) NOT NULL,
  `sisa_stok` int(11) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `harga`, `stok`, `terjual`, `sisa_stok`, `foto`) VALUES
(2, 'Matcha', '15000.00', 83, 17, 0, '26022024043746.jpg'),
(3, 'Ikan Bakar', '25000.00', 97, 3, 0, '26022024051748.jpg'),
(4, 'Burger', '20000.00', 98, 2, 0, '26022024051946.jpg'),
(5, 'Bakso', '20000.00', 94, 6, 0, '26022024074431.jpg'),
(6, 'Ramen', '20000.00', 91, 9, 0, 'ramen.jpg'),
(7, 'Nasi Goreng', '15000.00', 93, 7, 0, '26022024074546.jpg'),
(8, 'Pisang Goreng', '15000.00', 91, 9, 0, '26022024074615.jpg'),
(10, 'Es Teh', '5000.00', 97, 3, 0, '27022024020128.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` enum('Admin','Petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `level`) VALUES
(111, 'Admin', 'e3afed0047b08059d0fada10f400c1e5', 'Admin'),
(222, 'Petugas', '01d7ea7d5292dd951429a450d8eeb09d', 'Petugas');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detailpenjualan`
--
ALTER TABLE `detailpenjualan`
  ADD PRIMARY KEY (`id_penjualan`),
  ADD KEY `id_detail` (`id_detail`,`id_produk`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`),
  ADD KEY `id_pelanggan` (`id_pelanggan`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `detailpenjualan`
--
ALTER TABLE `detailpenjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=233;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
