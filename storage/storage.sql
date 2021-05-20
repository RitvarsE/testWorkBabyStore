-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for babystore
CREATE DATABASE IF NOT EXISTS `babystore` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */;
USE `babystore`;

-- Dumping structure for table babystore.images
CREATE TABLE IF NOT EXISTS `images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `originalName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `place` smallint(6) NOT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table babystore.images: ~3 rows (approximately)
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` (`id`, `originalName`, `type`, `url`, `place`, `views`, `clicks`, `location`, `created_at`, `updated_at`) VALUES
	(95, 'man5 - Copy.jpg', '_blank', 'https://babystore.lv', 1, 2, 0, '../storage/images/cc/db/7accdb81c4aab07bea53ed1df45a84062db800181621550153.jpg', '2021-05-20 22:35:53', '2021-05-20 22:39:50'),
	(96, 'man5.jpg', '_parent', 'https://babystore.lv', 3, 0, 0, '../storage/images/68/3c/67683c8c28c328e401cfc63bed1ac96cdd8a31991621550154.jpg', '2021-05-20 22:35:54', '2021-05-20 22:35:54'),
	(97, 'man6.jpg', '_parent', 'https://babystore.lv', 1, 3, 0, '../storage/images/c7/3f/78c73fc1d0c3d0910deac680626b7186ac3f31521621550154.jpg', '2021-05-20 22:35:54', '2021-05-20 22:39:20'),
	(98, 'man7.jpg', '_parent', 'https://babystore.lv', 1, 3, 0, '../storage/images/2d/d3/5b2dd393f690ab74cd46b4402a18fcddc9b18e341621550154.jpg', '2021-05-20 22:35:54', '2021-05-20 22:39:14'),
	(99, 'man8.jpg', '_parent', 'https://babystore.lv', 3, 2, 0, '../storage/images/a5/64/64a5643a1f43d37f243849472eca34b374b60d0a1621550154.jpg', '2021-05-20 22:35:54', '2021-05-20 22:38:31'),
	(100, 'man9.jpg', '_blank', 'https://babystore.lv', 3, 0, 0, '../storage/images/33/cf/3233cf580778b5b7f71ac3a825caaa6b55e08cbb1621550154.jpg', '2021-05-20 22:35:54', '2021-05-20 22:35:54'),
	(101, 'man10.jpg', '_parent', 'https://babystore.lv', 1, 2, 0, '../storage/images/fa/e3/68fae337256648882102f1196b95964a4323c33e1621550154.jpg', '2021-05-20 22:35:54', '2021-05-20 22:40:03'),
	(102, 'woman5.jpg', '_parent', 'https://babystore.lv', 1, 3, 0, '../storage/images/e1/fe/0ae1fe6f308297a0f3dea7ed4c09e124768f31c71621550154.jpg', '2021-05-20 22:35:54', '2021-05-20 22:39:34'),
	(103, 'woman6.jpg', '_blank', 'https://babystore.lv', 3, 1, 0, '../storage/images/df/96/68df96798373ea468247089423b4fbbbf266ed211621550155.jpg', '2021-05-20 22:35:55', '2021-05-20 22:35:56'),
	(104, 'woman7.jpg', '_blank', 'https://babystore.lv', 3, 2, 0, '../storage/images/e8/59/13e859c030b09a3787c45eacba9b1e15e9b4847b1621550155.jpg', '2021-05-20 22:35:55', '2021-05-20 22:38:31'),
	(105, 'woman8.jpg', '_blank', 'https://babystore.lv', 2, 0, 0, '../storage/images/88/6e/24886e7ffec6c52537b066e8a47390b2f6ab7dca1621550155.jpg', '2021-05-20 22:35:55', '2021-05-20 22:35:55'),
	(106, 'woman9.jpg', '_parent', 'https://babystore.lv', 2, 2, 1, '../storage/images/bd/77/22bd77cb1899c0a4a1a285c8d6a48701df927e151621550155.jpg', '2021-05-20 22:35:55', '2021-05-20 22:39:10'),
	(107, 'woman10.jpg', '_parent', 'https://babystore.lv', 1, 2, 0, '../storage/images/75/ee/0875eeabf379d281a5bf0718b121d5407193e8661621550155.jpg', '2021-05-20 22:35:55', '2021-05-20 22:39:07'),
	(108, 'women1.jpg', '_blank', 'https://babystore.lv', 3, 1, 1, '../storage/images/23/5c/d5235cc4fe0f9d5f0bcb8cbf899aa5e9030bc87c1621550155.jpg', '2021-05-20 22:35:55', '2021-05-20 22:39:17');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;

-- Dumping structure for table babystore.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table babystore.migrations: ~3 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(4, '2014_10_12_000000_create_users_table', 1),
	(5, '2014_10_12_100000_create_password_resets_table', 1),
	(6, '2021_05_19_163817_create_images_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table babystore.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table babystore.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table babystore.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table babystore.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
