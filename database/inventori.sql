-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2023 at 12:18 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventori`
--

-- --------------------------------------------------------

--
-- Table structure for table `tmbarang`
--

CREATE TABLE `tmbarang` (
  `id` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmbarang`
--

INSERT INTO `tmbarang` (`id`, `kode`, `nama`, `id_kategori`, `satuan`, `stok`) VALUES
(5, 'R-001', 'Rexus Daxa M81', 1, 'Buah', 37),
(7, 'R-002', 'REXUS DAXA AIR IV', 2, 'Buah', 35),
(9, 'R-003', 'REXUS THUNDERFOX HX3', 5, 'Buah', 80),
(10, 'R-004', 'REXUS XORA DM1', 7, 'Buah', 10),
(11, 'R-005', 'REXUS ALVA SW-RX-03', 1, 'Buah', 60),
(12, 'L-001', 'LOGITECH G PRO W X', 2, 'Buah', 40),
(13, 'Z-001', 'RAZER DX 5', 2, 'Buah', 70),
(14, 'L-002', 'LOGITECH MOUSEPAD XTREME', 6, 'Buah', 14),
(15, 'F-002', 'FANTECH ATO SAKURA MP905', 6, 'Buah', 19),
(16, 'F-003', 'FANTECH LUMINOS C30', 8, 'Buah', 15),
(17, 'L-004', 'LOGITECH C920', 8, 'Buah', 6),
(18, 'A-002', 'Simbada Type C3', 3, 'Buah', 68),
(19, 'F-001', 'FANTECH XD5', 6, 'Buah', 43),
(21, 'F-004', 'FANTECH XD3', 2, 'Buah', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tmkategori`
--

CREATE TABLE `tmkategori` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `no_rak` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmkategori`
--

INSERT INTO `tmkategori` (`id`, `nama`, `no_rak`) VALUES
(1, 'Keyboard', 1),
(2, 'Mouse', 2),
(3, 'Sound System', 3),
(4, 'Joy Stick', 4),
(5, 'Headset', 5),
(6, 'Mousepad', 6),
(7, 'Microphone', 7),
(8, 'Webcam', 8);

-- --------------------------------------------------------

--
-- Table structure for table `tmpelanggan`
--

CREATE TABLE `tmpelanggan` (
  `id` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `no_telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmpelanggan`
--

INSERT INTO `tmpelanggan` (`id`, `kode`, `nama`, `alamat`, `no_telp`) VALUES
(1, 'P001', 'Syihab Phone', 'Jl.Indah Permai', '0813131'),
(2, 'P002', 'Twincom', 'Banjarbaru', '0872727727'),
(3, 'P003', 'MEGA SURYA COMP', 'Banjarmasin', '08929292');

-- --------------------------------------------------------

--
-- Table structure for table `tmpetugas`
--

CREATE TABLE `tmpetugas` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` enum('aktif','nonaktif') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmpetugas`
--

INSERT INTO `tmpetugas` (`id`, `nama`, `username`, `password`, `status`) VALUES
(2, 'Muhammad Ryu', 'ryu', '$2a$10$/4Mg6xX0HTzJdf7ynp2EHuDVkjbnhwrKpYuD5ag.KNwbvozrXne22', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `tmsupplier`
--

CREATE TABLE `tmsupplier` (
  `id` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `no_telp` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tmsupplier`
--

INSERT INTO `tmsupplier` (`id`, `kode`, `nama`, `alamat`, `no_telp`) VALUES
(1, 'S001', 'Rexus ', 'Jl.Kastuari', '0228192832'),
(3, 'S002', 'Logitech', 'Bogor', '08282828'),
(4, 'S003', 'Fantech', 'Bekasi', '08282828'),
(5, 'S004', 'Razer', 'Semarang', '08313131');

-- --------------------------------------------------------

--
-- Table structure for table `trbarang_keluar`
--

CREATE TABLE `trbarang_keluar` (
  `id` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `id_petugas` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trbarang_keluar`
--

INSERT INTO `trbarang_keluar` (`id`, `tgl`, `id_petugas`, `id_pelanggan`) VALUES
(1, '2016-12-19', 2, 1),
(2, '2016-12-19', 2, 1),
(3, '2016-12-19', 2, 1),
(4, '2016-12-19', 2, 1),
(5, '2016-12-19', 2, 2),
(6, '2016-12-22', 2, 1),
(7, '2016-12-22', 2, 2),
(8, '2023-01-14', 2, 2),
(9, '2023-01-15', 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `trbarang_keluar_detail`
--

CREATE TABLE `trbarang_keluar_detail` (
  `id` int(11) NOT NULL,
  `id_barang_keluar` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trbarang_keluar_detail`
--

INSERT INTO `trbarang_keluar_detail` (`id`, `id_barang_keluar`, `id_barang`, `jumlah`) VALUES
(1, 1, 14, 10),
(2, 1, 15, 11),
(3, 2, 14, 5),
(4, 2, 15, 6),
(5, 3, 14, 5),
(6, 3, 15, 6),
(7, 4, 14, 10),
(8, 4, 15, 11),
(9, 5, 16, 10),
(10, 5, 17, 11),
(11, 6, 13, 10),
(12, 6, 18, 12),
(13, 7, 5, 15),
(14, 8, 7, 10),
(15, 9, 11, 30);

-- --------------------------------------------------------

--
-- Table structure for table `trbarang_masuk`
--

CREATE TABLE `trbarang_masuk` (
  `id` int(11) NOT NULL,
  `tgl` date NOT NULL,
  `id_petugas` int(11) NOT NULL,
  `id_supplier` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trbarang_masuk`
--

INSERT INTO `trbarang_masuk` (`id`, `tgl`, `id_petugas`, `id_supplier`) VALUES
(3, '2016-12-17', 2, 1),
(4, '2016-12-19', 2, 1),
(5, '2016-12-19', 2, 1),
(6, '2016-12-19', 2, 5),
(7, '2016-12-22', 2, 1),
(8, '2023-01-15', 2, 1),
(9, '2023-01-15', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `trbarang_masuk_detail`
--

CREATE TABLE `trbarang_masuk_detail` (
  `id` int(11) NOT NULL,
  `id_barang_masuk` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trbarang_masuk_detail`
--

INSERT INTO `trbarang_masuk_detail` (`id`, `id_barang_masuk`, `id_barang`, `jumlah`) VALUES
(5, 3, 14, 5),
(6, 3, 15, 6),
(7, 4, 14, 10),
(8, 4, 15, 11),
(9, 5, 14, 20),
(10, 5, 15, 25),
(11, 6, 16, 5),
(12, 6, 17, 6),
(13, 7, 14, 4),
(14, 7, 15, 5),
(15, 8, 5, 10),
(16, 8, 19, 40),
(17, 9, 5, 7);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tmbarang`
--
ALTER TABLE `tmbarang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `myKey` (`id_kategori`);

--
-- Indexes for table `tmkategori`
--
ALTER TABLE `tmkategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tmpelanggan`
--
ALTER TABLE `tmpelanggan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tmpetugas`
--
ALTER TABLE `tmpetugas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tmsupplier`
--
ALTER TABLE `tmsupplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trbarang_keluar`
--
ALTER TABLE `trbarang_keluar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trbarang_keluar_detail`
--
ALTER TABLE `trbarang_keluar_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trbarang_masuk`
--
ALTER TABLE `trbarang_masuk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trbarang_masuk_detail`
--
ALTER TABLE `trbarang_masuk_detail`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tmbarang`
--
ALTER TABLE `tmbarang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tmkategori`
--
ALTER TABLE `tmkategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tmpelanggan`
--
ALTER TABLE `tmpelanggan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tmpetugas`
--
ALTER TABLE `tmpetugas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tmsupplier`
--
ALTER TABLE `tmsupplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `trbarang_keluar`
--
ALTER TABLE `trbarang_keluar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `trbarang_keluar_detail`
--
ALTER TABLE `trbarang_keluar_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `trbarang_masuk`
--
ALTER TABLE `trbarang_masuk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `trbarang_masuk_detail`
--
ALTER TABLE `trbarang_masuk_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tmbarang`
--
ALTER TABLE `tmbarang`
  ADD CONSTRAINT `myKey` FOREIGN KEY (`id_kategori`) REFERENCES `tmkategori` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
