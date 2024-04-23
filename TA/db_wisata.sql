-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 23, 2024 at 07:22 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_wisata`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_admin`
--

CREATE TABLE `data_admin` (
  `id_admin` varchar(50) DEFAULT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data_admin`
--

INSERT INTO `data_admin` (`id_admin`, `nama_lengkap`, `username`, `password`) VALUES
('ADM001', 'Admin', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
('ADM20240307084958441', 'Admin2', 'admin2', 'c84258e9c39059a89ab77d846ddab909'),
('ADM003', 'admin3', 'admin3', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `data_bobot`
--

CREATE TABLE `data_bobot` (
  `id_bobot` varchar(50) DEFAULT NULL,
  `jenis_wisata` varchar(100) DEFAULT NULL,
  `wilayah` varchar(100) DEFAULT NULL,
  `rating` varchar(100) DEFAULT NULL,
  `harga_tiket` varchar(50) DEFAULT NULL,
  `hari_operasional` varchar(100) DEFAULT NULL,
  `jam_operasional` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data_bobot`
--

INSERT INTO `data_bobot` (`id_bobot`, `jenis_wisata`, `wilayah`, `rating`, `harga_tiket`, `hari_operasional`, `jam_operasional`) VALUES
('BOB20240223060800825', '0.401', '0.235', '0.188', '0.101', '0.06', '0.026');

-- --------------------------------------------------------

--
-- Table structure for table `data_harga_tiket`
--

CREATE TABLE `data_harga_tiket` (
  `id_harga_tiket` varchar(50) NOT NULL DEFAULT '',
  `harga_tiket` varchar(50) DEFAULT NULL,
  `nilai` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data_harga_tiket`
--

INSERT INTO `data_harga_tiket` (`id_harga_tiket`, `harga_tiket`, `nilai`) VALUES
('HAR20240223075021960', '1.000-50.000', '3'),
('HAR20240223075021988', 'Tidak ada Harga Tiket', '4'),
('HAR20240223075043812', '50.000-100.000', '2'),
('HAR20240223075102468', 'Diatas 100.000', '1');

-- --------------------------------------------------------

--
-- Table structure for table `data_hari_operasional`
--

CREATE TABLE `data_hari_operasional` (
  `id_hari_operasional` varchar(50) DEFAULT NULL,
  `hari_operasional` varchar(100) DEFAULT NULL,
  `nilai` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data_hari_operasional`
--

INSERT INTO `data_hari_operasional` (`id_hari_operasional`, `hari_operasional`, `nilai`) VALUES
('HAR20240223075344350', 'Buka Setiap Hari', '4'),
('HAR20240223075404140', 'Selasa - Minggu', '2'),
('HAR20240223075410826', 'Sabtu - Minggu', '1'),
('HAR20240324172003350', 'Selasa - Minggu', '3');

-- --------------------------------------------------------

--
-- Table structure for table `data_jam_operasional`
--

CREATE TABLE `data_jam_operasional` (
  `id_jam_operasional` varchar(50) DEFAULT NULL,
  `jam_operasional` varchar(100) DEFAULT NULL,
  `nilai` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data_jam_operasional`
--

INSERT INTO `data_jam_operasional` (`id_jam_operasional`, `jam_operasional`, `nilai`) VALUES
('JAM20240223075216218', '24 jam', '8'),
('JAM20240324171705956', '06.00 WIB - 22.00 WIB', '7'),
('JAM20240324171724411', '08.00 WIB - 23.00 WIB', '6'),
('JAM20240324171736951', '07.00 WIB - 17.00 WIB', '5'),
('JAM20240324171747446', '08.00 WIB - 18.00 WIB', '4'),
('JAM20240324171758413', '09.30 WIB - 18.00 WIB', '3'),
('JAM20240324171808900', '09.00 WIB - 17.00 WIB', '2'),
('JAM20240326060317676', '10.00WIB-18.00WIB', '1');

-- --------------------------------------------------------

--
-- Table structure for table `data_jenis_wisata`
--

CREATE TABLE `data_jenis_wisata` (
  `id_jenis_wisata` varchar(50) DEFAULT NULL,
  `jenis_wisata` varchar(100) DEFAULT NULL,
  `nilai` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data_jenis_wisata`
--

INSERT INTO `data_jenis_wisata` (`id_jenis_wisata`, `jenis_wisata`, `nilai`) VALUES
('JEN20240223073212957', 'Alam', '3'),
('JEN20240223073222153', 'Budaya', '2'),
('JEN20240223073228672', 'Buatan', '1');

-- --------------------------------------------------------

--
-- Table structure for table `data_rating`
--

CREATE TABLE `data_rating` (
  `id_rating` varchar(50) DEFAULT NULL,
  `rating` varchar(100) DEFAULT NULL,
  `nilai` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data_rating`
--

INSERT INTO `data_rating` (`id_rating`, `rating`, `nilai`) VALUES
('RAT20240223073558381', 'Dibawah 4.0', '1'),
('RAT20240223073624704', '4.0-4.5', '2'),
('RAT20240223073640212', '4.6-5.0', '3');

-- --------------------------------------------------------

--
-- Table structure for table `data_wilayah`
--

CREATE TABLE `data_wilayah` (
  `id_wilayah` varchar(50) DEFAULT NULL,
  `wilayah` varchar(100) DEFAULT NULL,
  `nilai` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data_wilayah`
--

INSERT INTO `data_wilayah` (`id_wilayah`, `wilayah`, `nilai`) VALUES
('WIL20240223073253300', 'Samosir', '7'),
('WIL20240223073300732', 'Toba', '6'),
('WIL20240223073315344', 'Karo', '5'),
('WIL20240223073333692', 'Tapanuli Utara', '4'),
('WIL20240223073418960', 'Humbang Hasundutan', '3'),
('WIL20240223073430366', 'Simalungun', '2'),
('WIL20240223073437481', 'Dairi', '1');

-- --------------------------------------------------------

--
-- Table structure for table `data_wisata`
--

CREATE TABLE `data_wisata` (
  `id_wisata` varchar(50) DEFAULT NULL,
  `nama_wisata` varchar(100) DEFAULT NULL,
  `foto` varchar(250) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `koordinat` varchar(100) DEFAULT NULL,
  `id_jenis_wisata` varchar(50) DEFAULT NULL,
  `id_wilayah` varchar(50) DEFAULT NULL,
  `id_rating` varchar(50) DEFAULT NULL,
  `id_harga_tiket` varchar(50) DEFAULT NULL,
  `id_hari_operasional` varchar(50) DEFAULT NULL,
  `id_jam_operasional` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `data_wisata`
--

INSERT INTO `data_wisata` (`id_wisata`, `nama_wisata`, `foto`, `deskripsi`, `koordinat`, `id_jenis_wisata`, `id_wilayah`, `id_rating`, `id_harga_tiket`, `id_hari_operasional`, `id_jam_operasional`) VALUES
('WIS20240324170732569', 'Kebun Teh Damanik', '1711296452-36988-maxresdefault.jpg', 'Kebun Teh Sidamanik, atau Kebun Teh Bah Butong, adalah area perkebunan dengan luas mencapai 8.373 hektare. Disebut sebagai perkebunan terbaik kedua di Indonesia. Hasil panennya bahkan sudah dikirim hingga ke mancanegara. Antara lain ke Singapura, Malaysia, Eropa Timur, dan Eropa Tengah.', '2.857325530097281, 98.90966878289724', 'JEN20240223073212957', 'WIL20240223073430366', 'RAT20240223073640212', 'HAR20240223075021988', 'HAR20240223075344350', 'JAM20240223075216218'),
('WIS20240324172305911', 'Salib Kasih', '1711297385-21075-800px-salib-kasih-14.jpg', 'Salib Kasih merupakan simbol mutlak yang menekankan kasih sebagai wujud dari ajaran Kekristenan. Baik untuk kasih antar sesama manusia, makhluk hidup begitu juga dengan Sang Pencipta. Atau boleh disebut, hubungan secara horizontal maupun vertikal. ', '2.0138961369234902, 99.00360229640722', 'JEN20240223073222153', 'WIL20240223073333692', 'RAT20240223073640212', 'HAR20240223075021960', 'HAR20240223075344350', 'JAM20240326060317676'),
('WIS20240324173103705', 'Tuan Nagani', '1711297863-60939-Tuan-Nagani-Paradise.jpg', 'Tuan Nagani Paradise adalah destinasi wisata dua dimensi dengan konsep alam dan buatan yang terletak di Jalan Pakkat &ndash; Dolok Sanggul, Desa Sosor Tombok, Humbang Hasundutan, Sumatera Utara Dengan luas lebih dari 1 hektar, taman rekreasi keluarga ini dibangun di tengah kawasan hutan cemara yang asri', '2.2493072268515437, 98.67313204143903', 'JEN20240223073228672', 'WIL20240223073418960', 'RAT20240223073640212', 'HAR20240223075021960', 'HAR20240223075410826', 'JAM20240223075216218');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_harga_tiket`
--
ALTER TABLE `data_harga_tiket`
  ADD PRIMARY KEY (`id_harga_tiket`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
