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


-- Дамп структуры базы данных api-resources
CREATE DATABASE IF NOT EXISTS `api-resources` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `api-resources`;

-- Дамп структуры для таблица api-resources.articles
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы api-resources.articles: ~30 rows (приблизительно)
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` (`id`, `title`, `body`, `created_at`, `updated_at`) VALUES
	(1, 'Quis a quia harum magni qui. Eum et facere neque.', 'Accusamus molestias et non ex. Aut aliquid ut perspiciatis debitis nihil earum sit. Temporibus nisi earum aut quis eaque et voluptatem. Animi iure iusto et est alias eum.', '2018-07-27 12:06:33', '2018-07-27 12:06:33'),
	(2, 'Ut qui corporis illo qui inventore.', 'In dolorem culpa iste modi nostrum. Dignissimos quasi ducimus veritatis eum et voluptas. Autem vel placeat eligendi consequatur corrupti sit maxime.', '2018-07-27 12:06:33', '2018-07-27 12:06:33'),
	(3, 'Ea et voluptatibus amet at nemo.', 'Eligendi officia magni sit nihil vel. Repellat libero ipsa dolores et. Autem ut ut aperiam nesciunt ut qui. Quo repellat molestiae soluta qui ea voluptates.', '2018-07-27 12:06:33', '2018-07-27 12:06:33'),
	(5, 'Sed dolor qui nihil veniam.', 'Ut deleniti modi libero ut voluptates sit. Dicta fugit id voluptate nihil odit.', '2018-07-27 12:06:33', '2018-07-27 12:06:33'),
	(6, 'Updated title', 'Updated body', '2018-07-27 12:06:33', '2018-07-27 15:11:00'),
	(7, 'Id et quod sit doloribus est quo expedita.', 'Aliquid et voluptatem quos assumenda necessitatibus illo facere. Iusto voluptatum nostrum sunt architecto. Quos assumenda eius iure alias temporibus sequi esse. Expedita labore perspiciatis sed.', '2018-07-27 12:06:33', '2018-07-27 12:06:33'),
	(8, 'Non porro libero ipsa quidem voluptatem ex.', 'Voluptas dolor rem consequatur dolorem. Dolor saepe dolorem aperiam maxime quae. Cum quae ducimus labore. Quis qui eius ipsum debitis asperiores magnam architecto delectus.', '2018-07-27 12:06:33', '2018-07-27 12:06:33'),
	(9, 'Quos sequi sit ut rem molestiae quo.', 'Accusantium quo nihil recusandae et. Unde at excepturi sequi accusantium. Debitis ut enim dolore rerum earum consequuntur itaque. Voluptas sed saepe laudantium.', '2018-07-27 12:06:33', '2018-07-27 12:06:33'),
	(10, 'In dolorum quis omnis.', 'Qui in sunt labore. Nemo et asperiores sunt. Harum est qui ea officiis reiciendis officiis error. Mollitia autem magnam aliquam vero et commodi.', '2018-07-27 12:06:33', '2018-07-27 12:06:33'),
	(11, 'Aliquam iste non ducimus.', 'Vero quas autem fugiat optio consequatur laborum facilis. Id dolores magnam est praesentium provident et. Omnis repellendus ut aut similique animi sequi.', '2018-07-27 12:06:33', '2018-07-27 12:06:33'),
	(12, 'Eveniet praesentium fuga aut et pariatur qui sed.', 'Voluptas quis atque velit laudantium molestiae non. Maxime et quis voluptatem reiciendis eligendi. Ab quas quod fugit quo est et iste voluptate.', '2018-07-27 12:06:33', '2018-07-27 12:06:33'),
	(13, 'Et tempore neque tempora doloribus qui.', 'Eum tempore neque at placeat minima beatae id qui. Enim adipisci aut neque quibusdam. Nostrum ipsam dolorem reiciendis natus ab est.', '2018-07-27 12:06:33', '2018-07-27 12:06:33'),
	(14, 'Dolorem fuga omnis accusamus sed accusantium et.', 'Distinctio velit culpa tenetur cupiditate sapiente ut reiciendis. Ut est rem sed aut. Et incidunt consequatur quo autem harum debitis neque assumenda. Sed officia sed velit rerum sit.', '2018-07-27 12:06:33', '2018-07-27 12:06:33'),
	(15, 'Ut modi voluptatibus tempora quia ipsam aperiam.', 'Quis voluptas beatae aut aspernatur beatae. Quas iste aut qui fugit. Et pariatur nesciunt perspiciatis et commodi non non. Fugiat est reprehenderit vero. In dolor atque officia harum perspiciatis.', '2018-07-27 12:06:33', '2018-07-27 12:06:33'),
	(16, 'Qui delectus quasi deleniti animi.', 'Excepturi alias consequuntur nobis. Iusto rerum provident qui et. Necessitatibus sit est quis sed quisquam.', '2018-07-27 12:06:33', '2018-07-27 12:06:33'),
	(17, 'Eius amet hic aliquam.', 'Dolorem similique omnis eligendi omnis autem fuga officiis. Veniam est sint sit ipsum architecto. Magni ullam vitae perspiciatis reiciendis est nesciunt nisi.', '2018-07-27 12:06:33', '2018-07-27 12:06:33'),
	(18, 'Esse impedit vero nihil.', 'Adipisci sed et nulla fugiat consequuntur. Odit vitae magni placeat minus maiores dignissimos nulla. Atque laudantium saepe velit dignissimos qui dolores.', '2018-07-27 12:06:33', '2018-07-27 12:06:33'),
	(19, 'Sint sed et molestiae tempora autem delectus.', 'Officia voluptatem et deleniti quibusdam. Dolor pariatur omnis accusamus qui quidem. Quibusdam fugiat et quia. Aut sapiente corporis id quae est est.', '2018-07-27 12:06:33', '2018-07-27 12:06:33'),
	(20, 'Quia doloribus ut eum aut architecto voluptatem.', 'Necessitatibus consectetur error tempore ipsam expedita omnis ut mollitia. Deleniti ut dolores incidunt labore. Error adipisci quasi natus dolorum architecto architecto sit.', '2018-07-27 12:06:33', '2018-07-27 12:06:33'),
	(21, 'Ut ratione mollitia quas eos.', 'Libero minus deserunt recusandae dolore voluptate beatae. Animi debitis ipsa deleniti ratione. Est non doloribus quia totam nobis sit numquam. Aut quia beatae modi.', '2018-07-27 12:06:33', '2018-07-27 12:06:33'),
	(22, 'Fuga vel occaecati optio ab atque quia non autem.', 'Beatae suscipit aut velit dolor qui impedit sint. In id exercitationem deleniti. At dolor praesentium et.', '2018-07-27 12:06:33', '2018-07-27 12:06:33'),
	(23, 'Ut ut temporibus laboriosam rem vero quia.', 'Enim eveniet autem ducimus cupiditate non. Culpa sint non autem ab et. Dolor incidunt sint et nobis ea. Minus et placeat velit accusamus natus.', '2018-07-27 12:06:33', '2018-07-27 12:06:33'),
	(24, 'Ea quo explicabo eum.', 'Repellat adipisci autem vel dignissimos ad. Qui magnam ex optio repudiandae quia. Sint non omnis ad perspiciatis ut temporibus est.', '2018-07-27 12:06:33', '2018-07-27 12:06:33'),
	(25, 'Deserunt quisquam vel illo voluptatum explicabo.', 'Et vitae recusandae aliquam dolorem soluta id. Est est eius id alias. Quam aut doloribus occaecati. Dolore tenetur temporibus ipsum amet nostrum qui omnis.', '2018-07-27 12:06:33', '2018-07-27 12:06:33'),
	(26, 'Expedita cupiditate saepe maxime laborum.', 'Molestiae quia quia et. Deserunt ducimus autem quasi.', '2018-07-27 12:06:33', '2018-07-27 12:06:33'),
	(27, 'Natus ratione nobis illum qui cumque aut.', 'Id in ipsam facilis amet. In quia et perspiciatis officia odit minima odio. Voluptate quasi debitis ea nostrum culpa voluptate cum.', '2018-07-27 12:06:33', '2018-07-27 12:06:33'),
	(28, 'Odio quia et nobis quis libero a nam nostrum.', 'Magnam vitae iure repudiandae vel eum recusandae dolor quam. Ipsum quo perspiciatis et optio architecto quod numquam. Odio qui nulla quasi ipsam rerum.', '2018-07-27 12:06:33', '2018-07-27 12:06:33'),
	(29, 'Et nihil sit et expedita sit hic omnis.', 'Aut veritatis dolorem ullam quibusdam. Provident accusamus harum sit illum. Distinctio possimus ducimus et quos. Quia autem voluptas quia illum provident expedita.', '2018-07-27 12:06:33', '2018-07-27 12:06:33'),
	(30, 'Sint animi velit vel in ipsa aspernatur.', 'Assumenda totam eligendi ea maxime. Earum dolores ut modi. Pariatur nostrum in quis. Mollitia eius animi architecto culpa.', '2018-07-27 12:06:33', '2018-07-27 12:06:33'),
	(31, 'Test Title', 'Test Body', '2018-07-27 15:08:48', '2018-07-27 15:08:48');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;

-- Дамп структуры для таблица api-resources.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы api-resources.migrations: ~3 rows (приблизительно)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(16, '2014_10_12_000000_create_users_table', 1),
	(17, '2014_10_12_100000_create_password_resets_table', 1),
	(18, '2018_07_27_065755_create_articles_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Дамп данных таблицы api-resources.users: ~0 rows (приблизительно)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
