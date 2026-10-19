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
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `film`
--

LOCK TABLES `film` WRITE;
/*!40000 ALTER TABLE `film` DISABLE KEYS */;
INSERT INTO `film` VALUES (1,'Argo',2012,'2026-10-17 08:45:00','2026-10-17 08:45:00');
/*!40000 ALTER TABLE `film` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `film_detalj`
--

LOCK TABLES `film_detalj` WRITE;
/*!40000 ALTER TABLE `film_detalj` DISABLE KEYS */;
INSERT INTO `film_detalj` VALUES (1,120,'Acting under the cover of a Hollywood producer scouting a location for a science fiction film, a CIA agent launches a dangerous operation to rescue six Americans in Tehran during the U.S. hostage crisis in Iran in 1979.','2026-10-19 10:54:00','2026-10-19 10:54:00');
/*!40000 ALTER TABLE `film_detalj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `film_detalji`
--

LOCK TABLES `film_detalji` WRITE;
/*!40000 ALTER TABLE `film_detalji` DISABLE KEYS */;
INSERT INTO `film_detalji` VALUES (1,1,1,'2026-10-19 11:20:00','2026-10-19 11:20:00');
/*!40000 ALTER TABLE `film_detalji` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `film_vrsta`
--

LOCK TABLES `film_vrsta` WRITE;
/*!40000 ALTER TABLE `film_vrsta` DISABLE KEYS */;
INSERT INTO `film_vrsta` VALUES (1,1,1,'2026-10-17 09:02:40','2026-10-17 09:02:40'),(2,1,2,'2026-10-17 09:02:40','2026-10-17 09:02:40'),(3,1,3,'2026-10-17 09:02:40','2026-10-17 09:02:40'),(4,1,4,'2026-10-17 09:02:40','2026-10-17 09:02:40'),(5,1,5,'2026-10-17 09:02:40','2026-10-17 09:02:40'),(6,1,6,'2026-10-17 09:02:40','2026-10-17 09:02:40'),(7,1,7,'2026-10-17 09:02:40','2026-10-17 09:02:40'),(8,1,8,'2026-10-17 09:02:40','2026-10-17 09:02:40');
/*!40000 ALTER TABLE `film_vrsta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2026_10_16_174648_create_film_table',1),(5,'2026_10_16_181835_create_vrsta_filma_table',1),(6,'2026_10_16_183522_create_film_vrsta_table',1),(7,'2026_10_17_074212_create_platforma_table',2),(8,'2026_10_17_081126_create_platforma_film_table',2),(9,'2026_10_19_103438_create_film_detalj_table',3),(10,'2026_10_19_110454_create_film_detalji_table',4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `platforma`
--

LOCK TABLES `platforma` WRITE;
/*!40000 ALTER TABLE `platforma` DISABLE KEYS */;
INSERT INTO `platforma` VALUES (1,'Dvd',NULL,'2026-10-17 08:47:00','2026-10-17 08:47:00'),(2,'Netflix',NULL,'2026-10-17 08:49:00','2026-10-17 08:49:00'),(3,'Amazon Prime',NULL,'2026-10-17 08:49:59','2026-10-17 08:49:59');
/*!40000 ALTER TABLE `platforma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `platforma_film`
--

LOCK TABLES `platforma_film` WRITE;
/*!40000 ALTER TABLE `platforma_film` DISABLE KEYS */;
INSERT INTO `platforma_film` VALUES (1,1,1,'2026-10-17 08:48:00','2026-10-17 08:48:00'),(2,1,2,'2026-10-17 08:50:00','2026-10-17 08:50:00'),(3,1,3,'2026-10-17 08:50:25','2026-10-17 08:50:25');
/*!40000 ALTER TABLE `platforma_film` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('x2SR1NKQLPayVn5HZKXnf3h0u0BEovYLm2qbMT4M',NULL,'127.0.0.1','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/155.0.0.0 Safari/537.36','YTozOntzOjY6Il90b2tlbiI7czo0MDoicGpNSHRHczBTYnRqRlc0OUs0MWdDOHJaTFBlY2p4eU51YTRrYkxURyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7czo1OiJyb3V0ZSI7Tjt9fQ==',1792220778);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Josip Bošnjak','jbosnjak3@gmail.com',NULL,'$2y$12$9zNrI3GtZoDxzgM9/fKg/O6T.j7ULSIzmkD.AveSdtMFH5nvqMqoG',0,NULL,'2026-10-17 05:05:59','2026-10-17 05:05:59');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2026-10-19 13:26:11
