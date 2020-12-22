-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2020 at 04:40 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oop_1918037`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_data`
--

CREATE TABLE `tb_data` (
  `Bulan` varchar(50) NOT NULL,
  `Gaji` int(20) NOT NULL,
  `Sisa Gaji` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tb_mahasiswa`
--

CREATE TABLE `tb_mahasiswa` (
  `NIM` varchar(10) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Prodi` varchar(50) NOT NULL,
  `Angkatan` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_mahasiswa`
--

INSERT INTO `tb_mahasiswa` (`NIM`, `Nama`, `Prodi`, `Angkatan`) VALUES
('', '', '', ''),
('1918037', 'Aghisna Rizq Gyfari', 'T.Informatika', '2019'),
('1918046', 'Ahmada IT', 'T.informatika', '2020');

-- --------------------------------------------------------

--
-- Table structure for table `tb_matkul`
--

CREATE TABLE `tb_matkul` (
  `Kode_MK` varchar(10) NOT NULL,
  `Nama_MK` varchar(50) NOT NULL,
  `jumlah_sks` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_matkul`
--

INSERT INTO `tb_matkul` (`Kode_MK`, `Nama_MK`, `jumlah_sks`) VALUES
('IF1923', 'PANCASILA', '2'),
('IF2131', 'MATDIS', '2'),
('IF3301', 'OOP', '4');

-- --------------------------------------------------------

--
-- Table structure for table `tb_nilai`
--

CREATE TABLE `tb_nilai` (
  `NIM` varchar(10) NOT NULL,
  `Kode_MK` varchar(10) NOT NULL,
  `n_tugas` int(11) NOT NULL,
  `n_prak` int(11) NOT NULL,
  `n_akhir` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_nilai`
--

INSERT INTO `tb_nilai` (`NIM`, `Kode_MK`, `n_tugas`, `n_prak`, `n_akhir`) VALUES
('1918037', 'IF19203', 90, 85, 98),
('1918037', 'IF19203', 90, 85, 98),
('1918046', 'IF1923', 90, 85, 88);

-- --------------------------------------------------------

--
-- Table structure for table `tb_riwayat`
--

CREATE TABLE `tb_riwayat` (
  `Bulan` varchar(10) NOT NULL,
  `Gaji` bigint(10) NOT NULL,
  `Sisa_Gaji` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_riwayat`
--

INSERT INTO `tb_riwayat` (`Bulan`, `Gaji`, `Sisa_Gaji`) VALUES
('December', 12000000, 0),
('Februari', 130000, 39000),
('Januari', 12000000, 3600000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_data`
--
ALTER TABLE `tb_data`
  ADD PRIMARY KEY (`Bulan`);

--
-- Indexes for table `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  ADD PRIMARY KEY (`NIM`);

--
-- Indexes for table `tb_matkul`
--
ALTER TABLE `tb_matkul`
  ADD PRIMARY KEY (`Kode_MK`);

--
-- Indexes for table `tb_nilai`
--
ALTER TABLE `tb_nilai`
  ADD KEY `NIM` (`NIM`),
  ADD KEY `Kode_MK` (`Kode_MK`);

--
-- Indexes for table `tb_riwayat`
--
ALTER TABLE `tb_riwayat`
  ADD PRIMARY KEY (`Bulan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
