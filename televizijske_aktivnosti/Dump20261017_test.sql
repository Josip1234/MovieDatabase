-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tvact_test
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_expiration_index` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_locks_expiration_index` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film`
--

DROP TABLE IF EXISTS `film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `film` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `year` smallint(5) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film`
--

LOCK TABLES `film` WRITE;
/*!40000 ALTER TABLE `film` DISABLE KEYS */;
INSERT INTO `film` VALUES (1,'Shanelle Pacocha',1911,'2026-10-16 16:14:36','2026-10-16 16:14:36'),(2,'Ms. Kaitlin Buckridge DVM',1893,'2026-10-16 16:14:36','2026-10-16 16:14:36'),(3,'Carissa Labadie',1997,'2026-10-16 16:14:36','2026-10-16 16:14:36'),(4,'Erika Howe',1987,'2026-10-16 16:14:36','2026-10-16 16:14:36'),(5,'Dr. Buford Ratke',2023,'2026-10-16 16:14:36','2026-10-16 16:14:36'),(6,'Dr. Harmony Dare',1964,'2026-10-16 16:14:36','2026-10-16 16:14:36'),(7,'Prof. Janessa Mayer',2003,'2026-10-16 16:14:36','2026-10-16 16:14:36'),(8,'Joy Kuhn Jr.',1928,'2026-10-16 16:14:36','2026-10-16 16:14:36'),(9,'Alvena Bartell DDS',1920,'2026-10-16 16:14:36','2026-10-16 16:14:36'),(10,'Marianne Gibson',1959,'2026-10-16 16:14:36','2026-10-16 16:14:36');
/*!40000 ALTER TABLE `film` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film_vrsta`
--

DROP TABLE IF EXISTS `film_vrsta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `film_vrsta` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `broj_filma` bigint(20) unsigned NOT NULL,
  `broj_vrste` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `film_vrsta_broj_filma_foreign` (`broj_filma`),
  KEY `film_vrsta_broj_vrste_foreign` (`broj_vrste`),
  CONSTRAINT `film_vrsta_broj_filma_foreign` FOREIGN KEY (`broj_filma`) REFERENCES `film` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `film_vrsta_broj_vrste_foreign` FOREIGN KEY (`broj_vrste`) REFERENCES `vrsta_filma` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_vrsta`
--

LOCK TABLES `film_vrsta` WRITE;
/*!40000 ALTER TABLE `film_vrsta` DISABLE KEYS */;
INSERT INTO `film_vrsta` VALUES (1,8,10,'2026-10-16 17:11:15','2026-10-16 17:11:15'),(2,7,1,'2026-10-16 17:11:15','2026-10-16 17:11:15'),(3,5,8,'2026-10-16 17:11:15','2026-10-16 17:11:15'),(4,2,7,'2026-10-16 17:11:15','2026-10-16 17:11:15'),(5,8,1,'2026-10-16 17:11:15','2026-10-16 17:11:15'),(6,6,6,'2026-10-16 17:11:15','2026-10-16 17:11:15'),(7,6,3,'2026-10-16 17:11:15','2026-10-16 17:11:15'),(8,7,5,'2026-10-16 17:11:15','2026-10-16 17:11:15'),(9,8,9,'2026-10-16 17:11:15','2026-10-16 17:11:15'),(10,5,4,'2026-10-16 17:11:15','2026-10-16 17:11:15');
/*!40000 ALTER TABLE `film_vrsta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (4,'0001_01_01_000000_create_users_table',1),(5,'0001_01_01_000001_create_cache_table',1),(6,'0001_01_01_000002_create_jobs_table',1),(7,'2026_10_16_174648_create_film_table',2),(8,'2026_10_16_181835_create_vrsta_filma_table',3),(11,'2026_10_16_183522_create_film_vrsta_table',4),(12,'2026_10_17_074212_create_platforma_table',5),(13,'2026_10_17_081126_create_platforma_film_table',6);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `platforma`
--

DROP TABLE IF EXISTS `platforma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `platforma` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `naziv` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `platforma`
--

LOCK TABLES `platforma` WRITE;
/*!40000 ALTER TABLE `platforma` DISABLE KEYS */;
INSERT INTO `platforma` VALUES (1,'annabell.rutherford','Voluptatem consequatur et quam eos. Ut culpa assumenda id voluptatem. Voluptate facere vero distinctio.','2026-10-17 05:52:36','2026-10-17 05:52:36'),(2,'rutherford.mariela','Non autem fugit nemo iure necessitatibus. Illo recusandae voluptatibus dignissimos ex. Placeat et laudantium repellendus ut illo quia illum. Error quis et dolor quis qui.','2026-10-17 05:52:36','2026-10-17 05:52:36'),(3,'irussel','Facilis voluptas consequatur quia incidunt. Quos molestias id illo. Et consectetur ullam quam quas quod sed laudantium veniam. In velit at minus dolorem quis.','2026-10-17 05:52:36','2026-10-17 05:52:36'),(4,'mia28','Aut sit quaerat id. Dolorem reiciendis ipsum velit architecto autem sed. Dolore voluptatum magni iure iusto voluptas. Consectetur ut facere voluptatem perferendis assumenda dolorem tempore.','2026-10-17 05:52:36','2026-10-17 05:52:36'),(5,'ppurdy','Eveniet qui tenetur eos ut id quia. Excepturi ipsum eaque id ad suscipit ratione. Non at quasi quia aliquam qui adipisci consectetur.','2026-10-17 05:52:36','2026-10-17 05:52:36'),(6,'mchamplin','Tenetur quasi ut expedita eos. Accusantium laborum saepe ad unde aut ducimus minima. Vitae nostrum et et labore hic aliquid odio.','2026-10-17 05:52:36','2026-10-17 05:52:36'),(7,'ullrich.elissa','Qui soluta ut vero vero assumenda fugiat. Libero a dicta voluptatibus saepe reiciendis magni consequatur. Debitis nihil perferendis cum esse voluptate.','2026-10-17 05:52:36','2026-10-17 05:52:36'),(8,'hfunk','Sapiente dolor perferendis qui aspernatur aspernatur alias. Cumque nostrum quaerat cumque voluptas placeat ab est. Qui quod corporis aut illum.','2026-10-17 05:52:36','2026-10-17 05:52:36'),(9,'makayla.kertzmann','Magni in sunt sunt at ex est. Quia atque non in et tenetur voluptatem veniam.','2026-10-17 05:52:36','2026-10-17 05:52:36'),(10,'rodriguez.cleo','Nam aut dolore consequatur amet ipsa illo. Natus excepturi aliquam cum est. Cupiditate eligendi rerum facilis et. Ullam doloremque inventore ex repudiandae.','2026-10-17 05:52:36','2026-10-17 05:52:36');
/*!40000 ALTER TABLE `platforma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `platforma_film`
--

DROP TABLE IF EXISTS `platforma_film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `platforma_film` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `broj_filma` bigint(20) unsigned NOT NULL,
  `broj_platforme` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `platforma_film_broj_filma_foreign` (`broj_filma`),
  KEY `platforma_film_broj_platforme_foreign` (`broj_platforme`),
  CONSTRAINT `platforma_film_broj_filma_foreign` FOREIGN KEY (`broj_filma`) REFERENCES `film` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `platforma_film_broj_platforme_foreign` FOREIGN KEY (`broj_platforme`) REFERENCES `platforma` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `platforma_film`
--

LOCK TABLES `platforma_film` WRITE;
/*!40000 ALTER TABLE `platforma_film` DISABLE KEYS */;
INSERT INTO `platforma_film` VALUES (1,4,10,'2026-10-17 06:31:38','2026-10-17 06:31:38'),(2,10,3,'2026-10-17 06:31:38','2026-10-17 06:31:38'),(3,2,1,'2026-10-17 06:31:38','2026-10-17 06:31:38'),(4,7,1,'2026-10-17 06:31:38','2026-10-17 06:31:38'),(5,6,8,'2026-10-17 06:31:38','2026-10-17 06:31:38'),(6,6,8,'2026-10-17 06:31:38','2026-10-17 06:31:38'),(7,10,6,'2026-10-17 06:31:38','2026-10-17 06:31:38'),(8,1,3,'2026-10-17 06:31:38','2026-10-17 06:31:38'),(9,3,5,'2026-10-17 06:31:38','2026-10-17 06:31:38'),(10,2,10,'2026-10-17 06:31:38','2026-10-17 06:31:38');
/*!40000 ALTER TABLE `platforma_film` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('vIsYupAflYBbWcgqu5dbIqZKPJhwFBcaHsTPZ80Z',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVVN6dnJjQWgzT0F0WDk3Z1JoTEIyeXBudGhnaHlnRkdyMGVveUZTbSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7Tjt9fQ==',1792220403),('ztExIFl9a6AloVOv5pQPSZ4XcHHOpKACVrocAVri',8,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36','YTo1OntzOjY6Il90b2tlbiI7czo0MDoiT1dSaGo3cUI3bTc2UG5jVUVYenpkUGt2MGY4dG9XQkRyam14cTZJQyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO3M6NToicm91dGUiO3M6OToiZGFzaGJvYXJkIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6ODtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2NDoiOTkwYTNhYmMyYzBmMDZkOWY0NzZlZTQyMTU0Y2FiODZhMWZmYzdkYTYzMzE0MWI2N2E0NmZmOTJhODEwNGFjMCI7fQ==',1792178660);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` tinyint(1) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Dr. Jeffry Gusikowski','kuhn.elaina@example.net','2026-10-16 15:43:19','$2y$12$UPMan3JZdUWCAGAMh8PiMu6gi.J3lxACGQoi.yXxy1oTyTRQkXr8K',0,'tPBKfzsEEq','2026-10-16 15:43:20','2026-10-16 15:43:20'),(2,'Ms. Carley Runte II','zfritsch@example.com','2026-10-16 15:43:20','$2y$12$UPMan3JZdUWCAGAMh8PiMu6gi.J3lxACGQoi.yXxy1oTyTRQkXr8K',1,'5OFjhxGNevLKjvMkVcTpdWSymybGLCQJoH3tv2PYtFDAwQhhEiXErlFN85mN','2026-10-16 15:43:20','2026-10-16 15:43:20'),(3,'Eda Upton','alaina34@example.net','2026-10-16 15:43:20','$2y$12$UPMan3JZdUWCAGAMh8PiMu6gi.J3lxACGQoi.yXxy1oTyTRQkXr8K',1,'KKvCJqra48xVdwuajIZz2Jk1BcCMHBAg27BSMzXZj8ElkMytVEjyALBUeucN','2026-10-16 15:43:20','2026-10-16 15:43:20'),(4,'Oleta Bogan I','utowne@example.com','2026-10-16 15:43:20','$2y$12$UPMan3JZdUWCAGAMh8PiMu6gi.J3lxACGQoi.yXxy1oTyTRQkXr8K',0,'xbFRE9Yc5W','2026-10-16 15:43:20','2026-10-16 15:43:20'),(5,'Kiera Fadel','evangeline.gottlieb@example.net','2026-10-16 15:43:20','$2y$12$UPMan3JZdUWCAGAMh8PiMu6gi.J3lxACGQoi.yXxy1oTyTRQkXr8K',0,'CY8DpGKSYe','2026-10-16 15:43:20','2026-10-16 15:43:20'),(6,'Ms. Adelle Dietrich III','aron.dooley@example.net','2026-10-16 15:43:20','$2y$12$UPMan3JZdUWCAGAMh8PiMu6gi.J3lxACGQoi.yXxy1oTyTRQkXr8K',0,'ziZW2COX6e','2026-10-16 15:43:20','2026-10-16 15:43:20'),(7,'Dr. Nathan Tillman','cecilia.marquardt@example.net','2026-10-16 15:43:20','$2y$12$UPMan3JZdUWCAGAMh8PiMu6gi.J3lxACGQoi.yXxy1oTyTRQkXr8K',0,'n6FMtZKnHE','2026-10-16 15:43:20','2026-10-16 15:43:20'),(8,'Ludie Daugherty','ofritsch@example.org','2026-10-16 15:43:20','$2y$12$UPMan3JZdUWCAGAMh8PiMu6gi.J3lxACGQoi.yXxy1oTyTRQkXr8K',1,'ZM9tUlCYh1','2026-10-16 15:43:20','2026-10-16 15:43:20'),(9,'Marlon Hegmann','magnolia13@example.org','2026-10-16 15:43:20','$2y$12$UPMan3JZdUWCAGAMh8PiMu6gi.J3lxACGQoi.yXxy1oTyTRQkXr8K',1,'lsYxHE3K1M','2026-10-16 15:43:20','2026-10-16 15:43:20'),(10,'Logan Dicki','obraun@example.org','2026-10-16 15:43:20','$2y$12$UPMan3JZdUWCAGAMh8PiMu6gi.J3lxACGQoi.yXxy1oTyTRQkXr8K',1,'sgU6Y5i0ua','2026-10-16 15:43:20','2026-10-16 15:43:20');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vrsta_filma`
--

DROP TABLE IF EXISTS `vrsta_filma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vrsta_filma` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `naziv` varchar(50) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrsta_filma`
--

LOCK TABLES `vrsta_filma` WRITE;
/*!40000 ALTER TABLE `vrsta_filma` DISABLE KEYS */;
INSERT INTO `vrsta_filma` VALUES (1,'Dejon Lynch DDS','2026-10-16 16:25:42','2026-10-16 16:25:42'),(2,'Chyna Leffler','2026-10-16 16:25:42','2026-10-16 16:25:42'),(3,'Madeline Connelly','2026-10-16 16:25:42','2026-10-16 16:25:42'),(4,'Lucy Ankunding','2026-10-16 16:25:42','2026-10-16 16:25:42'),(5,'Bert Rodriguez','2026-10-16 16:25:42','2026-10-16 16:25:42'),(6,'Rose King IV','2026-10-16 16:25:42','2026-10-16 16:25:42'),(7,'Ms. Liliana Mosciski','2026-10-16 16:25:42','2026-10-16 16:25:42'),(8,'Anissa Marquardt','2026-10-16 16:25:42','2026-10-16 16:25:42'),(9,'Eugenia Moore Sr.','2026-10-16 16:25:42','2026-10-16 16:25:42'),(10,'Mr. Mitchel Corwin','2026-10-16 16:25:42','2026-10-16 16:25:42');
/*!40000 ALTER TABLE `vrsta_filma` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-17 10:36:18
