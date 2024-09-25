-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 25, 2024 at 06:38 AM
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
(53, '2024_09_11_071310_create_m_user_table', 2);

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
(1, 1, 'KCB', 'Kaca Bening', 200000, 250000, NULL, NULL),
(2, 1, 'KCC', 'Kaca Cermin', 250000, 300000, NULL, NULL),
(3, 1, 'KCH', 'Kaca Hitam', 400000, 450000, NULL, NULL),
(4, 1, 'KCM', 'Kaca Modif Bunga', 500000, 550000, NULL, NULL),
(5, 1, 'KCP', 'Kaca Premium', 600000, 650000, NULL, NULL),
(6, 2, 'ALT', 'Aluminium Tipis', 200000, 240000, NULL, NULL),
(7, 2, 'ALB', 'Aluminuim Tebal', 350000, 400000, NULL, NULL),
(8, 2, 'ALH', 'Aluminuim Hitam', 450000, 450000, NULL, NULL),
(9, 2, 'ALU', 'Aluminuim Bulat', 100000, 150000, NULL, NULL),
(10, 2, 'ALB', 'Aluminuim Besi', 300000, 350000, NULL, NULL),
(11, 3, 'PRK', 'Paku Rivet Kecil', 50000, 750000, NULL, NULL),
(12, 3, 'PRB', 'Paku Rivet Besar', 750000, 100000, NULL, NULL),
(13, 3, 'PRT', 'Paku Rivet Tembok', 750000, 100000, NULL, NULL),
(14, 3, 'PRP', 'Paku Rivet Plastik', 50000, 750000, NULL, NULL),
(15, 3, 'TRK', 'Triplek Putih', 25000, 50000, NULL, NULL);

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
(4, 'LMB', 'Lemari Belajar', NULL, NULL),
(5, 'LMS', 'Lemari Sepatu', NULL, NULL);

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
(1, 'ADM', 'Administrator', NULL, NULL),
(2, 'MNG', 'Manager', NULL, NULL),
(3, 'STF', 'Staff/Kasir', NULL, NULL),
(4, 'CUS', 'Pelanggan', '2024-09-12 05:56:13', NULL);

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
(1, 'KCA', 'Aluminuim Kepanjen', 'Kepanjen', NULL, NULL),
(2, 'MLG', 'Aluminuim Kota Malang', 'Malang', NULL, NULL),
(3, 'BLT', 'Aluminium Blitar', 'Blitar', NULL, NULL);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_user`
--

INSERT INTO `m_user` (`user_id`, `level_id`, `username`, `nama`, `password`, `created_at`, `updated_at`) VALUES
(1, 1, '1', 'admin12', '$2y$12$AbthA4paqmx9i9DTJtZfUuLXzqSLUf6/YdGu9kZMLjFB/5c7hYzvm', NULL, '2024-09-18 04:46:53'),
(2, 2, '2', 'manager11', '$2y$12$XN/NBxHF56J..ASg2wlKNevYkHhPzK2OpdSkY9NpE5NiYM5mHWAdW', NULL, '2024-09-18 04:42:09'),
(3, 3, 'staff', 'Staff/Kasir', '$2y$12$tTylRJFwbidYmf0oz53paewmB8ozK6rlH9a6kmeKGpgXeLfDCjua6', NULL, NULL),
(4, 4, 'customer-1', 'Pelanggan Pertama', '$2y$12$Zvy6ARJ4xSqgaNbFdSK8IepHh4p7OrQt36TaClUcCjVdSigwjP/1O', NULL, '2024-09-11 09:41:20'),
(5, 2, 'manager_dua', 'Manager 2', '$2y$12$iTVMOyrzWT2EP9GdYILH9unelYEEplzkFUr75vhx.Z9kuKyjXuGPa', '2024-09-17 23:58:27', '2024-09-17 23:58:27'),
(28, 2, 'manager22', 'Manager Dua Dua', '$2y$12$uyygr5Pc/B.uMwcBk3y/SOIWw2qlztDUxsy2a3LNdAsJp5cY6ZYOi', '2024-09-18 01:19:51', '2024-09-18 01:19:51'),
(29, 2, 'manager33', 'Manager Tiga Tiga', '$2y$12$EVIbu9SdPWY/OnaFsKzuluUTnc4b2FANTKX77YiQiajImQusjI4iy', '2024-09-18 01:28:27', '2024-09-18 01:28:27'),
(34, 2, 'manager56', 'Manager55', '$2y$12$dhxiOsWbnaZwYrC20fMvW.UF654fgVwSGUT5WomGiqbt2wbpD8s8i', '2024-09-18 01:55:31', '2024-09-18 01:55:31'),
(35, 2, 'manager12', 'Manager11', '$2y$12$ZCokv3OdVdwi1/mu.sFekuey/yOyemKqkwpIedpwEtlHaL/Jsy2Xq', '2024-09-18 01:59:46', '2024-09-18 01:59:46');

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
(1, 3, 'Dicky', 'KCH', '2024-09-11 13:15:28', NULL, NULL),
(2, 3, 'Hanun', 'KCC', '2024-09-11 13:15:28', NULL, NULL),
(3, 3, 'Prasetyo', 'KCB', '2024-09-11 13:15:28', NULL, NULL),
(4, 3, 'Ahmad', 'KCM', '2024-09-11 13:15:28', NULL, NULL),
(5, 3, 'Agta', 'ALB', '2024-09-11 13:15:28', NULL, NULL),
(6, 3, 'Fajrin', 'ALH', '2024-09-11 13:15:28', NULL, NULL),
(7, 3, 'Rozaqi', 'ALU', '2024-09-11 13:15:28', NULL, NULL),
(8, 3, 'Abror', 'ALB', '2024-09-11 13:15:28', NULL, NULL),
(9, 3, 'Amin', 'PRK', '2024-09-11 13:15:28', NULL, NULL),
(10, 3, 'Arya', 'PRB', '2024-09-11 13:15:28', NULL, NULL);

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
(1, 1, 1, 1000000, 10, NULL, NULL),
(2, 1, 1, 1000000, 11, NULL, NULL),
(3, 1, 1, 1000000, 12, NULL, NULL),
(4, 2, 1, 1000000, 13, NULL, NULL),
(5, 2, 1, 1000000, 14, NULL, NULL),
(6, 2, 2, 1000000, 15, NULL, NULL),
(7, 3, 3, 1000000, 16, NULL, NULL),
(8, 3, 3, 1000000, 17, NULL, NULL),
(9, 3, 3, 1000000, 18, NULL, NULL),
(10, 4, 3, 1000000, 19, NULL, NULL),
(11, 4, 4, 1000000, 20, NULL, NULL),
(12, 4, 5, 1000000, 10, NULL, NULL),
(13, 5, 5, 1000000, 10, NULL, NULL),
(14, 5, 6, 1000000, 10, NULL, NULL),
(15, 5, 6, 1000000, 10, NULL, NULL),
(16, 6, 7, 1000000, 10, NULL, NULL),
(17, 6, 7, 1000000, 10, NULL, NULL),
(18, 6, 8, 1000000, 10, NULL, NULL),
(19, 7, 8, 1000000, 10, NULL, NULL),
(20, 7, 8, 1000000, 10, NULL, NULL),
(21, 7, 15, 1000000, 10, NULL, NULL),
(22, 8, 9, 1000000, 10, NULL, NULL),
(23, 8, 9, 1000000, 10, NULL, NULL),
(24, 8, 10, 1000000, 10, NULL, NULL),
(25, 9, 11, 1000000, 10, NULL, NULL),
(26, 9, 11, 1000000, 10, NULL, NULL),
(27, 9, 10, 1000000, 10, NULL, NULL),
(28, 10, 12, 1000000, 10, NULL, NULL),
(29, 10, 13, 1000000, 10, NULL, NULL),
(30, 10, 14, 1000000, 10, NULL, NULL);

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
(1, 1, 1, 1, '2024-09-11 13:01:56', 100, NULL, NULL),
(2, 1, 2, 1, '2024-09-11 13:01:56', 100, NULL, NULL),
(3, 1, 3, 1, '2024-09-11 13:01:56', 100, NULL, NULL),
(4, 1, 4, 1, '2024-09-11 13:01:56', 100, NULL, NULL),
(5, 1, 5, 1, '2024-09-11 13:01:56', 100, NULL, NULL),
(6, 2, 6, 2, '2024-09-11 13:01:56', 100, NULL, NULL),
(7, 2, 7, 2, '2024-09-11 13:01:56', 100, NULL, NULL),
(8, 2, 8, 2, '2024-09-11 13:01:56', 100, NULL, NULL),
(9, 2, 9, 2, '2024-09-11 13:01:56', 100, NULL, NULL),
(10, 2, 10, 2, '2024-09-11 13:01:56', 100, NULL, NULL),
(11, 3, 11, 3, '2024-09-11 13:01:56', 100, NULL, NULL),
(12, 3, 12, 3, '2024-09-11 13:01:56', 100, NULL, NULL),
(13, 3, 13, 3, '2024-09-11 13:01:56', 100, NULL, NULL),
(14, 3, 14, 3, '2024-09-11 13:01:56', 100, NULL, NULL),
(15, 3, 15, 3, '2024-09-11 13:01:56', 100, NULL, NULL);

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
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `m_barang`
--
ALTER TABLE `m_barang`
  MODIFY `barang_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `m_kategori`
--
ALTER TABLE `m_kategori`
  MODIFY `kategori_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `m_level`
--
ALTER TABLE `m_level`
  MODIFY `level_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `m_supplier`
--
ALTER TABLE `m_supplier`
  MODIFY `supplier_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `m_user`
--
ALTER TABLE `m_user`
  MODIFY `user_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_penjualan`
--
ALTER TABLE `t_penjualan`
  MODIFY `penjualan_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `t_penjualan_detail`
--
ALTER TABLE `t_penjualan_detail`
  MODIFY `detail_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `t_stok`
--
ALTER TABLE `t_stok`
  MODIFY `stok_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

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
