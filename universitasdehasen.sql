-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Nov 2023 pada 07.01
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `universitasdehasen`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `Id` int(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `nidn` varchar(12) NOT NULL,
  `mata_kuliah` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`Id`, `nama`, `nidn`, `mata_kuliah`) VALUES
(1, 'Abul Budi, S.Kom, M.Kom', '123456', 'Basis Data'),
(2, 'Ujang Mahmud, S.Kom, M.Kom', '1234567', 'Basis Data Terdistribusi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `user_name` varchar(10) NOT NULL,
  `pasword` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa_dehasen`
--

CREATE TABLE `mahasiswa_dehasen` (
  `Id` int(11) NOT NULL,
  `nama` varchar(40) NOT NULL,
  `nim` varchar(10) NOT NULL,
  `tempat_lahir` varchar(40) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `hp` varchar(15) NOT NULL,
  `email` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mahasiswa_dehasen`
--

INSERT INTO `mahasiswa_dehasen` (`Id`, `nama`, `nim`, `tempat_lahir`, `tanggal_lahir`, `hp`, `email`) VALUES
(1, 'Yepi Darwita', '21010014', 'Gelombang', '2023-07-20', '085273310891', 'yevi@gmail.com'),
(2, 'Arzan Tahari', '21010015', 'Gelombang', '2023-07-21', '085273310892', 'arzantahari46@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nidn`),
  ADD UNIQUE KEY `Id` (`Id`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user_name`),
  ADD UNIQUE KEY `pasword` (`pasword`);

--
-- Indeks untuk tabel `mahasiswa_dehasen`
--
ALTER TABLE `mahasiswa_dehasen`
  ADD PRIMARY KEY (`nim`),
  ADD UNIQUE KEY `Id` (`Id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `dosen`
--
ALTER TABLE `dosen`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `mahasiswa_dehasen`
--
ALTER TABLE `mahasiswa_dehasen`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `login`
--
ALTER TABLE `login`
  ADD CONSTRAINT `login_ibfk_1` FOREIGN KEY (`user_name`) REFERENCES `dosen` (`nidn`),
  ADD CONSTRAINT `login_ibfk_2` FOREIGN KEY (`user_name`) REFERENCES `mahasiswa_dehasen` (`nim`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
