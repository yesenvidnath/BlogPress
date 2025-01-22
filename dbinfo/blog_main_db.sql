-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2025 at 10:20 AM
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
-- Database: `blog_main_db`
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
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_ID` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_description` text DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_list`
--

CREATE TABLE `email_list` (
  `email_list_ID` bigint(20) UNSIGNED NOT NULL,
  `email_ID` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `gallery_ID` bigint(20) UNSIGNED NOT NULL,
  `doneby` bigint(20) UNSIGNED DEFAULT NULL,
  `image_list_ID` bigint(20) UNSIGNED NOT NULL,
  `page_ID` bigint(20) UNSIGNED NOT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `global_info`
--

CREATE TABLE `global_info` (
  `info_ID` bigint(20) UNSIGNED NOT NULL,
  `doneby` bigint(20) UNSIGNED DEFAULT NULL,
  `phone_numbers_list_ID` bigint(20) UNSIGNED DEFAULT NULL,
  `locations_list_ID` bigint(20) UNSIGNED DEFAULT NULL,
  `email_list_ID` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `image_list`
--

CREATE TABLE `image_list` (
  `image_list_ID` bigint(20) UNSIGNED NOT NULL,
  `image_ID` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(255) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `image_alt_tags` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `image_lists`
--

CREATE TABLE `image_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Table structure for table `locations_list`
--

CREATE TABLE `locations_list` (
  `locations_list_ID` bigint(20) UNSIGNED NOT NULL,
  `location_ID` bigint(20) UNSIGNED NOT NULL,
  `location_url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `menu_items_ID` bigint(20) UNSIGNED NOT NULL,
  `menu_item_ID` bigint(20) UNSIGNED NOT NULL,
  `item` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(4, '2025_01_15_193608_create_categories_table', 1),
(5, '2025_01_15_193609_create_pages_table', 1),
(6, '2025_01_15_193611_create_seo_table', 1),
(7, '2025_01_15_193613_create_image_list_table', 1),
(8, '2025_01_15_193614_create_galleries_table', 1),
(9, '2025_01_15_193617_create_phone_numbers_list_table', 1),
(10, '2025_01_15_193619_create_locations_list_table', 1),
(11, '2025_01_15_193620_create_email_list_table', 1),
(12, '2025_01_15_193622_create_menu_items_table', 1),
(13, '2025_01_15_193623_create_nav_menu_table', 1),
(14, '2025_01_15_193624_create_global_info_table', 1),
(15, '2025_01_15_195608_create_seos_table', 1),
(16, '2025_01_15_195613_create_image_lists_table', 1),
(17, '2025_01_16_085040_add_user_type_and_is_deleted_to_users_table', 1),
(18, '2025_01_16_085704_add_doneby_to_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nav_menu`
--

CREATE TABLE `nav_menu` (
  `menu_ID` bigint(20) UNSIGNED NOT NULL,
  `menu_items_ID` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_ID` bigint(20) UNSIGNED NOT NULL,
  `doneby` bigint(20) UNSIGNED DEFAULT NULL,
  `Time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `meta_tags` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `page_name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `type` enum('Page','Article') NOT NULL,
  `featured_image` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `category_ID` bigint(20) UNSIGNED DEFAULT NULL,
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `phone_numbers_list`
--

CREATE TABLE `phone_numbers_list` (
  `phone_numbers_list_ID` bigint(20) UNSIGNED NOT NULL,
  `phone_number_ID` bigint(20) UNSIGNED NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `phone_number_type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seo`
--

CREATE TABLE `seo` (
  `seo_ID` bigint(20) UNSIGNED NOT NULL,
  `doneby` bigint(20) UNSIGNED DEFAULT NULL,
  `meta_tags` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `page_ID` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seos`
--

CREATE TABLE `seos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `user_type` enum('Admin','ContentWriter','SEO Analyst') NOT NULL DEFAULT 'ContentWriter',
  `is_deleted` tinyint(1) NOT NULL DEFAULT 0,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_ID`);

--
-- Indexes for table `email_list`
--
ALTER TABLE `email_list`
  ADD PRIMARY KEY (`email_list_ID`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`gallery_ID`),
  ADD KEY `galleries_image_list_id_foreign` (`image_list_ID`),
  ADD KEY `galleries_page_id_foreign` (`page_ID`),
  ADD KEY `galleries_doneby_foreign` (`doneby`);

--
-- Indexes for table `global_info`
--
ALTER TABLE `global_info`
  ADD PRIMARY KEY (`info_ID`),
  ADD KEY `global_info_phone_numbers_list_id_foreign` (`phone_numbers_list_ID`),
  ADD KEY `global_info_locations_list_id_foreign` (`locations_list_ID`),
  ADD KEY `global_info_email_list_id_foreign` (`email_list_ID`),
  ADD KEY `global_info_doneby_foreign` (`doneby`);

--
-- Indexes for table `image_list`
--
ALTER TABLE `image_list`
  ADD PRIMARY KEY (`image_list_ID`);

--
-- Indexes for table `image_lists`
--
ALTER TABLE `image_lists`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `locations_list`
--
ALTER TABLE `locations_list`
  ADD PRIMARY KEY (`locations_list_ID`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`menu_items_ID`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nav_menu`
--
ALTER TABLE `nav_menu`
  ADD PRIMARY KEY (`menu_ID`),
  ADD KEY `nav_menu_menu_items_id_foreign` (`menu_items_ID`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_ID`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`),
  ADD KEY `pages_category_id_foreign` (`category_ID`),
  ADD KEY `pages_doneby_foreign` (`doneby`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `phone_numbers_list`
--
ALTER TABLE `phone_numbers_list`
  ADD PRIMARY KEY (`phone_numbers_list_ID`);

--
-- Indexes for table `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`seo_ID`),
  ADD KEY `seo_page_id_foreign` (`page_ID`),
  ADD KEY `seo_doneby_foreign` (`doneby`);

--
-- Indexes for table `seos`
--
ALTER TABLE `seos`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_list`
--
ALTER TABLE `email_list`
  MODIFY `email_list_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `gallery_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `global_info`
--
ALTER TABLE `global_info`
  MODIFY `info_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `image_list`
--
ALTER TABLE `image_list`
  MODIFY `image_list_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `image_lists`
--
ALTER TABLE `image_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `locations_list`
--
ALTER TABLE `locations_list`
  MODIFY `locations_list_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `menu_items_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `nav_menu`
--
ALTER TABLE `nav_menu`
  MODIFY `menu_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `page_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phone_numbers_list`
--
ALTER TABLE `phone_numbers_list`
  MODIFY `phone_numbers_list_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seo`
--
ALTER TABLE `seo`
  MODIFY `seo_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seos`
--
ALTER TABLE `seos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `galleries`
--
ALTER TABLE `galleries`
  ADD CONSTRAINT `galleries_doneby_foreign` FOREIGN KEY (`doneby`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `galleries_image_list_id_foreign` FOREIGN KEY (`image_list_ID`) REFERENCES `image_list` (`image_list_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `galleries_page_id_foreign` FOREIGN KEY (`page_ID`) REFERENCES `pages` (`page_ID`) ON DELETE CASCADE;

--
-- Constraints for table `global_info`
--
ALTER TABLE `global_info`
  ADD CONSTRAINT `global_info_doneby_foreign` FOREIGN KEY (`doneby`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `global_info_email_list_id_foreign` FOREIGN KEY (`email_list_ID`) REFERENCES `email_list` (`email_list_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `global_info_locations_list_id_foreign` FOREIGN KEY (`locations_list_ID`) REFERENCES `locations_list` (`locations_list_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `global_info_phone_numbers_list_id_foreign` FOREIGN KEY (`phone_numbers_list_ID`) REFERENCES `phone_numbers_list` (`phone_numbers_list_ID`) ON DELETE CASCADE;

--
-- Constraints for table `nav_menu`
--
ALTER TABLE `nav_menu`
  ADD CONSTRAINT `nav_menu_menu_items_id_foreign` FOREIGN KEY (`menu_items_ID`) REFERENCES `menu_items` (`menu_items_ID`) ON DELETE CASCADE;

--
-- Constraints for table `pages`
--
ALTER TABLE `pages`
  ADD CONSTRAINT `pages_category_id_foreign` FOREIGN KEY (`category_ID`) REFERENCES `categories` (`category_ID`) ON DELETE CASCADE,
  ADD CONSTRAINT `pages_doneby_foreign` FOREIGN KEY (`doneby`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `seo`
--
ALTER TABLE `seo`
  ADD CONSTRAINT `seo_doneby_foreign` FOREIGN KEY (`doneby`) REFERENCES `users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `seo_page_id_foreign` FOREIGN KEY (`page_ID`) REFERENCES `pages` (`page_ID`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
