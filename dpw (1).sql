-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Sep 2022 pada 07.24
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dpw`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(225) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `nama` varchar(225) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `berat` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `nama`, `harga`, `stok`, `berat`, `deskripsi`, `created_at`, `updated_at`) VALUES
(14, 'BIA X Cut Meyriska - Pahat Sun Dress Islamic Journey In Istanbul - XL', 239000, 13, '400', 'Pahat Dress printing dengan motif istanbul, terdapat ruffle pada bagian lingkar pundak, rufflle pada bagian bawah dress, bukaan tali dan sleting pada bagian depan dress (busui friendly), panjang baju 135-140\r\n\r\n“Benua indah dengan ragam khazanah yang\r\nmemanjakan mata. Dilengkapi kota-kota bersejarah,\r\nsaksi awal peradaban Islam menyebar di Dunia\r\nSalah satunya Istanbul, begitu cantik dengan\r\nhamparan bunga tulip, juga megah dengan\r\npesona mozaik Hagia Sofia. Kedua unsur ini\r\nkami tuangkan dalam helaian kain koleksi\r\nEropa edisi Istanbul.”', '2022-09-01 01:45:04', '2022-09-01 01:45:04'),
(15, 'BIA X Cut Meyriska - Pahat Gray Dress Islamic Journey In Istanbul - M', 239000, 14, '400', 'Pahat Dress by BIA x Cut Meyriska\r\nPahat Dress printing dengan motif istanbul, terdapat ruffle pada bagian lingkar pundak, rufflle pada bagian bawah dress, bukaan tali dan sleting pada bagian depan dress (busui friendly), panjang baju 135-140\r\n\r\n“Benua indah dengan ragam khazanah yang\r\nmemanjakan mata. Dilengkapi kota-kota bersejarah,\r\nsaksi awal peradaban Islam menyebar di Dunia\r\nSalah satunya Istanbul, begitu cantik dengan\r\nhamparan bunga tulip, juga megah dengan\r\npesona mozaik Hagia Sofia. Kedua unsur ini\r\nkami tuangkan dalam helaian kain koleksi\r\nEropa edisi Istanbul.”', '2022-09-01 01:53:44', '2022-09-01 01:53:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(11) DEFAULT NULL,
  `email` varchar(225) DEFAULT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `nama`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'suyyy', 'suyyinah@gmail.com', 'Suyyinah', '$2y$10$T/BoLSVt3PnrW9fkHMPEg.qFjavMBUhbKtzlLb08WHOSQMVdD9iMe', NULL, '2022-09-02 21:33:43', '2022-09-02 21:34:09');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
