-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2023 at 08:05 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `narudzba`
--

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
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product` varchar(255) NOT NULL,
  `amount` double NOT NULL,
  `measure_type` varchar(255) NOT NULL,
  `place_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `product`, `amount`, `measure_type`, `place_id`, `user_id`, `created_at`, `updated_at`, `published_at`) VALUES
(1, 'Banane', 0.5, 'Kg', 2, 1, '2023-08-07 08:26:36', '2023-08-07 08:26:36', NULL),
(2, 'Nivea krema', 1, 'Komad', 1, 2, '2023-08-07 08:33:17', '2023-08-07 08:33:17', NULL),
(3, 'Air Jordan One Panda Dunk', 1, 'Komad', 4, 3, '2023-08-07 08:34:47', '2023-08-07 08:34:47', NULL),
(6, 'ekser', 30, 'komad', 3, 3, '2023-08-07 13:46:06', '2023-08-07 16:46:38', NULL);

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
(17, '2014_10_12_000000_create_users_table', 1),
(18, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(19, '2019_08_19_000000_create_failed_jobs_table', 1),
(20, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(21, '2023_08_07_090330_create_items_table', 1),
(22, '2023_08_07_091433_create_places_table', 1),
(23, '2023_08_07_094311_add_column_last_name_to_users_table', 1),
(24, '2023_08_07_100330_change_name_to_first_name_in_users_table', 2);

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
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 4, 'auth_token', '23e6130786a1bbb41b4020e2f75618faf2bfabb8131740435b2af77c68fc3e35', '[\"*\"]', NULL, NULL, '2023-08-07 14:50:34', '2023-08-07 14:50:34'),
(2, 'App\\Models\\User', 4, 'auth_token', '90bdb803de909485808c36fab56e54bc59a7983d17b110f281e0aa2572bf1a94', '[\"*\"]', NULL, NULL, '2023-08-07 15:08:24', '2023-08-07 15:08:24'),
(3, 'App\\Models\\User', 3, 'auth_token', '5a2fad6e4a6d413468930ad54fd51286daf9e5a27bb1b59426f63ddf52430d24', '[\"*\"]', NULL, NULL, '2023-08-07 15:08:53', '2023-08-07 15:08:53'),
(4, 'App\\Models\\User', 3, 'auth_token', '3e72626141cd7efa0f01869fc39022322b976fb42684e306600779823a55062d', '[\"*\"]', NULL, NULL, '2023-08-07 15:10:12', '2023-08-07 15:10:12'),
(5, 'App\\Models\\User', 3, 'auth_token', 'bff97befbbdc8beaf601359a0d33c00c7c6b092a36fb0cfb1339d5afc0c7bec5', '[\"*\"]', '2023-08-07 16:18:24', NULL, '2023-08-07 15:22:31', '2023-08-07 16:18:24'),
(12, 'App\\Models\\User', 5, 'auth_token', '2659fffa44a243ae1f6cb90af4627a2a7c993283d36bbef89afc73c63f5f6e8c', '[\"*\"]', '2023-08-08 10:25:42', NULL, '2023-08-08 10:01:58', '2023-08-08 10:25:42');

-- --------------------------------------------------------

--
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `place` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `places`
--

INSERT INTO `places` (`id`, `place`, `created_at`, `updated_at`) VALUES
(1, 'DM', '2023-08-07 08:21:48', '2023-08-07 08:21:48'),
(2, 'Maxi', '2023-08-07 08:22:34', '2023-08-07 08:22:34'),
(3, 'Lidl', '2023-08-07 08:22:54', '2023-08-07 08:22:54'),
(4, 'Buzz', '2023-08-07 08:23:10', '2023-08-07 08:23:10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `last_name`) VALUES
(1, 'Ana', 'ana.markovic@gmail.com', NULL, '$2y$10$coBm4SN2O6kBG0zx5B4zouElPN4eNuAB4fcV0WF.8XTthebwkUZcO', NULL, '2023-08-07 08:14:44', '2023-08-07 08:16:09', 'Markovic'),
(2, 'Marko', 'marko.markovic@gmail.com', NULL, '$2y$10$E8S8a6sK5wgFapekshPurutK/DfVFulckPGeYU83S9diIr4M37JbO', NULL, '2023-08-07 08:17:24', '2023-08-07 08:17:24', 'Markovic'),
(3, 'Stefan', 'stefan.markovic@gmail.com', NULL, '$2y$10$SOYHIvPol8BDpK97y7BHHuaDE2sqf/IigLqa3Nyb/aSwERky1sjta', NULL, '2023-08-07 08:18:47', '2023-08-07 08:18:47', 'Markovic'),
(4, 'Nikolina', 'nikolina.markovic@gmail.com', NULL, '$2y$10$pwz1oGMeIJkk6A3UJSqmAe2hDeRSHAsY85syD5DQOXp1ldbtiHKTu', NULL, '2023-08-07 14:50:34', '2023-08-07 14:50:34', 'Markovic'),
(5, 'Vladimir', 'vladimir.markovic@gmail.com', NULL, '$2y$10$azZpNegR51bDYBNvUASgsO1fYNs/8ZSzZdg.wMf39F6nUvJ/c43yW', NULL, '2023-08-07 16:31:47', '2023-08-07 16:31:47', 'Markovic'),
(6, 'Aleksandra', 'aleksandra.markovic@gmail.com', NULL, '$2y$10$I8MR1IimpTwtxvnpH2sRauPEhYTiNv2hD5TZdJDL5wU1kC0OPPX52', NULL, '2023-08-08 15:03:21', '2023-08-08 15:03:21', 'Markovic');

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
-- Indexes for table `items`
--
ALTER TABLE `items`
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
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
