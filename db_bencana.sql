-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2024 at 03:30 PM
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
-- Database: `db_bencana`
--

-- --------------------------------------------------------

--
-- Table structure for table `bencana`
--

CREATE TABLE `bencana` (
  `id_bencana` int(11) NOT NULL,
  `nama_bencana` varchar(100) DEFAULT NULL,
  `jenis_bencana` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `kronologi` text DEFAULT NULL,
  `waktu_kejadian` datetime DEFAULT NULL,
  `lokasi_kejadian` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bencana`
--

INSERT INTO `bencana` (`id_bencana`, `nama_bencana`, `jenis_bencana`, `status`, `kronologi`, `waktu_kejadian`, `lokasi_kejadian`) VALUES
(1, 'Gempa Bumi Sumatra', 'Gempa Bumi', 'Selesai', 'Gempa berkekuatan 6.5 SR melanda wilayah Sumatra.', '2023-02-15 14:23:00', 'Padang, Sumatra Barat'),
(2, 'Banjir Jakarta', 'Banjir', 'Berlangsung', 'Hujan deras selama tiga hari menyebabkan banjir di Jakarta.', '2023-12-10 08:00:00', 'Jakarta'),
(3, 'Gunung Meletus Merapi', 'Letusan Gunung', 'Selesai', 'Gunung Merapi mengalami letusan besar pada malam hari.', '2023-03-20 21:45:00', 'Sleman, Yogyakarta'),
(4, 'Tsunami Aceh', 'Tsunami', 'Selesai', 'Tsunami besar melanda pesisir Aceh akibat gempa bumi.', '2004-12-26 08:00:00', 'Banda Aceh'),
(5, 'Kebakaran Hutan Kalimantan', 'Kebakaran Hutan', 'Berlangsung', 'Kebakaran hutan meluas akibat musim kemarau panjang.', '2024-07-12 10:30:00', 'Palangkaraya, Kalimantan Tengah'),
(6, 'Angin Puting Beliung', 'Angin Kencang', 'Selesai', 'Angin puting beliung menghancurkan beberapa rumah.', '2024-01-05 15:00:00', 'Garut, Jawa Barat'),
(7, 'Banjir Bandang Manado', 'Banjir Bandang', 'Selesai', 'Banjir bandang akibat hujan deras.', '2023-11-25 07:00:00', 'Manado, Sulawesi Utara'),
(8, 'Gempa Lombok', 'Gempa Bumi', 'Selesai', 'Gempa bumi merusak ratusan rumah di Lombok.', '2018-08-05 19:46:00', 'Lombok, Nusa Tenggara Barat'),
(9, 'Letusan Krakatau', 'Letusan Gunung', 'Selesai', 'Gunung Anak Krakatau meletus.', '2018-12-22 20:30:00', 'Selat Sunda'),
(10, 'Tanah Longsor Bandung', 'Tanah Longsor', 'Berlangsung', 'Hujan deras menyebabkan tanah longsor di daerah pegunungan.', '2024-03-10 09:15:00', 'Bandung, Jawa Barat'),
(11, 'Gempa Mentawai', 'Gempa Bumi', 'Berlangsung', 'Gempa susulan terus terjadi setelah gempa besar.', '2024-11-12 18:00:00', 'Mentawai, Sumatra Barat'),
(12, 'Erupsi Semeru', 'Letusan Gunung', 'Selesai', 'Erupsi Gunung Semeru menyebabkan abu vulkanik menyebar luas.', '2022-12-04 16:30:00', 'Lumajang, Jawa Timur'),
(13, 'Banjir Palembang', 'Banjir', 'Selesai', 'Banjir akibat meluapnya Sungai Musi.', '2023-01-18 13:00:00', 'Palembang, Sumatra Selatan'),
(14, 'Topan Tropis Seroja', 'Angin Kencang', 'Selesai', 'Topan Seroja melanda wilayah NTT.', '2021-04-05 02:00:00', 'Kupang, Nusa Tenggara Timur'),
(15, 'Kebakaran Hutan Riau', 'Kebakaran Hutan', 'Selesai', 'Kabut asap akibat kebakaran hutan.', '2019-09-10 12:00:00', 'Pekanbaru, Riau'),
(16, 'Gempa Bali', 'Gempa Bumi', 'Berlangsung', 'Gempa tektonik mengguncang Bali.', '2024-09-18 06:45:00', 'Denpasar, Bali'),
(17, 'Tsunami Palu', 'Tsunami', 'Selesai', 'Tsunami melanda Palu setelah gempa.', '2018-09-28 18:02:00', 'Palu, Sulawesi Tengah'),
(18, 'Tanah Longsor Wonosobo', 'Tanah Longsor', 'Selesai', 'Tanah longsor menutup jalan utama.', '2023-05-14 14:00:00', 'Wonosobo, Jawa Tengah'),
(19, 'Gempa Maluku', 'Gempa Bumi', 'Selesai', 'Gempa bumi mengguncang wilayah Maluku.', '2023-06-08 10:30:00', 'Ambon, Maluku'),
(20, 'Banjir Bengkulu', 'Banjir', 'Selesai', 'Banjir besar melanda Bengkulu.', '2024-10-21 09:30:00', 'Bengkulu'),
(21, 'Letusan Sinabung', 'Letusan Gunung', 'Berlangsung', 'Gunung Sinabung terus aktif.', '2024-11-05 08:15:00', 'Karo, Sumatra Utara'),
(22, 'Badai Tropis Kalimantan', 'Angin Kencang', 'Berlangsung', 'Badai tropis menyebabkan kerusakan.', '2024-08-30 20:45:00', 'Balikpapan, Kalimantan Timur'),
(23, 'Gempa Flores', 'Gempa Bumi', 'Selesai', 'Gempa bumi besar di wilayah Flores.', '2024-07-22 07:25:00', 'Maumere, Nusa Tenggara Timur'),
(24, 'Banjir Pekalongan', 'Banjir', 'Berlangsung', 'Banjir rob akibat pasang laut tinggi.', '2023-10-10 16:00:00', 'Pekalongan, Jawa Tengah'),
(25, 'Kebakaran Hutan Sumatra', 'Kebakaran Hutan', 'Berlangsung', 'Kebakaran hutan meluas di Sumatra.', '2024-06-15 11:30:00', 'Jambi, Sumatra');

-- --------------------------------------------------------

--
-- Table structure for table `bertugas`
--

CREATE TABLE `bertugas` (
  `id_petugas` int(11) NOT NULL,
  `id_posko` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bertugas`
--

INSERT INTO `bertugas` (`id_petugas`, `id_posko`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 16),
(17, 17),
(18, 18),
(19, 19),
(20, 20),
(21, 21),
(22, 22),
(23, 23),
(24, 24),
(25, 25);

-- --------------------------------------------------------

--
-- Table structure for table `keluarga`
--

CREATE TABLE `keluarga` (
  `NIK` varchar(20) NOT NULL,
  `nomor_telepon` varchar(15) DEFAULT NULL,
  `hubungan` varchar(50) DEFAULT NULL,
  `nik_keluarga` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `keluarga`
--

INSERT INTO `keluarga` (`NIK`, `nomor_telepon`, `hubungan`, `nik_keluarga`) VALUES
('3172010101010001', '081234567890', 'Ayah', '3172010101010002'),
('3172010101010002', '081234567891', 'Ibu', '3172010101010001'),
('3172010101010003', '081234567892', 'Anak', '3172010101010001'),
('3172010101010004', '081234567893', 'Anak', '3172010101010001'),
('3172010101010005', '081234567894', 'Kakek', '3172010101010001'),
('3172010101010006', '081234567895', 'Nenek', '3172010101010001'),
('3172010101010007', '081234567896', 'Paman', '3172010101010001'),
('3172010101010008', '081234567897', 'Bibi', '3172010101010007'),
('3172010101010009', '081234567898', 'Sepupu', '3172010101010007'),
('3172010101010010', '081234567899', 'Keponakan', '3172010101010008'),
('3172010202020001', '081345678900', 'Ayah', '3172010202020002'),
('3172010202020002', '081345678901', 'Ibu', '3172010202020001'),
('3172010202020003', '081345678902', 'Anak', '3172010202020001'),
('3172010202020004', '081345678903', 'Anak', '3172010202020001'),
('3172010202020005', '081345678904', 'Kakek', '3172010202020001'),
('3172010202020006', '081345678905', 'Nenek', '3172010202020002'),
('3172010202020007', '081345678906', 'Paman', '3172010202020001'),
('3172010202020008', '081345678907', 'Bibi', '3172010202020007'),
('3172010202020009', '081345678908', 'Sepupu', '3172010202020007'),
('3172010202020010', '081345678909', 'Keponakan', '3172010202020008'),
('3172010303030001', '081456789900', 'Ayah', '3172010303030002'),
('3172010303030002', '081456789901', 'Ibu', '3172010303030001'),
('3172010303030003', '081456789902', 'Anak', '3172010303030001'),
('3172010303030004', '081456789903', 'Anak', '3172010303030001'),
('3172010303030005', '081456789904', 'Kakek', '3172010303030001'),
('3172010303030006', '081456789905', 'Nenek', '3172010303030002'),
('3172010303030007', '081456789906', 'Paman', '3172010303030001'),
('3172010303030008', '081456789907', 'Bibi', '3172010303030007'),
('3172010303030009', '081456789908', 'Sepupu', '3172010303030007'),
('3172010303030010', '081456789909', 'Keponakan', '3172010303030008'),
('3172010404040001', '081567890900', 'Ayah', '3172010404040002'),
('3172010404040002', '081567890901', 'Ibu', '3172010404040001'),
('3172010404040003', '081567890902', 'Anak', '3172010404040001'),
('3172010404040004', '081567890903', 'Anak', '3172010404040001'),
('3172010404040005', '081567890904', 'Kakek', '3172010404040001'),
('3172010404040006', '081567890905', 'Nenek', '3172010404040002'),
('3172010404040007', '081567890906', 'Paman', '3172010404040001'),
('3172010404040008', '081567890907', 'Bibi', '3172010404040007'),
('3172010404040009', '081567890908', 'Sepupu', '3172010404040007'),
('3172010404040010', '081567890909', 'Keponakan', '3172010404040008'),
('3172010505050001', '081678901900', 'Ayah', '3172010505050002'),
('3172010505050002', '081678901901', 'Ibu', '3172010505050001'),
('3172010505050003', '081678901902', 'Anak', '3172010505050001'),
('3172010505050004', '081678901903', 'Anak', '3172010505050001'),
('3172010505050005', '081678901904', 'Kakek', '3172010505050001'),
('3172010505050006', '081678901905', 'Nenek', '3172010505050002'),
('3172010505050007', '081678901906', 'Paman', '3172010505050001'),
('3172010505050008', '081678901907', 'Bibi', '3172010505050007'),
('3172010505050009', '081678901908', 'Sepupu', '3172010505050007'),
('3172010505050010', '081678901909', 'Keponakan', '3172010505050008'),
('3172010606060001', '081789012900', 'Ayah', '3172010606060002'),
('3172010606060002', '081789012901', 'Ibu', '3172010606060001'),
('3172010606060003', '081789012902', 'Anak', '3172010606060001'),
('3172010606060004', '081789012903', 'Anak', '3172010606060001'),
('3172010606060005', '081789012904', 'Kakek', '3172010606060001'),
('3172010707070001', '081890123900', 'Ayah', '3172010707070002'),
('3172010707070002', '081890123901', 'Ibu', '3172010707070001'),
('3172010707070003', '081890123902', 'Anak', '3172010707070001'),
('3172010707070004', '081890123903', 'Sepupu', '3172010707070003'),
('3172010707070005', '081890123904', 'Paman', '3172010707070001'),
('3172010808080001', '081901234900', 'Ayah', '3172010808080002'),
('3172010808080002', '081901234901', 'Ibu', '3172010808080001'),
('3172010808080003', '081901234902', 'Anak', '3172010808080001'),
('3172010808080004', '081901234903', 'Keponakan', '3172010808080001'),
('3172010808080005', '081901234904', 'Nenek', '3172010808080002'),
('3172010909090001', '081012345900', 'Ayah', '3172010909090002'),
('3172010909090002', '081012345901', 'Ibu', '3172010909090001'),
('3172010909090003', '081012345902', 'Anak', '3172010909090001'),
('3172010909090004', '081012345903', 'Paman', '3172010909090001'),
('3172010909090005', '081012345904', 'Sepupu', '3172010909090003'),
('3172011001010001', '081123456900', 'Ayah', '3172011001010002'),
('3172011001010002', '081123456901', 'Ibu', '3172011001010001'),
('3172011001010003', '081123456902', 'Anak', '3172011001010001'),
('3172011001010004', '081123456903', 'Kakek', '3172011001010001'),
('3172011001010005', '081123456904', 'Nenek', '3172011001010002'),
('3172011102020001', '081234567900', 'Ayah', '3172011102020002'),
('3172011102020002', '081234567901', 'Ibu', '3172011102020001'),
('3172011102020003', '081234567902', 'Anak', '3172011102020001'),
('3172011102020004', '081234567903', 'Anak', '3172011102020001'),
('3172011102020005', '081234567904', 'Sepupu', '3172011102020003');

-- --------------------------------------------------------

--
-- Table structure for table `korban`
--

CREATE TABLE `korban` (
  `id_korban` int(11) NOT NULL,
  `NIK` varchar(20) DEFAULT NULL,
  `id_bencana` int(11) DEFAULT NULL,
  `jenis_kelamin` varchar(10) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `asal` varchar(100) DEFAULT NULL,
  `usia` int(11) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `id_posko` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `korban`
--

INSERT INTO `korban` (`id_korban`, `NIK`, `id_bencana`, `jenis_kelamin`, `nama`, `asal`, `usia`, `status`, `id_posko`) VALUES
(1, '3172010101010001', 1, 'Laki-laki', 'Budi Setiawan', 'Padang', 45, 'Hidup', 1),
(2, '3172010101010002', 1, 'Perempuan', 'Siti Aminah', 'Padang', 42, 'Hidup', 1),
(3, '3172010101010003', 1, 'Laki-laki', 'Adi Saputra', 'Padang', 17, 'Hidup', 1),
(4, '3172010101010004', 1, 'Perempuan', 'Rina Lestari', 'Padang', 14, 'Hidup', 1),
(5, '3172010101010005', 1, 'Laki-laki', 'Rahmat Hidayat', 'Padang', 70, 'Hidup', 2),
(6, '3172010202020001', 2, 'Laki-laki', 'Ahmad Fauzi', 'Jakarta', 50, 'Hidup', 3),
(7, '3172010202020002', 2, 'Perempuan', 'Nurhayati', 'Jakarta', 48, 'Hidup', 3),
(8, '3172010202020003', 2, 'Laki-laki', 'Bagas Pratama', 'Jakarta', 20, 'Hidup', 3),
(9, '3172010202020004', 2, 'Perempuan', 'Citra Dewi', 'Jakarta', 18, 'Hidup', 3),
(10, '3172010202020005', 2, 'Laki-laki', 'Sugeng Riyadi', 'Jakarta', 75, 'Hidup', 4),
(11, '3172010303030001', 3, 'Laki-laki', 'Heri Santoso', 'Sleman', 55, 'Hidup', 5),
(12, '3172010303030002', 3, 'Perempuan', 'Sri Wahyuni', 'Sleman', 50, 'Hidup', 5),
(13, '3172010303030003', 3, 'Laki-laki', 'Rizky Maulana', 'Sleman', 22, 'Hidup', 5),
(14, '3172010303030004', 3, 'Perempuan', 'Andini Pratiwi', 'Sleman', 19, 'Hidup', 6),
(15, '3172010303030005', 3, 'Laki-laki', 'Mulyadi', 'Sleman', 73, 'Hidup', 6),
(16, '3172010404040001', 4, 'Laki-laki', 'Ismail', 'Banda Aceh', 60, 'Hidup', 7),
(17, '3172010404040002', 4, 'Perempuan', 'Fatimah', 'Banda Aceh', 57, 'Hidup', 7),
(18, '3172010404040003', 4, 'Laki-laki', 'Zulkifli', 'Banda Aceh', 25, 'Hidup', 7),
(19, '3172010404040004', 4, 'Perempuan', 'Salsabila', 'Banda Aceh', 22, 'Hidup', 7),
(20, '3172010404040005', 4, 'Laki-laki', 'Tarmizi', 'Banda Aceh', 80, 'Hidup', 8),
(21, '3172010505050001', 5, 'Laki-laki', 'Rudi Hartono', 'Palangkaraya', 40, 'Hidup', 9),
(22, '3172010505050002', 5, 'Perempuan', 'Lina', 'Palangkaraya', 38, 'Hidup', 9),
(23, '3172010505050003', 5, 'Laki-laki', 'Bayu Saputra', 'Palangkaraya', 18, 'Hidup', 9),
(24, '3172010505050004', 5, 'Perempuan', 'Dewi Anggraini', 'Palangkaraya', 16, 'Hidup', 9),
(25, '3172010505050005', 5, 'Laki-laki', 'Suwandi', 'Palangkaraya', 68, 'Hidup', 10);

-- --------------------------------------------------------

--
-- Table structure for table `menangani`
--

CREATE TABLE `menangani` (
  `id_petugas` int(11) NOT NULL,
  `id_bencana` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menangani`
--

INSERT INTO `menangani` (`id_petugas`, `id_bencana`) VALUES
(1, 2),
(2, 13),
(3, 1),
(4, 4),
(5, 3),
(6, 10),
(7, 5),
(8, 16),
(9, 19),
(10, 17),
(11, 12),
(12, 7),
(13, 15),
(14, 21),
(15, 20),
(16, 21),
(17, 11),
(18, 24),
(19, 25),
(20, 24),
(21, 14),
(22, 23),
(23, 22),
(24, 8),
(25, 9);

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(11) NOT NULL,
  `nama_petugas` varchar(100) DEFAULT NULL,
  `kontak_petugas` varchar(15) DEFAULT NULL,
  `instansi` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `kontak_petugas`, `instansi`) VALUES
(1, 'Andi Wijaya', '081234567890', 'BPBD Jakarta'),
(2, 'Budi Santoso', '081298765432', 'BNPB'),
(3, 'Citra Lestari', '081312345678', 'Palang Merah Indonesia'),
(4, 'Dewi Kurnia', '081456789012', 'Dinas Sosial'),
(5, 'Eka Pratama', '081567890123', 'TNI'),
(6, 'Fahmi Hakim', '081678901234', 'Polri'),
(7, 'Gina Marini', '081789012345', 'Relawan Mandiri'),
(8, 'Hendra Saputra', '081890123456', 'BPBD Sumatra Barat'),
(9, 'Indra Wijaya', '081901234567', 'Basarnas'),
(10, 'Joko Susilo', '081023456789', 'BNPB'),
(11, 'Kartika Sari', '081134567890', 'Palang Merah Indonesia'),
(12, 'Lukman Hakim', '081245678901', 'Dinas Sosial'),
(13, 'Maya Puspita', '081356789012', 'Relawan Mandiri'),
(14, 'Nina Kurnia', '081467890123', 'BPBD Jawa Timur'),
(15, 'Oscar Pratama', '081578901234', 'Basarnas'),
(16, 'Putri Ayu', '081689012345', 'Palang Merah Indonesia'),
(17, 'Qori Hasan', '081790123456', 'Dinas Sosial'),
(18, 'Rina Amelia', '081801234567', 'TNI'),
(19, 'Surya Dharma', '081912345678', 'BNPB'),
(20, 'Tasya Rahma', '081023456780', 'BPBD Kalimantan'),
(21, 'Umar Bakri', '081134567891', 'Relawan Mandiri'),
(22, 'Vina Melati', '081245678902', 'Basarnas'),
(23, 'Wawan Setiawan', '081356789023', 'Palang Merah Indonesia'),
(24, 'Yuni Lestari', '081467890134', 'Dinas Sosial'),
(25, 'Zainal Arifin', '081578901245', 'BPBD Bali');

-- --------------------------------------------------------

--
-- Table structure for table `posko`
--

CREATE TABLE `posko` (
  `id_posko` int(11) NOT NULL,
  `nama_posko` varchar(100) DEFAULT NULL,
  `penanggung_jawab` varchar(100) DEFAULT NULL,
  `lokasi_posko` varchar(255) DEFAULT NULL,
  `kontak_posko` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posko`
--

INSERT INTO `posko` (`id_posko`, `nama_posko`, `penanggung_jawab`, `lokasi_posko`, `kontak_posko`) VALUES
(1, 'Posko Bencana Jakarta', 'Andi Wijaya', 'Jl. Sudirman No. 25, Jakarta', '0211234567'),
(2, 'Posko Bencana Surabaya', 'Budi Santoso', 'Jl. Basuki Rahmat No. 15, Surabaya', '0317654321'),
(3, 'Posko Bantuan Padang', 'Citra Lestari', 'Jl. Mangkubumi No. 10, Padang', '0751234567'),
(4, 'Posko Evakuasi Aceh', 'Dewi Kurnia', 'Jl. Teuku Umar No. 5, Banda Aceh', '0651234567'),
(5, 'Posko Tanggap Jogja', 'Eka Pratama', 'Jl. Malioboro No. 20, Yogyakarta', '0274123456'),
(6, 'Posko Bencana Bandung', 'Fahmi Hakim', 'Jl. Dago No. 45, Bandung', '0225678901'),
(7, 'Posko Banjir Kalimantan', 'Gina Marini', 'Jl. Ahmad Yani No. 7, Palangkaraya', '0536123456'),
(8, 'Posko Gempa Bali', 'Hendra Saputra', 'Jl. Imam Bonjol No. 9, Denpasar', '0361123456'),
(9, 'Posko Evakuasi Maluku', 'Indra Wijaya', 'Jl. Pattimura No. 3, Ambon', '0912345678'),
(10, 'Posko Siaga Papua', 'Joko Susilo', 'Jl. Arfai No. 12, Jayapura', '0967234567'),
(11, 'Posko Erupsi Merapi', 'Kartika Sari', 'Jl. Kaliurang No. 30, Sleman', '0275123456'),
(12, 'Posko Banjir Manado', 'Lukman Hakim', 'Jl. Sam Ratulangi No. 15, Manado', '0431234567'),
(13, 'Posko Kebakaran Riau', 'Maya Puspita', 'Jl. Sudirman No. 18, Pekanbaru', '0761234567'),
(14, 'Posko Siaga Semeru', 'Nina Kurnia', 'Jl. Semeru No. 22, Lumajang', '0331234567'),
(15, 'Posko Bantuan Bengkulu', 'Oscar Pratama', 'Jl. Ahmad Dahlan No. 11, Bengkulu', '0736123456'),
(16, 'Posko Tanggap Sinabung', 'Putri Ayu', 'Jl. Kabanjahe No. 16, Karo', '0613456789'),
(17, 'Posko Gempa Mentawai', 'Qori Hasan', 'Jl. Sipora No. 8, Mentawai', '0756123456'),
(18, 'Posko Bantuan Palembang', 'Rina Amelia', 'Jl. Sultan Agung No. 19, Palembang', '0711234567'),
(19, 'Posko Kebakaran Jambi', 'Surya Dharma', 'Jl. Kapten A. No. 4, Jambi', '0741234567'),
(20, 'Posko Evakuasi Pekalongan', 'Tasya Rahma', 'Jl. Pahlawan No. 23, Pekalongan', '0285123456'),
(21, 'Posko Bantuan Kupang', 'Umar Bakri', 'Jl. El Tari No. 2, Kupang', '0380123456'),
(22, 'Posko Bencana Flores', 'Vina Melati', 'Jl. Sikka No. 14, Maumere', '0385123456'),
(23, 'Posko Siaga Makassar', 'Wawan Setiawan', 'Jl. Pettarani No. 6, Makassar', '0411234567'),
(24, 'Posko Gempa Lombok', 'Yuni Lestari', 'Jl. Cakranegara No. 21, Mataram', '0370123456'),
(25, 'Posko Kebakaran Bali', 'Zainal Arifin', 'Jl. Ubud No. 8, Gianyar', '0365234567');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bencana`
--
ALTER TABLE `bencana`
  ADD PRIMARY KEY (`id_bencana`);

--
-- Indexes for table `bertugas`
--
ALTER TABLE `bertugas`
  ADD PRIMARY KEY (`id_petugas`,`id_posko`),
  ADD KEY `id_posko` (`id_posko`);

--
-- Indexes for table `keluarga`
--
ALTER TABLE `keluarga`
  ADD PRIMARY KEY (`NIK`);

--
-- Indexes for table `korban`
--
ALTER TABLE `korban`
  ADD PRIMARY KEY (`id_korban`),
  ADD KEY `NIK` (`NIK`),
  ADD KEY `id_bencana` (`id_bencana`),
  ADD KEY `id_posko` (`id_posko`);

--
-- Indexes for table `menangani`
--
ALTER TABLE `menangani`
  ADD PRIMARY KEY (`id_petugas`,`id_bencana`),
  ADD KEY `id_bencana` (`id_bencana`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `posko`
--
ALTER TABLE `posko`
  ADD PRIMARY KEY (`id_posko`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bencana`
--
ALTER TABLE `bencana`
  MODIFY `id_bencana` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `korban`
--
ALTER TABLE `korban`
  MODIFY `id_korban` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `posko`
--
ALTER TABLE `posko`
  MODIFY `id_posko` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bertugas`
--
ALTER TABLE `bertugas`
  ADD CONSTRAINT `bertugas_ibfk_1` FOREIGN KEY (`id_petugas`) REFERENCES `petugas` (`id_petugas`),
  ADD CONSTRAINT `bertugas_ibfk_2` FOREIGN KEY (`id_posko`) REFERENCES `posko` (`id_posko`);

--
-- Constraints for table `korban`
--
ALTER TABLE `korban`
  ADD CONSTRAINT `korban_ibfk_1` FOREIGN KEY (`NIK`) REFERENCES `keluarga` (`NIK`),
  ADD CONSTRAINT `korban_ibfk_2` FOREIGN KEY (`id_bencana`) REFERENCES `bencana` (`id_bencana`),
  ADD CONSTRAINT `korban_ibfk_3` FOREIGN KEY (`id_posko`) REFERENCES `posko` (`id_posko`);

--
-- Constraints for table `menangani`
--
ALTER TABLE `menangani`
  ADD CONSTRAINT `menangani_ibfk_1` FOREIGN KEY (`id_petugas`) REFERENCES `petugas` (`id_petugas`),
  ADD CONSTRAINT `menangani_ibfk_2` FOREIGN KEY (`id_bencana`) REFERENCES `bencana` (`id_bencana`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
