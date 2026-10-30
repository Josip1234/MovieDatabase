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
-- Table structure for table `film_detalj`
--

DROP TABLE IF EXISTS `film_detalj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `film_detalj` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `trajanje` int(10) unsigned NOT NULL,
  `opis_filma` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_detalj`
--

LOCK TABLES `film_detalj` WRITE;
/*!40000 ALTER TABLE `film_detalj` DISABLE KEYS */;
INSERT INTO `film_detalj` VALUES (1,111,'Expedita excepturi sed ducimus quia. Et quibusdam dolor cupiditate nam. Sit ut est accusamus culpa qui ut.','2026-10-19 08:51:53','2026-10-19 08:51:53'),(2,90,'Ipsum nihil consequatur tempora totam officia velit. Voluptas omnis consequatur qui aspernatur quis. Nam ipsam et soluta voluptatibus soluta.','2026-10-19 08:51:54','2026-10-19 08:51:54'),(3,105,'Ut et consequatur et qui suscipit accusantium. Ea cupiditate et maxime at adipisci eos. Culpa hic qui et facere qui totam vel.','2026-10-19 08:51:54','2026-10-19 08:51:54'),(4,105,'Necessitatibus aut inventore in molestiae accusantium dolorum animi sapiente. Nihil et ipsum odit possimus sed. Ea id eligendi corporis sit quibusdam eos in. Sed quasi nihil non in.','2026-10-19 08:51:54','2026-10-19 08:51:54'),(5,108,'Velit beatae quasi et iste voluptatem non. Deserunt sed et nesciunt eum. Odit minus officia quia. Iure dignissimos pariatur deleniti consequuntur tenetur.','2026-10-19 08:51:54','2026-10-19 08:51:54'),(6,111,'Vel repellendus quaerat earum id expedita aut rem neque. Architecto voluptatibus architecto quae ut dignissimos aut. Et in qui beatae id. Dolorum voluptas vero consequatur enim molestiae.','2026-10-19 08:51:54','2026-10-19 08:51:54'),(7,100,'Eum nostrum excepturi sapiente harum nulla. Neque ipsa quia exercitationem necessitatibus eius qui. Maiores quia excepturi minima et.','2026-10-19 08:51:54','2026-10-19 08:51:54'),(8,103,'Rem inventore qui eum nulla molestiae repellat aliquid. Fugit mollitia rerum aut amet. Quia voluptatem iure asperiores. Sint incidunt perferendis et consequatur aperiam.','2026-10-19 08:51:54','2026-10-19 08:51:54'),(9,90,'Voluptatem voluptatem nesciunt dolorem doloribus facilis recusandae quod. Optio voluptatem reprehenderit placeat maiores ab. Aut eos consequuntur et sapiente repellendus.','2026-10-19 08:51:54','2026-10-19 08:51:54'),(10,101,'Non numquam velit eum ipsum consectetur. Nisi commodi error sint esse modi inventore quia.','2026-10-19 08:51:54','2026-10-19 08:51:54');
/*!40000 ALTER TABLE `film_detalj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film_detalji`
--

DROP TABLE IF EXISTS `film_detalji`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `film_detalji` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `broj_filma` bigint(20) unsigned NOT NULL,
  `broj_detalja` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `film_detalji_broj_filma_foreign` (`broj_filma`),
  KEY `film_detalji_broj_detalja_foreign` (`broj_detalja`),
  CONSTRAINT `film_detalji_broj_detalja_foreign` FOREIGN KEY (`broj_detalja`) REFERENCES `film_detalj` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `film_detalji_broj_filma_foreign` FOREIGN KEY (`broj_filma`) REFERENCES `film` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_detalji`
--

LOCK TABLES `film_detalji` WRITE;
/*!40000 ALTER TABLE `film_detalji` DISABLE KEYS */;
INSERT INTO `film_detalji` VALUES (1,10,1,'2026-10-19 09:18:43','2026-10-19 09:18:43'),(2,2,6,'2026-10-19 09:18:43','2026-10-19 09:18:43'),(3,4,2,'2026-10-19 09:18:43','2026-10-19 09:18:43'),(4,1,4,'2026-10-19 09:18:43','2026-10-19 09:18:43'),(5,1,3,'2026-10-19 09:18:43','2026-10-19 09:18:43'),(6,7,6,'2026-10-19 09:18:43','2026-10-19 09:18:43'),(7,6,3,'2026-10-19 09:18:43','2026-10-19 09:18:43'),(8,2,7,'2026-10-19 09:18:43','2026-10-19 09:18:43'),(9,4,5,'2026-10-19 09:18:43','2026-10-19 09:18:43'),(10,4,9,'2026-10-19 09:18:43','2026-10-19 09:18:43');
/*!40000 ALTER TABLE `film_detalji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film_glumci`
--

DROP TABLE IF EXISTS `film_glumci`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `film_glumci` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `broj_filma` bigint(20) unsigned NOT NULL,
  `broj_osobe` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `film_glumci_broj_filma_foreign` (`broj_filma`),
  KEY `film_glumci_broj_osobe_foreign` (`broj_osobe`),
  CONSTRAINT `film_glumci_broj_filma_foreign` FOREIGN KEY (`broj_filma`) REFERENCES `film` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `film_glumci_broj_osobe_foreign` FOREIGN KEY (`broj_osobe`) REFERENCES `person` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_glumci`
--

LOCK TABLES `film_glumci` WRITE;
/*!40000 ALTER TABLE `film_glumci` DISABLE KEYS */;
INSERT INTO `film_glumci` VALUES (1,4,3,'2026-10-23 12:36:26','2026-10-23 12:36:26'),(2,3,7,'2026-10-23 12:36:26','2026-10-23 12:36:26'),(3,9,2,'2026-10-23 12:36:26','2026-10-23 12:36:26'),(4,3,2,'2026-10-23 12:36:26','2026-10-23 12:36:26'),(5,2,5,'2026-10-23 12:36:26','2026-10-23 12:36:26'),(6,10,4,'2026-10-23 12:36:26','2026-10-23 12:36:26'),(7,9,10,'2026-10-23 12:36:26','2026-10-23 12:36:26'),(8,5,7,'2026-10-23 12:36:26','2026-10-23 12:36:26'),(9,2,7,'2026-10-23 12:36:26','2026-10-23 12:36:26'),(10,2,3,'2026-10-23 12:36:26','2026-10-23 12:36:26');
/*!40000 ALTER TABLE `film_glumci` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film_uloge`
--

DROP TABLE IF EXISTS `film_uloge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `film_uloge` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_filma` bigint(20) unsigned NOT NULL,
  `broj_uloge` bigint(20) unsigned NOT NULL,
  `broj_osobe` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `film_uloge_id_filma_foreign` (`id_filma`),
  KEY `film_uloge_broj_uloge_foreign` (`broj_uloge`),
  KEY `film_uloge_broj_osobe_foreign` (`broj_osobe`),
  CONSTRAINT `film_uloge_broj_osobe_foreign` FOREIGN KEY (`broj_osobe`) REFERENCES `person` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `film_uloge_broj_uloge_foreign` FOREIGN KEY (`broj_uloge`) REFERENCES `uloga` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `film_uloge_id_filma_foreign` FOREIGN KEY (`id_filma`) REFERENCES `film` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_uloge`
--

LOCK TABLES `film_uloge` WRITE;
/*!40000 ALTER TABLE `film_uloge` DISABLE KEYS */;
INSERT INTO `film_uloge` VALUES (1,9,10,5,'2026-10-24 12:26:55','2026-10-24 12:26:55'),(2,7,4,2,'2026-10-24 12:26:55','2026-10-24 12:26:55'),(3,6,3,1,'2026-10-24 12:26:55','2026-10-24 12:26:55'),(4,6,1,1,'2026-10-24 12:26:55','2026-10-24 12:26:55'),(5,1,8,1,'2026-10-24 12:26:55','2026-10-24 12:26:55'),(6,5,5,6,'2026-10-24 12:26:55','2026-10-24 12:26:55'),(7,8,1,10,'2026-10-24 12:26:55','2026-10-24 12:26:55'),(8,3,9,9,'2026-10-24 12:26:55','2026-10-24 12:26:55'),(9,3,5,3,'2026-10-24 12:26:55','2026-10-24 12:26:55'),(10,5,8,4,'2026-10-24 12:26:55','2026-10-24 12:26:55');
/*!40000 ALTER TABLE `film_uloge` ENABLE KEYS */;
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
-- Table structure for table `filmovi_pregled`
--

DROP TABLE IF EXISTS `filmovi_pregled`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `filmovi_pregled` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_filma` bigint(20) unsigned NOT NULL,
  `id_pregleda` bigint(20) unsigned NOT NULL,
  `id_usera` bigint(20) unsigned DEFAULT NULL,
  `id_platforme` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `filmovi_pregled_id_filma_foreign` (`id_filma`),
  KEY `filmovi_pregled_id_pregleda_foreign` (`id_pregleda`),
  KEY `filmovi_pregled_id_usera_foreign` (`id_usera`),
  KEY `filmovi_pregled_id_platforme_foreign` (`id_platforme`),
  CONSTRAINT `filmovi_pregled_id_filma_foreign` FOREIGN KEY (`id_filma`) REFERENCES `film` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `filmovi_pregled_id_platforme_foreign` FOREIGN KEY (`id_platforme`) REFERENCES `platforma` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `filmovi_pregled_id_pregleda_foreign` FOREIGN KEY (`id_pregleda`) REFERENCES `pregled` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `filmovi_pregled_id_usera_foreign` FOREIGN KEY (`id_usera`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `filmovi_pregled`
--

LOCK TABLES `filmovi_pregled` WRITE;
/*!40000 ALTER TABLE `filmovi_pregled` DISABLE KEYS */;
INSERT INTO `filmovi_pregled` VALUES (1,4,7,5,5,'2026-10-30 17:52:50','2026-10-30 17:52:50'),(2,7,6,NULL,NULL,'2026-10-30 17:52:50','2026-10-30 17:52:50'),(3,6,9,NULL,NULL,'2026-10-30 17:52:50','2026-10-30 17:52:50'),(4,4,1,NULL,NULL,'2026-10-30 17:52:50','2026-10-30 17:52:50'),(5,5,6,11,NULL,'2026-10-30 17:52:50','2026-10-30 17:52:50'),(6,4,8,NULL,6,'2026-10-30 17:52:50','2026-10-30 17:52:50'),(7,4,8,1,NULL,'2026-10-30 17:52:50','2026-10-30 17:52:50'),(8,10,8,NULL,NULL,'2026-10-30 17:52:50','2026-10-30 17:52:50'),(9,10,4,5,10,'2026-10-30 17:52:50','2026-10-30 17:52:50'),(10,9,5,20,NULL,'2026-10-30 17:52:50','2026-10-30 17:52:50');
/*!40000 ALTER TABLE `filmovi_pregled` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (4,'0001_01_01_000000_create_users_table',1),(5,'0001_01_01_000001_create_cache_table',1),(6,'0001_01_01_000002_create_jobs_table',1),(7,'2026_10_16_174648_create_film_table',2),(8,'2026_10_16_181835_create_vrsta_filma_table',3),(11,'2026_10_16_183522_create_film_vrsta_table',4),(12,'2026_10_17_074212_create_platforma_table',5),(13,'2026_10_17_081126_create_platforma_film_table',6),(14,'2026_10_19_103438_create_film_detalj_table',7),(15,'2026_10_19_110454_create_film_detalji_table',8),(17,'2026_10_20_135107_create_person_table',9),(18,'2026_10_23_142406_create_film_glumci_table',10),(19,'2026_10_24_140110_create_uloga_table',11),(20,'2026_10_24_141310_create_film_uloge_table',12),(22,'2026_10_29_095757_create_person_detail_table',13),(23,'2026_10_30_175337_create_pregled_table',14),(24,'2026_10_30_181039_create_filmovi_pregled_table',15);
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
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `state_id` varchar(255) NOT NULL,
  `id_card_number` int(11) NOT NULL,
  `oib_upi` bigint(20) NOT NULL,
  `mbo` int(11) DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `sex` char(1) NOT NULL,
  `citizenship` varchar(255) NOT NULL,
  `date_of_birth` date NOT NULL,
  `date_of_expiry` date DEFAULT NULL,
  `picture` tinytext NOT NULL,
  `signature` tinytext DEFAULT NULL,
  `residence` varchar(255) DEFAULT NULL,
  `id_issued_by` varchar(255) DEFAULT NULL,
  `date_of_issue` date DEFAULT NULL,
  `employment_status` tinyint(4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idCardNumUk` (`id_card_number`),
  UNIQUE KEY `oibUk` (`oib_upi`),
  UNIQUE KEY `pictureUk` (`picture`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,'Croatia',108179723,290,167,'Dashawn','Grady','M','Slovenian','2026-07-28','1994-08-31','https://brown.biz/minima-corporis-corporis-porro-repellendus-autem.html','','','SCOTLAND YARD',NULL,1,'1973-10-16 10:10:10','1974-04-14 02:44:13'),(2,'United States of America (the)',4508,9,1380,'Modesto','Thiel','M','of Great Britain','1995-04-16','2000-03-15','http://friesen.net/et-eveniet-nihil-dolorum-qui-ut-deleniti-quia-quisquam','https://www.welch.net/aut-sit-neque-dolor-est-aut','18280 Ziemann Radial\nBrayanview, AZ 56631-7584','','1990-12-17',1,'1994-02-14 10:36:57','2009-12-24 03:02:06'),(3,'Philippines (the)',97180361,472889037,9,'Yadira','Marvin','F','Croatian','1995-05-21','2006-08-19','http://weissnat.com/quibusdam-reprehenderit-aut-odit-nulla-esse-nulla-vel-ut','https://www.bashirian.biz/ut-facilis-omnis-blanditiis','','PU POŽEŠKO-SLAVONSKA','1970-01-17',0,'1983-03-01 13:53:12','2010-08-22 05:18:55'),(4,'Ecuador',64763178,669,NULL,'Justyn','Greenholt','F','of Great Britain','1974-04-28','2004-08-24','http://www.barton.info/aliquid-magnam-magni-quibusdam.html','http://www.cremin.net/et-reprehenderit-sit-qui-rerum-aliquid','61466 Liliana Squares\nJaylinchester, HI 63420','PU POŽEŠKO-SLAVONSKA','2018-02-01',0,'1981-06-05 08:59:20','2004-07-22 07:39:19'),(5,'Philippines (the)',573368214,888381223,3,'Jimmie','Harvey','F','Slovenian','2009-08-10','2012-04-14','http://kreiger.com/rerum-illum-ut-voluptas-impedit-et','','','POLICE DEPARTMENT OF NEW YORK USA','2016-05-18',NULL,'1995-08-25 16:32:02','1995-04-07 05:13:55'),(6,'Timor-Leste',1890834,979146112,40148949,'Elmo','Marquardt','F','Croatian','2026-01-24',NULL,'http://www.wehner.net/','','','POLICE DEPARTMENT OF NEW YORK USA',NULL,1,'2008-03-19 01:55:25','1999-11-09 05:16:46'),(7,'Philippines (the)',690801,2,NULL,'Gudrun','Abbott','F','American','2026-02-17',NULL,'http://zboncak.com/explicabo-architecto-culpa-in-harum-esse-voluptatum-doloribus-ex.html','','','POLICE DEPARTMENT OF NEW YORK USA','2024-05-14',NULL,'1983-02-26 10:29:06','2025-01-18 23:42:06'),(8,'Timor-Leste',942272370,5,403,'Rosario','Kunze','M','Croatian','2017-05-07',NULL,'http://www.kerluke.org/libero-deserunt-dolorem-adipisci-amet-repudiandae-impedit-earum','http://champlin.com/in-et-beatae-ipsam-enim','9320 Bailey Drives\nDachfurt, DC 85455-8405','POLICE DEPARTMENT OF NEW YORK USA','1995-03-27',NULL,'2009-02-10 09:53:06','2014-05-06 04:37:50'),(9,'Ecuador',3341,7412079,256,'Cleora','Murazik','M','American','2025-12-18',NULL,'http://www.moen.com/qui-magnam-dolores-ut-eum-deserunt-reprehenderit.html','https://www.mosciski.info/ipsam-voluptate-qui-libero-excepturi-molestiae-temporibus-odit','','SCOTLAND YARD','2026-01-24',0,'2019-11-05 14:32:35','2014-11-18 08:08:33'),(10,'Ukraine',69,2458908,2749324,'Milo','Ankunding','M','Slovenian','2019-10-26',NULL,'http://langworth.biz/','','','SCOTLAND YARD',NULL,1,'2012-12-17 01:03:08','2003-01-14 21:12:06');
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `person_detail`
--

DROP TABLE IF EXISTS `person_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `person_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `person_id` bigint(20) unsigned NOT NULL,
  `place_of_birth` varchar(255) NOT NULL,
  `job_history` text DEFAULT NULL,
  `year_of_death` smallint(6) DEFAULT NULL,
  `place_of_death` varchar(255) DEFAULT NULL,
  `grave_location` varchar(255) DEFAULT NULL,
  `cause_of_death` text DEFAULT NULL,
  `height_in_cm` varchar(255) NOT NULL,
  `weight_in_kg` varchar(255) NOT NULL,
  `short_name` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `person_uk` (`person_id`),
  CONSTRAINT `person_detail_person_id_foreign` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person_detail`
--

LOCK TABLES `person_detail` WRITE;
/*!40000 ALTER TABLE `person_detail` DISABLE KEYS */;
INSERT INTO `person_detail` VALUES (1,6,'77641 Reichert Islands Suite 231,Guernsey',NULL,NULL,NULL,'9976 Conroy Dale,Belgium','Similique qui neque ullam et architecto porro veritatis illum. Dolorem consequuntur omnis aut occaecati. Quam voluptatem sit ipsa omnis. Corrupti non voluptates qui expedita.','159','115',NULL,'maye51','2026-10-29 09:35:26','2026-10-29 09:35:26'),(2,9,'3427 Treutel Knolls Apt. 988,Madagascar','Quis vitae corporis esse natus. Error ullam assumenda possimus corporis harum at commodi sit. Corporis qui rerum voluptatem non aliquid sit. Atque nostrum perspiciatis animi.',NULL,'63757 Wuckert Course,Turkey','984 Kirlin Ridge Suite 058,Bulgaria',NULL,'4','144','Alice. \'Come, let\'s hear some of YOUR adventures.\' \'I could tell you just now what the next verse,\' the Gryphon in an angry tone, \'Why, Mary Ann, what ARE you talking to?\' said one of the Mock.',NULL,'2026-10-29 09:35:26','2026-10-29 09:35:26'),(3,10,'103 Cassin Oval Suite 796,Japan','Ut corrupti totam dolor sunt magni excepturi. Voluptatem quae non totam debitis aut recusandae eum. Voluptatibus quos consequatur dolorem qui itaque quod. Harum qui unde commodi omnis tempore.',NULL,NULL,'62652 Lang Gateway Suite 696,Tuvalu','Dormouse; \'--well in.\' This answer so confused poor Alice, \'it would have appeared to them to sell,\' the Hatter said, tossing his head contemptuously. \'I dare say you\'re wondering why I don\'t.','139','21','leland.hirthe','margarette.rogahn','2026-10-29 09:35:26','2026-10-29 09:35:26'),(4,4,'95727 Kling Neck,Angola','Et atque impedit corporis repellendus sit molestiae aspernatur error. Est aut molestiae ex rerum. Velit quia libero aperiam animi reprehenderit in doloremque asperiores.',1414,'827 Lemuel Mission Apt. 135,Lao People\'s Democratic Republic',NULL,NULL,'30','257','Caterpillar decidedly, and the Hatter went on, \'that they\'d let Dinah stop in the sun. (IF you don\'t like the look of the country is, you ARE a simpleton.\' Alice did not like the largest telescope.',NULL,'2026-10-29 09:35:26','2026-10-29 09:35:26'),(5,3,'17144 Chance Ferry,French Southern Territories',NULL,NULL,NULL,'1235 Morissette Stream,Senegal','Dinah my dear! I wish you wouldn\'t keep appearing and vanishing so suddenly: you make one quite giddy.\' \'All right,\' said the Caterpillar. Alice folded her hands, and began:-- \'You are old,\' said.','192','226','renner.katarina','pwiza','2026-10-29 09:35:26','2026-10-29 09:35:26');
/*!40000 ALTER TABLE `person_detail` ENABLE KEYS */;
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
-- Table structure for table `pregled`
--

DROP TABLE IF EXISTS `pregled`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pregled` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `datum_vrijeme` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pregled`
--

LOCK TABLES `pregled` WRITE;
/*!40000 ALTER TABLE `pregled` DISABLE KEYS */;
INSERT INTO `pregled` VALUES (1,'2009-10-02 19:15:49','2026-10-30 17:08:25','2026-10-30 17:08:25'),(2,'2026-08-05 20:06:26','2026-10-30 17:08:25','2026-10-30 17:08:25'),(3,'2006-09-26 12:42:38','2026-10-30 17:08:25','2026-10-30 17:08:25'),(4,'2009-08-22 07:44:08','2026-10-30 17:08:25','2026-10-30 17:08:25'),(5,'1999-01-10 01:42:11','2026-10-30 17:08:25','2026-10-30 17:08:25'),(6,'2009-01-27 12:29:56','2026-10-30 17:08:25','2026-10-30 17:08:25'),(7,'1983-01-15 05:11:06','2026-10-30 17:08:25','2026-10-30 17:08:25'),(8,'2020-04-22 02:37:15','2026-10-30 17:08:25','2026-10-30 17:08:25'),(9,'2022-07-02 13:29:56','2026-10-30 17:08:25','2026-10-30 17:08:25'),(10,'1983-12-22 11:27:01','2026-10-30 17:08:25','2026-10-30 17:08:25');
/*!40000 ALTER TABLE `pregled` ENABLE KEYS */;
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
INSERT INTO `sessions` VALUES ('d0Tl4SVWOsNELhDqazgzyyNMJWMrB3xFzf1WVAjX',6,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36','YTo1OntzOjY6Il90b2tlbiI7czo0MDoiUHVyTkp1U3FONEpOUW9GbXVQaFhwc3lpSjlvSzNZNTRWdVZqaFBKNyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO3M6NToicm91dGUiO3M6OToiZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NjtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2NDoiOTkwYTNhYmMyYzBmMDZkOWY0NzZlZTQyMTU0Y2FiODZhMWZmYzdkYTYzMzE0MWI2N2E0NmZmOTJhODEwNGFjMCI7fQ==',1792226291),('lerpGKlpf3PjADEnkTVi2CowJXsbKAv4vDAF9TXv',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoidUo5VWhIOG82T0t1NnNFOExGcXM3emFZU3F3MzlXSDNPY2ZGMTZEbyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7Tjt9fQ==',1792767167),('SxEiACxuC01HRij565okipnxVJr8seT7Q62IFAgl',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVGZxZzVkbGZsZllpdWVtU2ZBN05PbkJoUzNtNkYzMlFxZmNqYXlhbCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1793267790),('vIsYupAflYBbWcgqu5dbIqZKPJhwFBcaHsTPZ80Z',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVVN6dnJjQWgzT0F0WDk3Z1JoTEIyeXBudGhnaHlnRkdyMGVveUZTbSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7Tjt9fQ==',1792220403),('ztExIFl9a6AloVOv5pQPSZ4XcHHOpKACVrocAVri',8,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36','YTo1OntzOjY6Il90b2tlbiI7czo0MDoiT1dSaGo3cUI3bTc2UG5jVUVYenpkUGt2MGY4dG9XQkRyam14cTZJQyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO3M6NToicm91dGUiO3M6OToiZGFzaGJvYXJkIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6ODtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2NDoiOTkwYTNhYmMyYzBmMDZkOWY0NzZlZTQyMTU0Y2FiODZhMWZmYzdkYTYzMzE0MWI2N2E0NmZmOTJhODEwNGFjMCI7fQ==',1792178660);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uloga`
--

DROP TABLE IF EXISTS `uloga`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uloga` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `character` varchar(50) NOT NULL,
  `description` tinytext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uloga`
--

LOCK TABLES `uloga` WRITE;
/*!40000 ALTER TABLE `uloga` DISABLE KEYS */;
INSERT INTO `uloga` VALUES (1,'SydneyDooley','Qui ullam maiores labore omnis. Doloremque laudantium quo et officiis. Aspernatur modi est sit provident a. Excepturi laborum sed minima sit earum corporis. Rerum nesciunt dolorum aliquam.','2026-10-24 12:09:37','2026-10-24 12:09:37'),(2,'HettieYost','Illo fugit et nulla minus dicta accusantium dolores. Quibusdam dolorem illum amet quae. Corrupti tempora quod ab eum. Omnis modi mollitia voluptas perspiciatis quasi sapiente at.','2026-10-24 12:09:37','2026-10-24 12:09:37'),(3,'MaximusWalsh','Voluptatem explicabo necessitatibus ad qui sit rerum porro. Quae provident quidem quia quae enim eius mollitia et. Suscipit qui non qui. Expedita a soluta distinctio enim omnis ipsa impedit.','2026-10-24 12:09:37','2026-10-24 12:09:37'),(4,'KathrynHyatt','Nihil repudiandae ut minima ratione et. Et facilis animi qui totam odio voluptatem alias. Rerum voluptas sit quisquam velit necessitatibus.','2026-10-24 12:09:37','2026-10-24 12:09:37'),(5,'BettyMraz','Nobis aut placeat est. Rem architecto est et ipsum quidem explicabo dicta. Iure nemo architecto quasi quaerat tenetur.','2026-10-24 12:09:37','2026-10-24 12:09:37'),(6,'AveryMurray','Facere reiciendis non sapiente eaque nostrum delectus odio. Voluptatem est blanditiis aliquam error. Et saepe necessitatibus placeat ullam. Numquam eos quibusdam velit illum et.','2026-10-24 12:09:37','2026-10-24 12:09:37'),(7,'MartinDeckow','Necessitatibus velit odit possimus. Iusto ducimus ipsa pariatur vel iure. Omnis hic veniam et sunt accusamus est.','2026-10-24 12:09:37','2026-10-24 12:09:37'),(8,'IsabelleTreutel','Sit et blanditiis in at rem voluptate voluptatem. Sit excepturi rerum consequuntur dolorum rerum dolores. Et nostrum blanditiis sit delectus sit et.','2026-10-24 12:09:37','2026-10-24 12:09:37'),(9,'EliseoLangworth','Possimus architecto labore est ad aut nobis inventore. Vel hic quae qui voluptatem. Aliquid ut voluptatem reprehenderit nulla recusandae voluptatem.','2026-10-24 12:09:37','2026-10-24 12:09:37'),(10,'MelodyGlover','Et sit recusandae harum. Dolores dignissimos ut reiciendis. Deserunt necessitatibus sequi qui. Officiis eveniet qui adipisci qui deleniti minima et.','2026-10-24 12:09:37','2026-10-24 12:09:37');
/*!40000 ALTER TABLE `uloga` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Dr. Jeffry Gusikowski','kuhn.elaina@example.net','2026-10-16 15:43:19','$2y$12$UPMan3JZdUWCAGAMh8PiMu6gi.J3lxACGQoi.yXxy1oTyTRQkXr8K',0,'vENxyYTP42nLFlVBwva7fUfPiUJWwPZyu8uBjmiErWKceMnq08j9OPtdYRw2','2026-10-16 15:43:20','2026-10-16 15:43:20'),(2,'Ms. Carley Runte II','zfritsch@example.com','2026-10-16 15:43:20','$2y$12$UPMan3JZdUWCAGAMh8PiMu6gi.J3lxACGQoi.yXxy1oTyTRQkXr8K',1,'5OFjhxGNevLKjvMkVcTpdWSymybGLCQJoH3tv2PYtFDAwQhhEiXErlFN85mN','2026-10-16 15:43:20','2026-10-16 15:43:20'),(3,'Eda Upton','alaina34@example.net','2026-10-16 15:43:20','$2y$12$UPMan3JZdUWCAGAMh8PiMu6gi.J3lxACGQoi.yXxy1oTyTRQkXr8K',1,'KKvCJqra48xVdwuajIZz2Jk1BcCMHBAg27BSMzXZj8ElkMytVEjyALBUeucN','2026-10-16 15:43:20','2026-10-16 15:43:20'),(4,'Oleta Bogan I','utowne@example.com','2026-10-16 15:43:20','$2y$12$UPMan3JZdUWCAGAMh8PiMu6gi.J3lxACGQoi.yXxy1oTyTRQkXr8K',0,'xbFRE9Yc5W','2026-10-16 15:43:20','2026-10-16 15:43:20'),(5,'Kiera Fadel','evangeline.gottlieb@example.net','2026-10-16 15:43:20','$2y$12$UPMan3JZdUWCAGAMh8PiMu6gi.J3lxACGQoi.yXxy1oTyTRQkXr8K',0,'CY8DpGKSYe','2026-10-16 15:43:20','2026-10-16 15:43:20'),(6,'Ms. Adelle Dietrich III','aron.dooley@example.net','2026-10-16 15:43:20','$2y$12$UPMan3JZdUWCAGAMh8PiMu6gi.J3lxACGQoi.yXxy1oTyTRQkXr8K',0,'ziZW2COX6e','2026-10-16 15:43:20','2026-10-16 15:43:20'),(7,'Dr. Nathan Tillman','cecilia.marquardt@example.net','2026-10-16 15:43:20','$2y$12$UPMan3JZdUWCAGAMh8PiMu6gi.J3lxACGQoi.yXxy1oTyTRQkXr8K',0,'n6FMtZKnHE','2026-10-16 15:43:20','2026-10-16 15:43:20'),(8,'Ludie Daugherty','ofritsch@example.org','2026-10-16 15:43:20','$2y$12$UPMan3JZdUWCAGAMh8PiMu6gi.J3lxACGQoi.yXxy1oTyTRQkXr8K',1,'ZM9tUlCYh1','2026-10-16 15:43:20','2026-10-16 15:43:20'),(9,'Marlon Hegmann','magnolia13@example.org','2026-10-16 15:43:20','$2y$12$UPMan3JZdUWCAGAMh8PiMu6gi.J3lxACGQoi.yXxy1oTyTRQkXr8K',1,'lsYxHE3K1M','2026-10-16 15:43:20','2026-10-16 15:43:20'),(10,'Logan Dicki','obraun@example.org','2026-10-16 15:43:20','$2y$12$UPMan3JZdUWCAGAMh8PiMu6gi.J3lxACGQoi.yXxy1oTyTRQkXr8K',1,'sgU6Y5i0ua','2026-10-16 15:43:20','2026-10-16 15:43:20'),(11,'Hollis Stanton','tkoelpin@example.net','2026-10-20 12:59:17','$2y$12$q/4.bAKaqzZBrVbjQ2B3beF/zqk5ms551NyMdxoRrFnON53jWH3vG',1,'gNhSXOM70L','2026-10-20 12:59:19','2026-10-20 12:59:19'),(12,'Austyn Christiansen DDS','emmy.kozey@example.org','2026-10-20 12:59:18','$2y$12$q/4.bAKaqzZBrVbjQ2B3beF/zqk5ms551NyMdxoRrFnON53jWH3vG',1,'xLgnzthQIq','2026-10-20 12:59:19','2026-10-20 12:59:19'),(13,'Makenzie Fritsch','ryleigh.price@example.net','2026-10-20 12:59:18','$2y$12$q/4.bAKaqzZBrVbjQ2B3beF/zqk5ms551NyMdxoRrFnON53jWH3vG',1,'komPgzZs2b','2026-10-20 12:59:19','2026-10-20 12:59:19'),(14,'Brant Turcotte','jaleel.schulist@example.org','2026-10-20 12:59:18','$2y$12$q/4.bAKaqzZBrVbjQ2B3beF/zqk5ms551NyMdxoRrFnON53jWH3vG',1,'qhG96Eexcm','2026-10-20 12:59:19','2026-10-20 12:59:19'),(15,'Prof. Elvera Vandervort','pgrady@example.net','2026-10-20 12:59:18','$2y$12$q/4.bAKaqzZBrVbjQ2B3beF/zqk5ms551NyMdxoRrFnON53jWH3vG',1,'DrkclvbQif','2026-10-20 12:59:19','2026-10-20 12:59:19'),(16,'Jaron Shanahan','eolson@example.net','2026-10-20 12:59:18','$2y$12$q/4.bAKaqzZBrVbjQ2B3beF/zqk5ms551NyMdxoRrFnON53jWH3vG',0,'omioLXb3Lt','2026-10-20 12:59:19','2026-10-20 12:59:19'),(17,'Theron Rath','abelardo.hyatt@example.org','2026-10-20 12:59:18','$2y$12$q/4.bAKaqzZBrVbjQ2B3beF/zqk5ms551NyMdxoRrFnON53jWH3vG',1,'f0rue2hZ6P','2026-10-20 12:59:19','2026-10-20 12:59:19'),(18,'Miss Salma Dach','marvin.kayla@example.org','2026-10-20 12:59:18','$2y$12$q/4.bAKaqzZBrVbjQ2B3beF/zqk5ms551NyMdxoRrFnON53jWH3vG',0,'sjL5JBOYjc','2026-10-20 12:59:19','2026-10-20 12:59:19'),(19,'Taryn Klocko III','dfay@example.net','2026-10-20 12:59:18','$2y$12$q/4.bAKaqzZBrVbjQ2B3beF/zqk5ms551NyMdxoRrFnON53jWH3vG',1,'l9sP5Mzsx1','2026-10-20 12:59:19','2026-10-20 12:59:19'),(20,'Skylar Zboncak','cronin.jalen@example.net','2026-10-20 12:59:18','$2y$12$q/4.bAKaqzZBrVbjQ2B3beF/zqk5ms551NyMdxoRrFnON53jWH3vG',0,'Be3XKHp3K6','2026-10-20 12:59:19','2026-10-20 12:59:19');
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

-- Dump completed on 2026-10-30 20:03:25
