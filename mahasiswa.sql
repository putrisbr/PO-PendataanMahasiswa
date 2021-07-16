-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 15 Des 2019 pada 23.06
-- Versi Server: 5.6.24
-- PHP Version: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `mahasiswa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `aljabar`
--

CREATE TABLE IF NOT EXISTS `aljabar` (
  `NIM` varchar(20) NOT NULL,
  `Nilai` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `aljabar`
--

INSERT INTO `aljabar` (`NIM`, `Nilai`) VALUES
('3411181070', 90);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mhs`
--

CREATE TABLE IF NOT EXISTS `mhs` (
  `NIM` varchar(20) NOT NULL,
  `NAMA` varchar(30) NOT NULL,
  `TTL` varchar(30) NOT NULL,
  `ANGKATAN` varchar(20) NOT NULL,
  `Kelas` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mhs`
--

INSERT INTO `mhs` (`NIM`, `NAMA`, `TTL`, `ANGKATAN`, `Kelas`) VALUES
('3411181060', 'Sendy Dzikri Ferdiansyah', 'Bandung,25 Mei 2000', '2018', 'B'),
('3411181070', 'Arizal', 'Jawa Tengah, 26 Juni 2019', '2018', 'E');

-- --------------------------------------------------------

--
-- Struktur dari tabel `po1`
--

CREATE TABLE IF NOT EXISTS `po1` (
  `NIM` varchar(20) NOT NULL,
  `Nilai` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `po1`
--

INSERT INTO `po1` (`NIM`, `Nilai`) VALUES
('3411181060', 100);

-- --------------------------------------------------------

--
-- Struktur dari tabel `statistika`
--

CREATE TABLE IF NOT EXISTS `statistika` (
  `NIM` varchar(20) NOT NULL,
  `Nilai` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `statistika`
--

INSERT INTO `statistika` (`NIM`, `Nilai`) VALUES
('3411181060', 90);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id_user` char(5) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`) VALUES
('US123', 'admin', 'admin111');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aljabar`
--
ALTER TABLE `aljabar`
  ADD KEY `NIM` (`NIM`);

--
-- Indexes for table `mhs`
--
ALTER TABLE `mhs`
  ADD PRIMARY KEY (`NIM`), ADD KEY `NIM` (`NIM`);

--
-- Indexes for table `po1`
--
ALTER TABLE `po1`
  ADD KEY `NIM` (`NIM`);

--
-- Indexes for table `statistika`
--
ALTER TABLE `statistika`
  ADD KEY `NIM` (`NIM`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `aljabar`
--
ALTER TABLE `aljabar`
ADD CONSTRAINT `aljabar_ibfk_1` FOREIGN KEY (`NIM`) REFERENCES `mhs` (`NIM`);

--
-- Ketidakleluasaan untuk tabel `po1`
--
ALTER TABLE `po1`
ADD CONSTRAINT `po1_ibfk_1` FOREIGN KEY (`NIM`) REFERENCES `mhs` (`NIM`);

--
-- Ketidakleluasaan untuk tabel `statistika`
--
ALTER TABLE `statistika`
ADD CONSTRAINT `statistika_ibfk_1` FOREIGN KEY (`NIM`) REFERENCES `mhs` (`NIM`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
