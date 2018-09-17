-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2018 at 06:08 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_ecommerce`
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

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Laptop', 'laptop', '2018-07-21 07:20:13', '2018-07-21 07:20:13'),
(2, 'Phone', 'phone', '2018-07-21 07:20:13', '2018-07-21 07:20:13'),
(3, 'Headphone', 'headphone', '2018-07-21 07:20:13', '2018-07-21 07:20:13'),
(4, 'Watch', 'watch', '2018-07-21 07:20:13', '2018-07-21 07:20:13'),
(5, 'Gaming', 'gaming', '2018-07-21 07:20:13', '2018-07-21 07:20:13'),
(6, 'Camera', 'camera', '2018-07-21 07:20:13', '2018-07-21 07:20:13'),
(7, 'Music', 'music', '2018-07-21 07:34:17', '2018-07-21 07:34:17'),
(8, 'Desktop', 'desktop', '2018-07-23 12:07:53', '2018-07-23 12:07:53');

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`id`, `product_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 3, 1, NULL, NULL),
(4, 4, 1, NULL, NULL),
(5, 5, 1, NULL, NULL),
(6, 6, 1, NULL, NULL),
(7, 7, 1, NULL, NULL),
(8, 8, 1, NULL, NULL),
(9, 9, 1, NULL, NULL),
(10, 10, 1, NULL, NULL),
(11, 11, 1, NULL, NULL),
(12, 12, 1, NULL, NULL),
(13, 13, 1, NULL, NULL),
(14, 14, 1, NULL, NULL),
(15, 15, 1, NULL, NULL),
(16, 16, 1, NULL, NULL),
(17, 17, 1, NULL, NULL),
(18, 18, 1, NULL, NULL),
(19, 19, 1, NULL, NULL),
(20, 20, 1, NULL, NULL),
(21, 21, 2, NULL, NULL),
(22, 22, 2, NULL, NULL),
(23, 23, 2, NULL, NULL),
(24, 24, 2, NULL, NULL),
(25, 25, 2, NULL, NULL),
(26, 26, 2, NULL, NULL),
(27, 27, 4, NULL, NULL),
(28, 28, 4, NULL, NULL),
(29, 29, 4, NULL, NULL),
(30, 30, 4, NULL, NULL),
(31, 31, 4, NULL, NULL),
(33, 33, 3, NULL, NULL),
(34, 34, 3, NULL, NULL),
(35, 35, 3, NULL, NULL),
(36, 36, 3, NULL, NULL),
(37, 37, 3, NULL, NULL),
(38, 38, 3, NULL, NULL),
(39, 1, 2, NULL, NULL),
(40, 39, 5, NULL, NULL),
(41, 40, 5, NULL, NULL),
(42, 41, 5, NULL, NULL),
(43, 42, 5, NULL, NULL),
(44, 43, 5, NULL, NULL),
(45, 44, 5, NULL, NULL),
(46, 45, 6, NULL, NULL),
(47, 46, 6, NULL, NULL),
(48, 47, 6, NULL, NULL),
(49, 48, 6, NULL, NULL),
(50, 49, 6, NULL, NULL),
(51, 50, 6, NULL, NULL),
(52, 51, 7, '2018-07-21 07:34:43', '2018-07-21 07:34:43'),
(53, 52, 7, '2018-07-21 07:39:54', '2018-07-21 07:39:54'),
(74, 59, 5, '2018-07-23 06:47:15', '2018-07-23 06:47:15'),
(76, 54, 2, '2018-07-24 10:11:13', '2018-07-24 10:11:13'),
(77, 60, 1, '2018-07-24 10:25:37', '2018-07-24 10:25:37'),
(78, 60, 5, '2018-07-24 10:25:37', '2018-07-24 10:25:37');

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
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, '', 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, '', 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, '', 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, '', 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, '', 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":\"0\"}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'locale', 'text', 'Locale', 0, 1, 1, 1, 1, 0, '', 12),
(12, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, '', 12),
(13, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(14, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(15, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(16, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(17, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, '', 1),
(18, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(19, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '', 3),
(20, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '', 4),
(21, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(22, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, '', 9),
(23, 4, 'id', 'hidden', 'Id', 1, 1, 1, 1, 1, 0, NULL, 1),
(24, 4, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|min:6\"}}', 2),
(25, 4, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, NULL, 3),
(26, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, NULL, 4),
(27, 4, 'details', 'text_area', 'Details', 0, 1, 1, 1, 1, 1, NULL, 5),
(28, 4, 'price', 'number', 'price', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|regex:/^\\\\d*(\\\\.\\\\d{1,2})?$/\"}}', 6),
(29, 4, 'description', 'rich_text_box', 'Description', 1, 1, 1, 1, 1, 1, NULL, 7),
(30, 4, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '{\"on\":\"Fratured\",\"off\":\"Not Featured\",\"checked\":false}', 8),
(31, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 9),
(32, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 10),
(33, 5, 'id', 'hidden', 'Id', 1, 1, 1, 1, 1, 0, NULL, 1),
(34, 5, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(35, 5, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, NULL, 3),
(36, 5, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 4),
(37, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5),
(38, 6, 'id', 'hidden', 'Id', 1, 1, 1, 1, 1, 0, NULL, 1),
(39, 6, 'product_id', 'number', 'Product Id', 0, 1, 1, 1, 1, 1, NULL, 2),
(40, 6, 'category_id', 'number', 'Category Id', 0, 1, 1, 1, 1, 1, NULL, 3),
(41, 6, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 4),
(42, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 5),
(43, 4, 'images', 'multiple_images', 'images', 0, 1, 1, 1, 1, 1, '{\"default\":\"NULL\"}', 4),
(44, 7, 'id', 'text', 'Id', 1, 1, 1, 0, 0, 0, NULL, 1),
(45, 7, 'user_id', 'text', 'User Id', 0, 1, 1, 1, 1, 1, NULL, 2),
(46, 7, 'billing_email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(47, 7, 'billing_name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 4),
(48, 7, 'billing_address', 'text', 'Address', 1, 1, 1, 1, 1, 1, NULL, 5),
(49, 7, 'billing_city', 'text', 'City', 1, 1, 1, 1, 1, 1, NULL, 6),
(50, 7, 'billing_province', 'text', 'Billing Province', 1, 0, 1, 1, 1, 1, NULL, 7),
(51, 7, 'billing_postalcode', 'text', 'Billing Postalcode', 1, 0, 1, 1, 1, 1, NULL, 8),
(52, 7, 'billing_phone', 'text', 'Phone no', 1, 1, 1, 1, 1, 1, NULL, 9),
(53, 7, 'billing_name_on_card', 'text', 'Billing Name On Card', 1, 0, 1, 1, 1, 1, NULL, 10),
(54, 7, 'billing_discount', 'text', 'Billing Discount', 1, 0, 1, 1, 1, 1, NULL, 11),
(55, 7, 'billing_discount_code', 'text', 'Billing Discount Code', 0, 0, 1, 1, 1, 1, NULL, 12),
(56, 7, 'billing_subtotal', 'text', 'Billing Subtotal', 1, 0, 1, 1, 1, 1, NULL, 13),
(57, 7, 'billing_tax', 'text', 'Billing Tax', 1, 0, 1, 1, 1, 1, NULL, 14),
(58, 7, 'billing_total', 'text', 'Total', 1, 1, 1, 1, 1, 1, NULL, 15),
(59, 7, 'payment_gateway', 'text', 'PG', 1, 1, 1, 0, 0, 1, NULL, 16),
(60, 7, 'shipped', 'checkbox', 'shipped', 1, 1, 1, 1, 1, 1, '{\"on\":\"Shipped\",\"off\":\"Not Shipped\",\"checked\":false}', 17),
(61, 7, 'error', 'text', 'Error', 0, 1, 1, 1, 1, 1, NULL, 18),
(62, 7, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 19),
(63, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 20),
(64, 4, 'quantity', 'number', 'Quantity', 1, 1, 1, 1, 1, 1, NULL, 10);

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
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', '', '', 1, 0, NULL, '2018-07-21 07:20:48', '2018-07-21 07:20:48'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2018-07-21 07:20:48', '2018-07-21 07:20:48'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2018-07-21 07:20:48', '2018-07-21 07:20:48'),
(4, 'products', 'products', 'Product', 'Add Products', 'voyager-plus', 'App\\Product', NULL, '\\App\\Http\\Controllers\\voyager\\ProductsController', NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-21 07:26:06', '2018-07-23 06:44:54'),
(5, 'category', 'category', 'Category', 'Create Category', 'voyager-tag', 'App\\Category', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-21 07:27:31', '2018-07-21 07:27:31'),
(6, 'category_product', 'category-product', 'Category Product', 'Category Products', 'voyager-list-add', 'App\\CategoryProduct', NULL, NULL, NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-21 07:28:34', '2018-07-21 07:28:34'),
(7, 'orders', 'orders', 'Order', 'Orders', 'voyager-truck', 'App\\Order', NULL, '\\App\\Http\\Controllers\\voyager\\OrdersController', NULL, 1, 1, '{\"order_column\":null,\"order_display_column\":null}', '2018-07-21 14:10:16', '2018-07-21 14:30:38');

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
(1, 'admin', '2018-07-21 07:20:49', '2018-07-21 07:20:49');

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
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-07-21 07:20:49', '2018-07-21 07:20:49', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 5, '2018-07-21 07:20:49', '2018-07-21 07:30:38', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 4, '2018-07-21 07:20:49', '2018-07-21 07:30:38', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', '#000000', NULL, 3, '2018-07-21 07:20:49', '2018-07-21 14:36:00', 'voyager.roles.index', 'null'),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 6, '2018-07-21 07:20:49', '2018-07-21 07:30:38', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2018-07-21 07:20:49', '2018-07-21 07:29:21', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2018-07-21 07:20:49', '2018-07-21 07:29:21', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2018-07-21 07:20:49', '2018-07-21 07:29:21', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2018-07-21 07:20:49', '2018-07-21 07:29:21', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 7, '2018-07-21 07:20:49', '2018-07-21 07:30:38', 'voyager.settings.index', NULL),
(11, 1, 'Products', '', '_self', 'voyager-plus', '#03efba', 14, 2, '2018-07-21 07:26:06', '2018-07-23 12:07:07', 'voyager.products.index', 'null'),
(12, 1, 'Create Category', '', '_self', 'voyager-tag', '#b31a5f', 14, 3, '2018-07-21 07:27:31', '2018-07-21 14:32:59', 'voyager.category.index', 'null'),
(13, 1, 'Category Products', '', '_self', 'voyager-list-add', '#d7f404', 14, 4, '2018-07-21 07:28:34', '2018-07-21 14:35:23', 'voyager.category-product.index', 'null'),
(14, 1, 'Admin Tools', '', '_self', 'voyager-anchor', '#04b5a3', NULL, 2, '2018-07-21 07:30:27', '2018-07-21 07:31:53', NULL, ''),
(15, 1, 'Orders', '', '_self', 'voyager-truck', '#15f9f3', 14, 1, '2018-07-21 14:10:16', '2018-07-21 14:39:14', 'voyager.orders.index', 'null');

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
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(17, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(18, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(19, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(20, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(21, '2017_08_05_000000_add_group_to_settings_table', 1),
(22, '2017_11_26_013050_add_user_role_relationship', 1),
(23, '2017_11_26_015000_create_user_roles_table', 1),
(24, '2018_03_11_000000_add_user_settings', 1),
(25, '2018_03_14_000000_add_details_to_data_types_table', 1),
(26, '2018_03_16_000000_make_settings_value_nullable', 1),
(27, '2018_07_19_100445_create_products_table', 1),
(28, '2018_07_20_112230_create_category_table', 1),
(29, '2018_07_20_112422_create_category_product_table', 1),
(30, '2018_07_21_110726_add_image_to_products_table', 1),
(31, '2018_07_21_134617_add_images_to_products_table', 2),
(32, '2018_07_21_190924_create_orders_table', 3),
(33, '2018_07_21_192026_create_orderproduct_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orderproduct`
--

CREATE TABLE `orderproduct` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orderproduct`
--

INSERT INTO `orderproduct` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 2, 10, 2, '2018-07-21 14:00:23', '2018-07-21 14:00:23'),
(2, 2, 1, 1, '2018-07-21 14:00:23', '2018-07-21 14:00:23'),
(3, 3, 1, 1, '2018-07-22 04:30:48', '2018-07-22 04:30:48'),
(4, 4, 54, 1, '2018-07-22 10:23:56', '2018-07-22 10:23:56'),
(5, 4, 44, 2, '2018-07-22 10:23:56', '2018-07-22 10:23:56'),
(6, 5, 54, 1, '2018-07-22 13:15:14', '2018-07-22 13:15:14'),
(7, 6, 6, 1, '2018-07-22 13:18:25', '2018-07-22 13:18:25');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `billing_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_province` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_postalcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_name_on_card` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_discount` int(11) NOT NULL DEFAULT '0',
  `billing_discount_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_subtotal` int(11) NOT NULL,
  `billing_tax` int(11) NOT NULL,
  `billing_total` int(11) NOT NULL,
  `payment_gateway` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'stripe',
  `shipped` tinyint(1) NOT NULL DEFAULT '0',
  `error` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `billing_email`, `billing_name`, `billing_address`, `billing_city`, `billing_province`, `billing_postalcode`, `billing_phone`, `billing_name_on_card`, `billing_discount`, `billing_discount_code`, `billing_subtotal`, `billing_tax`, `billing_total`, `payment_gateway`, `shipped`, `error`, `created_at`, `updated_at`) VALUES
(2, 1, 'koushikfardin@gmail.com', 'Fardin koushik', 'dhaka', 'dhaka', 'port', '1212', '64267', 'fardin', 0, NULL, 546908, 82036, 628944, 'stripe', 1, NULL, '2018-07-21 14:00:23', '2018-07-21 14:14:32'),
(3, 1, 'koushikfardin@gmail.com', 'Gaming 6000', 'dhaka', 'dhaka', 'port', '1212', '64267', 'fardin', 0, NULL, 194164, 29125, 223289, 'stripe', 0, NULL, '2018-07-22 04:30:47', '2018-07-22 04:30:47'),
(4, NULL, 'cout@example.com', 'taydg', 'sydfst', 'yfydgcy', 'ytfdsfgdy', 'hgfyhgd', '25458454', 'fgsdygu', 0, NULL, 123281, 18492, 141773, 'stripe', 1, NULL, '2018-07-22 10:23:55', '2018-07-22 13:58:23'),
(5, 1, 'koushikfardin@gmail.com', 'check one apple', 'dhaka', 'dhaka', 'port', 'hgfyhgd', '64267', 'fardin', 0, NULL, 90099, 13515, 103614, 'stripe', 0, NULL, '2018-07-22 13:15:14', '2018-07-22 13:15:14'),
(6, 1, 'koushikfardin@gmail.com', 'Gytfrtvhgyrtytj545425guytr5e', 'dhaka', 'dhaka', 'port', '1212', '64267', 'michel', 0, NULL, 169666, 25450, 195116, 'stripe', 0, NULL, '2018-07-22 13:18:25', '2018-07-22 13:18:25'),
(7, 1, 'koushikfardin@gmail.com', 'Gaming 6000', 'dhaka', 'dhaka', 'ytfdsfgdy', '1212', '64267', 'rachel', 0, NULL, 22684, 3403, 26087, 'stripe', 0, NULL, '2018-07-22 13:20:03', '2018-07-22 13:20:03'),
(8, 1, 'koushikfardin@gmail.com', 'taydg', 'sydfst', 'dhaka', 'port', 'hgfyhgd', '64267', 'ksk', 0, NULL, 22684, 3403, 26087, 'stripe', 0, NULL, '2018-07-22 13:21:28', '2018-07-22 13:21:28'),
(9, 3, 'fardin@example.com', 'Fardin koushik', 'dhaka', 'dhaka', 'port', '1212', '64267', 'fardin', 0, NULL, 189580, 28437, 218017, 'stripe', 0, NULL, '2018-07-23 05:57:14', '2018-07-23 05:57:14'),
(10, 1, 'koushikfardin@gmail.com', 'Gaming 6000', 'sydfst', 'dhaka', 'port', '1212', '64267', 'ksk', 0, NULL, 194164, 29125, 223289, 'stripe', 0, NULL, '2018-07-23 07:21:15', '2018-07-23 07:21:15'),
(11, 1, 'koushikfardin@gmail.com', 'sdds', 'sdsd', 'sdds', 'dsdsd', 'dsds', 'sdsds', 'ddsd', 0, NULL, 194164, 29125, 223289, 'stripe', 0, NULL, '2018-07-23 07:23:48', '2018-07-23 07:23:48'),
(12, 1, 'koushikfardin@gmail.com', 'sda', 'wfrawrf', 'erfwrwe', 'reerwr', 'refwef', 'rer', 'erfwr', 0, NULL, 194164, 29125, 223289, 'stripe', 0, NULL, '2018-07-23 07:25:06', '2018-07-23 07:25:06'),
(13, 1, 'koushikfardin@gmail.com', 'Fardin koushik', 'sydfst', 'dhaka', 'port', '1212', '64267', 'fardin', 0, NULL, 194164, 29125, 223289, 'stripe', 0, NULL, '2018-07-23 07:28:30', '2018-07-23 07:28:30'),
(14, 1, 'koushikfardin@gmail.com', 'Fardin koushik', 'dhaka', 'dhaka', 'port', '1212', '64267', 'rachel', 0, NULL, 194164, 29125, 223289, 'stripe', 0, NULL, '2018-07-23 07:30:37', '2018-07-23 07:30:37'),
(15, 1, 'koushikfardin@gmail.com', 'dddddddd', 'dddddddddddd', 'dddddddddddddddd', 'dddddddddddd', 'ddd', 'ddddddd', 'ddddddddddd', 0, NULL, 194164, 29125, 223289, 'stripe', 0, NULL, '2018-07-23 07:34:00', '2018-07-23 07:34:00'),
(16, 1, 'koushikfardin@gmail.com', 'ffffffffffffffffff', 'ffffffffffffffff', 'fffffffffffff', 'fffffffffffff', 'ffffffffff', 'fffffffffffff', 'ffffffffff', 0, NULL, 432740, 64911, 497651, 'stripe', 0, NULL, '2018-07-23 07:34:52', '2018-07-23 07:34:52'),
(17, 1, 'koushikfardin@gmail.com', 'rgrsg', 'gssssss', 'gsssssssss', 'gsssssss', 'gsssss', 'sgsgsgsgsgsg', 'sgsgsgsgsgsgsgsgsg', 0, NULL, 212573, 31886, 244459, 'stripe', 0, NULL, '2018-07-23 07:36:50', '2018-07-23 07:36:50');

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 2, 10, 2, '2018-07-21 14:00:23', '2018-07-21 14:00:23'),
(2, 2, 1, 1, '2018-07-21 14:00:23', '2018-07-21 14:00:23'),
(3, 3, 1, 1, '2018-07-22 04:30:48', '2018-07-22 04:30:48'),
(4, 4, 54, 1, '2018-07-22 10:23:56', '2018-07-22 10:23:56'),
(5, 4, 44, 2, '2018-07-22 10:23:56', '2018-07-22 10:23:56'),
(6, 5, 54, 1, '2018-07-22 13:15:14', '2018-07-22 13:15:14'),
(7, 6, 6, 1, '2018-07-22 13:18:25', '2018-07-22 13:18:25'),
(8, 8, 41, 1, '2018-07-22 13:21:28', '2018-07-22 13:21:28'),
(9, 9, 11, 1, '2018-07-23 05:57:14', '2018-07-23 05:57:14'),
(10, 10, 1, 1, '2018-07-23 07:21:15', '2018-07-23 07:21:15'),
(11, 11, 1, 1, '2018-07-23 07:23:48', '2018-07-23 07:23:48'),
(12, 12, 1, 1, '2018-07-23 07:25:06', '2018-07-23 07:25:06'),
(13, 13, 1, 1, '2018-07-23 07:28:30', '2018-07-23 07:28:30'),
(14, 14, 1, 1, '2018-07-23 07:30:37', '2018-07-23 07:30:37'),
(15, 15, 1, 1, '2018-07-23 07:34:00', '2018-07-23 07:34:00'),
(16, 16, 7, 2, '2018-07-23 07:34:52', '2018-07-23 07:34:52'),
(17, 17, 12, 1, '2018-07-23 07:36:50', '2018-07-23 07:36:50');

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
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2018-07-21 07:20:49', '2018-07-21 07:20:49'),
(2, 'browse_bread', NULL, '2018-07-21 07:20:49', '2018-07-21 07:20:49'),
(3, 'browse_database', NULL, '2018-07-21 07:20:49', '2018-07-21 07:20:49'),
(4, 'browse_media', NULL, '2018-07-21 07:20:50', '2018-07-21 07:20:50'),
(5, 'browse_compass', NULL, '2018-07-21 07:20:50', '2018-07-21 07:20:50'),
(6, 'browse_menus', 'menus', '2018-07-21 07:20:50', '2018-07-21 07:20:50'),
(7, 'read_menus', 'menus', '2018-07-21 07:20:50', '2018-07-21 07:20:50'),
(8, 'edit_menus', 'menus', '2018-07-21 07:20:50', '2018-07-21 07:20:50'),
(9, 'add_menus', 'menus', '2018-07-21 07:20:50', '2018-07-21 07:20:50'),
(10, 'delete_menus', 'menus', '2018-07-21 07:20:50', '2018-07-21 07:20:50'),
(11, 'browse_roles', 'roles', '2018-07-21 07:20:50', '2018-07-21 07:20:50'),
(12, 'read_roles', 'roles', '2018-07-21 07:20:50', '2018-07-21 07:20:50'),
(13, 'edit_roles', 'roles', '2018-07-21 07:20:50', '2018-07-21 07:20:50'),
(14, 'add_roles', 'roles', '2018-07-21 07:20:50', '2018-07-21 07:20:50'),
(15, 'delete_roles', 'roles', '2018-07-21 07:20:50', '2018-07-21 07:20:50'),
(16, 'browse_users', 'users', '2018-07-21 07:20:50', '2018-07-21 07:20:50'),
(17, 'read_users', 'users', '2018-07-21 07:20:50', '2018-07-21 07:20:50'),
(18, 'edit_users', 'users', '2018-07-21 07:20:50', '2018-07-21 07:20:50'),
(19, 'add_users', 'users', '2018-07-21 07:20:50', '2018-07-21 07:20:50'),
(20, 'delete_users', 'users', '2018-07-21 07:20:50', '2018-07-21 07:20:50'),
(21, 'browse_settings', 'settings', '2018-07-21 07:20:50', '2018-07-21 07:20:50'),
(22, 'read_settings', 'settings', '2018-07-21 07:20:50', '2018-07-21 07:20:50'),
(23, 'edit_settings', 'settings', '2018-07-21 07:20:50', '2018-07-21 07:20:50'),
(24, 'add_settings', 'settings', '2018-07-21 07:20:50', '2018-07-21 07:20:50'),
(25, 'delete_settings', 'settings', '2018-07-21 07:20:51', '2018-07-21 07:20:51'),
(26, 'browse_products', 'products', '2018-07-21 07:26:06', '2018-07-21 07:26:06'),
(27, 'read_products', 'products', '2018-07-21 07:26:06', '2018-07-21 07:26:06'),
(28, 'edit_products', 'products', '2018-07-21 07:26:06', '2018-07-21 07:26:06'),
(29, 'add_products', 'products', '2018-07-21 07:26:06', '2018-07-21 07:26:06'),
(30, 'delete_products', 'products', '2018-07-21 07:26:06', '2018-07-21 07:26:06'),
(31, 'browse_category', 'category', '2018-07-21 07:27:31', '2018-07-21 07:27:31'),
(32, 'read_category', 'category', '2018-07-21 07:27:31', '2018-07-21 07:27:31'),
(33, 'edit_category', 'category', '2018-07-21 07:27:31', '2018-07-21 07:27:31'),
(34, 'add_category', 'category', '2018-07-21 07:27:31', '2018-07-21 07:27:31'),
(35, 'delete_category', 'category', '2018-07-21 07:27:31', '2018-07-21 07:27:31'),
(36, 'browse_category_product', 'category_product', '2018-07-21 07:28:34', '2018-07-21 07:28:34'),
(37, 'read_category_product', 'category_product', '2018-07-21 07:28:34', '2018-07-21 07:28:34'),
(38, 'edit_category_product', 'category_product', '2018-07-21 07:28:34', '2018-07-21 07:28:34'),
(39, 'add_category_product', 'category_product', '2018-07-21 07:28:34', '2018-07-21 07:28:34'),
(40, 'delete_category_product', 'category_product', '2018-07-21 07:28:34', '2018-07-21 07:28:34'),
(41, 'browse_orders', 'orders', '2018-07-21 14:10:16', '2018-07-21 14:10:16'),
(42, 'read_orders', 'orders', '2018-07-21 14:10:16', '2018-07-21 14:10:16'),
(43, 'edit_orders', 'orders', '2018-07-21 14:10:16', '2018-07-21 14:10:16'),
(44, 'add_orders', 'orders', '2018-07-21 14:10:16', '2018-07-21 14:10:16'),
(45, 'delete_orders', 'orders', '2018-07-21 14:10:16', '2018-07-21 14:10:16');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(2, 3),
(3, 1),
(3, 3),
(4, 1),
(4, 3),
(5, 1),
(5, 3),
(6, 1),
(6, 3),
(7, 1),
(7, 3),
(8, 1),
(8, 3),
(9, 1),
(9, 3),
(10, 1),
(10, 3),
(11, 1),
(11, 3),
(12, 1),
(12, 3),
(13, 1),
(13, 3),
(14, 1),
(14, 3),
(15, 1),
(15, 3),
(16, 1),
(16, 3),
(17, 1),
(17, 3),
(18, 1),
(18, 3),
(19, 1),
(19, 3),
(20, 1),
(20, 3),
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
(40, 3),
(41, 1),
(41, 3),
(42, 1),
(42, 3),
(43, 1),
(43, 3),
(44, 1),
(44, 3),
(45, 1),
(45, 3);

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

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `quantity` int(25) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `image`, `images`, `slug`, `details`, `price`, `description`, `featured`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 'Laptop 1', 'products\\July2018\\laptop-1.jpg', '', 'laptop-1', '13 inch, 3 TB SSD, 32GB RAM', 194164, 'Lorem 1 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 1, 10, '2018-07-21 07:20:13', '2018-07-21 07:20:13'),
(2, 'Laptop 2', 'products\\July2018\\laptop-2.jpg', '', 'laptop-2', '15 inch, 2 TB SSD, 32GB RAM', 249618, 'Lorem 2 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2018-07-21 07:20:14', '2018-07-21 07:20:14'),
(3, 'Laptop 3', 'products\\July2018\\laptop-3.jpg', '', 'laptop-3', '14 inch, 2 TB SSD, 32GB RAM', 155506, 'Lorem 3 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2018-07-21 07:20:14', '2018-07-21 07:20:14'),
(4, 'Laptop 4', 'products\\July2018\\laptop-4.jpg', '', 'laptop-4', '13 inch, 2 TB SSD, 32GB RAM', 235084, 'Lorem 4 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2018-07-21 07:20:14', '2018-07-21 07:20:14'),
(5, 'Laptop 5', 'products\\July2018\\laptop-5.jpg', '', 'laptop-5', '15 inch, 3 TB SSD, 32GB RAM', 202155, 'Lorem 5 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2018-07-21 07:20:14', '2018-07-21 07:20:14'),
(6, 'Laptop 6', 'products\\July2018\\laptop-6.jpg', '', 'laptop-6', '15 inch, 3 TB SSD, 32GB RAM', 169666, 'Lorem 6 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 1, 10, '2018-07-21 07:20:14', '2018-07-21 07:20:14'),
(7, 'Laptop 7', 'products\\July2018\\laptop-7.jpg', '', 'laptop-7', '15 inch, 1 TB SSD, 32GB RAM', 216370, 'Lorem 7 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 1, 10, '2018-07-21 07:20:14', '2018-07-21 07:20:14'),
(8, 'Laptop 8', 'products\\July2018\\laptop-8.jpg', '', 'laptop-8', '15 inch, 3 TB SSD, 32GB RAM', 178622, 'Lorem 8 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2018-07-21 07:20:14', '2018-07-21 07:20:14'),
(9, 'Laptop 9', 'products\\July2018\\laptop-9.jpg', '', 'laptop-9', '14 inch, 3 TB SSD, 32GB RAM', 204444, 'Lorem 9 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2018-07-21 07:20:14', '2018-07-21 07:20:14'),
(10, 'Laptop 10', 'products\\July2018\\laptop-10.jpg', '', 'laptop-10', '14 inch, 2 TB SSD, 32GB RAM', 176372, 'Lorem 10 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2018-07-21 07:20:14', '2018-07-21 07:20:14'),
(11, 'Laptop 11', 'products\\July2018\\laptop-11.jpg', '', 'laptop-11', '15 inch, 2 TB SSD, 32GB RAM', 189580, 'Lorem 11 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 1, 10, '2018-07-21 07:20:14', '2018-07-21 07:20:14'),
(12, 'Laptop 12', 'products\\July2018\\laptop-12.jpg', '', 'laptop-12', '14 inch, 2 TB SSD, 32GB RAM', 212573, 'Lorem 12 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 1, 10, '2018-07-21 07:20:14', '2018-07-21 07:20:14'),
(13, 'Laptop 13', 'products\\July2018\\laptop-13.jpg', '', 'laptop-13', '15 inch, 3 TB SSD, 32GB RAM', 156690, 'Lorem 13 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2018-07-21 07:20:14', '2018-07-21 07:20:14'),
(14, 'Laptop 14', 'products\\July2018\\laptop-14.jpg', '', 'laptop-14', '13 inch, 3 TB SSD, 32GB RAM', 240499, 'Lorem 14 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 1, 10, '2018-07-21 07:20:14', '2018-07-21 07:20:14'),
(15, 'Laptop 15', 'products\\July2018\\laptop-15.jpg', '', 'laptop-15', '13 inch, 1 TB SSD, 32GB RAM', 184272, 'Lorem 15 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2018-07-21 07:20:14', '2018-07-21 07:20:14'),
(16, 'Laptop 16', 'products\\July2018\\laptop-16.jpg', '', 'laptop-16', '14 inch, 1 TB SSD, 32GB RAM', 163779, 'Lorem 16 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 1, 10, '2018-07-21 07:20:14', '2018-07-21 07:20:14'),
(17, 'Laptop 17', 'products\\July2018\\laptop-17.jpg', '', 'laptop-17', '14 inch, 1 TB SSD, 32GB RAM', 234067, 'Lorem 17 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2018-07-21 07:20:14', '2018-07-21 07:20:14'),
(18, 'Laptop 18', 'products\\July2018\\laptop-18.jpg', '', 'laptop-18', '13 inch, 2 TB SSD, 32GB RAM', 220367, 'Lorem 18 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 1, 10, '2018-07-21 07:20:15', '2018-07-21 07:20:15'),
(19, 'Laptop 19', 'products\\July2018\\laptop-19.jpg', '', 'laptop-19', '15 inch, 3 TB SSD, 32GB RAM', 195941, 'Lorem 19 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2018-07-21 07:20:15', '2018-07-21 07:20:15'),
(20, 'Laptop 20', 'products\\July2018\\laptop-20.jpg', '', 'laptop-20', '13 inch, 3 TB SSD, 32GB RAM', 163500, 'Lorem 20 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 1, 10, '2018-07-21 07:20:15', '2018-07-21 07:20:15'),
(21, 'Phone 1', 'products\\July2018\\phone (1).jpg', '', 'phone (1)', '3 GB RAM, 32 GB ROM', 16490, 'phone 1 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2018-07-21 07:20:15', '2018-07-21 07:20:15'),
(22, 'Phone 2', 'products\\July2018\\phone (2).jpg', '', 'phone (2)', '3 GB RAM, 16 GB ROM', 17376, 'phone 2 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 1, 10, '2018-07-21 07:20:15', '2018-07-21 07:20:15'),
(23, 'Phone 3', 'products\\July2018\\phone (3).jpg', '', 'phone (3)', '4 GB RAM, 32 GB ROM', 15183, 'phone 3 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 1, 10, '2018-07-21 07:20:15', '2018-07-21 07:20:15'),
(24, 'Phone 4', 'products\\July2018\\phone (4).jpg', '', 'phone (4)', '6 GB RAM, 64 GB ROM', 24799, 'phone 4 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2018-07-21 07:20:15', '2018-07-21 07:20:15'),
(25, 'Phone 5', 'products\\July2018\\phone (5).jpg', '', 'phone (5)', '4 GB RAM, 32 GB ROM', 15894, 'phone 5 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2018-07-21 07:20:15', '2018-07-21 07:20:15'),
(26, 'Phone 6', 'products\\July2018\\phone (6).jpg', '', 'phone (6)', '6 GB RAM, 16 GB ROM', 24402, 'phone 6 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 1, 10, '2018-07-21 07:20:15', '2018-07-21 07:20:15'),
(27, 'Watch 1', 'products\\July2018\\watch (1).jpg', '', 'watch (1)', 'Digital Watch ', 1815, 'Watch 1 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2018-07-21 07:20:15', '2018-07-21 07:20:15'),
(28, 'Watch 2', 'products\\July2018\\watch (2).jpg', '', 'watch (2)', 'Digital Watch ', 2186, 'Watch 2 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 1, 10, '2018-07-21 07:20:15', '2018-07-21 07:20:15'),
(29, 'Watch 3', 'products\\July2018\\watch (3).jpg', '', 'watch (3)', 'Smart Watch ', 1662, 'Watch 3 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2018-07-21 07:20:15', '2018-07-21 07:20:15'),
(30, 'Watch 4', 'products\\July2018\\watch (4).jpg', '', 'watch (4)', 'Smart Watch ', 2438, 'Watch 4 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2018-07-21 07:20:15', '2018-07-21 07:20:15'),
(31, 'Watch 5', 'products\\July2018\\watch (5).jpg', '', 'watch (5)', 'Smart Watch ', 2156, 'Watch 5 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2018-07-21 07:20:15', '2018-07-21 07:20:15'),
(33, 'Headphone 1', 'products\\July2018\\headphone (1).jpg', '', 'headphone (1)', 'Wireless Headphone ', 25659, 'Headphone 1 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 1, 10, '2018-07-21 07:20:15', '2018-07-21 07:20:15'),
(34, 'Headphone 2', 'products\\July2018\\headphone (2).jpg', '', 'headphone (2)', 'Wireless Headphone ', 5409, 'Headphone 2 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 1, 10, '2018-07-21 07:20:15', '2018-07-21 07:20:15'),
(35, 'Headphone 3', 'products\\July2018\\headphone (3).jpg', '', 'headphone (3)', 'Wired Headphone ', 12382, 'Headphone 3 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2018-07-21 07:20:15', '2018-07-21 07:20:15'),
(36, 'Headphone 4', 'products\\July2018\\headphone (4).jpg', '', 'headphone (4)', 'Wired Headphone ', 13767, 'Headphone 4 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 1, 10, '2018-07-21 07:20:15', '2018-07-21 07:20:15'),
(37, 'Headphone 5', 'products\\July2018\\headphone (5).jpg', '', 'headphone (5)', 'Wired Headphone ', 12525, 'Headphone 5 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2018-07-21 07:20:16', '2018-07-21 07:20:16'),
(38, 'Headphone 6', 'products\\July2018\\headphone (6).jpg', '', 'headphone (6)', 'Wired Headphone ', 9295, 'Headphone 6 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2018-07-21 07:20:16', '2018-07-21 07:20:16'),
(39, 'Gaming 1', 'products\\July2018\\gaming (1).jpg', '', 'gaming (1)', 'PS4 ', 17978, 'Gaming 1 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2018-07-21 07:20:16', '2018-07-21 07:20:16'),
(40, 'Gaming 2', 'products\\July2018\\gaming (2).jpg', '[\"products\\\\July2018\\\\8lnkTYFpMu4s8UNg1C3Z.png\",\"products\\\\July2018\\\\QWgINjcpO64Er5Sdi4Kd.png\"]', 'gaming (2)', 'XBOX', 18387, '<p>Gaming 2 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!</p>', 1, 10, '2018-07-21 07:20:16', '2018-07-21 07:49:01'),
(41, 'Gaming 3', 'products\\July2018\\gaming (3).jpg', '', 'gaming (3)', 'XBOX ', 22684, 'Gaming 3 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 1, 10, '2018-07-21 07:20:16', '2018-07-21 07:20:16'),
(42, 'Gaming 4', 'products\\July2018\\gaming (4).jpg', '', 'gaming (4)', 'PS4 ', 16802, 'Gaming 4 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2018-07-21 07:20:16', '2018-07-21 07:20:16'),
(43, 'Gaming 5', 'products\\July2018\\gaming (5).jpg', '', 'gaming (5)', 'XBOX ', 23371, 'Gaming 5 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2018-07-21 07:20:16', '2018-07-21 07:20:16'),
(44, 'Gaming 6', 'products\\July2018\\gaming (6).jpg', '', 'gaming (6)', 'PS4 ', 16591, 'Gaming 6 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 1, 10, '2018-07-21 07:20:16', '2018-07-21 07:20:16'),
(45, 'Camera 1', 'products\\July2018\\camera (1).jpg', '', 'camera (1)', 'Digital Camera', 249355, 'Camera 1 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2018-07-21 07:20:16', '2018-07-21 07:20:16'),
(46, 'Camera 2', 'products\\July2018\\camera (2).jpg', '', 'camera (2)', 'Digital Camera', 190310, 'Camera 2 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2018-07-21 07:20:16', '2018-07-21 07:20:16'),
(47, 'Camera 3', 'products\\July2018\\camera (3).jpg', '', 'camera (3)', 'Digital Camera', 189474, 'Camera 3 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 1, 10, '2018-07-21 07:20:16', '2018-07-21 07:20:16'),
(48, 'Camera 4', 'products\\July2018\\camera (4).jpg', '', 'camera (4)', 'Digital Camera', 175541, 'Camera 4 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2018-07-21 07:20:16', '2018-07-21 07:20:16'),
(49, 'Camera 5', 'products\\July2018\\camera (5).jpg', '', 'camera (5)', 'Digital Camera', 199055, 'Camera 5 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 0, 10, '2018-07-21 07:20:16', '2018-07-21 07:20:16'),
(50, 'Camera 6', 'products\\July2018\\camera (6).jpg', '', 'camera (6)', 'Digital Camera', 190666, 'Camera 6 ipsum dolor sit amet, consectetur adipisicing elit. Ipsum temporibus iusto ipsa, asperiores voluptas unde aspernatur praesentium in? Aliquam, dolore!', 1, 10, '2018-07-21 07:20:16', '2018-07-21 07:20:16'),
(51, 'ipod newyork', 'products\\July2018\\NaWdppsBq7Krq4nzr4uG.jpg', '', 'ipod', 'Enjoy music', 14999, '<p>A <span style=\"color: #008080;\"><strong>steve jobs</strong></span> production.</p>', 1, 10, '2018-07-21 07:33:46', '2018-07-21 07:33:46'),
(52, 'Speaker', 'products\\July2018\\giczcsKzgvb21nLV0gQ7.jpg', '', 'speaker', 'Bluetooth speaker', 18098, '<h1>Enjoy great music with this speaker&nbsp;<iframe title=\"Jam Heavy Metal - soundcheck\" src=\"https://www.youtube.com/embed/lj36_9SqDsU?wmode=opaque&amp;theme=dark\" width=\"355\" height=\"200\" frameborder=\"0\" allowfullscreen=\"\"></iframe></h1>', 1, 10, '2018-07-21 07:39:26', '2018-07-21 07:39:26'),
(53, 'Microsoft Surface Pro 4', 'products\\July2018\\MNwYgDJRFJ7qYpEML2ml.png', '[\"products\\\\July2018\\\\tv57gaXENdMaaSUotPPJ.jpg\",\"products\\\\July2018\\\\rykWNl5p8HlomMGZ7Cbw.jpg\",\"products\\\\July2018\\\\GL8x6gzgylQsrQ5of4ij.png\",\"products\\\\July2018\\\\eyKP04qnAI0XfBXDJ9QX.png\"]', 'laptop', '16GB RAM, 256GB SSD', 340098, '<h2 class=\"c-heading-5\" style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 0px; font-size: 20px; line-height: 24px; padding: 0px 0px 5px; color: #000000; font-family: \'Segoe UI\', SegoeUI, \'Helvetica Neue\', Helvetica, Arial, sans-serif;\">Description</h2>\r\n<p class=\"c-paragraph-3 f-lean cli_short-description\" style=\"box-sizing: inherit; margin-top: 0px; margin-bottom: 0px; font-size: 15px; line-height: 20px; padding: 0px 0px 24px; color: #000000; font-family: \'Segoe UI\', SegoeUI, \'Helvetica Neue\', Helvetica, Arial, sans-serif; white-space: pre-line;\">&bull; Laptop power and performance with 6th Gen Intel Core processor &bull; 12.3-inch PixelSense Display touchscreen &bull; Surface Pen sold separately &bull; Compatible with Surface Dial</p>', 1, 10, '2018-07-21 09:14:01', '2018-07-21 09:14:01'),
(54, 'Apple Iphone X', 'products\\July2018\\Bc1fhDnoC0LnSROhxTeZ.png', '[\"products\\\\July2018\\\\qDXDtCRN85MvrAEW8JyY.jpg\",\"products\\\\July2018\\\\h1Dp65KHSgXhlPwlnbJ2.jpg\",\"products\\\\July2018\\\\WTSpmDO3Zq5w6RGQTKdu.jpg\",\"products\\\\July2018\\\\0M2gl0dDwdBkqG1D9gsk.jpg\"]', 'phone', 'An all‑new 5.8‑inch Super Retina screen fills the hand and dazzles the eyes.', 90099, '<p><span style=\"color: #111111; font-family: \'SF Pro Display\', \'SF Pro Icons\', \'Helvetica Neue\', Helvetica, Arial, sans-serif; font-size: 32px; font-weight: 600; letter-spacing: 0.128px;\">Face&nbsp;ID is enabled by the TrueDepth camera and is simple to set up. It projects and analyzes more than 30,000 invisible dots to create a precise depth map of your&nbsp;face.</span></p>', 1, 10, '2018-07-21 09:17:00', '2018-07-21 11:54:52'),
(59, 'Army Gamepad', 'products\\July2018\\xksuOjn4xy9kUadYuxRI.jpg', NULL, 'gaming', 'Aoile Bluetooth Wireless Controller for PS4 Vibration Joystick Gamepad PS4 Game Controller', 499900, '<p><span style=\"color: #008000;\"><strong><span style=\"font-family: arial, sans-serif; font-size: 13px; background-color: #222222;\">Aoile Bluetooth Wireless Controller for PS4 Vibration Joystick Gamepad PS4 Game Controller</span></strong></span></p>', 1, 10, '2018-07-23 06:47:11', '2018-07-23 06:47:11'),
(60, 'Product from voyager', 'products\\July2018\\Fr4cj7b7pcurZC11Yguz.png', NULL, 'slug gaming', 'fsgsafgsafgd', 149900, '<p>sdfsdfds</p>', 0, 10, '2018-07-23 06:50:45', '2018-07-24 10:25:31'),
(61, 'FIFA 19', 'products\\September2018\\VgGA1AXM4i3yjx7fAtWa.jpg', '[\"products\\\\September2018\\\\vm3F4UqKYaIO35AbFSsr.jpg\",\"products\\\\September2018\\\\BKTUHnXpF1RThiRWKqRU.jpg\",\"products\\\\September2018\\\\tvfOtDJn0znyuRrF0gsK.jpg\"]', 'gaming', 'FIFA 19 Champions Edition on PS4 | Official PlayStation™', 499999, '<p><span style=\"color: #003366;\"><a class=\"irc_pt irc_tas i3598 irc_lth\" dir=\"ltr\" style=\"unicode-bidi: isolate; color: #003366; cursor: pointer; font-size: 24px; line-height: 32px; max-height: 64px; display: block; overflow: hidden; font-family: arial, sans-serif;\" tabindex=\"0\" href=\"https://store.playstation.com/en-us/product/UP0006-CUSA11599_00-FIFA19PREORDEXNA\" target=\"_blank\" rel=\"noopener\" data-noload=\"\" data-ved=\"2ahUKEwikvcWgtMLdAhVMPo8KHeqJAF4Qjhx6BAgBEAM\">FIFA 19 Champions Edition on PS4 | Official PlayStation&trade;</a></span></p>', 1, 50, '2018-09-17 10:03:20', '2018-09-17 10:03:20');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-07-21 07:20:49', '2018-07-21 07:20:49'),
(2, 'user', 'Normal User', '2018-07-21 07:20:49', '2018-07-21 07:20:49'),
(3, 'Fardin koushik', 'fardintheadmin', '2018-07-24 10:09:08', '2018-07-24 10:09:08');

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
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

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

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'fardin', 'koushikfardin@gmail.com', 'users/default.png', '$2y$10$If9eJu//V0tTIIpN4qhpVOlFr4gVUWytnIkYk.y/z196jdHlNiIj6', 'wYN7KGpdLtCTZBmgqSQ9qPPkjoM27D4A8osxYbTvqjs4tUeqADRoioYjoIYq', '{\"locale\":\"en\"}', '2018-07-21 07:21:49', '2018-07-21 14:38:20'),
(3, 2, 'Fardin koushik', 'fardin@example.com', 'users/default.png', '$2y$10$rorA5mwfh9nW27XdXI6ZFu2gtJ/S8UnnpRrunDNB9NczHEkp3MBha', 'y4v9FyF7p7OVA22Bi40DnFhFlcnpZDgNjMfFX1nLK3ojr43Z0ZwU8O0cYTqs', NULL, '2018-07-21 09:29:58', '2018-07-21 09:29:58'),
(4, 2, 'test', 'test@test.com', 'users/default.png', '$2y$10$BRMfinD0u8xd5KIEjKjnR.cahl5/jwTLIzIlebPGJL1UuimXyE7te', 'wDpw414X83qZYFWlY423VsYduj1CX76y9Y3PdoN8g7hNsr9cJI56LPissVzN', NULL, '2018-07-21 10:55:42', '2018-07-21 10:55:42'),
(5, 1, 'Fardin', 'theadmin@admin.com', 'users/default.png', '$2y$10$KYvp5sdy0DWprCYd8rWcde1aPLkHVAHjv1Zvyy9Vk8At0/NyBPFjK', NULL, '{\"locale\":\"en\"}', '2018-07-24 10:10:39', '2018-09-17 09:57:57');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`) VALUES
(5, 1),
(5, 2);

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
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_name_unique` (`name`),
  ADD UNIQUE KEY `category_slug_unique` (`slug`);

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_product_product_id_foreign` (`product_id`),
  ADD KEY `category_product_category_id_foreign` (`category_id`);

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
-- Indexes for table `orderproduct`
--
ALTER TABLE `orderproduct`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orderproduct_order_id_foreign` (`order_id`),
  ADD KEY `orderproduct_product_id_foreign` (`product_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orderproduct_order_id_foreign` (`order_id`),
  ADD KEY `orderproduct_product_id_foreign` (`product_id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `orderproduct`
--
ALTER TABLE `orderproduct`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `category_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

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
-- Constraints for table `orderproduct`
--
ALTER TABLE `orderproduct`
  ADD CONSTRAINT `orderproduct_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `orderproduct_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

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
