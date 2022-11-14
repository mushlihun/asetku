-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2022 at 10:59 AM
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
-- Database: `asetku`
--

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `danger_level` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`id`, `name`, `description`, `created_at`, `updated_at`, `deleted_at`, `danger_level`) VALUES
(1, 'gloves', 'gloves', '2022-11-14 02:47:46', '2022-11-14 02:47:46', NULL, 0),
(2, 'masks', 'masks', '2022-11-14 02:47:46', '2022-11-14 02:47:46', NULL, 0),
(3, 'respirators', 'respirators', '2022-11-14 02:47:46', '2022-11-14 02:47:46', NULL, 0),
(4, 'protective overalls', 'protective overalls', '2022-11-14 02:47:46', '2022-11-14 02:47:46', NULL, 0),
(5, 'protective glasses', 'protective glasses', '2022-11-14 02:47:46', '2022-11-14 02:47:46', NULL, 0);

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
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(3, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(4, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(5, '2016_06_01_000004_create_oauth_clients_table', 1),
(6, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(7, '2020_03_31_000001_create_permissions_table', 1),
(8, '2020_03_31_000002_create_roles_table', 1),
(9, '2020_03_31_000003_create_users_table', 1),
(10, '2020_03_31_000004_create_assets_table', 1),
(11, '2020_03_31_000005_create_teams_table', 1),
(12, '2020_03_31_000006_create_stocks_table', 1),
(13, '2020_03_31_000007_create_transactions_table', 1),
(14, '2020_03_31_000008_create_permission_role_pivot_table', 1),
(15, '2020_03_31_000009_create_role_user_pivot_table', 1),
(16, '2020_03_31_000010_add_relationship_fields_to_users_table', 1),
(17, '2020_03_31_000011_add_relationship_fields_to_stocks_table', 1),
(18, '2020_03_31_000012_add_relationship_fields_to_transactions_table', 1),
(19, '2020_03_31_102945_make_asset_and_team_unique_in_stocks_table', 1),
(20, '2020_04_01_055439_add_danger_level_field_to_assets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'user_management_access', NULL, NULL, NULL),
(2, 'permission_create', NULL, NULL, NULL),
(3, 'permission_edit', NULL, NULL, NULL),
(4, 'permission_show', NULL, NULL, NULL),
(5, 'permission_delete', NULL, NULL, NULL),
(6, 'permission_access', NULL, NULL, NULL),
(7, 'role_create', NULL, NULL, NULL),
(8, 'role_edit', NULL, NULL, NULL),
(9, 'role_show', NULL, NULL, NULL),
(10, 'role_delete', NULL, NULL, NULL),
(11, 'role_access', NULL, NULL, NULL),
(12, 'user_create', NULL, NULL, NULL),
(13, 'user_edit', NULL, NULL, NULL),
(14, 'user_show', NULL, NULL, NULL),
(15, 'user_delete', NULL, NULL, NULL),
(16, 'user_access', NULL, NULL, NULL),
(17, 'asset_create', NULL, NULL, NULL),
(18, 'asset_edit', NULL, NULL, NULL),
(19, 'asset_show', NULL, NULL, NULL),
(20, 'asset_delete', NULL, NULL, NULL),
(21, 'asset_access', NULL, NULL, NULL),
(22, 'team_create', NULL, NULL, NULL),
(23, 'team_edit', NULL, NULL, NULL),
(24, 'team_show', NULL, NULL, NULL),
(25, 'team_delete', NULL, NULL, NULL),
(26, 'team_access', NULL, NULL, NULL),
(27, 'stock_create', NULL, NULL, NULL),
(28, 'stock_edit', NULL, NULL, NULL),
(29, 'stock_show', NULL, NULL, NULL),
(30, 'stock_delete', NULL, NULL, NULL),
(31, 'stock_access', NULL, NULL, NULL),
(32, 'transaction_create', NULL, NULL, NULL),
(33, 'transaction_edit', NULL, NULL, NULL),
(34, 'transaction_show', NULL, NULL, NULL),
(35, 'transaction_delete', NULL, NULL, NULL),
(36, 'transaction_access', NULL, NULL, NULL),
(37, 'profile_password_edit', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`role_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(2, 22),
(2, 23),
(2, 24),
(2, 25),
(2, 26),
(2, 27),
(2, 28),
(2, 29),
(2, 30),
(2, 31),
(2, 32),
(2, 33),
(2, 34),
(2, 35),
(2, 36),
(2, 37);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', NULL, NULL, NULL),
(2, 'User', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2);

-- --------------------------------------------------------

--
-- Table structure for table `stocks`
--

CREATE TABLE `stocks` (
  `id` int(10) UNSIGNED NOT NULL,
  `current_stock` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL,
  `team_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stocks`
--

INSERT INTO `stocks` (`id`, `current_stock`, `created_at`, `updated_at`, `deleted_at`, `asset_id`, `team_id`) VALUES
(1, 0, '2022-11-14 02:47:46', '2022-11-14 02:47:46', NULL, 1, 1),
(2, 0, '2022-11-14 02:47:46', '2022-11-14 02:47:46', NULL, 1, 2),
(3, 0, '2022-11-14 02:47:46', '2022-11-14 02:47:46', NULL, 1, 3),
(4, 0, '2022-11-14 02:47:46', '2022-11-14 02:47:46', NULL, 1, 4),
(5, 0, '2022-11-14 02:47:46', '2022-11-14 02:47:46', NULL, 1, 5),
(6, 0, '2022-11-14 02:47:46', '2022-11-14 02:47:46', NULL, 2, 1),
(7, 0, '2022-11-14 02:47:46', '2022-11-14 02:47:46', NULL, 2, 2),
(8, 0, '2022-11-14 02:47:46', '2022-11-14 02:47:46', NULL, 2, 3),
(9, 0, '2022-11-14 02:47:46', '2022-11-14 02:47:46', NULL, 2, 4),
(10, 0, '2022-11-14 02:47:46', '2022-11-14 02:47:46', NULL, 2, 5),
(11, 0, '2022-11-14 02:47:46', '2022-11-14 02:47:46', NULL, 3, 1),
(12, 0, '2022-11-14 02:47:46', '2022-11-14 02:47:46', NULL, 3, 2),
(13, 0, '2022-11-14 02:47:46', '2022-11-14 02:47:46', NULL, 3, 3),
(14, 0, '2022-11-14 02:47:46', '2022-11-14 02:47:46', NULL, 3, 4),
(15, 0, '2022-11-14 02:47:46', '2022-11-14 02:47:46', NULL, 3, 5),
(16, 0, '2022-11-14 02:47:46', '2022-11-14 02:47:46', NULL, 4, 1),
(17, 0, '2022-11-14 02:47:46', '2022-11-14 02:47:46', NULL, 4, 2),
(18, 0, '2022-11-14 02:47:46', '2022-11-14 02:47:46', NULL, 4, 3),
(19, 0, '2022-11-14 02:47:46', '2022-11-14 02:47:46', NULL, 4, 4),
(20, 0, '2022-11-14 02:47:46', '2022-11-14 02:47:46', NULL, 4, 5),
(21, 0, '2022-11-14 02:47:46', '2022-11-14 02:47:46', NULL, 5, 1),
(22, 0, '2022-11-14 02:47:46', '2022-11-14 02:47:46', NULL, 5, 2),
(23, 0, '2022-11-14 02:47:46', '2022-11-14 02:47:46', NULL, 5, 3),
(24, 0, '2022-11-14 02:47:46', '2022-11-14 02:47:46', NULL, 5, 4),
(25, 0, '2022-11-14 02:47:46', '2022-11-14 02:47:46', NULL, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Hospital 246', '2022-11-14 02:47:45', '2022-11-14 02:47:45', NULL),
(2, 'Hospital 700', '2022-11-14 02:47:45', '2022-11-14 02:47:45', NULL),
(3, 'Hospital 714', '2022-11-14 02:47:45', '2022-11-14 02:47:45', NULL),
(4, 'Hospital 411', '2022-11-14 02:47:46', '2022-11-14 02:47:46', NULL),
(5, 'Hospital 593', '2022-11-14 02:47:46', '2022-11-14 02:47:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `asset_id` int(10) UNSIGNED NOT NULL,
  `team_id` int(10) UNSIGNED DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `team_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`, `team_id`) VALUES
(1, 'Admin', 'admin@admin.com', NULL, '$2y$10$KjopsXqbCq1NrrGYJe7rr./68LzZSGCas5XxBHHbG.9AF4mc3GPR.', NULL, NULL, NULL, NULL, NULL),
(2, 'Director 246', 'director246@gmail.com', '2022-11-14 09:47:45', '$2y$10$semZSH2xWmM.1hYJZe8gvOXt1vwJ.ZpJg5ZQgbYHX0POKcwgLo5Em', NULL, '2022-11-14 02:47:45', '2022-11-14 02:47:45', NULL, 1),
(3, 'Doctor 246', 'doctor246@gmail.com', '2022-11-14 09:47:45', '$2y$10$7tUZj.cLAPHAEd/xfqREOuM15RMeLC74JJ437IslrItS8YE6MjArm', NULL, '2022-11-14 02:47:45', '2022-11-14 02:47:45', NULL, 1),
(4, 'Director 700', 'director700@gmail.com', '2022-11-14 09:47:45', '$2y$10$89WF9aWKKUER3IczQ2lS3OXaFvyVhko68kFe21.pVBHBc7PBo.1..', NULL, '2022-11-14 02:47:45', '2022-11-14 02:47:45', NULL, 2),
(5, 'Doctor 700', 'doctor700@gmail.com', '2022-11-14 09:47:45', '$2y$10$OMUmdinAVQqtU.4ZyFOBN.5vFQ.G379uoZue49wVTpcHKeG4RaIn.', NULL, '2022-11-14 02:47:45', '2022-11-14 02:47:45', NULL, 2),
(6, 'Director 714', 'director714@gmail.com', '2022-11-14 09:47:45', '$2y$10$NieYXUWBLjNvKsdxdpYdfukO/lUB2nqkZQcTqyH3XNydII1SlWMNm', NULL, '2022-11-14 02:47:45', '2022-11-14 02:47:45', NULL, 3),
(7, 'Doctor 714', 'doctor714@gmail.com', '2022-11-14 09:47:46', '$2y$10$uBvy88UOgwQyMsSg00Ccd.Pc5I9PZrI8Ve0svMBBAs5EvHSt3MC/u', NULL, '2022-11-14 02:47:46', '2022-11-14 02:47:46', NULL, 3),
(8, 'Director 411', 'director411@gmail.com', '2022-11-14 09:47:46', '$2y$10$3GI0c9mz/nEwTzutSmDi.Om2dJkoF6xQigNuRqxFmGB9FgDNjDEIy', NULL, '2022-11-14 02:47:46', '2022-11-14 02:47:46', NULL, 4),
(9, 'Doctor 411', 'doctor411@gmail.com', '2022-11-14 09:47:46', '$2y$10$Io9WnPs65gxXPeo1E14Qn.7EmYGXrYIcfhANl.CYQJ89BfBmZNgLq', NULL, '2022-11-14 02:47:46', '2022-11-14 02:47:46', NULL, 4),
(10, 'Director 593', 'director593@gmail.com', '2022-11-14 09:47:46', '$2y$10$r4oU1eTiLHC9Tfkbw4NhW.qyvM4YbXgXmQkz3UaS7n/c33GF3Dit6', NULL, '2022-11-14 02:47:46', '2022-11-14 02:47:46', NULL, 5),
(11, 'Doctor 593', 'doctor593@gmail.com', '2022-11-14 09:47:46', '$2y$10$W3RHTK9LFB0Ry0Ee71oxNuAedOIm0n6T6UiqfkAJG1kFgtDElivAu', NULL, '2022-11-14 02:47:46', '2022-11-14 02:47:46', NULL, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD KEY `role_id_fk_1230843` (`role_id`),
  ADD KEY `permission_id_fk_1230843` (`permission_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD KEY `user_id_fk_1230852` (`user_id`),
  ADD KEY `role_id_fk_1230852` (`role_id`);

--
-- Indexes for table `stocks`
--
ALTER TABLE `stocks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `stocks_asset_id_team_id_deleted_at_unique` (`asset_id`,`team_id`,`deleted_at`),
  ADD KEY `team_fk_1230970` (`team_id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `asset_fk_1230972` (`asset_id`),
  ADD KEY `team_fk_1230977` (`team_id`),
  ADD KEY `user_fk_1233734` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `team_fk_1230947` (`team_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `stocks`
--
ALTER TABLE `stocks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_id_fk_1230843` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_id_fk_1230843` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_id_fk_1230852` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_id_fk_1230852` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `stocks`
--
ALTER TABLE `stocks`
  ADD CONSTRAINT `asset_fk_1230965` FOREIGN KEY (`asset_id`) REFERENCES `assets` (`id`),
  ADD CONSTRAINT `team_fk_1230970` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `asset_fk_1230972` FOREIGN KEY (`asset_id`) REFERENCES `assets` (`id`),
  ADD CONSTRAINT `team_fk_1230977` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`),
  ADD CONSTRAINT `user_fk_1233734` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `team_fk_1230947` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
