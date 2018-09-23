-- --------------------------------------------------------
-- Хост:                         localhost
-- Версия сервера:               5.7.19 - MySQL Community Server (GPL)
-- Операционная система:         Win64
-- HeidiSQL Версия:              9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Дамп структуры для таблица api-resources.articles
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы api-resources.articles: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;

-- Дамп структуры для таблица api-resources.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы api-resources.migrations: ~10 rows (приблизительно)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
	(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
	(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
	(6, '2016_06_01_000004_create_oauth_clients_table', 1),
	(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
	(8, '2018_07_27_065755_create_articles_table', 1),
	(9, '2018_09_23_202438_create_topics_table', 1),
	(10, '2018_09_23_202633_create_posts_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Дамп структуры для таблица api-resources.oauth_access_tokens
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы api-resources.oauth_access_tokens: ~2 rows (приблизительно)
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
	('448cbe4202ba05e40dc1d415aa973120cd03c5a953a180eb5427361d31fae4b192b0ce02761ab991', 1, 2, NULL, '["*"]', 0, '2018-09-23 20:47:01', '2018-09-23 20:47:01', '2019-09-23 20:47:01'),
	('5a8935365847bda6025f0f4bfaa8f90d2a5d46d938041fdf0a7d0e684c36566a75ea4618c7a72f0d', 2, 2, NULL, '["*"]', 0, '2018-09-23 20:47:54', '2018-09-23 20:47:54', '2019-09-23 20:47:54');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;

-- Дамп структуры для таблица api-resources.oauth_auth_codes
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы api-resources.oauth_auth_codes: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;

-- Дамп структуры для таблица api-resources.oauth_clients
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы api-resources.oauth_clients: ~2 rows (приблизительно)
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
	(1, NULL, 'Laravel Personal Access Client', 'NGB04O1jSVqmk9G9VlleabFwtChwaYbzSFpwReEc', 'http://localhost', 1, 0, 0, '2018-09-23 20:45:44', '2018-09-23 20:45:44'),
	(2, NULL, 'Laravel Password Grant Client', 'Mmo3HUfP0t5LIIQ9AA40ZlO5EdoN5xMxmaTIlHjD', 'http://localhost', 0, 1, 0, '2018-09-23 20:45:44', '2018-09-23 20:45:44');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;

-- Дамп структуры для таблица api-resources.oauth_personal_access_clients
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы api-resources.oauth_personal_access_clients: ~1 rows (приблизительно)
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
	(1, 1, '2018-09-23 20:45:44', '2018-09-23 20:45:44');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;

-- Дамп структуры для таблица api-resources.oauth_refresh_tokens
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы api-resources.oauth_refresh_tokens: ~2 rows (приблизительно)
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
INSERT INTO `oauth_refresh_tokens` (`id`, `access_token_id`, `revoked`, `expires_at`) VALUES
	('6d7d1209e1bbdef25a2e4a96b4d61621e34b4ad0b66a39a8b817765a499a224df080a1b63c976850', '448cbe4202ba05e40dc1d415aa973120cd03c5a953a180eb5427361d31fae4b192b0ce02761ab991', 0, '2019-09-23 20:47:01'),
	('d0a47dea397d47d5db76e4d3cb2f75fd3c07bb69713f2365e757b220a40804a1d902614aede36ba0', '5a8935365847bda6025f0f4bfaa8f90d2a5d46d938041fdf0a7d0e684c36566a75ea4618c7a72f0d', 0, '2019-09-23 20:47:54');
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;

-- Дамп структуры для таблица api-resources.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы api-resources.password_resets: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Дамп структуры для таблица api-resources.posts
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_topic_id_index` (`topic_id`),
  KEY `posts_user_id_index` (`user_id`),
  CONSTRAINT `posts_topic_id_foreign` FOREIGN KEY (`topic_id`) REFERENCES `topics` (`id`) ON DELETE CASCADE,
  CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы api-resources.posts: ~11 rows (приблизительно)
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` (`id`, `body`, `topic_id`, `user_id`, `created_at`, `updated_at`) VALUES
	(1, 'Body', 2, 2, '2018-09-23 21:06:48', '2018-09-23 21:06:48'),
	(2, 'test 1', 3, 2, '2018-09-23 21:16:04', '2018-09-23 21:16:04'),
	(4, 'test 1', 5, 2, '2018-09-23 21:31:02', '2018-09-23 21:31:02'),
	(5, 'test 1', 6, 2, '2018-09-23 21:33:14', '2018-09-23 21:33:14'),
	(6, 'test 1', 7, 2, '2018-09-23 21:40:29', '2018-09-23 21:40:29'),
	(7, 'test 1', 8, 2, '2018-09-23 21:40:30', '2018-09-23 21:40:30'),
	(8, 'test 1', 9, 2, '2018-09-23 21:40:32', '2018-09-23 21:40:32'),
	(9, 'test 1', 10, 2, '2018-09-23 21:40:33', '2018-09-23 21:40:33'),
	(10, 'test 1', 11, 2, '2018-09-23 21:40:33', '2018-09-23 21:40:33'),
	(11, 'test 1', 12, 2, '2018-09-23 21:40:34', '2018-09-23 21:40:34'),
	(12, 'test 1', 13, 2, '2018-09-23 21:40:35', '2018-09-23 21:40:35');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;

-- Дамп структуры для таблица api-resources.topics
CREATE TABLE IF NOT EXISTS `topics` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `topics_user_id_index` (`user_id`),
  CONSTRAINT `topics_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы api-resources.topics: ~11 rows (приблизительно)
/*!40000 ALTER TABLE `topics` DISABLE KEYS */;
INSERT INTO `topics` (`id`, `title`, `user_id`, `created_at`, `updated_at`) VALUES
	(2, 'Title', 2, '2018-09-23 21:06:48', '2018-09-23 21:06:48'),
	(3, 'Test', 2, '2018-09-23 21:16:04', '2018-09-23 21:16:04'),
	(5, 'Test', 2, '2018-09-23 21:31:02', '2018-09-23 21:31:02'),
	(6, 'Test', 2, '2018-09-23 21:33:14', '2018-09-23 21:33:14'),
	(7, 'Test', 2, '2018-09-23 21:40:29', '2018-09-23 21:40:29'),
	(8, 'Test', 2, '2018-09-23 21:40:30', '2018-09-23 21:40:30'),
	(9, 'Test', 2, '2018-09-23 21:40:31', '2018-09-23 21:40:31'),
	(10, 'Test', 2, '2018-09-23 21:40:32', '2018-09-23 21:40:32'),
	(11, 'Test', 2, '2018-09-23 21:40:33', '2018-09-23 21:40:33'),
	(12, 'Test', 2, '2018-09-23 21:40:34', '2018-09-23 21:40:34'),
	(13, 'Test', 2, '2018-09-23 21:40:35', '2018-09-23 21:40:35');
/*!40000 ALTER TABLE `topics` ENABLE KEYS */;

-- Дамп структуры для таблица api-resources.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы api-resources.users: ~2 rows (приблизительно)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'iska', 'iska@co.com', '$2y$10$A.JTkbDvEbmeTx.jc6LgYef21OdWr/AimaGFTxogktyR.GjJm.5Q2', NULL, '2018-09-23 20:46:45', '2018-09-23 20:46:45'),
	(2, 'iskandar', 'iskandar@co.com', '$2y$10$Lfm4k.FM.SX76OGKu0Bvbe75m5lK1GVf2rd/ilu7UH.sNw9w5yb0m', NULL, '2018-09-23 20:46:55', '2018-09-23 20:46:55');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
