-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 03, 2025 at 09:47 AM
-- Server version: 10.11.10-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u565803524_dev_enmms_api`
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
-- Table structure for table `gateways`
--

CREATE TABLE `gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `customer_code` varchar(255) NOT NULL,
  `gateway` varchar(255) DEFAULT NULL,
  `gateway_code` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gateways`
--

INSERT INTO `gateways` (`id`, `location_id`, `customer_code`, `gateway`, `gateway_code`, `description`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 21, 'TEST', 'Gateway 1', 'G01', 'Gateway 1', '2025-05-21 06:37:29', '2025-05-21 06:37:29', NULL);

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
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(255) NOT NULL,
  `location_name` varchar(255) NOT NULL,
  `pid` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `location_code`, `location_name`, `pid`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'SEP', 'SEP', NULL, '2025-03-02 09:26:56', '2025-03-02 09:26:56', NULL),
(2, 'EMS', 'EMS', '1', '2025-03-02 09:28:08', '2025-03-02 09:28:08', NULL),
(3, 'Injection', 'Injection', '1', '2025-03-02 09:28:59', '2025-03-02 09:28:59', NULL),
(4, 'CIP2', 'CIP2', '1', '2025-03-02 09:29:11', '2025-03-02 09:29:11', NULL),
(5, 'Building 4', 'Building 4', '1', '2025-03-02 09:30:20', '2025-03-02 09:30:20', NULL),
(6, 'Building 1', 'Building 1', '2', '2025-03-02 09:30:32', '2025-03-02 09:30:32', NULL),
(7, 'Building 2', 'Building 2', '2', '2025-03-02 09:31:51', '2025-03-02 09:31:51', NULL),
(8, 'Building 3', 'Building 3', '2', '2025-03-02 09:32:04', '2025-03-02 09:32:04', NULL),
(9, '1st Floor', '1st Floor', '3', '2025-03-02 09:32:30', '2025-03-02 09:32:30', NULL),
(10, '2nd Floor', '2nd Floor', '3', '2025-03-02 09:32:49', '2025-03-02 09:32:49', NULL),
(11, '1st Floor', '1st Floor', '6', '2025-03-02 09:32:49', '2025-03-02 09:32:49', NULL),
(12, '2nd Floor', '2nd Floor', '6', '2025-03-02 09:32:49', '2025-03-02 09:32:49', NULL),
(13, '1st Floor', '1st Floor', '7', '2025-03-02 09:32:30', '2025-03-02 09:32:30', NULL),
(14, '2nd Floor', '2nd Floor', '7', '2025-03-02 09:32:49', '2025-03-02 09:32:49', NULL),
(15, '1st Floor', '1st Floor', '8', '2025-03-02 09:32:30', '2025-03-02 09:32:30', NULL),
(16, '2nd Floor', '2nd Floor', '8', '2025-03-02 09:32:49', '2025-03-02 09:32:49', NULL),
(17, 'IIDA line', 'IIDA line', '11', '2025-03-02 09:32:49', '2025-03-02 09:32:49', NULL),
(18, 'IIDA Office', 'IIDA Office', '11', '2025-03-02 09:32:49', '2025-03-02 09:32:49', NULL),
(19, 'Canteen', 'Canteen', '3', NULL, NULL, NULL),
(20, 'General Office', 'General Office', '4', NULL, NULL, NULL),
(21, 'SMT Area', 'SMT Area', '13', NULL, NULL, NULL),
(22, 'A1 reflow', 'A1 reflow', '21', NULL, NULL, NULL),
(23, 'B5 reflow', 'B5 reflow', '21', NULL, NULL, NULL),
(24, 'EOL', 'EOL', '13', NULL, NULL, NULL);

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
(4, '2025_01_29_090253_create_locations_table', 1),
(5, '2025_01_29_090317_create_gateways_table', 1),
(6, '2025_01_29_090335_create_sensor_types_table', 1),
(7, '2025_01_29_090336_create_sensor_models_table', 1),
(8, '2025_01_29_090340_create_sensors_table', 1),
(9, '2025_01_29_090520_create_sensor_logs_table', 1),
(10, '2025_01_30_050145_create_sensor_offlines_table', 1),
(11, '2025_02_14_042309_alter_sensor_offlines_table', 1),
(12, '2025_02_14_045008_alter_gateways_table', 1),
(13, '2025_02_17_071232_create_user_types_table', 1),
(14, '2025_05_21_055839_alter_sensor_logs_table', 1),
(15, '2025_05_21_062508_create_personal_access_tokens_table', 2);

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

-- --------------------------------------------------------

--
-- Table structure for table `sensors`
--

CREATE TABLE `sensors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slave_address` varchar(255) NOT NULL,
  `description` longtext DEFAULT NULL,
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` bigint(20) UNSIGNED NOT NULL,
  `sensor_model_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sensors`
--

INSERT INTO `sensors` (`id`, `slave_address`, `description`, `location_id`, `gateway_id`, `sensor_model_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '1', 'Sensor 1', 21, 1, 1, '2025-05-21 06:40:51', '2025-05-21 06:40:51', NULL),
(2, '2', 'Sensor 2', 21, 1, 1, '2025-05-21 06:41:09', '2025-05-21 06:41:09', NULL),
(3, '3', 'Sensor 3', 21, 1, 1, '2025-05-21 06:41:27', '2025-05-21 06:41:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sensor_logs`
--

CREATE TABLE `sensor_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` bigint(20) UNSIGNED NOT NULL,
  `sensor_id` bigint(20) UNSIGNED NOT NULL,
  `voltage_ab` double DEFAULT NULL,
  `voltage_bc` double DEFAULT NULL,
  `voltage_ca` double DEFAULT NULL,
  `current_a` double DEFAULT NULL,
  `current_b` double DEFAULT NULL,
  `current_c` double DEFAULT NULL,
  `real_power` double DEFAULT NULL,
  `apparent_power` double DEFAULT NULL,
  `energy` double DEFAULT NULL,
  `temperature` double DEFAULT NULL,
  `humidity` double DEFAULT NULL,
  `volume` double DEFAULT NULL,
  `flow` double DEFAULT NULL,
  `pressure` double DEFAULT NULL,
  `co2` double DEFAULT NULL,
  `pm25_pm10` double DEFAULT NULL,
  `o2` double DEFAULT NULL,
  `nox` double DEFAULT NULL,
  `co` double DEFAULT NULL,
  `s02` double DEFAULT NULL,
  `power_factor` double DEFAULT NULL,
  `datetime_created` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sensor_logs`
--

INSERT INTO `sensor_logs` (`id`, `gateway_id`, `sensor_id`, `voltage_ab`, `voltage_bc`, `voltage_ca`, `current_a`, `current_b`, `current_c`, `real_power`, `apparent_power`, `energy`, `temperature`, `humidity`, `volume`, `flow`, `pressure`, `co2`, `pm25_pm10`, `o2`, `nox`, `co`, `s02`, `power_factor`, `datetime_created`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-21 00:00:00', '2025-05-21 06:44:26', '2025-05-21 06:44:26'),
(2, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-21 00:00:00', '2025-05-21 06:50:27', '2025-05-21 06:50:27'),
(3, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-21 00:00:00', '2025-05-21 07:15:28', '2025-05-21 07:15:28'),
(4, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2025-05-21 00:00:00', '2025-05-21 07:15:38', '2025-05-21 07:15:38'),
(5, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2025-05-21 07:30:00', '2025-05-21 07:35:01', '2025-05-21 07:35:01'),
(6, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2025-05-21 07:30:00', '2025-05-21 07:35:01', '2025-05-21 07:35:01'),
(7, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2025-05-21 07:30:00', '2025-05-21 07:35:02', '2025-05-21 07:35:02'),
(8, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2025-05-21 07:35:00', '2025-05-21 07:40:01', '2025-05-21 07:40:01'),
(9, 1, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2025-05-21 07:35:00', '2025-05-21 07:40:01', '2025-05-21 07:40:01'),
(10, 1, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, '2025-05-21 07:35:00', '2025-05-21 07:40:02', '2025-05-21 07:40:02');

-- --------------------------------------------------------

--
-- Table structure for table `sensor_models`
--

CREATE TABLE `sensor_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sensor_model` varchar(255) NOT NULL,
  `sensor_brand` varchar(255) NOT NULL,
  `sensor_type_id` bigint(20) UNSIGNED NOT NULL,
  `sensor_reg_address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sensor_models`
--

INSERT INTO `sensor_models` (`id`, `sensor_model`, `sensor_brand`, `sensor_type_id`, `sensor_reg_address`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'SDM120', 'Eastron', 2, '200,202,204,6,8,10,52,56,342,34', '2025-05-21 06:39:48', '2025-05-21 06:39:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sensor_offlines`
--

CREATE TABLE `sensor_offlines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `query` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `gateway_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sensor_offlines`
--

INSERT INTO `sensor_offlines` (`id`, `query`, `created_at`, `updated_at`, `deleted_at`, `gateway_id`) VALUES
(1, 'insert into `gateways` (`location_id`, `customer_code`, `gateway`, `gateway_code`, `description`, `updated_at`, `created_at`) values (21, \'TEST\', \'Gateway 1\', \'G01\', \'Gateway 1\', \'2025-05-21 06:37:29\', \'2025-05-21 06:37:29\')', '2025-05-21 06:37:29', '2025-05-21 06:37:29', NULL, 1),
(2, 'insert into `sensor_models` (`sensor_model`, `sensor_brand`, `sensor_type_id`, `sensor_reg_address`, `updated_at`, `created_at`) values (\'SDM120\', \'Eastron\', 2, \'200,202,204,6,8,10,52,56,342,34\', \'2025-05-21 06:39:48\', \'2025-05-21 06:39:48\')', '2025-05-21 06:39:49', '2025-05-21 06:39:49', NULL, 1),
(3, 'insert into `sensors` (`slave_address`, `location_id`, `gateway_id`, `sensor_model_id`, `description`, `updated_at`, `created_at`) values (1, 21, 1, 1, \'Sensor 1\', \'2025-05-21 06:40:51\', \'2025-05-21 06:40:51\')', '2025-05-21 06:40:52', '2025-05-21 06:40:52', NULL, 1),
(4, 'insert into `sensors` (`slave_address`, `location_id`, `gateway_id`, `sensor_model_id`, `description`, `updated_at`, `created_at`) values (2, 21, 1, 1, \'Sensor 2\', \'2025-05-21 06:41:09\', \'2025-05-21 06:41:09\')', '2025-05-21 06:41:10', '2025-05-21 06:41:10', NULL, 1),
(5, 'insert into `sensors` (`slave_address`, `location_id`, `gateway_id`, `sensor_model_id`, `description`, `updated_at`, `created_at`) values (3, 21, 1, 1, \'Sensor 3\', \'2025-05-21 06:41:27\', \'2025-05-21 06:41:27\')', '2025-05-21 06:41:28', '2025-05-21 06:41:28', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sensor_types`
--

CREATE TABLE `sensor_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(255) NOT NULL,
  `sensor_type_code` varchar(255) NOT NULL,
  `sensor_type_parameter` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sensor_types`
--

INSERT INTO `sensor_types` (`id`, `description`, `sensor_type_code`, `sensor_type_parameter`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Single Phase Meter', 'SPM', 'voltage_ab,current_a,real_power,apparent_power,energy,power_factor', '2025-02-14 09:04:41', '2025-02-14 09:06:28', NULL),
(2, 'Three Phase Meter', 'TPM', 'voltage_ab,voltage_bc,voltage_ca,current_a,current_b,current_c,real_power,apparent_power,energy,power_factor', '2025-02-14 09:05:34', '2025-02-14 09:06:21', NULL),
(3, 'Temperature & Humidity Sensor', 'THS', 'temperature,humidity', '2025-02-14 09:06:13', '2025-02-14 09:06:13', NULL),
(4, 'Flow Meter', 'FVM', 'volume,flow', '2025-02-14 09:07:05', '2025-02-14 09:07:05', NULL),
(5, 'Pressure Meter Guage', 'PMG', 'pressure', '2025-02-14 09:07:28', '2025-02-14 09:07:28', NULL),
(6, 'Air Quality Meter', 'AQM', 'co2,pm25_pm10,o2,nox,co,s02', '2025-02-14 09:08:48', '2025-02-14 09:08:48', NULL);

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

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('57k5HBRIG7kkfW8pbYOi6rQ9d9WnFpuHHjSy45fk', NULL, '46.17.174.172', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:98.0) Gecko/20100101 Firefox/98.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVWtyMW5iVG92eWU1bEdDcEpsWVVCdFkzN3R0djZ5VlNBb1RmWVpqaiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vZGV2LWVubW1zLWFwaS5zcHBocG9ydGFsLnNpdGUvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1748388860),
('D1hJ76z7h6GJ2rcJsvUHoHnvJ50emOonTpaqDNa0', NULL, '2a02:4780:11:c0de::21', 'Go-http-client/2.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiT0c5S1dVaEFlYTc2eG5qdDZRSURNa0d3NnU4bmFDMk5uRlB2dURUUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vZGV2LWVubW1zLWFwaS5zcHBocG9ydGFsLnNpdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1748522846),
('ehYsS1papDHDGK8OIt0jxzi77nZkay4yx80GPuQs', NULL, '2a02:4780:11:c0de::21', 'Go-http-client/2.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiYm4xRUxsbm5ZYW5yNWNYclpwVkxyZmw0QnRQZ0xIQVhycWtVNXgxNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vZGV2LWVubW1zLWFwaS5zcHBocG9ydGFsLnNpdGUvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1748348010),
('FASbyTA4XduubLitPO8FdfPPodbyUICI3qfDnhLR', NULL, '2a02:4780:11:c0de::21', 'Go-http-client/2.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTmNoSzZuTkZPY1Zoc0RnNWgzelRUVGticldHWGt3Yjg4TEZUc0gydyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vZGV2LWVubW1zLWFwaS5zcHBocG9ydGFsLnNpdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1748348010),
('FVIUHp5Sl65n9uXrbdIw7X4ybHjGsqoyHWDxIwfF', NULL, '2a02:4780:11:c0de::21', 'Go-http-client/2.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidkUwU0NrMkpEQXFmY1ZpZU9RTlZ3cmFSc0lxdnh4VlRrY3FFTXhYNiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vZGV2LWVubW1zLWFwaS5zcHBocG9ydGFsLnNpdGUvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1748758442),
('Fyt63B2tfEz113OEhBdqTasUBr7SXZh4NTBVPP6h', NULL, '2a02:4780:11:c0de::21', 'Go-http-client/2.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibWxna3dVMG0zbDJuSjRBaG5DVXphYkphOEpJTnBlbkhSZVVNNzVpNyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vZGV2LWVubW1zLWFwaS5zcHBocG9ydGFsLnNpdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1748592398),
('g4Fvpd2LJsechz4uO7YGFwCMpoTRt01746vWbC1V', NULL, '46.17.174.172', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:98.0) Gecko/20100101 Firefox/98.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiODNqTUxtMjdKRDlqa1hJTnJkOFJ3WFhzNWUyWGVreTZtVXlsTjU5TSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vZGV2LWVubW1zLWFwaS5zcHBocG9ydGFsLnNpdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1748388860),
('hu5aQELkLGcLOdSmWlfZIZ8NpLtGLgRphzPiGeON', NULL, '149.57.180.139', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM0w3akI0a3gyTmVURHUxeFdKQ1FnbFp4U2dWWEJMSUZuREZuWmlHbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vZGV2LWVubW1zLWFwaS5zcHBocG9ydGFsLnNpdGUvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1748340460),
('HwiedKzhZhiYHklU0zcpfHEgw0snoXbaR0cwoRKV', NULL, '2a02:4780:11:c0de::21', 'Go-http-client/2.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQkd5NjdqZUk4Y0p2UVNvSzlGTHpKMVVvNXpSblRIYkdtN3Z6NnFKUiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vZGV2LWVubW1zLWFwaS5zcHBocG9ydGFsLnNpdGUvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1748942317),
('IuEzOJcrWRiOwkkyvYvEij3CnBYbmlcQHzfC2loI', NULL, '2a02:4780:11:c0de::21', 'Go-http-client/2.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTDdhRmJTNXVjSHlXRXRJeTJlRHNoYzB6ZXZ3ZVRCVzVOVjVWb2dNWiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vZGV2LWVubW1zLWFwaS5zcHBocG9ydGFsLnNpdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1748664658),
('kMW2xkBgF5ma8VJXrZTfxMnYg4D04TxHjfQP7FN9', NULL, '2a02:4780:11:c0de::21', 'Go-http-client/2.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidGx5dFZYSzVKSGpackxNdGdBQ0FGY2dNTGg5dThDdFo4WWFJdWkwTSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vZGV2LWVubW1zLWFwaS5zcHBocG9ydGFsLnNpdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1748841901),
('mVNkaskX3e3byAfyJgbWCS9LVaukY8MiSyM9t6S7', NULL, '34.71.253.45', 'Mozilla/5.0 (Windows NT 5.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.16 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRXVZb29CdFJGeFlVOVowOUFpQUhaMnpMa2xzSWduTU9xeVJFRVJwNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vZGV2LWVubW1zLWFwaS5zcHBocG9ydGFsLnNpdGUvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1748280326),
('oPUJG2AhjjDJ3lHnqvrfGQKbP92IltFTr6a1oV73', NULL, '2a02:4780:11:c0de::21', 'Go-http-client/2.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoidm5CaDUzNmRXQVZZV3lZZFVKNHNJeUlUeldpZjRWRm9SMUtuR1ljdSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vZGV2LWVubW1zLWFwaS5zcHBocG9ydGFsLnNpdGUvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1748664658),
('PZ8yVNyIZYsbTF8lFK4R4hkQoPUNuyCmRIaLMBU4', NULL, '23.27.145.219', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWkpjSlU2TWhDS08zRjQyOHpWcXF0c2t6cFdDcFIzSHNtQ2w0SE84QiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vZGV2LWVubW1zLWFwaS5zcHBocG9ydGFsLnNpdGUvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1748601710),
('QINx9cEd8Iop0SCcLMR46dG9vJntpC9HiBb3m0hK', NULL, '2a02:4780:11:c0de::21', 'Go-http-client/2.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY1JJdGNFd21iUFhzOVZieE1DUUZtRFBpWDhSeTZhQlJDWmkxZFpPOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vZGV2LWVubW1zLWFwaS5zcHBocG9ydGFsLnNpdGUvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1748414728),
('QkNkw4fvJOW3QrHx8Oo8GcpTi09gMkxRqsowfkKP', NULL, '2a02:4780:11:c0de::21', 'Go-http-client/2.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiWlpVZ0pad3p1MXFiR3B5QTkzZUtCb2toakRPRmhZTENOY1NFOWFuUSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vZGV2LWVubW1zLWFwaS5zcHBocG9ydGFsLnNpdGUvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1748592398),
('suHyodfA54ozDHK3ZDJ7BndlI6j9vv9CojA0BXDi', NULL, '23.27.145.51', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiY3kzRDlXaFNFRGpEZGpPY2UzelhMSk5INGExdEdieFpDOGlIOVMwZyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vZGV2LWVubW1zLWFwaS5zcHBocG9ydGFsLnNpdGUvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1748646456),
('uq2bCKCp99lW9yiF7KOyfW4JPwVlOgFmN2RwB7l1', NULL, '2a02:4780:11:c0de::21', 'Go-http-client/2.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVW5La3FpUW5UWEJLY25ucXNXak50N3o2MmVkb0c1M2FvMmthcHRxeSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vZGV2LWVubW1zLWFwaS5zcHBocG9ydGFsLnNpdGUvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1748841902),
('uvtceb2S8FraluR4LZGHU6g21URakESkF6gPsVlV', NULL, '2a02:4780:11:c0de::21', 'Go-http-client/2.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiRWxWaFRLVWdDdzVxQmFGQWpBNkRoUDVWd3pmRU9VMFlnMUZQVTJhRiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vZGV2LWVubW1zLWFwaS5zcHBocG9ydGFsLnNpdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1748758442),
('xi0V0N1dM9nKO7WGyDVDZ0UzbDJ1CL5Zj1Sc2B5T', NULL, '149.57.180.119', 'Mozilla/5.0 (X11; Linux i686; rv:109.0) Gecko/20100101 Firefox/120.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTm5DSWVXYjhwM2FJQjRKTk51a09vQzNvc25kZVFEYWlHVmNpaFpBOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDM6Imh0dHBzOi8vZGV2LWVubW1zLWFwaS5zcHBocG9ydGFsLnNpdGUvbG9naW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1748386265),
('XW0GDn60OQmLrwB5p1Z3fXEo9SFjplPudGBKF3Ei', NULL, '2a02:4780:11:c0de::21', 'Go-http-client/2.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiVUZ6ZG5IdDRkV2trYlFwRFkwWjc5MGhyUVFRQkVqOUlTQVpReWV3RCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vZGV2LWVubW1zLWFwaS5zcHBocG9ydGFsLnNpdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1748414728),
('yuvfNotbUDZzplXqdY8sgDh1oGVN77BC22FcfNLV', NULL, '2a02:4780:11:c0de::21', 'Go-http-client/2.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoic1pTdEU3QWNrejc2V0VrUnVGTTFaeXo5WDRmcTZDcjRUUTE5eThPTiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mzc6Imh0dHBzOi8vZGV2LWVubW1zLWFwaS5zcHBocG9ydGFsLnNpdGUiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1748942317);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `user_type_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `user_type_id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'Admin', 1, 'admin@smartpowerph.com', NULL, '$2y$12$RgtvWyspWZtOlLEo2TyAUekchiTqmRAZAPj6SjuIkrPXtzmjTPRZa', NULL, '2025-05-21 06:01:35', '2025-05-21 06:01:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `deleted_by` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`id`, `name`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', NULL, NULL, NULL, '2025-05-21 06:01:34', '2025-05-21 06:01:34', NULL),
(2, 'EMS', NULL, NULL, NULL, '2025-05-21 06:01:35', '2025-05-21 06:01:35', NULL),
(3, 'Injection', NULL, NULL, NULL, '2025-05-21 06:01:35', '2025-05-21 06:01:35', NULL);

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
-- Indexes for table `gateways`
--
ALTER TABLE `gateways`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `gateways_gateway_code_unique` (`gateway_code`),
  ADD KEY `gateways_location_id_foreign` (`location_id`);

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
-- Indexes for table `locations`
--
ALTER TABLE `locations`
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
-- Indexes for table `sensors`
--
ALTER TABLE `sensors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sensors_slave_address_unique` (`slave_address`),
  ADD KEY `sensors_location_id_foreign` (`location_id`),
  ADD KEY `sensors_gateway_id_foreign` (`gateway_id`),
  ADD KEY `sensors_sensor_model_id_foreign` (`sensor_model_id`);

--
-- Indexes for table `sensor_logs`
--
ALTER TABLE `sensor_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sensor_logs_gateway_id_foreign` (`gateway_id`),
  ADD KEY `sensor_logs_sensor_id_foreign` (`sensor_id`);

--
-- Indexes for table `sensor_models`
--
ALTER TABLE `sensor_models`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sensor_models_sensor_model_unique` (`sensor_model`),
  ADD KEY `sensor_models_sensor_type_id_foreign` (`sensor_type_id`);

--
-- Indexes for table `sensor_offlines`
--
ALTER TABLE `sensor_offlines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sensor_offlines_gateway_id_foreign` (`gateway_id`);

--
-- Indexes for table `sensor_types`
--
ALTER TABLE `sensor_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sensor_types_sensor_type_code_unique` (`sensor_type_code`);

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
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gateways`
--
ALTER TABLE `gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sensors`
--
ALTER TABLE `sensors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sensor_logs`
--
ALTER TABLE `sensor_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sensor_models`
--
ALTER TABLE `sensor_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sensor_offlines`
--
ALTER TABLE `sensor_offlines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sensor_types`
--
ALTER TABLE `sensor_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `gateways`
--
ALTER TABLE `gateways`
  ADD CONSTRAINT `gateways_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`);

--
-- Constraints for table `sensors`
--
ALTER TABLE `sensors`
  ADD CONSTRAINT `sensors_gateway_id_foreign` FOREIGN KEY (`gateway_id`) REFERENCES `gateways` (`id`),
  ADD CONSTRAINT `sensors_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `locations` (`id`),
  ADD CONSTRAINT `sensors_sensor_model_id_foreign` FOREIGN KEY (`sensor_model_id`) REFERENCES `sensor_models` (`id`);

--
-- Constraints for table `sensor_logs`
--
ALTER TABLE `sensor_logs`
  ADD CONSTRAINT `sensor_logs_gateway_id_foreign` FOREIGN KEY (`gateway_id`) REFERENCES `gateways` (`id`),
  ADD CONSTRAINT `sensor_logs_sensor_id_foreign` FOREIGN KEY (`sensor_id`) REFERENCES `sensors` (`id`);

--
-- Constraints for table `sensor_models`
--
ALTER TABLE `sensor_models`
  ADD CONSTRAINT `sensor_models_sensor_type_id_foreign` FOREIGN KEY (`sensor_type_id`) REFERENCES `sensor_types` (`id`);

--
-- Constraints for table `sensor_offlines`
--
ALTER TABLE `sensor_offlines`
  ADD CONSTRAINT `sensor_offlines_gateway_id_foreign` FOREIGN KEY (`gateway_id`) REFERENCES `gateways` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
