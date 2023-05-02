-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2023 at 04:22 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: `db_ngulemind`
--

-- --------------------------------------------------------

--
-- Table structure for table `acara`
--

CREATE TABLE `acara` (
  `id_acara` int(11) NOT NULL,
  `nama_acara` varchar(50) NOT NULL,
  `tgl_acara` varchar(20) DEFAULT NULL,
  `waktu_mulai` varchar(10) NOT NULL,
  `waktu_akhir` varchar(10) NOT NULL,
  `tempat_acara` varchar(100) NOT NULL,
  `alamat_acara` text NOT NULL,
  `maps` text DEFAULT NULL,
  `set_countdown` enum('Y','N') DEFAULT 'N',
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `acara`
--

INSERT INTO `acara` (`id_acara`, `nama_acara`, `tgl_acara`, `waktu_mulai`, `waktu_akhir`, `tempat_acara`, `alamat_acara`, `maps`, `set_countdown`, `id_user`) VALUES
(185, 'Akad Nikah', '2022/12/14', '09:00', '10:00', 'Kediaman Mempelai Wanita', 'Jl. Medan Merdeka Utara No.3 RT.02/RW.03. Gambir, Jakarta Pusat.', '', 'N', 1),
(186, 'Resepsi', '2022/12/15', '10:00', '22:00', 'Kediaman Mempelai Wanita', 'Jl. Medan Merdeka Utara No.3 RT.02/RW.03. Gambir, Jakarta Pusat.', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.705836876672!2d106.82198811476884!3d-6.170129095532956!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f5d6aa94d477%3A0xebf3b9d252c86a26!2sMerdeka%20Palace!5e0!3m2!1sen!2sid!4v1595773648767!5m2!1sen!2sid\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', 'Y', 1),
(187, 'Unduh Mantu', '2022/12/31', '10:00', '22:00', 'Kediaman Mempelai Pria', 'Dukun RT 002 RW 002', '', 'N', 1),
(215, 'Akad Nikah', '2022/12/31', '19:00', '22:30', 'Polres Jakarta Selatan', 'Jl. Wijaya II No.42, RT.2/RW.1, Pulo, Kec. Kby. Baru, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12160', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15864.314047995536!2d106.7985438!3d-6.2533862!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x69d14ee329399fa5!2sPolres%20Metro%20Jakarta%20Selatan!5e0!3m2!1sid!2sid!4v1666191307006!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'N', 309),
(216, 'Resepsi Pernikahan', '2023/01/31', '19:00', '22:30', 'Polres Jakarta Selatan', 'Jl. Wijaya II No.42, RT.2/RW.1, Pulo, Kec. Kby. Baru, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta 12160', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15864.314047995536!2d106.7985438!3d-6.2533862!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x69d14ee329399fa5!2sPolres%20Metro%20Jakarta%20Selatan!5e0!3m2!1sid!2sid!4v1666191307006!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'N', 309);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `email`, `nama_lengkap`, `created_at`) VALUES
(1, 'admin', '25d55ad283aa400af464c76d713c07ad', 'admin@gmail.com', 'Kuat Nikah', '2020-08-27 04:38:43');

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `album` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id`, `id_user`, `album`) VALUES
(383, 1, 'album1'),
(384, 1, 'album2'),
(385, 1, 'album3'),
(386, 1, 'album4'),
(387, 1, 'album5'),
(388, 1, 'album6'),
(389, 1, 'album7'),
(390, 1, 'album8'),
(391, 1, 'album9'),
(392, 1, 'album10'),
(459, 309, 'album1'),
(460, 309, 'album2'),
(461, 309, 'album3'),
(462, 309, 'album4'),
(463, 309, 'album5'),
(464, 309, 'album6'),
(465, 309, 'album7'),
(466, 309, 'album8'),
(467, 309, 'album9'),
(468, 309, 'album10');

-- --------------------------------------------------------

--
-- Table structure for table `cerita`
--

CREATE TABLE `cerita` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal_cerita` varchar(50) NOT NULL,
  `judul_cerita` text NOT NULL,
  `isi_cerita` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cerita`
--

INSERT INTO `cerita` (`id`, `id_user`, `tanggal_cerita`, `judul_cerita`, `isi_cerita`, `created_at`, `updated_at`) VALUES
(281, 1, '14 Januari 2021', 'Pertama bertemu', 'Waktu Pertama Kali\nKulihat Dirimu Hadir\nRasa hati ini inginkan dirimu ', '2022-03-30 03:55:22', '2022-03-30 12:06:49'),
(282, 1, '15 Maret 2021', 'Jatuh Cinta', 'Hati tenang mendengar \nsuara indah menyapa\nGeloranya hati ini\nTak ku sangka..', '2022-03-30 03:55:22', '2022-03-30 12:07:46'),
(283, 1, '1 Mei 2021', 'Ta\'aruf', 'Rasa ini.. tak tertahan..\nHati ini..slalu untukmu..', '2022-03-30 03:55:22', '2022-03-30 12:08:10'),
(284, 1, '16 Mei 2021', 'Khitbah', 'Terimalah lagu ini dari orang biasa\nTapi cintaku padamu luar biasa\nAku tak punya bunga\nAku tak punya harta\nYang ku punya hanyalah\nHati yang setia.. Tulus.. Padamu.. :)', '2022-03-30 03:55:22', '2022-03-30 12:08:47'),
(285, 1, '19 Desember', 'Pertemuan Antar Keluarga Besar', 'Membicarakan Tanggal dan Waktu Pernikahan', '2022-03-30 03:55:22', '2022-03-30 10:55:22'),
(287, 309, '14 Februari 2020', 'Bertemu Pertama', 'Kisah Cinta yang berakhir di Penjara', '2022-10-19 15:01:48', '2022-10-19 22:01:48'),
(288, 309, '14 Februari 2021', 'Ta\'ruf', 'Kisah Cinta yang berakhir KDRT', '2022-10-19 15:01:48', '2022-10-19 22:01:48');

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `foto_pria` varchar(50) NOT NULL DEFAULT '0',
  `foto_wanita` varchar(50) NOT NULL DEFAULT '0',
  `maps` longtext DEFAULT NULL,
  `video` varchar(100) NOT NULL,
  `kunci` varchar(100) NOT NULL,
  `salam_pembuka` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_wa` varchar(255) DEFAULT NULL,
  `nomorhp` varchar(255) DEFAULT NULL,
  `salam_wa_atas` text NOT NULL,
  `salam_wa_bawah` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `id_user`, `foto_pria`, `foto_wanita`, `maps`, `video`, `kunci`, `salam_pembuka`, `token_wa`, `nomorhp`, `salam_wa_atas`, `salam_wa_bawah`, `created_at`, `updated_at`) VALUES
(1, 1, '1', '1', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3966.705836876672!2d106.82198811476884!3d-6.170129095532956!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e69f5d6aa94d477%3A0xebf3b9d252c86a26!2sMerdeka%20Palace!5e0!3m2!1sen!2sid!4v1595773648767!5m2!1sen!2sid\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>', 'https://youtu.be/PjHqsdT8pJQ', 'mIjh78y8ge13b89d99c1a29132e57d2ca', ' السَّلاَمُ عَلَيْكُمْ وَرَحْمَةُ اللهِ وَبَرَكَاتُهُ\n\nDengan memohon Rahmat dan Ridho Allah SWT, Kami akan menyelenggarakan resepsi pernikahan Putra-Putri kami :	', '17112195af932ee567e92b3496f338aa5f97b36acnk', '6289667771377', 'Assalamualaikum Wr Wb\nDengan segala kerendahan hati dan syukur atas Karunia Allah SWT\nKami bermaksud mengundang Bapak/Ibu/Saudara(i) pada acara pernikahan kami.', 'Merupakan suatu kebahagiaan bagi Kami apabila Bapak/Ibu/Saudara(i) berkenan hadir untuk memberikan doa restu kepada kami.\nAtas kehadiran dan doa restunya kami ucapkan terimakasih \n\nWassalamualaikum Wr Wb', '2020-07-26 14:16:43', '2022-09-04 03:05:35'),
(8, 309, '1', '1', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15864.314047995536!2d106.7985438!3d-6.2533862!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x69d14ee329399fa5!2sPolres%20Metro%20Jakarta%20Selatan!5e0!3m2!1sid!2sid!4v1666191307006!5m2!1sid!2sid\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', '', '97f6f488ea2e5e0e9e048f0e3002a422', 'Assalamu\'alaikum Warahmatullahi Wabarakatuh.\n\nDengan memohon Rahmat dan Ridho Allah SWT, Kami akan menyelenggarakan resepsi pernikahan Putra-Putri kami :', NULL, NULL, 'Assalamualaikum Wr Wb.\nDengan segala kerendahan hati dan syukur atas Karunia Allah SWT.\nKami bermaksud mengundang Bapak/Ibu/Saudara(i) pada acara pernikahan kami.', 'Merupakan suatu kebahagiaan bagi Kami apabila Bapak/Ibu/Saudara(i) berkenan hadir untuk memberikan doa restu kepada kami.\nAtas kehadiran dan doa restunya kami ucapkan terimakasih.\n\nWassalamualaikum Wr Wb', '2022-10-19 15:01:48', '2022-10-19 22:01:48');

-- --------------------------------------------------------

--
-- Table structure for table `komen`
--

CREATE TABLE `komen` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_komentar` varchar(50) NOT NULL,
  `isi_komentar` mediumtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `komen`
--

INSERT INTO `komen` (`id`, `id_user`, `nama_komentar`, `isi_komentar`, `created_at`, `updated_at`) VALUES
(1, 1, 'Aninda Safira', 'Alhamdulilah, selamat atas pernikahan kalian. Semoga pernikahan kalian dilimpahi oleh cinta, kebaikan dan kebahagiaan. Jazakallahu khairan khatira.. ', '2020-08-23 15:10:31', '2021-10-06 22:03:39'),
(2, 1, 'Raisa Andriana', 'Selamat menikah sahabatku, ‘Barakallahu lakum wa baraka alaikum’ ', '2020-08-22 15:12:45', '2020-08-22 01:17:42'),
(3, 1, 'Anisa Rahma', 'Alhamdulillah.. Selamat ya. Semoga Allah Swt selalu melimpahkan rahmatNya untuk pernikahan kalian.', '2020-08-20 15:14:44', '2020-08-22 01:18:37'),
(4, 1, 'Maudy Ayunda', 'MasyaAllah.. Selamat buat kalian berdua. Barakallah', '2020-08-22 15:32:50', '2021-10-06 22:03:39'),
(5, 1, 'Citra Kirana', 'Baarakallahu laka wa baaraka ‘alaika wa jama’a bainakumaa fii khaiir.\r\n\r\nSemoga Allah memberikan keberkahan untukmu dan atasmu, serta semoga Dia mengumpulkan di antara kalian berdua dalam kebaikan. ', '2020-07-26 16:00:41', '2021-10-06 22:03:39'),
(6, 1, 'Nissya Sabyan', 'Semoga pernikahan kalian langgeng dan selalu dinaungi petunjuk Allah dalam setiap langkah.. Aamiin', '2020-07-26 16:03:18', '2021-10-06 22:03:39');

-- --------------------------------------------------------

--
-- Table structure for table `mempelai`
--

CREATE TABLE `mempelai` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_pria` varchar(50) NOT NULL,
  `nama_panggilan_pria` varchar(50) NOT NULL,
  `nama_ibu_pria` varchar(50) NOT NULL,
  `nama_ayah_pria` varchar(50) NOT NULL,
  `nama_wanita` varchar(50) NOT NULL,
  `nama_panggilan_wanita` varchar(50) NOT NULL,
  `nama_ibu_wanita` varchar(50) NOT NULL,
  `nama_ayah_wanita` varchar(50) NOT NULL,
  `posisi_mempelai` enum('0','1') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mempelai`
--

INSERT INTO `mempelai` (`id`, `id_user`, `nama_pria`, `nama_panggilan_pria`, `nama_ibu_pria`, `nama_ayah_pria`, `nama_wanita`, `nama_panggilan_wanita`, `nama_ibu_wanita`, `nama_ayah_wanita`, `posisi_mempelai`, `created_at`, `updated_at`) VALUES
(1, 1, 'Andra Leksmana', 'Andra', 'Muslimah', 'Kusmanto', 'Siti Amelia', 'Amel', 'Siti Fatimah', 'Soekatmo', '0', '2020-07-26 14:16:43', '2022-08-06 02:11:10'),
(8, 309, 'Rizky Billar', 'Rizky', 'Deolipa', 'Kamarudin', 'Lesti Kejora', 'Lesti', 'Putri', 'Ferdy', '0', '2022-10-19 15:01:48', '2022-10-19 22:01:48');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `domain` varchar(50) NOT NULL,
  `theme` varchar(50) NOT NULL,
  `id_paket` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `id_user`, `domain`, `theme`, `id_paket`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'demo', '70', 3, 1, '2022-03-01 14:01:31', '2022-09-04 04:53:34'),
(8, 309, 'leslar', '63', 3, 1, '2022-10-19 15:01:48', '2022-10-19 22:01:48');

-- --------------------------------------------------------

--
-- Table structure for table `paket`
--

CREATE TABLE `paket` (
  `id_paket` int(11) NOT NULL,
  `nama_paket` varchar(100) NOT NULL,
  `harga_paket` varchar(100) NOT NULL,
  `masa_aktif` int(11) NOT NULL,
  `buku_tamu` int(11) NOT NULL,
  `kirim_whatsapp` int(11) NOT NULL,
  `tema_bebas` int(11) NOT NULL,
  `kirim_hadiah` int(11) NOT NULL,
  `import_datatamu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `paket`
--

INSERT INTO `paket` (`id_paket`, `nama_paket`, `harga_paket`, `masa_aktif`, `buku_tamu`, `kirim_whatsapp`, `tema_bebas`, `kirim_hadiah`, `import_datatamu`) VALUES
(1, 'Silver', '100000', 60, 0, 0, 0, 0, 0),
(2, 'Gold', '200000', 60, 0, 0, 1, 1, 0),
(3, 'Diamond', '300000', 60, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `invoice` varchar(50) NOT NULL,
  `nama_lengkap` varchar(200) DEFAULT NULL,
  `bukti` varchar(200) DEFAULT NULL,
  `nama_bank` varchar(100) NOT NULL,
  `va_number` varchar(200) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `harga` int(11) NOT NULL DEFAULT 0,
  `payment_type` varchar(200) NOT NULL,
  `transaction_status` varchar(100) NOT NULL,
  `transaction_time` datetime DEFAULT NULL,
  `transaction_expired` datetime DEFAULT NULL,
  `biller_code` varchar(100) DEFAULT NULL,
  `instruction` text NOT NULL,
  `status_order` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id`, `id_user`, `invoice`, `nama_lengkap`, `bukti`, `nama_bank`, `va_number`, `status`, `created_at`, `harga`, `payment_type`, `transaction_status`, `transaction_time`, `transaction_expired`, `biller_code`, `instruction`, `status_order`) VALUES
(1, 1, '2203183', 'hhahhahahha', '2202159.png', 'permata', '8778009735519160', 2, '2023-05-02 06:44:43', 100000, 'bank_transfer', 'expire', '2022-03-30 07:22:57', '2022-03-30 08:22:57', '', '[{\"title\":\"Internet Banking\",\"steps\":[\"Masuk ke Internet Banking BSI Anda\",\"Pilih menu <b>Pembayaran<\\/b>\",\"Pilih nomor rekening Anda\",\"Pilih <b>Jenis Pembayaran > Institusi<\\/b>\",\"Pada opsi Nama Institusi, pilih <b>9042 Win Pay<\\/b>\",\"Masukkan kode bayar (<b>164856525400<\\/b>)\",\"Klik tombol <b>Verifikasi<\\/b>\",\"Akan ditampikan detail transaksi, pastikan sudah sesuai\",\"Masukkan TAN & PIN Anda\",\"Tekan tombol <b>Submit<\\/b>\",\"Transaksi selesai, simpan bukti pembayaran Anda\"]},{\"title\":\"BSI Mobile\",\"steps\":[\"Masuk ke aplikasi BSI Mobile Anda\",\"Pilih menu <b>Bayar<\\/b>\",\"Pilih menu <b>Institusi<\\/b>\",\"Pada opsi Nama Institusi, pilih <b>9042 Win Pay<\\/b>\",\"Masukkan kode bayar (<b>164856525400<\\/b>)\",\"Klik <b>Selanjutnya<\\/b>\",\"Masukkan PIN Anda\",\"Klik <b>Selanjutnya<\\/b>\",\"Akan ditampikan detail transaksi, pastikan sudah sesuai\",\"Klik <b>Selanjutnya<\\/b>\",\"Transaksi selesai, simpan bukti pembayaran Anda\"]},{\"title\":\"ATM BSI\",\"steps\":[\"Datang ke ATM BSI\",\"Masukkan kartu dan PIN kartu Anda\",\"Pilih menu <b>Pembayaran<\\/b>\",\"Pilih <b>Institusi<\\/b>\",\"Masukkan kode institusi 9042 + Nomor Virtual Account Anda. Contoh: <b>9042164856525400<\\/b>\",\"Tekan tombol <b>Benar<\\/b>\",\"Akan ditampikan detail transaksi, pastikan sudah sesuai\",\"Tekan tombol <b>BENAR\\/YA<\\/b>\",\"Transaksi selesai, simpan bukti pembayaran Anda\"]}]', '1'),
(8, 309, '221030912', NULL, NULL, '', '', 2, '2022-10-19 15:03:15', 300000, '', '', NULL, NULL, NULL, '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `pengunjung`
--

CREATE TABLE `pengunjung` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_pengunjung` varchar(100) NOT NULL,
  `addr` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengunjung`
--

INSERT INTO `pengunjung` (`id`, `id_user`, `nama_pengunjung`, `addr`, `created_at`, `updated_at`) VALUES
(39, 309, 'Tamu Undangan', '120.188.72.119', '2022-10-19 15:04:07', '2022-10-19 22:04:07'),
(40, 309, 'Kuat Maruf', '120.188.72.119', '2022-10-19 15:08:17', '2022-10-19 22:08:17'),
(41, 309, 'Tamu Undangan', '127.0.0.1', '2023-05-02 13:42:12', '2023-05-02 20:42:12'),
(42, 1, 'Tamu Undangan', '127.0.0.1', '2023-05-02 13:43:41', '2023-05-02 20:43:41'),
(43, 1, 'Tamu Undangan', '127.0.0.1', '2023-05-02 13:53:28', '2023-05-02 20:53:28'),
(44, 1, 'Tamu Undangan', '127.0.0.1', '2023-05-02 13:59:17', '2023-05-02 20:59:17'),
(45, 1, 'Tamu Undangan', '127.0.0.1', '2023-05-02 13:59:35', '2023-05-02 20:59:35');

-- --------------------------------------------------------

--
-- Table structure for table `quote`
--

CREATE TABLE `quote` (
  `id_quote` int(11) NOT NULL,
  `isi_quote` text DEFAULT NULL,
  `sumber_quote` varchar(100) DEFAULT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `quote`
--

INSERT INTO `quote` (`id_quote`, `isi_quote`, `sumber_quote`, `id_user`) VALUES
(2, 'Tidak ada solusi yang lebih baik bagi dua insan yang saling mencintai di banding Pernikahan.', 'HR Ibnu Majah', 1);

-- --------------------------------------------------------

--
-- Table structure for table `rekening`
--

CREATE TABLE `rekening` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_bank` varchar(200) DEFAULT NULL,
  `no_rekening` varchar(200) DEFAULT NULL,
  `nama_pemilik` varchar(200) DEFAULT NULL,
  `qrcode_bank` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rekening`
--

INSERT INTO `rekening` (`id`, `id_user`, `nama_bank`, `no_rekening`, `nama_pemilik`, `qrcode_bank`) VALUES
(173, 1, 'OVO', '089667771377', 'Ryan Apriansyah', 'qrcode3.png'),
(176, 309, 'BCA', '12345', 'Leslar', '');

-- --------------------------------------------------------

--
-- Table structure for table `rules`
--

CREATE TABLE `rules` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `sampul` int(11) NOT NULL,
  `mempelai` int(11) NOT NULL,
  `acara` int(11) NOT NULL,
  `komen` int(11) NOT NULL,
  `gallery` int(11) NOT NULL,
  `cerita` int(11) NOT NULL,
  `lokasi` int(11) NOT NULL,
  `prokes` int(11) NOT NULL,
  `qrcode` int(11) NOT NULL,
  `hadiah` int(11) NOT NULL,
  `quote` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rules`
--

INSERT INTO `rules` (`id`, `id_user`, `sampul`, `mempelai`, `acara`, `komen`, `gallery`, `cerita`, `lokasi`, `prokes`, `qrcode`, `hadiah`, `quote`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2020-07-26 14:16:43', '2022-03-27 22:05:54'),
(8, 309, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, '2022-10-19 15:01:48', '2022-10-19 22:13:11');

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `harga` double NOT NULL,
  `img` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `trial` int(11) NOT NULL,
  `aktif` int(11) NOT NULL,
  `host_email` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `pass_email` varchar(255) DEFAULT NULL,
  `no_wa` varchar(15) DEFAULT NULL,
  `pesan_wa` text DEFAULT NULL,
  `salam_pembuka` longtext DEFAULT NULL,
  `wa_gateway` enum('starsender') NOT NULL DEFAULT 'starsender',
  `token_wa` varchar(255) DEFAULT NULL,
  `salam_wa_atas` text NOT NULL,
  `salam_wa_bawah` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `harga`, `img`, `created_at`, `trial`, `aktif`, `host_email`, `email`, `pass_email`, `no_wa`, `pesan_wa`, `salam_pembuka`, `wa_gateway`, `token_wa`, `salam_wa_atas`, `salam_wa_bawah`) VALUES
(1, 100000, 'bank.png', '2022-10-19 14:33:30', 2, 60, 'mail.kuatnikah.online', 'cs@kuatnikah.online', '@Sukses123', '6283867672290', 'Hello Admin Kuat, Saya Mau bertanya.', 'Assalamu\'alaikum Warahmatullahi Wabarakatuh.\n\nDengan memohon Rahmat dan Ridho Allah SWT, Kami akan menyelenggarakan resepsi pernikahan Putra-Putri kami :', 'starsender', '17112195af932ee567e92b3496f338aa5f97b36akut', 'Assalamualaikum Wr Wb.\nDengan segala kerendahan hati dan syukur atas Karunia Allah SWT.\nKami bermaksud mengundang Bapak/Ibu/Saudara(i) pada acara pernikahan kami.', 'Merupakan suatu kebahagiaan bagi Kami apabila Bapak/Ibu/Saudara(i) berkenan hadir untuk memberikan doa restu kepada kami.\nAtas kehadiran dan doa restunya kami ucapkan terimakasih.\n\nWassalamualaikum Wr Wb');

-- --------------------------------------------------------

--
-- Table structure for table `setting_pembayaran`
--

CREATE TABLE `setting_pembayaran` (
  `id_setting` int(11) NOT NULL,
  `metode_bayar` enum('manual','midtrans','tripay') NOT NULL,
  `bank_manual` varchar(100) DEFAULT NULL,
  `norek_manual` varchar(100) DEFAULT NULL,
  `nama_manual` varchar(100) DEFAULT NULL,
  `url_midtrans` varchar(200) DEFAULT NULL,
  `serverkey_midtrans` varchar(200) DEFAULT NULL,
  `clientkey_midtrans` varchar(200) DEFAULT NULL,
  `midtrans_production` varchar(10) DEFAULT 'false',
  `url_tripay` varchar(100) DEFAULT NULL,
  `apikey_tripay` varchar(100) DEFAULT NULL,
  `privatekey_tripay` varchar(100) DEFAULT NULL,
  `merchantcode_tripay` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `setting_pembayaran`
--

INSERT INTO `setting_pembayaran` (`id_setting`, `metode_bayar`, `bank_manual`, `norek_manual`, `nama_manual`, `url_midtrans`, `serverkey_midtrans`, `clientkey_midtrans`, `midtrans_production`, `url_tripay`, `apikey_tripay`, `privatekey_tripay`, `merchantcode_tripay`) VALUES
(1, 'midtrans', 'BCA', '123456789', 'Kuat Maruf', 'https://app.midtrans.com/snap/snap.js', 'SB-Mid-server-tAmdcWW_JBFGxPk9j6A8vz8S', 'SB-Mid-client-Omh_naRMSXW47Oo8', 'false', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `slider_bukutamu`
--

CREATE TABLE `slider_bukutamu` (
  `id_slider` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_slider` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `slider_bukutamu`
--

INSERT INTO `slider_bukutamu` (`id_slider`, `id_user`, `nama_slider`) VALUES
(1, 1, 'slider1'),
(2, 1, 'slider2'),
(3, 1, 'slider3'),
(36, 1, 'slider4'),
(37, 1, 'slider5'),
(39, 309, 'slider1'),
(40, 309, 'slider2'),
(41, 309, 'slider3'),
(42, 309, 'slider4'),
(43, 309, 'slider5'),
(44, 309, 'slider6');

-- --------------------------------------------------------

--
-- Table structure for table `tamu`
--

CREATE TABLE `tamu` (
  `id_tamu` int(11) NOT NULL,
  `nama_tamu` varchar(100) NOT NULL,
  `nama_slug` varchar(255) NOT NULL,
  `alamat_tamu` varchar(255) NOT NULL,
  `alamat_slug` varchar(255) NOT NULL,
  `no_wa` varchar(100) NOT NULL,
  `qrcode` varchar(255) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tgl_kirim` date NOT NULL,
  `status_kirim` varchar(100) NOT NULL DEFAULT 'belum dikirim',
  `status` varchar(100) DEFAULT NULL,
  `waktu_hadir` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tamu`
--

INSERT INTO `tamu` (`id_tamu`, `nama_tamu`, `nama_slug`, `alamat_tamu`, `alamat_slug`, `no_wa`, `qrcode`, `id_user`, `tgl_kirim`, `status_kirim`, `status`, `waktu_hadir`) VALUES
(1, 'Bagus Jumawan', 'bagus+jumawan', 'Demak, Jawa Tengah', 'demak+jawa+tengah', '6289667771377', '9756540c94be8be6dfe5ed007cfc79e1', 1, '2022-04-01', 'tidak terkirim', 'hadir', '2022-03-10 10:32:50'),
(2, 'Kadek Sila', 'kadek+sila', 'Bali, Indonesia', 'bali+indonesia', '082237972112', 'dc879db724c3dabe409a6905988db685', 1, '2021-08-17', 'terkirim', '', '2022-03-11 09:49:44'),
(9, 'Bayu Sutrisno', 'bayu+sutrisno', 'Demak, Jawa Tengah', 'demak+jawa+tengah', '089659687659', 'd0d47b4f15aba1d2f895ea0114d91cce', 1, '2021-08-02', 'terkirim', NULL, '2022-01-27 21:29:21'),
(10, 'Maulana Arifin', 'maulana+arifin', 'Demak, Jawa Tengah', 'demak+jawa+tengah', '089659687659', '649d6a20cf7ef33e53ec124f7714d042', 1, '2021-08-02', 'terkirim', NULL, '2022-01-27 21:29:21'),
(11, 'Kuat Maruf', 'kuat+maruf', 'Magelang', 'magelang', '6283867672290', 'ef8ef51b8c1296d7515e92d304b74f32', 309, '2022-10-31', 'belum dikirim', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tema_categories`
--

CREATE TABLE `tema_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tema_categories`
--

INSERT INTO `tema_categories` (`id`, `name`, `slug`) VALUES
(1, 'Mobile', 'mobile'),
(2, 'Slide', 'slide'),
(3, 'Scroll', 'scroll');

-- --------------------------------------------------------

--
-- Table structure for table `testimoni`
--

CREATE TABLE `testimoni` (
  `id_testi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama_lengkap` varchar(100) DEFAULT NULL,
  `kota` varchar(100) DEFAULT NULL,
  `provinsi` varchar(100) DEFAULT NULL,
  `ulasan` text DEFAULT NULL,
  `status` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `testimoni`
--

INSERT INTO `testimoni` (`id_testi`, `id_user`, `nama_lengkap`, `kota`, `provinsi`, `ulasan`, `status`) VALUES
(3, 1, 'Andra Leksmana', 'Gambir', 'Jakarta', 'Sangat keren dan menarik, proses pembuatannya cepat dan bisa custom sendiri', 2),
(10, 309, NULL, NULL, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` int(11) NOT NULL,
  `nama_theme` varchar(50) NOT NULL,
  `kode_theme` varchar(50) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `nama_theme`, `kode_theme`, `status`, `created_at`, `updated_at`, `category_id`) VALUES
(1, 'hwflower', 'A001', 1, '2020-07-26 13:23:40', '2022-02-18 15:58:22', 1),
(2, 'tealflower', 'A002', 1, '2020-07-26 13:23:40', '2022-02-18 15:58:22', 1),
(3, 'greenflower', 'A003', 1, '2020-08-17 01:03:22', '2022-02-18 15:58:22', 1),
(4, 'prettyflower', 'A004', 1, '2020-08-28 18:22:30', '2022-02-18 15:58:22', 1),
(5, 'blueroses', 'A005', 1, '2020-08-28 17:03:54', '2022-02-18 15:58:22', 1),
(6, 'redroses', 'A006', 1, '2020-08-28 17:04:08', '2022-02-18 15:58:22', 1),
(8, 'radiantyellow', 'A007', 1, '2020-08-28 19:56:29', '2022-02-18 15:58:22', 1),
(9, 'radiantdark', 'A009', 1, '2020-08-28 19:56:29', '2022-02-18 15:58:22', 1),
(44, 'purpleflower', 'A010', 1, '2021-07-04 02:03:44', '2022-02-18 15:58:22', 1),
(45, 'sketchflower', 'A011', 1, '2021-07-04 12:59:28', '2022-02-18 15:58:22', 1),
(49, 'beautiful-floral', 'A012', 1, '2021-09-17 23:52:39', '2022-02-18 16:00:23', 3),
(50, 'tapis', 'A013', 1, '2021-09-19 07:39:35', '2022-02-18 16:00:23', 2),
(51, 'rustic', 'A014', 1, '2021-09-20 04:46:10', '2022-02-18 16:00:23', 2),
(52, 'arabian', 'A015', 1, '2021-09-20 04:46:10', '2022-02-18 16:00:23', 3),
(53, 'jellyblack', 'A016', 1, '2021-09-20 04:46:28', '2022-02-18 16:00:23', 2),
(54, 'floral', 'A017', 1, '2021-09-20 04:46:55', '2022-02-18 16:00:23', 2),
(55, 'vintage-islamic', 'A018', 1, '2021-09-20 04:46:55', '2022-02-18 16:00:23', 2),
(59, 'islamic1', 'A019', 1, '2022-01-15 02:12:52', '2022-02-18 16:00:23', 3),
(60, 'watercolor1', 'A020', 1, '2022-01-15 02:12:52', '2022-02-18 16:00:23', 3),
(61, 'twelve', 'A021', 1, '2022-01-28 09:37:46', '2022-02-18 16:00:23', 3),
(63, 'mandala', 'A022', 1, '2022-02-17 04:21:17', '2022-03-24 09:30:55', 2),
(67, 'watercolor2', 'A026', 1, '2022-02-24 02:00:36', '2022-02-25 00:09:25', 3),
(68, 'watercolor3', 'A027', 1, '2022-02-24 02:02:36', '2022-02-25 00:14:54', 3),
(69, 'watercolor4', 'A028', 1, '2022-02-24 02:03:24', '2022-02-25 00:14:54', 3),
(70, 'watercolor5', 'A029', 1, '2022-02-24 02:04:10', '2022-02-25 00:14:54', 3);

-- --------------------------------------------------------

--
-- Table structure for table `themes_video`
--

CREATE TABLE `themes_video` (
  `id_theme` int(11) NOT NULL,
  `nama_tema` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `preview` varchar(200) NOT NULL,
  `url_video` varchar(250) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `themes_video`
--

INSERT INTO `themes_video` (`id_theme`, `nama_tema`, `harga`, `preview`, `url_video`, `category_id`) VALUES
(1, 'Kode 01', 40000, 'kode_01.png', '<iframe src=\"https://drive.google.com/file/d/1OyLGmbmBooRg_dFHtNX_ZOg0VZUWkwxV/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 1),
(2, 'Kode 02', 40000, 'kode_02.png', '<iframe src=\"https://drive.google.com/file/d/1BvinpaAotK-xHXgE_OziR9D2HufFZ12p/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 1),
(3, 'Kode 03', 40000, 'kode_03.png', '<iframe src=\"https://drive.google.com/file/d/1gOP05_koMTKzsjy1PIfyWV-NlLCwRN6Q/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 1),
(4, 'Kode 04', 40000, 'kode_04.png', '<iframe src=\"https://drive.google.com/file/d/1psKTtjNJqiaCyuGqLQfAsUj6Ojtb4_qy/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 1),
(5, 'Kode 05', 40000, 'kode_05.png', '<iframe src=\"https://drive.google.com/file/d/1z65eVHOYKdMIp7X2zEmeWnEBg3AtpJ5y/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 1),
(6, 'Kode 06', 40000, 'kode_06.png', '<iframe src=\"https://drive.google.com/file/d/1G-N68I75X8aQ3PqQS-A13jJ1KYvATh64/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 1),
(7, 'Kode 07', 40000, 'kode_07.png', '<iframe src=\"https://drive.google.com/file/d/1niwHJOkM3M-NJDad7eTzz_M9bS3XXjX_/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 2),
(8, 'Kode 08', 40000, 'kode_08.png', '<iframe src=\"https://drive.google.com/file/d/1dlurlHQcI-qEdAfzqALIqeiifor4A1kz/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 2),
(9, 'Kode 09', 40000, 'kode_09.png', '<iframe src=\"https://drive.google.com/file/d/16_vSP99YkEPK0U4bdWn1-0mrqHMJhgEK/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 2),
(10, 'Kode 10', 40000, 'kode_10.png', '<iframe src=\"https://drive.google.com/file/d/1ek9-CEUrn4rjhoHvLXxUfW7mm0OD8YxN/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 2),
(11, 'Kode 11', 40000, 'kode_11.png', '<iframe src=\"https://drive.google.com/file/d/17dcyya0OeY848DjaT-Jn2keUGeqWBF2T/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 2),
(12, 'Kode 12', 40000, 'kode_12.png', '<iframe src=\"https://drive.google.com/file/d/1FOccAQ88gZIEh5QlzWvENXnTqzn2-igb/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 2),
(13, 'Kode 13', 40000, 'kode_13.png', '<iframe src=\"https://drive.google.com/file/d/1wAoLV_lZEFEWdqkpKiMSfE2CriiUY-Wo/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 2),
(14, 'Kode 14', 40000, 'kode_14.png', '<iframe src=\"https://drive.google.com/file/d/1hkU9Zo3LZ5itviqX8hHpUbSAE2NE0HQJ/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 2),
(15, 'Kode 15', 40000, 'kode_15.png', '<iframe src=\"https://drive.google.com/file/d/122Ua8UIewzb6cQS6fcbtTz3ax9pWHDz4/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 2),
(20, 'Kode 16', 40000, 'kode_16.png', '<iframe src=\"https://drive.google.com/file/d/1TyS6-wuCwkC_NI3PicZXsyrCGokYRYAy/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 2),
(25, 'Kode 17', 40000, 'kode_17.png', '<iframe src=\"https://drive.google.com/file/d/16-6NrD_BvVQFEXq5iRxaLyS7jLndqKjc/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 3),
(26, 'Kode 18', 40000, 'kode_18.png', '<iframe src=\"https://drive.google.com/file/d/13GVMcTO6qEEx_1aZAaE6xJdw62dY1Lcu/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 3),
(27, 'Kode 19', 40000, 'kode_19.png', '<iframe src=\"https://drive.google.com/file/d/1hf8dcyrb4nvOuqwslJuidz8aW0Xqss_a/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 3),
(28, 'Kode 20', 40000, 'kode_20.png', '<iframe src=\"https://drive.google.com/file/d/1v_aqcSpj_M5-mWrYdxLse5VVALxZQXvQ/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 3),
(29, 'Kode 21', 40000, 'kode_21.png', '<iframe src=\"https://drive.google.com/file/d/1ckXCj5aAS1Ki7G7lIQ4o3DordGAWteV-/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 3),
(30, 'Kode 22', 40000, 'kode_22.png', '<iframe src=\"https://drive.google.com/file/d/1koayXRVm_Ibh68odpXgIBoJ8uZ_DHrI1/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 3),
(31, 'Kode 23', 40000, 'kode_23.png', '<iframe src=\"https://drive.google.com/file/d/1IxdMkfl_OCO4yfRoeHec42lcZEw-vPTG/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 3),
(32, 'Kode 24', 40000, 'kode_24.png', '<iframe src=\"https://drive.google.com/file/d/1sXAGGM1WprmmmuIEa8Q2afZcpjE3dRDZ/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 3),
(33, 'Kode 25', 40000, 'kode_25.png', '<iframe src=\"https://drive.google.com/file/d/1PHga9AwwEFxAD7eNwLz55jCkw-HZ_cO5/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 3),
(34, 'Kode 26', 40000, 'kode_26.png', '<iframe src=\"https://drive.google.com/file/d/1BO1f_b-ycz30GPiE56emaUAu2m2RJ1zC/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 3),
(35, 'Kode 27', 40000, 'kode_27.png', '<iframe src=\"https://drive.google.com/file/d/1GX1vAXqzwvbkTH7AAQPficafmIJ1uG9N/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 4),
(36, 'Kode 28', 40000, 'kode_28.png', '<iframe src=\"https://drive.google.com/file/d/1vh3oq92-PQfg1LTltI3J5BjdLASzChAL/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 4),
(37, 'Kode 29', 40000, 'kode_29.png', '<iframe src=\"https://drive.google.com/file/d/1ziEnVA9LdabmO6nWT0boAjLFr3F6viYY/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 4),
(38, 'Kode 30', 40000, 'kode_30.png', '<iframe src=\"https://drive.google.com/file/d/1OrO1_g2vSiElDQPNfhkq4THqOxC-TjYW/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 4),
(39, 'Kode 31', 40000, 'kode_31.png', '<iframe src=\"https://drive.google.com/file/d/1p5NIEnRqP-dPao-CTho0KY0n3CoDUzJM/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(40, 'Kode 32', 40000, 'kode_32.png', '<iframe src=\"https://drive.google.com/file/d/14qHnyViXGjDAcDxDzdKjYEHj1vmTRoUw/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(41, 'Kode 33', 40000, 'kode_33.png', '<iframe src=\"https://drive.google.com/file/d/1xcKpK_9r18-3f4_QAM-QDa2ev0G_7ZIH/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(42, 'Kode 34', 40000, 'kode_34.png', '<iframe src=\"https://drive.google.com/file/d/1qswmddDVgzc3hXEsOpFo_QVW8SoVpyhl/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(43, 'Kode 35', 40000, 'kode_35.png', '<iframe src=\"https://drive.google.com/file/d/1GOUNAlptuhZ83O6ZHebdwf8KKbnlXeeU/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(44, 'Kode 36', 40000, 'kode_36.png', '<iframe src=\"https://drive.google.com/file/d/1LX3VEGhKdXSAjF4D6TAGV5ebyGoZMmFT/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(45, 'Kode 37', 40000, 'kode_37.png', '<iframe src=\"https://drive.google.com/file/d/11spFRdgPZPq1hZpzPW_NsSzTYKrk22iK/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(46, 'Kode 38', 40000, 'kode_38.png', '<iframe src=\"https://drive.google.com/file/d/1Rz2HLPo2BoCRPFIWXZYt38aBv0I4VWrt/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(47, 'Kode 39', 40000, 'kode_39.png', '<iframe src=\"https://drive.google.com/file/d/1L1DCdp09i56_R6fwCdEdPDHH7xz_pqeA/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(48, 'Kode 40', 40000, 'kode_40.png', '<iframe src=\"https://drive.google.com/file/d/1XfOfdlI83d_7RIQLeFob9HoOBGb55FOd/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(49, 'Kode 41', 40000, 'kode_41.png', '<iframe src=\"https://drive.google.com/file/d/1KGx7Ns4DcFibDpQiK3ravUBuUYFKYKTC/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(50, 'Kode 42', 40000, 'kode_42.png', '<iframe src=\"https://drive.google.com/file/d/1Mpw6VXNOvsdsPrxUCQ-MMJeySMos7cEh/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(51, 'Kode 43', 40000, 'kode_43.png', '<iframe src=\"https://drive.google.com/file/d/1EvXINx9hysFIlwa6HpWcdcTtlrjEC2F0/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(52, 'Kode 44', 40000, 'kode_44.png', '<iframe src=\"https://drive.google.com/file/d/1vv3A7KlOMLO3bi6npSUh8n7XjxNOMGVw/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(53, 'Kode 45', 40000, 'kode_45.png', '<iframe src=\"https://drive.google.com/file/d/14_Ka45Z1MWwlzXfJsmKFOw9Bxnv-O1y6/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(54, 'Kode 46', 40000, 'kode_46.png', '<iframe src=\"https://drive.google.com/file/d/13qYybj3gICbZ9ow_tpqmGKbiUE5WvcN4/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(55, 'Kode 47', 40000, 'kode_47.png', '<iframe src=\"https://drive.google.com/file/d/1wglyjVQNl8gZsnz_Z0PEKfiskNoDC9nG/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(56, 'Kode 48', 40000, 'kode_48.png', '<iframe src=\"https://drive.google.com/file/d/1B1GlR9dG8kbBmyauTlTctuFh2EPn8ULp/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(57, 'Kode 49', 40000, 'kode_49.png', '<iframe src=\"https://drive.google.com/file/d/1FC8Lp5b99Eo0upR71sTev1qD-5XU6N-4/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(58, 'Kode 50', 40000, 'kode_50.png', '<iframe src=\"https://drive.google.com/file/d/1McUMlXvCoB0grlrsHQjNxoqK_1ntGg33/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(59, 'Kode 51', 40000, 'kode_51.png', '<iframe src=\"https://drive.google.com/file/d/1W4DdLgcPWe3hIdN3UReTBtUVUagPi-lh/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(60, 'Kode 52', 40000, 'kode_52.png', '<iframe src=\"https://drive.google.com/file/d/1sVobKAEynfB_tm-1voTJJ8xXQNt_LKJs/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(61, 'Kode 53', 40000, 'kode_53.png', '<iframe src=\"https://drive.google.com/file/d/1vzdwgRTcYpDwmJDSZE9d4K9l7ck_2Ps9/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(62, 'Kode 54', 40000, 'kode_54.png', '<iframe src=\"https://drive.google.com/file/d/1Q03xoPiM8OeRny-KiWDAn7WAc-m918_5/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(63, 'Kode 55', 40000, 'kode_55.png', '<iframe src=\"https://drive.google.com/file/d/1rWzIoqfUWeIeFDBOT_6tZahkGombq3yH/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(64, 'Kode 56', 40000, 'kode_56.png', '<iframe src=\"https://drive.google.com/file/d/1-1GC8H51_-zsFEAmV7--9onZB9I4jvgT/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(65, 'Kode 57', 40000, 'kode_57.png', '<iframe src=\"https://drive.google.com/file/d/1Y8sHoNrBgWZBiml4PLiC6xstpW5jem6c/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5),
(66, 'Kode 58', 40000, 'kode_58.png', '<iframe src=\"https://drive.google.com/file/d/1E96VJFFxt6Q3PQxPFDYYTDBLzYOow3Hy/preview\" width=\"640\" height=\"480\" allow=\"autoplay\"></iframe>', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `hp` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `id_unik` varchar(500) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `token` text DEFAULT NULL,
  `created_token` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `hp`, `email`, `username`, `password`, `id_unik`, `created_at`, `token`, `created_token`) VALUES
(1, '6283867672290', 'demo@gmail.com', 'Demo', '25d55ad283aa400af464c76d713c07ad', '2007155', '2020-07-26 14:16:42', 'acb7fcea27fceb00bfa9b3d2257adced', '2022-09-03 23:00:06'),
(309, '6283867672290', 'belerong69@gmail.com', 'leslar@gmail.com', '25d55ad283aa400af464c76d713c07ad', '221030912', '2022-10-19 15:01:48', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `video_categories`
--

CREATE TABLE `video_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `slug` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `video_categories`
--

INSERT INTO `video_categories` (`id`, `name`, `slug`) VALUES
(1, 'Elegant', 'elegant'),
(2, 'Islamic', 'islamic'),
(3, 'Minimalist', 'minimalist'),
(4, 'Overlay', 'overlay'),
(5, 'Watercolor', 'watercolor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acara`
--
ALTER TABLE `acara`
  ADD PRIMARY KEY (`id_acara`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cerita`
--
ALTER TABLE `cerita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komen`
--
ALTER TABLE `komen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mempelai`
--
ALTER TABLE `mempelai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paket`
--
ALTER TABLE `paket`
  ADD PRIMARY KEY (`id_paket`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengunjung`
--
ALTER TABLE `pengunjung`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quote`
--
ALTER TABLE `quote`
  ADD PRIMARY KEY (`id_quote`);

--
-- Indexes for table `rekening`
--
ALTER TABLE `rekening`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rules`
--
ALTER TABLE `rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `setting_pembayaran`
--
ALTER TABLE `setting_pembayaran`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indexes for table `slider_bukutamu`
--
ALTER TABLE `slider_bukutamu`
  ADD PRIMARY KEY (`id_slider`);

--
-- Indexes for table `tamu`
--
ALTER TABLE `tamu`
  ADD PRIMARY KEY (`id_tamu`);

--
-- Indexes for table `tema_categories`
--
ALTER TABLE `tema_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimoni`
--
ALTER TABLE `testimoni`
  ADD PRIMARY KEY (`id_testi`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `themes_video`
--
ALTER TABLE `themes_video`
  ADD PRIMARY KEY (`id_theme`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video_categories`
--
ALTER TABLE `video_categories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acara`
--
ALTER TABLE `acara`
  MODIFY `id_acara` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=217;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=469;

--
-- AUTO_INCREMENT for table `cerita`
--
ALTER TABLE `cerita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=289;

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `komen`
--
ALTER TABLE `komen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mempelai`
--
ALTER TABLE `mempelai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `paket`
--
ALTER TABLE `paket`
  MODIFY `id_paket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `pengunjung`
--
ALTER TABLE `pengunjung`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `quote`
--
ALTER TABLE `quote`
  MODIFY `id_quote` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rekening`
--
ALTER TABLE `rekening`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;

--
-- AUTO_INCREMENT for table `rules`
--
ALTER TABLE `rules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `setting_pembayaran`
--
ALTER TABLE `setting_pembayaran`
  MODIFY `id_setting` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `slider_bukutamu`
--
ALTER TABLE `slider_bukutamu`
  MODIFY `id_slider` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tamu`
--
ALTER TABLE `tamu`
  MODIFY `id_tamu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tema_categories`
--
ALTER TABLE `tema_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `testimoni`
--
ALTER TABLE `testimoni`
  MODIFY `id_testi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `themes_video`
--
ALTER TABLE `themes_video`
  MODIFY `id_theme` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=310;

--
-- AUTO_INCREMENT for table `video_categories`
--
ALTER TABLE `video_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;
