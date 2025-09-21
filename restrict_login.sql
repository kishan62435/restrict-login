-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2025 at 02:00 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restrict_login`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_09_20_132704_create_personal_access_tokens_table', 1),
(5, '2025_09_20_181138_add_column_in_personal_access_tokens_table', 1),
(6, '2025_09_20_183839_add_role_column_in_users_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `device_info` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`, `is_active`, `device_info`, `ip_address`) VALUES
(1, 'App\\Models\\User', 1, 'auth_token', '9d985c0f64c125afb2ccffdd2df3300b8d996e10572b03d166ee943f19bd998d', '[\"*\"]', '2025-09-20 14:32:56', NULL, '2025-09-20 14:30:16', '2025-09-21 06:19:16', 0, NULL, NULL),
(2, 'App\\Models\\User', 1, 'auth_token', 'a63990a8238d96e71a75f2ffc5d354da25f907dda9124370252fb312e4d522e1', '[\"*\"]', '2025-09-20 14:33:51', NULL, '2025-09-20 14:32:54', '2025-09-21 06:19:16', 0, NULL, NULL),
(3, 'App\\Models\\User', 2, 'auth_token', '112394f7df51e7414c89d1a9f0b10146af9cb216cc2d7448c1bafb2135c2953d', '[\"*\"]', '2025-09-20 14:35:02', NULL, '2025-09-20 14:34:45', '2025-09-21 06:23:34', 0, NULL, NULL),
(4, 'App\\Models\\User', 2, 'auth_token', 'c1bf6db5ddf33edcef16f4b408e64630ecc8f1fab0b2d91d8bef40459c9ce4bc', '[\"*\"]', NULL, NULL, '2025-09-20 14:44:45', '2025-09-21 06:23:34', 0, NULL, NULL),
(5, 'App\\Models\\User', 2, 'auth_token', 'ae6d55292ea6d299c9adc138728145c83c070ee95557e26bbdd7a440fa47cf22', '[\"*\"]', NULL, NULL, '2025-09-20 15:53:30', '2025-09-21 06:23:34', 0, NULL, NULL),
(6, 'App\\Models\\User', 2, 'auth_token', 'b38a117c1254edf49386f49a5c2bfdb4c710a2262141f28991e67c81df0f6acc', '[\"*\"]', NULL, NULL, '2025-09-20 15:59:04', '2025-09-21 06:23:34', 0, NULL, NULL),
(7, 'App\\Models\\User', 2, 'auth_token', 'ab59450b7297b2f28cb4eee1ac880c571a3f62d89ad3ee705a283182bf210b6a', '[\"*\"]', NULL, NULL, '2025-09-20 16:01:04', '2025-09-21 06:23:34', 0, NULL, NULL),
(8, 'App\\Models\\User', 2, 'auth_token', '3a9e5f0289fe42adaf129afbe67158481069195b6a528a2bc7a612abae05bf79', '[\"*\"]', NULL, NULL, '2025-09-20 16:01:50', '2025-09-21 06:23:34', 0, NULL, NULL),
(9, 'App\\Models\\User', 2, 'auth_token', '102cc18542fdecbedd987738e7f0080edb3dd32b21cc8f9b9e6be0d3b57e6879', '[\"*\"]', NULL, NULL, '2025-09-20 16:02:39', '2025-09-21 06:23:34', 0, NULL, NULL),
(10, 'App\\Models\\User', 2, 'auth_token', '4655e90bdef48dfb1e932224f0623292a55f0b4f12e5e1e71b3698d02ba43729', '[\"*\"]', NULL, NULL, '2025-09-20 16:03:09', '2025-09-21 06:23:34', 0, NULL, NULL),
(11, 'App\\Models\\User', 2, 'auth_token', '0b57355bb5d9943bc95e214febe7f1716e1c445852a968f6dad0e1eac937c4bf', '[\"*\"]', NULL, NULL, '2025-09-20 16:03:21', '2025-09-21 06:23:34', 0, NULL, NULL),
(12, 'App\\Models\\User', 2, 'auth_token', '78d9689d6861cbccb440d024824a35cde651f88f5b89b73e13ea3f049174393d', '[\"*\"]', NULL, NULL, '2025-09-20 22:17:26', '2025-09-21 06:23:34', 0, NULL, NULL),
(13, 'App\\Models\\User', 2, 'auth_token', 'e418052edf953044f2ab0624a4e9297d6a4e3440412b799c766ee006af82582e', '[\"*\"]', NULL, NULL, '2025-09-20 22:26:50', '2025-09-21 06:23:34', 0, NULL, NULL),
(14, 'App\\Models\\User', 2, 'auth_token', '8a3793b6dc46567e45fd029297a55a69f33e5f6ec0563abcbe5ba3749f1ed23c', '[\"*\"]', NULL, NULL, '2025-09-20 22:31:01', '2025-09-21 06:23:34', 0, NULL, NULL),
(15, 'App\\Models\\User', 2, 'auth_token', 'd2a4e4c8333066e5acb9e7c480f41be0e8c0b490c85344f41e65aafc4d50da77', '[\"*\"]', NULL, NULL, '2025-09-20 22:41:23', '2025-09-21 06:23:34', 0, NULL, NULL),
(16, 'App\\Models\\User', 2, 'auth_token', 'aba9aeeb3ae15e1cde26d9500607d9ca6110b5dcda041e8460df03a4916969c7', '[\"*\"]', NULL, NULL, '2025-09-20 22:55:23', '2025-09-21 06:23:34', 0, NULL, NULL),
(17, 'App\\Models\\User', 2, 'auth_token', '0e9f5201363472a90bcb9b56809eef2447a91a668f9d4ac17c78bfd15b4109d8', '[\"*\"]', NULL, NULL, '2025-09-20 22:57:51', '2025-09-21 06:23:34', 0, NULL, NULL),
(18, 'App\\Models\\User', 2, 'auth_token', '3e9d4ea4e8fa940e567ccd904cd7a015749ed051b1662c3795b691316ab9a6a4', '[\"*\"]', NULL, NULL, '2025-09-20 22:58:43', '2025-09-21 06:23:34', 0, NULL, NULL),
(19, 'App\\Models\\User', 2, 'auth_token', '48808968afe1bd5796ae4a1df426b2556ebe28355bc3a45dc50f76811325810a', '[\"*\"]', '2025-09-21 06:01:52', NULL, '2025-09-20 23:01:45', '2025-09-21 06:23:34', 0, NULL, NULL),
(20, 'App\\Models\\User', 2, 'auth_token', '9bdc45c0d91444d585829bdae644908a9f24b7899bb9164b091ef40c569652b3', '[\"*\"]', NULL, NULL, '2025-09-20 23:02:55', '2025-09-21 06:23:34', 0, NULL, NULL),
(21, 'App\\Models\\User', 2, 'auth_token', '5a79a647ad5c4531933e28011aab32b078b164fff36cb7a004d0f084e3311ca2', '[\"*\"]', NULL, NULL, '2025-09-20 23:06:11', '2025-09-21 06:23:34', 0, NULL, NULL),
(22, 'App\\Models\\User', 2, 'auth_token', '99f844184959fbc93560a77f7a62d68981f23afe716b0db6ac44777f41807731', '[\"*\"]', NULL, NULL, '2025-09-20 23:06:41', '2025-09-21 06:23:34', 0, NULL, NULL),
(23, 'App\\Models\\User', 2, 'auth_token', 'ffe7a8b3356e0c5f20c4e66b2e22efd15c4037b09f1669483918f0863f674603', '[\"*\"]', NULL, NULL, '2025-09-20 23:08:27', '2025-09-21 06:23:34', 0, NULL, NULL),
(24, 'App\\Models\\User', 2, 'auth_token', 'bbce45d36aaf8f874e1eff0fba3a007baa471f696f1faf5fa287242189bb83ac', '[\"*\"]', NULL, NULL, '2025-09-20 23:11:40', '2025-09-21 06:23:34', 0, NULL, NULL),
(25, 'App\\Models\\User', 2, 'auth_token', 'da592ff8a73e7fbbac78026e3e5393b7d2646a6e981fc3f7db52da8adea728b9', '[\"*\"]', NULL, NULL, '2025-09-20 23:14:29', '2025-09-21 06:23:34', 0, NULL, NULL),
(26, 'App\\Models\\User', 2, 'auth_token', 'edaa2767b12b8a212e7bd32c9fd6176aa801e222b8e3ef215d7e4ac26b522906', '[\"*\"]', NULL, NULL, '2025-09-20 23:15:07', '2025-09-21 06:23:34', 0, NULL, NULL),
(27, 'App\\Models\\User', 2, 'auth_token', '5b69c4617af74b3c7e2349bf30d7c5a81ea8c985312576f0a9118fee52799a0e', '[\"*\"]', '2025-09-21 06:02:26', NULL, '2025-09-20 23:16:53', '2025-09-21 06:23:34', 0, NULL, NULL),
(28, 'App\\Models\\User', 2, 'auth_token', '5b2caf36b933fe6e5d3441ce420581d43510b561c354b116f916781b99901126', '[\"*\"]', '2025-09-21 05:44:46', NULL, '2025-09-21 05:42:53', '2025-09-21 06:23:34', 0, NULL, NULL),
(29, 'App\\Models\\User', 2, 'auth_token', '7acc3c83fe6add62a0f55d622b60424436022d649b1e81bf5335b8e91ad8922d', '[\"*\"]', '2025-09-21 06:03:07', NULL, '2025-09-21 06:02:02', '2025-09-21 06:23:34', 0, NULL, NULL),
(30, 'App\\Models\\User', 2, 'auth_token', '1347e598637009bf6185d022ba08e3bb478da7a71f2cae2cff0a07e91b350ec9', '[\"*\"]', '2025-09-21 06:08:22', NULL, '2025-09-21 06:02:58', '2025-09-21 06:23:34', 0, NULL, NULL),
(31, 'App\\Models\\User', 2, 'auth_token', '6a59b2840b7f4ee3926d8772a27a5506d1d5edfdd300d5a4a7812fb133672eb4', '[\"*\"]', '2025-09-21 06:10:22', NULL, '2025-09-21 06:08:18', '2025-09-21 06:23:34', 0, NULL, NULL),
(32, 'App\\Models\\User', 1, 'auth_token', '733e013b86dc5bba83547452b92c804e7eca3ba3e6b82f612854fc4b6ea519a1', '[\"*\"]', '2025-09-21 06:11:22', NULL, '2025-09-21 06:10:42', '2025-09-21 06:19:16', 0, NULL, NULL),
(33, 'App\\Models\\User', 1, 'auth_token', '699fbc8cbee8900056476f602c3c0ecac0aba7bb45527048cbecfcaceb696493', '[\"*\"]', '2025-09-21 06:11:32', NULL, '2025-09-21 06:11:18', '2025-09-21 06:19:16', 0, NULL, NULL),
(34, 'App\\Models\\User', 1, 'auth_token', '7656c29899bd375cc8c338cd715f5398ccfc7f5203f1ce3476f6aceb17c5ed9e', '[\"*\"]', '2025-09-21 06:19:25', NULL, '2025-09-21 06:19:16', '2025-09-21 06:19:25', 1, NULL, NULL),
(35, 'App\\Models\\User', 2, 'auth_token', '8be2dd051b0e605ec2fa8e57d6d6b9f82e66b5456a90d7dfe0ea0f5e0cfffb12', '[\"*\"]', '2025-09-21 06:20:42', NULL, '2025-09-21 06:19:41', '2025-09-21 06:23:34', 0, NULL, NULL),
(36, 'App\\Models\\User', 2, 'auth_token', 'b53effa6d13d7400fe3f0d15239e0dda223a0d68f2ca9ea84b314c31e4f1a396', '[\"*\"]', '2025-09-21 06:22:41', NULL, '2025-09-21 06:20:15', '2025-09-21 06:23:34', 0, NULL, NULL),
(37, 'App\\Models\\User', 2, 'auth_token', '0eb72057f06a773521c3febaa946f535de721b5d802a42f0e06e2d7230ba7b5a', '[\"*\"]', '2025-09-21 06:23:20', NULL, '2025-09-21 06:21:26', '2025-09-21 06:23:34', 0, NULL, NULL),
(38, 'App\\Models\\User', 2, 'auth_token', 'c39e51c3350932e69db44ab42df71cfc54c8316b4f9f0fb7c83bbd0315570abc', '[\"*\"]', '2025-09-21 06:23:41', NULL, '2025-09-21 06:23:09', '2025-09-21 06:23:41', 0, NULL, NULL),
(39, 'App\\Models\\User', 2, 'auth_token', 'aa8d8e9ec0d8f173d68ba4acb8b185ffbb0281af0a3e70e8cc4f0f4168179761', '[\"*\"]', '2025-09-21 06:24:11', NULL, '2025-09-21 06:23:34', '2025-09-21 06:24:11', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'Beulah Bruen I', 'Dusty55@yahoo.com', NULL, '$2y$12$GaQeJZOg2mrBu/ROKTK/gOd0LpmzM6qmZGwSgfwjxPEdxTos6KJFm', NULL, '2025-09-20 14:21:34', '2025-09-20 14:21:34', 'user'),
(2, 'Enrique Nikolaus', 'Elvie31@yahoo.com', NULL, '$2y$12$wUHD/e2WJtptEsC94hIrqe3B8dsctlrHJsk.xAplXaFnOkCvJ0M.a', NULL, '2025-09-20 14:34:21', '2025-09-20 14:34:21', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`),
  ADD KEY `personal_access_tokens_expires_at_index` (`expires_at`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
