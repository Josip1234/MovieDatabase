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
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `countries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `long_country_name` varchar(255) NOT NULL,
  `short_country_name` varchar(255) NOT NULL,
  `mark` char(3) NOT NULL,
  `continent` varchar(255) NOT NULL,
  `year_of_foundation` smallint(6) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `lcn_uk` (`long_country_name`),
  UNIQUE KEY `scn_uk` (`short_country_name`),
  UNIQUE KEY `m_uk` (`mark`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'KWTBurkina Faso','Namibia','BRI','Australia',3319,'2026-11-22 10:20:01','2026-11-22 10:20:01'),(2,'IMNSlovakia (Slovak Republic)','Denmark','CAY','Europe',6414,'2026-11-22 10:20:01','2026-11-22 10:20:01'),(3,'SWZFrance','Guadeloupe','TUN','North America',137,'2026-11-22 10:20:01','2026-11-22 10:20:01'),(4,'ARGTokelau','Martinique','CEN','North America',2881,'2026-11-22 10:20:01','2026-11-22 10:20:01'),(5,'JPNMaldives','Iraq','DJI','Australia',8920,'2026-11-22 10:20:01','2026-11-22 10:20:01'),(6,'TJKGuinea-Bissau','Iran','MIC','Australia',4715,'2026-11-22 10:20:01','2026-11-22 10:20:01'),(7,'VCTCocos (Keeling) Islands','Madagascar','RWA','North America',8335,'2026-11-22 10:20:01','2026-11-22 10:20:01'),(8,'GRLMauritania','Cook Islands','BUL','Europe',7745,'2026-11-22 10:20:01','2026-11-22 10:20:01'),(9,'GIBFrench Guiana','Tonga','ALG','Africa',3304,'2026-11-22 10:20:01','2026-11-22 10:20:01'),(10,'ABWAlgeria','Timor-Leste','TAN','Antarctica',8054,'2026-11-22 10:20:01','2026-11-22 10:20:01');
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `earnings_per_state`
--

DROP TABLE IF EXISTS `earnings_per_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `earnings_per_state` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `territory` bigint(20) unsigned NOT NULL,
  `release_date` date NOT NULL,
  `opening_weekend` varchar(255) NOT NULL,
  `total_box_office` varchar(255) NOT NULL,
  `report_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `earnings_per_state_territory_foreign` (`territory`),
  CONSTRAINT `earnings_per_state_territory_foreign` FOREIGN KEY (`territory`) REFERENCES `countries` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `earnings_per_state`
--

LOCK TABLES `earnings_per_state` WRITE;
/*!40000 ALTER TABLE `earnings_per_state` DISABLE KEYS */;
INSERT INTO `earnings_per_state` VALUES (1,1,'2013-09-09','€0','$6','1986-03-29','2026-11-24 10:54:22','2026-11-24 10:54:22'),(2,10,'2001-06-08','$8','€2','2019-09-07','2026-11-24 10:54:22','2026-11-24 10:54:22'),(3,3,'1982-11-23','$7','$8','1975-04-13','2026-11-24 10:54:22','2026-11-24 10:54:22'),(4,2,'2022-05-05','€3','$7','1981-09-05','2026-11-24 10:54:22','2026-11-24 10:54:22'),(5,1,'2003-11-11','€5','$2','2001-05-29','2026-11-24 10:54:22','2026-11-24 10:54:22'),(6,8,'2009-06-12','€5','€2','2006-04-13','2026-11-24 10:54:22','2026-11-24 10:54:22'),(7,7,'2006-12-29','$0','$2','1981-10-09','2026-11-24 10:54:22','2026-11-24 10:54:22'),(8,2,'2014-07-21','$1','$6','2013-08-15','2026-11-24 10:54:22','2026-11-24 10:54:22'),(9,3,'2000-12-24','€7','$7','1970-12-20','2026-11-24 10:54:22','2026-11-24 10:54:22'),(10,5,'2019-03-07','€0','$9','2013-08-14','2026-11-24 10:54:22','2026-11-24 10:54:22');
/*!40000 ALTER TABLE `earnings_per_state` ENABLE KEYS */;
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
-- Table structure for table `financial_data`
--

DROP TABLE IF EXISTS `financial_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `financial_data` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `film_id` bigint(20) unsigned NOT NULL,
  `theatrical_performance` bigint(20) unsigned NOT NULL,
  `physical_disc_sale` bigint(20) unsigned NOT NULL,
  `earnings_per_state` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `financial_data_film_id_foreign` (`film_id`),
  KEY `financial_data_theatrical_performance_foreign` (`theatrical_performance`),
  KEY `financial_data_physical_disc_sale_foreign` (`physical_disc_sale`),
  KEY `financial_data_earnings_per_state_foreign` (`earnings_per_state`),
  CONSTRAINT `financial_data_earnings_per_state_foreign` FOREIGN KEY (`earnings_per_state`) REFERENCES `earnings_per_state` (`id`),
  CONSTRAINT `financial_data_film_id_foreign` FOREIGN KEY (`film_id`) REFERENCES `film` (`id`),
  CONSTRAINT `financial_data_physical_disc_sale_foreign` FOREIGN KEY (`physical_disc_sale`) REFERENCES `physical_disc_sale` (`id`),
  CONSTRAINT `financial_data_theatrical_performance_foreign` FOREIGN KEY (`theatrical_performance`) REFERENCES `theatrical_performance` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `financial_data`
--

LOCK TABLES `financial_data` WRITE;
/*!40000 ALTER TABLE `financial_data` DISABLE KEYS */;
INSERT INTO `financial_data` VALUES (1,5,9,1,4,'2026-11-25 11:56:36','2026-11-25 11:56:36'),(2,7,4,5,10,'2026-11-25 11:56:37','2026-11-25 11:56:37'),(3,8,9,2,8,'2026-11-25 11:56:37','2026-11-25 11:56:37'),(4,3,6,4,6,'2026-11-25 11:56:37','2026-11-25 11:56:37'),(5,8,2,6,6,'2026-11-25 11:56:37','2026-11-25 11:56:37'),(6,4,5,5,8,'2026-11-25 11:56:37','2026-11-25 11:56:37'),(7,6,8,7,3,'2026-11-25 11:56:37','2026-11-25 11:56:37'),(8,2,5,8,9,'2026-11-25 11:56:37','2026-11-25 11:56:37'),(9,1,5,9,7,'2026-11-25 11:56:37','2026-11-25 11:56:37'),(10,4,10,3,9,'2026-11-25 11:56:37','2026-11-25 11:56:37');
/*!40000 ALTER TABLE `financial_data` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (4,'0001_01_01_000000_create_users_table',1),(5,'0001_01_01_000001_create_cache_table',1),(6,'0001_01_01_000002_create_jobs_table',1),(7,'2026_10_16_174648_create_film_table',2),(8,'2026_10_16_181835_create_vrsta_filma_table',3),(11,'2026_10_16_183522_create_film_vrsta_table',4),(12,'2026_10_17_074212_create_platforma_table',5),(13,'2026_10_17_081126_create_platforma_film_table',6),(14,'2026_10_19_103438_create_film_detalj_table',7),(15,'2026_10_19_110454_create_film_detalji_table',8),(17,'2026_10_20_135107_create_person_table',9),(18,'2026_10_23_142406_create_film_glumci_table',10),(19,'2026_10_24_140110_create_uloga_table',11),(20,'2026_10_24_141310_create_film_uloge_table',12),(22,'2026_10_29_095757_create_person_detail_table',13),(23,'2026_10_30_175337_create_pregled_table',14),(24,'2026_10_30_181039_create_filmovi_pregled_table',15),(29,'2026_10_31_172327_create_movie_directors_table',16),(30,'2026_11_04_183625_create_writers_table',17),(31,'2026_11_07_121329_create_stars_table',18),(32,'2026_11_17_121206_create_theatrical_performance_table',19),(33,'2026_11_19_095235_create_physical_disc_sale_table',20),(37,'2026_11_22_101903_create_countries_table',21),(38,'2026_11_24_112430_create_earnings_per_state_table',22),(39,'2026_11_25_123801_create_financial_data_table',23),(44,'2026_11_26_183845_add_state_of_birth_to_person',24);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movie_directors`
--

DROP TABLE IF EXISTS `movie_directors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_directors` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `id_filma` bigint(20) unsigned NOT NULL,
  `person_id` bigint(20) unsigned NOT NULL,
  `earnings` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `movie_directors_id_filma_foreign` (`id_filma`),
  KEY `movie_directors_person_id_foreign` (`person_id`),
  CONSTRAINT `movie_directors_id_filma_foreign` FOREIGN KEY (`id_filma`) REFERENCES `film` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `movie_directors_person_id_foreign` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_directors`
--

LOCK TABLES `movie_directors` WRITE;
/*!40000 ALTER TABLE `movie_directors` DISABLE KEYS */;
INSERT INTO `movie_directors` VALUES (1,1,10,'44564074$','2026-10-31 17:19:45','2026-10-31 17:19:45'),(2,7,3,'75332907$','2026-10-31 17:19:45','2026-10-31 17:19:45'),(3,10,1,'29550901$','2026-10-31 17:19:45','2026-10-31 17:19:45'),(4,9,3,'95650673€','2026-10-31 17:19:45','2026-10-31 17:19:45'),(5,4,5,'30677854€','2026-10-31 17:19:45','2026-10-31 17:19:45'),(6,7,8,'12810552€','2026-10-31 17:19:45','2026-10-31 17:19:45'),(7,7,3,'97517602$','2026-10-31 17:19:45','2026-10-31 17:19:45'),(8,7,3,'78935972$','2026-10-31 17:19:45','2026-10-31 17:19:45'),(9,1,9,'49965021$','2026-10-31 17:19:45','2026-10-31 17:19:45'),(10,1,3,'22211557€','2026-10-31 17:19:45','2026-10-31 17:19:45');
/*!40000 ALTER TABLE `movie_directors` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,108179723,290,167,'Dashawn','Grady','M','Slovenian','2026-07-28','1994-08-31','https://brown.biz/minima-corporis-corporis-porro-repellendus-autem.html','','','SCOTLAND YARD',NULL,1,'1973-10-16 10:10:10','2026-11-26 19:14:40'),(2,4508,9,1380,'Modesto','Thiel','M','of Great Britain','1995-04-16','2000-03-15','http://friesen.net/et-eveniet-nihil-dolorum-qui-ut-deleniti-quia-quisquam','https://www.welch.net/aut-sit-neque-dolor-est-aut','18280 Ziemann Radial\nBrayanview, AZ 56631-7584','','1990-12-17',1,'1994-02-14 10:36:57','2026-11-26 19:14:40'),(3,97180361,472889037,9,'Yadira','Marvin','F','Croatian','1995-05-21','2006-08-19','http://weissnat.com/quibusdam-reprehenderit-aut-odit-nulla-esse-nulla-vel-ut','https://www.bashirian.biz/ut-facilis-omnis-blanditiis','','PU POŽEŠKO-SLAVONSKA','1970-01-17',0,'1983-03-01 13:53:12','2026-11-26 19:14:40'),(4,64763178,669,NULL,'Justyn','Greenholt','F','of Great Britain','1974-04-28','2004-08-24','http://www.barton.info/aliquid-magnam-magni-quibusdam.html','http://www.cremin.net/et-reprehenderit-sit-qui-rerum-aliquid','61466 Liliana Squares\nJaylinchester, HI 63420','PU POŽEŠKO-SLAVONSKA','2018-02-01',0,'1981-06-05 08:59:20','2026-11-26 19:14:40'),(5,573368214,888381223,3,'Jimmie','Harvey','F','Slovenian','2009-08-10','2012-04-14','http://kreiger.com/rerum-illum-ut-voluptas-impedit-et','','','POLICE DEPARTMENT OF NEW YORK USA','2016-05-18',NULL,'1995-08-25 16:32:02','2026-11-26 19:14:40'),(6,1890834,979146112,40148949,'Elmo','Marquardt','F','Croatian','2026-01-24',NULL,'http://www.wehner.net/','','','POLICE DEPARTMENT OF NEW YORK USA',NULL,1,'2008-03-19 01:55:25','2026-11-26 19:14:40'),(7,690801,2,NULL,'Gudrun','Abbott','F','American','2026-02-17',NULL,'http://zboncak.com/explicabo-architecto-culpa-in-harum-esse-voluptatum-doloribus-ex.html','','','POLICE DEPARTMENT OF NEW YORK USA','2024-05-14',NULL,'1983-02-26 10:29:06','2026-11-26 19:14:40'),(8,942272370,5,403,'Rosario','Kunze','M','Croatian','2017-05-07',NULL,'http://www.kerluke.org/libero-deserunt-dolorem-adipisci-amet-repudiandae-impedit-earum','http://champlin.com/in-et-beatae-ipsam-enim','9320 Bailey Drives\nDachfurt, DC 85455-8405','POLICE DEPARTMENT OF NEW YORK USA','1995-03-27',NULL,'2009-02-10 09:53:06','2026-11-26 19:14:40'),(9,3341,7412079,256,'Cleora','Murazik','M','American','2025-12-18',NULL,'http://www.moen.com/qui-magnam-dolores-ut-eum-deserunt-reprehenderit.html','https://www.mosciski.info/ipsam-voluptate-qui-libero-excepturi-molestiae-temporibus-odit','','SCOTLAND YARD','2026-01-24',0,'2019-11-05 14:32:35','2026-11-26 19:14:40'),(10,69,2458908,2749324,'Milo','Ankunding','M','Slovenian','2019-10-26',NULL,'http://langworth.biz/','','','SCOTLAND YARD',NULL,1,'2012-12-17 01:03:08','2026-11-26 19:14:40'),(11,9425,3,NULL,'Krista','Kozey','F','Paraguaian','2001-11-03','2004-05-01','https://rath.com/et-illum-voluptas-veniam-commodi.html','http://www.fritsch.net/officia-quis-similique-error-sit-repudiandae-dignissimos','503 Gerard Coves Apt. 991\nKoelpintown, TX 94491','SCOTLAND YARD',NULL,NULL,'2002-02-27 09:09:43','1990-11-12 13:34:37'),(13,85,39313,NULL,'Annabel','Bechtelar','F','Croatian','1971-07-01',NULL,'http://www.rogahn.com/dignissimos-aut-est-eveniet-illum-possimus','','4364 Howell Mountains Suite 561\nNew Faye, AL 16120','PU POŽEŠKO-SLAVONSKA','1987-09-19',1,'1988-12-19 12:59:18','2000-05-19 13:02:11'),(14,10347,6035,NULL,'Aaliyah','Walker','F','American','1987-08-05','1985-12-12','https://hyatt.info/labore-enim-qui-et-illum-dolor.html','','','SCOTLAND YARD',NULL,1,'2018-04-01 17:17:57','2006-02-20 14:35:26'),(15,564617,15,935,'Brandi','Bruen','M','Slovenian','1999-01-09',NULL,'https://blanda.com/doloribus-ut-nulla-quo-molestias-et-amet-velit.html','http://www.conn.org/aut-nam-aspernatur-et','','','1978-07-08',1,'1981-11-24 09:03:07','1971-06-21 00:42:39'),(16,770,720,NULL,'Dana','Moore','M','Slovenian','2016-10-21','2026-08-24','https://www.johnson.info/sit-explicabo-totam-quo-consequatur-quibusdam-omnis','http://kub.com/dignissimos-earum-accusamus-unde-fugit-voluptatem-et.html','46659 Shawna Fort Apt. 749\nStammshire, NE 78839-0233','PU POŽEŠKO-SLAVONSKA',NULL,NULL,'1993-11-08 08:25:55','1973-08-25 03:27:56');
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
-- Table structure for table `physical_disc_sale`
--

DROP TABLE IF EXISTS `physical_disc_sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `physical_disc_sale` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `dvd_sales` varchar(255) NOT NULL,
  `bluray_sales` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `physical_disc_sale`
--

LOCK TABLES `physical_disc_sale` WRITE;
/*!40000 ALTER TABLE `physical_disc_sale` DISABLE KEYS */;
INSERT INTO `physical_disc_sale` VALUES (1,'$422252618,2','$1459798803,7','$81611701,4','2026-11-19 09:03:26','2026-11-19 09:03:26'),(2,'€171198153,5','€279195235,0','$534888562,3','2026-11-19 09:03:26','2026-11-19 09:03:26'),(3,'€2008682847,3','€1539500461,5','$719823393,2','2026-11-19 09:03:26','2026-11-19 09:03:26'),(4,'€1267198246,1','$266767345,5','$1430472366,5','2026-11-19 09:03:26','2026-11-19 09:03:26'),(5,'$960696827,9','€217226559,5','$1729091377,8','2026-11-19 09:03:26','2026-11-19 09:03:26'),(6,'€889751568,3','$332855813,8','€64354642,5','2026-11-19 09:03:26','2026-11-19 09:03:26'),(7,'$1309120466,8','$225843484,1','€1870790579,2','2026-11-19 09:03:26','2026-11-19 09:03:26'),(8,'€1438628554,5','$425969934,3','$923316441,1','2026-11-19 09:03:26','2026-11-19 09:03:26'),(9,'€1905562861,8','€1382167470,7','$1977886565,0','2026-11-19 09:03:26','2026-11-19 09:03:26'),(10,'€584143858,8','€6396376,2','€1272881703,4','2026-11-19 09:03:26','2026-11-19 09:03:26');
/*!40000 ALTER TABLE `physical_disc_sale` ENABLE KEYS */;
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
INSERT INTO `sessions` VALUES ('2mQ1gQqovx0ghS7dGrJzYpwDie82x4OV5w6uTf0p',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/158.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoidktNcGVYNk1teDVOc3J5c1lnR3dzR2FyUWJvem9DUlY3a2tWekdmRyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1795724080),('d0Tl4SVWOsNELhDqazgzyyNMJWMrB3xFzf1WVAjX',6,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36','YTo1OntzOjY6Il90b2tlbiI7czo0MDoiUHVyTkp1U3FONEpOUW9GbXVQaFhwc3lpSjlvSzNZNTRWdVZqaFBKNyI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO3M6NToicm91dGUiO3M6OToiZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NjtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2NDoiOTkwYTNhYmMyYzBmMDZkOWY0NzZlZTQyMTU0Y2FiODZhMWZmYzdkYTYzMzE0MWI2N2E0NmZmOTJhODEwNGFjMCI7fQ==',1792226291),('lerpGKlpf3PjADEnkTVi2CowJXsbKAv4vDAF9TXv',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoidUo5VWhIOG82T0t1NnNFOExGcXM3emFZU3F3MzlXSDNPY2ZGMTZEbyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7Tjt9fQ==',1792767167),('SxEiACxuC01HRij565okipnxVJr8seT7Q62IFAgl',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/157.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVGZxZzVkbGZsZllpdWVtU2ZBN05PbkJoUzNtNkYzMlFxZmNqYXlhbCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7Tjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1793267790),('vIsYupAflYBbWcgqu5dbIqZKPJhwFBcaHsTPZ80Z',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoiVVN6dnJjQWgzT0F0WDk3Z1JoTEIyeXBudGhnaHlnRkdyMGVveUZTbSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7Tjt9fQ==',1792220403),('ztExIFl9a6AloVOv5pQPSZ4XcHHOpKACVrocAVri',8,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36','YTo1OntzOjY6Il90b2tlbiI7czo0MDoiT1dSaGo3cUI3bTc2UG5jVUVYenpkUGt2MGY4dG9XQkRyam14cTZJQyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO3M6NToicm91dGUiO3M6OToiZGFzaGJvYXJkIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6ODtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2NDoiOTkwYTNhYmMyYzBmMDZkOWY0NzZlZTQyMTU0Y2FiODZhMWZmYzdkYTYzMzE0MWI2N2E0NmZmOTJhODEwNGFjMCI7fQ==',1792178660);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stars`
--

DROP TABLE IF EXISTS `stars`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stars` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `person_id` bigint(20) unsigned NOT NULL,
  `id_filma` bigint(20) unsigned NOT NULL,
  `earnings` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `stars_person_id_foreign` (`person_id`),
  KEY `stars_id_filma_foreign` (`id_filma`),
  CONSTRAINT `stars_id_filma_foreign` FOREIGN KEY (`id_filma`) REFERENCES `film` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `stars_person_id_foreign` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stars`
--

LOCK TABLES `stars` WRITE;
/*!40000 ALTER TABLE `stars` DISABLE KEYS */;
INSERT INTO `stars` VALUES (1,1,4,'42894480€','2026-11-07 11:28:11','2026-11-07 11:28:11'),(2,2,2,'77886545$','2026-11-07 11:28:12','2026-11-07 11:28:12'),(3,4,3,'84722038$','2026-11-07 11:28:12','2026-11-07 11:28:12'),(4,1,8,'62161675€','2026-11-07 11:28:12','2026-11-07 11:28:12'),(5,6,4,'91481874€','2026-11-07 11:28:12','2026-11-07 11:28:12'),(6,10,1,'9387428$','2026-11-07 11:28:12','2026-11-07 11:28:12'),(7,6,8,'17985622€','2026-11-07 11:28:12','2026-11-07 11:28:12'),(8,4,5,'85099012€','2026-11-07 11:28:12','2026-11-07 11:28:12'),(9,5,4,'76204904€','2026-11-07 11:28:12','2026-11-07 11:28:12'),(10,10,9,'49710824$','2026-11-07 11:28:12','2026-11-07 11:28:12');
/*!40000 ALTER TABLE `stars` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `theatrical_performance`
--

DROP TABLE IF EXISTS `theatrical_performance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `theatrical_performance` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `domestic_box_office` varchar(255) NOT NULL,
  `international_box_office` varchar(255) NOT NULL,
  `worldwide_box_office` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `theatrical_performance`
--

LOCK TABLES `theatrical_performance` WRITE;
/*!40000 ALTER TABLE `theatrical_performance` DISABLE KEYS */;
INSERT INTO `theatrical_performance` VALUES (1,'$14702843046290369037838307571928989738,2298700341960779961328508616,8239045439542854341859279344','€56809799279977561110385682682098639471,2520095269299657412092591330,20640645199250478211624793225','$14703945651370095085184078465918318172,89350905217462567781991800562,103732596311011172551651876866','2026-11-17 11:32:38','2026-11-17 11:32:38'),(2,'$1255063496432636536245114398,69702543010643205101246315815,20438740632044717396280860268','€14844498511856558794160343148,191593280411502785481610720792,608004635244311487347699854','$180417114714491024361907139990702577259,3793007022598027671798609755,1015526254104972420464553842','2026-11-17 11:32:39','2026-11-17 11:32:39'),(3,'€44152315715130209251841219958617959780,133591364316454866401442158455,7617442743129449801163648983','€3173035112104013466365598498,80241259603499154647280126,1428353942050592474410328127','$1225185934203580378120922065442131833046,1990913061113476023177671294,184117000210612425881892427327','2026-11-17 11:32:39','2026-11-17 11:32:39'),(4,'€141163189012466100841315778856,16813756181206607280492174406,38044947912381813531523779485','$1863916386944045583608886403,527386785653242227747772360,140710502320335087032038459552','€40036502311517618998292673361500943534,157965326115594693171638942181,95276087716207005141463977564','2026-11-17 11:32:39','2026-11-17 11:32:39'),(5,'$1644525984165683010718843926211410267154,16221029252068677294977160173,577245861509380046157453227','€160460398312466325201673786938,13974098632639564521754256997,13472041411306776961988450810','€107391524218993131571434950698,190520867611997506231860993842,63235563119740202261584756137','2026-11-17 11:32:39','2026-11-17 11:32:39'),(6,'€4242479534448816601439568851,650877763533236249741496851,1032280015648515177964747674','$18245048412060392612569513378502641011,18213802766223179081911781174,730468725815633026589771528','€8151392186671791611208263567,657819692610005419753696683,2040997596800349069111326114','2026-11-17 11:32:39','2026-11-17 11:32:39'),(7,'$212931897410262641889522780351300890556,132182113116302361321278295924,762989795876742224714977663','$1462013173624867443868364994945656551,425457275302623574758607910,587887255579925615206897588','€122399849112170945678427604941117836914,104098652743415891772453901,131010186816588355552102843819','2026-11-17 11:32:39','2026-11-17 11:32:39'),(8,'€183033707917354622982086464875,120921544315787327551915987754,18621239554137312351513227066','€187425256512839973971794044254,104887521815744287161750480797,1860730182968182303272870710','€16051526232103656300728965094,1868021176484737422402366395,5945798571751002295826329791','2026-11-17 11:32:39','2026-11-17 11:32:39'),(9,'$1874068861046242347884402393369450080,6096459648251612746395246,47044774611373512451651792693','$450046468178980949411928696021165885406,170399697514594678521532337282,314204384529878434598852821','€14004561951073975087834359561752228811,11586364141462775825129127393,8239044224117933631438019881','2026-11-17 11:32:39','2026-11-17 11:32:39'),(10,'$55536966711533513171371746651202633214,5785670317159195231974292554,15619090652090651451819843209','$362468241168363951119061333741159014733,708286711600482655389100278,14519149816095628791810620535','€37586245521186285611280327672250774722,12787626201776826764371513256,74987631420385798231498099847','2026-11-17 11:32:39','2026-11-17 11:32:39');
/*!40000 ALTER TABLE `theatrical_performance` ENABLE KEYS */;
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

--
-- Table structure for table `writers`
--

DROP TABLE IF EXISTS `writers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `writers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `person_id` bigint(20) unsigned NOT NULL,
  `id_filma` bigint(20) unsigned NOT NULL,
  `earnings` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `writers_person_id_foreign` (`person_id`),
  KEY `writers_id_filma_foreign` (`id_filma`),
  CONSTRAINT `writers_id_filma_foreign` FOREIGN KEY (`id_filma`) REFERENCES `film` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `writers_person_id_foreign` FOREIGN KEY (`person_id`) REFERENCES `person` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `writers`
--

LOCK TABLES `writers` WRITE;
/*!40000 ALTER TABLE `writers` DISABLE KEYS */;
INSERT INTO `writers` VALUES (1,9,9,'39393835$','2026-11-04 17:49:49','2026-11-04 17:49:49'),(2,5,7,'79135008€','2026-11-04 17:49:49','2026-11-04 17:49:49'),(3,7,4,'15653659$','2026-11-04 17:49:49','2026-11-04 17:49:49'),(4,9,1,'6436587$','2026-11-04 17:49:49','2026-11-04 17:49:49'),(5,4,3,'53052712€','2026-11-04 17:49:49','2026-11-04 17:49:49'),(6,7,8,'26858392€','2026-11-04 17:49:49','2026-11-04 17:49:49'),(7,8,10,'16278438$','2026-11-04 17:49:49','2026-11-04 17:49:49'),(8,8,6,'7955802€','2026-11-04 17:49:49','2026-11-04 17:49:49'),(9,10,1,'64495221$','2026-11-04 17:49:49','2026-11-04 17:49:49'),(10,5,8,'58553081€','2026-11-04 17:49:49','2026-11-04 17:49:49');
/*!40000 ALTER TABLE `writers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-26 21:29:13
