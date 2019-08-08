-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 08, 2019 at 08:51 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `emoratour`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Garut', 'garut', '2019-08-06 03:54:15', '2019-08-07 08:14:20'),
(2, NULL, 2, 'Bandung', 'bandung', '2019-08-06 03:54:15', '2019-08-07 13:18:02'),
(3, NULL, 3, 'Bali', 'bali', '2019-08-07 13:19:51', '2019-08-07 13:19:51'),
(4, NULL, 4, 'Sulawesi Selatan', 'sulawesi-selatan', '2019-08-08 10:50:20', '2019-08-08 10:50:20'),
(5, NULL, 1, 'Pulau Kakaban', 'pulau-kakaban', '2019-08-08 11:00:30', '2019-08-08 11:00:30'),
(6, NULL, 1, 'Sumatera Utara', 'sumatera-utara', '2019-08-08 11:01:15', '2019-08-08 11:01:15');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'parent_id', 'select_dropdown', 'Parent', 0, 0, 1, 1, 1, 1, '{\"default\":\"\",\"null\":\"\",\"options\":{\"\":\"-- None --\"},\"relationship\":{\"key\":\"id\",\"label\":\"name\"}}', 2),
(24, 4, 'order', 'text', 'Order', 1, 1, 1, 1, 1, 1, '{\"default\":1}', 3),
(25, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 4),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"name\"}}', 5),
(27, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, '{}', 6),
(28, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(29, 5, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '{}', 1),
(30, 5, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, '{}', 2),
(31, 5, 'category_id', 'text', 'Kategori Kota', 0, 0, 1, 1, 1, 0, '{}', 3),
(32, 5, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, '{}', 4),
(33, 5, 'excerpt', 'text_area', 'Excerpt', 0, 0, 1, 1, 1, 1, '{}', 5),
(34, 5, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, '{}', 6),
(35, 5, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{\"resize\":{\"width\":\"1000\",\"height\":\"null\"},\"quality\":\"70%\",\"upsize\":true,\"thumbnails\":[{\"name\":\"medium\",\"scale\":\"50%\"},{\"name\":\"small\",\"scale\":\"25%\"},{\"name\":\"cropped\",\"crop\":{\"width\":\"300\",\"height\":\"250\"}}]}', 7),
(36, 5, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\",\"forceUpdate\":true},\"validation\":{\"rule\":\"unique:posts,slug\"}}', 8),
(37, 5, 'meta_description', 'text_area', 'Meta Description', 0, 0, 1, 1, 1, 1, '{}', 9),
(38, 5, 'meta_keywords', 'text_area', 'Meta Keywords', 0, 0, 1, 1, 1, 1, '{}', 10),
(39, 5, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"DRAFT\",\"options\":{\"PUBLISHED\":\"published\",\"DRAFT\":\"draft\",\"PENDING\":\"pending\"}}', 11),
(40, 5, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '{}', 12),
(41, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 13),
(42, 5, 'seo_title', 'text', 'SEO Title', 0, 1, 1, 1, 1, 1, '{}', 14),
(43, 5, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '{}', 15),
(44, 6, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'author_id', 'text', 'Author', 1, 0, 0, 0, 0, 0, NULL, 2),
(46, 6, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 6, 'excerpt', 'text_area', 'Excerpt', 1, 0, 1, 1, 1, 1, NULL, 4),
(48, 6, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 5),
(49, 6, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{\"slugify\":{\"origin\":\"title\"},\"validation\":{\"rule\":\"unique:pages,slug\"}}', 6),
(50, 6, 'meta_description', 'text', 'Meta Description', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 6, 'meta_keywords', 'text', 'Meta Keywords', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 6, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, '{\"default\":\"INACTIVE\",\"options\":{\"INACTIVE\":\"INACTIVE\",\"ACTIVE\":\"ACTIVE\"}}', 9),
(53, 6, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 10),
(54, 6, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 11),
(55, 6, 'image', 'image', 'Page Image', 0, 1, 1, 1, 1, 1, NULL, 12);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2019-08-06 03:53:58', '2019-08-06 03:53:58'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2019-08-06 03:53:58', '2019-08-06 03:53:58'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2019-08-06 03:53:58', '2019-08-06 03:53:58'),
(4, 'categories', 'categories', 'Kategori Kota', 'Kategori Kota', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2019-08-06 03:54:13', '2019-08-07 13:17:41'),
(5, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"desc\",\"default_search_key\":null,\"scope\":null}', '2019-08-06 03:54:16', '2019-08-07 13:18:36'),
(6, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, NULL, '2019-08-06 03:54:16', '2019-08-06 03:54:16');

-- --------------------------------------------------------

--
-- Table structure for table `emot_posts`
--

CREATE TABLE `emot_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) NOT NULL,
  `emoticon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `emot_posts`
--

INSERT INTO `emot_posts` (`id`, `post_id`, `emoticon`, `ip_address`, `created_at`, `updated_at`) VALUES
(12, 1, 'emot_senyum', '::1', NULL, NULL),
(13, 1, 'emot_love', '::1', NULL, NULL),
(14, 1, 'emot_bete', '::1', NULL, NULL),
(15, 1, 'emot_wow', '::1', NULL, NULL),
(16, 1, 'emot_senyum', '::1', NULL, NULL),
(17, 1, 'emot_senyum', '::1', NULL, NULL),
(18, 1, 'emot_senyum', '::1', NULL, NULL),
(19, 4, 'emot_senyum', '::1', NULL, NULL),
(20, 4, 'emot_love', '::1', NULL, NULL),
(21, 4, 'emot_bete', '::1', NULL, NULL),
(22, 4, 'emot_love', '::1', NULL, NULL),
(23, 4, 'emot_love', '::1', NULL, NULL),
(24, 4, 'emot_love', '::1', NULL, NULL),
(25, 4, 'emot_senyum', '::1', NULL, NULL),
(26, 4, 'emot_wow', '::1', NULL, NULL),
(27, 4, 'emot_wow', '::1', NULL, NULL),
(28, 1, 'emot_marah', '::1', NULL, NULL),
(29, 1, 'emot_bete', '::1', NULL, NULL),
(30, 1, 'emot_bete', '::1', NULL, NULL),
(31, 1, 'emot_love', '::1', NULL, NULL),
(32, 1, 'emot_bete', '::1', NULL, NULL),
(33, 1, 'emot_marah', '::1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2019-08-06 03:53:59', '2019-08-06 03:53:59');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2019-08-06 03:53:59', '2019-08-06 03:53:59', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2019-08-06 03:53:59', '2019-08-06 03:53:59', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2019-08-06 03:53:59', '2019-08-06 03:53:59', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2019-08-06 03:53:59', '2019-08-06 03:53:59', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 9, '2019-08-06 03:53:59', '2019-08-06 03:53:59', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 10, '2019-08-06 03:54:00', '2019-08-06 03:54:00', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 11, '2019-08-06 03:54:00', '2019-08-06 03:54:00', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 12, '2019-08-06 03:54:00', '2019-08-06 03:54:00', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 13, '2019-08-06 03:54:00', '2019-08-06 03:54:00', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 14, '2019-08-06 03:54:00', '2019-08-06 03:54:00', 'voyager.settings.index', NULL),
(11, 1, 'Kategori Kota', '', '_self', 'voyager-categories', '#000000', NULL, 8, '2019-08-06 03:54:14', '2019-08-07 13:19:04', 'voyager.categories.index', 'null'),
(12, 1, 'Posts', '', '_self', 'voyager-news', NULL, NULL, 6, '2019-08-06 03:54:16', '2019-08-06 03:54:16', 'voyager.posts.index', NULL),
(13, 1, 'Pages', '', '_self', 'voyager-file-text', NULL, NULL, 7, '2019-08-06 03:54:16', '2019-08-06 03:54:16', 'voyager.pages.index', NULL),
(14, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 5, 13, '2019-08-06 03:54:17', '2019-08-06 03:54:17', 'voyager.hooks', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2016_01_01_000000_create_pages_table', 2),
(24, '2016_01_01_000000_create_posts_table', 2),
(25, '2016_02_15_204651_create_categories_table', 2),
(26, '2017_04_11_000000_alter_post_nullable_fields_table', 2),
(27, '2019_08_08_155530_create_emot_posts_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2019-08-06 03:54:17', '2019-08-06 03:54:17');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2019-08-06 03:54:01', '2019-08-06 03:54:01'),
(2, 'browse_bread', NULL, '2019-08-06 03:54:02', '2019-08-06 03:54:02'),
(3, 'browse_database', NULL, '2019-08-06 03:54:02', '2019-08-06 03:54:02'),
(4, 'browse_media', NULL, '2019-08-06 03:54:02', '2019-08-06 03:54:02'),
(5, 'browse_compass', NULL, '2019-08-06 03:54:02', '2019-08-06 03:54:02'),
(6, 'browse_menus', 'menus', '2019-08-06 03:54:02', '2019-08-06 03:54:02'),
(7, 'read_menus', 'menus', '2019-08-06 03:54:03', '2019-08-06 03:54:03'),
(8, 'edit_menus', 'menus', '2019-08-06 03:54:03', '2019-08-06 03:54:03'),
(9, 'add_menus', 'menus', '2019-08-06 03:54:03', '2019-08-06 03:54:03'),
(10, 'delete_menus', 'menus', '2019-08-06 03:54:03', '2019-08-06 03:54:03'),
(11, 'browse_roles', 'roles', '2019-08-06 03:54:04', '2019-08-06 03:54:04'),
(12, 'read_roles', 'roles', '2019-08-06 03:54:04', '2019-08-06 03:54:04'),
(13, 'edit_roles', 'roles', '2019-08-06 03:54:04', '2019-08-06 03:54:04'),
(14, 'add_roles', 'roles', '2019-08-06 03:54:04', '2019-08-06 03:54:04'),
(15, 'delete_roles', 'roles', '2019-08-06 03:54:04', '2019-08-06 03:54:04'),
(16, 'browse_users', 'users', '2019-08-06 03:54:04', '2019-08-06 03:54:04'),
(17, 'read_users', 'users', '2019-08-06 03:54:04', '2019-08-06 03:54:04'),
(18, 'edit_users', 'users', '2019-08-06 03:54:04', '2019-08-06 03:54:04'),
(19, 'add_users', 'users', '2019-08-06 03:54:04', '2019-08-06 03:54:04'),
(20, 'delete_users', 'users', '2019-08-06 03:54:04', '2019-08-06 03:54:04'),
(21, 'browse_settings', 'settings', '2019-08-06 03:54:04', '2019-08-06 03:54:04'),
(22, 'read_settings', 'settings', '2019-08-06 03:54:04', '2019-08-06 03:54:04'),
(23, 'edit_settings', 'settings', '2019-08-06 03:54:04', '2019-08-06 03:54:04'),
(24, 'add_settings', 'settings', '2019-08-06 03:54:04', '2019-08-06 03:54:04'),
(25, 'delete_settings', 'settings', '2019-08-06 03:54:04', '2019-08-06 03:54:04'),
(26, 'browse_categories', 'categories', '2019-08-06 03:54:14', '2019-08-06 03:54:14'),
(27, 'read_categories', 'categories', '2019-08-06 03:54:14', '2019-08-06 03:54:14'),
(28, 'edit_categories', 'categories', '2019-08-06 03:54:14', '2019-08-06 03:54:14'),
(29, 'add_categories', 'categories', '2019-08-06 03:54:14', '2019-08-06 03:54:14'),
(30, 'delete_categories', 'categories', '2019-08-06 03:54:15', '2019-08-06 03:54:15'),
(31, 'browse_posts', 'posts', '2019-08-06 03:54:16', '2019-08-06 03:54:16'),
(32, 'read_posts', 'posts', '2019-08-06 03:54:16', '2019-08-06 03:54:16'),
(33, 'edit_posts', 'posts', '2019-08-06 03:54:16', '2019-08-06 03:54:16'),
(34, 'add_posts', 'posts', '2019-08-06 03:54:16', '2019-08-06 03:54:16'),
(35, 'delete_posts', 'posts', '2019-08-06 03:54:16', '2019-08-06 03:54:16'),
(36, 'browse_pages', 'pages', '2019-08-06 03:54:16', '2019-08-06 03:54:16'),
(37, 'read_pages', 'pages', '2019-08-06 03:54:17', '2019-08-06 03:54:17'),
(38, 'edit_pages', 'pages', '2019-08-06 03:54:17', '2019-08-06 03:54:17'),
(39, 'add_pages', 'pages', '2019-08-06 03:54:17', '2019-08-06 03:54:17'),
(40, 'delete_pages', 'pages', '2019-08-06 03:54:17', '2019-08-06 03:54:17'),
(41, 'browse_hooks', NULL, '2019-08-06 03:54:17', '2019-08-06 03:54:17');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(3, 1),
(4, 1),
(4, 3),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(21, 3),
(22, 1),
(22, 3),
(23, 1),
(23, 3),
(24, 1),
(24, 3),
(25, 1),
(25, 3),
(26, 1),
(26, 3),
(27, 1),
(27, 3),
(28, 1),
(28, 3),
(29, 1),
(29, 3),
(30, 1),
(30, 3),
(31, 1),
(31, 3),
(32, 1),
(32, 3),
(33, 1),
(33, 3),
(34, 1),
(34, 3),
(35, 1),
(35, 3),
(36, 1),
(36, 3),
(37, 1),
(37, 3),
(38, 1),
(38, 3),
(39, 1),
(39, 3),
(40, 1),
(40, 3);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 'Wisata Bedugul Bali', NULL, 'Jelajah alam indah di bali.', '<p>Bedugul adalah kawasan pariwisata yang sangat terkenal di kalangan wisatawan Indonesia. Saking terkenalnya Bedugul, bahkan di satu kawasan pariwisata terdapat 2 objek wisata favorit wisatawan Indonesia yaitu pura Ulun Danu Bratan dan Kebun Raya Bali. Namun banyak wisatawan yang belum mengetahui, bahwa di kawasan Bedugul terdapat objek menarik lainnya untuk tempat rekreasi. Maka dari itu, pada halaman ini saya tuliskan untuk anda 8 tempat rekreasi di Bedugul yang wajib dan menarik untuk di kunjungi.</p>\r\n<h2 style=\"box-sizing: border-box; font-family: Roboto, sans-serif; font-weight: 300; line-height: 1.2; margin: 0px 0px 10px; position: relative; font-size: 30px;\">Daya Tarik Utama Bedugul Sebagai Tempat Wisata</h2>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 28px; padding: 0px; color: #666666; font-family: Lato, sans-serif; font-size: 16px;\">Bedugul adalah kawasan pariwisata yang memiliki daya tarik utama pada panorama alam, seperti panorama danau dan kesejukan udara daerah pegunungan. Di kawasan pariwisata Bedugul terdapat tiga danau besar yaitu:</p>\r\n<ol style=\"box-sizing: border-box; margin: 0px 0px 28px 40px; padding: 0px; color: #666666; font-family: Lato, sans-serif; font-size: 16px;\">\r\n<li style=\"box-sizing: border-box; list-style-type: decimal;\">Danau Beratan atau sering ditulis danau Bratan.</li>\r\n<li style=\"box-sizing: border-box; list-style-type: decimal;\">Danau Buyan.</li>\r\n<li style=\"box-sizing: border-box; list-style-type: decimal;\">Danau Tamblingan.</li>\r\n</ol>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 28px; padding: 0px; color: #666666; font-family: Lato, sans-serif; font-size: 16px;\">Namun dari ketiga danau yang ada di Bedugul, yang paling terkenal sebagai tempat wisata adalah danau Beratan. Tidak kalah terkenal dengan danau Bratan sebagai destinasi wisata, kebun Raya Bali yang lokasinya juga berada di kawasan Bedugul juga selalu ramai dengan kunjungan wisatawan.</p>\r\n<h2 style=\"box-sizing: border-box; font-family: Roboto, sans-serif; font-weight: 300; line-height: 1.2; margin: 0px 0px 10px; position: relative; font-size: 30px;\">Lokasi Kawasan Pariwisata Bedugul</h2>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 28px; padding: 0px; color: #666666; font-family: Lato, sans-serif; font-size: 16px;\">Kawasan pariwisata Bedugul berada pada bagian tengah pulau Bali yang lokasinya berada berdekatan dengan kawasan danau Beratan. Daerah kawasan pariwisata Bedugul masuk dalam pemerintahan kabupaten Tabanan. Karena kawasan Bedugul berada di ketinggian 1,500 meter dari permukaan air laut membuat udara pada siang hari sangat sejuk di daerah Bedugul.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 28px; padding: 0px; color: #666666; font-family: Lato, sans-serif; font-size: 16px;\">Untuk mencapai lokasi Bedugul dari kawasan Bali selatan seperti tempat wisata Kuta, maka akan di perlukan waktu tempuh sekitar 2 jam perjalanan, dengan perkiraan jarak tempuh kurang lebih 62 kilometer. Namun jika anda berangkat dari pantai Lovina, maka waktu tempuh untuk mencapai kawasan Bedugul menjadi lebih pendek. Kurang lebih 1 jam perjalan dengan perkiraan jarak tempuh 30 kilometer.</p>', 'posts\\August2019\\5BbR6eIdFfgVZDZDhLW8.jpg', 'wisata-bedugul-bali', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-08-06 03:54:16', '2019-08-07 13:20:02'),
(2, 2, 4, 'Desa Kete Tesu', NULL, 'Wisata di Sulawesi Selatan', '<p id=\"83a6\" class=\"kx ky dz ap kz b la lb lc ld le lf lg lh li lj lk\" style=\"box-sizing: inherit; margin: 2em 0px -0.46em; color: rgba(0, 0, 0, 0.84); line-height: 1.58; letter-spacing: -0.004em; font-family: medium-content-serif-font, Georgia, Cambria, \'Times New Roman\', Times, serif; font-size: 21px;\" data-selectable-paragraph=\"\">Desa Kete Kesu adalah desa wisata di Tana Toraja yang berisi rumah adat Tongkonan dan kuburan di tebing batu. Di desa ini terdapat peninggalan purbakala berupa kubur batu yang diperkirakan berusia lebih dari 500 tahun. Desa ini masuk dalam kawasan cagar budaya dan juga pusat berbagai acara adat Toraja seperti Rambu Solo (pemakaman adat yang dilaksanakan dengan meriah). Rambu Tuka (upacara memasuki rumah adat baru) dan sebagainya.</p>\r\n<p id=\"0636\" class=\"kx ky dz ap kz b la lb lc ld le lf lg lh li lj lk\" style=\"box-sizing: inherit; margin: 2em 0px -0.46em; color: rgba(0, 0, 0, 0.84); line-height: 1.58; letter-spacing: -0.004em; font-family: medium-content-serif-font, Georgia, Cambria, \'Times New Roman\', Times, serif; font-size: 21px;\" data-selectable-paragraph=\"\">Kete Tesu berada 5 km dari Rantepao dan mudah dijangkau. Biaya masuk Kete Tesu adalah Rp 10.000 per orang dan kamu sudah bisa melihat berbagai peninggalan sejarah Suku Toraja, berburu foto yang&nbsp;<a class=\"cy bt ll lm ln lo\" style=\"box-sizing: inherit; text-decoration-line: none; -webkit-tap-highlight-color: transparent; background-repeat: repeat-x; background-size: 1px 1px; background-position: 0px calc(1em + 1px);\" href=\"http://blog.pergi.com/10-area-bekas-tambang-di-indonesia-yang-jadi-tempat-wisata-instagramable/\">instagramable </a>dan jika beruntung kamu bisa menyaksikan upacara adat yang biasanya diadakan megah di desa ini.</p>', 'posts\\August2019\\9gqb8PelPuy366ROp4QA.jpg', 'desa-kete-tesu', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-08-06 03:54:16', '2019-08-08 10:54:34'),
(3, 2, 5, 'Danau Kakaban', NULL, 'Keindahan Danau Kakaban', '<p><span style=\"background-color: #ffffff;\"><strong style=\"color: #222222; font-family: sans-serif;\">Danau Kakaban</strong><span style=\"color: #222222; font-family: sans-serif;\">, <span style=\"color: #000000;\">adalah air laut yang terperangkap di&nbsp;</span></span><span style=\"color: #000000;\"><a style=\"color: #000000; background: none #ffffff; font-family: sans-serif; text-decoration: underline;\" title=\"Pulau Kakaban\" href=\"https://id.wikipedia.org/wiki/Pulau_Kakaban\">Pulau Kakaban</a><span style=\"font-family: sans-serif;\">, ditambah dengan air dari dalam tanah dan air hujan sejak 2 juta tahun lalu. Danau Kakaban merupakan&nbsp;</span><a style=\"color: #000000; background: none #ffffff; font-family: sans-serif; text-decoration: underline;\" title=\"Danau\" href=\"https://id.wikipedia.org/wiki/Danau\">danau</a><span style=\"font-family: sans-serif;\">&nbsp;</span><a style=\"color: #000000; background: none #ffffff; font-family: sans-serif; text-decoration: underline;\" title=\"Prasejarah\" href=\"https://id.wikipedia.org/wiki/Prasejarah\">prasejarah</a><span style=\"font-family: sans-serif;\">&nbsp;yaitu zaman peralihan&nbsp;</span><a class=\"mw-redirect\" style=\"color: #000000; background: none #ffffff; font-family: sans-serif; text-decoration: underline;\" title=\"Holosin\" href=\"https://id.wikipedia.org/wiki/Holosin\">Holosin</a><span style=\"font-family: sans-serif;\">. Luasnya sekitar 5&nbsp;km&sup2;, berdinding karang terjal setinggi 50 meter, yang mengakibatkan air laut yang terperangkap tidak lagi bisa keluar, menjadi danau. Secara administratif, Danau Kakaban termasuk wilayah&nbsp;</span><a style=\"color: #000000; background: none #ffffff; font-family: sans-serif; text-decoration: underline;\" title=\"Kabupaten Berau\" href=\"https://id.wikipedia.org/wiki/Kabupaten_Berau\">Kabupaten Berau</a><span style=\"font-family: sans-serif;\">,&nbsp;</span><a style=\"color: #000000; background: none #ffffff; font-family: sans-serif; text-decoration: underline;\" title=\"Kalimantan Timur\" href=\"https://id.wikipedia.org/wiki/Kalimantan_Timur\">Kalimantan Timur</a><span style=\"font-family: sans-serif;\">.</span></span></span></p>\r\n<h2 style=\"color: #000000; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-weight: normal; margin: 1em 0px 0.25em; overflow: hidden; padding: 0px; border-bottom: 1px solid #a2a9b1; font-family: \'Linux Libertine\', Georgia, Times, serif; line-height: 1.3;\"><span id=\"Biota_dalam_Danau\" class=\"mw-headline\">Biota dalam Danau</span></h2>\r\n<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\"><span style=\"color: #000000;\">Karena perubahan dan evolusi yang cukup lama oleh air hujan dan air tanah, air danau ini kemudian menjadi lebih tawar dibandingkan laut yang ada di sekitarnya. Perubahan ini berdampak juga pada adaptasi&nbsp;<a style=\"color: #000000; background: none;\" title=\"Fauna\" href=\"https://id.wikipedia.org/wiki/Fauna\">fauna</a>&nbsp;laut yang ada di dalam danau itu. Ubur-ubur misalnya, karena terbatasnya makanan, akhirnya beradaptasi dengan melakukan&nbsp;<a class=\"new\" style=\"color: #000000; background: none;\" title=\"Simbiose mutualistis (halaman belum tersedia)\" href=\"https://id.wikipedia.org/w/index.php?title=Simbiose_mutualistis&amp;action=edit&amp;redlink=1\">simbiose mutualistis</a>&nbsp;dengan algae.&nbsp;<a class=\"mw-redirect\" style=\"color: #000000; background: none;\" title=\"Algae\" href=\"https://id.wikipedia.org/wiki/Algae\">Algae</a>&nbsp;adalah penghasil makanan dan harus memasak makanan dengan bantuan sinar matahari.</span></p>\r\n<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\"><span style=\"color: #000000;\">Selama ribuan tahun danau di tengah laut ini tentu saja menciptakan suatu ekosistem tersendiri yang sangat unik.</span></p>\r\n<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\"><span style=\"color: #000000;\">Danau unik ini memiliki empat jenis&nbsp;<a style=\"color: #000000; background: none;\" title=\"Ubur-ubur\" href=\"https://id.wikipedia.org/wiki/Ubur-ubur\">ubur-ubur</a>, salah satunya adalah ubur-ubur jenis&nbsp;<em><a class=\"new\" style=\"color: #000000; background: none;\" title=\"Cassiopea (halaman belum tersedia)\" href=\"https://id.wikipedia.org/w/index.php?title=Cassiopea&amp;action=edit&amp;redlink=1\">Cassiopea</a></em>.</span></p>\r\n<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\"><span style=\"color: #000000;\">Cerita&nbsp;<a style=\"color: #000000; background: none;\" title=\"Simbiosis\" href=\"https://id.wikipedia.org/wiki/Simbiosis\">simbiosis</a>&nbsp;ini sangat menarik. Ubur-ubur&nbsp;<a style=\"color: #000000; background: none;\" title=\"Pulau Kakaban\" href=\"https://id.wikipedia.org/wiki/Pulau_Kakaban\">Pulau Kakaban</a>, menempatkan algae pada bagian kakinya, karena ganggang berkepentingan untuk mendapatkan matahari sebagai sarana melakukan fotosistesa, sang ubur-ubur akhirnya berjalan terbalik, dengan kaki ke atas dan kepala ke bawah. Cara berjalan yang unik inilah yang menarik para ilmuwan dan penyelam untuk mengetahui evolusi terhadap&nbsp;<a class=\"new\" style=\"color: #000000; background: none;\" title=\"Fauna laut (halaman belum tersedia)\" href=\"https://id.wikipedia.org/w/index.php?title=Fauna_laut&amp;action=edit&amp;redlink=1\">fauna laut</a>&nbsp;yang akhirnya berperilaku aneh demi mempertahankan hidup mereka. Catatan para penyelam juga memberikan gambaran, hewan-hewan yang ada di danau ini mempunyai cahaya lebih berwarna warni ketika hari semakin gelap. Diduga, pada danau ini banyak akan dijumpai jenis-jenis baru.</span></p>\r\n<h2 style=\"color: #000000; background-image: none; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; font-weight: normal; margin: 1em 0px 0.25em; overflow: hidden; padding: 0px; border-bottom: 1px solid #a2a9b1; font-family: \'Linux Libertine\', Georgia, Times, serif; line-height: 1.3;\"><span id=\"Hanya_dua_di_dunia\" class=\"mw-headline\">Hanya dua di dunia</span></h2>\r\n<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\"><span style=\"color: #000000;\">Di dunia, tempat seperti ini hanya dijumpai di&nbsp;<a style=\"color: #000000; background: none;\" title=\"Danau Ubur-ubur\" href=\"https://id.wikipedia.org/wiki/Danau_Ubur-ubur\">Danau Ubur-ubur</a>&nbsp;<a style=\"color: #000000; background: none;\" title=\"Palau\" href=\"https://id.wikipedia.org/wiki/Palau\">Palau</a>,&nbsp;<a class=\"new\" style=\"color: #000000; background: none;\" title=\"Kepulauan Micronesia (halaman belum tersedia)\" href=\"https://id.wikipedia.org/w/index.php?title=Kepulauan_Micronesia&amp;action=edit&amp;redlink=1\">Kepulauan Micronesia</a>&nbsp;di kawasan Tenggara&nbsp;<a class=\"mw-redirect\" style=\"color: #000000; background: none;\" title=\"Laut Pasifik\" href=\"https://id.wikipedia.org/wiki/Laut_Pasifik\">Laut Pasifik</a>. Dengan demikian&nbsp;<a style=\"color: #000000; background: none;\" title=\"Pulau Kakaban\" href=\"https://id.wikipedia.org/wiki/Pulau_Kakaban\">Pulau Kakaban</a>&nbsp;merupakan satu-satunya pulau di Indonesia yang mempunyai danau di tengahnya.</span></p>\r\n<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\"><span style=\"color: #000000;\">Selain itu di pinggiran pantainya juga tumbuh hutan bakau, yang dihuni oleh banyak jenis&nbsp;<a style=\"color: #000000; background: none;\" title=\"Kepiting\" href=\"https://id.wikipedia.org/wiki/Kepiting\">kepiting</a>,&nbsp;<a style=\"color: #000000; background: none;\" title=\"Teripang\" href=\"https://id.wikipedia.org/wiki/Teripang\">teripang</a>, dan&nbsp;<a style=\"color: #000000; background: none;\" title=\"Ular laut\" href=\"https://id.wikipedia.org/wiki/Ular_laut\">ular laut</a>. Banyak sekali jenis-jenis hewan yang belum diidentifikasi di kawasan ini. Dr. Thomas Tomascik, seorang ahli kelautan berkebangsaan&nbsp;<a style=\"color: #000000; background: none;\" title=\"Kanada\" href=\"https://id.wikipedia.org/wiki/Kanada\">Kanada</a>, mengatakan&nbsp;<a style=\"color: #000000; background: none;\" title=\"Pulau Kakaban\" href=\"https://id.wikipedia.org/wiki/Pulau_Kakaban\">Pulau Kakaban</a>&nbsp;merupakan surga kekayaan&nbsp;<a style=\"color: #000000; background: none;\" title=\"Biologi\" href=\"https://id.wikipedia.org/wiki/Biologi\">biologi</a>&nbsp;yang ada di Indonesia. Misteri bagaimana hewan dan tumbuhan yang terisolasi dalam danau ini merupakan salah satu objek yang sangat diminati oleh&nbsp;<a style=\"color: #000000; background: none;\" title=\"Ilmuwan\" href=\"https://id.wikipedia.org/wiki/Ilmuwan\">ilmuwan</a>&nbsp;untuk diungkap. Karena itu laut ini memang pantas menjadi objek&nbsp;<a class=\"new\" style=\"color: #000000; background: none;\" title=\"Konsevasi alam (halaman belum tersedia)\" href=\"https://id.wikipedia.org/w/index.php?title=Konsevasi_alam&amp;action=edit&amp;redlink=1\">konsevasi alam</a>&nbsp;yang harusnya dilindungi dan dilestarikan.</span></p>\r\n<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\"><span style=\"color: #000000;\">Salah satu ungkapan yang menarik, bagaimana misalnya ada hewan-hewan laut yang sekarang tetap saja survive padahal&nbsp;<a style=\"color: #000000; background: none;\" title=\"Kesadahan air\" href=\"https://id.wikipedia.org/wiki/Kesadahan_air\">kesadahan air</a>&nbsp;di dalamnya sudah berubah total.</span></p>\r\n<p>&nbsp;</p>\r\n<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\"><span style=\"color: #000000;\">Pulau Kakaban dalam bahasa daerah adalah pulau yang \"memeluk\"\'. Jadi Pulau Kakaban artinya \"sebuah pulau yang memeluk danau\", termasuk di dalamnya adalah&nbsp;<a style=\"color: #000000; background: none;\" title=\"Flora\" href=\"https://id.wikipedia.org/wiki/Flora\">flora</a>&nbsp;dan&nbsp;<a style=\"color: #000000; background: none;\" title=\"Fauna\" href=\"https://id.wikipedia.org/wiki/Fauna\">faunanya</a>&nbsp;yang penuh keunikan.</span></p>\r\n<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\">&nbsp;</p>', 'posts\\August2019\\ANHQH3ldYVfHrRxWZmYq.jpg', 'danau-kakaban', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-08-06 03:54:16', '2019-08-08 11:05:13'),
(4, 2, 2, 'Danau Toba dan Pulau Samosir', NULL, 'Keindahan Danau Toba Dan Pulau Samosir Di Tengah Danaunya', '<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\"><span style=\"color: #404040; font-family: \'Roboto Condensed\', \'Helvetica Neue\', helvetica, arial, sans-serif; font-size: 16px;\">Danau Toba adalah sebuah danau yang terbentuk akibat aktivitas vulkanik gunung berapi yang termasuk Super Vulcan, yaitu Gunung Toba yang terletak di Provinsi Sumatera Utara, Indonesia. Letusan Gunung Toba diperkirakan terjadi sekitar 73.000 sampai 75.000 tahun yang lalu.&nbsp;</span></p>\r\n<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\"><span style=\"color: #404040; font-family: \'Roboto Condensed\', \'Helvetica Neue\', helvetica, arial, sans-serif; font-size: 16px;\">Karena letusan Gunung Toba yang sangat besar beberapa peneliti mancanegara melakukan penelitian mengenai penyebab yang mengakibatkan Danau Toba terbentuk. Diperkirakan letusan Gunung Toba merupakan salah satu letusan terdahsyat yang pernah ada karena total material yang dikeluarkan mencapai&nbsp; 2.800 km</span><span style=\"box-sizing: border-box; font-size: 12px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; color: #404040; font-family: \'Roboto Condensed\', \'Helvetica Neue\', helvetica, arial, sans-serif;\">3</span><span style=\"color: #404040; font-family: \'Roboto Condensed\', \'Helvetica Neue\', helvetica, arial, sans-serif; font-size: 16px;\">&nbsp;&ndash; 2.000 km</span><span style=\"box-sizing: border-box; font-size: 12px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; color: #404040; font-family: \'Roboto Condensed\', \'Helvetica Neue\', helvetica, arial, sans-serif;\">3</span><span style=\"color: #404040; font-family: \'Roboto Condensed\', \'Helvetica Neue\', helvetica, arial, sans-serif; font-size: 16px;\">&nbsp;dari Ignimbrit yang mengalir di atas tanah, dan sekitar 800 km</span><span style=\"box-sizing: border-box; font-size: 12px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; color: #404040; font-family: \'Roboto Condensed\', \'Helvetica Neue\', helvetica, arial, sans-serif;\">3</span><span style=\"color: #404040; font-family: \'Roboto Condensed\', \'Helvetica Neue\', helvetica, arial, sans-serif; font-size: 16px;\">&nbsp;yang jatuh sebagai abu terutama ke barat. Aliran piroklastik dari letusan menghancurkan area seluas 20.000 km</span><span style=\"box-sizing: border-box; font-size: 12px; line-height: 0; position: relative; vertical-align: baseline; top: -0.5em; color: #404040; font-family: \'Roboto Condensed\', \'Helvetica Neue\', helvetica, arial, sans-serif;\">2</span><span style=\"color: #404040; font-family: \'Roboto Condensed\', \'Helvetica Neue\', helvetica, arial, sans-serif; font-size: 16px;\">, dengan deposito abu setebal 600 m dengan kawah utama. Hal ini menyebabkan terbentuknya kaldera besar yang terisi air yang sekarang dikenal dengan Danau Toba dan tekanan keatas oleh magma yang belum keluar menyebabkan terbentuknya sebuah pulau di tengah danau yang dikenal sebagai Pulau Samosir.</span></p>\r\n<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\"><span style=\"color: #404040; font-family: \'Roboto Condensed\', \'Helvetica Neue\', helvetica, arial, sans-serif; font-size: 16px;\"><img title=\"Danau Toba\" src=\"http://katalogwisata.com/wp-content/uploads/2015/11/danau_toba_ku_by_thechinkkalart.jpg\" alt=\"Danau Toba\" width=\"900\" height=\"500\" /></span></p>\r\n<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\"><span style=\"color: #404040; font-family: \'Roboto Condensed\', \'Helvetica Neue\', helvetica, arial, sans-serif; font-size: 16px;\">Danau ini mempunyai ukuran panjang 100 kilometer dan lebar 30 kilometer sehingga danau ini merupakan danau terbesar di Indonesia dan Asia Tenggara, karena hal inilah danau ini sudah terkenal hingga ke mancanegara. Selain hal tersebut danau ini terkenal akan keindahan yang dimilikinya sehingga sampai saat ini banyak wisatawan yang berkunjung ke Danau Toba maupun ke Pulau Samosir.</span></p>\r\n<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\"><span style=\"color: #404040; font-family: \'Roboto Condensed\', \'Helvetica Neue\', helvetica, arial, sans-serif; font-size: 16px;\"><img src=\"http://katalogwisata.com/wp-content/uploads/2015/11/Pulau-Samosir-Danau-Toba.jpg\" alt=\"\" width=\"600\" height=\"443\" /></span></p>\r\n<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\">&nbsp;</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #404040; font-family: \'Roboto Condensed\', \'Helvetica Neue\', helvetica, arial, sans-serif; font-size: 16px;\">Banyak beberapa cerita rakyat yang menceritakan terbentuknya Danau Toba dan Pulau Samosir, salah satunya seperti berikut ini: Alkisah terdapat seorang pemuda yang bernama Toba dan aktivitas sehari-hari yang dilakukan Toba adalah memancing. Suatu hari Toba pergi memancing ikan di aliran sungai, sudah seharian Toba memancing namun dia tidak mendapatkan seekor ikanpun. Dengan rasa putus asa karena matahari sudah mau terbenam Toba mencampakkan kailnya ke air yang paling dalam, tiba-tiba dia tersentak karena kailnya mendapatkan seekor ikan emas yang sangat besar. Dengan rasa bahagia diapun mengangkat ikan tersebut dan beranjak hendak pulang.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #404040; font-family: \'Roboto Condensed\', \'Helvetica Neue\', helvetica, arial, sans-serif; font-size: 16px;\">Tetapi Toba tersentak kaget mendengar suara merdu dari ikan emas tersebut &ldquo;Jangan bawa aku ke rumahmu untuk kau masak, tetapi taruhlah aku di dalam sebuah gubuk kecil di ladang, dan datanglah kesana setelah tiga hari&rdquo;. Toba kaget melihat ikan itu bisa berbicara, dan diapun menuruti perkataan ikan emas tersebut.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #404040; font-family: \'Roboto Condensed\', \'Helvetica Neue\', helvetica, arial, sans-serif; font-size: 16px;\">Setelah tiga hari Toba menunggu, diapun pergi ke gubuk tersebut. Toba tersentak kaget karena dia bukan menemukan seekor ikan emas di dalam gubuk tersebut, melainkan dia menemukan seorang gadis yang sangat cantik dengan rambut panjang bagaikan bidadari yang turun dari langit ke tujuh. Dengan perasaan kaget dan kagum akan kecantikan gadis tersebut Toba bertanya kepada gadis itu &ldquo;Siapa gerangan kamu dan mengapa ada disini ? &ldquo;, gadis itu menjawab dengan lembut &ldquo;aku bernama Nauli, Putri penguasa di dalam air. Aku diperintahkan oleh Dewata untuk manusia&rdquo;.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #404040; font-family: \'Roboto Condensed\', \'Helvetica Neue\', helvetica, arial, sans-serif; font-size: 16px;\">Sebagai seorang pemuda Toba merayu gadis tersebut untuk mau menjadi pendamping hidupnya. Gadis itu berkata &ldquo;Aku mau menjadi pendamping hidupmu tetapi dengan satu syarat akan sebuah perjanjian. Hal apapun yang terjadi nanti di rumah tangga kita, kamu tidak boleh mengatakan bahwa aku adalah jelmaan dari seekor ikan dan apabila kamu mengingkari janji tersebut, aku akan kembali berwujud menjadi seekor ikan dan hidup kembali di dalam air&rdquo;. Toba setuju dengan perjanjian tersebut dan merekapun mendirikan sebuah rumah tangga.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #404040; font-family: \'Roboto Condensed\', \'Helvetica Neue\', helvetica, arial, sans-serif; font-size: 16px;\">Untuk kebutuhan hidup sehari-hari mereka bertani. Mereka hidup rukun dan damai. Setelah beberapa lama mereka dikaruniai seorang anak yang bernama Samosir. Di suatu hari ketika anak mereka Samosir menghantarkan makanan ke ladang untuk bapaknya, Samosir terjatuh dan makanan tersebut menjadi kotor dan bercampur debu. Samosir mengumpulkan makanan tesebut dan terus membawanya kepada ayahnya. Setelah sampai diladang Samosir memanggil ayahnya untuk makan, tetapi dia takut untuk menceritakan apa yang dialaminya saat membawa makanan tersebut.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #404040; font-family: \'Roboto Condensed\', \'Helvetica Neue\', helvetica, arial, sans-serif; font-size: 16px;\">Ketika Ayahnya membuka makanan tersebut, dia kaget dan betul-betul marah melihat makanannya kotor dan bercampur debu. Diapun marah dan berkata kepada Samosir &ldquo;dasar anak seekor ikan, bawa makanan saja tidak becus &ldquo;, Samosir menangis mendengar amarah ayahnya dan langsung pulang ke rumah dan menceritakan hal ini kepada ibunya. Nauli merasa sedih mendengar laporan anaknya Samosir, diapun ikut menangis. Nauli merasa bahwa suaminya Toba telah mengingkari janjinya.Dengan rasa sedih Nauli memeluk anaknya Samosir dan mengakui bahwa dia memang jelmaan dari seekor ikan.</p>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #404040; font-family: \'Roboto Condensed\', \'Helvetica Neue\', helvetica, arial, sans-serif; font-size: 16px;\">Nauli menyuruh anaknya Samosir untuk pergi ke daratan yang paling tinggi, dan mengatakan kepada Samosir bahwa akibat dari janji yang telah di ingkari oleh ayahnya maka Nauli akan kembali berwujud menjadi seekor ikan. Setelah Samosir berada tepat didaratan yang paling tinggi, Nauli berdoa kepada sang pencipta untuk mengembalikan wujudnya seperti semula. Setelah hal tersebut hujanpun turun sangat deras dan berlangsung sangat lama. Airpun meluap dan menenggelamkan tempat tinggal mereka menjadi danau yang sangat besar. Nauli pun berubah wujud kembali menjadi seekor ikan. Akibat hal teresebut air yang menenggelamkan desa mereka menjadi sebuah danau. Danau itu dikenal dengan nama Danau Toba dan dataran tinggi tempat Samosir berada adalah Pulau Samosir.</p>\r\n<figure class=\"image\"><img src=\"http://katalogwisata.com/wp-content/uploads/2015/11/mdh.1426672139.jpg\" alt=\"Pemandangan Malam Hari di Pulau Samosir, Sumber : www.pedomanwisata.com\" width=\"600\" height=\"360\" />\r\n<figcaption><span style=\"color: #000000; font-family: \'Roboto Condensed\', \'Helvetica Neue\', helvetica, arial, sans-serif; font-size: 13px; background-color: #ffffff;\">Pemandangan Malam Hari di Pulau Samosir, Sumber : www.pedomanwisata.com</span></figcaption>\r\n</figure>\r\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px; color: #404040; font-family: \'Roboto Condensed\', \'Helvetica Neue\', helvetica, arial, sans-serif; font-size: 16px;\">&nbsp;</p>\r\n<figure class=\"image\"><img src=\"http://katalogwisata.com/wp-content/uploads/2015/11/mdh.1426672187.jpg\" alt=\"\" width=\"640\" height=\"400\" />\r\n<figcaption><span style=\"color: #000000; font-family: \'Roboto Condensed\', \'Helvetica Neue\', helvetica, arial, sans-serif; font-size: 13px; background-color: #ffffff;\">Penginapan di Pulau Samosir, Sumber : www.pedomanwisata.com</span></figcaption>\r\n</figure>\r\n<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\"><span style=\"color: #404040; font-family: \'Roboto Condensed\', \'Helvetica Neue\', helvetica, arial, sans-serif; font-size: 16px;\">Untuk mencapai Pulau Samosir&nbsp; pengunjung dapat memalui daratan utama di Danau Toba, disana terdapat akomodasi yang tersedia di kota Parapat. Parapat merupakan kota kecil semenanjung berbatu yang menjorok ke danau. Dalam perjalanan ke Parapat dari kota bukit Berastagi pengunjung akan mendapatkan beberapa pemandangan sebagaimana danau ini mulai terlihat dan jalan turun gunung dekat dengan garis pantai. Di Parapat,tinggal orang Batak Toba dan Batak Simalungun yang dikenal sebagai orang yang bahagia dan santai, terkenal dengan lagu-lagu hidup dan sentimental mereka. Meskipun mayoritas telah memeluk agama Kristen, kepercayaan dan tradisi kuno masih bertahan.</span></p>', 'posts\\August2019\\xKVL5C4QJnhUc7Lwdrdr.jpg', 'danau-toba-dan-pulau-samosir', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2019-08-06 03:54:16', '2019-08-08 11:14:15');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2019-08-06 03:54:00', '2019-08-06 03:54:00'),
(2, 'user', 'Normal User', '2019-08-06 03:54:00', '2019-08-06 03:54:00'),
(3, 'Author', 'Author', '2019-08-07 13:15:48', '2019-08-07 13:15:48');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'EmoraTour', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Emoticon Feedback For Tour', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\August2019\\sysdYwoEgSNPMdX7mMfu.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Emoratour', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Emoticon Feedback For Tourist', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 5, 'pt', 'Post', '2019-08-06 03:54:17', '2019-08-06 03:54:17'),
(2, 'data_types', 'display_name_singular', 6, 'pt', 'Página', '2019-08-06 03:54:17', '2019-08-06 03:54:17'),
(3, 'data_types', 'display_name_singular', 1, 'pt', 'Utilizador', '2019-08-06 03:54:17', '2019-08-06 03:54:17'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2019-08-06 03:54:17', '2019-08-06 03:54:17'),
(5, 'data_types', 'display_name_singular', 2, 'pt', 'Menu', '2019-08-06 03:54:17', '2019-08-06 03:54:17'),
(6, 'data_types', 'display_name_singular', 3, 'pt', 'Função', '2019-08-06 03:54:17', '2019-08-06 03:54:17'),
(7, 'data_types', 'display_name_plural', 5, 'pt', 'Posts', '2019-08-06 03:54:17', '2019-08-06 03:54:17'),
(8, 'data_types', 'display_name_plural', 6, 'pt', 'Páginas', '2019-08-06 03:54:17', '2019-08-06 03:54:17'),
(9, 'data_types', 'display_name_plural', 1, 'pt', 'Utilizadores', '2019-08-06 03:54:17', '2019-08-06 03:54:17'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2019-08-06 03:54:17', '2019-08-06 03:54:17'),
(11, 'data_types', 'display_name_plural', 2, 'pt', 'Menus', '2019-08-06 03:54:17', '2019-08-06 03:54:17'),
(12, 'data_types', 'display_name_plural', 3, 'pt', 'Funções', '2019-08-06 03:54:17', '2019-08-06 03:54:17'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2019-08-06 03:54:17', '2019-08-06 03:54:17'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2019-08-06 03:54:17', '2019-08-06 03:54:17'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2019-08-06 03:54:17', '2019-08-06 03:54:17'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2019-08-06 03:54:17', '2019-08-06 03:54:17'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2019-08-06 03:54:17', '2019-08-06 03:54:17'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2019-08-06 03:54:17', '2019-08-06 03:54:17'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2019-08-06 03:54:17', '2019-08-06 03:54:17'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2019-08-06 03:54:17', '2019-08-06 03:54:17'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2019-08-06 03:54:17', '2019-08-06 03:54:17'),
(22, 'menu_items', 'title', 12, 'pt', 'Publicações', '2019-08-06 03:54:17', '2019-08-06 03:54:17'),
(23, 'menu_items', 'title', 3, 'pt', 'Utilizadores', '2019-08-06 03:54:17', '2019-08-06 03:54:17'),
(24, 'menu_items', 'title', 11, 'pt', 'Categorias', '2019-08-06 03:54:17', '2019-08-06 03:54:17'),
(25, 'menu_items', 'title', 13, 'pt', 'Páginas', '2019-08-06 03:54:17', '2019-08-06 03:54:17'),
(26, 'menu_items', 'title', 4, 'pt', 'Funções', '2019-08-06 03:54:17', '2019-08-06 03:54:17'),
(27, 'menu_items', 'title', 5, 'pt', 'Ferramentas', '2019-08-06 03:54:17', '2019-08-06 03:54:17'),
(28, 'menu_items', 'title', 6, 'pt', 'Menus', '2019-08-06 03:54:17', '2019-08-06 03:54:17'),
(29, 'menu_items', 'title', 7, 'pt', 'Base de dados', '2019-08-06 03:54:17', '2019-08-06 03:54:17'),
(30, 'menu_items', 'title', 10, 'pt', 'Configurações', '2019-08-06 03:54:17', '2019-08-06 03:54:17');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, '$2y$10$wlxw9/8wCbz5G.aTFPKytOLziBnFHQlrMr4lSLPbLxQAG9x./Z3v6', 'Tv0WDQoI2ltO1Iy2v4aiD6s2GQ1SWNZpziDdqWHQcWaPo82UWiMKNa0EQTLO', NULL, '2019-08-06 03:54:16', '2019-08-06 03:54:16'),
(2, 3, 'Fathia', 'fathia@gmail.com', 'users\\August2019\\YAlGjp8fRkjw0HHAAwrY.jpeg', NULL, '$2y$10$R7gGhwWlF7oYw.QBvzTxH.mzUQWDpUeC18l2qZnhPS7.9S7Ngw4Jy', NULL, '{\"locale\":\"id\"}', '2019-08-07 13:16:24', '2019-08-07 13:16:24');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `emot_posts`
--
ALTER TABLE `emot_posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `emot_posts`
--
ALTER TABLE `emot_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
