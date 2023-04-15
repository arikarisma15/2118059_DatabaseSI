-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2023 at 05:35 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `siswisata`
--

-- --------------------------------------------------------

--
-- Table structure for table `data_nilaifasilitas`
--

CREATE TABLE `data_nilaifasilitas` (
  `ID_Fasilitas` int(7) NOT NULL,
  `ID_Wisata` int(7) NOT NULL,
  `Nilai_KriteriaFasilitas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_nilaikeamanan`
--

CREATE TABLE `data_nilaikeamanan` (
  `ID_Keamanan` int(7) NOT NULL,
  `ID_Wisata` int(7) NOT NULL,
  `Nilai_KriteriaKeamanan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_nilailokasi`
--

CREATE TABLE `data_nilailokasi` (
  `ID_Lokasi` int(7) NOT NULL,
  `ID_Wisata` int(7) NOT NULL,
  `Nilai_KriteriaLokasi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_nilaiobjekatraksi`
--

CREATE TABLE `data_nilaiobjekatraksi` (
  `ID_ObjekAtraksi` int(7) NOT NULL,
  `ID_Wisata` int(7) NOT NULL,
  `Nilai_KriteriaObjekAtraksi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_penilaian`
--

CREATE TABLE `data_penilaian` (
  `ID_Penilaian` int(7) NOT NULL,
  `ID_Wisata` int(7) NOT NULL,
  `ID_Lokasi` int(7) NOT NULL,
  `ID_Fasilitas` int(7) NOT NULL,
  `ID_Keamanan` int(7) NOT NULL,
  `ID_ObjekAtraksi` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_perangkingan`
--

CREATE TABLE `data_perangkingan` (
  `ID_Rangking` int(7) NOT NULL,
  `ID_Wisata` int(7) NOT NULL,
  `Nilai_Vektor_S` int(11) NOT NULL,
  `Nilai_Vektor_V` int(11) NOT NULL,
  `Rangkiing` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_perubahannilai`
--

CREATE TABLE `data_perubahannilai` (
  `ID_PerubahanNilai` int(7) NOT NULL,
  `ID_Wisata` int(7) NOT NULL,
  `Bobot_NilaiLokasi` int(7) NOT NULL,
  `Bobot_NilaiFasilitas` int(7) NOT NULL,
  `Bobot_NilaiKeamanan` int(7) NOT NULL,
  `Bobot_NilaiObjekAtraksi` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_wisata`
--

CREATE TABLE `data_wisata` (
  `ID_Wista` int(7) NOT NULL,
  `Nama_Wista` varchar(25) NOT NULL,
  `Lokasi` varchar(25) NOT NULL,
  `Harga_Tiket` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `keterangan_nilai`
--

CREATE TABLE `keterangan_nilai` (
  `ID_Keterangan` int(7) NOT NULL,
  `Keteranan_Nilai` varchar(15) NOT NULL,
  `Range_Nilai` varchar(7) NOT NULL,
  `Bobot_Nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skala_penilaian`
--

CREATE TABLE `skala_penilaian` (
  `ID_SkalaPenilaian` int(11) NOT NULL,
  `Jenis_Kriteria` varchar(25) NOT NULL,
  `Bobot_Penilaian` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data_nilaifasilitas`
--
ALTER TABLE `data_nilaifasilitas`
  ADD PRIMARY KEY (`ID_Fasilitas`),
  ADD KEY `ID_Wisata` (`ID_Wisata`);

--
-- Indexes for table `data_nilaikeamanan`
--
ALTER TABLE `data_nilaikeamanan`
  ADD PRIMARY KEY (`ID_Keamanan`),
  ADD KEY `ID_Wisata` (`ID_Wisata`);

--
-- Indexes for table `data_nilailokasi`
--
ALTER TABLE `data_nilailokasi`
  ADD PRIMARY KEY (`ID_Lokasi`),
  ADD KEY `ID_Wisata` (`ID_Wisata`);

--
-- Indexes for table `data_nilaiobjekatraksi`
--
ALTER TABLE `data_nilaiobjekatraksi`
  ADD PRIMARY KEY (`ID_ObjekAtraksi`),
  ADD KEY `ID_Wisata` (`ID_Wisata`);

--
-- Indexes for table `data_penilaian`
--
ALTER TABLE `data_penilaian`
  ADD PRIMARY KEY (`ID_Penilaian`),
  ADD KEY `ID_Wisata` (`ID_Wisata`),
  ADD KEY `ID_Lokasi` (`ID_Lokasi`),
  ADD KEY `ID_Fasilitas` (`ID_Fasilitas`),
  ADD KEY `ID_Keamanan` (`ID_Keamanan`),
  ADD KEY `ID_ObjekAtraksi` (`ID_ObjekAtraksi`);

--
-- Indexes for table `data_perangkingan`
--
ALTER TABLE `data_perangkingan`
  ADD PRIMARY KEY (`ID_Rangking`),
  ADD KEY `ID_Wisata` (`ID_Wisata`);

--
-- Indexes for table `data_perubahannilai`
--
ALTER TABLE `data_perubahannilai`
  ADD PRIMARY KEY (`ID_PerubahanNilai`),
  ADD KEY `ID_Wisata` (`ID_Wisata`),
  ADD KEY `ID_Wisata_2` (`ID_Wisata`);

--
-- Indexes for table `data_wisata`
--
ALTER TABLE `data_wisata`
  ADD PRIMARY KEY (`ID_Wista`);

--
-- Indexes for table `keterangan_nilai`
--
ALTER TABLE `keterangan_nilai`
  ADD PRIMARY KEY (`ID_Keterangan`);

--
-- Indexes for table `skala_penilaian`
--
ALTER TABLE `skala_penilaian`
  ADD PRIMARY KEY (`ID_SkalaPenilaian`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_nilaifasilitas`
--
ALTER TABLE `data_nilaifasilitas`
  MODIFY `ID_Fasilitas` int(7) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_nilaikeamanan`
--
ALTER TABLE `data_nilaikeamanan`
  MODIFY `ID_Keamanan` int(7) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_nilailokasi`
--
ALTER TABLE `data_nilailokasi`
  MODIFY `ID_Lokasi` int(7) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_nilaiobjekatraksi`
--
ALTER TABLE `data_nilaiobjekatraksi`
  MODIFY `ID_ObjekAtraksi` int(7) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_penilaian`
--
ALTER TABLE `data_penilaian`
  MODIFY `ID_Penilaian` int(7) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_perangkingan`
--
ALTER TABLE `data_perangkingan`
  MODIFY `ID_Rangking` int(7) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_perubahannilai`
--
ALTER TABLE `data_perubahannilai`
  MODIFY `ID_PerubahanNilai` int(7) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_wisata`
--
ALTER TABLE `data_wisata`
  MODIFY `ID_Wista` int(7) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `keterangan_nilai`
--
ALTER TABLE `keterangan_nilai`
  MODIFY `ID_Keterangan` int(7) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `skala_penilaian`
--
ALTER TABLE `skala_penilaian`
  MODIFY `ID_SkalaPenilaian` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_nilaifasilitas`
--
ALTER TABLE `data_nilaifasilitas`
  ADD CONSTRAINT `data_nilaifasilitas_ibfk_1` FOREIGN KEY (`ID_Wisata`) REFERENCES `data_wisata` (`ID_Wista`);

--
-- Constraints for table `data_nilaikeamanan`
--
ALTER TABLE `data_nilaikeamanan`
  ADD CONSTRAINT `data_nilaikeamanan_ibfk_1` FOREIGN KEY (`ID_Wisata`) REFERENCES `data_wisata` (`ID_Wista`);

--
-- Constraints for table `data_nilailokasi`
--
ALTER TABLE `data_nilailokasi`
  ADD CONSTRAINT `data_nilailokasi_ibfk_1` FOREIGN KEY (`ID_Wisata`) REFERENCES `data_wisata` (`ID_Wista`);

--
-- Constraints for table `data_nilaiobjekatraksi`
--
ALTER TABLE `data_nilaiobjekatraksi`
  ADD CONSTRAINT `data_nilaiobjekatraksi_ibfk_1` FOREIGN KEY (`ID_Wisata`) REFERENCES `data_wisata` (`ID_Wista`);

--
-- Constraints for table `data_penilaian`
--
ALTER TABLE `data_penilaian`
  ADD CONSTRAINT `data_penilaian_ibfk_1` FOREIGN KEY (`ID_Wisata`) REFERENCES `data_wisata` (`ID_Wista`),
  ADD CONSTRAINT `data_penilaian_ibfk_2` FOREIGN KEY (`ID_Lokasi`) REFERENCES `data_nilailokasi` (`ID_Lokasi`),
  ADD CONSTRAINT `data_penilaian_ibfk_3` FOREIGN KEY (`ID_Fasilitas`) REFERENCES `data_nilaifasilitas` (`ID_Fasilitas`),
  ADD CONSTRAINT `data_penilaian_ibfk_4` FOREIGN KEY (`ID_Keamanan`) REFERENCES `data_nilaikeamanan` (`ID_Keamanan`),
  ADD CONSTRAINT `data_penilaian_ibfk_5` FOREIGN KEY (`ID_ObjekAtraksi`) REFERENCES `data_nilaiobjekatraksi` (`ID_ObjekAtraksi`);

--
-- Constraints for table `data_perangkingan`
--
ALTER TABLE `data_perangkingan`
  ADD CONSTRAINT `data_perangkingan_ibfk_1` FOREIGN KEY (`ID_Wisata`) REFERENCES `data_wisata` (`ID_Wista`);

--
-- Constraints for table `data_perubahannilai`
--
ALTER TABLE `data_perubahannilai`
  ADD CONSTRAINT `data_perubahannilai_ibfk_1` FOREIGN KEY (`ID_Wisata`) REFERENCES `data_wisata` (`ID_Wista`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
