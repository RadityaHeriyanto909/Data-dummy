-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Sep 14, 2026 at 05:59 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `datadummy`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_pelanggan`
--

CREATE TABLE `tabel_pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(100) DEFAULT NULL,
  `kota` varchar(100) DEFAULT NULL,
  `provinsi` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_pelanggan`
--

INSERT INTO `tabel_pelanggan` (`id_pelanggan`, `nama_pelanggan`, `kota`, `provinsi`) VALUES
(1, 'John', 'Jakarta', 'DKI Jakarta'),
(2, 'Maria', 'Surabaya', 'Jawa Timur'),
(3, 'Ahmad', 'Bandung', 'Jawa Barat'),
(4, 'Siti', 'Jakarta', 'DKI Jakarta'),
(5, 'Budi', 'Medan', 'Sumatera Utara'),
(6, 'Rina', 'Jakarta', 'DKI Jakarta'),
(7, 'Dedi', 'Surabaya', 'Jawa Timur'),
(8, 'Lina', 'Medan', 'Sumatera Utara');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_pembelian`
--

CREATE TABLE `tabel_pembelian` (
  `id_pembelian` int(11) NOT NULL,
  `id_pelanggan` int(11) DEFAULT NULL,
  `id_produk` int(11) DEFAULT NULL,
  `tanggal_pembelian` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_pembelian`
--

INSERT INTO `tabel_pembelian` (`id_pembelian`, `id_pelanggan`, `id_produk`, `tanggal_pembelian`) VALUES
(1, 2, 1, '2023-01-05'),
(2, 7, 1, '2023-01-08'),
(3, 2, 2, '2023-01-12'),
(4, 7, 2, '2023-01-15'),
(5, 2, 3, '2023-01-20'),
(6, 7, 3, '2023-01-25'),
(7, 1, 4, '2023-02-01'),
(8, 4, 4, '2023-02-05'),
(9, 6, 4, '2023-02-10'),
(10, 3, 4, '2023-02-15'),
(11, 5, 4, '2023-02-20'),
(12, 1, 5, '2023-03-01'),
(13, 4, 5, '2023-03-05'),
(14, 6, 6, '2023-03-10'),
(15, 3, 7, '2023-03-15'),
(16, 8, 7, '2023-03-20'),
(17, 5, 8, '2023-04-01'),
(18, 1, 8, '2023-04-05'),
(19, 6, 9, '2023-04-10'),
(20, 8, 9, '2023-04-15');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_produk`
--

CREATE TABLE `tabel_produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(100) DEFAULT NULL,
  `kategori` varchar(50) DEFAULT NULL,
  `harga` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel_produk`
--

INSERT INTO `tabel_produk` (`id_produk`, `nama_produk`, `kategori`, `harga`) VALUES
(1, 'Laptop Asus', 'Electronics', 1200.00),
(2, 'Kamera Canon', 'Electronics', 800.00),
(3, 'Smartphone Xiomi', 'Electronics', 350.00),
(4, 'Baju Kemeja', 'Fashion', 50.00),
(5, 'Sepatu Sport', 'Fashion', 80.00),
(6, 'Tas Ransel', 'Fashion', 45.00),
(7, 'Meja Kerja', 'Furniture', 250.00),
(8, 'Kursi Kantor', 'Furniture', 150.00),
(9, 'Lemari Pakaian', 'Furniture', 400.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_pelanggan`
--
ALTER TABLE `tabel_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `tabel_pembelian`
--
ALTER TABLE `tabel_pembelian`
  ADD PRIMARY KEY (`id_pembelian`),
  ADD KEY `id_pelanggan` (`id_pelanggan`),
  ADD KEY `id_produk` (`id_produk`);

--
-- Indexes for table `tabel_produk`
--
ALTER TABLE `tabel_produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tabel_pembelian`
--
ALTER TABLE `tabel_pembelian`
  ADD CONSTRAINT `tabel_pembelian_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `tabel_pelanggan` (`id_pelanggan`),
  ADD CONSTRAINT `tabel_pembelian_ibfk_2` FOREIGN KEY (`id_produk`) REFERENCES `tabel_produk` (`id_produk`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
