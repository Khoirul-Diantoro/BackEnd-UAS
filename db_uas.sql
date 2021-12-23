-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 23, 2021 at 05:37 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_uas`
--

-- --------------------------------------------------------

--
-- Table structure for table `dgame`
--

CREATE TABLE `dgame` (
  `id_game` int(64) NOT NULL,
  `nama_game` varchar(255) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `harga` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dgame`
--

INSERT INTO `dgame` (`id_game`, `nama_game`, `genre`, `harga`) VALUES
(1, 'warcraft', 'action,strategy', '100.000'),
(2, 'assasins creed', 'action,medieval', '75.000'),
(3, 'CZ', 'FPS,action', '55.000');

-- --------------------------------------------------------

--
-- Table structure for table `rgame`
--

CREATE TABLE `rgame` (
  `id_game` int(64) NOT NULL,
  `nama_game` varchar(255) NOT NULL,
  `harga` varchar(255) NOT NULL,
  `tgl_in` varchar(255) NOT NULL,
  `tgl_out` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rgame`
--

INSERT INTO `rgame` (`id_game`, `nama_game`, `harga`, `tgl_in`, `tgl_out`) VALUES
(1, 'assasins creed', '100.000', '2021-12-17', '2021-12-24'),
(2, 'warcraft', '100.000', '2021-12-09', '2021-12-23'),
(3, 'CZ', '55.000', '2021-12-17', '2021-12-24');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id_siswa` int(64) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `tgl_lhr` varchar(255) NOT NULL,
  `agama` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `ststus` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id_siswa`, `nama`, `alamat`, `email`, `password`, `tgl_lhr`, `agama`, `gender`, `ststus`, `foto`) VALUES
(22, 'Muhammad A', '<p>sd</p>', 'esd@fsaf', 'adasdas', '2021-11-25', 'Islam', 'Perempuan', 'lulus', 'coding3.png'),
(23, 'we', '<p>weewq</p>', 'wqe@asd', 'asd', '2021-11-12', 'Hindu', 'Perempuan', 'belum lulus', 'Deskripsi.png'),
(24, 'rey', '<p>eyr</p>', 'rye@dry', 'tey', '2021-11-09', 'Protestan', 'Perempuan', 'belum lulus', 'Hasil Iot7.png'),
(25, 'er', '<p>re</p>', 'ret@ert', 'ret', '2021-11-10', 'Islam', 'Perempuan', 'belum lulus', 'foto.jpg'),
(26, 'buaya', '<p>buaya</p>', 'buh@vhksa', 'oijas', '2021-11-10', 'Katolik', 'Laki-laki', 'KIP', 'Deskripsi.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_catatan`
--

CREATE TABLE `tb_catatan` (
  `id_catatan` int(64) NOT NULL,
  `catatan` varchar(255) NOT NULL,
  `tgl` varchar(255) NOT NULL,
  `jenis` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_catatan`
--

INSERT INTO `tb_catatan` (`id_catatan`, `catatan`, `tgl`, `jenis`) VALUES
(11, '<p>Hari Sabtu membeli VCD Spider-man Broken Home</p>\r\n', '2021-12-25', 'Penting'),
(12, '<p>sabtu memebeli vcd insidius 5</p>\r\n', '2022-01-01', 'Penting'),
(16, '<p>Beli supermen vs tanos</p>\r\n', '2021-12-25', 'biasa');

-- --------------------------------------------------------

--
-- Table structure for table `tb_cd`
--

CREATE TABLE `tb_cd` (
  `id_cd` int(64) NOT NULL,
  `nama_cd` varchar(255) NOT NULL,
  `genre` varchar(255) NOT NULL,
  `harga` varchar(255) NOT NULL,
  `foto` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_cd`
--

INSERT INTO `tb_cd` (`id_cd`, `nama_cd`, `genre`, `harga`, `foto`) VALUES
(1, 'siksa kubur', 'horror,fantasy,', '25.000', 'default.jpg'),
(2, 'azab sering spoiler', 'horror', '50.000', 'default.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_sewacd`
--

CREATE TABLE `tb_sewacd` (
  `id_sewacd` int(64) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga` varchar(255) NOT NULL,
  `tgl_in` varchar(255) NOT NULL,
  `tgl_out` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_sewacd`
--

INSERT INTO `tb_sewacd` (`id_sewacd`, `nama`, `harga`, `tgl_in`, `tgl_out`) VALUES
(1, 'Siksa Kubur', '25.000', '2021-12-16', '2021-12-19'),
(2, 'Venom', '60.000', '2021-12-23', '2021-12-30'),
(3, 'Avatar', '60.000', '2021-12-24', '2021-12-30'),
(4, 'Avatar', '60.000', '2021-12-24', '2021-12-31');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`username`, `password`, `nama`) VALUES
('anan', '$2y$10$lCzCJ1jxKC7xrAV85Ifd/.rdDI4dEVIkMZPw/FLpFddkhVeNE5bNO', 'anan'),
('taufik', '$2y$10$XD2aevubxM5OSdW5DAkR3.3fUOT1LGFVRA6P3k2JK.sZ6SgPvI2Ty', 'Taufik Hidayat');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dgame`
--
ALTER TABLE `dgame`
  ADD PRIMARY KEY (`id_game`);

--
-- Indexes for table `rgame`
--
ALTER TABLE `rgame`
  ADD PRIMARY KEY (`id_game`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `tb_catatan`
--
ALTER TABLE `tb_catatan`
  ADD PRIMARY KEY (`id_catatan`);

--
-- Indexes for table `tb_cd`
--
ALTER TABLE `tb_cd`
  ADD PRIMARY KEY (`id_cd`);

--
-- Indexes for table `tb_sewacd`
--
ALTER TABLE `tb_sewacd`
  ADD PRIMARY KEY (`id_sewacd`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dgame`
--
ALTER TABLE `dgame`
  MODIFY `id_game` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `rgame`
--
ALTER TABLE `rgame`
  MODIFY `id_game` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id_siswa` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tb_catatan`
--
ALTER TABLE `tb_catatan`
  MODIFY `id_catatan` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tb_cd`
--
ALTER TABLE `tb_cd`
  MODIFY `id_cd` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_sewacd`
--
ALTER TABLE `tb_sewacd`
  MODIFY `id_sewacd` int(64) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
