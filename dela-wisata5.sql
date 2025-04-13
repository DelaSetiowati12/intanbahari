-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Apr 2025 pada 03.32
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dela-wisata5`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
-- Struktur dari tabel `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `image` text NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `galleries`
--

INSERT INTO `galleries` (`id`, `travel_packages_id`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'assets/gallery/bzWa6xPtb5ITuhluaMFv3vVyOLmTokXG4TLBOBvO.png', '2025-03-16 10:59:30', '2025-02-19 19:28:49', '2025-03-16 10:59:30'),
(2, 2, 'assets/gallery/MKfXImOVbe81MuFrQSHcupZW2iYFsXz3uTTQHULW.jpg', '2025-03-16 10:59:32', '2025-02-21 07:17:41', '2025-03-16 10:59:32'),
(3, 1, 'assets/gallery/4vLNHjeFZ58X9mJIYSgHrICNiKy0GwBjsS2kUruY.png', '2025-04-07 11:33:02', '2025-03-16 11:00:57', '2025-04-07 11:33:02'),
(4, 2, 'assets/gallery/hW1WgscfOtsuFJo1TAyqBaBxD1Er14zJTAcYLMyI.png', '2025-04-07 11:33:05', '2025-03-19 05:34:47', '2025-04-07 11:33:05'),
(5, 1, 'assets/gallery/luZnXMpGuFvFYZDj8My1h16304X70Sa1WdbNBjrT.png', '2025-04-07 11:33:08', '2025-04-07 10:52:52', '2025-04-07 11:33:08'),
(6, 2, 'assets/gallery/ysPPmbPx0yyg8d86gHZNdhPtCoGIy7MWHrjv2uTW.png', '2025-04-07 11:33:12', '2025-04-07 10:55:47', '2025-04-07 11:33:12'),
(7, 1, 'assets/gallery/tGkpp5vcQhnib1PzDv2KhEflAs0QdEa3q05bXPOE.png', '2025-04-07 11:33:20', '2025-04-07 11:05:30', '2025-04-07 11:33:20'),
(8, 2, 'assets/gallery/vrCtv7DGXQwSSyOVSMuUcw6VmMEymN2n9crqhPxh.jpg', '2025-04-07 11:33:24', '2025-04-07 11:18:42', '2025-04-07 11:33:24'),
(9, 1, 'storage/assets/gallery/DSQCMoLReBRKQ7Zz03SsNtkaxCWcco7s9madLZ8O.png', '2025-04-07 11:33:28', '2025-04-07 11:20:04', '2025-04-07 11:33:28'),
(10, 2, 'storage/assets/gallery/bIhXJOqv3re6KdHroszZ5QO28wvkhAQbGzhpFw7Z.png', '2025-04-07 11:33:32', '2025-04-07 11:21:59', '2025-04-07 11:33:32'),
(11, 2, 'public/storage/assets/gallery/azhsfq4VWskDKxysa2gtg9kKn8cPv1exbSvpoiTZ.png', '2025-04-07 11:33:36', '2025-04-07 11:24:14', '2025-04-07 11:33:36'),
(12, 2, 'assets/gallery/m4EqXRZm6CZzRfKsHunBmigZFbGCWMfzEfqZwLfC.png', '2025-04-07 11:32:58', '2025-04-07 11:31:15', '2025-04-07 11:32:58'),
(13, 1, 'assets/gallery/kxKQaqwC528OJ2HVl8Mbbez8MRColZqx5XRLZZl2.png', '2025-04-07 11:55:48', '2025-04-07 11:34:39', '2025-04-07 11:55:48'),
(14, 1, 'assets/gallery/IJHXrijfmef0j2YVRDQ23Qfr79wPH4RrNBMFjRcY.png', '2025-04-07 11:55:52', '2025-04-07 11:36:41', '2025-04-07 11:55:52'),
(15, 1, 'assets/gallery/Gb3tOqbNAVbDVHcTpEqRbKZYoQnJon0d1lpT5LlJ.png', '2025-04-07 11:55:58', '2025-04-07 11:39:14', '2025-04-07 11:55:58'),
(16, 1, 'assets/gallery/LTLsMUd029q9OeGCkN34sodhbtFaszxrz6v4MpC8.png', '2025-04-07 11:56:02', '2025-04-07 11:47:10', '2025-04-07 11:56:02'),
(17, 2, 'assets\\gallery/k95qcKVCi6r7KqXyfI2KzF5IaOqR9Go4b4q4nmAw.png', '2025-04-07 11:56:06', '2025-04-07 11:49:00', '2025-04-07 11:56:06'),
(18, 1, 'assets/gallery/bKJor9qCxBRwj1IwaVoy6pKOtQESI1iHZT5l2hq7.png', '2025-04-07 11:56:10', '2025-04-07 11:53:15', '2025-04-07 11:56:10'),
(19, 1, 'assets/gallery/a5hIUoObCCgbNKPJflt6mFWg9VXBSvrbaJfSsxiM.png', '2025-04-07 11:56:13', '2025-04-07 11:54:10', '2025-04-07 11:56:13'),
(20, 1, 'assets/gallery/5TMLdrWI3uUZy7s32DXXWMg9GxsE4MscV5QwEUCF.jpg', '2025-04-07 12:00:44', '2025-04-07 11:56:42', '2025-04-07 12:00:44'),
(21, 1, 'assets/gallery/jWeCGeI1gGcgb4ufkZnbz2u4qsoAzXjFZrZ7N6BL.png', '2025-04-07 12:00:47', '2025-04-07 11:59:22', '2025-04-07 12:00:47'),
(22, 1, 'assets/gallery/n7NEyD5U1khruxzXoRN3Esh806OG0KSLTpWRmwmP.png', '2025-04-07 12:00:53', '2025-04-07 12:00:22', '2025-04-07 12:00:53'),
(23, 1, 'assets/gallery/e97fvtQKSsK5jdTktbRgIxlrSmawyc2LF7VjtQdy.jpg', '2025-04-10 18:15:06', '2025-04-07 12:01:06', '2025-04-10 18:15:06'),
(24, 2, 'assets/gallery/smZ2w08bI1A4LnjWqPPP0nBU0sU0BO4iekihFL5M.png', '2025-04-10 18:15:08', '2025-04-07 12:01:58', '2025-04-10 18:15:08'),
(25, 1, 'assets/gallery/j4hIllWDuhfhFn9ZvjhLvnKFYMIKdqrjaJPDF9UZ.png', '2025-04-10 18:15:10', '2025-04-07 12:05:09', '2025-04-10 18:15:10'),
(26, 2, 'assets/gallery/fWL6eA9LSSg8yfCUSPIOMQ8GPFSoxrIXeGC38r0o.png', '2025-04-10 18:16:31', '2025-04-07 12:07:36', '2025-04-10 18:16:31'),
(27, 2, 'assets/gallery/KzvYE85O55XhWGAf3IwwhcW6e99pG9CPw9ZDk2FI.png', '2025-04-10 18:16:33', '2025-04-07 12:09:45', '2025-04-10 18:16:33'),
(28, 2, 'assets/gallery/0fYTQ9BiBqm2x2L3EwGrXggDN09UE8U0JON3kW5z.png', '2025-04-10 18:16:34', '2025-04-07 12:10:10', '2025-04-10 18:16:34'),
(29, 2, 'assets/gallery/ZXuJ1iLVmCtuEJ28PemfwV0rF57IRLrmy465mWKD.png', '2025-04-10 18:16:36', '2025-04-07 12:11:28', '2025-04-10 18:16:36'),
(30, 1, 'assets/gallery/zWfGFzITujMrYihN8ldmMqR7gsXGhjtrCYXcusYE.png', '2025-04-10 18:16:37', '2025-04-07 12:20:49', '2025-04-10 18:16:37'),
(31, 2, 'assets/gallery/9QzGXxuXwgK9Ac32roeFUm0Qexp8xOBLIplnw0lM.png', '2025-04-10 18:16:38', '2025-04-07 12:22:47', '2025-04-10 18:16:38'),
(32, 2, 'assets/gallery/idAkINNugCXDupAv2CEsnEyffMsuT9J93NcyKqCY.png', '2025-04-10 18:16:40', '2025-04-07 12:23:28', '2025-04-10 18:16:40'),
(33, 1, 'assets/gallery/JXiM4CXxt1NSgVVfjS6Ap28WnWeG6qpcYErjgdzf.png', '2025-04-10 18:16:41', '2025-04-07 12:23:55', '2025-04-10 18:16:41'),
(34, 2, 'assets/gallery/vAfxHP4liTY9XkVBSq9oi3c8H859dfwamxCfuf7m.png', '2025-04-10 18:16:43', '2025-04-07 12:25:53', '2025-04-10 18:16:43'),
(35, 2, 'assets/gallery/VhEyt7DrayKV1nRgWxcwj6OMaL3FwVS64uug1Yn8.png', '2025-04-10 18:16:44', '2025-04-07 12:29:07', '2025-04-10 18:16:44'),
(36, 1, 'assets/gallery/5d3kzylhmtQMIVLKs69oq2WFeEg5KIgxBazHvHug.png', '2025-04-10 18:16:46', '2025-04-07 12:45:58', '2025-04-10 18:16:46'),
(37, 1, 'assets/gallery/XqbjXfNPaL3168P4OAle0ycW6PNmF5OxGlpRcmPK.png', '2025-04-10 18:16:47', '2025-04-07 12:48:12', '2025-04-10 18:16:47'),
(38, 1, 'assets/gallery/MQL2dqTrXTYqBLVRGxJ0CxPIMg5ynBUeJQb5LNsn.jpg', '2025-04-10 18:18:10', '2025-04-10 18:16:58', '2025-04-10 18:18:10'),
(39, 1, 'assets/gallery/UmvEMV6rLHEteXyidQbFDYzwKBLCgv4tNoJ2RTj3.jpg', NULL, '2025-04-10 18:18:16', '2025-04-10 18:18:16'),
(40, 2, 'assets/gallery/AEFmxvUf1cmVSq4OS5pQ7L6AzsOTP2oszTgGKzSh.jpg', NULL, '2025-04-10 18:18:25', '2025-04-10 18:18:25'),
(41, 1, 'assets/gallery/vsWrKG2MNJFtw7fQKJTQRxu2dArB2XecqOH7ThEu.jpg', NULL, '2025-04-10 18:18:33', '2025-04-10 18:18:33'),
(42, 1, 'assets/gallery/ITxcupy9xchq6aC9l0EGdcNlTPmZfFRevGU9flSg.jpg', NULL, '2025-04-10 18:18:41', '2025-04-10 18:18:41'),
(43, 2, 'assets/gallery/5AHutS1su4ExAVc5ZdQjC9msAmgSCGiQKlCm4e2g.jpg', NULL, '2025-04-10 18:18:50', '2025-04-10 18:30:29'),
(44, 2, 'assets/gallery/7NVN0sVG2PnfDkv73HJjdzWE6vROiMyaRoUw3C6l.jpg', NULL, '2025-04-10 18:23:33', '2025-04-10 18:23:33'),
(45, 2, 'assets/gallery/gQUjtcrw1mPRTSuHgCekDJyNBQjPnG9331mDhMMP.jpg', NULL, '2025-04-10 18:23:41', '2025-04-10 18:23:41'),
(46, 2, 'assets/gallery/7Q64nidTrEA3pccwaZ6jTDEAfBmGESFy50rxTpE4.jpg', NULL, '2025-04-10 18:23:55', '2025-04-10 18:23:55');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_10_23_101149_create_travel_packages_table', 1),
(5, '2020_10_23_102300_create_galleries_table', 1),
(6, '2020_10_23_102709_create_transactions_table', 1),
(7, '2020_10_23_103040_create_transaction_details_table', 1),
(8, '2020_10_23_132230_add_roles_field_to_users_table', 1),
(9, '2020_10_23_234037_add_username_field_to_users_table', 1),
(10, '2025_04_08_064920_create_testimonis_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `testimonis`
--

CREATE TABLE `testimonis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `pesan` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `testimonis`
--

INSERT INTO `testimonis` (`id`, `nama`, `pesan`, `created_at`, `updated_at`) VALUES
(9, 'Rijal', 'sangat bagus tempatnya', '2025-04-09 22:18:34', '2025-04-09 22:18:34'),
(10, 'Agus Sudibyo', 'Tempatnya sangat Rekomended', '2025-04-09 22:19:01', '2025-04-09 22:19:01'),
(11, 'Agung Sedayu', 'Intan Bahari Rekomended', '2025-04-10 18:31:35', '2025-04-10 18:31:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `travel_packages_id` int(11) NOT NULL,
  `users_id` int(11) DEFAULT NULL,
  `additional_visa` int(11) NOT NULL,
  `transaction_total` int(11) NOT NULL,
  `transaction_status` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transactions`
--

INSERT INTO `transactions` (`id`, `travel_packages_id`, `users_id`, `additional_visa`, `transaction_total`, `transaction_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, 1000000, 'PENDING', '2025-03-16 10:59:37', '2025-02-19 19:26:40', '2025-03-16 10:59:37'),
(2, 1, 1, 0, 1000000, 'PENDING', NULL, '2025-02-21 02:36:18', '2025-02-21 02:36:20'),
(3, 1, 2, 0, 1000000, 'PENDING', NULL, '2025-02-21 03:08:56', '2025-02-21 03:08:58'),
(4, 1, 2, 0, 1000000, 'PENDING', NULL, '2025-02-21 03:09:48', '2025-02-21 03:09:53'),
(5, 1, 2, 0, 1000000, 'PENDING', NULL, '2025-02-21 03:21:50', '2025-02-21 03:21:52'),
(6, 1, 2, 0, 1000000, 'PENDING', NULL, '2025-02-21 03:23:19', '2025-02-21 03:23:22'),
(7, 1, 2, 0, 1000000, 'PENDING', NULL, '2025-02-21 03:26:47', '2025-02-21 03:26:49'),
(8, 1, 3, 0, 1000000, 'PENDING', NULL, '2025-02-21 06:06:31', '2025-02-21 06:06:38'),
(9, 1, 2, 0, 2000000, 'PENDING', NULL, '2025-02-21 07:02:00', '2025-02-21 07:02:23'),
(10, 1, 2, 190, 2000190, 'PENDING', NULL, '2025-02-21 07:03:30', '2025-02-21 07:03:52'),
(11, 1, 2, 0, 1000000, 'PENDING', NULL, '2025-02-21 07:05:24', '2025-02-21 07:05:27'),
(12, 1, 1, 0, 1000000, 'PENDING', NULL, '2025-02-23 02:20:19', '2025-02-23 02:20:24'),
(13, 1, 26, 0, 1000000, 'PENDING', NULL, '2025-03-12 01:01:47', '2025-03-12 01:01:53'),
(14, 1, 1, 0, 1000000, 'IN_CART', NULL, '2025-03-16 10:57:19', '2025-03-16 10:57:19'),
(15, 1, 1, 0, 1000000, 'PENDING', NULL, '2025-03-16 11:02:31', '2025-03-16 11:02:40'),
(16, 1, 51, 0, 1000000, 'IN_CART', NULL, '2025-03-17 13:36:12', '2025-03-17 13:36:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction_details`
--

CREATE TABLE `transaction_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `transactions_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `nationality` varchar(255) NOT NULL,
  `is_visa` tinyint(1) NOT NULL,
  `doe_passport` date NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `transaction_details`
--

INSERT INTO `transaction_details` (`id`, `transactions_id`, `username`, `nationality`, `is_visa`, `doe_passport`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'ID', 0, '2030-02-20', NULL, '2025-02-19 19:26:40', '2025-02-19 19:26:40'),
(2, 2, 'admin', 'ID', 0, '2030-02-21', NULL, '2025-02-21 02:36:18', '2025-02-21 02:36:18'),
(3, 3, 'amin', 'ID', 0, '2030-02-21', NULL, '2025-02-21 03:08:56', '2025-02-21 03:08:56'),
(4, 4, 'amin', 'ID', 0, '2030-02-21', NULL, '2025-02-21 03:09:48', '2025-02-21 03:09:48'),
(5, 5, 'amin', 'ID', 0, '2030-02-21', NULL, '2025-02-21 03:21:50', '2025-02-21 03:21:50'),
(6, 6, 'amin', 'ID', 0, '2030-02-21', NULL, '2025-02-21 03:23:19', '2025-02-21 03:23:19'),
(7, 7, 'amin', 'ID', 0, '2030-02-21', NULL, '2025-02-21 03:26:47', '2025-02-21 03:26:47'),
(8, 8, 'jajang', 'ID', 0, '2030-02-21', NULL, '2025-02-21 06:06:32', '2025-02-21 06:06:32'),
(9, 9, 'amin', 'ID', 0, '2030-02-21', NULL, '2025-02-21 07:02:00', '2025-02-21 07:02:00'),
(10, 9, 'jajang', 'id', 0, '2025-01-31', NULL, '2025-02-21 07:02:17', '2025-02-21 07:02:17'),
(11, 10, 'amin', 'ID', 0, '2030-02-21', NULL, '2025-02-21 07:03:30', '2025-02-21 07:03:30'),
(12, 10, 'jajang', 'ID', 1, '2025-02-13', NULL, '2025-02-21 07:03:49', '2025-02-21 07:03:49'),
(13, 11, 'amin', 'ID', 0, '2030-02-21', NULL, '2025-02-21 07:05:24', '2025-02-21 07:05:24'),
(14, 12, 'admin', 'ID', 0, '2030-02-23', NULL, '2025-02-23 02:20:19', '2025-02-23 02:20:19'),
(15, 13, 'mulyadi sopiyani', 'ID', 0, '2030-03-12', NULL, '2025-03-12 01:01:47', '2025-03-12 01:01:47'),
(16, 14, 'admin', 'ID', 0, '2030-03-16', NULL, '2025-03-16 10:57:19', '2025-03-16 10:57:19'),
(17, 15, 'admin', 'ID', 0, '2030-03-16', NULL, '2025-03-16 11:02:31', '2025-03-16 11:02:31'),
(18, 16, 'mulyadi sopiyani', 'ID', 0, '2030-03-17', NULL, '2025-03-17 13:36:12', '2025-03-17 13:36:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `travel_packages`
--

CREATE TABLE `travel_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `about` longtext NOT NULL,
  `featured_event` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  `foods` varchar(255) NOT NULL,
  `departure_date` date NOT NULL,
  `duration` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `travel_packages`
--

INSERT INTO `travel_packages` (`id`, `title`, `slug`, `location`, `about`, `featured_event`, `language`, `foods`, `departure_date`, `duration`, `type`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Tiket 1', 'tiket-1', 'Tiket Standar', 'Standar', 'STANDARD TIKET', 'indonesia', 'indonesia', '2025-02-20', '1 hari', 'STANDAR', 10000, NULL, '2025-02-19 19:26:08', '2025-04-10 18:14:51'),
(2, 'Tiket 2', 'tiket-2', 'Tiket VIP', 'VVIP', 'VIP TIKET', 'INDO', 'INDO', '2025-02-21', '1 hari', 'VIP', 2000002, NULL, '2025-02-21 07:16:24', '2025-02-21 07:16:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT current_timestamp(),
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `roles` varchar(255) NOT NULL DEFAULT 'USER',
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `roles`, `username`) VALUES
(1, 'della', 'admin@gmail.com', '2025-02-16 18:22:53', '$2y$10$M91oAnGQjsZkLPTBB6nNteftUnxZlHHY8SFvkxYCYGBhWCXytHWIK', NULL, '2025-02-16 11:22:36', '2025-02-16 11:22:36', 'ADMIN', 'admin'),
(2, 'amin', 'amin@gmail.com', '2025-02-01 10:08:16', '$2y$10$ODO7FrBFRXoQiDj5W1ZeQO7utDAI2EI0sha8Xbyx/Gpdw.IIgk8K6', NULL, '2025-02-21 03:07:30', '2025-02-21 03:07:30', 'USER', 'amin'),
(26, 'mulyadi sopiyani', 'adie@gmail.com', '2025-02-24 08:00:36', '$2y$10$AbghYg1qqeepWZGWxsGYUewEB7NffLz0AEcCzbD79GSRzChLocMhy', NULL, '2025-02-24 01:00:36', '2025-02-24 01:00:36', 'USER', 'mulyadi'),
(51, 'mulyadi sopiyani', 'mulyadisopiyani@gmail.com', '2025-03-17 19:50:50', '$2y$10$SaNE.ezTkunKFXGZfuG.qulDo7./DXkdDLiK39ibkyEMUL0qdj5O6', NULL, '2025-03-17 12:50:50', '2025-03-17 12:50:50', 'USER', 'mulyadi sopiyani'),
(52, 'Udin', 'udin@gmail.com', '2025-03-19 12:38:00', '$2y$10$uQpskGtgrR5lET1L2BG3BuV.QJ1MaGVEz.w.bVhvxQGzq0Wk9EYeC', NULL, '2025-03-19 05:38:00', '2025-03-19 05:38:00', 'USER', 'Udin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `testimonis`
--
ALTER TABLE `testimonis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `travel_packages`
--
ALTER TABLE `travel_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `testimonis`
--
ALTER TABLE `testimonis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `travel_packages`
--
ALTER TABLE `travel_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
