-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 02, 2024 at 01:49 AM
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
-- Database: `strapi`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `abouts_cmps`
--

CREATE TABLE `abouts_cmps` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `cmp_id` int(10) UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `action_parameters` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`action_parameters`)),
  `subject` varchar(255) DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `conditions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`conditions`)),
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `document_id`, `action`, `action_parameters`, `subject`, `properties`, `conditions`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'yucwq5gzbj3863lwvfs8npax', 'plugin::content-manager.explorer.create', '{}', 'api::about.about', '{\"fields\":[\"title\",\"blocks\"]}', '[]', '2024-11-02 04:54:54.049000', '2024-11-02 04:54:54.049000', '2024-11-02 04:54:54.049000', NULL, NULL, NULL),
(2, 'l22kq2rcchl5npivwnow0shs', 'plugin::content-manager.explorer.create', '{}', 'api::article.article', '{\"fields\":[\"title\",\"description\",\"slug\",\"cover\",\"author\",\"category\",\"blocks\"]}', '[]', '2024-11-02 04:54:54.225000', '2024-11-02 04:54:54.225000', '2024-11-02 04:54:54.225000', NULL, NULL, NULL),
(3, 'jgzcdip69qdbo03muz6w3eyt', 'plugin::content-manager.explorer.create', '{}', 'api::author.author', '{\"fields\":[\"name\",\"avatar\",\"email\",\"articles\"]}', '[]', '2024-11-02 04:54:54.497000', '2024-11-02 04:54:54.497000', '2024-11-02 04:54:54.497000', NULL, NULL, NULL),
(4, 'rrbqhm4gsabzac4a6i1t5x6w', 'plugin::content-manager.explorer.create', '{}', 'api::category.category', '{\"fields\":[\"name\",\"slug\",\"articles\",\"description\"]}', '[]', '2024-11-02 04:54:54.720000', '2024-11-02 04:54:54.720000', '2024-11-02 04:54:54.721000', NULL, NULL, NULL),
(5, 'koni6jygg94hq5hl4v1y9lgw', 'plugin::content-manager.explorer.create', '{}', 'api::global.global', '{\"fields\":[\"siteName\",\"favicon\",\"siteDescription\",\"defaultSeo.metaTitle\",\"defaultSeo.metaDescription\",\"defaultSeo.shareImage\"]}', '[]', '2024-11-02 04:54:54.928000', '2024-11-02 04:54:54.928000', '2024-11-02 04:54:54.928000', NULL, NULL, NULL),
(6, 'tca91s9g73sabe9i6ug77913', 'plugin::content-manager.explorer.read', '{}', 'api::about.about', '{\"fields\":[\"title\",\"blocks\"]}', '[]', '2024-11-02 04:54:55.099000', '2024-11-02 04:54:55.099000', '2024-11-02 04:54:55.100000', NULL, NULL, NULL),
(7, 'dxevfjqdlgsh6oq6kr7li6ge', 'plugin::content-manager.explorer.read', '{}', 'api::article.article', '{\"fields\":[\"title\",\"description\",\"slug\",\"cover\",\"author\",\"category\",\"blocks\"]}', '[]', '2024-11-02 04:54:55.260000', '2024-11-02 04:54:55.260000', '2024-11-02 04:54:55.260000', NULL, NULL, NULL),
(8, 'w3e5yodxtg9yndwt40ckk4s7', 'plugin::content-manager.explorer.read', '{}', 'api::author.author', '{\"fields\":[\"name\",\"avatar\",\"email\",\"articles\"]}', '[]', '2024-11-02 04:54:55.445000', '2024-11-02 04:54:55.445000', '2024-11-02 04:54:55.445000', NULL, NULL, NULL),
(9, 'judhdvuc06zwz80nzcjf9k3m', 'plugin::content-manager.explorer.read', '{}', 'api::category.category', '{\"fields\":[\"name\",\"slug\",\"articles\",\"description\"]}', '[]', '2024-11-02 04:54:55.617000', '2024-11-02 04:54:55.617000', '2024-11-02 04:54:55.617000', NULL, NULL, NULL),
(10, 'jac0451malqfbgtwtashmmty', 'plugin::content-manager.explorer.read', '{}', 'api::global.global', '{\"fields\":[\"siteName\",\"favicon\",\"siteDescription\",\"defaultSeo.metaTitle\",\"defaultSeo.metaDescription\",\"defaultSeo.shareImage\"]}', '[]', '2024-11-02 04:54:55.844000', '2024-11-02 04:54:55.844000', '2024-11-02 04:54:55.845000', NULL, NULL, NULL),
(11, 'ys3rqi7bdg7xf8tyu87m97bg', 'plugin::content-manager.explorer.update', '{}', 'api::about.about', '{\"fields\":[\"title\",\"blocks\"]}', '[]', '2024-11-02 04:54:56.210000', '2024-11-02 04:54:56.210000', '2024-11-02 04:54:56.211000', NULL, NULL, NULL),
(12, 'bdzz5gvsodf5hv5hl8c7a1ah', 'plugin::content-manager.explorer.update', '{}', 'api::article.article', '{\"fields\":[\"title\",\"description\",\"slug\",\"cover\",\"author\",\"category\",\"blocks\"]}', '[]', '2024-11-02 04:54:56.304000', '2024-11-02 04:54:56.304000', '2024-11-02 04:54:56.304000', NULL, NULL, NULL),
(13, 'j0utpke6kpogrq8k2v9xclkz', 'plugin::content-manager.explorer.update', '{}', 'api::author.author', '{\"fields\":[\"name\",\"avatar\",\"email\",\"articles\"]}', '[]', '2024-11-02 04:54:56.409000', '2024-11-02 04:54:56.409000', '2024-11-02 04:54:56.409000', NULL, NULL, NULL),
(14, 'ypdjhtsvvuebe4lpc4srjwg9', 'plugin::content-manager.explorer.update', '{}', 'api::category.category', '{\"fields\":[\"name\",\"slug\",\"articles\",\"description\"]}', '[]', '2024-11-02 04:54:56.480000', '2024-11-02 04:54:56.480000', '2024-11-02 04:54:56.480000', NULL, NULL, NULL),
(15, 'm3223z2eds1ufx2ipuwtu3vo', 'plugin::content-manager.explorer.update', '{}', 'api::global.global', '{\"fields\":[\"siteName\",\"favicon\",\"siteDescription\",\"defaultSeo.metaTitle\",\"defaultSeo.metaDescription\",\"defaultSeo.shareImage\"]}', '[]', '2024-11-02 04:54:56.551000', '2024-11-02 04:54:56.551000', '2024-11-02 04:54:56.551000', NULL, NULL, NULL),
(16, 'etly246vohwgtj22mabyyuyn', 'plugin::content-manager.explorer.delete', '{}', 'api::about.about', '{}', '[]', '2024-11-02 04:54:56.645000', '2024-11-02 04:54:56.645000', '2024-11-02 04:54:56.645000', NULL, NULL, NULL),
(17, 'lcwuvsewm3zol2kml0kkb2z7', 'plugin::content-manager.explorer.delete', '{}', 'api::article.article', '{}', '[]', '2024-11-02 04:54:56.761000', '2024-11-02 04:54:56.761000', '2024-11-02 04:54:56.761000', NULL, NULL, NULL),
(18, 'tgzpwx39hindpp1pus5jonfb', 'plugin::content-manager.explorer.delete', '{}', 'api::author.author', '{}', '[]', '2024-11-02 04:54:56.948000', '2024-11-02 04:54:56.948000', '2024-11-02 04:54:56.948000', NULL, NULL, NULL),
(19, 'vjl6hryf8iyqzdt49ium60hx', 'plugin::content-manager.explorer.delete', '{}', 'api::category.category', '{}', '[]', '2024-11-02 04:54:57.053000', '2024-11-02 04:54:57.053000', '2024-11-02 04:54:57.053000', NULL, NULL, NULL),
(20, 'snygp5751o5k8dykgsofb7xs', 'plugin::content-manager.explorer.delete', '{}', 'api::global.global', '{}', '[]', '2024-11-02 04:54:57.232000', '2024-11-02 04:54:57.232000', '2024-11-02 04:54:57.232000', NULL, NULL, NULL),
(21, 'f6zwb1wmnpwl8kgh193n663v', 'plugin::content-manager.explorer.publish', '{}', 'api::about.about', '{}', '[]', '2024-11-02 04:54:57.349000', '2024-11-02 04:54:57.349000', '2024-11-02 04:54:57.349000', NULL, NULL, NULL),
(22, 'fdiyvqqff96kuo04nnjr5u5h', 'plugin::content-manager.explorer.publish', '{}', 'api::article.article', '{}', '[]', '2024-11-02 04:54:57.442000', '2024-11-02 04:54:57.442000', '2024-11-02 04:54:57.442000', NULL, NULL, NULL),
(23, 'g4mibqvqulaeq8vk9wliurav', 'plugin::content-manager.explorer.publish', '{}', 'api::author.author', '{}', '[]', '2024-11-02 04:54:57.535000', '2024-11-02 04:54:57.535000', '2024-11-02 04:54:57.535000', NULL, NULL, NULL),
(24, 'tusg63hrgzq73hvfmy9wc9we', 'plugin::content-manager.explorer.publish', '{}', 'api::category.category', '{}', '[]', '2024-11-02 04:54:57.651000', '2024-11-02 04:54:57.651000', '2024-11-02 04:54:57.651000', NULL, NULL, NULL),
(25, 'tsed3kndu9n2x0ojtf7m32q8', 'plugin::content-manager.explorer.publish', '{}', 'api::global.global', '{}', '[]', '2024-11-02 04:54:57.789000', '2024-11-02 04:54:57.789000', '2024-11-02 04:54:57.789000', NULL, NULL, NULL),
(26, 'eeeso6jf2mj1fbbizuupyprd', 'plugin::upload.read', '{}', NULL, '{}', '[]', '2024-11-02 04:54:57.873000', '2024-11-02 04:54:57.873000', '2024-11-02 04:54:57.874000', NULL, NULL, NULL),
(27, 'rutk104jmkaftd59wgh2thvl', 'plugin::upload.configure-view', '{}', NULL, '{}', '[]', '2024-11-02 04:54:58.097000', '2024-11-02 04:54:58.097000', '2024-11-02 04:54:58.098000', NULL, NULL, NULL),
(28, 'a9bq0ef8boprlpkxayt3f91k', 'plugin::upload.assets.create', '{}', NULL, '{}', '[]', '2024-11-02 04:54:58.388000', '2024-11-02 04:54:58.388000', '2024-11-02 04:54:58.388000', NULL, NULL, NULL),
(29, 'odb7r47qieuj7wqa350k6j8u', 'plugin::upload.assets.update', '{}', NULL, '{}', '[]', '2024-11-02 04:54:58.492000', '2024-11-02 04:54:58.492000', '2024-11-02 04:54:58.492000', NULL, NULL, NULL),
(30, 'u7hr61vdyqkrk9poyb8kl7r4', 'plugin::upload.assets.download', '{}', NULL, '{}', '[]', '2024-11-02 04:54:58.609000', '2024-11-02 04:54:58.609000', '2024-11-02 04:54:58.609000', NULL, NULL, NULL),
(31, 'udd0hcvtovjmc9hbtqgarel7', 'plugin::upload.assets.copy-link', '{}', NULL, '{}', '[]', '2024-11-02 04:54:58.713000', '2024-11-02 04:54:58.713000', '2024-11-02 04:54:58.713000', NULL, NULL, NULL),
(32, 'xbh8g09nzbi8so8injxumqyk', 'plugin::content-manager.explorer.create', '{}', 'api::about.about', '{\"fields\":[\"title\",\"blocks\"]}', '[\"admin::is-creator\"]', '2024-11-02 04:54:58.826000', '2024-11-02 04:54:58.826000', '2024-11-02 04:54:58.826000', NULL, NULL, NULL),
(33, 'fpplnt99pyqv0yzuw6xg6p0f', 'plugin::content-manager.explorer.create', '{}', 'api::article.article', '{\"fields\":[\"title\",\"description\",\"slug\",\"cover\",\"author\",\"category\",\"blocks\"]}', '[\"admin::is-creator\"]', '2024-11-02 04:54:58.912000', '2024-11-02 04:54:58.912000', '2024-11-02 04:54:58.912000', NULL, NULL, NULL),
(34, 'tq0hkau5wykgnyobya6ec6c6', 'plugin::content-manager.explorer.create', '{}', 'api::author.author', '{\"fields\":[\"name\",\"avatar\",\"email\",\"articles\"]}', '[\"admin::is-creator\"]', '2024-11-02 04:54:59.007000', '2024-11-02 04:54:59.007000', '2024-11-02 04:54:59.007000', NULL, NULL, NULL),
(35, 'hqop26k98od9yjfmronz5hfs', 'plugin::content-manager.explorer.create', '{}', 'api::category.category', '{\"fields\":[\"name\",\"slug\",\"articles\",\"description\"]}', '[\"admin::is-creator\"]', '2024-11-02 04:54:59.088000', '2024-11-02 04:54:59.088000', '2024-11-02 04:54:59.088000', NULL, NULL, NULL),
(36, 's13ioma764e6glxvst05dkvb', 'plugin::content-manager.explorer.create', '{}', 'api::global.global', '{\"fields\":[\"siteName\",\"favicon\",\"siteDescription\",\"defaultSeo.metaTitle\",\"defaultSeo.metaDescription\",\"defaultSeo.shareImage\"]}', '[\"admin::is-creator\"]', '2024-11-02 04:54:59.573000', '2024-11-02 04:54:59.573000', '2024-11-02 04:54:59.573000', NULL, NULL, NULL),
(37, 'i1nxgf5fqck6vrhdcqdncndy', 'plugin::content-manager.explorer.read', '{}', 'api::about.about', '{\"fields\":[\"title\",\"blocks\"]}', '[\"admin::is-creator\"]', '2024-11-02 04:54:59.676000', '2024-11-02 04:54:59.676000', '2024-11-02 04:54:59.677000', NULL, NULL, NULL),
(38, 'o0gm6epr7wmalu5sesuvw2q4', 'plugin::content-manager.explorer.read', '{}', 'api::article.article', '{\"fields\":[\"title\",\"description\",\"slug\",\"cover\",\"author\",\"category\",\"blocks\"]}', '[\"admin::is-creator\"]', '2024-11-02 04:54:59.760000', '2024-11-02 04:54:59.760000', '2024-11-02 04:54:59.760000', NULL, NULL, NULL),
(39, 'eme8e2q16gr7pa63qjv3hxyx', 'plugin::content-manager.explorer.read', '{}', 'api::author.author', '{\"fields\":[\"name\",\"avatar\",\"email\",\"articles\"]}', '[\"admin::is-creator\"]', '2024-11-02 04:54:59.842000', '2024-11-02 04:54:59.842000', '2024-11-02 04:54:59.843000', NULL, NULL, NULL),
(40, 'v65li4gwzgxzg8z0b0re2rkk', 'plugin::content-manager.explorer.read', '{}', 'api::category.category', '{\"fields\":[\"name\",\"slug\",\"articles\",\"description\"]}', '[\"admin::is-creator\"]', '2024-11-02 04:54:59.947000', '2024-11-02 04:54:59.947000', '2024-11-02 04:54:59.947000', NULL, NULL, NULL),
(41, 'oodmpkingb7kltv6rq6lfw57', 'plugin::content-manager.explorer.read', '{}', 'api::global.global', '{\"fields\":[\"siteName\",\"favicon\",\"siteDescription\",\"defaultSeo.metaTitle\",\"defaultSeo.metaDescription\",\"defaultSeo.shareImage\"]}', '[\"admin::is-creator\"]', '2024-11-02 04:55:00.051000', '2024-11-02 04:55:00.051000', '2024-11-02 04:55:00.052000', NULL, NULL, NULL),
(42, 'vyuw0gb4umylorao2co4xx9e', 'plugin::content-manager.explorer.update', '{}', 'api::about.about', '{\"fields\":[\"title\",\"blocks\"]}', '[\"admin::is-creator\"]', '2024-11-02 04:55:00.134000', '2024-11-02 04:55:00.134000', '2024-11-02 04:55:00.134000', NULL, NULL, NULL),
(43, 'ju4js0vzxan4d7tuthjbmbj7', 'plugin::content-manager.explorer.update', '{}', 'api::article.article', '{\"fields\":[\"title\",\"description\",\"slug\",\"cover\",\"author\",\"category\",\"blocks\"]}', '[\"admin::is-creator\"]', '2024-11-02 04:55:00.227000', '2024-11-02 04:55:00.227000', '2024-11-02 04:55:00.228000', NULL, NULL, NULL),
(44, 'rdlcl074fqkwo46bxtmlgwff', 'plugin::content-manager.explorer.update', '{}', 'api::author.author', '{\"fields\":[\"name\",\"avatar\",\"email\",\"articles\"]}', '[\"admin::is-creator\"]', '2024-11-02 04:55:00.311000', '2024-11-02 04:55:00.311000', '2024-11-02 04:55:00.311000', NULL, NULL, NULL),
(45, 'a1h6voatcr5rnrtap1cdzx73', 'plugin::content-manager.explorer.update', '{}', 'api::category.category', '{\"fields\":[\"name\",\"slug\",\"articles\",\"description\"]}', '[\"admin::is-creator\"]', '2024-11-02 04:55:00.406000', '2024-11-02 04:55:00.406000', '2024-11-02 04:55:00.407000', NULL, NULL, NULL),
(46, 'ip437jhs0a6eao8zdqawuizj', 'plugin::content-manager.explorer.update', '{}', 'api::global.global', '{\"fields\":[\"siteName\",\"favicon\",\"siteDescription\",\"defaultSeo.metaTitle\",\"defaultSeo.metaDescription\",\"defaultSeo.shareImage\"]}', '[\"admin::is-creator\"]', '2024-11-02 04:55:00.596000', '2024-11-02 04:55:00.596000', '2024-11-02 04:55:00.597000', NULL, NULL, NULL),
(47, 'xshpu24zup2bbjm5tacm0t9p', 'plugin::content-manager.explorer.delete', '{}', 'api::about.about', '{}', '[\"admin::is-creator\"]', '2024-11-02 04:55:00.896000', '2024-11-02 04:55:00.896000', '2024-11-02 04:55:00.896000', NULL, NULL, NULL),
(48, 'vwql68uv5xezfw5qz6w7cmir', 'plugin::content-manager.explorer.delete', '{}', 'api::article.article', '{}', '[\"admin::is-creator\"]', '2024-11-02 04:55:01.085000', '2024-11-02 04:55:01.085000', '2024-11-02 04:55:01.086000', NULL, NULL, NULL),
(49, 'xt14dmc8vzecaekpj7dy5mon', 'plugin::content-manager.explorer.delete', '{}', 'api::author.author', '{}', '[\"admin::is-creator\"]', '2024-11-02 04:55:01.167000', '2024-11-02 04:55:01.167000', '2024-11-02 04:55:01.168000', NULL, NULL, NULL),
(50, 'vm02iuibup87lx17bn71wb2i', 'plugin::content-manager.explorer.delete', '{}', 'api::category.category', '{}', '[\"admin::is-creator\"]', '2024-11-02 04:55:01.251000', '2024-11-02 04:55:01.251000', '2024-11-02 04:55:01.251000', NULL, NULL, NULL),
(51, 'xnsf9kcorvozmvmxozxrivom', 'plugin::content-manager.explorer.delete', '{}', 'api::global.global', '{}', '[\"admin::is-creator\"]', '2024-11-02 04:55:01.355000', '2024-11-02 04:55:01.355000', '2024-11-02 04:55:01.356000', NULL, NULL, NULL),
(52, 'rr3zmiieihho947rezfkq0v6', 'plugin::upload.read', '{}', NULL, '{}', '[\"admin::is-creator\"]', '2024-11-02 04:55:01.451000', '2024-11-02 04:55:01.451000', '2024-11-02 04:55:01.452000', NULL, NULL, NULL),
(53, 'wkgge0oaock3a3kns9suxvbl', 'plugin::upload.configure-view', '{}', NULL, '{}', '[]', '2024-11-02 04:55:01.627000', '2024-11-02 04:55:01.627000', '2024-11-02 04:55:01.628000', NULL, NULL, NULL),
(54, 'jhrmo824zsflc2wzvuziewnk', 'plugin::upload.assets.create', '{}', NULL, '{}', '[]', '2024-11-02 04:55:01.721000', '2024-11-02 04:55:01.721000', '2024-11-02 04:55:01.722000', NULL, NULL, NULL),
(55, 'xvf11lr37r6ffg3qtih82pu8', 'plugin::upload.assets.update', '{}', NULL, '{}', '[\"admin::is-creator\"]', '2024-11-02 04:55:01.793000', '2024-11-02 04:55:01.793000', '2024-11-02 04:55:01.793000', NULL, NULL, NULL),
(56, 'jtxp3p8361rp15y6waq2khn0', 'plugin::upload.assets.download', '{}', NULL, '{}', '[]', '2024-11-02 04:55:01.875000', '2024-11-02 04:55:01.875000', '2024-11-02 04:55:01.876000', NULL, NULL, NULL),
(57, 'dmn1h56804h7mrnyiwofv8nw', 'plugin::upload.assets.copy-link', '{}', NULL, '{}', '[]', '2024-11-02 04:55:01.947000', '2024-11-02 04:55:01.947000', '2024-11-02 04:55:01.948000', NULL, NULL, NULL),
(58, 'l863f2td5xeydd5nzlnmjxtd', 'plugin::content-manager.explorer.create', '{}', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}', '[]', '2024-11-02 04:55:02.191000', '2024-11-02 04:55:02.191000', '2024-11-02 04:55:02.191000', NULL, NULL, NULL),
(59, 'd9z74as9oh7lw13h1u32c28c', 'plugin::content-manager.explorer.create', '{}', 'api::about.about', '{\"fields\":[\"title\",\"blocks\"]}', '[]', '2024-11-02 04:55:02.263000', '2024-11-02 04:55:02.263000', '2024-11-02 04:55:02.264000', NULL, NULL, NULL),
(60, 'gzbcr74gwp8q23brms71vv51', 'plugin::content-manager.explorer.create', '{}', 'api::article.article', '{\"fields\":[\"title\",\"description\",\"slug\",\"cover\",\"author\",\"category\",\"blocks\"]}', '[]', '2024-11-02 04:55:02.358000', '2024-11-02 04:55:02.358000', '2024-11-02 04:55:02.358000', NULL, NULL, NULL),
(61, 'e0sx4s6vj5auzumrnp1wggqs', 'plugin::content-manager.explorer.create', '{}', 'api::author.author', '{\"fields\":[\"name\",\"avatar\",\"email\",\"articles\"]}', '[]', '2024-11-02 04:55:02.502000', '2024-11-02 04:55:02.502000', '2024-11-02 04:55:02.503000', NULL, NULL, NULL),
(62, 'yafq8akz75y7v1c2okluhb0p', 'plugin::content-manager.explorer.create', '{}', 'api::category.category', '{\"fields\":[\"name\",\"slug\",\"articles\",\"description\"]}', '[]', '2024-11-02 04:55:02.574000', '2024-11-02 04:55:02.574000', '2024-11-02 04:55:02.575000', NULL, NULL, NULL),
(63, 'fnuxkthsaorjmx7hgvyv8e22', 'plugin::content-manager.explorer.create', '{}', 'api::global.global', '{\"fields\":[\"siteName\",\"favicon\",\"siteDescription\",\"defaultSeo.metaTitle\",\"defaultSeo.metaDescription\",\"defaultSeo.shareImage\"]}', '[]', '2024-11-02 04:55:02.755000', '2024-11-02 04:55:02.755000', '2024-11-02 04:55:02.755000', NULL, NULL, NULL),
(64, 'zt0vevdzljyhbnjfta8rpnpz', 'plugin::content-manager.explorer.read', '{}', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}', '[]', '2024-11-02 04:55:02.826000', '2024-11-02 04:55:02.826000', '2024-11-02 04:55:02.827000', NULL, NULL, NULL),
(65, 'dm25wrrrnhfnnuky5bj7k8t1', 'plugin::content-manager.explorer.read', '{}', 'api::about.about', '{\"fields\":[\"title\",\"blocks\"]}', '[]', '2024-11-02 04:55:02.899000', '2024-11-02 04:55:02.899000', '2024-11-02 04:55:02.900000', NULL, NULL, NULL),
(66, 'zd9jvjab56vi2j4ci0tlr4m2', 'plugin::content-manager.explorer.read', '{}', 'api::article.article', '{\"fields\":[\"title\",\"description\",\"slug\",\"cover\",\"author\",\"category\",\"blocks\"]}', '[]', '2024-11-02 04:55:02.980000', '2024-11-02 04:55:02.980000', '2024-11-02 04:55:02.981000', NULL, NULL, NULL),
(67, 'lndeflrepg0rcftu75ng0dz1', 'plugin::content-manager.explorer.read', '{}', 'api::author.author', '{\"fields\":[\"name\",\"avatar\",\"email\",\"articles\"]}', '[]', '2024-11-02 04:55:03.157000', '2024-11-02 04:55:03.157000', '2024-11-02 04:55:03.157000', NULL, NULL, NULL),
(68, 'rnjt6eg66m5se696jqnvt3lz', 'plugin::content-manager.explorer.read', '{}', 'api::category.category', '{\"fields\":[\"name\",\"slug\",\"articles\",\"description\"]}', '[]', '2024-11-02 04:55:03.228000', '2024-11-02 04:55:03.228000', '2024-11-02 04:55:03.228000', NULL, NULL, NULL),
(69, 'yhwdppdtdzfho836bell46k7', 'plugin::content-manager.explorer.read', '{}', 'api::global.global', '{\"fields\":[\"siteName\",\"favicon\",\"siteDescription\",\"defaultSeo.metaTitle\",\"defaultSeo.metaDescription\",\"defaultSeo.shareImage\"]}', '[]', '2024-11-02 04:55:03.300000', '2024-11-02 04:55:03.300000', '2024-11-02 04:55:03.300000', NULL, NULL, NULL),
(70, 'i85vji3t9rbvc3b7tew65crp', 'plugin::content-manager.explorer.update', '{}', 'plugin::users-permissions.user', '{\"fields\":[\"username\",\"email\",\"provider\",\"password\",\"resetPasswordToken\",\"confirmationToken\",\"confirmed\",\"blocked\",\"role\"]}', '[]', '2024-11-02 04:55:03.373000', '2024-11-02 04:55:03.373000', '2024-11-02 04:55:03.373000', NULL, NULL, NULL),
(71, 'nrx65jt0vs6xi68pb90gmj3c', 'plugin::content-manager.explorer.update', '{}', 'api::about.about', '{\"fields\":[\"title\",\"blocks\"]}', '[]', '2024-11-02 04:55:03.443000', '2024-11-02 04:55:03.443000', '2024-11-02 04:55:03.443000', NULL, NULL, NULL),
(72, 'ysussgw6tyayqamy99cm0tot', 'plugin::content-manager.explorer.update', '{}', 'api::article.article', '{\"fields\":[\"title\",\"description\",\"slug\",\"cover\",\"author\",\"category\",\"blocks\"]}', '[]', '2024-11-02 04:55:03.539000', '2024-11-02 04:55:03.539000', '2024-11-02 04:55:03.540000', NULL, NULL, NULL),
(73, 'a0tctrf9mfhj7s9lk24suapb', 'plugin::content-manager.explorer.update', '{}', 'api::author.author', '{\"fields\":[\"name\",\"avatar\",\"email\",\"articles\"]}', '[]', '2024-11-02 04:55:03.632000', '2024-11-02 04:55:03.632000', '2024-11-02 04:55:03.633000', NULL, NULL, NULL),
(74, 'tdwmxv9c691dv934y85slmq8', 'plugin::content-manager.explorer.update', '{}', 'api::category.category', '{\"fields\":[\"name\",\"slug\",\"articles\",\"description\"]}', '[]', '2024-11-02 04:55:03.765000', '2024-11-02 04:55:03.765000', '2024-11-02 04:55:03.765000', NULL, NULL, NULL),
(75, 'trn8u9zn9o528m0fsis32nxx', 'plugin::content-manager.explorer.update', '{}', 'api::global.global', '{\"fields\":[\"siteName\",\"favicon\",\"siteDescription\",\"defaultSeo.metaTitle\",\"defaultSeo.metaDescription\",\"defaultSeo.shareImage\"]}', '[]', '2024-11-02 04:55:03.847000', '2024-11-02 04:55:03.847000', '2024-11-02 04:55:03.847000', NULL, NULL, NULL),
(76, 'xcq2iw7ovzfpwi6r2p1zj9v0', 'plugin::content-manager.explorer.delete', '{}', 'plugin::users-permissions.user', '{}', '[]', '2024-11-02 04:55:03.929000', '2024-11-02 04:55:03.929000', '2024-11-02 04:55:03.929000', NULL, NULL, NULL),
(77, 'b8ijhw15uh274gi0b6fcfy48', 'plugin::content-manager.explorer.delete', '{}', 'api::about.about', '{}', '[]', '2024-11-02 04:55:04.001000', '2024-11-02 04:55:04.001000', '2024-11-02 04:55:04.001000', NULL, NULL, NULL),
(78, 'rz5ym46uas0fyvmf0ns5v353', 'plugin::content-manager.explorer.delete', '{}', 'api::article.article', '{}', '[]', '2024-11-02 04:55:04.169000', '2024-11-02 04:55:04.169000', '2024-11-02 04:55:04.169000', NULL, NULL, NULL),
(79, 'b0kd4lho1v52525frykihqe1', 'plugin::content-manager.explorer.delete', '{}', 'api::author.author', '{}', '[]', '2024-11-02 04:55:04.407000', '2024-11-02 04:55:04.407000', '2024-11-02 04:55:04.407000', NULL, NULL, NULL),
(80, 'x1y7e5ezjhsbgplncf5k1wrf', 'plugin::content-manager.explorer.delete', '{}', 'api::category.category', '{}', '[]', '2024-11-02 04:55:04.660000', '2024-11-02 04:55:04.660000', '2024-11-02 04:55:04.660000', NULL, NULL, NULL),
(81, 'zcrfu3dz2quscf2jk8rwzinv', 'plugin::content-manager.explorer.delete', '{}', 'api::global.global', '{}', '[]', '2024-11-02 04:55:04.806000', '2024-11-02 04:55:04.806000', '2024-11-02 04:55:04.806000', NULL, NULL, NULL),
(82, 'igjgkwwy512sgjn4dqssopcg', 'plugin::content-manager.explorer.publish', '{}', 'plugin::users-permissions.user', '{}', '[]', '2024-11-02 04:55:04.902000', '2024-11-02 04:55:04.902000', '2024-11-02 04:55:04.902000', NULL, NULL, NULL),
(83, 'ru2vdbuh8z6jgmx3u09ylaif', 'plugin::content-manager.explorer.publish', '{}', 'api::about.about', '{}', '[]', '2024-11-02 04:55:04.984000', '2024-11-02 04:55:04.984000', '2024-11-02 04:55:04.984000', NULL, NULL, NULL),
(84, 'cpl8j0ho0s92ylpreit0f5zv', 'plugin::content-manager.explorer.publish', '{}', 'api::article.article', '{}', '[]', '2024-11-02 04:55:05.067000', '2024-11-02 04:55:05.067000', '2024-11-02 04:55:05.067000', NULL, NULL, NULL),
(85, 'v8je1vo7sfpol5pv2br08vuc', 'plugin::content-manager.explorer.publish', '{}', 'api::author.author', '{}', '[]', '2024-11-02 04:55:05.185000', '2024-11-02 04:55:05.185000', '2024-11-02 04:55:05.185000', NULL, NULL, NULL),
(86, 'd158qt38m263sqgfniyxja6a', 'plugin::content-manager.explorer.publish', '{}', 'api::category.category', '{}', '[]', '2024-11-02 04:55:05.283000', '2024-11-02 04:55:05.283000', '2024-11-02 04:55:05.283000', NULL, NULL, NULL),
(87, 'ouno9bf6ddswai0pr2co88n3', 'plugin::content-manager.explorer.publish', '{}', 'api::global.global', '{}', '[]', '2024-11-02 04:55:05.380000', '2024-11-02 04:55:05.380000', '2024-11-02 04:55:05.381000', NULL, NULL, NULL),
(88, 'yo3k3oayodwveo2tpapx8sv6', 'plugin::content-manager.single-types.configure-view', '{}', NULL, '{}', '[]', '2024-11-02 04:55:05.451000', '2024-11-02 04:55:05.451000', '2024-11-02 04:55:05.451000', NULL, NULL, NULL),
(89, 'yhmspmgr1gcivawsj3kkmanf', 'plugin::content-manager.collection-types.configure-view', '{}', NULL, '{}', '[]', '2024-11-02 04:55:05.524000', '2024-11-02 04:55:05.524000', '2024-11-02 04:55:05.524000', NULL, NULL, NULL),
(90, 'dr4y2wqgsnalqpchkkd76upi', 'plugin::content-manager.components.configure-layout', '{}', NULL, '{}', '[]', '2024-11-02 04:55:05.608000', '2024-11-02 04:55:05.608000', '2024-11-02 04:55:05.608000', NULL, NULL, NULL),
(91, 'un7daojlt23kpkwqheap8y6j', 'plugin::content-type-builder.read', '{}', NULL, '{}', '[]', '2024-11-02 04:55:05.690000', '2024-11-02 04:55:05.690000', '2024-11-02 04:55:05.690000', NULL, NULL, NULL),
(92, 'li76v6x01si36fw1arx4dgik', 'plugin::email.settings.read', '{}', NULL, '{}', '[]', '2024-11-02 04:55:05.784000', '2024-11-02 04:55:05.784000', '2024-11-02 04:55:05.784000', NULL, NULL, NULL),
(93, 'akbcflwh9bv77bmqpcgrryow', 'plugin::upload.read', '{}', NULL, '{}', '[]', '2024-11-02 04:55:05.905000', '2024-11-02 04:55:05.905000', '2024-11-02 04:55:05.905000', NULL, NULL, NULL),
(94, 'czva3l8fobkcht7xbpnhl64n', 'plugin::upload.assets.create', '{}', NULL, '{}', '[]', '2024-11-02 04:55:06.001000', '2024-11-02 04:55:06.001000', '2024-11-02 04:55:06.001000', NULL, NULL, NULL),
(95, 'ujjae2dnk9eheibkbk1hoyuw', 'plugin::upload.assets.update', '{}', NULL, '{}', '[]', '2024-11-02 04:55:06.073000', '2024-11-02 04:55:06.073000', '2024-11-02 04:55:06.073000', NULL, NULL, NULL),
(96, 'ahl1zk754psr7lo6opt2ux0l', 'plugin::upload.assets.download', '{}', NULL, '{}', '[]', '2024-11-02 04:55:06.155000', '2024-11-02 04:55:06.155000', '2024-11-02 04:55:06.155000', NULL, NULL, NULL),
(97, 'x5aw2b8kzqyh474xb96ea7jz', 'plugin::upload.assets.copy-link', '{}', NULL, '{}', '[]', '2024-11-02 04:55:06.226000', '2024-11-02 04:55:06.226000', '2024-11-02 04:55:06.227000', NULL, NULL, NULL),
(98, 'ddkpb2keiadg7huhefkeriyw', 'plugin::upload.configure-view', '{}', NULL, '{}', '[]', '2024-11-02 04:55:06.297000', '2024-11-02 04:55:06.297000', '2024-11-02 04:55:06.298000', NULL, NULL, NULL),
(99, 'pj6sby30wp6s1squnc1eo984', 'plugin::upload.settings.read', '{}', NULL, '{}', '[]', '2024-11-02 04:55:06.553000', '2024-11-02 04:55:06.553000', '2024-11-02 04:55:06.553000', NULL, NULL, NULL),
(100, 'n2wgzqeh9um6dw4wp7wz3r54', 'plugin::i18n.locale.create', '{}', NULL, '{}', '[]', '2024-11-02 04:55:06.682000', '2024-11-02 04:55:06.682000', '2024-11-02 04:55:06.683000', NULL, NULL, NULL),
(101, 'fyqloz1im2dn9sfxsmv0a2t5', 'plugin::i18n.locale.read', '{}', NULL, '{}', '[]', '2024-11-02 04:55:06.764000', '2024-11-02 04:55:06.764000', '2024-11-02 04:55:06.764000', NULL, NULL, NULL),
(102, 'xom21hiw0tg6tpbtx431wzp7', 'plugin::i18n.locale.update', '{}', NULL, '{}', '[]', '2024-11-02 04:55:06.870000', '2024-11-02 04:55:06.870000', '2024-11-02 04:55:06.870000', NULL, NULL, NULL),
(103, 'f09k6fpfwpm6ci5lf6iidz66', 'plugin::i18n.locale.delete', '{}', NULL, '{}', '[]', '2024-11-02 04:55:07.040000', '2024-11-02 04:55:07.040000', '2024-11-02 04:55:07.040000', NULL, NULL, NULL),
(104, 'pyr9dlgqljcg749p7lyerne3', 'plugin::users-permissions.roles.create', '{}', NULL, '{}', '[]', '2024-11-02 04:55:07.147000', '2024-11-02 04:55:07.147000', '2024-11-02 04:55:07.147000', NULL, NULL, NULL),
(105, 'fr6931h1q4mvhq0j9tgob5ek', 'plugin::users-permissions.roles.read', '{}', NULL, '{}', '[]', '2024-11-02 04:55:07.230000', '2024-11-02 04:55:07.230000', '2024-11-02 04:55:07.230000', NULL, NULL, NULL),
(106, 'md9pu3yo7pr98qawph284pd5', 'plugin::users-permissions.roles.update', '{}', NULL, '{}', '[]', '2024-11-02 04:55:07.311000', '2024-11-02 04:55:07.311000', '2024-11-02 04:55:07.312000', NULL, NULL, NULL),
(107, 'gi1dov7unx7ve3d5megi3svg', 'plugin::users-permissions.roles.delete', '{}', NULL, '{}', '[]', '2024-11-02 04:55:07.383000', '2024-11-02 04:55:07.383000', '2024-11-02 04:55:07.383000', NULL, NULL, NULL),
(108, 'gpyvjdkeh8kpyoyconyjwirz', 'plugin::users-permissions.providers.read', '{}', NULL, '{}', '[]', '2024-11-02 04:55:07.454000', '2024-11-02 04:55:07.454000', '2024-11-02 04:55:07.455000', NULL, NULL, NULL),
(109, 'ad4b3c1yoxxvz1ddsog7i4x9', 'plugin::users-permissions.providers.update', '{}', NULL, '{}', '[]', '2024-11-02 04:55:07.586000', '2024-11-02 04:55:07.586000', '2024-11-02 04:55:07.587000', NULL, NULL, NULL),
(110, 'a5abxq2hnq4ujtsuo44j7smu', 'plugin::users-permissions.email-templates.read', '{}', NULL, '{}', '[]', '2024-11-02 04:55:07.743000', '2024-11-02 04:55:07.743000', '2024-11-02 04:55:07.743000', NULL, NULL, NULL),
(111, 'r8l0vmc4bp0bnbpgy93vdzop', 'plugin::users-permissions.email-templates.update', '{}', NULL, '{}', '[]', '2024-11-02 04:55:07.848000', '2024-11-02 04:55:07.848000', '2024-11-02 04:55:07.849000', NULL, NULL, NULL),
(112, 'godvb7cg3jlr13419jgi27nc', 'plugin::users-permissions.advanced-settings.read', '{}', NULL, '{}', '[]', '2024-11-02 04:55:07.919000', '2024-11-02 04:55:07.919000', '2024-11-02 04:55:07.919000', NULL, NULL, NULL),
(113, 'wxlkdyczq4hhhfug5uyxtlga', 'plugin::users-permissions.advanced-settings.update', '{}', NULL, '{}', '[]', '2024-11-02 04:55:07.991000', '2024-11-02 04:55:07.991000', '2024-11-02 04:55:07.991000', NULL, NULL, NULL),
(114, 'md5e4autu32w9rjydpvqtplm', 'admin::marketplace.read', '{}', NULL, '{}', '[]', '2024-11-02 04:55:08.062000', '2024-11-02 04:55:08.062000', '2024-11-02 04:55:08.062000', NULL, NULL, NULL),
(115, 'c7f8sgcpt5txlwiohdxpumjc', 'admin::webhooks.create', '{}', NULL, '{}', '[]', '2024-11-02 04:55:08.158000', '2024-11-02 04:55:08.158000', '2024-11-02 04:55:08.158000', NULL, NULL, NULL),
(116, 'kncbo3zowo20rearfpzoc0dv', 'admin::webhooks.read', '{}', NULL, '{}', '[]', '2024-11-02 04:55:08.254000', '2024-11-02 04:55:08.254000', '2024-11-02 04:55:08.254000', NULL, NULL, NULL),
(117, 'lj3bgj3bjmuqgdn3wpnu7n0z', 'admin::webhooks.update', '{}', NULL, '{}', '[]', '2024-11-02 04:55:08.325000', '2024-11-02 04:55:08.325000', '2024-11-02 04:55:08.325000', NULL, NULL, NULL),
(118, 'plgdfzh9rsj1fm6idqp17rvf', 'admin::webhooks.delete', '{}', NULL, '{}', '[]', '2024-11-02 04:55:08.397000', '2024-11-02 04:55:08.397000', '2024-11-02 04:55:08.397000', NULL, NULL, NULL),
(119, 'mm4a0ij02br0ig4tx8pf78r6', 'admin::users.create', '{}', NULL, '{}', '[]', '2024-11-02 04:55:08.480000', '2024-11-02 04:55:08.480000', '2024-11-02 04:55:08.480000', NULL, NULL, NULL),
(120, 'ibrljpybcyt0kc7fb9cquqvx', 'admin::users.read', '{}', NULL, '{}', '[]', '2024-11-02 04:55:08.551000', '2024-11-02 04:55:08.551000', '2024-11-02 04:55:08.551000', NULL, NULL, NULL),
(121, 'qv4qo99zmiagd6k4znlzoxh0', 'admin::users.update', '{}', NULL, '{}', '[]', '2024-11-02 04:55:08.624000', '2024-11-02 04:55:08.624000', '2024-11-02 04:55:08.624000', NULL, NULL, NULL),
(122, 'v8fum4vm8lr1rahyr75u6h87', 'admin::users.delete', '{}', NULL, '{}', '[]', '2024-11-02 04:55:08.779000', '2024-11-02 04:55:08.779000', '2024-11-02 04:55:08.780000', NULL, NULL, NULL),
(123, 'xpo9jbxw3hkwomp1r3r0aaqm', 'admin::roles.create', '{}', NULL, '{}', '[]', '2024-11-02 04:55:08.851000', '2024-11-02 04:55:08.851000', '2024-11-02 04:55:08.851000', NULL, NULL, NULL),
(124, 'hqnnkqryt9kgeq1bqfsot5ul', 'admin::roles.read', '{}', NULL, '{}', '[]', '2024-11-02 04:55:08.933000', '2024-11-02 04:55:08.933000', '2024-11-02 04:55:08.933000', NULL, NULL, NULL),
(125, 'k9sun0beiuv1aelukvfm38pd', 'admin::roles.update', '{}', NULL, '{}', '[]', '2024-11-02 04:55:09.005000', '2024-11-02 04:55:09.005000', '2024-11-02 04:55:09.005000', NULL, NULL, NULL),
(126, 'oogdmppjw8wg8eqg5f2r5tzz', 'admin::roles.delete', '{}', NULL, '{}', '[]', '2024-11-02 04:55:09.088000', '2024-11-02 04:55:09.088000', '2024-11-02 04:55:09.088000', NULL, NULL, NULL),
(127, 'dz4msc9dluik3akz3tdmgdin', 'admin::api-tokens.access', '{}', NULL, '{}', '[]', '2024-11-02 04:55:09.159000', '2024-11-02 04:55:09.159000', '2024-11-02 04:55:09.159000', NULL, NULL, NULL),
(128, 't5wluvjtta65v4jxubdknl2g', 'admin::api-tokens.create', '{}', NULL, '{}', '[]', '2024-11-02 04:55:09.279000', '2024-11-02 04:55:09.279000', '2024-11-02 04:55:09.279000', NULL, NULL, NULL),
(129, 'ka9restbjz47vfm2krye0b4z', 'admin::api-tokens.read', '{}', NULL, '{}', '[]', '2024-11-02 04:55:09.363000', '2024-11-02 04:55:09.363000', '2024-11-02 04:55:09.363000', NULL, NULL, NULL),
(130, 'amc8tc8rbm5lodbsxr0qi9bt', 'admin::api-tokens.update', '{}', NULL, '{}', '[]', '2024-11-02 04:55:09.444000', '2024-11-02 04:55:09.444000', '2024-11-02 04:55:09.445000', NULL, NULL, NULL),
(131, 'jiduw7e3pozun1rcrlkjqoi9', 'admin::api-tokens.regenerate', '{}', NULL, '{}', '[]', '2024-11-02 04:55:09.540000', '2024-11-02 04:55:09.540000', '2024-11-02 04:55:09.540000', NULL, NULL, NULL),
(132, 'vs0pxr5ojaahjgycjtuu2qpe', 'admin::api-tokens.delete', '{}', NULL, '{}', '[]', '2024-11-02 04:55:09.610000', '2024-11-02 04:55:09.610000', '2024-11-02 04:55:09.610000', NULL, NULL, NULL),
(133, 'o8jjne1lwgj5qic67roha419', 'admin::project-settings.update', '{}', NULL, '{}', '[]', '2024-11-02 04:55:09.681000', '2024-11-02 04:55:09.681000', '2024-11-02 04:55:09.681000', NULL, NULL, NULL),
(134, 'h7t95ddubt52k71xxovnb6qj', 'admin::project-settings.read', '{}', NULL, '{}', '[]', '2024-11-02 04:55:10.038000', '2024-11-02 04:55:10.038000', '2024-11-02 04:55:10.038000', NULL, NULL, NULL),
(135, 'xj9pmnctzb0ebznw8yyyyjrv', 'admin::transfer.tokens.access', '{}', NULL, '{}', '[]', '2024-11-02 04:55:10.275000', '2024-11-02 04:55:10.275000', '2024-11-02 04:55:10.276000', NULL, NULL, NULL),
(136, 'tamj4qrzvlpw5ynbp8y4vnvr', 'admin::transfer.tokens.create', '{}', NULL, '{}', '[]', '2024-11-02 04:55:10.382000', '2024-11-02 04:55:10.382000', '2024-11-02 04:55:10.382000', NULL, NULL, NULL),
(137, 'ogyckn2k1ev0agycynpt3h16', 'admin::transfer.tokens.read', '{}', NULL, '{}', '[]', '2024-11-02 04:55:10.487000', '2024-11-02 04:55:10.487000', '2024-11-02 04:55:10.487000', NULL, NULL, NULL),
(138, 'pcfwbbrq48rxzl57pt9bfu06', 'admin::transfer.tokens.update', '{}', NULL, '{}', '[]', '2024-11-02 04:55:10.570000', '2024-11-02 04:55:10.570000', '2024-11-02 04:55:10.570000', NULL, NULL, NULL),
(139, 'b6konwxf0wbltjvparsje1hp', 'admin::transfer.tokens.regenerate', '{}', NULL, '{}', '[]', '2024-11-02 04:55:10.641000', '2024-11-02 04:55:10.641000', '2024-11-02 04:55:10.642000', NULL, NULL, NULL),
(140, 'h5nyagr4e0re54uyo2zu9w5x', 'admin::transfer.tokens.delete', '{}', NULL, '{}', '[]', '2024-11-02 04:55:10.735000', '2024-11-02 04:55:10.735000', '2024-11-02 04:55:10.735000', NULL, NULL, NULL),
(141, 'zr6t2rrc6lo9rwjuh0j4ce9u', 'plugin::content-manager.explorer.create', '{}', 'api::note.note', '{\"fields\":[\"title\",\"description\",\"isComplete\"]}', '[]', '2024-11-02 05:05:37.687000', '2024-11-02 05:05:37.687000', '2024-11-02 05:05:37.689000', NULL, NULL, NULL),
(142, 'im1ao4dd2hjnso6702j5lmgf', 'plugin::content-manager.explorer.read', '{}', 'api::note.note', '{\"fields\":[\"title\",\"description\",\"isComplete\"]}', '[]', '2024-11-02 05:05:37.856000', '2024-11-02 05:05:37.856000', '2024-11-02 05:05:37.856000', NULL, NULL, NULL),
(143, 'hc0tdt4kia7g50d5xwi4mhz7', 'plugin::content-manager.explorer.update', '{}', 'api::note.note', '{\"fields\":[\"title\",\"description\",\"isComplete\"]}', '[]', '2024-11-02 05:05:38.033000', '2024-11-02 05:05:38.033000', '2024-11-02 05:05:38.033000', NULL, NULL, NULL),
(144, 'wo23nssykkvjsxmxsereo4rn', 'plugin::content-manager.explorer.delete', '{}', 'api::note.note', '{}', '[]', '2024-11-02 05:05:38.116000', '2024-11-02 05:05:38.116000', '2024-11-02 05:05:38.116000', NULL, NULL, NULL),
(145, 'rfhh0uffew9yf1el3gric6aq', 'plugin::content-manager.explorer.publish', '{}', 'api::note.note', '{}', '[]', '2024-11-02 05:05:38.211000', '2024-11-02 05:05:38.211000', '2024-11-02 05:05:38.212000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions_role_lnk`
--

CREATE TABLE `admin_permissions_role_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `permission_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_permissions_role_lnk`
--

INSERT INTO `admin_permissions_role_lnk` (`id`, `permission_id`, `role_id`, `permission_ord`) VALUES
(1, 1, 2, 1),
(2, 2, 2, 2),
(3, 3, 2, 3),
(4, 4, 2, 4),
(5, 5, 2, 5),
(6, 6, 2, 6),
(7, 7, 2, 7),
(8, 8, 2, 8),
(9, 9, 2, 9),
(10, 10, 2, 10),
(11, 11, 2, 11),
(12, 12, 2, 12),
(13, 13, 2, 13),
(14, 14, 2, 14),
(15, 15, 2, 15),
(16, 16, 2, 16),
(17, 17, 2, 17),
(18, 18, 2, 18),
(19, 19, 2, 19),
(20, 20, 2, 20),
(21, 21, 2, 21),
(22, 22, 2, 22),
(23, 23, 2, 23),
(24, 24, 2, 24),
(25, 25, 2, 25),
(26, 26, 2, 26),
(27, 27, 2, 27),
(28, 28, 2, 28),
(29, 29, 2, 29),
(30, 30, 2, 30),
(31, 31, 2, 31),
(32, 32, 3, 1),
(33, 33, 3, 2),
(34, 34, 3, 3),
(35, 35, 3, 4),
(36, 36, 3, 5),
(37, 37, 3, 6),
(38, 38, 3, 7),
(39, 39, 3, 8),
(40, 40, 3, 9),
(41, 41, 3, 10),
(42, 42, 3, 11),
(43, 43, 3, 12),
(44, 44, 3, 13),
(45, 45, 3, 14),
(46, 46, 3, 15),
(47, 47, 3, 16),
(48, 48, 3, 17),
(49, 49, 3, 18),
(50, 50, 3, 19),
(51, 51, 3, 20),
(52, 52, 3, 21),
(53, 53, 3, 22),
(54, 54, 3, 23),
(55, 55, 3, 24),
(56, 56, 3, 25),
(57, 57, 3, 26),
(58, 58, 1, 1),
(59, 59, 1, 2),
(60, 60, 1, 3),
(61, 61, 1, 4),
(62, 62, 1, 5),
(63, 63, 1, 6),
(64, 64, 1, 7),
(65, 65, 1, 8),
(66, 66, 1, 9),
(67, 67, 1, 10),
(68, 68, 1, 11),
(69, 69, 1, 12),
(70, 70, 1, 13),
(71, 71, 1, 14),
(72, 72, 1, 15),
(73, 73, 1, 16),
(74, 74, 1, 17),
(75, 75, 1, 18),
(76, 76, 1, 19),
(77, 77, 1, 20),
(78, 78, 1, 21),
(79, 79, 1, 22),
(80, 80, 1, 23),
(81, 81, 1, 24),
(82, 82, 1, 25),
(83, 83, 1, 26),
(84, 84, 1, 27),
(85, 85, 1, 28),
(86, 86, 1, 29),
(87, 87, 1, 30),
(88, 88, 1, 31),
(89, 89, 1, 32),
(90, 90, 1, 33),
(91, 91, 1, 34),
(92, 92, 1, 35),
(93, 93, 1, 36),
(94, 94, 1, 37),
(95, 95, 1, 38),
(96, 96, 1, 39),
(97, 97, 1, 40),
(98, 98, 1, 41),
(99, 99, 1, 42),
(100, 100, 1, 43),
(101, 101, 1, 44),
(102, 102, 1, 45),
(103, 103, 1, 46),
(104, 104, 1, 47),
(105, 105, 1, 48),
(106, 106, 1, 49),
(107, 107, 1, 50),
(108, 108, 1, 51),
(109, 109, 1, 52),
(110, 110, 1, 53),
(111, 111, 1, 54),
(112, 112, 1, 55),
(113, 113, 1, 56),
(114, 114, 1, 57),
(115, 115, 1, 58),
(116, 116, 1, 59),
(117, 117, 1, 60),
(118, 118, 1, 61),
(119, 119, 1, 62),
(120, 120, 1, 63),
(121, 121, 1, 64),
(122, 122, 1, 65),
(123, 123, 1, 66),
(124, 124, 1, 67),
(125, 125, 1, 68),
(126, 126, 1, 69),
(127, 127, 1, 70),
(128, 128, 1, 71),
(129, 129, 1, 72),
(130, 130, 1, 73),
(131, 131, 1, 74),
(132, 132, 1, 75),
(133, 133, 1, 76),
(134, 134, 1, 77),
(135, 135, 1, 78),
(136, 136, 1, 79),
(137, 137, 1, 80),
(138, 138, 1, 81),
(139, 139, 1, 82),
(140, 140, 1, 83),
(141, 141, 1, 84),
(142, 142, 1, 85),
(143, 143, 1, 86),
(144, 144, 1, 87),
(145, 145, 1, 88);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `document_id`, `name`, `code`, `description`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'yyx5oy8kj8i9zpabu1cv8m3t', 'Super Admin', 'strapi-super-admin', 'Super Admins can access and manage all features and settings.', '2024-11-02 04:54:53.596000', '2024-11-02 04:54:53.596000', '2024-11-02 04:54:53.596000', NULL, NULL, NULL),
(2, 'acqqqkkfzqvs71e1iic74uqn', 'Editor', 'strapi-editor', 'Editors can manage and publish contents including those of other users.', '2024-11-02 04:54:53.742000', '2024-11-02 04:54:53.742000', '2024-11-02 04:54:53.742000', NULL, NULL, NULL),
(3, 'zsjk1f8sabrqowa7doaqr915', 'Author', 'strapi-author', 'Authors can manage the content they have created.', '2024-11-02 04:54:53.971000', '2024-11-02 04:54:53.971000', '2024-11-02 04:54:53.972000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `registration_token` varchar(255) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `prefered_language` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `document_id`, `firstname`, `lastname`, `username`, `email`, `password`, `reset_password_token`, `registration_token`, `is_active`, `blocked`, `prefered_language`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'xd1yg07atc1mnfyshuoffrqh', 'krishna', NULL, NULL, 'email@gmail.com', '$2a$10$WEq0DIZER2y8dSGwRY6aFOTStPA7BkYSDgGG.9RIoCmAb7u20hbqe', NULL, NULL, 1, 0, NULL, '2024-11-02 05:01:15.216000', '2024-11-02 05:01:15.216000', '2024-11-02 05:01:15.219000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users_roles_lnk`
--

CREATE TABLE `admin_users_roles_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `role_ord` double UNSIGNED DEFAULT NULL,
  `user_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_users_roles_lnk`
--

INSERT INTO `admin_users_roles_lnk` (`id`, `user_id`, `role_id`, `role_ord`, `user_ord`) VALUES
(1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `articles_author_lnk`
--

CREATE TABLE `articles_author_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `article_id` int(10) UNSIGNED DEFAULT NULL,
  `author_id` int(10) UNSIGNED DEFAULT NULL,
  `article_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `articles_category_lnk`
--

CREATE TABLE `articles_category_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `article_id` int(10) UNSIGNED DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `article_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `articles_cmps`
--

CREATE TABLE `articles_cmps` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `cmp_id` int(10) UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

CREATE TABLE `authors` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `components_shared_media`
--

CREATE TABLE `components_shared_media` (
  `id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `components_shared_quotes`
--

CREATE TABLE `components_shared_quotes` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `body` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `components_shared_rich_texts`
--

CREATE TABLE `components_shared_rich_texts` (
  `id` int(10) UNSIGNED NOT NULL,
  `body` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `components_shared_seos`
--

CREATE TABLE `components_shared_seos` (
  `id` int(10) UNSIGNED NOT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `components_shared_sliders`
--

CREATE TABLE `components_shared_sliders` (
  `id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alternative_text` varchar(255) DEFAULT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `formats` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`formats`)),
  `hash` varchar(255) DEFAULT NULL,
  `ext` varchar(255) DEFAULT NULL,
  `mime` varchar(255) DEFAULT NULL,
  `size` decimal(10,2) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `preview_url` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `provider_metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`provider_metadata`)),
  `folder_path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files_folder_lnk`
--

CREATE TABLE `files_folder_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `folder_id` int(10) UNSIGNED DEFAULT NULL,
  `file_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files_related_mph`
--

CREATE TABLE `files_related_mph` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED DEFAULT NULL,
  `related_id` int(10) UNSIGNED DEFAULT NULL,
  `related_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `globals`
--

CREATE TABLE `globals` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `site_name` varchar(255) DEFAULT NULL,
  `site_description` longtext DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `globals_cmps`
--

CREATE TABLE `globals_cmps` (
  `id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `cmp_id` int(10) UNSIGNED DEFAULT NULL,
  `component_type` varchar(255) DEFAULT NULL,
  `field` varchar(255) DEFAULT NULL,
  `order` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `i18n_locale`
--

CREATE TABLE `i18n_locale` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `i18n_locale`
--

INSERT INTO `i18n_locale` (`id`, `document_id`, `name`, `code`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'fhiv82y157h3uzmlua0skadf', 'English (en)', 'en', '2024-11-02 04:54:51.473000', '2024-11-02 04:54:51.473000', '2024-11-02 04:54:51.475000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `is_complete` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `document_id`, `title`, `description`, `is_complete`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(16, 'gttm7vjt9diiubtu2widls9d', 'dasd', 'dasda', 0, '2024-11-02 06:10:17.739000', '2024-11-02 06:10:17.739000', NULL, NULL, NULL, NULL),
(17, 'gttm7vjt9diiubtu2widls9d', 'dasd', 'dasda', 0, '2024-11-02 06:10:17.739000', '2024-11-02 06:10:17.739000', '2024-11-02 06:10:17.784000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_tokens`
--

CREATE TABLE `strapi_api_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint(20) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_token_permissions`
--

CREATE TABLE `strapi_api_token_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_api_token_permissions_token_lnk`
--

CREATE TABLE `strapi_api_token_permissions_token_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `api_token_permission_id` int(10) UNSIGNED DEFAULT NULL,
  `api_token_id` int(10) UNSIGNED DEFAULT NULL,
  `api_token_permission_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_core_store_settings`
--

CREATE TABLE `strapi_core_store_settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `environment` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `strapi_core_store_settings`
--

INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(1, 'strapi_content_types_schema', '{\"plugin::upload.file\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"minLength\":1,\"required\":true,\"private\":true,\"searchable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"files\"}}},\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null},{\"name\":\"upload_files_created_at_index\",\"columns\":[\"created_at\"],\"type\":null},{\"name\":\"upload_files_updated_at_index\",\"columns\":[\"updated_at\"],\"type\":null},{\"name\":\"upload_files_name_index\",\"columns\":[\"name\"],\"type\":null},{\"name\":\"upload_files_size_index\",\"columns\":[\"size\"],\"type\":null},{\"name\":\"upload_files_ext_index\",\"columns\":[\"ext\"],\"type\":null}],\"plugin\":\"upload\",\"globalId\":\"UploadFile\",\"uid\":\"plugin::upload.file\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"files\",\"info\":{\"singularName\":\"file\",\"pluralName\":\"files\",\"displayName\":\"File\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"alternativeText\":{\"type\":\"string\",\"configurable\":false},\"caption\":{\"type\":\"string\",\"configurable\":false},\"width\":{\"type\":\"integer\",\"configurable\":false},\"height\":{\"type\":\"integer\",\"configurable\":false},\"formats\":{\"type\":\"json\",\"configurable\":false},\"hash\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"ext\":{\"type\":\"string\",\"configurable\":false},\"mime\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"size\":{\"type\":\"decimal\",\"configurable\":false,\"required\":true},\"url\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"previewUrl\":{\"type\":\"string\",\"configurable\":false},\"provider\":{\"type\":\"string\",\"configurable\":false,\"required\":true},\"provider_metadata\":{\"type\":\"json\",\"configurable\":false},\"related\":{\"type\":\"relation\",\"relation\":\"morphToMany\",\"configurable\":false},\"folder\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"files\",\"private\":true},\"folderPath\":{\"type\":\"string\",\"minLength\":1,\"required\":true,\"private\":true,\"searchable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"file\"},\"plugin::upload.folder\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"minLength\":1,\"required\":true},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"upload_folders\"}}},\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"}],\"plugin\":\"upload\",\"globalId\":\"UploadFolder\",\"uid\":\"plugin::upload.folder\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"upload_folders\",\"info\":{\"singularName\":\"folder\",\"pluralName\":\"folders\",\"displayName\":\"Folder\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"required\":true},\"pathId\":{\"type\":\"integer\",\"unique\":true,\"required\":true},\"parent\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::upload.folder\",\"inversedBy\":\"children\"},\"children\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.folder\",\"mappedBy\":\"parent\"},\"files\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::upload.file\",\"mappedBy\":\"folder\"},\"path\":{\"type\":\"string\",\"minLength\":1,\"required\":true}},\"kind\":\"collectionType\"},\"modelName\":\"folder\"},\"plugin::i18n.locale\":{\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::i18n.locale\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"i18n_locale\"}}},\"plugin\":\"i18n\",\"collectionName\":\"i18n_locale\",\"globalId\":\"I18NLocale\",\"uid\":\"plugin::i18n.locale\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"i18n_locale\",\"info\":{\"singularName\":\"locale\",\"pluralName\":\"locales\",\"collectionName\":\"locales\",\"displayName\":\"Locale\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"min\":1,\"max\":50,\"configurable\":false},\"code\":{\"type\":\"string\",\"unique\":true,\"configurable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"locale\"},\"plugin::content-releases.release\":{\"collectionName\":\"strapi_releases\",\"info\":{\"singularName\":\"release\",\"pluralName\":\"releases\",\"displayName\":\"Release\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"releasedAt\":{\"type\":\"datetime\"},\"scheduledAt\":{\"type\":\"datetime\"},\"timezone\":{\"type\":\"string\"},\"status\":{\"type\":\"enumeration\",\"enum\":[\"ready\",\"blocked\",\"failed\",\"done\",\"empty\"],\"required\":true},\"actions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::content-releases.release-action\",\"mappedBy\":\"release\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::content-releases.release\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_releases\"}}},\"plugin\":\"content-releases\",\"globalId\":\"ContentReleasesRelease\",\"uid\":\"plugin::content-releases.release\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_releases\",\"info\":{\"singularName\":\"release\",\"pluralName\":\"releases\",\"displayName\":\"Release\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true},\"releasedAt\":{\"type\":\"datetime\"},\"scheduledAt\":{\"type\":\"datetime\"},\"timezone\":{\"type\":\"string\"},\"status\":{\"type\":\"enumeration\",\"enum\":[\"ready\",\"blocked\",\"failed\",\"done\",\"empty\"],\"required\":true},\"actions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::content-releases.release-action\",\"mappedBy\":\"release\"}},\"kind\":\"collectionType\"},\"modelName\":\"release\"},\"plugin::content-releases.release-action\":{\"collectionName\":\"strapi_release_actions\",\"info\":{\"singularName\":\"release-action\",\"pluralName\":\"release-actions\",\"displayName\":\"Release Action\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"type\":{\"type\":\"enumeration\",\"enum\":[\"publish\",\"unpublish\"],\"required\":true},\"contentType\":{\"type\":\"string\",\"required\":true},\"entryDocumentId\":{\"type\":\"string\"},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"release\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::content-releases.release\",\"inversedBy\":\"actions\"},\"isEntryValid\":{\"type\":\"boolean\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::content-releases.release-action\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_release_actions\"}}},\"plugin\":\"content-releases\",\"globalId\":\"ContentReleasesReleaseAction\",\"uid\":\"plugin::content-releases.release-action\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_release_actions\",\"info\":{\"singularName\":\"release-action\",\"pluralName\":\"release-actions\",\"displayName\":\"Release Action\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"type\":{\"type\":\"enumeration\",\"enum\":[\"publish\",\"unpublish\"],\"required\":true},\"contentType\":{\"type\":\"string\",\"required\":true},\"entryDocumentId\":{\"type\":\"string\"},\"locale\":{\"type\":\"string\"},\"release\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::content-releases.release\",\"inversedBy\":\"actions\"},\"isEntryValid\":{\"type\":\"boolean\"}},\"kind\":\"collectionType\"},\"modelName\":\"release-action\"},\"plugin::review-workflows.workflow\":{\"collectionName\":\"strapi_workflows\",\"info\":{\"name\":\"Workflow\",\"description\":\"\",\"singularName\":\"workflow\",\"pluralName\":\"workflows\",\"displayName\":\"Workflow\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true,\"unique\":true},\"stages\":{\"type\":\"relation\",\"target\":\"plugin::review-workflows.workflow-stage\",\"relation\":\"oneToMany\",\"mappedBy\":\"workflow\"},\"contentTypes\":{\"type\":\"json\",\"required\":true,\"default\":\"[]\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::review-workflows.workflow\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_workflows\"}}},\"plugin\":\"review-workflows\",\"globalId\":\"ReviewWorkflowsWorkflow\",\"uid\":\"plugin::review-workflows.workflow\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_workflows\",\"info\":{\"name\":\"Workflow\",\"description\":\"\",\"singularName\":\"workflow\",\"pluralName\":\"workflows\",\"displayName\":\"Workflow\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"required\":true,\"unique\":true},\"stages\":{\"type\":\"relation\",\"target\":\"plugin::review-workflows.workflow-stage\",\"relation\":\"oneToMany\",\"mappedBy\":\"workflow\"},\"contentTypes\":{\"type\":\"json\",\"required\":true,\"default\":\"[]\"}},\"kind\":\"collectionType\"},\"modelName\":\"workflow\"},\"plugin::review-workflows.workflow-stage\":{\"collectionName\":\"strapi_workflows_stages\",\"info\":{\"name\":\"Workflow Stage\",\"description\":\"\",\"singularName\":\"workflow-stage\",\"pluralName\":\"workflow-stages\",\"displayName\":\"Stages\"},\"options\":{\"version\":\"1.1.0\",\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false},\"color\":{\"type\":\"string\",\"configurable\":false,\"default\":\"#4945FF\"},\"workflow\":{\"type\":\"relation\",\"target\":\"plugin::review-workflows.workflow\",\"relation\":\"manyToOne\",\"inversedBy\":\"stages\",\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::permission\",\"relation\":\"manyToMany\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::review-workflows.workflow-stage\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_workflows_stages\"}}},\"plugin\":\"review-workflows\",\"globalId\":\"ReviewWorkflowsWorkflowStage\",\"uid\":\"plugin::review-workflows.workflow-stage\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_workflows_stages\",\"info\":{\"name\":\"Workflow Stage\",\"description\":\"\",\"singularName\":\"workflow-stage\",\"pluralName\":\"workflow-stages\",\"displayName\":\"Stages\"},\"options\":{\"version\":\"1.1.0\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"configurable\":false},\"color\":{\"type\":\"string\",\"configurable\":false,\"default\":\"#4945FF\"},\"workflow\":{\"type\":\"relation\",\"target\":\"plugin::review-workflows.workflow\",\"relation\":\"manyToOne\",\"inversedBy\":\"stages\",\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::permission\",\"relation\":\"manyToMany\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"workflow-stage\"},\"plugin::users-permissions.permission\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"up_permissions\"}}},\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsPermission\",\"uid\":\"plugin::users-permissions.permission\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_permissions\",\"info\":{\"name\":\"permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"required\":true,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"permissions\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"permission\",\"options\":{\"draftAndPublish\":false}},\"plugin::users-permissions.role\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.role\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"up_roles\"}}},\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsRole\",\"uid\":\"plugin::users-permissions.role\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_roles\",\"info\":{\"name\":\"role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":3,\"required\":true,\"configurable\":false},\"description\":{\"type\":\"string\",\"configurable\":false},\"type\":{\"type\":\"string\",\"unique\":true,\"configurable\":false},\"permissions\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.permission\",\"mappedBy\":\"role\",\"configurable\":false},\"users\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"mappedBy\":\"role\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"role\",\"options\":{\"draftAndPublish\":false}},\"plugin::users-permissions.user\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"timestamps\":true,\"draftAndPublish\":false},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"plugin::users-permissions.user\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"up_users\"}}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"confirmationToken\":{\"hidden\":true},\"provider\":{\"hidden\":true}}},\"plugin\":\"users-permissions\",\"globalId\":\"UsersPermissionsUser\",\"uid\":\"plugin::users-permissions.user\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"up_users\",\"info\":{\"name\":\"user\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"options\":{\"timestamps\":true},\"attributes\":{\"username\":{\"type\":\"string\",\"minLength\":3,\"unique\":true,\"configurable\":false,\"required\":true},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true},\"provider\":{\"type\":\"string\",\"configurable\":false},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"confirmed\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false},\"role\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"plugin::users-permissions.role\",\"inversedBy\":\"users\",\"configurable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"user\"},\"api::about.about\":{\"kind\":\"singleType\",\"collectionName\":\"abouts\",\"info\":{\"singularName\":\"about\",\"pluralName\":\"abouts\",\"displayName\":\"About\",\"description\":\"Write about yourself and the content you create\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"blocks\":{\"type\":\"dynamiczone\",\"components\":[\"shared.media\",\"shared.quote\",\"shared.rich-text\",\"shared.slider\"]},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::about.about\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"abouts\"}}},\"apiName\":\"about\",\"globalId\":\"About\",\"uid\":\"api::about.about\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"abouts\",\"info\":{\"singularName\":\"about\",\"pluralName\":\"abouts\",\"displayName\":\"About\",\"description\":\"Write about yourself and the content you create\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"blocks\":{\"type\":\"dynamiczone\",\"components\":[\"shared.media\",\"shared.quote\",\"shared.rich-text\",\"shared.slider\"]}},\"kind\":\"singleType\"},\"modelName\":\"about\",\"actions\":{},\"lifecycles\":{}},\"api::article.article\":{\"kind\":\"collectionType\",\"collectionName\":\"articles\",\"info\":{\"singularName\":\"article\",\"pluralName\":\"articles\",\"displayName\":\"Article\",\"description\":\"Create your blog content\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"description\":{\"type\":\"text\",\"maxLength\":80},\"slug\":{\"type\":\"uid\",\"targetField\":\"title\"},\"cover\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\"]},\"author\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::author.author\",\"inversedBy\":\"articles\"},\"category\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::category.category\",\"inversedBy\":\"articles\"},\"blocks\":{\"type\":\"dynamiczone\",\"components\":[\"shared.media\",\"shared.quote\",\"shared.rich-text\",\"shared.slider\"]},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::article.article\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"articles\"}}},\"apiName\":\"article\",\"globalId\":\"Article\",\"uid\":\"api::article.article\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"articles\",\"info\":{\"singularName\":\"article\",\"pluralName\":\"articles\",\"displayName\":\"Article\",\"description\":\"Create your blog content\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\"},\"description\":{\"type\":\"text\",\"maxLength\":80},\"slug\":{\"type\":\"uid\",\"targetField\":\"title\"},\"cover\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\"]},\"author\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::author.author\",\"inversedBy\":\"articles\"},\"category\":{\"type\":\"relation\",\"relation\":\"manyToOne\",\"target\":\"api::category.category\",\"inversedBy\":\"articles\"},\"blocks\":{\"type\":\"dynamiczone\",\"components\":[\"shared.media\",\"shared.quote\",\"shared.rich-text\",\"shared.slider\"]}},\"kind\":\"collectionType\"},\"modelName\":\"article\",\"actions\":{},\"lifecycles\":{}},\"api::author.author\":{\"kind\":\"collectionType\",\"collectionName\":\"authors\",\"info\":{\"singularName\":\"author\",\"pluralName\":\"authors\",\"displayName\":\"Author\",\"description\":\"Create authors for your content\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"avatar\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\"]},\"email\":{\"type\":\"string\"},\"articles\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::article.article\",\"mappedBy\":\"author\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::author.author\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"authors\"}}},\"apiName\":\"author\",\"globalId\":\"Author\",\"uid\":\"api::author.author\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"authors\",\"info\":{\"singularName\":\"author\",\"pluralName\":\"authors\",\"displayName\":\"Author\",\"description\":\"Create authors for your content\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"avatar\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\"]},\"email\":{\"type\":\"string\"},\"articles\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::article.article\",\"mappedBy\":\"author\"}},\"kind\":\"collectionType\"},\"modelName\":\"author\",\"actions\":{},\"lifecycles\":{}},\"api::category.category\":{\"kind\":\"collectionType\",\"collectionName\":\"categories\",\"info\":{\"singularName\":\"category\",\"pluralName\":\"categories\",\"displayName\":\"Category\",\"description\":\"Organize your content into categories\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"slug\":{\"type\":\"uid\"},\"articles\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::article.article\",\"mappedBy\":\"category\"},\"description\":{\"type\":\"text\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::category.category\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"categories\"}}},\"apiName\":\"category\",\"globalId\":\"Category\",\"uid\":\"api::category.category\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"categories\",\"info\":{\"singularName\":\"category\",\"pluralName\":\"categories\",\"displayName\":\"Category\",\"description\":\"Organize your content into categories\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"name\":{\"type\":\"string\"},\"slug\":{\"type\":\"uid\"},\"articles\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::article.article\",\"mappedBy\":\"category\"},\"description\":{\"type\":\"text\"}},\"kind\":\"collectionType\"},\"modelName\":\"category\",\"actions\":{},\"lifecycles\":{}},\"api::global.global\":{\"kind\":\"singleType\",\"collectionName\":\"globals\",\"info\":{\"singularName\":\"global\",\"pluralName\":\"globals\",\"displayName\":\"Global\",\"description\":\"Define global settings\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"siteName\":{\"type\":\"string\",\"required\":true},\"favicon\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\"]},\"siteDescription\":{\"type\":\"text\",\"required\":true},\"defaultSeo\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"shared.seo\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::global.global\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"globals\"}}},\"apiName\":\"global\",\"globalId\":\"Global\",\"uid\":\"api::global.global\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"globals\",\"info\":{\"singularName\":\"global\",\"pluralName\":\"globals\",\"displayName\":\"Global\",\"description\":\"Define global settings\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{},\"attributes\":{\"siteName\":{\"type\":\"string\",\"required\":true},\"favicon\":{\"type\":\"media\",\"multiple\":false,\"required\":false,\"allowedTypes\":[\"images\",\"files\",\"videos\"]},\"siteDescription\":{\"type\":\"text\",\"required\":true},\"defaultSeo\":{\"type\":\"component\",\"repeatable\":false,\"component\":\"shared.seo\"}},\"kind\":\"singleType\"},\"modelName\":\"global\",\"actions\":{},\"lifecycles\":{}},\"api::note.note\":{\"kind\":\"collectionType\",\"collectionName\":\"notes\",\"info\":{\"singularName\":\"note\",\"pluralName\":\"notes\",\"displayName\":\"note\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\",\"required\":true},\"description\":{\"type\":\"text\",\"required\":true},\"isComplete\":{\"type\":\"boolean\",\"default\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"api::note.note\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"notes\"}}},\"apiName\":\"note\",\"globalId\":\"Note\",\"uid\":\"api::note.note\",\"modelType\":\"contentType\",\"__schema__\":{\"collectionName\":\"notes\",\"info\":{\"singularName\":\"note\",\"pluralName\":\"notes\",\"displayName\":\"note\"},\"options\":{\"draftAndPublish\":true},\"pluginOptions\":{},\"attributes\":{\"title\":{\"type\":\"string\",\"required\":true},\"description\":{\"type\":\"text\",\"required\":true},\"isComplete\":{\"type\":\"boolean\",\"default\":false}},\"kind\":\"collectionType\"},\"modelName\":\"note\",\"actions\":{},\"lifecycles\":{}},\"admin::permission\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"actionParameters\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::permission\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"admin_permissions\"}}},\"plugin\":\"admin\",\"globalId\":\"AdminPermission\",\"uid\":\"admin::permission\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_permissions\",\"info\":{\"name\":\"Permission\",\"description\":\"\",\"singularName\":\"permission\",\"pluralName\":\"permissions\",\"displayName\":\"Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"actionParameters\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"subject\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false},\"properties\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":{}},\"conditions\":{\"type\":\"json\",\"configurable\":false,\"required\":false,\"default\":[]},\"role\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::role\"}},\"kind\":\"collectionType\"},\"modelName\":\"permission\"},\"admin::user\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false,\"searchable\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::user\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"admin_users\"}}},\"config\":{\"attributes\":{\"resetPasswordToken\":{\"hidden\":true},\"registrationToken\":{\"hidden\":true}}},\"plugin\":\"admin\",\"globalId\":\"AdminUser\",\"uid\":\"admin::user\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_users\",\"info\":{\"name\":\"User\",\"description\":\"\",\"singularName\":\"user\",\"pluralName\":\"users\",\"displayName\":\"User\"},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"firstname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"lastname\":{\"type\":\"string\",\"unique\":false,\"minLength\":1,\"configurable\":false,\"required\":false},\"username\":{\"type\":\"string\",\"unique\":false,\"configurable\":false,\"required\":false},\"email\":{\"type\":\"email\",\"minLength\":6,\"configurable\":false,\"required\":true,\"unique\":true,\"private\":true},\"password\":{\"type\":\"password\",\"minLength\":6,\"configurable\":false,\"required\":false,\"private\":true,\"searchable\":false},\"resetPasswordToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"registrationToken\":{\"type\":\"string\",\"configurable\":false,\"private\":true,\"searchable\":false},\"isActive\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"roles\":{\"configurable\":false,\"private\":true,\"type\":\"relation\",\"relation\":\"manyToMany\",\"inversedBy\":\"users\",\"target\":\"admin::role\",\"collectionName\":\"strapi_users_roles\"},\"blocked\":{\"type\":\"boolean\",\"default\":false,\"configurable\":false,\"private\":true},\"preferedLanguage\":{\"type\":\"string\",\"configurable\":false,\"required\":false,\"searchable\":false}},\"kind\":\"collectionType\"},\"modelName\":\"user\",\"options\":{\"draftAndPublish\":false}},\"admin::role\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::role\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"admin_roles\"}}},\"plugin\":\"admin\",\"globalId\":\"AdminRole\",\"uid\":\"admin::role\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"admin_roles\",\"info\":{\"name\":\"Role\",\"description\":\"\",\"singularName\":\"role\",\"pluralName\":\"roles\",\"displayName\":\"Role\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"code\":{\"type\":\"string\",\"minLength\":1,\"unique\":true,\"configurable\":false,\"required\":true},\"description\":{\"type\":\"string\",\"configurable\":false},\"users\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToMany\",\"mappedBy\":\"roles\",\"target\":\"admin::user\"},\"permissions\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"oneToMany\",\"mappedBy\":\"role\",\"target\":\"admin::permission\"}},\"kind\":\"collectionType\"},\"modelName\":\"role\"},\"admin::api-token\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"searchable\":false},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::api-token\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_api_tokens\"}}},\"plugin\":\"admin\",\"globalId\":\"AdminApiToken\",\"uid\":\"admin::api-token\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_tokens\",\"info\":{\"name\":\"Api Token\",\"singularName\":\"api-token\",\"pluralName\":\"api-tokens\",\"displayName\":\"Api Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"type\":{\"type\":\"enumeration\",\"enum\":[\"read-only\",\"full-access\",\"custom\"],\"configurable\":false,\"required\":true,\"default\":\"read-only\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"searchable\":false},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::api-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelName\":\"api-token\"},\"admin::api-token-permission\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::api-token-permission\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_api_token_permissions\"}}},\"plugin\":\"admin\",\"globalId\":\"AdminApiTokenPermission\",\"uid\":\"admin::api-token-permission\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_api_token_permissions\",\"info\":{\"name\":\"API Token Permission\",\"description\":\"\",\"singularName\":\"api-token-permission\",\"pluralName\":\"api-token-permissions\",\"displayName\":\"API Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::api-token\"}},\"kind\":\"collectionType\"},\"modelName\":\"api-token-permission\"},\"admin::transfer-token\":{\"collectionName\":\"strapi_transfer_tokens\",\"info\":{\"name\":\"Transfer Token\",\"singularName\":\"transfer-token\",\"pluralName\":\"transfer-tokens\",\"displayName\":\"Transfer Token\",\"description\":\"\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::transfer-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::transfer-token\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_transfer_tokens\"}}},\"plugin\":\"admin\",\"globalId\":\"AdminTransferToken\",\"uid\":\"admin::transfer-token\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_transfer_tokens\",\"info\":{\"name\":\"Transfer Token\",\"singularName\":\"transfer-token\",\"pluralName\":\"transfer-tokens\",\"displayName\":\"Transfer Token\",\"description\":\"\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"name\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true,\"unique\":true},\"description\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":false,\"default\":\"\"},\"accessKey\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"lastUsedAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"permissions\":{\"type\":\"relation\",\"target\":\"admin::transfer-token-permission\",\"relation\":\"oneToMany\",\"mappedBy\":\"token\",\"configurable\":false,\"required\":false},\"expiresAt\":{\"type\":\"datetime\",\"configurable\":false,\"required\":false},\"lifespan\":{\"type\":\"biginteger\",\"configurable\":false,\"required\":false}},\"kind\":\"collectionType\"},\"modelName\":\"transfer-token\"},\"admin::transfer-token-permission\":{\"collectionName\":\"strapi_transfer_token_permissions\",\"info\":{\"name\":\"Transfer Token Permission\",\"description\":\"\",\"singularName\":\"transfer-token-permission\",\"pluralName\":\"transfer-token-permissions\",\"displayName\":\"Transfer Token Permission\"},\"options\":{\"draftAndPublish\":false},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::transfer-token\"},\"createdAt\":{\"type\":\"datetime\"},\"updatedAt\":{\"type\":\"datetime\"},\"publishedAt\":{\"type\":\"datetime\",\"configurable\":false,\"writable\":true,\"visible\":false},\"createdBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"updatedBy\":{\"type\":\"relation\",\"relation\":\"oneToOne\",\"target\":\"admin::user\",\"configurable\":false,\"writable\":false,\"visible\":false,\"useJoinTable\":false,\"private\":true},\"locale\":{\"writable\":true,\"private\":true,\"configurable\":false,\"visible\":false,\"type\":\"string\"},\"localizations\":{\"type\":\"relation\",\"relation\":\"oneToMany\",\"target\":\"admin::transfer-token-permission\",\"writable\":false,\"private\":true,\"configurable\":false,\"visible\":false,\"unstable_virtual\":true,\"joinColumn\":{\"name\":\"document_id\",\"referencedColumn\":\"document_id\",\"referencedTable\":\"strapi_transfer_token_permissions\"}}},\"plugin\":\"admin\",\"globalId\":\"AdminTransferTokenPermission\",\"uid\":\"admin::transfer-token-permission\",\"modelType\":\"contentType\",\"kind\":\"collectionType\",\"__schema__\":{\"collectionName\":\"strapi_transfer_token_permissions\",\"info\":{\"name\":\"Transfer Token Permission\",\"description\":\"\",\"singularName\":\"transfer-token-permission\",\"pluralName\":\"transfer-token-permissions\",\"displayName\":\"Transfer Token Permission\"},\"options\":{},\"pluginOptions\":{\"content-manager\":{\"visible\":false},\"content-type-builder\":{\"visible\":false}},\"attributes\":{\"action\":{\"type\":\"string\",\"minLength\":1,\"configurable\":false,\"required\":true},\"token\":{\"configurable\":false,\"type\":\"relation\",\"relation\":\"manyToOne\",\"inversedBy\":\"permissions\",\"target\":\"admin::transfer-token\"}},\"kind\":\"collectionType\"},\"modelName\":\"transfer-token-permission\"}}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(2, 'plugin_content_manager_configuration_components::shared.slider', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"files\":{\"edit\":{\"label\":\"files\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"files\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"files\"],\"edit\":[[{\"name\":\"files\",\"size\":6}]]},\"uid\":\"shared.slider\",\"isComponent\":true}', 'object', NULL, NULL),
(3, 'plugin_content_manager_configuration_components::shared.rich-text', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"body\":{\"edit\":{\"label\":\"body\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"body\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\"],\"edit\":[[{\"name\":\"body\",\"size\":12}]]},\"uid\":\"shared.rich-text\",\"isComponent\":true}', 'object', NULL, NULL),
(4, 'plugin_content_manager_configuration_components::shared.quote', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"body\":{\"edit\":{\"label\":\"body\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"body\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"body\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"body\",\"size\":6}]]},\"uid\":\"shared.quote\",\"isComponent\":true}', 'object', NULL, NULL),
(5, 'plugin_content_manager_configuration_components::shared.media', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"id\",\"defaultSortBy\":\"id\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"file\":{\"edit\":{\"label\":\"file\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"file\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"file\"],\"edit\":[[{\"name\":\"file\",\"size\":6}]]},\"uid\":\"shared.media\",\"isComponent\":true}', 'object', NULL, NULL),
(6, 'plugin_content_manager_configuration_components::shared.seo', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"metaTitle\",\"defaultSortBy\":\"metaTitle\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":false,\"sortable\":false}},\"metaTitle\":{\"edit\":{\"label\":\"metaTitle\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"metaTitle\",\"searchable\":true,\"sortable\":true}},\"metaDescription\":{\"edit\":{\"label\":\"metaDescription\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"metaDescription\",\"searchable\":true,\"sortable\":true}},\"shareImage\":{\"edit\":{\"label\":\"shareImage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"shareImage\",\"searchable\":false,\"sortable\":false}}},\"layouts\":{\"list\":[\"id\",\"metaTitle\",\"metaDescription\",\"shareImage\"],\"edit\":[[{\"name\":\"metaTitle\",\"size\":6},{\"name\":\"metaDescription\",\"size\":6}],[{\"name\":\"shareImage\",\"size\":6}]]},\"uid\":\"shared.seo\",\"isComponent\":true}', 'object', NULL, NULL),
(7, 'plugin_content_manager_configuration_content_types::plugin::upload.file', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"alternativeText\":{\"edit\":{\"label\":\"alternativeText\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"alternativeText\",\"searchable\":true,\"sortable\":true}},\"caption\":{\"edit\":{\"label\":\"caption\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"caption\",\"searchable\":true,\"sortable\":true}},\"width\":{\"edit\":{\"label\":\"width\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"width\",\"searchable\":true,\"sortable\":true}},\"height\":{\"edit\":{\"label\":\"height\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"height\",\"searchable\":true,\"sortable\":true}},\"formats\":{\"edit\":{\"label\":\"formats\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"formats\",\"searchable\":false,\"sortable\":false}},\"hash\":{\"edit\":{\"label\":\"hash\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"hash\",\"searchable\":true,\"sortable\":true}},\"ext\":{\"edit\":{\"label\":\"ext\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"ext\",\"searchable\":true,\"sortable\":true}},\"mime\":{\"edit\":{\"label\":\"mime\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"mime\",\"searchable\":true,\"sortable\":true}},\"size\":{\"edit\":{\"label\":\"size\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"size\",\"searchable\":true,\"sortable\":true}},\"url\":{\"edit\":{\"label\":\"url\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"url\",\"searchable\":true,\"sortable\":true}},\"previewUrl\":{\"edit\":{\"label\":\"previewUrl\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"previewUrl\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"provider_metadata\":{\"edit\":{\"label\":\"provider_metadata\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"provider_metadata\",\"searchable\":false,\"sortable\":false}},\"folder\":{\"edit\":{\"label\":\"folder\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"folder\",\"searchable\":true,\"sortable\":true}},\"folderPath\":{\"edit\":{\"label\":\"folderPath\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"folderPath\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"alternativeText\",\"caption\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"alternativeText\",\"size\":6}],[{\"name\":\"caption\",\"size\":6},{\"name\":\"width\",\"size\":4}],[{\"name\":\"height\",\"size\":4}],[{\"name\":\"formats\",\"size\":12}],[{\"name\":\"hash\",\"size\":6},{\"name\":\"ext\",\"size\":6}],[{\"name\":\"mime\",\"size\":6},{\"name\":\"size\",\"size\":4}],[{\"name\":\"url\",\"size\":6},{\"name\":\"previewUrl\",\"size\":6}],[{\"name\":\"provider\",\"size\":6}],[{\"name\":\"provider_metadata\",\"size\":12}],[{\"name\":\"folder\",\"size\":6},{\"name\":\"folderPath\",\"size\":6}]]},\"uid\":\"plugin::upload.file\"}', 'object', NULL, NULL),
(8, 'plugin_content_manager_configuration_content_types::plugin::upload.folder', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"pathId\":{\"edit\":{\"label\":\"pathId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"pathId\",\"searchable\":true,\"sortable\":true}},\"parent\":{\"edit\":{\"label\":\"parent\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"parent\",\"searchable\":true,\"sortable\":true}},\"children\":{\"edit\":{\"label\":\"children\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"children\",\"searchable\":false,\"sortable\":false}},\"files\":{\"edit\":{\"label\":\"files\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"files\",\"searchable\":false,\"sortable\":false}},\"path\":{\"edit\":{\"label\":\"path\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"path\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"pathId\",\"parent\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"pathId\",\"size\":4}],[{\"name\":\"parent\",\"size\":6},{\"name\":\"children\",\"size\":6}],[{\"name\":\"files\",\"size\":6},{\"name\":\"path\",\"size\":6}]]},\"uid\":\"plugin::upload.folder\"}', 'object', NULL, NULL),
(9, 'plugin_content_manager_configuration_content_types::plugin::content-releases.release', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"releasedAt\":{\"edit\":{\"label\":\"releasedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"releasedAt\",\"searchable\":true,\"sortable\":true}},\"scheduledAt\":{\"edit\":{\"label\":\"scheduledAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"scheduledAt\",\"searchable\":true,\"sortable\":true}},\"timezone\":{\"edit\":{\"label\":\"timezone\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"timezone\",\"searchable\":true,\"sortable\":true}},\"status\":{\"edit\":{\"label\":\"status\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"status\",\"searchable\":true,\"sortable\":true}},\"actions\":{\"edit\":{\"label\":\"actions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"contentType\"},\"list\":{\"label\":\"actions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"releasedAt\",\"scheduledAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"releasedAt\",\"size\":6}],[{\"name\":\"scheduledAt\",\"size\":6},{\"name\":\"timezone\",\"size\":6}],[{\"name\":\"status\",\"size\":6},{\"name\":\"actions\",\"size\":6}]]},\"uid\":\"plugin::content-releases.release\"}', 'object', NULL, NULL),
(10, 'plugin_content_manager_configuration_content_types::plugin::review-workflows.workflow', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"stages\":{\"edit\":{\"label\":\"stages\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"stages\",\"searchable\":false,\"sortable\":false}},\"contentTypes\":{\"edit\":{\"label\":\"contentTypes\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"contentTypes\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"stages\",\"createdAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"stages\",\"size\":6}],[{\"name\":\"contentTypes\",\"size\":12}]]},\"uid\":\"plugin::review-workflows.workflow\"}', 'object', NULL, NULL),
(11, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.role', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"username\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"users\",\"size\":6}]]},\"uid\":\"plugin::users-permissions.role\"}', 'object', NULL, NULL),
(12, 'plugin_content_manager_configuration_content_types::plugin::review-workflows.workflow-stage', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"color\":{\"edit\":{\"label\":\"color\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"color\",\"searchable\":true,\"sortable\":true}},\"workflow\":{\"edit\":{\"label\":\"workflow\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"workflow\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"color\",\"workflow\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"color\",\"size\":6}],[{\"name\":\"workflow\",\"size\":6},{\"name\":\"permissions\",\"size\":6}]]},\"uid\":\"plugin::review-workflows.workflow-stage\"}', 'object', NULL, NULL),
(13, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.permission', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"role\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"role\",\"size\":6}]]},\"uid\":\"plugin::users-permissions.permission\"}', 'object', NULL, NULL),
(14, 'plugin_content_manager_configuration_content_types::plugin::i18n.locale', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"createdAt\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}]]},\"uid\":\"plugin::i18n.locale\"}', 'object', NULL, NULL),
(15, 'plugin_content_manager_configuration_content_types::api::author.author', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"avatar\":{\"edit\":{\"label\":\"avatar\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"avatar\",\"searchable\":false,\"sortable\":false}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"articles\":{\"edit\":{\"label\":\"articles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"articles\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"avatar\",\"email\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"avatar\",\"size\":6}],[{\"name\":\"email\",\"size\":6},{\"name\":\"articles\",\"size\":6}]]},\"uid\":\"api::author.author\"}', 'object', NULL, NULL),
(16, 'plugin_content_manager_configuration_content_types::api::about.about', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"blocks\":{\"edit\":{\"label\":\"blocks\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocks\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"createdAt\",\"updatedAt\"],\"edit\":[[{\"name\":\"title\",\"size\":6}],[{\"name\":\"blocks\",\"size\":12}]]},\"uid\":\"api::about.about\"}', 'object', NULL, NULL),
(17, 'plugin_content_manager_configuration_content_types::plugin::content-releases.release-action', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"contentType\",\"defaultSortBy\":\"contentType\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"contentType\":{\"edit\":{\"label\":\"contentType\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"contentType\",\"searchable\":true,\"sortable\":true}},\"entryDocumentId\":{\"edit\":{\"label\":\"entryDocumentId\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"entryDocumentId\",\"searchable\":true,\"sortable\":true}},\"release\":{\"edit\":{\"label\":\"release\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"release\",\"searchable\":true,\"sortable\":true}},\"isEntryValid\":{\"edit\":{\"label\":\"isEntryValid\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isEntryValid\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"type\",\"contentType\",\"entryDocumentId\"],\"edit\":[[{\"name\":\"type\",\"size\":6},{\"name\":\"contentType\",\"size\":6}],[{\"name\":\"entryDocumentId\",\"size\":6},{\"name\":\"release\",\"size\":6}],[{\"name\":\"isEntryValid\",\"size\":4}]]},\"uid\":\"plugin::content-releases.release-action\"}', 'object', NULL, NULL),
(18, 'plugin_content_manager_configuration_content_types::plugin::users-permissions.user', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"username\",\"defaultSortBy\":\"username\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"provider\":{\"edit\":{\"label\":\"provider\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"provider\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"confirmationToken\":{\"edit\":{\"label\":\"confirmationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"confirmationToken\",\"searchable\":true,\"sortable\":true}},\"confirmed\":{\"edit\":{\"label\":\"confirmed\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"confirmed\",\"searchable\":true,\"sortable\":true}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"username\",\"email\",\"confirmed\"],\"edit\":[[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"confirmed\",\"size\":4}],[{\"name\":\"blocked\",\"size\":4},{\"name\":\"role\",\"size\":6}]]},\"uid\":\"plugin::users-permissions.user\"}', 'object', NULL, NULL),
(19, 'plugin_content_manager_configuration_content_types::api::category.category', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slug\",\"searchable\":true,\"sortable\":true}},\"articles\":{\"edit\":{\"label\":\"articles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"title\"},\"list\":{\"label\":\"articles\",\"searchable\":false,\"sortable\":false}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"slug\",\"articles\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"slug\",\"size\":6}],[{\"name\":\"articles\",\"size\":6},{\"name\":\"description\",\"size\":6}]]},\"uid\":\"api::category.category\"}', 'object', NULL, NULL),
(20, 'plugin_content_manager_configuration_content_types::api::article.article', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"slug\":{\"edit\":{\"label\":\"slug\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"slug\",\"searchable\":true,\"sortable\":true}},\"cover\":{\"edit\":{\"label\":\"cover\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"cover\",\"searchable\":false,\"sortable\":false}},\"author\":{\"edit\":{\"label\":\"author\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"author\",\"searchable\":true,\"sortable\":true}},\"category\":{\"edit\":{\"label\":\"category\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"category\",\"searchable\":true,\"sortable\":true}},\"blocks\":{\"edit\":{\"label\":\"blocks\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocks\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"description\",\"slug\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"slug\",\"size\":6},{\"name\":\"cover\",\"size\":6}],[{\"name\":\"author\",\"size\":6},{\"name\":\"category\",\"size\":6}],[{\"name\":\"blocks\",\"size\":12}]]},\"uid\":\"api::article.article\"}', 'object', NULL, NULL),
(21, 'plugin_content_manager_configuration_content_types::admin::permission', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"actionParameters\":{\"edit\":{\"label\":\"actionParameters\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"actionParameters\",\"searchable\":false,\"sortable\":false}},\"subject\":{\"edit\":{\"label\":\"subject\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"subject\",\"searchable\":true,\"sortable\":true}},\"properties\":{\"edit\":{\"label\":\"properties\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"properties\",\"searchable\":false,\"sortable\":false}},\"conditions\":{\"edit\":{\"label\":\"conditions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"conditions\",\"searchable\":false,\"sortable\":false}},\"role\":{\"edit\":{\"label\":\"role\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"role\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"subject\",\"role\"],\"edit\":[[{\"name\":\"action\",\"size\":6}],[{\"name\":\"actionParameters\",\"size\":12}],[{\"name\":\"subject\",\"size\":6}],[{\"name\":\"properties\",\"size\":12}],[{\"name\":\"conditions\",\"size\":12}],[{\"name\":\"role\",\"size\":6}]]},\"uid\":\"admin::permission\"}', 'object', NULL, NULL),
(22, 'plugin_content_manager_configuration_content_types::admin::role', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"code\":{\"edit\":{\"label\":\"code\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"code\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"users\":{\"edit\":{\"label\":\"users\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"users\",\"searchable\":false,\"sortable\":false}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"code\",\"description\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"code\",\"size\":6}],[{\"name\":\"description\",\"size\":6},{\"name\":\"users\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6}]]},\"uid\":\"admin::role\"}', 'object', NULL, NULL),
(23, 'plugin_content_manager_configuration_content_types::admin::transfer-token', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"accessKey\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"accessKey\",\"size\":6},{\"name\":\"lastUsedAt\",\"size\":6}],[{\"name\":\"permissions\",\"size\":6},{\"name\":\"expiresAt\",\"size\":6}],[{\"name\":\"lifespan\",\"size\":4}]]},\"uid\":\"admin::transfer-token\"}', 'object', NULL, NULL);
INSERT INTO `strapi_core_store_settings` (`id`, `key`, `value`, `type`, `environment`, `tag`) VALUES
(24, 'plugin_content_manager_configuration_content_types::admin::transfer-token-permission', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]},\"uid\":\"admin::transfer-token-permission\"}', 'object', NULL, NULL),
(25, 'plugin_content_manager_configuration_content_types::api::global.global', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"siteName\",\"defaultSortBy\":\"siteName\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"siteName\":{\"edit\":{\"label\":\"siteName\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"siteName\",\"searchable\":true,\"sortable\":true}},\"favicon\":{\"edit\":{\"label\":\"favicon\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"favicon\",\"searchable\":false,\"sortable\":false}},\"siteDescription\":{\"edit\":{\"label\":\"siteDescription\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"siteDescription\",\"searchable\":true,\"sortable\":true}},\"defaultSeo\":{\"edit\":{\"label\":\"defaultSeo\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"defaultSeo\",\"searchable\":false,\"sortable\":false}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"siteName\",\"favicon\",\"siteDescription\"],\"edit\":[[{\"name\":\"siteName\",\"size\":6},{\"name\":\"favicon\",\"size\":6}],[{\"name\":\"siteDescription\",\"size\":6}],[{\"name\":\"defaultSeo\",\"size\":12}]]},\"uid\":\"api::global.global\"}', 'object', NULL, NULL),
(26, 'plugin_content_manager_configuration_content_types::admin::user', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"firstname\",\"defaultSortBy\":\"firstname\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"firstname\":{\"edit\":{\"label\":\"firstname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"firstname\",\"searchable\":true,\"sortable\":true}},\"lastname\":{\"edit\":{\"label\":\"lastname\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastname\",\"searchable\":true,\"sortable\":true}},\"username\":{\"edit\":{\"label\":\"username\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"username\",\"searchable\":true,\"sortable\":true}},\"email\":{\"edit\":{\"label\":\"email\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"email\",\"searchable\":true,\"sortable\":true}},\"password\":{\"edit\":{\"label\":\"password\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"password\",\"searchable\":true,\"sortable\":true}},\"resetPasswordToken\":{\"edit\":{\"label\":\"resetPasswordToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"resetPasswordToken\",\"searchable\":true,\"sortable\":true}},\"registrationToken\":{\"edit\":{\"label\":\"registrationToken\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"registrationToken\",\"searchable\":true,\"sortable\":true}},\"isActive\":{\"edit\":{\"label\":\"isActive\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isActive\",\"searchable\":true,\"sortable\":true}},\"roles\":{\"edit\":{\"label\":\"roles\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"roles\",\"searchable\":false,\"sortable\":false}},\"blocked\":{\"edit\":{\"label\":\"blocked\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"blocked\",\"searchable\":true,\"sortable\":true}},\"preferedLanguage\":{\"edit\":{\"label\":\"preferedLanguage\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"preferedLanguage\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"firstname\",\"lastname\",\"username\"],\"edit\":[[{\"name\":\"firstname\",\"size\":6},{\"name\":\"lastname\",\"size\":6}],[{\"name\":\"username\",\"size\":6},{\"name\":\"email\",\"size\":6}],[{\"name\":\"password\",\"size\":6},{\"name\":\"isActive\",\"size\":4}],[{\"name\":\"roles\",\"size\":6},{\"name\":\"blocked\",\"size\":4}],[{\"name\":\"preferedLanguage\",\"size\":6}]]},\"uid\":\"admin::user\"}', 'object', NULL, NULL),
(27, 'plugin_content_manager_configuration_content_types::admin::api-token-permission', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"action\",\"defaultSortBy\":\"action\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"action\":{\"edit\":{\"label\":\"action\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"action\",\"searchable\":true,\"sortable\":true}},\"token\":{\"edit\":{\"label\":\"token\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"name\"},\"list\":{\"label\":\"token\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"action\",\"token\",\"createdAt\"],\"edit\":[[{\"name\":\"action\",\"size\":6},{\"name\":\"token\",\"size\":6}]]},\"uid\":\"admin::api-token-permission\"}', 'object', NULL, NULL),
(28, 'plugin_content_manager_configuration_content_types::admin::api-token', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"name\",\"defaultSortBy\":\"name\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"name\":{\"edit\":{\"label\":\"name\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"name\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"type\":{\"edit\":{\"label\":\"type\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"type\",\"searchable\":true,\"sortable\":true}},\"accessKey\":{\"edit\":{\"label\":\"accessKey\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"accessKey\",\"searchable\":true,\"sortable\":true}},\"lastUsedAt\":{\"edit\":{\"label\":\"lastUsedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lastUsedAt\",\"searchable\":true,\"sortable\":true}},\"permissions\":{\"edit\":{\"label\":\"permissions\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true,\"mainField\":\"action\"},\"list\":{\"label\":\"permissions\",\"searchable\":false,\"sortable\":false}},\"expiresAt\":{\"edit\":{\"label\":\"expiresAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"expiresAt\",\"searchable\":true,\"sortable\":true}},\"lifespan\":{\"edit\":{\"label\":\"lifespan\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"lifespan\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"name\",\"description\",\"type\"],\"edit\":[[{\"name\":\"name\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"type\",\"size\":6},{\"name\":\"accessKey\",\"size\":6}],[{\"name\":\"lastUsedAt\",\"size\":6},{\"name\":\"permissions\",\"size\":6}],[{\"name\":\"expiresAt\",\"size\":6},{\"name\":\"lifespan\",\"size\":4}]]},\"uid\":\"admin::api-token\"}', 'object', NULL, NULL),
(29, 'plugin_upload_settings', '{\"sizeOptimization\":true,\"responsiveDimensions\":true,\"autoOrientation\":false}', 'object', NULL, NULL),
(30, 'plugin_upload_view_configuration', '{\"pageSize\":10,\"sort\":\"createdAt:DESC\"}', 'object', NULL, NULL),
(31, 'plugin_upload_metrics', '{\"weeklySchedule\":\"27 3 5 * * 6\",\"lastWeeklyUpdate\":1730504007385}', 'object', NULL, NULL),
(32, 'plugin_i18n_default_locale', '\"en\"', 'string', NULL, NULL),
(33, 'plugin_users-permissions_grant', '{\"email\":{\"icon\":\"envelope\",\"enabled\":true},\"discord\":{\"icon\":\"discord\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/discord/callback\",\"scope\":[\"identify\",\"email\"]},\"facebook\":{\"icon\":\"facebook-square\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/facebook/callback\",\"scope\":[\"email\"]},\"google\":{\"icon\":\"google\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/google/callback\",\"scope\":[\"email\"]},\"github\":{\"icon\":\"github\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/github/callback\",\"scope\":[\"user\",\"user:email\"]},\"microsoft\":{\"icon\":\"windows\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/microsoft/callback\",\"scope\":[\"user.read\"]},\"twitter\":{\"icon\":\"twitter\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/twitter/callback\"},\"instagram\":{\"icon\":\"instagram\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/instagram/callback\",\"scope\":[\"user_profile\"]},\"vk\":{\"icon\":\"vk\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/vk/callback\",\"scope\":[\"email\"]},\"twitch\":{\"icon\":\"twitch\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/twitch/callback\",\"scope\":[\"user:read:email\"]},\"linkedin\":{\"icon\":\"linkedin\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callbackUrl\":\"api/auth/linkedin/callback\",\"scope\":[\"r_liteprofile\",\"r_emailaddress\"]},\"cognito\":{\"icon\":\"aws\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my.subdomain.com\",\"callback\":\"api/auth/cognito/callback\",\"scope\":[\"email\",\"openid\",\"profile\"]},\"reddit\":{\"icon\":\"reddit\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/reddit/callback\",\"scope\":[\"identity\"]},\"auth0\":{\"icon\":\"\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"subdomain\":\"my-tenant.eu\",\"callback\":\"api/auth/auth0/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]},\"cas\":{\"icon\":\"book\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/cas/callback\",\"scope\":[\"openid email\"],\"subdomain\":\"my.subdomain.com/cas\"},\"patreon\":{\"icon\":\"\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"callback\":\"api/auth/patreon/callback\",\"scope\":[\"identity\",\"identity[email]\"]},\"keycloak\":{\"icon\":\"\",\"enabled\":false,\"key\":\"\",\"secret\":\"\",\"subdomain\":\"myKeycloakProvider.com/realms/myrealm\",\"callback\":\"api/auth/keycloak/callback\",\"scope\":[\"openid\",\"email\",\"profile\"]}}', 'object', NULL, NULL),
(34, 'plugin_users-permissions_email', '{\"reset_password\":{\"display\":\"Email.template.reset_password\",\"icon\":\"sync\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Reset password\",\"message\":\"<p>We heard that you lost your password. Sorry about that!</p>\\n\\n<p>But don’t worry! You can use the following link to reset your password:</p>\\n<p><%= URL %>?code=<%= TOKEN %></p>\\n\\n<p>Thanks.</p>\"}},\"email_confirmation\":{\"display\":\"Email.template.email_confirmation\",\"icon\":\"check-square\",\"options\":{\"from\":{\"name\":\"Administration Panel\",\"email\":\"no-reply@strapi.io\"},\"response_email\":\"\",\"object\":\"Account confirmation\",\"message\":\"<p>Thank you for registering!</p>\\n\\n<p>You have to confirm your email address. Please click on the link below.</p>\\n\\n<p><%= URL %>?confirmation=<%= CODE %></p>\\n\\n<p>Thanks.</p>\"}}}', 'object', NULL, NULL),
(35, 'plugin_users-permissions_advanced', '{\"unique_email\":true,\"allow_register\":true,\"email_confirmation\":false,\"email_reset_password\":null,\"email_confirmation_redirection\":null,\"default_role\":\"authenticated\"}', 'object', NULL, NULL),
(36, 'core_admin_auth', '{\"providers\":{\"autoRegister\":false,\"defaultRole\":null,\"ssoLockedRoles\":null}}', 'object', NULL, NULL),
(37, 'plugin_content_manager_configuration_content_types::api::note.note', '{\"settings\":{\"bulkable\":true,\"filterable\":true,\"searchable\":true,\"pageSize\":10,\"mainField\":\"title\",\"defaultSortBy\":\"title\",\"defaultSortOrder\":\"ASC\"},\"metadatas\":{\"id\":{\"edit\":{},\"list\":{\"label\":\"id\",\"searchable\":true,\"sortable\":true}},\"title\":{\"edit\":{\"label\":\"title\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"title\",\"searchable\":true,\"sortable\":true}},\"description\":{\"edit\":{\"label\":\"description\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"description\",\"searchable\":true,\"sortable\":true}},\"isComplete\":{\"edit\":{\"label\":\"isComplete\",\"description\":\"\",\"placeholder\":\"\",\"visible\":true,\"editable\":true},\"list\":{\"label\":\"isComplete\",\"searchable\":true,\"sortable\":true}},\"createdAt\":{\"edit\":{\"label\":\"createdAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"createdAt\",\"searchable\":true,\"sortable\":true}},\"updatedAt\":{\"edit\":{\"label\":\"updatedAt\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true},\"list\":{\"label\":\"updatedAt\",\"searchable\":true,\"sortable\":true}},\"createdBy\":{\"edit\":{\"label\":\"createdBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"createdBy\",\"searchable\":true,\"sortable\":true}},\"updatedBy\":{\"edit\":{\"label\":\"updatedBy\",\"description\":\"\",\"placeholder\":\"\",\"visible\":false,\"editable\":true,\"mainField\":\"firstname\"},\"list\":{\"label\":\"updatedBy\",\"searchable\":true,\"sortable\":true}}},\"layouts\":{\"list\":[\"id\",\"title\",\"description\",\"isComplete\"],\"edit\":[[{\"name\":\"title\",\"size\":6},{\"name\":\"description\",\"size\":6}],[{\"name\":\"isComplete\",\"size\":4}]]},\"uid\":\"api::note.note\"}', 'object', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `strapi_database_schema`
--

CREATE TABLE `strapi_database_schema` (
  `id` int(10) UNSIGNED NOT NULL,
  `schema` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`schema`)),
  `time` datetime DEFAULT NULL,
  `hash` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `strapi_database_schema`
--

INSERT INTO `strapi_database_schema` (`id`, `schema`, `time`, `hash`) VALUES
(2, '{\"tables\":[{\"name\":\"files\",\"indexes\":[{\"name\":\"upload_files_folder_path_index\",\"columns\":[\"folder_path\"],\"type\":null},{\"name\":\"upload_files_created_at_index\",\"columns\":[\"created_at\"],\"type\":null},{\"name\":\"upload_files_updated_at_index\",\"columns\":[\"updated_at\"],\"type\":null},{\"name\":\"upload_files_name_index\",\"columns\":[\"name\"],\"type\":null},{\"name\":\"upload_files_size_index\",\"columns\":[\"size\"],\"type\":null},{\"name\":\"upload_files_ext_index\",\"columns\":[\"ext\"],\"type\":null},{\"name\":\"files_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"files_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"files_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"files_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"files_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"alternative_text\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"caption\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"width\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"height\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"formats\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"hash\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"ext\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"mime\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"size\",\"type\":\"decimal\",\"args\":[10,2],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"preview_url\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider_metadata\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"folder_path\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"upload_folders\",\"indexes\":[{\"name\":\"upload_folders_path_id_index\",\"columns\":[\"path_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_path_index\",\"columns\":[\"path\"],\"type\":\"unique\"},{\"name\":\"upload_folders_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"upload_folders_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"upload_folders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"upload_folders_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"upload_folders_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"path_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"path\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"i18n_locale\",\"indexes\":[{\"name\":\"i18n_locale_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"i18n_locale_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"i18n_locale_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"i18n_locale_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"i18n_locale_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_releases\",\"indexes\":[{\"name\":\"strapi_releases_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_releases_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_releases_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_releases_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_releases_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"released_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"scheduled_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"timezone\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"status\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_release_actions\",\"indexes\":[{\"name\":\"strapi_release_actions_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_release_actions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_release_actions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_release_actions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_release_actions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"content_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"entry_document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"is_entry_valid\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_workflows\",\"indexes\":[{\"name\":\"strapi_workflows_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_workflows_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_workflows_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_workflows_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_workflows_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"content_types\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_workflows_stages\",\"indexes\":[{\"name\":\"strapi_workflows_stages_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_workflows_stages_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_workflows_stages_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_workflows_stages_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_workflows_stages_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"color\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"up_permissions\",\"indexes\":[{\"name\":\"up_permissions_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"up_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"up_roles\",\"indexes\":[{\"name\":\"up_roles_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"up_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"up_users\",\"indexes\":[{\"name\":\"up_users_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"up_users_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"up_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"up_users_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"up_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"provider\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reset_password_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"confirmation_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"confirmed\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"abouts_cmps\",\"indexes\":[{\"name\":\"abouts_field_idx\",\"columns\":[\"field\"]},{\"name\":\"abouts_component_type_idx\",\"columns\":[\"component_type\"]},{\"name\":\"abouts_entity_fk\",\"columns\":[\"entity_id\"]},{\"name\":\"abouts_uq\",\"columns\":[\"entity_id\",\"cmp_id\",\"field\",\"component_type\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"abouts_entity_fk\",\"columns\":[\"entity_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"abouts\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"entity_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"cmp_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"abouts\",\"indexes\":[{\"name\":\"abouts_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"abouts_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"abouts_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"abouts_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"abouts_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"articles_cmps\",\"indexes\":[{\"name\":\"articles_field_idx\",\"columns\":[\"field\"]},{\"name\":\"articles_component_type_idx\",\"columns\":[\"component_type\"]},{\"name\":\"articles_entity_fk\",\"columns\":[\"entity_id\"]},{\"name\":\"articles_uq\",\"columns\":[\"entity_id\",\"cmp_id\",\"field\",\"component_type\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"articles_entity_fk\",\"columns\":[\"entity_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"articles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"entity_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"cmp_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"articles\",\"indexes\":[{\"name\":\"articles_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"articles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"articles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"articles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"articles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"slug\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"authors\",\"indexes\":[{\"name\":\"authors_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"authors_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"authors_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"authors_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"authors_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"categories\",\"indexes\":[{\"name\":\"categories_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"categories_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"categories_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"categories_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"categories_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"slug\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"globals_cmps\",\"indexes\":[{\"name\":\"globals_field_idx\",\"columns\":[\"field\"]},{\"name\":\"globals_component_type_idx\",\"columns\":[\"component_type\"]},{\"name\":\"globals_entity_fk\",\"columns\":[\"entity_id\"]},{\"name\":\"globals_uq\",\"columns\":[\"entity_id\",\"cmp_id\",\"field\",\"component_type\"],\"type\":\"unique\"}],\"foreignKeys\":[{\"name\":\"globals_entity_fk\",\"columns\":[\"entity_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"globals\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"entity_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"cmp_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"component_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"globals\",\"indexes\":[{\"name\":\"globals_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"globals_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"globals_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"globals_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"globals_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"site_name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"site_description\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"notes\",\"indexes\":[{\"name\":\"notes_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"notes_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"notes_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"notes_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"notes_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"is_complete\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"admin_permissions\",\"indexes\":[{\"name\":\"admin_permissions_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"admin_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"action_parameters\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"subject\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"properties\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"conditions\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"admin_users\",\"indexes\":[{\"name\":\"admin_users_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"admin_users_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_users_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_users_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"firstname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lastname\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"username\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"email\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"password\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"reset_password_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"registration_token\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"is_active\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"blocked\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"prefered_language\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"admin_roles\",\"indexes\":[{\"name\":\"admin_roles_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"admin_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"admin_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"admin_roles_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"admin_roles_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"code\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_api_tokens\",\"indexes\":[{\"name\":\"strapi_api_tokens_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_api_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_api_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_api_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"access_key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"last_used_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"expires_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lifespan\",\"type\":\"bigInteger\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_api_token_permissions\",\"indexes\":[{\"name\":\"strapi_api_token_permissions_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_api_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_api_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_api_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_transfer_tokens\",\"indexes\":[{\"name\":\"strapi_transfer_tokens_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_transfer_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_transfer_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_transfer_tokens_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_transfer_tokens_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"description\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"access_key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"last_used_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"expires_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"lifespan\",\"type\":\"bigInteger\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_transfer_token_permissions\",\"indexes\":[{\"name\":\"strapi_transfer_token_permissions_documents_idx\",\"columns\":[\"document_id\",\"locale\",\"published_at\"]},{\"name\":\"strapi_transfer_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"]},{\"name\":\"strapi_transfer_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_transfer_token_permissions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"},{\"name\":\"strapi_transfer_token_permissions_updated_by_id_fk\",\"columns\":[\"updated_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"action\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"updated_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"published_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"updated_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_shared_sliders\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false}]},{\"name\":\"components_shared_seos\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"meta_title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"meta_description\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_shared_rich_texts\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"body\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_shared_quotes\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"title\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"body\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"components_shared_media\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false}]},{\"name\":\"strapi_core_store_settings\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"key\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"value\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"environment\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"tag\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_webhooks\",\"indexes\":[],\"foreignKeys\":[],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"name\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"url\",\"type\":\"text\",\"args\":[\"longtext\"],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"headers\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"events\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"enabled\",\"type\":\"boolean\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false}]},{\"name\":\"strapi_history_versions\",\"indexes\":[{\"name\":\"strapi_history_versions_created_by_id_fk\",\"columns\":[\"created_by_id\"]}],\"foreignKeys\":[{\"name\":\"strapi_history_versions_created_by_id_fk\",\"columns\":[\"created_by_id\"],\"referencedTable\":\"admin_users\",\"referencedColumns\":[\"id\"],\"onDelete\":\"SET NULL\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"content_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"related_document_id\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"locale\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"status\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"data\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"schema\",\"type\":\"jsonb\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_at\",\"type\":\"datetime\",\"args\":[{\"useTz\":false,\"precision\":6}],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"created_by_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files_related_mph\",\"indexes\":[{\"name\":\"files_related_mph_fk\",\"columns\":[\"file_id\"]},{\"name\":\"files_related_mph_oidx\",\"columns\":[\"order\"]},{\"name\":\"files_related_mph_idix\",\"columns\":[\"related_id\"]}],\"foreignKeys\":[{\"name\":\"files_related_mph_fk\",\"columns\":[\"file_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"files\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"file_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"related_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"related_type\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"field\",\"type\":\"string\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":false},{\"name\":\"order\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"files_folder_lnk\",\"indexes\":[{\"name\":\"files_folder_lnk_fk\",\"columns\":[\"file_id\"]},{\"name\":\"files_folder_lnk_ifk\",\"columns\":[\"folder_id\"]},{\"name\":\"files_folder_lnk_uq\",\"columns\":[\"file_id\",\"folder_id\"],\"type\":\"unique\"},{\"name\":\"files_folder_lnk_oifk\",\"columns\":[\"file_ord\"]}],\"foreignKeys\":[{\"name\":\"files_folder_lnk_fk\",\"columns\":[\"file_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"files\",\"onDelete\":\"CASCADE\"},{\"name\":\"files_folder_lnk_ifk\",\"columns\":[\"folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"file_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"file_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"upload_folders_parent_lnk\",\"indexes\":[{\"name\":\"upload_folders_parent_lnk_fk\",\"columns\":[\"folder_id\"]},{\"name\":\"upload_folders_parent_lnk_ifk\",\"columns\":[\"inv_folder_id\"]},{\"name\":\"upload_folders_parent_lnk_uq\",\"columns\":[\"folder_id\",\"inv_folder_id\"],\"type\":\"unique\"},{\"name\":\"upload_folders_parent_lnk_oifk\",\"columns\":[\"folder_ord\"]}],\"foreignKeys\":[{\"name\":\"upload_folders_parent_lnk_fk\",\"columns\":[\"folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"},{\"name\":\"upload_folders_parent_lnk_ifk\",\"columns\":[\"inv_folder_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"upload_folders\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"inv_folder_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"folder_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_release_actions_release_lnk\",\"indexes\":[{\"name\":\"strapi_release_actions_release_lnk_fk\",\"columns\":[\"release_action_id\"]},{\"name\":\"strapi_release_actions_release_lnk_ifk\",\"columns\":[\"release_id\"]},{\"name\":\"strapi_release_actions_release_lnk_uq\",\"columns\":[\"release_action_id\",\"release_id\"],\"type\":\"unique\"},{\"name\":\"strapi_release_actions_release_lnk_oifk\",\"columns\":[\"release_action_ord\"]}],\"foreignKeys\":[{\"name\":\"strapi_release_actions_release_lnk_fk\",\"columns\":[\"release_action_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_release_actions\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_release_actions_release_lnk_ifk\",\"columns\":[\"release_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_releases\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"release_action_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"release_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"release_action_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_workflows_stages_workflow_lnk\",\"indexes\":[{\"name\":\"strapi_workflows_stages_workflow_lnk_fk\",\"columns\":[\"workflow_stage_id\"]},{\"name\":\"strapi_workflows_stages_workflow_lnk_ifk\",\"columns\":[\"workflow_id\"]},{\"name\":\"strapi_workflows_stages_workflow_lnk_uq\",\"columns\":[\"workflow_stage_id\",\"workflow_id\"],\"type\":\"unique\"},{\"name\":\"strapi_workflows_stages_workflow_lnk_oifk\",\"columns\":[\"workflow_stage_ord\"]}],\"foreignKeys\":[{\"name\":\"strapi_workflows_stages_workflow_lnk_fk\",\"columns\":[\"workflow_stage_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_workflows_stages\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_workflows_stages_workflow_lnk_ifk\",\"columns\":[\"workflow_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_workflows\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"workflow_stage_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"workflow_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"workflow_stage_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_workflows_stages_permissions_lnk\",\"indexes\":[{\"name\":\"strapi_workflows_stages_permissions_lnk_fk\",\"columns\":[\"workflow_stage_id\"]},{\"name\":\"strapi_workflows_stages_permissions_lnk_ifk\",\"columns\":[\"permission_id\"]},{\"name\":\"strapi_workflows_stages_permissions_lnk_uq\",\"columns\":[\"workflow_stage_id\",\"permission_id\"],\"type\":\"unique\"},{\"name\":\"strapi_workflows_stages_permissions_lnk_ofk\",\"columns\":[\"permission_ord\"]}],\"foreignKeys\":[{\"name\":\"strapi_workflows_stages_permissions_lnk_fk\",\"columns\":[\"workflow_stage_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_workflows_stages\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_workflows_stages_permissions_lnk_ifk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_permissions\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"workflow_stage_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_permissions_role_lnk\",\"indexes\":[{\"name\":\"up_permissions_role_lnk_fk\",\"columns\":[\"permission_id\"]},{\"name\":\"up_permissions_role_lnk_ifk\",\"columns\":[\"role_id\"]},{\"name\":\"up_permissions_role_lnk_uq\",\"columns\":[\"permission_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"up_permissions_role_lnk_oifk\",\"columns\":[\"permission_ord\"]}],\"foreignKeys\":[{\"name\":\"up_permissions_role_lnk_fk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"up_permissions_role_lnk_ifk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"up_users_role_lnk\",\"indexes\":[{\"name\":\"up_users_role_lnk_fk\",\"columns\":[\"user_id\"]},{\"name\":\"up_users_role_lnk_ifk\",\"columns\":[\"role_id\"]},{\"name\":\"up_users_role_lnk_uq\",\"columns\":[\"user_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"up_users_role_lnk_oifk\",\"columns\":[\"user_ord\"]}],\"foreignKeys\":[{\"name\":\"up_users_role_lnk_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_users\",\"onDelete\":\"CASCADE\"},{\"name\":\"up_users_role_lnk_ifk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"up_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"articles_author_lnk\",\"indexes\":[{\"name\":\"articles_author_lnk_fk\",\"columns\":[\"article_id\"]},{\"name\":\"articles_author_lnk_ifk\",\"columns\":[\"author_id\"]},{\"name\":\"articles_author_lnk_uq\",\"columns\":[\"article_id\",\"author_id\"],\"type\":\"unique\"},{\"name\":\"articles_author_lnk_oifk\",\"columns\":[\"article_ord\"]}],\"foreignKeys\":[{\"name\":\"articles_author_lnk_fk\",\"columns\":[\"article_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"articles\",\"onDelete\":\"CASCADE\"},{\"name\":\"articles_author_lnk_ifk\",\"columns\":[\"author_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"authors\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"article_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"author_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"article_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"articles_category_lnk\",\"indexes\":[{\"name\":\"articles_category_lnk_fk\",\"columns\":[\"article_id\"]},{\"name\":\"articles_category_lnk_ifk\",\"columns\":[\"category_id\"]},{\"name\":\"articles_category_lnk_uq\",\"columns\":[\"article_id\",\"category_id\"],\"type\":\"unique\"},{\"name\":\"articles_category_lnk_oifk\",\"columns\":[\"article_ord\"]}],\"foreignKeys\":[{\"name\":\"articles_category_lnk_fk\",\"columns\":[\"article_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"articles\",\"onDelete\":\"CASCADE\"},{\"name\":\"articles_category_lnk_ifk\",\"columns\":[\"category_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"categories\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"article_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"category_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"article_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_permissions_role_lnk\",\"indexes\":[{\"name\":\"admin_permissions_role_lnk_fk\",\"columns\":[\"permission_id\"]},{\"name\":\"admin_permissions_role_lnk_ifk\",\"columns\":[\"role_id\"]},{\"name\":\"admin_permissions_role_lnk_uq\",\"columns\":[\"permission_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"admin_permissions_role_lnk_oifk\",\"columns\":[\"permission_ord\"]}],\"foreignKeys\":[{\"name\":\"admin_permissions_role_lnk_fk\",\"columns\":[\"permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"admin_permissions_role_lnk_ifk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"permission_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"admin_users_roles_lnk\",\"indexes\":[{\"name\":\"admin_users_roles_lnk_fk\",\"columns\":[\"user_id\"]},{\"name\":\"admin_users_roles_lnk_ifk\",\"columns\":[\"role_id\"]},{\"name\":\"admin_users_roles_lnk_uq\",\"columns\":[\"user_id\",\"role_id\"],\"type\":\"unique\"},{\"name\":\"admin_users_roles_lnk_ofk\",\"columns\":[\"role_ord\"]},{\"name\":\"admin_users_roles_lnk_oifk\",\"columns\":[\"user_ord\"]}],\"foreignKeys\":[{\"name\":\"admin_users_roles_lnk_fk\",\"columns\":[\"user_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_users\",\"onDelete\":\"CASCADE\"},{\"name\":\"admin_users_roles_lnk_ifk\",\"columns\":[\"role_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"admin_roles\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"user_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"role_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"user_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_api_token_permissions_token_lnk\",\"indexes\":[{\"name\":\"strapi_api_token_permissions_token_lnk_fk\",\"columns\":[\"api_token_permission_id\"]},{\"name\":\"strapi_api_token_permissions_token_lnk_ifk\",\"columns\":[\"api_token_id\"]},{\"name\":\"strapi_api_token_permissions_token_lnk_uq\",\"columns\":[\"api_token_permission_id\",\"api_token_id\"],\"type\":\"unique\"},{\"name\":\"strapi_api_token_permissions_token_lnk_oifk\",\"columns\":[\"api_token_permission_ord\"]}],\"foreignKeys\":[{\"name\":\"strapi_api_token_permissions_token_lnk_fk\",\"columns\":[\"api_token_permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_api_token_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_api_token_permissions_token_lnk_ifk\",\"columns\":[\"api_token_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_api_tokens\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"api_token_permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"api_token_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"api_token_permission_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]},{\"name\":\"strapi_transfer_token_permissions_token_lnk\",\"indexes\":[{\"name\":\"strapi_transfer_token_permissions_token_lnk_fk\",\"columns\":[\"transfer_token_permission_id\"]},{\"name\":\"strapi_transfer_token_permissions_token_lnk_ifk\",\"columns\":[\"transfer_token_id\"]},{\"name\":\"strapi_transfer_token_permissions_token_lnk_uq\",\"columns\":[\"transfer_token_permission_id\",\"transfer_token_id\"],\"type\":\"unique\"},{\"name\":\"strapi_transfer_token_permissions_token_lnk_oifk\",\"columns\":[\"transfer_token_permission_ord\"]}],\"foreignKeys\":[{\"name\":\"strapi_transfer_token_permissions_token_lnk_fk\",\"columns\":[\"transfer_token_permission_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_transfer_token_permissions\",\"onDelete\":\"CASCADE\"},{\"name\":\"strapi_transfer_token_permissions_token_lnk_ifk\",\"columns\":[\"transfer_token_id\"],\"referencedColumns\":[\"id\"],\"referencedTable\":\"strapi_transfer_tokens\",\"onDelete\":\"CASCADE\"}],\"columns\":[{\"name\":\"id\",\"type\":\"increments\",\"args\":[{\"primary\":true,\"primaryKey\":true}],\"defaultTo\":null,\"notNullable\":true,\"unsigned\":false},{\"name\":\"transfer_token_permission_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"transfer_token_id\",\"type\":\"integer\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true},{\"name\":\"transfer_token_permission_ord\",\"type\":\"double\",\"args\":[],\"defaultTo\":null,\"notNullable\":false,\"unsigned\":true}]}]}', '2024-11-02 05:05:33', '9fdc518a601f26d00408df04ad098e5a');

-- --------------------------------------------------------

--
-- Table structure for table `strapi_history_versions`
--

CREATE TABLE `strapi_history_versions` (
  `id` int(10) UNSIGNED NOT NULL,
  `content_type` varchar(255) NOT NULL,
  `related_document_id` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`data`)),
  `schema` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`schema`)),
  `created_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_migrations`
--

CREATE TABLE `strapi_migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_migrations_internal`
--

CREATE TABLE `strapi_migrations_internal` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `strapi_migrations_internal`
--

INSERT INTO `strapi_migrations_internal` (`id`, `name`, `time`) VALUES
(1, '5.0.0-rename-identifiers-longer-than-max-length', '2024-11-02 04:53:47'),
(2, '5.0.0-02-created-document-id', '2024-11-02 04:53:47'),
(3, '5.0.0-03-created-locale', '2024-11-02 04:53:47'),
(4, '5.0.0-04-created-published-at', '2024-11-02 04:53:48'),
(5, '5.0.0-05-drop-slug-fields-index', '2024-11-02 04:53:48'),
(6, 'core::5.0.0-discard-drafts', '2024-11-02 04:53:48');

-- --------------------------------------------------------

--
-- Table structure for table `strapi_releases`
--

CREATE TABLE `strapi_releases` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `released_at` datetime(6) DEFAULT NULL,
  `scheduled_at` datetime(6) DEFAULT NULL,
  `timezone` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_release_actions`
--

CREATE TABLE `strapi_release_actions` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `content_type` varchar(255) DEFAULT NULL,
  `entry_document_id` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `is_entry_valid` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_release_actions_release_lnk`
--

CREATE TABLE `strapi_release_actions_release_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `release_action_id` int(10) UNSIGNED DEFAULT NULL,
  `release_id` int(10) UNSIGNED DEFAULT NULL,
  `release_action_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_transfer_tokens`
--

CREATE TABLE `strapi_transfer_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `access_key` varchar(255) DEFAULT NULL,
  `last_used_at` datetime(6) DEFAULT NULL,
  `expires_at` datetime(6) DEFAULT NULL,
  `lifespan` bigint(20) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_transfer_token_permissions`
--

CREATE TABLE `strapi_transfer_token_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_transfer_token_permissions_token_lnk`
--

CREATE TABLE `strapi_transfer_token_permissions_token_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `transfer_token_permission_id` int(10) UNSIGNED DEFAULT NULL,
  `transfer_token_id` int(10) UNSIGNED DEFAULT NULL,
  `transfer_token_permission_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_webhooks`
--

CREATE TABLE `strapi_webhooks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `url` longtext DEFAULT NULL,
  `headers` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`headers`)),
  `events` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`events`)),
  `enabled` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_workflows`
--

CREATE TABLE `strapi_workflows` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content_types` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`content_types`)),
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_workflows_stages`
--

CREATE TABLE `strapi_workflows_stages` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `color` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_workflows_stages_permissions_lnk`
--

CREATE TABLE `strapi_workflows_stages_permissions_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `workflow_stage_id` int(10) UNSIGNED DEFAULT NULL,
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `permission_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `strapi_workflows_stages_workflow_lnk`
--

CREATE TABLE `strapi_workflows_stages_workflow_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `workflow_stage_id` int(10) UNSIGNED DEFAULT NULL,
  `workflow_id` int(10) UNSIGNED DEFAULT NULL,
  `workflow_stage_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `upload_folders`
--

CREATE TABLE `upload_folders` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `path_id` int(11) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `upload_folders_parent_lnk`
--

CREATE TABLE `upload_folders_parent_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `folder_id` int(10) UNSIGNED DEFAULT NULL,
  `inv_folder_id` int(10) UNSIGNED DEFAULT NULL,
  `folder_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `up_permissions`
--

CREATE TABLE `up_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `action` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `up_permissions`
--

INSERT INTO `up_permissions` (`id`, `document_id`, `action`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'kerc5ub8jnsickagi4y3w3ei', 'plugin::users-permissions.user.me', '2024-11-02 04:54:52.692000', '2024-11-02 04:54:52.692000', '2024-11-02 04:54:52.692000', NULL, NULL, NULL),
(2, 'vevg23iqeqiw29vicwpwagkw', 'plugin::users-permissions.auth.changePassword', '2024-11-02 04:54:52.692000', '2024-11-02 04:54:52.692000', '2024-11-02 04:54:52.693000', NULL, NULL, NULL),
(3, 'yfj8wu5sruqk93jspln2xl23', 'plugin::users-permissions.auth.callback', '2024-11-02 04:54:53.076000', '2024-11-02 04:54:53.076000', '2024-11-02 04:54:53.076000', NULL, NULL, NULL),
(4, 'ks148dubihotnbs22a9crlha', 'plugin::users-permissions.auth.connect', '2024-11-02 04:54:53.076000', '2024-11-02 04:54:53.076000', '2024-11-02 04:54:53.077000', NULL, NULL, NULL),
(5, 'e7zy6c6orddq52n1qs5f9qq0', 'plugin::users-permissions.auth.forgotPassword', '2024-11-02 04:54:53.076000', '2024-11-02 04:54:53.076000', '2024-11-02 04:54:53.077000', NULL, NULL, NULL),
(6, 'njmmj63sdw9hhinq4t50x380', 'plugin::users-permissions.auth.resetPassword', '2024-11-02 04:54:53.076000', '2024-11-02 04:54:53.076000', '2024-11-02 04:54:53.078000', NULL, NULL, NULL),
(7, 'rq04o4oibpgdiyxudoerkgrp', 'plugin::users-permissions.auth.register', '2024-11-02 04:54:53.076000', '2024-11-02 04:54:53.076000', '2024-11-02 04:54:53.078000', NULL, NULL, NULL),
(8, 'rnyyn9gzqz055skbvcvye9pq', 'plugin::users-permissions.auth.emailConfirmation', '2024-11-02 04:54:53.076000', '2024-11-02 04:54:53.076000', '2024-11-02 04:54:53.078000', NULL, NULL, NULL),
(9, 'vqgrhvkpo4i1cxdhodls0par', 'plugin::users-permissions.auth.sendEmailConfirmation', '2024-11-02 04:54:53.076000', '2024-11-02 04:54:53.076000', '2024-11-02 04:54:53.078000', NULL, NULL, NULL),
(10, 'werwkignofaqpb1ib2ub60qg', 'api::note.note.find', '2024-11-02 05:35:20.987000', '2024-11-02 05:35:20.987000', '2024-11-02 05:35:20.990000', NULL, NULL, NULL),
(11, 'jkdej62ygf9hoeozsuae0xvf', 'api::note.note.findOne', '2024-11-02 05:35:20.987000', '2024-11-02 05:35:20.987000', '2024-11-02 05:35:20.992000', NULL, NULL, NULL),
(12, 'wh3v383rwfmg2jegkqz0oags', 'api::note.note.update', '2024-11-02 05:35:20.987000', '2024-11-02 05:35:20.987000', '2024-11-02 05:35:20.994000', NULL, NULL, NULL),
(13, 'io6qxzm3ym9wiq6519lvbfig', 'api::note.note.delete', '2024-11-02 05:35:20.987000', '2024-11-02 05:35:20.987000', '2024-11-02 05:35:20.995000', NULL, NULL, NULL),
(14, 'r78yue0b1kb0jd3tido19dah', 'api::note.note.create', '2024-11-02 05:35:20.987000', '2024-11-02 05:35:20.987000', '2024-11-02 05:35:20.993000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `up_permissions_role_lnk`
--

CREATE TABLE `up_permissions_role_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `permission_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `up_permissions_role_lnk`
--

INSERT INTO `up_permissions_role_lnk` (`id`, `permission_id`, `role_id`, `permission_ord`) VALUES
(1, 1, 1, 1),
(2, 2, 1, 1),
(3, 8, 2, 1),
(4, 3, 2, 1),
(5, 7, 2, 2),
(6, 4, 2, 2),
(7, 5, 2, 2),
(8, 9, 2, 2),
(9, 6, 2, 2),
(10, 10, 2, 3),
(11, 11, 2, 3),
(12, 13, 2, 4),
(13, 12, 2, 4),
(14, 14, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `up_roles`
--

CREATE TABLE `up_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `up_roles`
--

INSERT INTO `up_roles` (`id`, `document_id`, `name`, `description`, `type`, `created_at`, `updated_at`, `published_at`, `created_by_id`, `updated_by_id`, `locale`) VALUES
(1, 'udixg1jkg0dtmuksi2f7t0uq', 'Authenticated', 'Default role given to authenticated user.', 'authenticated', '2024-11-02 04:54:52.576000', '2024-11-02 04:54:52.576000', '2024-11-02 04:54:52.576000', NULL, NULL, NULL),
(2, 'bw9klzuo5ni1m7a129iy276e', 'Public', 'Default role given to unauthenticated user.', 'public', '2024-11-02 04:54:52.640000', '2024-11-02 05:58:51.685000', '2024-11-02 04:54:52.640000', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `up_users`
--

CREATE TABLE `up_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `document_id` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `confirmed` tinyint(1) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `published_at` datetime(6) DEFAULT NULL,
  `created_by_id` int(10) UNSIGNED DEFAULT NULL,
  `updated_by_id` int(10) UNSIGNED DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `up_users_role_lnk`
--

CREATE TABLE `up_users_role_lnk` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED DEFAULT NULL,
  `user_ord` double UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `abouts_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `abouts_created_by_id_fk` (`created_by_id`),
  ADD KEY `abouts_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `abouts_cmps`
--
ALTER TABLE `abouts_cmps`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `abouts_uq` (`entity_id`,`cmp_id`,`field`,`component_type`),
  ADD KEY `abouts_field_idx` (`field`),
  ADD KEY `abouts_component_type_idx` (`component_type`),
  ADD KEY `abouts_entity_fk` (`entity_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_permissions_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `admin_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_permissions_role_lnk`
--
ALTER TABLE `admin_permissions_role_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_role_lnk_uq` (`permission_id`,`role_id`),
  ADD KEY `admin_permissions_role_lnk_fk` (`permission_id`),
  ADD KEY `admin_permissions_role_lnk_ifk` (`role_id`),
  ADD KEY `admin_permissions_role_lnk_oifk` (`permission_ord`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_roles_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `admin_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_users_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `admin_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `admin_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `admin_users_roles_lnk`
--
ALTER TABLE `admin_users_roles_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_roles_lnk_uq` (`user_id`,`role_id`),
  ADD KEY `admin_users_roles_lnk_fk` (`user_id`),
  ADD KEY `admin_users_roles_lnk_ifk` (`role_id`),
  ADD KEY `admin_users_roles_lnk_ofk` (`role_ord`),
  ADD KEY `admin_users_roles_lnk_oifk` (`user_ord`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `articles_created_by_id_fk` (`created_by_id`),
  ADD KEY `articles_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `articles_author_lnk`
--
ALTER TABLE `articles_author_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articles_author_lnk_uq` (`article_id`,`author_id`),
  ADD KEY `articles_author_lnk_fk` (`article_id`),
  ADD KEY `articles_author_lnk_ifk` (`author_id`),
  ADD KEY `articles_author_lnk_oifk` (`article_ord`);

--
-- Indexes for table `articles_category_lnk`
--
ALTER TABLE `articles_category_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articles_category_lnk_uq` (`article_id`,`category_id`),
  ADD KEY `articles_category_lnk_fk` (`article_id`),
  ADD KEY `articles_category_lnk_ifk` (`category_id`),
  ADD KEY `articles_category_lnk_oifk` (`article_ord`);

--
-- Indexes for table `articles_cmps`
--
ALTER TABLE `articles_cmps`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `articles_uq` (`entity_id`,`cmp_id`,`field`,`component_type`),
  ADD KEY `articles_field_idx` (`field`),
  ADD KEY `articles_component_type_idx` (`component_type`),
  ADD KEY `articles_entity_fk` (`entity_id`);

--
-- Indexes for table `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `authors_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `authors_created_by_id_fk` (`created_by_id`),
  ADD KEY `authors_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `categories_created_by_id_fk` (`created_by_id`),
  ADD KEY `categories_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `components_shared_media`
--
ALTER TABLE `components_shared_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_shared_quotes`
--
ALTER TABLE `components_shared_quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_shared_rich_texts`
--
ALTER TABLE `components_shared_rich_texts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_shared_seos`
--
ALTER TABLE `components_shared_seos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `components_shared_sliders`
--
ALTER TABLE `components_shared_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `upload_files_folder_path_index` (`folder_path`),
  ADD KEY `upload_files_created_at_index` (`created_at`),
  ADD KEY `upload_files_updated_at_index` (`updated_at`),
  ADD KEY `upload_files_name_index` (`name`),
  ADD KEY `upload_files_size_index` (`size`),
  ADD KEY `upload_files_ext_index` (`ext`),
  ADD KEY `files_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `files_created_by_id_fk` (`created_by_id`),
  ADD KEY `files_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `files_folder_lnk`
--
ALTER TABLE `files_folder_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `files_folder_lnk_uq` (`file_id`,`folder_id`),
  ADD KEY `files_folder_lnk_fk` (`file_id`),
  ADD KEY `files_folder_lnk_ifk` (`folder_id`),
  ADD KEY `files_folder_lnk_oifk` (`file_ord`);

--
-- Indexes for table `files_related_mph`
--
ALTER TABLE `files_related_mph`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_related_mph_fk` (`file_id`),
  ADD KEY `files_related_mph_oidx` (`order`),
  ADD KEY `files_related_mph_idix` (`related_id`);

--
-- Indexes for table `globals`
--
ALTER TABLE `globals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `globals_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `globals_created_by_id_fk` (`created_by_id`),
  ADD KEY `globals_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `globals_cmps`
--
ALTER TABLE `globals_cmps`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `globals_uq` (`entity_id`,`cmp_id`,`field`,`component_type`),
  ADD KEY `globals_field_idx` (`field`),
  ADD KEY `globals_component_type_idx` (`component_type`),
  ADD KEY `globals_entity_fk` (`entity_id`);

--
-- Indexes for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD PRIMARY KEY (`id`),
  ADD KEY `i18n_locale_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `i18n_locale_created_by_id_fk` (`created_by_id`),
  ADD KEY `i18n_locale_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notes_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `notes_created_by_id_fk` (`created_by_id`),
  ADD KEY `notes_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_tokens_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `strapi_api_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_api_token_permissions_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `strapi_api_token_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_api_token_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_api_token_permissions_token_lnk`
--
ALTER TABLE `strapi_api_token_permissions_token_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_api_token_permissions_token_lnk_uq` (`api_token_permission_id`,`api_token_id`),
  ADD KEY `strapi_api_token_permissions_token_lnk_fk` (`api_token_permission_id`),
  ADD KEY `strapi_api_token_permissions_token_lnk_ifk` (`api_token_id`),
  ADD KEY `strapi_api_token_permissions_token_lnk_oifk` (`api_token_permission_ord`);

--
-- Indexes for table `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_history_versions`
--
ALTER TABLE `strapi_history_versions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_history_versions_created_by_id_fk` (`created_by_id`);

--
-- Indexes for table `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_migrations_internal`
--
ALTER TABLE `strapi_migrations_internal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_releases`
--
ALTER TABLE `strapi_releases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_releases_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `strapi_releases_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_releases_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_release_actions`
--
ALTER TABLE `strapi_release_actions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_release_actions_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `strapi_release_actions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_release_actions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_release_actions_release_lnk`
--
ALTER TABLE `strapi_release_actions_release_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_release_actions_release_lnk_uq` (`release_action_id`,`release_id`),
  ADD KEY `strapi_release_actions_release_lnk_fk` (`release_action_id`),
  ADD KEY `strapi_release_actions_release_lnk_ifk` (`release_id`),
  ADD KEY `strapi_release_actions_release_lnk_oifk` (`release_action_ord`);

--
-- Indexes for table `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_transfer_tokens_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `strapi_transfer_tokens_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_transfer_tokens_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_transfer_token_permissions_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `strapi_transfer_token_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_transfer_token_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_transfer_token_permissions_token_lnk`
--
ALTER TABLE `strapi_transfer_token_permissions_token_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_transfer_token_permissions_token_lnk_uq` (`transfer_token_permission_id`,`transfer_token_id`),
  ADD KEY `strapi_transfer_token_permissions_token_lnk_fk` (`transfer_token_permission_id`),
  ADD KEY `strapi_transfer_token_permissions_token_lnk_ifk` (`transfer_token_id`),
  ADD KEY `strapi_transfer_token_permissions_token_lnk_oifk` (`transfer_token_permission_ord`);

--
-- Indexes for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `strapi_workflows`
--
ALTER TABLE `strapi_workflows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_workflows_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `strapi_workflows_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_workflows_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_workflows_stages`
--
ALTER TABLE `strapi_workflows_stages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `strapi_workflows_stages_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `strapi_workflows_stages_created_by_id_fk` (`created_by_id`),
  ADD KEY `strapi_workflows_stages_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `strapi_workflows_stages_permissions_lnk`
--
ALTER TABLE `strapi_workflows_stages_permissions_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_workflows_stages_permissions_lnk_uq` (`workflow_stage_id`,`permission_id`),
  ADD KEY `strapi_workflows_stages_permissions_lnk_fk` (`workflow_stage_id`),
  ADD KEY `strapi_workflows_stages_permissions_lnk_ifk` (`permission_id`),
  ADD KEY `strapi_workflows_stages_permissions_lnk_ofk` (`permission_ord`);

--
-- Indexes for table `strapi_workflows_stages_workflow_lnk`
--
ALTER TABLE `strapi_workflows_stages_workflow_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `strapi_workflows_stages_workflow_lnk_uq` (`workflow_stage_id`,`workflow_id`),
  ADD KEY `strapi_workflows_stages_workflow_lnk_fk` (`workflow_stage_id`),
  ADD KEY `strapi_workflows_stages_workflow_lnk_ifk` (`workflow_id`),
  ADD KEY `strapi_workflows_stages_workflow_lnk_oifk` (`workflow_stage_ord`);

--
-- Indexes for table `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_path_id_index` (`path_id`),
  ADD UNIQUE KEY `upload_folders_path_index` (`path`),
  ADD KEY `upload_folders_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `upload_folders_created_by_id_fk` (`created_by_id`),
  ADD KEY `upload_folders_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `upload_folders_parent_lnk`
--
ALTER TABLE `upload_folders_parent_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `upload_folders_parent_lnk_uq` (`folder_id`,`inv_folder_id`),
  ADD KEY `upload_folders_parent_lnk_fk` (`folder_id`),
  ADD KEY `upload_folders_parent_lnk_ifk` (`inv_folder_id`),
  ADD KEY `upload_folders_parent_lnk_oifk` (`folder_ord`);

--
-- Indexes for table `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_permissions_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `up_permissions_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_permissions_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_permissions_role_lnk`
--
ALTER TABLE `up_permissions_role_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `up_permissions_role_lnk_uq` (`permission_id`,`role_id`),
  ADD KEY `up_permissions_role_lnk_fk` (`permission_id`),
  ADD KEY `up_permissions_role_lnk_ifk` (`role_id`),
  ADD KEY `up_permissions_role_lnk_oifk` (`permission_ord`);

--
-- Indexes for table `up_roles`
--
ALTER TABLE `up_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_roles_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `up_roles_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_roles_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_users`
--
ALTER TABLE `up_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `up_users_documents_idx` (`document_id`,`locale`,`published_at`),
  ADD KEY `up_users_created_by_id_fk` (`created_by_id`),
  ADD KEY `up_users_updated_by_id_fk` (`updated_by_id`);

--
-- Indexes for table `up_users_role_lnk`
--
ALTER TABLE `up_users_role_lnk`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `up_users_role_lnk_uq` (`user_id`,`role_id`),
  ADD KEY `up_users_role_lnk_fk` (`user_id`),
  ADD KEY `up_users_role_lnk_ifk` (`role_id`),
  ADD KEY `up_users_role_lnk_oifk` (`user_ord`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `abouts_cmps`
--
ALTER TABLE `abouts_cmps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `admin_permissions_role_lnk`
--
ALTER TABLE `admin_permissions_role_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_users_roles_lnk`
--
ALTER TABLE `admin_users_roles_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `articles_author_lnk`
--
ALTER TABLE `articles_author_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `articles_category_lnk`
--
ALTER TABLE `articles_category_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `articles_cmps`
--
ALTER TABLE `articles_cmps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `components_shared_media`
--
ALTER TABLE `components_shared_media`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `components_shared_quotes`
--
ALTER TABLE `components_shared_quotes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `components_shared_rich_texts`
--
ALTER TABLE `components_shared_rich_texts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `components_shared_seos`
--
ALTER TABLE `components_shared_seos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `components_shared_sliders`
--
ALTER TABLE `components_shared_sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files_folder_lnk`
--
ALTER TABLE `files_folder_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files_related_mph`
--
ALTER TABLE `files_related_mph`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `globals`
--
ALTER TABLE `globals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `globals_cmps`
--
ALTER TABLE `globals_cmps`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_api_token_permissions_token_lnk`
--
ALTER TABLE `strapi_api_token_permissions_token_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_core_store_settings`
--
ALTER TABLE `strapi_core_store_settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `strapi_database_schema`
--
ALTER TABLE `strapi_database_schema`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `strapi_history_versions`
--
ALTER TABLE `strapi_history_versions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_migrations`
--
ALTER TABLE `strapi_migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_migrations_internal`
--
ALTER TABLE `strapi_migrations_internal`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `strapi_releases`
--
ALTER TABLE `strapi_releases`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_release_actions`
--
ALTER TABLE `strapi_release_actions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_release_actions_release_lnk`
--
ALTER TABLE `strapi_release_actions_release_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_transfer_token_permissions_token_lnk`
--
ALTER TABLE `strapi_transfer_token_permissions_token_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_webhooks`
--
ALTER TABLE `strapi_webhooks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_workflows`
--
ALTER TABLE `strapi_workflows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_workflows_stages`
--
ALTER TABLE `strapi_workflows_stages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_workflows_stages_permissions_lnk`
--
ALTER TABLE `strapi_workflows_stages_permissions_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `strapi_workflows_stages_workflow_lnk`
--
ALTER TABLE `strapi_workflows_stages_workflow_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upload_folders`
--
ALTER TABLE `upload_folders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `upload_folders_parent_lnk`
--
ALTER TABLE `upload_folders_parent_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `up_permissions`
--
ALTER TABLE `up_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `up_permissions_role_lnk`
--
ALTER TABLE `up_permissions_role_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `up_roles`
--
ALTER TABLE `up_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `up_users`
--
ALTER TABLE `up_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `up_users_role_lnk`
--
ALTER TABLE `up_users_role_lnk`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `abouts`
--
ALTER TABLE `abouts`
  ADD CONSTRAINT `abouts_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `abouts_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `abouts_cmps`
--
ALTER TABLE `abouts_cmps`
  ADD CONSTRAINT `abouts_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `abouts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD CONSTRAINT `admin_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_permissions_role_lnk`
--
ALTER TABLE `admin_permissions_role_lnk`
  ADD CONSTRAINT `admin_permissions_role_lnk_fk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_permissions_role_lnk_ifk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD CONSTRAINT `admin_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD CONSTRAINT `admin_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `admin_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `admin_users_roles_lnk`
--
ALTER TABLE `admin_users_roles_lnk`
  ADD CONSTRAINT `admin_users_roles_lnk_fk` FOREIGN KEY (`user_id`) REFERENCES `admin_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `admin_users_roles_lnk_ifk` FOREIGN KEY (`role_id`) REFERENCES `admin_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `articles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `articles_author_lnk`
--
ALTER TABLE `articles_author_lnk`
  ADD CONSTRAINT `articles_author_lnk_fk` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `articles_author_lnk_ifk` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `articles_category_lnk`
--
ALTER TABLE `articles_category_lnk`
  ADD CONSTRAINT `articles_category_lnk_fk` FOREIGN KEY (`article_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `articles_category_lnk_ifk` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `articles_cmps`
--
ALTER TABLE `articles_cmps`
  ADD CONSTRAINT `articles_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `articles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `authors`
--
ALTER TABLE `authors`
  ADD CONSTRAINT `authors_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `authors_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `categories_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `files_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `files_folder_lnk`
--
ALTER TABLE `files_folder_lnk`
  ADD CONSTRAINT `files_folder_lnk_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `files_folder_lnk_ifk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `files_related_mph`
--
ALTER TABLE `files_related_mph`
  ADD CONSTRAINT `files_related_mph_fk` FOREIGN KEY (`file_id`) REFERENCES `files` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `globals`
--
ALTER TABLE `globals`
  ADD CONSTRAINT `globals_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `globals_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `globals_cmps`
--
ALTER TABLE `globals_cmps`
  ADD CONSTRAINT `globals_entity_fk` FOREIGN KEY (`entity_id`) REFERENCES `globals` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `i18n_locale`
--
ALTER TABLE `i18n_locale`
  ADD CONSTRAINT `i18n_locale_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `i18n_locale_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `notes_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `notes_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_api_tokens`
--
ALTER TABLE `strapi_api_tokens`
  ADD CONSTRAINT `strapi_api_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_api_token_permissions`
--
ALTER TABLE `strapi_api_token_permissions`
  ADD CONSTRAINT `strapi_api_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_api_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_api_token_permissions_token_lnk`
--
ALTER TABLE `strapi_api_token_permissions_token_lnk`
  ADD CONSTRAINT `strapi_api_token_permissions_token_lnk_fk` FOREIGN KEY (`api_token_permission_id`) REFERENCES `strapi_api_token_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_api_token_permissions_token_lnk_ifk` FOREIGN KEY (`api_token_id`) REFERENCES `strapi_api_tokens` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `strapi_history_versions`
--
ALTER TABLE `strapi_history_versions`
  ADD CONSTRAINT `strapi_history_versions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_releases`
--
ALTER TABLE `strapi_releases`
  ADD CONSTRAINT `strapi_releases_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_releases_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_release_actions`
--
ALTER TABLE `strapi_release_actions`
  ADD CONSTRAINT `strapi_release_actions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_release_actions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_release_actions_release_lnk`
--
ALTER TABLE `strapi_release_actions_release_lnk`
  ADD CONSTRAINT `strapi_release_actions_release_lnk_fk` FOREIGN KEY (`release_action_id`) REFERENCES `strapi_release_actions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_release_actions_release_lnk_ifk` FOREIGN KEY (`release_id`) REFERENCES `strapi_releases` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `strapi_transfer_tokens`
--
ALTER TABLE `strapi_transfer_tokens`
  ADD CONSTRAINT `strapi_transfer_tokens_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_transfer_tokens_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_transfer_token_permissions`
--
ALTER TABLE `strapi_transfer_token_permissions`
  ADD CONSTRAINT `strapi_transfer_token_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_transfer_token_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_transfer_token_permissions_token_lnk`
--
ALTER TABLE `strapi_transfer_token_permissions_token_lnk`
  ADD CONSTRAINT `strapi_transfer_token_permissions_token_lnk_fk` FOREIGN KEY (`transfer_token_permission_id`) REFERENCES `strapi_transfer_token_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_transfer_token_permissions_token_lnk_ifk` FOREIGN KEY (`transfer_token_id`) REFERENCES `strapi_transfer_tokens` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `strapi_workflows`
--
ALTER TABLE `strapi_workflows`
  ADD CONSTRAINT `strapi_workflows_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_workflows_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_workflows_stages`
--
ALTER TABLE `strapi_workflows_stages`
  ADD CONSTRAINT `strapi_workflows_stages_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `strapi_workflows_stages_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `strapi_workflows_stages_permissions_lnk`
--
ALTER TABLE `strapi_workflows_stages_permissions_lnk`
  ADD CONSTRAINT `strapi_workflows_stages_permissions_lnk_fk` FOREIGN KEY (`workflow_stage_id`) REFERENCES `strapi_workflows_stages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_workflows_stages_permissions_lnk_ifk` FOREIGN KEY (`permission_id`) REFERENCES `admin_permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `strapi_workflows_stages_workflow_lnk`
--
ALTER TABLE `strapi_workflows_stages_workflow_lnk`
  ADD CONSTRAINT `strapi_workflows_stages_workflow_lnk_fk` FOREIGN KEY (`workflow_stage_id`) REFERENCES `strapi_workflows_stages` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `strapi_workflows_stages_workflow_lnk_ifk` FOREIGN KEY (`workflow_id`) REFERENCES `strapi_workflows` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `upload_folders`
--
ALTER TABLE `upload_folders`
  ADD CONSTRAINT `upload_folders_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `upload_folders_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `upload_folders_parent_lnk`
--
ALTER TABLE `upload_folders_parent_lnk`
  ADD CONSTRAINT `upload_folders_parent_lnk_fk` FOREIGN KEY (`folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `upload_folders_parent_lnk_ifk` FOREIGN KEY (`inv_folder_id`) REFERENCES `upload_folders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_permissions`
--
ALTER TABLE `up_permissions`
  ADD CONSTRAINT `up_permissions_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_permissions_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_permissions_role_lnk`
--
ALTER TABLE `up_permissions_role_lnk`
  ADD CONSTRAINT `up_permissions_role_lnk_fk` FOREIGN KEY (`permission_id`) REFERENCES `up_permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_permissions_role_lnk_ifk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `up_roles`
--
ALTER TABLE `up_roles`
  ADD CONSTRAINT `up_roles_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_roles_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_users`
--
ALTER TABLE `up_users`
  ADD CONSTRAINT `up_users_created_by_id_fk` FOREIGN KEY (`created_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `up_users_updated_by_id_fk` FOREIGN KEY (`updated_by_id`) REFERENCES `admin_users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `up_users_role_lnk`
--
ALTER TABLE `up_users_role_lnk`
  ADD CONSTRAINT `up_users_role_lnk_fk` FOREIGN KEY (`user_id`) REFERENCES `up_users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `up_users_role_lnk_ifk` FOREIGN KEY (`role_id`) REFERENCES `up_roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
