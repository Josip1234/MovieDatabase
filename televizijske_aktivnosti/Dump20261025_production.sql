-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: tvact
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film`
--

LOCK TABLES `film` WRITE;
/*!40000 ALTER TABLE `film` DISABLE KEYS */;
INSERT INTO `film` VALUES (1,'Argo',2012,'2026-10-17 08:45:00','2026-10-17 08:45:00');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_detalj`
--

LOCK TABLES `film_detalj` WRITE;
/*!40000 ALTER TABLE `film_detalj` DISABLE KEYS */;
INSERT INTO `film_detalj` VALUES (1,120,'Acting under the cover of a Hollywood producer scouting a location for a science fiction film, a CIA agent launches a dangerous operation to rescue six Americans in Tehran during the U.S. hostage crisis in Iran in 1979.','2026-10-19 10:54:00','2026-10-19 10:54:00');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_detalji`
--

LOCK TABLES `film_detalji` WRITE;
/*!40000 ALTER TABLE `film_detalji` DISABLE KEYS */;
INSERT INTO `film_detalji` VALUES (1,1,1,'2026-10-19 11:20:00','2026-10-19 11:20:00');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_glumci`
--

LOCK TABLES `film_glumci` WRITE;
/*!40000 ALTER TABLE `film_glumci` DISABLE KEYS */;
INSERT INTO `film_glumci` VALUES (1,1,2,NULL,NULL),(2,1,3,NULL,NULL),(3,1,4,NULL,NULL),(4,1,5,NULL,NULL),(5,1,6,NULL,NULL),(6,1,7,NULL,NULL),(7,1,8,NULL,NULL),(8,1,9,NULL,NULL),(9,1,10,NULL,NULL),(10,1,11,NULL,NULL),(11,1,12,NULL,NULL),(12,1,13,NULL,NULL),(13,1,14,NULL,NULL),(14,1,15,NULL,NULL),(15,1,16,NULL,NULL),(16,1,17,NULL,NULL),(17,1,18,NULL,NULL),(18,1,19,NULL,NULL),(19,1,20,NULL,NULL),(20,1,21,NULL,NULL),(21,1,22,NULL,NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_uloge`
--

LOCK TABLES `film_uloge` WRITE;
/*!40000 ALTER TABLE `film_uloge` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film_vrsta`
--

LOCK TABLES `film_vrsta` WRITE;
/*!40000 ALTER TABLE `film_vrsta` DISABLE KEYS */;
INSERT INTO `film_vrsta` VALUES (1,1,1,'2026-10-17 09:02:40','2026-10-17 09:02:40'),(2,1,2,'2026-10-17 09:02:40','2026-10-17 09:02:40'),(3,1,3,'2026-10-17 09:02:40','2026-10-17 09:02:40'),(4,1,4,'2026-10-17 09:02:40','2026-10-17 09:02:40'),(5,1,5,'2026-10-17 09:02:40','2026-10-17 09:02:40'),(6,1,6,'2026-10-17 09:02:40','2026-10-17 09:02:40'),(7,1,7,'2026-10-17 09:02:40','2026-10-17 09:02:40'),(8,1,8,'2026-10-17 09:02:40','2026-10-17 09:02:40');
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2026_10_16_174648_create_film_table',1),(5,'2026_10_16_181835_create_vrsta_filma_table',1),(6,'2026_10_16_183522_create_film_vrsta_table',1),(7,'2026_10_17_074212_create_platforma_table',2),(8,'2026_10_17_081126_create_platforma_film_table',2),(9,'2026_10_19_103438_create_film_detalj_table',3),(10,'2026_10_19_110454_create_film_detalji_table',4),(11,'2026_10_20_135107_create_person_table',5),(12,'2026_10_23_142406_create_film_glumci_table',6),(13,'2026_10_24_140110_create_uloga_table',7),(14,'2026_10_24_141310_create_film_uloge_table',7);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (2,'United States of America',119822038,86052601429,NULL,'Ben','Affleck','M','US','1972-08-15',NULL,'https://en.wikipedia.org/wiki/Ben_Affleck#/media/File:Ben_Affleck_at_83rd_Venice_International_Film_Festival-1_(cropped).jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'United States of America',119822039,86052601430,NULL,'Bryan','Cranston','M','US','1956-03-07',NULL,'https://thumb.wikimedia.org/wikipedia/commons/thumb/9/95/BryanCranston-byPhilipRomano_%28cropped%29.jpg/500px-BryanCranston-byPhilipRomano_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,'United States of America',119822040,86052601431,NULL,'Alan','Arkin','M','US','1934-03-26',NULL,'https://thumb.wikimedia.org/wikipedia/commons/thumb/0/02/Alan_Arkin_-_1975.jpg/500px-Alan_Arkin_-_1975.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,'United States of America',119822041,86052601432,NULL,'John','Goodman','M','US','1952-06-20',NULL,'https://thumb.wikimedia.org/wikipedia/commons/thumb/f/f8/John_Goodman_%2830383991304%29_%28cropped%29.jpg/500px-John_Goodman_%2830383991304%29_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,'Canada',119822042,86052601433,NULL,'Victor','Garber','M','CA,US','1949-03-16',NULL,'https://thumb.wikimedia.org/wikipedia/commons/thumb/d/d5/VictorGarber-byPhilipRomano2.jpg/500px-VictorGarber-byPhilipRomano2.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,'United States of America',119822043,86052601434,NULL,'Tate Buckley','Donovan','M','US','1963-09-25',NULL,'https://thumb.wikimedia.org/wikipedia/commons/thumb/f/fc/Tate_Donovan_Photo_Op_GalaxyCon_Raleigh_2023.jpg/500px-Tate_Donovan_Photo_Op_GalaxyCon_Raleigh_2023.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,'United States of America',119822044,86052601435,NULL,'Clea Helen','D\'Etienne DuVall','F','US','1977-09-25',NULL,'https://thumb.wikimedia.org/wikipedia/commons/thumb/f/f9/Clea_DuVall_%282019_crop%29.jpg/500px-Clea_DuVall_%282019_crop%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,'United States of America',119822045,86052601436,NULL,'John \"Scoot\"','McNairy','M','US','1977-11-11',NULL,'https://thumb.wikimedia.org/wikipedia/commons/thumb/0/0a/Scoot_McNairy_at_the_2024_Toronto_International_Film_Festival._02_%28cropped%29.jpg/500px-Scoot_McNairy_at_the_2024_Toronto_International_Film_Festival._02_%28cropped%29.jpg?utm_source=en.wikipedia.',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,'United States of America',119822046,86052601437,NULL,'Rory','Cochrane','M','US','1972-02-28',NULL,'https://thumb.wikimedia.org/wikipedia/commons/thumb/6/60/Rory_Cochrane.jpg/500px-Rory_Cochrane.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(11,'United States of America',119822047,86052601438,NULL,'Christopher','Denham II','M','US','1985-01-01',NULL,'https://thumb.wikimedia.org/wikipedia/commons/thumb/c/c0/Christopher_Denham_at_the_2026_New_York_Film_Festival-080.jpg/500px-Christopher_Denham_at_the_2026_New_York_Film_Festival-080.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnai',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(12,'New Zealand',119822048,86052601439,NULL,'Kerry','Bishé','F','US','1984-05-01',NULL,'https://thumb.wikimedia.org/wikipedia/commons/thumb/2/2c/ATX_TV_Festival_-_Halt_and_Catch_Fire_-_10_Years_Anniversary_Panel_-_Kerry_Bish%C3%A9_%28Laughing%29_%28cropped%29.jpg/500px-ATX_TV_Festival_-_Halt_and_Catch_Fire_-_10_Years_Anniversary_Panel_-_Kerr',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(13,'United States of America',119822049,86052601440,NULL,'Kyle','Chandler','M','US','1965-09-17',NULL,'https://thumb.wikimedia.org/wikipedia/commons/thumb/4/43/Kyle_Chandler_at_San_Diego_Comic_Con_2026-2.jpg/500px-Kyle_Chandler_at_San_Diego_Comic_Con_2026-2.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(14,'United States of America',119822050,86052601441,NULL,'Christian','Messina','M','US','1974-08-11',NULL,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-iPG2MiK2zwEMIpYlgXJ6LOkH1Mj3yewpaoG7iowc5U04CXi1ls0Vnu-SfDLC59nqSVSAZiJtly5q2qfmDDc5WXuRSQyMIkHA-a8ckww&s=10',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(15,'Slovenia',119822051,86052601442,NULL,'Željko','Ivanek','M','SI,US','1957-08-15',NULL,'https://thumb.wikimedia.org/wikipedia/commons/thumb/9/92/%C5%BDeljko_Ivanek_%2833355599031_-_crop%29.jpg/500px-%C5%BDeljko_Ivanek_%2833355599031_-_crop%29.jpg?utm_source=hr.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(16,'United States of America',119822052,86052601443,NULL,'Titus B.','Welliver','M','US','1962-03-12',NULL,'https://webservice.mymovies.dk/Photos/4edd6322-6d6b-4b70-bd24-f72b783b602e.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(17,'United States of America',119822053,86052601444,NULL,'Keith','Szarabajka','M','US','1952-12-02',NULL,'https://thumb.wikimedia.org/wikipedia/commons/thumb/2/2e/Keith_Szarabajka%2C_FedCon_2012_%28cropped%29.jpg/500px-Keith_Szarabajka%2C_FedCon_2012_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(18,'United States of America',119822054,86052601445,NULL,'Philip','Baker Hall','M','US','1931-09-10',NULL,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS_iP12TGw0GFT97AT2dB9gqxCJyl_USlAzcDZNKeZv-64NLKfZ0IYooQpw8XY_BFw5vG0vmjDO3l4XneDfBWhFw29DXex6W4nV-1Y4vQ&s=10',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(19,'United States of America',119822055,86052601446,NULL,'Robert Patrick','Gunton Jr.','M','US','1945-11-15',NULL,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-RTmEvtfyU2zwTnhOE5dKbNAJ4v2CMkS_y-JMJENVihXwosrmd6Xcx_6ggs4W_tSCq3xVjMGD_U6tL1JB5KAlqzdJdPYeYYB8yC_UEg&s=10',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(20,'United States of America',119822056,86052601447,NULL,'Matthew','Glave','M','US','1963-08-19',NULL,'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTE6ooobMuk0DNGUIueGgBCYKprt9-IJyVfbaocvruhMJsdEYksL8geDgB_ivICXc224AN9cQQAJOj7ohgFk8J_DAIdrIxesJUB8tOs9w&s=10',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(21,'United States of America',119822057,86052601448,NULL,'Richard Bruce','Kind','M','US','1956-11-22',NULL,'https://thumb.wikimedia.org/wikipedia/commons/thumb/d/d9/Richard_Kind_Jay_Kelly-67_%28cropped%29.jpg/500px-Richard_Kind_Jay_Kelly-67_%28cropped%29.jpg?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(22,'United States of America',119822058,86052601449,NULL,'Michael','Parks','M','US','1940-04-24',NULL,'https://thumb.wikimedia.org/wikipedia/commons/thumb/8/80/Michael_Parks_Then_Came_Bronson_1969.JPG/500px-Michael_Parks_Then_Came_Bronson_1969.JPG?utm_source=en.wikipedia.org&utm_campaign=parser&utm_content=thumbnail',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `platforma`
--

LOCK TABLES `platforma` WRITE;
/*!40000 ALTER TABLE `platforma` DISABLE KEYS */;
INSERT INTO `platforma` VALUES (1,'Dvd',NULL,'2026-10-17 08:47:00','2026-10-17 08:47:00'),(2,'Netflix',NULL,'2026-10-17 08:49:00','2026-10-17 08:49:00'),(3,'Amazon Prime',NULL,'2026-10-17 08:49:59','2026-10-17 08:49:59');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `platforma_film`
--

LOCK TABLES `platforma_film` WRITE;
/*!40000 ALTER TABLE `platforma_film` DISABLE KEYS */;
INSERT INTO `platforma_film` VALUES (1,1,1,'2026-10-17 08:48:00','2026-10-17 08:48:00'),(2,1,2,'2026-10-17 08:50:00','2026-10-17 08:50:00'),(3,1,3,'2026-10-17 08:50:25','2026-10-17 08:50:25');
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
INSERT INTO `sessions` VALUES ('iQeFmpMig4oQ8aVbiLZmUTeroRLVsXl10ziXCI21',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoibUlaVHBneEpadzRmcWNrVllrSEhUV3FUN1ZVRDBtS2psRFdiQ0tvViI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7Tjt9fQ==',1792767231);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uloga`
--

LOCK TABLES `uloga` WRITE;
/*!40000 ALTER TABLE `uloga` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Josip Bošnjak','jbosnjak3@gmail.com',NULL,'$2y$12$9zNrI3GtZoDxzgM9/fKg/O6T.j7ULSIzmkD.AveSdtMFH5nvqMqoG',0,NULL,'2026-10-17 05:05:59','2026-10-17 05:05:59');
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vrsta_filma`
--

LOCK TABLES `vrsta_filma` WRITE;
/*!40000 ALTER TABLE `vrsta_filma` DISABLE KEYS */;
INSERT INTO `vrsta_filma` VALUES (1,'Docudrama','2026-10-17 08:59:49','2026-10-17 08:59:49'),(2,'Period drama','2026-10-17 08:59:49','2026-10-17 08:59:49'),(3,'Political drama','2026-10-17 08:59:49','2026-10-17 08:59:49'),(4,'Political Thriller','2026-10-17 08:59:49','2026-10-17 08:59:49'),(5,'Biography','2026-10-17 08:59:49','2026-10-17 08:59:49'),(6,'Drama','2026-10-17 08:59:49','2026-10-17 08:59:49'),(7,'History','2026-10-17 08:59:49','2026-10-17 08:59:49'),(8,'Thriller','2026-10-17 08:59:49','2026-10-17 08:59:49');
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

-- Dump completed on 2026-10-25  9:20:03
