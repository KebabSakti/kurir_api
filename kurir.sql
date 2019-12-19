-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2019 at 03:49 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kurir`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

CREATE TABLE `assets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `asset` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `balances`
--

CREATE TABLE `balances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `driver_id` bigint(20) NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city_id` bigint(20) DEFAULT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `city`, `created_at`, `updated_at`) VALUES
(3, 'Samarinda', '2019-12-12 07:31:53', '2019-12-12 07:31:53');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `service` enum('Package','Ride','Food') COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` datetime DEFAULT NULL,
  `is_used` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city_id` bigint(20) NOT NULL,
  `device_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uid` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_verified` tinyint(1) NOT NULL DEFAULT 0,
  `verified_at` datetime DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `city_id`, `device_id`, `uid`, `name`, `phone`, `email`, `is_verified`, `verified_at`, `note`, `created_at`, `updated_at`) VALUES
(1, 3, '598295633', '861020', 'Customer 1', '1', 'customer_1@gmail.com', 1, '2019-12-12 15:31:53', NULL, '2019-12-12 07:31:53', '2019-12-12 07:31:53'),
(2, 3, '803847422', '695992', 'Customer 2', '2', 'customer_2@gmail.com', 1, '2019-12-12 15:31:53', NULL, '2019-12-12 07:31:53', '2019-12-12 07:31:53'),
(3, 3, '833959416', '114151', 'Customer 3', '3', 'customer_3@gmail.com', 1, '2019-12-12 15:31:53', NULL, '2019-12-12 07:31:53', '2019-12-12 07:31:53'),
(4, 3, '425345522', '930087', 'Customer 4', '4', 'customer_4@gmail.com', 1, '2019-12-12 15:31:53', NULL, '2019-12-12 07:31:53', '2019-12-12 07:31:53'),
(5, 3, '525943470', '681317', 'Customer 5', '5', 'customer_5@gmail.com', 1, '2019-12-12 15:31:53', NULL, '2019-12-12 07:31:53', '2019-12-12 07:31:53'),
(6, 3, '222534112', '640068', 'Customer 6', '6', 'customer_6@gmail.com', 1, '2019-12-12 15:31:53', NULL, '2019-12-12 07:31:53', '2019-12-12 07:31:53'),
(7, 3, '236045588', '403560', 'Customer 7', '7', 'customer_7@gmail.com', 1, '2019-12-12 15:31:53', NULL, '2019-12-12 07:31:53', '2019-12-12 07:31:53'),
(8, 3, '298868298', '946496', 'Customer 8', '8', 'customer_8@gmail.com', 1, '2019-12-12 15:31:53', NULL, '2019-12-12 07:31:53', '2019-12-12 07:31:53'),
(9, 3, '234525492', '416132', 'Customer 9', '9', 'customer_9@gmail.com', 1, '2019-12-12 15:31:53', NULL, '2019-12-12 07:31:53', '2019-12-12 07:31:53'),
(10, 3, '406885607', '328770', 'Customer 10', '10', 'customer_10@gmail.com', 1, '2019-12-12 15:31:53', NULL, '2019-12-12 07:31:53', '2019-12-12 07:31:53'),
(11, 3, '397810358', '836882', 'Customer 11', '11', 'customer_11@gmail.com', 1, '2019-12-12 15:31:53', NULL, '2019-12-12 07:31:53', '2019-12-12 07:31:53'),
(12, 3, '654116925', '129693', 'Customer 12', '12', 'customer_12@gmail.com', 1, '2019-12-12 15:31:53', NULL, '2019-12-12 07:31:53', '2019-12-12 07:31:53'),
(13, 3, '518121917', '522542', 'Customer 13', '13', 'customer_13@gmail.com', 1, '2019-12-12 15:31:53', NULL, '2019-12-12 07:31:53', '2019-12-12 07:31:53'),
(14, 3, '816430844', '443068', 'Customer 14', '14', 'customer_14@gmail.com', 1, '2019-12-12 15:31:53', NULL, '2019-12-12 07:31:53', '2019-12-12 07:31:53'),
(15, 3, '536756200', '814401', 'Customer 15', '15', 'customer_15@gmail.com', 1, '2019-12-12 15:31:53', NULL, '2019-12-12 07:31:53', '2019-12-12 07:31:53'),
(16, 3, '767380965', '906241', 'Customer 16', '16', 'customer_16@gmail.com', 1, '2019-12-12 15:31:53', NULL, '2019-12-12 07:31:53', '2019-12-12 07:31:53'),
(17, 3, '597149601', '831084', 'Customer 17', '17', 'customer_17@gmail.com', 1, '2019-12-12 15:31:53', NULL, '2019-12-12 07:31:53', '2019-12-12 07:31:53'),
(18, 3, '503963989', '571716', 'Customer 18', '18', 'customer_18@gmail.com', 1, '2019-12-12 15:31:53', NULL, '2019-12-12 07:31:53', '2019-12-12 07:31:53'),
(19, 3, '453454041', '151434', 'Customer 19', '19', 'customer_19@gmail.com', 1, '2019-12-12 15:31:53', NULL, '2019-12-12 07:31:53', '2019-12-12 07:31:53'),
(20, 3, '375362881', '674998', 'Customer 20', '20', 'customer_20@gmail.com', 1, '2019-12-12 15:31:53', NULL, '2019-12-12 07:31:53', '2019-12-12 07:31:53');

-- --------------------------------------------------------

--
-- Table structure for table `customer_points`
--

CREATE TABLE `customer_points` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `point` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer_suspends`
--

CREATE TABLE `customer_suspends` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `finish` datetime DEFAULT NULL,
  `is_banned` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city_id` bigint(20) NOT NULL,
  `device_id` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uid` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_card` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `driving_license` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` enum('Pria','Wanita') COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `wallet` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `balance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `point` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `package` tinyint(1) NOT NULL DEFAULT 1,
  `ride` tinyint(1) NOT NULL DEFAULT 1,
  `food` tinyint(1) NOT NULL DEFAULT 0,
  `add_fee_to_wallet` tinyint(1) NOT NULL DEFAULT 1,
  `is_verified` tinyint(1) NOT NULL DEFAULT 0,
  `verified_at` datetime DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driver_assets`
--

CREATE TABLE `driver_assets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `driver_id` bigint(20) NOT NULL,
  `asset_id` bigint(20) NOT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driver_points`
--

CREATE TABLE `driver_points` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `driver_id` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `point` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driver_positions`
--

CREATE TABLE `driver_positions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `driver_id` bigint(20) NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driver_statuses`
--

CREATE TABLE `driver_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('Offline','Online','Busy') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `driver_suspends`
--

CREATE TABLE `driver_suspends` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `driver_id` bigint(20) NOT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `finish` datetime DEFAULT NULL,
  `is_banned` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `driver_id` bigint(20) NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_09_28_111140_create_places_table', 1),
(5, '2019_12_03_135830_create_drivers_table', 1),
(6, '2019_12_03_135940_create_vehicles_table', 1),
(7, '2019_12_03_140041_create_customers_table', 1),
(8, '2019_12_03_140305_create_orders_table', 1),
(9, '2019_12_03_140736_create_packages_table', 1),
(10, '2019_12_03_140805_create_rides_table', 1),
(11, '2019_12_03_140922_create_order_statuses_table', 1),
(12, '2019_12_03_140930_create_package_statuses_table', 1),
(13, '2019_12_03_140936_create_ride_statuses_table', 1),
(14, '2019_12_03_141316_create_driver_statuses_table', 1),
(15, '2019_12_03_141754_create_driver_positions_table', 1),
(16, '2019_12_03_142253_create_balances_table', 1),
(17, '2019_12_03_143017_create_top_ups_table', 1),
(18, '2019_12_03_143241_create_driver_points_table', 1),
(19, '2019_12_03_143246_create_customer_points_table', 1),
(20, '2019_12_03_143752_create_package_ratings_table', 1),
(21, '2019_12_03_143757_create_ride_ratings_table', 1),
(22, '2019_12_03_144425_create_banners_table', 1),
(23, '2019_12_03_144432_create_coupons_table', 1),
(24, '2019_12_03_145524_create_rules_table', 1),
(25, '2019_12_04_085711_create_files_table', 1),
(26, '2019_12_04_095137_create_cities_table', 1),
(27, '2019_12_04_140614_create_order_discounts_table', 1),
(28, '2019_12_05_215433_create_driver_suspends_table', 1),
(29, '2019_12_05_230345_create_customer_suspends_table', 1),
(30, '2019_12_06_005917_create_admins_table', 1),
(31, '2019_12_09_221425_create_driver_assets_table', 1),
(32, '2019_12_09_221730_create_assets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `driver_id` bigint(20) DEFAULT NULL,
  `service` enum('Package','Ride','Food') COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pickup_time` datetime DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `map_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_coupon_applied` tinyint(1) NOT NULL DEFAULT 0,
  `driver_fee` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_fee` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `percentage` int(11) NOT NULL DEFAULT 20,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_discounts`
--

CREATE TABLE `order_discounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `coupon_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_statuses`
--

CREATE TABLE `order_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('Draft','On Progress','Complete','Cancel') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Draft',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `track_number` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `package_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dropoff_time` datetime DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `map_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `distance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_fee` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `package_ratings`
--

CREATE TABLE `package_ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `driver_id` bigint(20) NOT NULL,
  `package_id` bigint(20) NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `package_statuses`
--

CREATE TABLE `package_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` bigint(20) NOT NULL,
  `status` enum('On Progress','Complete','Cancel') COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
-- Table structure for table `places`
--

CREATE TABLE `places` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `place_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `primary_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `secondary_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_text` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rides`
--

CREATE TABLE `rides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `map_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `distance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ride_fee` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ride_ratings`
--

CREATE TABLE `ride_ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `driver_id` bigint(20) NOT NULL,
  `ride_id` bigint(20) NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ride_statuses`
--

CREATE TABLE `ride_statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ride_id` bigint(20) NOT NULL,
  `status` enum('On Progress','Complete','Cancel') COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rules`
--

CREATE TABLE `rules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `city_id` bigint(20) DEFAULT NULL,
  `service_id` bigint(20) NOT NULL,
  `min` double(8,2) NOT NULL,
  `max` double(8,2) NOT NULL,
  `fixed_fee` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `increment_fee` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `top_ups`
--

CREATE TABLE `top_ups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `driver_id` bigint(20) NOT NULL,
  `via` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_balance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Pending','Success','Failed') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `driver_id` bigint(20) NOT NULL,
  `type` enum('Motorcycle','Car') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Motorcycle',
  `plate_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `passenger_seat` int(11) NOT NULL DEFAULT 1,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assets`
--
ALTER TABLE `assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `balances`
--
ALTER TABLE `balances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_points`
--
ALTER TABLE `customer_points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_suspends`
--
ALTER TABLE `customer_suspends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver_assets`
--
ALTER TABLE `driver_assets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver_points`
--
ALTER TABLE `driver_points`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver_positions`
--
ALTER TABLE `driver_positions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver_statuses`
--
ALTER TABLE `driver_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `driver_suspends`
--
ALTER TABLE `driver_suspends`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_discounts`
--
ALTER TABLE `order_discounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_statuses`
--
ALTER TABLE `order_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_ratings`
--
ALTER TABLE `package_ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_statuses`
--
ALTER TABLE `package_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `places`
--
ALTER TABLE `places`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rides`
--
ALTER TABLE `rides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ride_ratings`
--
ALTER TABLE `ride_ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ride_statuses`
--
ALTER TABLE `ride_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rules`
--
ALTER TABLE `rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `top_ups`
--
ALTER TABLE `top_ups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assets`
--
ALTER TABLE `assets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `balances`
--
ALTER TABLE `balances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `customer_points`
--
ALTER TABLE `customer_points`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer_suspends`
--
ALTER TABLE `customer_suspends`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `driver_assets`
--
ALTER TABLE `driver_assets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `driver_points`
--
ALTER TABLE `driver_points`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `driver_positions`
--
ALTER TABLE `driver_positions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `driver_statuses`
--
ALTER TABLE `driver_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `driver_suspends`
--
ALTER TABLE `driver_suspends`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_discounts`
--
ALTER TABLE `order_discounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_statuses`
--
ALTER TABLE `order_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `package_ratings`
--
ALTER TABLE `package_ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `package_statuses`
--
ALTER TABLE `package_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `places`
--
ALTER TABLE `places`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rides`
--
ALTER TABLE `rides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ride_ratings`
--
ALTER TABLE `ride_ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ride_statuses`
--
ALTER TABLE `ride_statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rules`
--
ALTER TABLE `rules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `top_ups`
--
ALTER TABLE `top_ups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
