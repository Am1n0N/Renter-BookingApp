-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2023 at 01:39 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rental`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Forest\r\n', '2023-05-05 20:24:34', NULL),
(2, 'Private', '2023-05-05 20:24:34', NULL),
(3, 'Unique', '2023-05-05 20:25:42', NULL),
(4, 'New\r\n', '2023-05-05 20:25:42', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `houses`
--

CREATE TABLE `houses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `rating` decimal(2,1) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `houses`
--

INSERT INTO `houses` (`id`, `title`, `description`, `date`, `image`, `price`, `rating`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Luxury Villa Indu Siam', 'Entire Villa • 5 Rooms • 10 Guests • 5 Beds • 6 Baths', 'Dec 12 - 17 • 5 Nights', 'house1.jpg', '350.00', '4.5', 1, '2023-05-05 20:34:47', '2023-05-05 20:34:47'),
(2, 'Villa Kelusa', 'Entire Villa • 4 Rooms • 8 Guests • 4 Beds • 4 Baths', 'Dec 20 - 25 • 5 Nights', 'house2.jpg', '450.00', '4.8', 1, '2023-05-05 20:34:47', '2023-05-05 20:34:47'),
(3, 'Griya Atma', 'Entire Villa • 3 Rooms • 6 Guests • 3 Beds • 3 Baths', 'Jan 10 - 13 • 3 Nights', 'house3.jpg', '250.00', '4.2', 1, '2023-05-05 20:34:47', '2023-05-05 20:34:47'),
(4, 'Villa Griya Aditi', 'Entire Villa • 3 Rooms • 6 Guests • 3 Beds • 3 Baths', 'Feb 5 - 10 • 5 Nights', 'house4.jpg', '320.00', '4.4', 2, '2023-05-05 20:34:47', '2023-05-05 20:34:47'),
(5, 'Palm Luxury Villa', 'Entire Villa • 4 Rooms • 8 Guests • 4 Beds • 4 Baths', 'Mar 12 - 16 • 4 Nights', 'house5.jpg', '480.00', '4.9', 2, '2023-05-05 20:34:47', '2023-05-05 20:34:47'),
(6, 'Bali Ethnic Villa', 'Entire Villa • 3 Rooms • 6 Guests • 3 Beds • 3 Baths', 'Apr 1 - 5 • 4 Nights', 'house1.jpg', '280.00', '4.3', 3, '2023-05-05 20:34:47', '2023-05-05 20:34:47'),
(7, 'Griya Santrian Beach House', 'Entire House • 5 Rooms • 10 Guests • 5 Beds • 5 Baths', 'May 20 - 25 • 5 Nights', 'house2.jpg', '400.00', '4.6', 3, '2023-05-05 20:34:47', '2023-05-05 20:34:47'),
(8, 'Villa Taman Ahimsa', 'Entire Villa • 7 Rooms • 14 Guests • 7 Beds • 7 Baths', 'Jun 10 - 15 • 5 Nights', 'house3.jpg', '800.00', '4.9', 3, '2023-05-05 20:34:47', '2023-05-05 20:34:47'),
(9, 'Villa Mandalay', 'Entire Villa • 6 Rooms • 12 Guests • 6 Beds • 6 Baths', 'Jul 20 - 25 • 5 Nights', 'house4.jpg', '700.00', '4.8', 3, '2023-05-05 20:34:47', '2023-05-05 20:34:47'),
(10, 'The Beach Villa', 'Entire Villa • 5 Rooms • 10 Guests • 5 Beds • 5 Baths', 'Aug 5 - 10 • 5 Nights', 'house5.jpg', '600.00', '4.7', 4, '2023-05-05 20:34:47', '2023-05-05 20:34:47'),
(11, 'Villa Sapi', 'Entire Villa • 6 Rooms • 12 Guests • 6 Beds • 6 Baths', 'Sep 1 - 5 • 4 Nights', 'house1.jpg', '900.00', '5.0', 4, '2023-05-05 20:34:47', '2023-05-05 20:34:47'),
(12, 'The Garden Villa', 'Entire Villa • 4 Rooms • 8 Guests • 4 Beds • 4 Baths', 'Oct 10 - 15 • 5 Nights', 'house3.jpg', '500.00', '4.6', 4, '2023-05-05 20:37:28', '2023-05-05 20:37:28'),
(13, 'Villa Sunrise', 'Entire Villa • 3 Rooms • 6 Guests • 3 Beds • 3 Baths', 'Nov 1 - 7 • 6 Nights', 'house1.jpg', '300.00', '4.2', 3, '2023-05-05 20:37:28', '2023-05-05 20:37:28'),
(14, 'The Jungle Retreat', 'Entire Villa • 5 Rooms • 10 Guests • 5 Beds • 5 Baths', 'Dec 5 - 10 • 5 Nights', 'house2.jpg', '550.00', '4.7', 4, '2023-05-05 20:37:28', '2023-05-05 20:37:28'),
(15, 'Villa Lotus', 'Entire Villa • 2 Rooms • 4 Guests • 2 Beds • 2 Baths', 'Jan 15 - 18 • 3 Nights', 'house4.jpg', '200.00', '4.0', 2, '2023-05-05 20:37:28', '2023-05-05 20:37:28'),
(16, 'Villa Mimpi', 'Entire Villa • 4 Rooms • 8 Guests • 4 Beds • 4 Baths', 'Feb 20 - 25 • 5 Nights', 'house5.jpg', '400.00', '4.5', 1, '2023-05-05 20:37:28', '2023-05-05 20:37:28'),
(17, 'The Cliff Villa', 'Entire Villa • 6 Rooms • 12 Guests • 6 Beds • 6 Baths', 'Mar 15 - 20 • 5 Nights', 'house1.jpg', '650.00', '4.8', 1, '2023-05-05 20:37:28', '2023-05-05 20:37:28'),
(18, 'Villa Bunga', 'Entire Villa • 3 Rooms • 6 Guests • 3 Beds • 3 Baths', 'Apr 10 - 15 • 5 Nights', 'house2.jpg', '280.00', '4.2', 4, '2023-05-05 20:37:28', '2023-05-05 20:37:28'),
(19, 'The Seaside Villa', 'Entire Villa • 4 Rooms • 8 Guests • 4 Beds • 4 Baths', 'May 5 - 10 • 5 Nights', 'house3.jpg', '450.00', '4.6', 3, '2023-05-05 20:37:28', '2023-05-05 20:37:28'),
(20, 'Villa Surya', 'Entire Villa • 5 Rooms • 10 Guests • 5 Beds • 5 Baths', 'Jun 1 - 7 • 6 Nights', 'house4.jpg', '550.00', '4.7', 2, '2023-05-05 20:37:28', '2023-05-05 20:37:28'),
(21, 'The Oceanfront Villa', 'Entire Villa • 7 Rooms • 14 Guests • 7 Beds • 7 Baths', 'Jul 15 - 20 • 5 Nights', 'house5.jpg', '900.00', '5.0', 1, '2023-05-05 20:37:28', '2023-05-05 20:37:28');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(23, '2014_10_12_000000_create_users_table', 1),
(24, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(25, '2019_08_19_000000_create_failed_jobs_table', 1),
(26, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(27, '2023_05_05_194550_create_houses_table', 2);

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
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'auth_token', '58d1a43b2a5b27836a98e5c06133f19ea63cc3ddedf4509ab659e1572afa989c', '[\"*\"]', NULL, NULL, '2023-05-06 09:50:48', '2023-05-06 09:50:48'),
(2, 'App\\Models\\User', 2, 'auth_token', 'c3951f8deb5d75e6786b80804a78ccd508a373f503ca29247e3e2ffa3699653d', '[\"*\"]', NULL, NULL, '2023-05-06 10:01:17', '2023-05-06 10:01:17'),
(3, 'App\\Models\\User', 3, 'auth_token', '180b12e2420685abdc75ba2837c0265eb64228155d65154dbcba2d973e775604', '[\"*\"]', NULL, NULL, '2023-05-06 10:12:03', '2023-05-06 10:12:03'),
(4, 'App\\Models\\User', 3, 'auth_token', 'f635e8505d727d24cb1a0b25ccfcd6cb7f66d1b99f99cdbd049c30f24d7642f7', '[\"*\"]', NULL, NULL, '2023-05-06 10:23:31', '2023-05-06 10:23:31'),
(5, 'App\\Models\\User', 1, 'auth_token', '2f17d8eb106735a965f92490dbd0c2af9013eccddde51616ae53179c4a5586e9', '[\"*\"]', NULL, NULL, '2023-05-06 10:23:58', '2023-05-06 10:23:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'mohamed amine', 'mohamed5@email.com', NULL, '$2y$10$L3xEeRbXMr4LtFZZJp5CSe.lFB75DHE6RkfNtf0xZD5fYmh54ddlC', NULL, '2023-05-06 09:50:48', '2023-05-06 09:50:48'),
(3, 'amine', 'mohamedamine.rouissi@itbs.tn', NULL, '$2y$10$H7y8EEAkXx0ZtCA/OPCfvuITdxZi5Q0JgvPcsig6uZ0MboCZ5I/6S', NULL, '2023-05-06 10:12:03', '2023-05-06 10:12:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `houses_category_id_foreign` (`category_id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `houses`
--
ALTER TABLE `houses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `houses`
--
ALTER TABLE `houses`
  ADD CONSTRAINT `houses_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
