-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 22, 2024 at 04:50 PM
-- Server version: 8.0.30
-- PHP Version: 8.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pwl_pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(36, '2014_10_12_000000_create_users_table', 1),
(37, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(38, '2019_08_19_000000_create_failed_jobs_table', 1),
(39, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(40, '2024_09_11_061211_create_m_level_table', 1),
(53, '2024_09_11_071310_create_m_user_table', 2),
(54, '2024_10_20_080437_add_avatar_to_m_user_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `m_barang`
--

CREATE TABLE `m_barang` (
  `barang_id` bigint UNSIGNED NOT NULL,
  `kategori_id` bigint UNSIGNED NOT NULL,
  `barang_kode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barang_nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga_beli` int NOT NULL,
  `harga_jual` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_barang`
--

INSERT INTO `m_barang` (`barang_id`, `kategori_id`, `barang_kode`, `barang_nama`, `harga_beli`, `harga_jual`, `created_at`, `updated_at`) VALUES
(1, 1, 'KCB', 'Kaca Bening', 200000, 250000, NULL, '2024-10-03 03:59:08'),
(2, 1, 'KCC', 'Kaca Cermin bos', 250000, 300000, NULL, '2024-10-21 10:46:40'),
(3, 1, 'KCH', 'Kaca Hitam', 400000, 450000, NULL, NULL),
(4, 1, 'KCM', 'Kaca Modif Bunga', 500000, 550000, NULL, NULL),
(5, 1, 'KCPA', 'Kaca Premium 90', 600000, 650000, NULL, '2024-10-03 03:16:23'),
(6, 2, 'ALT', 'Aluminium Tipis', 200000, 240000, NULL, NULL),
(7, 2, 'ALB', 'Aluminuim Tebal', 350000, 400000, NULL, NULL),
(8, 2, 'ALH', 'Aluminuim Hitam', 450000, 450000, NULL, NULL),
(9, 2, 'ALU', 'Aluminuim Bulat', 100000, 150000, NULL, NULL),
(10, 2, 'ALBSI', 'Aluminuim Besi', 300000, 350000, NULL, '2024-10-03 04:16:52'),
(11, 3, 'PRK', 'Paku Rivet Kecil', 50000, 750000, NULL, NULL),
(12, 3, 'PRB', 'Paku Rivet Besar', 750000, 100000, NULL, NULL),
(13, 3, 'PRT', 'Paku Rivet Tembok', 750000, 100000, NULL, NULL),
(14, 3, 'PRP', 'Paku Rivet Plastik', 50000, 750000, NULL, NULL),
(15, 3, 'TRK', 'Triplek Putih', 25000, 50000, NULL, NULL),
(21, 8, 'KDBB', 'Korden kamar tidur', 900000, 1000000, '2024-10-03 03:59:44', '2024-10-03 03:59:44'),
(23, 1, 'KACA', 'Kaca Halus', 100000, 200000, '2024-10-10 00:46:09', '2024-10-10 00:46:09'),
(26, 3, 'MND-003', 'Shampo Pantene', 17500, 18500, '2024-10-16 01:22:42', NULL),
(47, 1, 'SBK-004', 'Telur Ayam (10 butir)', 22000, 25000, '2024-10-18 00:13:56', NULL),
(48, 2, 'SNK-004', 'Sari Roti', 11500, 12500, '2024-10-18 00:13:56', NULL),
(49, 3, 'MND-004', 'Shampo Pantene', 17500, 18500, '2024-10-18 00:13:56', NULL),
(52, 1, 'SBK-004', 'Telur Ayam (10 butir)', 22000, 25000, '2024-10-18 00:13:57', NULL),
(53, 2, 'SNK-004', 'Sari Roti', 11500, 12500, '2024-10-18 00:13:57', NULL),
(54, 3, 'MND00', 'Shampo Pantene', 20000, 18500, '2024-10-18 00:13:57', '2024-10-18 00:15:40'),
(56, 1, 'KOI', 'Kaca', 1000000, 200000, '2024-10-21 10:48:23', '2024-10-21 10:48:23');

-- --------------------------------------------------------

--
-- Table structure for table `m_kategori`
--

CREATE TABLE `m_kategori` (
  `kategori_id` bigint UNSIGNED NOT NULL,
  `kategori_kode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_kategori`
--

INSERT INTO `m_kategori` (`kategori_id`, `kategori_kode`, `kategori_nama`, `created_at`, `updated_at`) VALUES
(1, 'KCA', 'Kaca Cermin', NULL, NULL),
(2, 'ALM', 'Aluminium', NULL, NULL),
(3, 'LMP', 'Lemari Pakaian', NULL, NULL),
(7, 'KDR', 'Korden Kecil 1', '2024-09-26 02:03:24', '2024-09-26 04:29:16'),
(8, 'KDRB', 'Korden Besar', '2024-10-02 23:29:00', '2024-10-10 00:44:06'),
(12, 'RKS', 'Rak Sepatu', '2024-10-10 00:44:39', '2024-10-10 00:44:39'),
(13, 'PRM', 'Peralatan Mandi', '2024-10-16 09:20:36', NULL),
(21, 'PRB', 'Peralatan aja', '2024-10-17 19:45:15', '2024-10-21 10:44:11');

-- --------------------------------------------------------

--
-- Table structure for table `m_level`
--

CREATE TABLE `m_level` (
  `level_id` bigint UNSIGNED NOT NULL,
  `level_kode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_level`
--

INSERT INTO `m_level` (`level_id`, `level_kode`, `level_nama`, `created_at`, `updated_at`) VALUES
(1, 'ADM', 'Administrator', NULL, '2024-10-09 23:59:30'),
(2, 'MNG', 'Manager', NULL, NULL),
(3, 'STF', 'Staf/Kasir', NULL, '2024-10-10 00:22:35'),
(4, 'CUS', 'Pelanggan', '2024-09-12 05:56:13', '2024-10-10 00:22:46'),
(14, 'ADMI', 'ADMIN', '2024-10-02 18:43:53', '2024-10-10 00:23:02'),
(15, 'OPE', 'Operator', '2024-10-02 18:44:22', '2024-10-10 00:23:16'),
(19, 'BTG', 'Bintang', '2024-10-16 08:48:12', NULL),
(24, 'OBY', 'Office Boy', '2024-10-17 09:13:28', '2024-10-21 10:38:08');

-- --------------------------------------------------------

--
-- Table structure for table `m_supplier`
--

CREATE TABLE `m_supplier` (
  `supplier_id` bigint UNSIGNED NOT NULL,
  `supplier_kode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_alamat` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_supplier`
--

INSERT INTO `m_supplier` (`supplier_id`, `supplier_kode`, `supplier_nama`, `supplier_alamat`, `created_at`, `updated_at`) VALUES
(1, 'KCAB', 'Aluminuim Kepanjen 2', 'Kepanjen', NULL, '2024-10-21 10:49:37'),
(2, 'MLG', 'Aluminuim Kota Malang', 'Malang', NULL, NULL),
(3, 'BLT', 'Aluminium Blitar 1', 'Blitar', NULL, '2024-09-26 04:21:14'),
(9, 'IDN', 'Indonesia IKN', 'IKN Kalimantan', '2024-10-03 04:14:15', '2024-10-03 04:14:47'),
(11, 'RMJ', 'Remujung', 'Remujung', '2024-10-10 00:46:48', '2024-10-10 00:46:48'),
(12, 'BTR', 'Hanun', 'Bantur Malang', NULL, '2024-10-16 09:53:23'),
(13, 'WGR', 'Pras', 'Wagir', NULL, NULL),
(21, 'SGS', 'Ahmad', 'Singosari', '2024-10-19 00:16:50', NULL),
(22, 'GER', 'Bayern Munchen', 'Munich', '2024-10-21 10:50:38', '2024-10-21 10:50:38');

-- --------------------------------------------------------

--
-- Table structure for table `m_user`
--

CREATE TABLE `m_user` (
  `user_id` bigint UNSIGNED NOT NULL,
  `level_id` bigint UNSIGNED NOT NULL,
  `username` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_user`
--

INSERT INTO `m_user` (`user_id`, `level_id`, `username`, `nama`, `password`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 2, 'Hallo1', 'Test1', '$2y$12$8IU6WZDw0n.551bTStR5mO3iDTJmKLlzZPFZLACbcFrluMOkFzsyG', NULL, NULL, '2024-10-21 10:41:10'),
(2, 2, 'admins', 'manager11', '$2y$12$4hxJG/k1ouewFebMbge.p.J1IS6CEwkImm.H72jVSDYLwoJ5Zu3P6', NULL, NULL, '2024-10-09 06:10:44'),
(3, 3, 'stafmins', 'Staff/Kasir', '$2y$12$mCssOQu9r2T05jjNPbP7xeWkWT3JMt8mAGU8ozg9bu6yDuOKGI31C', NULL, NULL, '2024-10-09 06:11:01'),
(5, 2, 'managerdua', 'Manager 2', '$2y$12$hSJrL3VdqyX/AOyGSrJDs.G6UPPTYseCdY/IJ4QKdsBrEppKE4tJu', NULL, '2024-09-17 23:58:27', '2024-10-09 06:11:16'),
(28, 2, 'manager22', 'Manager Dua Dua', '$2y$12$B7L6ro9rnKeEi4mQQNC6iuzOlteJ3Q.0daNx3OJ58cgHwWFPow96.', NULL, '2024-09-18 01:19:51', '2024-10-09 06:11:27'),
(50, 2, 'bingung', 'bingung', '$2y$10$0MjtqdXQsfjcPLQM.h09fePiabHZsw24R/.GiGg/MySDwlC3uw0AS', NULL, NULL, NULL),
(51, 14, 'capek', 'capek', '$2y$12$dyrCOxzarG/kMg.m3Xv8x.iiexy2E0fkXjDis54gP0I1HVekeeNm6', NULL, '2024-10-09 06:04:36', '2024-10-09 06:04:36'),
(52, 1, 'admin', 'admin', '$2y$12$Fe15B3bMV19JSGF.R4f36.BlTcRir1oV18l957U8g8DDIHZoHx0a2', 'avatars/eZtrbC2aXORAGLrsa3mQc1g3g2mCltioYIXNWe0B.jpg', '2024-10-09 06:12:22', '2024-10-21 10:37:04'),
(53, 4, 'topek', 'topek', '$2y$12$wYQcik0VCivuDnyDB9cEA..oJr.T82T0p0mLf6hJ8OuJQL8TegGcC', 'avatars/jQVSF7n3Zwr87EGwCTeeWR32Gowo5gZKHS2NFqG6.jpg', '2024-10-10 00:02:03', '2024-10-21 11:10:24'),
(55, 2, 'manager', 'manage pwl', '$2y$12$SD2QxDRJu8QKn0BA0lVZ0u8PuTdII1BR1gR8ifZAqROpTXAtTWmwG', NULL, '2024-10-10 01:56:48', '2024-10-10 01:56:48'),
(56, 1, 'admin2', 'admin2', '$2y$12$GD6wKsCXtRoU7kHH6ucyR.cojIgw8TD8dYAP8zT4tD9z6iYf.Ns0C', NULL, '2024-10-10 02:29:03', '2024-10-10 02:29:03'),
(57, 1, 'ini template 1', 'template 1', '$2y$12$BgsAzp0Dwo2bxk3H7xQ/wu3CFqOECLSBlc/2dWu6vCMFdciP1beuW', NULL, '2024-10-16 09:06:02', NULL),
(58, 2, 'ini template 2', 'template 2', '$2y$12$S89OkAMR1PykffCrI93qLuFsIzzhf6uuQ5gZyXeDEkyPn6lnw/GRO', NULL, '2024-10-16 09:06:02', NULL),
(59, 2, 'aku', 'akuu', '$2y$12$o2CRoesMx6Cqp/xaQqUQkOm87rpThYzSJ02LJGXqb3oENURR8KTii', NULL, '2024-10-16 19:09:13', '2024-10-16 19:09:13'),
(60, 4, 'pel1', 'pelanggan satu', '$2y$12$zIARoVP2hdCKlJeaj22XWe0BsQgt4LJ/CcOUMynAA.TcH23elhaHK', NULL, '2024-10-19 04:09:02', '2024-10-19 04:09:02'),
(61, 3, 'aku staf', 'aku staf', '$2y$12$za/cdfsGLErhg215Pq0vceuo9lR4I0Dl8JsK.rNIZswtwtlWD2Ku6', NULL, '2024-10-20 04:27:26', '2024-10-20 04:27:26'),
(63, 1, 'mins', 'mins', '$2y$12$lS/tDnBNc/MTUV.2iMrbHOuUnkLxGibvIbUIRmzo1C1gPcWBbmx3C', NULL, '2024-10-21 10:42:21', '2024-10-21 10:42:21'),
(64, 2, 'dicky', 'Dicky MDHP', '$2y$12$AEEb//bpd1lJ13pcaaKCF.2pIXVw03TMdmfuwFthBCDCi2bg65rKa', 'avatars/wxN4kksZ2gWoddncayC24HKAeR0BDkrMFyXJOY95.jpg', '2024-10-22 09:44:53', '2024-10-22 09:45:58');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_penjualan`
--

CREATE TABLE `t_penjualan` (
  `penjualan_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `pembeli` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penjualan_kode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penjualan_tanggal` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_penjualan`
--

INSERT INTO `t_penjualan` (`penjualan_id`, `user_id`, `pembeli`, `penjualan_kode`, `penjualan_tanggal`, `created_at`, `updated_at`) VALUES
(1, 3, 'Dicky HP', 'KCH', '2024-10-20 00:00:00', NULL, '2024-10-20 20:28:31'),
(2, 3, 'Hanun', 'KCC', '2024-09-11 13:15:28', NULL, NULL),
(3, 3, 'Prasetyo', 'KCB', '2024-09-11 13:15:28', NULL, NULL),
(4, 3, 'Ahmad', 'KCM', '2024-09-11 13:15:28', NULL, NULL),
(5, 3, 'Agta', 'ALB', '2024-09-11 13:15:28', NULL, NULL),
(6, 3, 'Fajrin', 'ALH', '2024-09-11 13:15:28', NULL, NULL),
(12, 2, 'Solikhin', 'PRB', '2024-10-20 17:48:01', NULL, NULL),
(23, 2, 'ehem', 'KC', '2024-10-18 13:15:28', '2024-10-20 22:50:03', NULL),
(24, 53, 'Yuda', 'OKE', '2024-10-20 12:55:00', '2024-10-20 22:56:36', '2024-10-20 22:56:36'),
(25, 2, 'ehem', 'KC', '2024-10-18 13:15:28', '2024-10-21 11:02:25', NULL),
(26, 52, 'Dicky HP', 'KPI', '2024-10-22 01:03:00', '2024-10-21 11:03:31', '2024-10-21 11:03:31');

-- --------------------------------------------------------

--
-- Table structure for table `t_penjualan_detail`
--

CREATE TABLE `t_penjualan_detail` (
  `detail_id` bigint UNSIGNED NOT NULL,
  `penjualan_id` bigint UNSIGNED NOT NULL,
  `barang_id` bigint UNSIGNED NOT NULL,
  `harga` int NOT NULL,
  `jumlah` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_penjualan_detail`
--

INSERT INTO `t_penjualan_detail` (`detail_id`, `penjualan_id`, `barang_id`, `harga`, `jumlah`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 10000001, 10, NULL, '2024-10-20 23:28:55'),
(2, 1, 1, 900000, 12, NULL, '2024-10-20 23:29:30'),
(6, 2, 2, 1000000, 15, NULL, NULL),
(7, 3, 3, 1000000, 16, NULL, NULL),
(31, 12, 23, 2000000, 12, NULL, '2024-10-20 23:29:54'),
(32, 2, 1, 800000, 12, '2024-10-20 23:56:06', '2024-10-20 23:56:06'),
(33, 3, 1, 500000, 2, '2024-10-21 00:05:40', NULL),
(34, 4, 3, 1100000, 1, '2024-10-21 00:05:40', NULL),
(35, 5, 2, 300000, 3, '2024-10-21 00:05:40', NULL),
(36, 3, 2, 300000, 1, '2024-10-21 00:05:40', NULL),
(37, 23, 1, 900000, 7, '2024-10-21 00:15:16', '2024-10-21 00:15:16'),
(38, 3, 1, 500000, 2, '2024-10-21 11:06:41', NULL),
(39, 4, 3, 1100000, 1, '2024-10-21 11:06:41', NULL),
(40, 5, 2, 300000, 3, '2024-10-21 11:06:41', NULL),
(41, 3, 2, 300000, 1, '2024-10-21 11:06:41', NULL),
(42, 25, 1, 900000, 11, '2024-10-21 11:07:32', '2024-10-21 11:07:32');

-- --------------------------------------------------------

--
-- Table structure for table `t_stok`
--

CREATE TABLE `t_stok` (
  `stok_id` bigint UNSIGNED NOT NULL,
  `supplier_id` bigint UNSIGNED NOT NULL,
  `barang_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `stok_tanggal` datetime NOT NULL,
  `stok_jumlah` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_stok`
--

INSERT INTO `t_stok` (`stok_id`, `supplier_id`, `barang_id`, `user_id`, `stok_tanggal`, `stok_jumlah`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2024-10-21 17:54:30', 120, NULL, '2024-10-21 10:54:30'),
(2, 1, 2, 1, '2024-09-11 13:01:56', 100, NULL, NULL),
(4, 1, 4, 1, '2024-09-11 13:01:56', 100, NULL, NULL),
(5, 1, 5, 1, '2024-09-11 13:01:56', 100, NULL, NULL),
(29, 1, 2, 3, '2024-10-19 08:07:49', 200, '2024-10-19 01:07:49', NULL),
(30, 21, 2, 53, '2024-10-19 08:19:19', 111, '2024-10-19 01:16:24', '2024-10-19 01:19:19'),
(31, 1, 2, 3, '2024-10-21 17:56:31', 200, '2024-10-21 10:56:31', NULL),
(32, 22, 1, 55, '2024-10-21 17:57:21', 250, '2024-10-21 10:57:21', '2024-10-21 10:57:21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_barang`
--
ALTER TABLE `m_barang`
  ADD PRIMARY KEY (`barang_id`),
  ADD KEY `m_barang_kategori_id_index` (`kategori_id`);

--
-- Indexes for table `m_kategori`
--
ALTER TABLE `m_kategori`
  ADD PRIMARY KEY (`kategori_id`),
  ADD UNIQUE KEY `m_kategori_kategori_kode_unique` (`kategori_kode`);

--
-- Indexes for table `m_level`
--
ALTER TABLE `m_level`
  ADD PRIMARY KEY (`level_id`),
  ADD UNIQUE KEY `m_level_level_kode_unique` (`level_kode`);

--
-- Indexes for table `m_supplier`
--
ALTER TABLE `m_supplier`
  ADD PRIMARY KEY (`supplier_id`),
  ADD UNIQUE KEY `m_supplier_supplier_kode_unique` (`supplier_kode`);

--
-- Indexes for table `m_user`
--
ALTER TABLE `m_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `m_user_username_unique` (`username`),
  ADD KEY `m_user_level_id_index` (`level_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `t_penjualan`
--
ALTER TABLE `t_penjualan`
  ADD PRIMARY KEY (`penjualan_id`),
  ADD KEY `t_penjualan_user_id_index` (`user_id`);

--
-- Indexes for table `t_penjualan_detail`
--
ALTER TABLE `t_penjualan_detail`
  ADD PRIMARY KEY (`detail_id`),
  ADD KEY `t_penjualan_detail_penjualan_id_index` (`penjualan_id`),
  ADD KEY `t_penjualan_detail_barang_id_index` (`barang_id`);

--
-- Indexes for table `t_stok`
--
ALTER TABLE `t_stok`
  ADD PRIMARY KEY (`stok_id`),
  ADD KEY `t_stok_supplier_id_index` (`supplier_id`),
  ADD KEY `t_stok_barang_id_index` (`barang_id`),
  ADD KEY `t_stok_user_id_index` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `m_barang`
--
ALTER TABLE `m_barang`
  MODIFY `barang_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `m_kategori`
--
ALTER TABLE `m_kategori`
  MODIFY `kategori_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `m_level`
--
ALTER TABLE `m_level`
  MODIFY `level_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `m_supplier`
--
ALTER TABLE `m_supplier`
  MODIFY `supplier_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `m_user`
--
ALTER TABLE `m_user`
  MODIFY `user_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_penjualan`
--
ALTER TABLE `t_penjualan`
  MODIFY `penjualan_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `t_penjualan_detail`
--
ALTER TABLE `t_penjualan_detail`
  MODIFY `detail_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `t_stok`
--
ALTER TABLE `t_stok`
  MODIFY `stok_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `m_barang`
--
ALTER TABLE `m_barang`
  ADD CONSTRAINT `m_barang_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `m_kategori` (`kategori_id`);

--
-- Constraints for table `m_user`
--
ALTER TABLE `m_user`
  ADD CONSTRAINT `m_user_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `m_level` (`level_id`);

--
-- Constraints for table `t_penjualan`
--
ALTER TABLE `t_penjualan`
  ADD CONSTRAINT `t_penjualan_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `m_user` (`user_id`);

--
-- Constraints for table `t_penjualan_detail`
--
ALTER TABLE `t_penjualan_detail`
  ADD CONSTRAINT `t_penjualan_detail_barang_id_foreign` FOREIGN KEY (`barang_id`) REFERENCES `m_barang` (`barang_id`),
  ADD CONSTRAINT `t_penjualan_detail_penjualan_id_foreign` FOREIGN KEY (`penjualan_id`) REFERENCES `t_penjualan` (`penjualan_id`);

--
-- Constraints for table `t_stok`
--
ALTER TABLE `t_stok`
  ADD CONSTRAINT `t_stok_barang_id_foreign` FOREIGN KEY (`barang_id`) REFERENCES `m_barang` (`barang_id`),
  ADD CONSTRAINT `t_stok_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `m_supplier` (`supplier_id`),
  ADD CONSTRAINT `t_stok_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `m_user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
