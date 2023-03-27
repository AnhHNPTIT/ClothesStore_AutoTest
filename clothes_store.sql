-- MySQL dump 10.13  Distrib 8.0.29, for Linux (x86_64)
--
-- Host: 66.42.54.109    Database: clothes_store
-- ------------------------------------------------------
-- Server version	8.0.32-0ubuntu0.22.10.2

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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `birthday` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `gender` tinyint NOT NULL,
  `phone_number` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `level` int NOT NULL,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`),
  UNIQUE KEY `admins_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES (1,'157202302220191026000342g6LFGCz0rHPe8DIkAnwD4QBmgw1UFu4LQn1JAPoK.jpeg','Hoàng Ngọc Ánh','2019-03-11',1,'19008198','Ha Noi','admin@gmail.com','$2y$10$4edleQ7FIcS8PthADtoE.uiy3SBXgEcRg0cNNLMbJKRudJkVsRMC2',NULL,1,1,'2019-09-27 13:44:53','2019-10-07 14:22:00'),(2,'157202302220191026000342g6LFGCz0rHPe8DIkAnwD4QBmgw1UFu4LQn1JAPoK.jpeg','Trần Thị Thùy Tươi','1997-01-08',0,'0981241716','1197 Giải Phóng','tranthuytuoi1073@gmail.com','$2y$10$L/5hmAWQOJRgADlfd67aeuhWdLWHWLapA2fldMeq2ZQADM31joLsu',NULL,0,1,'2019-11-08 02:26:25','2019-11-08 02:26:25'),(3,'157202302220191026000342g6LFGCz0rHPe8DIkAnwD4QBmgw1UFu4LQn1JAPoK.jpeg','Nguyễn Thu Hiền','1997-02-04',0,'0961526496','Hà Nội','nguyenthuhien24hv@gmail.com','$2y$10$va0xLJTvUppIdgJMbVYC8OSFymov8oe6UdJriSSgEgMpsXTI9A3hK',NULL,0,1,'2019-11-23 08:52:39','2019-11-23 08:52:39'),(4,'157202302220191026000342g6LFGCz0rHPe8DIkAnwD4QBmgw1UFu4LQn1JAPoK.jpeg','Nguyễn Thị Huệ','1997-04-15',0,'0355110482','Hà Nội','nguyenhue154@gmail.com','$2y$10$I0qnNB8CqbEqKwmwEZLDeuhE7XUzsFy41tKmIuwWLp6GV.N6Erh9a',NULL,0,1,'2019-11-24 01:13:35','2019-11-24 01:13:35'),(5,'157202302220191026000342g6LFGCz0rHPe8DIkAnwD4QBmgw1UFu4LQn1JAPoK.jpeg','Trần Thị Hằng','1994-07-01',0,'0385540516','Hà Nội','tranhang190194@gmail.com','$2y$10$Y.R.Yv.jRyWRskBXyzaiC.TXgMlj81zHFzL4I7kYcaCo3IyFewDuO',NULL,0,1,'2020-01-30 07:03:22','2020-01-30 07:03:22'),(6,'157202302220191026000342g6LFGCz0rHPe8DIkAnwD4QBmgw1UFu4LQn1JAPoK.jpeg','Nguyễn Thị Duyên','1997-04-10',0,'0977588698','Khu đô thị Đại Thanh, Thanh Trì, Hà Nội','ntduyen1004@gmail.com','$2y$10$QjX3hz0.UFQzRM2reXPYAubvSpyw6adOvAulQ9BB36jAX8pthH6Li',NULL,0,1,'2020-07-06 08:25:58','2020-07-06 08:25:58'),(15,'160896827720201226143757YZdXtKoM6jpyCy8ZZOO25jEO1FcIuJluwjz8i1JG.jpeg','Đỗ Đức Cảnh','2020-12-01',0,'0981248920','Trương Định','anhhn1@gmail.com','$2y$10$cfWSTukWtFSarWTbtg39B.u.P6kX8JpK4umlk9x7o/Fk1SEGdWevi',NULL,0,1,'2020-12-04 11:31:12','2020-12-26 14:37:57'),(17,'160896735720201226142237JAlSi3uqqoemve4ZREs7iHhzfzzPdbO87Fh1mLkU.jpeg','Đỗ Đức Cảnh 2','1997-07-05',1,'0981248920','Trương Định','anhhn2@gmail.com','$2y$10$bQlTe5JgiKNIp3Pqg5/QgeXK82hDoBXH9gy3MgMLP0Pe1WeDzlOt6',NULL,0,1,'2020-12-09 23:45:19','2020-12-26 14:31:29');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `slug` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `link` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=307 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (1,'Gucci','gucci',NULL,'2023-03-27 15:09:04','2023-03-27 15:09:04'),(2,'Louis Vuitton','louis-vuitton',NULL,'2023-03-27 15:09:04','2023-03-27 15:09:04'),(3,'Hermes','hermes',NULL,'2023-03-27 15:09:04','2023-03-27 15:09:04'),(4,'Prada','prada',NULL,'2023-03-27 15:09:04','2023-03-27 15:09:04'),(5,'Chanel','chanel',NULL,'2023-03-27 15:09:04','2023-03-27 15:09:04'),(6,'Burberry','burberry',NULL,'2023-03-27 15:09:04','2023-03-27 15:09:04'),(7,'Fendi','fendi',NULL,'2023-03-27 15:09:04','2023-03-27 15:09:04'),(8,'Givenchy','givenchy',NULL,'2023-03-27 15:09:04','2023-03-27 15:09:04'),(9,'Dior','dior',NULL,'2023-03-27 15:09:04','2023-03-27 15:09:04'),(10,'Palido','palido',NULL,'2023-03-27 15:09:04','2023-03-27 15:09:04');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contacts` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
INSERT INTO `contacts` VALUES (1,'Đỗ Hoàng Minh Anh','voicoixinhgai271297@gmail.com','1111','2023-03-27 21:38:50','2023-03-27 21:38:50');
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `birthday` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `gender` tinyint NOT NULL,
  `phone_number` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `score_awards` double(8,2) NOT NULL DEFAULT '0.00',
  `money_payment_transactions` double(8,2) NOT NULL DEFAULT '0.00',
  `remember_token` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`,`phone_number`),
  UNIQUE KEY `customers_phone_number_unique` (`phone_number`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Tươi','1997-08-13',0,'0868563617','số 11a Ngõ 282 Nguyễn Huy Tưởng','$2y$10$jJPCVrktRSaQbn7TeRO./e.WZCnLi2FC1bHHZ1pUV40c2TP.9uI7G',18.00,908.00,NULL,1,'2021-03-13 02:13:26','2021-12-18 16:06:29'),(2,'Trần Thị Hằng','1994-01-19',0,'0914394493','Tây Mỗ Nam Từ Liêm Hà Nội','$2y$10$3URPd2aMEgvp/2mRj15hce.SGoPoAEVRrGNRv7Bds0m8.MEI1Gv/y',3.00,159.00,NULL,1,'2021-03-13 02:17:30','2021-03-13 02:31:53'),(3,'Chiến Phạm','1990-08-30',1,'0868560312','Tầng 5-6 Keangnam Hanoi Landmark Tower, Phạm Hùng, Cầu Giấy','$2y$10$HclRa/w53D.cY1.Qh2d6MeCBQNn1u1P7wnN451n6liSD4zn4XwyAm',0.00,0.00,NULL,1,'2021-03-13 07:35:18','2021-03-13 07:35:18'),(4,'Hoàng Nguyễn Minh Anh','1997-12-27',0,'0978478178','Mộ Lao, Hà Đông','$2y$10$4edleQ7FIcS8PthADtoE.uiy3SBXgEcRg0cNNLMbJKRudJkVsRMC2',133.00,6839.00,'GJ33ClJ8wACayUuKr2BGxipMaOz2LSs63c5B4gOI19e8QHZRo3AcmueJiY48',1,'2021-04-28 16:55:53','2021-01-15 01:09:40'),(5,'Võ Ngọc Thanh','1991-04-26',0,'0932071179','11. tân Tiến f8 quận tân bình tphcm','$2y$10$yILkPRBy3nP4Am42E08OHOjGfqECQNR4r3Y1RYFSnjn.tp2KT2M..',0.00,0.00,NULL,1,'2021-05-05 04:03:15','2021-05-05 04:03:15'),(6,'Hứa Minh Quyên','1986-01-28',0,'0909227195','Số nhà 43- tổ 11- phường Sông Hiến- tp. Cao Bằng- tỉnh Cao Bằng','$2y$10$bnMGlZ/4VuDT8WQiQt2CquyBYRYKaxoBXkZ./MqaEcGbAgjmnh.TS',0.00,0.00,NULL,1,'2021-08-24 06:06:25','2021-08-24 06:06:25'),(7,'Diễm Trần','1990-08-30',0,'0962002754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2021-04-04 02:14:00','2021-09-04 02:14:00'),(8,'Diễm Trần','1990-08-30',0,'0962018754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2021-04-04 02:14:00','2021-09-04 02:14:00'),(9,'Diễm Trần','1990-08-30',0,'0962002751','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2021-04-04 02:14:00','2021-09-04 02:14:00'),(10,'Diễm Trần','1990-08-30',0,'0962002752','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2021-04-04 02:14:00','2021-09-04 02:14:00'),(11,'Diễm Trần','1990-08-30',0,'0962002753','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2021-04-04 02:14:00','2021-09-04 02:14:00'),(12,'Đỗ Hoàng Minh Anh','1997-12-27',0,'0981248920','Nguyễn Văn Trỗi, Mộ Lao, Hà Đông','$2y$10$hpifPOxEz7fxqZhX90cen.wzUbcQMGx/WTYL1CZxoyviyG.n9Cixy',19.00,995.00,'NEi8YMJKIiGtmurqZMK3G886P9KsEss0tFLH6at4gEXkNky5cmMDq1gt4Q6N',1,'2021-12-08 00:16:00','2021-12-10 22:14:13'),(13,'Diễm Trần','1990-08-30',0,'0962023754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2021-05-04 02:14:00','2021-09-04 02:14:00'),(14,'Diễm Trần','1990-08-30',0,'0962002755','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2021-05-04 02:14:00','2021-09-04 02:14:00'),(15,'Diễm Trần','1990-08-30',0,'0962002756','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2021-05-04 02:14:00','2021-09-04 02:14:00'),(16,'Diễm Trần','1990-08-30',0,'0962002757','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2021-05-04 02:14:00','2021-09-04 02:14:00'),(17,'Diễm Trần','1990-08-30',0,'0962002758','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2021-05-04 02:14:00','2021-09-04 02:14:00'),(18,'Diễm Trần','1990-08-30',0,'0962002759','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2021-05-04 02:14:00','2021-09-04 02:14:00'),(19,'Diễm Trần','1990-08-30',0,'0962002750','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2021-06-04 02:14:00','2021-09-04 02:14:00'),(20,'Diễm Trần','1990-08-30',0,'0162002754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2021-07-04 02:14:00','2021-09-04 02:14:00'),(21,'Diễm Trần','1990-08-30',0,'0262002754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2021-07-04 02:14:00','2021-09-04 02:14:00'),(22,'Diễm Trần','1990-08-30',0,'0362002754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2021-07-04 02:14:00','2021-09-04 02:14:00'),(23,'Diễm Trần','1990-08-30',0,'0462002754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2021-07-04 02:14:00','2021-09-04 02:14:00'),(24,'Diễm Trần','1990-08-30',0,'0562002754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2021-07-04 02:14:00','2021-09-04 02:14:00'),(25,'Diễm Trần','1990-08-30',0,'0662002754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2021-07-04 02:14:00','2021-09-04 02:14:00'),(26,'Diễm Trần','1990-08-30',0,'0762002754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2021-07-04 02:14:00','2021-09-04 02:14:00'),(27,'Diễm Trần','1990-08-30',0,'0862002754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2021-08-04 02:14:00','2021-09-04 02:14:00'),(28,'Diễm Trần','1990-08-30',0,'0012002754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2021-08-04 02:14:00','2021-09-04 02:14:00'),(29,'Diễm Trần','1990-08-30',0,'0062002754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2021-08-04 02:14:00','2021-09-04 02:14:00'),(30,'Diễm Trần','1990-08-30',0,'0112002754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2021-09-04 02:14:00','2021-09-04 02:14:00'),(31,'Diễm Trần','1990-08-30',0,'0222002754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2021-09-04 02:14:00','2021-09-04 02:14:00'),(32,'Diễm Trần','1990-08-30',0,'0932002754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2021-09-04 02:14:00','2021-09-04 02:14:00'),(33,'Diễm Trần','1990-08-30',0,'0952002754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2021-09-04 02:14:00','2021-09-04 02:14:00'),(34,'Diễm Trần','1990-08-30',0,'0942002754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2021-09-04 02:14:00','2021-09-04 02:14:00'),(35,'Diễm Trần','1990-08-30',0,'0969902754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2021-09-04 02:14:00','2021-09-04 02:14:00'),(36,'Diễm Trần','1990-08-30',0,'0972002754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2021-09-04 02:14:00','2021-09-04 02:14:00'),(37,'Diễm Trần','1990-08-30',0,'0982002754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2021-09-04 02:14:00','2021-09-04 02:14:00'),(38,'Diễm Trần','1990-08-30',0,'0992002754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2021-09-04 02:14:00','2021-09-04 02:14:00'),(39,'Diễm Trần','1990-08-30',0,'0902002754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2021-09-04 02:14:00','2021-09-04 02:14:00'),(40,'Diễm Trần','1990-08-30',0,'0977002754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2021-09-04 02:14:00','2021-09-04 02:14:00'),(41,'Diễm Trần','1990-08-30',0,'0962102754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2021-10-04 02:14:00','2021-09-04 02:14:00'),(42,'Diễm Trần','1990-08-30',0,'0962302754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2021-10-04 02:14:00','2021-09-04 02:14:00'),(43,'Diễm Trần','1990-08-30',0,'0962202754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2021-10-04 02:14:00','2021-09-04 02:14:00'),(44,'Diễm Trần','1990-08-30',0,'0962402754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2021-10-04 02:14:00','2021-09-04 02:14:00'),(45,'Diễm Trần','1990-08-30',0,'0962502754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2021-10-04 02:14:00','2021-09-04 02:14:00'),(46,'Diễm Trần','1990-08-30',0,'0962602754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2021-10-04 02:14:00','2021-09-04 02:14:00'),(47,'Diễm Trần','1990-08-30',0,'0962702754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2021-11-04 02:14:00','2021-09-04 02:14:00'),(48,'Diễm Trần','1990-08-30',0,'0962802754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2021-11-04 02:14:00','2021-09-04 02:14:00'),(49,'Diễm Trần','1990-08-30',0,'0962902754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2021-11-04 02:14:00','2021-09-04 02:14:00'),(50,'Diễm Trần','1990-08-30',0,'0962012754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2021-12-04 02:14:00','2021-09-04 02:14:00'),(51,'Diễm Trần','1990-08-30',0,'0962022754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2021-12-04 02:14:00','2021-09-04 02:14:00'),(52,'Diễm Trần','1990-08-30',0,'0962032754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2021-12-04 02:14:00','2021-09-04 02:14:00'),(53,'Diễm Trần','1990-08-30',0,'0962042754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2021-12-04 02:14:00','2021-09-04 02:14:00'),(54,'Diễm Trần','1990-08-30',0,'0962052754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2021-12-04 02:14:00','2021-09-04 02:14:00'),(55,'Diễm Trần','1990-08-30',0,'0962062754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2021-12-04 02:14:00','2021-09-04 02:14:00'),(56,'Diễm Trần','1990-08-30',0,'0962072754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2021-12-04 02:14:00','2021-09-04 02:14:00'),(57,'Diễm Trần','1990-08-30',0,'0962082754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2021-12-04 02:14:00','2021-09-04 02:14:00'),(58,'Diễm Trần','1990-08-30',0,'0962092754','Lotte - Liễu Giai - Ba Đình - Hà Nội','$2y$10$JCBm0W4podn40lQ/N3rPbutuuA/W5NM3CUXgrmlkAHD0dE3pLQmXC',0.00,0.00,NULL,1,'2021-12-04 02:14:00','2021-09-04 02:14:00');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `product_id` int unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  `price` double(8,2) NOT NULL,
  `price_sale` double(8,2) NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=211 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `product_categories`
--

DROP TABLE IF EXISTS `product_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `slug` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_categories`
--

LOCK TABLES `product_categories` WRITE;
/*!40000 ALTER TABLE `product_categories` DISABLE KEYS */;
INSERT INTO `product_categories` VALUES (1,'Nữ','nu','2023-03-27 15:08:57','2023-03-27 15:08:57'),(2,'Nam','nam','2023-03-27 15:08:57','2023-03-27 15:08:57'),(3,'Trẻ em','tre-em','2023-03-27 15:08:57','2023-03-27 15:08:57'),(4,'Khác','khac','2023-03-27 15:08:57','2023-03-27 15:08:57');
/*!40000 ALTER TABLE `product_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `slug` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `product_category_id` int unsigned NOT NULL,
  `brand_id` int unsigned NOT NULL,
  `description` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `price` double(8,2) NOT NULL,
  `price_sale` double(8,2) NOT NULL,
  `quantity` int NOT NULL,
  `admin_id` int unsigned NOT NULL,
  `bought` int NOT NULL DEFAULT '0',
  `view_count` int NOT NULL DEFAULT '0',
  `status` int NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_id` (`admin_id`),
  KEY `products_ibfk_1` (`product_category_id`),
  KEY `products_ibfk_2` (`brand_id`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`product_category_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `products_ibfk_4` FOREIGN KEY (`admin_id`) REFERENCES `admins` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=555 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES ('512', 'ÁO SƠ MI TAY BỒNG', 'ao-so-mi-tay-bong', 'SKUP12810', '1', '10', '<p>Áo sơ mi trơn, dáng xuông. Chất liệu lưới thoáng mát. Cổ áo dáng tròn với phần cách điệu xuyên thấu. Tay áo dài bo ống.</p>', '160664977120201129183611mBTNMXhoRAohYGJNDaLuexRpnv5MYw0FgVDU7DB8.jpeg', '990.00', '495.00', '98', '1', '6', '102', '1', '2023-03-27 15:22:04', '2023-03-27 15:22:04'),('513', 'ÁO SƠ MI PHỐI NƠ BẢN LỚN', 'ao-so-mi-phoi-no-ban-lon', 'SKUP14460', '1', '4', '<p>Áo sơ mi được làm từ chất liệu voan nhẹ. Dáng áo suông, tay áo rộng được bo ở phần đầu ống. Dọc thân áo là khuy kim loại ánh vàng. Cổ áo cách điệu với tơ thắt to bản. Set áo có kèm áo 2 dây ở trong.</p>', '160664994820201129183908tXPyOD112p0bDto0aWkA5bic9F76wOPw7O0J9E79.jpeg', '1190.000', '440.30', '99', '1', '1', '99', '1', '2023-03-27 15:22:04', '2023-03-27 15:22:04'),('514', 'ÁO PHAO CỔ MŨ VIỀN LÔNG', 'ao-phao-co-mu-vien-long', 'SKUP04376', '1', '1', '<p>Áo lụa cổ tàu cài khuy cách điệu bằng viền vải voan xếp nhúm. Áo tay hến dáng ngắn. Chất liệu vải lụa mềm mát, mang lại cảm giác thoải mái tuyệt đối khi diện.</p>', '160665032920201129184529GxAfhCg9nwrNfzT7y2PORt4XfVjmNJxqhliJGlcx.jpeg', '790', '790', '100', '1', '20', '6', '1', '2023-03-27 15:22:04', '2023-03-27 15:22:04'),('515', 'ÁO SƠ MI LỤA CÀI KHUY ẨN', 'ao-so-mi-lua-cai-khuy-an', 'SKUP15932', '1', '3', '<p>Thiết kế áo sơ mi phối túi trước ngực mang lại sự khỏe khoắn, trẻ trung và mát mẻ trong những ngày hè. Chất liệu lụa mỏng nhẹ, dáng áo ôm gọn gàng phù hợp mix cùng nhiều kiểu quần, chân váy khác nhau.</p>', '160665072920201129185209vV8js3v0NLXj7eVYmubrimZQWFYZEJKbuc8MAWuh.jpeg', '990', '990', '100', '1', '0', '0', '1', '2023-03-27 15:22:04', '2023-03-27 15:22:04'),('516', 'ÁO SƠ MI LỤA THÊU VIỀN', 'ao-so-mi-lua-theu-vien', 'SKUP18059', '1', '2', '<p>Một thiết kế áo với gam màu nữ tính. Chất liệu lụa nhẹ nhàng cùng chi tiết thêu viền tạo kiểu giúp nàng trở nên yêu kiều hơn. Mix áo cùng chân  váy hoặc quần đều là sự lựa chọn hoàn hảo cho nàng đi làm và đi chơi.</p>', '160665211420201129191514y1nBexQZaKEpcVku0a6Lg5AkNJ2j4H6FBc7NRVDt.jpeg', '1090', '1090', '100', '1', '5', '0', '1', '2023-03-27 15:22:04', '2023-03-27 15:22:04'),('517', 'ÁO TRỄ VAI BO CHUN', 'ao-tre-vai-bo-chun', 'SKUP14466', '1', '1', '<p>Áo trễ vai chất liệu vải thô, thiết kế bo chun dáng ngắn, tay áo lửng, phía trước là hàng khuy cách điệu.</p>', '160665286520201129192745rYZNBSffyvmiz3f4fsDBJxQkyKU4eZmpecCdyt6y.jpeg', '890', '890', '100', '1', '0', '0', '1', '2023-03-27 15:22:04', '2023-03-27 15:22:04'),('518', 'ÁO PHAO LÔNG VŨ CỔ MŨ', 'ao-phao-long-vu-co-mu', 'SKUP11288', '1', '7', '<p>Áo phao lông vũ dáng suông. Cổ mũ có dây kéo điều chỉnh, dài tay. Có 2 túi kéo khóa bên hông. Cài bằng khóa kéo phía trước. Vải chần bông cách đều.</p>', '160665301420201129193014tjSBxzRDCl8HgZ1wWyhKen1jWUA3XHVZXk1cVBbO.jpeg', '2850', '1197', '100', '1', '0', '0', '1', '2023-03-27 15:22:04', '2023-03-27 15:22:04'),(519,'Thực phẩm bảo vệ sức khỏe tăng cường sức đề kháng hương cam Holisticare Supreme Ester C Effervescent','thuc-pham-bao-ve-suc-khoe-tang-cuong-suc-de-khang-huong-cam-holisticare-supreme-ester-c-effervescent-1606653811','SKUP17178',1,1,'<p>Thực phẩm bảo vệ sức khỏe Holisticare Supreme Ester C Effervescent bổ sung vitamin C, hỗ trợ tăng cường sức đề kh&aacute;ng cho cơ thể, gi&uacute;p duy tr&igrave; hệ miễn dịch khỏe mạnh để ph&ograve;ng ngừa bệnh hiệu quả. Sản phẩm nổi bật với hương cam tươi m&aacute;t, gi&uacute;p tinh thần của bạn lu&ocirc;n phấn khởi, tr&agrave;n đầy năng lượng để sẵn s&agrave;ng cho mọi hoạt động trong ng&agrave;y.</p>','160665381120201129194331UTkOOb5iinrMiLJWlil3g5qE8Lp24JQOYpF6BGti.jpeg',88.00,88.00,99,1,8,1,1,'2023-03-27 15:22:04','2023-03-27 15:22:04'),(520,'Thực phẩm bảo vệ sức khỏe bù nước và chất điện giải hương phúc bồn tử Charz (Hộp 30 gói)','thuc-pham-bao-ve-suc-khoe-bu-nuoc-va-chat-dien-giai-huong-phuc-bon-tu-charz-hop-30-goi-1606654142','SKUP16545',1,3,'<p>Thực phẩm bảo vệ sức khỏe Charz hương ph&uacute;c bồn tử gi&uacute;p b&ugrave; nước v&agrave; chất điện giải cho cơ thể trong c&aacute;c trường hợp mất nước như ti&ecirc;u chảy hay n&ocirc;n &oacute;i, do c&aacute;c nguy&ecirc;n nh&acirc;n như chảy mồ h&ocirc;i khi thời tiết n&oacute;ng bức, n&oacute;ng sốt, tập thể thao.</p>','160665414220201129194902Dy53VD7BieOpWze7dvWf5GQaTe1pVL4NDdtLQ6OF.jpeg',180.00,179.00,100,1,0,0,1,'2023-03-27 15:22:04','2023-03-27 15:22:04'),(521,'Viên hồng sâm bồi bổ sức khỏe Welson Gingsen (Lọ 60 viên)','vien-hong-sam-boi-bo-suc-khoe-welson-gingsen-lo-60-vien-1606654708','SKUP17458',1,10,'<p>Vi&ecirc;n hồng s&acirc;m bồi bổ sức khỏe Welson Gingsen được chiết xuất từ hồng s&acirc;m H&agrave;n Quốc với c&ocirc;ng dụng tăng đề kh&aacute;ng, bồi bổ sức khỏe, ph&ugrave; hợp với người mệt mỏi, người lớn tuổi, người mới ốm dậy, người mắc bệnh gan&hellip; Ngo&agrave;i ra, vi&ecirc;n c&ograve;n được hỗ trợ c&aacute;c th&agrave;nh phần bổ kh&aacute;c như đ&ocirc;ng tr&ugrave;ng hạ thảo, nấm linh chi, bạch quả&hellip; hỗ trợ sức khỏe tối ưu.</p>','1606654708202011291958289VfGbjWxhdMw8Pdk5C7lLYSOsP0ZhAGuXtsT2u7t.jpeg',795.00,795.00,100,1,0,30,1,'2023-03-27 15:22:04','2023-03-27 15:22:04'),(522,'Viên bổ sung vitamin B, C Solgar B-Complex with Vitamin C (Chai 100 viên)','vien-bo-sung-vitamin-b-c-solgar-b-complex-with-vitamin-c-chai-100-vien-1606654975','SKUP18051',1,3,'<p>Vi&ecirc;n bổ sung vitamin B, C Solgar B-Complex with Vitamin C bổ sung vitamin C v&agrave; c&aacute;c vitamin nh&oacute;m B, gi&uacute;p tăng cường sức khỏe, giảm căng thẳng mệt mỏi, tăng độ bền bỉ cho cơ thể v&agrave; hỗ trợ c&acirc;n bằng chế độ dinh dưỡng.</p>','160665497520201129200255wXcvTGdANLncWBODt0Q63ZPOnVd7M3p4zPyqhFRD.jpeg',720.00,648.00,100,1,0,0,1,'2023-03-27 15:22:04','2023-03-27 15:22:04'),(523,'Viên bổ sung khoáng chất Solgar Calcium Magnesium Plus Zinc (Chai 100 viên)','vien-bo-sung-khoang-chat-solgar-calcium-magnesium-plus-zinc-chai-100-vien-1606655118','SKUP18053',1,6,'<p>&ndash; Bổ sung Canxi, Maggie v&agrave; Kẽm, hỗ trợ việc ph&aacute;t triển xương, hỗ trợ duy tr&igrave; hoạt động cơ bắp, th&ocirc;ng m&aacute;u.<br />\n&ndash; Hỗ trợ c&aacute;c tế b&agrave;o thần kinh.</p>','160665511820201129200518qz7jQab7d2NDnQ4eWPXMttOY29CFp14dcaq2w2W9.jpeg',550.00,495.00,100,1,0,1,1,'2023-03-27 15:22:04','2023-03-27 15:22:04'),(524,'Viên bổ sung vitamin và khoáng chất Formula VM-75 Solgar (Lọ 60 viên)','vien-bo-sung-vitamin-va-khoang-chat-formula-vm-75-solgar-lo-60-vien-1606655283','SKUP17804',1,8,'<p>Vi&ecirc;n bổ sung vitamin v&agrave; kho&aacute;ng chất Formula VM-75 Solgar d&ugrave;ng cho người tr&ecirc;n 19 tuổi, gi&uacute;p&nbsp;bổ sung vi chất, hỗ trợ bảo vệ sức khỏe v&agrave; tăng cường sức đề kh&aacute;ng. Sản phẩm c&oacute; xuất xứ Hoa Kỳ.</p>','160665528320201129200803XIt5JR7pNy8cejrUlAgCpRMCiPzqldcXU6sPDgJP.jpeg',1000.00,998.00,100,1,0,0,1,'2023-03-27 15:22:04','2023-03-27 15:22:04'),(525,'Viên bổ sung vitamin và khoáng chất cho trẻ Kangavites Solgar (Lọ 120 viên)','vien-bo-sung-vitamin-va-khoang-chat-cho-tre-kangavites-solgar-lo-120-vien-1606655418','SKUP17807',1,2,'<p>Vi&ecirc;n bổ sung vitamin v&agrave; kho&aacute;ng chất cho trẻ Kangavites Complete Solgar với th&agrave;nh phần đầy đủ c&aacute;c vitamin v&agrave; kho&aacute;ng chất đa dạng, hỗ trợ bảo vệ sức khỏe v&agrave; tăng cường sức đề kh&aacute;ng cho trẻ từ 2 tuổi trở l&ecirc;n.</p>','160665541820201129201018x2d0vg2OsJ8BYKjoWfvgsXqhybetBITGvrCTqxYm.jpeg',980.00,980.00,100,1,20,63,1,'2023-03-27 15:22:04','2023-03-27 15:22:04'),(526,'Viên hồng sâm bồi bổ sức khỏe Welson Red Ginseng (Lọ 60 viên)','vien-hong-sam-boi-bo-suc-khoe-welson-red-ginseng-lo-60-vien-1606655535','SKUP17459',1,5,'<p>Vi&ecirc;n hồng s&acirc;m bồi bổ sức khỏe Welson Red Ginseng được chế biến từ hồng s&acirc;m H&agrave;n Quốc 6 năm tuổi v&agrave; c&aacute;c th&agrave;nh phần bổ dưỡng c&oacute; nguồn gốc tự nhi&ecirc;n kh&aacute;c như nấm đ&ocirc;ng c&ocirc;, nấm linh chi, đ&ocirc;ng tr&ugrave;ng hạ thảo, bạch quả&hellip; Sản phẩm c&oacute; t&aacute;c dụng giảm cholesterol, bồi bổ cơ thể, tăng sức bền vận động, gi&uacute;p cơ thể chống lại c&aacute;c điều kiện bất lợi b&ecirc;n ngo&agrave;i.</p>','160665553520201129201215bJ72lkn2IvOtFMBLrrFauszocuxCcKorFmdjSSSg.jpeg',945.00,944.00,100,1,6,6,1,'2023-03-27 15:22:04','2023-03-27 15:22:04'),(527,'Viên hỗ trợ sức khỏe tim mạch Solgar Folate 666 MCG DFE (Chai 100 viên)','vien-ho-tro-suc-khoe-tim-mach-solgar-folate-666-mcg-dfe-chai-100-vien-1606655657','SKUP18052',1,9,'<p>Vi&ecirc;n hỗ trợ sức khỏe tim mạch Solgar Folate 666 MCG DFE bổ sung Folic Acid, gi&uacute;p tăng cường tế b&agrave;o hồng cầu v&agrave; hỗ trợ tăng cường sức khỏe tim mạch, hệ thần kinh, đồng thời hỗ trợ sức khỏe cho phụ nữ đang mang thai.</p>','160665565720201129201417E97llMDqBg9PgQaaRhGaB8ogH1XrLwa6hQ4tH0Th.jpeg',430.00,387.00,100,1,0,0,1,'2023-03-27 15:22:04','2023-03-27 15:22:04'),(528,'Viên bổ sung vitamin Hauora Supper Man (Lọ 60 viên)','vien-bo-sung-vitamin-hauora-supper-man-lo-60-vien-1606655818','SKUP18009',1,1,'<p>Vi&ecirc;n bổ sung vitamin Hauora Supper Man chứa đến 15 chất dinh dưỡng cần thiết cho nam giới, gi&uacute;p tăng cường sức khỏe tim mạch v&agrave; sinh l&yacute; ph&aacute;i mạnh, n&acirc;ng cao sức đề kh&aacute;ng, cho cơ thể cường tr&aacute;ng, khỏe mạnh.</p>','160665581820201129201658sJ2chyOOxoB2yhjxESzUwYc1gMCt0v70OoRyYJGY.jpeg',290.00,290.00,100,1,0,0,1,'2023-03-27 15:22:04','2023-03-27 15:22:04'),(529,'Viên bổ sung vitamin và khoáng chất Diavit (Hộp 5 vỉ x 10 viên)','vien-bo-sung-vitamin-va-khoang-chat-diavit-hop-5-vi-x-10-vien-1606655961','SKUP17843',1,8,'<p>Vi&ecirc;n bổ sung vitamin v&agrave; kho&aacute;ng chất Diavit gi&uacute;p bổ sung vi chất trong trường hợp thiếu hụt do tăng nhu cầu sử dụng hoặc c&oacute; c&aacute;c rối loạn về hấp thu, gi&uacute;p tăng cường sức khỏe. Sản phẩm cũng hỗ trợ chuyển h&oacute;a đường huyết, cải thiện chỉ số đường huyết cho người đ&aacute;i th&aacute;o đường.</p>','160665596120201129201921n1YZK42Fm0ZPLDRvlEgHvScUwUIBWuqLuJaDdLZH.jpeg',350.00,350.00,100,1,0,0,1,'2023-03-27 15:22:04','2023-03-27 15:22:04'),(530,'Cao đông trùng hạ thảo Cordy-X (Hộp 65g)','cao-dong-trung-ha-thao-cordy-x-hop-65g-1606656102','SKUP18262',1,6,'<p>Cao đ&ocirc;ng tr&ugrave;ng hạ thảo Cordy-X chứa c&aacute;c th&agrave;nh phần c&oacute; lợi cho việc phục hồi v&agrave; n&acirc;ng cao sức đề kh&aacute;ng, hỗ trợ giải độc gan.Sản phẩm l&agrave; lựa chọn cần thiết để tăng cường sức khỏe, đặc biệt ph&ugrave; hợp với những người ốm yếu, suy nhược.</p>','160665610220201129202142krOz6I9pB8liSkQ5uf0vTckAWKR6UbCOM6TbqGhJ.jpeg',980.00,980.00,50,1,0,0,1,'2023-03-27 15:22:04','2023-03-27 15:22:04'),(531,'Viên sủi bổ sung vitamin C, D và kẽm Redoxon (12 vỉ X 2 viên/hộp)','vien-sui-bo-sung-vitamin-c-d-va-kem-redoxon-12-vi-x-2-vienhop-1606656701','SKUP16614',1,6,'<p>Vi&ecirc;n sủi bổ sung vitamin C, D v&agrave; kẽm Redoxon gi&uacute;p bổ sung vitamin C v&agrave; c&aacute;c vi chất cần thiết cho cơ thể, gi&uacute;p tăng sức đề kh&aacute;ng, hỗ trợ hệ miễn dịch, cho cơ thể khỏe mạnh.</p>','160665670120201129203141s5wmWUmcspMcSX6gwg6EgRN9L4VoD3XcBU6ZIlEM.jpeg',160.00,160.00,100,1,0,0,1,'2023-03-27 15:22:04','2023-03-27 15:22:04'),(532,'Thực phẩm bảo vệ sức khỏe Omega 3 Natural Fish Oil 1000mg (Hộp 100 viên + 30 viên)','thuc-pham-bao-ve-suc-khoe-omega-3-natural-fish-oil-1000mg-hop-100-vien-30-vien-1606656875','SKUP09733',1,1,'<p>Thực phẩm bảo vệ sức khỏe Omega 3 Natural Fish Oil 1000mg Crimsons Pharma với th&agrave;nh phần chứa dầu c&aacute; gi&uacute;p bổ sung Omega 3 (EPA v&agrave; DHA), hỗ trợ sự ph&aacute;t triển của n&atilde;o bộ v&agrave; tốt cho mắt.</p>','160665687520201129203435EAhWS1UELxBTZi3lX86vTRVdQ21vvF5byb5nTpgN.jpeg',199.00,199.00,99,1,1,99,1,'2023-03-27 15:22:04','2023-03-27 15:22:04'),(533,'Thực phẩm bảo vệ sức khỏe bổ sung vitamin & khoáng chất Vitaone Complete 1 Multivitamin (Hộp 100 viên)','thuc-pham-bao-ve-suc-khoe-bo-sung-vitamin-khoang-chat-vitaone-complete-1-multivitamin-hop-100-vien-1606660865','SKUP09728',1,7,'<p>Thực phẩm bảo vệ sức khỏe Vitaone Complete 1 Multivitamin Crimsons Pharma bổ sung Vitamin v&agrave; kho&aacute;ng chất gi&uacute;p tăng cường sức đề kh&aacute;ng, tăng cường sức khỏe để bạn c&oacute; một cơ thể khỏe mạnh v&agrave; một tinh thần minh mẫn sảng kho&aacute;i.</p>','160666086520201129214105LxuLeGT21opprVykNSTjfbTZ6FX6MAW3ZyaMXV4u.jpeg',335.00,301.50,96,1,4,0,1,'2023-03-27 15:22:04','2023-03-27 15:22:04'),(534,'Viên sủi hỗ trợ phát triển xương răng Swiss Energy (Tuýp 20 viên)','vien-sui-ho-tro-phat-trien-xuong-rang-swiss-energy-tuyp-20-vien-1606661012','SKUP12809',1,2,'<p>Swiss Energy Calcium Ca + Vitamin D3 sử dụng cho đối tượng từ 14 tuổi trở l&ecirc;n v&agrave; người lớn, hỗ trợ cho cơ thể bổ sung canxi v&agrave; vitamin D3 tốt cho xương v&agrave; răng.</p>','160666101220201129214332GBLdIttbCap3d2j33nfaMtnshtOXB6OyQ8Mgxskl.jpeg',104.00,104.00,96,1,12,0,1,'2023-03-27 15:22:04','2023-03-27 15:22:04'),(535,'Viên sủi hỗ trợ phát triển xương răng Swiss Energy (Tuýp 20 viên)','vien-sui-ho-tro-phat-trien-xuong-rang-swiss-energy-tuyp-20-vien-1606661166','SKUP12727',1,7,'<p>Thực phẩm bảo vệ sức khỏe vi&ecirc;n uống Đ&ocirc;ng tr&ugrave;ng hạ thảo Pharmekal Pure Cordyceps gi&uacute;p tăng cường sức đề kh&aacute;ng của cơ thể, gi&uacute;p cơ thể khỏe mạnh.</p>','160666116620201129214606xCVYy60eV8dv5Cf6vFOSmQe0JRet3AzLePO7sBFz.jpeg',525.00,525.00,94,1,5,0,1,'2023-03-27 15:22:04','2023-03-27 15:22:04'),(536,'Viên bổ sung Vitamin D3 1000IU Solgar (Lọ 90 viên)','vien-bo-sung-vitamin-d3-1000iu-solgar-lo-90-vien-1606661299','SKUP17805',1,8,'<p>Vi&ecirc;n bổ sung Vitamin D3 1000IU Solgar hỗ trợ tăng cường hấp thu calci, gi&uacute;p duy tr&igrave; sức khỏe xương răng cho người tr&ecirc;n 19 tuổi. Sản phẩm c&oacute; xuất xứ Hoa Kỳ.</p>','160666129920201129214819f0nBJb4D6aj8gpMGX0HwYcTQ4XvAPN6pslOOwJcD.jpeg',470.00,470.00,91,1,12,0,1,'2023-03-27 15:22:04','2023-03-27 15:22:04'),(537,'Viên vitamin và khoáng chất Provibiol Vitamin (Hộp 30 viên)','vien-vitamin-va-khoang-chat-provibiol-vitamin-hop-30-vien-1606661409','SKUP17460',1,9,'<p>Vi&ecirc;n vitamin v&agrave; kho&aacute;ng chất Provibiol Vitamin với hơn 20 loại vitamin v&agrave; kho&aacute;ng chất gi&uacute;p bổ sung c&aacute;c chất vi lượng cần thiết cho cơ thể, hỗ trợ đề kh&aacute;ng, tăng cường sức khỏe.</p>','160666140920201129215009ZtnM2l6xiOFLJfIAa5QFs5Rdy0hVGNuin55H9TBB.jpeg',295.00,295.00,99,1,0,2,1,'2023-03-27 15:22:04','2023-03-27 15:22:04'),(538,'Trà thảo dược Giảm Cân Lanui giúp giảm cân – Slim (20 gói/hộp)','tra-thao-duoc-giam-can-lanui-giup-giam-can-slim-20-goihop-1606661679','SKUP10376',4,10,'<p>Th&acirc;n h&igrave;nh c&acirc;n đối gi&uacute;p cuộc sống năng động, tự tin. Để đảm bảo việc giảm c&acirc;n được an to&agrave;n, tr&agrave; Lanui Giảm C&acirc;n &ndash; Slim được chế biến từ nấm linh chi đỏ kết hợp với một v&agrave;i thảo dược tự nhi&ecirc;n của Việt Nam gi&uacute;p k&iacute;ch th&iacute;ch đốt ch&aacute;y mỡ thừa gi&uacute;p giảm c&acirc;n, l&agrave;m săn chắc cơ bắp v&agrave; ph&ograve;ng ngừa c&aacute;c bệnh li&ecirc;n quan đến b&eacute;o ph&igrave; như tim mạch, tiểu đường, tho&aacute;i h&oacute;a khớp gối, suy gi&atilde;n hệ tĩnh mạch chi dưới.</p>','160666167920201129215439uOMU5zreapKf6JWMNzApM7rSYap3AM6lFGBqXMCz.jpeg',150.00,150.00,100,1,0,0,1,'2023-03-27 15:22:04','2023-03-27 15:22:04'),(539,'Đường ăn kiêng Tropicana Slim Low Calorie Sweetener Classic (Hộp 50 gói x 2g)','duong-an-kieng-tropicana-slim-low-calorie-sweetener-classic-hop-50-goi-x-2g-1606661890','SKUP13468',4,2,'<p>Đường ăn ki&ecirc;ng Tropicana Slim Low Calorie Sweetener Classic với nguy&ecirc;n liệu tự nhi&ecirc;n Sorbitol, kh&ocirc;ng chất bảo quản, được sử dụng cho nhiều loại thức uống kh&aacute;c nhau như tr&agrave;, c&agrave; ph&ecirc;, nước tr&aacute;i c&acirc;y, hoặc phục vụ cho việc nấu ăn. Sản phẩm th&iacute;ch hợp cho người ăn ki&ecirc;ng v&agrave; người bị bệnh tiểu đường.&nbsp;</p>','160666465220201129224412stCgjkN0hnbtxf3lAaBHRUD96gbqiMpHDQdECUgm.jpeg',70.00,67.00,100,1,12,57,1,'2023-03-27 15:22:04','2023-03-27 15:22:04'),(540,'Viên sủi hỗ trợ sức khỏe Swiss Energy','vien-sui-ho-tro-suc-khoe-swiss-energy-1606667172','SKUP18546',2,10,'<p>Bộ ba vi&ecirc;n sủi hỗ trợ sức khỏe Swiss Energy gồm 3 tu&yacute;p&nbsp;vi&ecirc;n sủi Vitamin C tăng sức đề kh&aacute;ng, Multi Vitamins + Biotin hỗ trợ da t&oacute;c v&agrave; Calcium ph&aacute;t triển xương răng.</p>','160666717220201129232612uGKuDtra4FzvmGsa7cnHG8IPtHcXDRGEeN2MSKU8.jpeg',70.00,70.00,0,1,0,1,1,'2023-03-27 15:22:04','2023-03-27 15:22:04'),(541,'Nước uống thanh lọc cơ thể Kinohimitsu D’Tox Plum Juice (Hộp 6 chai 30ml)','nuoc-uong-thanh-loc-co-the-kinohimitsu-dtox-plum-juice-hop-6-chai-30ml-1606667317','SKUP18147',2,5,'<p>Nước uống thanh lọc cơ thể Kinohimitsu D&rsquo;Tox Plum Juice l&agrave; thực phẩm chức năng gi&uacute;p giải độc tố v&agrave; hỗ trợ giảm c&acirc;n, chứa c&aacute;c th&agrave;nh phần ho&agrave;n to&agrave;n tự nhi&ecirc;n, hương vị thơm ngon, dễ uống ph&ugrave; hợp cho mọi đối tượng sử dụng.</p>','1606667317202011292328375QxKLyF35TFBSAEwALBr9hZdjyxuuieIlnjY2yhY.jpeg',790.00,711.00,99,1,30,12,1,'2023-03-27 15:22:04','2023-03-27 15:22:04'),(542,'Thực phẩm bảo vệ sức khỏe giải độc, mát gan Actiso (Hộp 10 ống)','thuc-pham-bao-ve-suc-khoe-giai-doc-mat-gan-actiso-hop-10-ong-1606668450','SKUP11131',3,4,'<p>Thực phẩm bảo vệ sức khỏe Actiso gi&uacute;p tăng cường chức năng gan trong c&aacute;c trường hợp: Suy gan, vi&ecirc;m gan, gan nhiễm mỡ, v&agrave;ng da, đồng thời gi&uacute;p lợi mật, lợi tiểu, nhuận tr&agrave;ng v&agrave; ăn ngon miệng.</p>','160666845020201129234730Z5cydDI7QSHyOBug6q9G7LfHhagP1dTj6gyZg8cK.jpeg',50.00,50.00,100,1,0,0,1,'2023-03-27 15:22:04','2023-03-27 15:22:04'),(543,'Nước giải rượu Condition (75ml)','nuoc-giai-ruou-condition-75ml-1606668642','SKUP05550',3,5,'<p>Nước giải rượu Condition gi&uacute;p giải rượu, giảm c&aacute;c triệu chứng kh&oacute; chịu sau khi uống rượu, hỗ trợ giải độc gan.</p>','160666864220201129235042anGTazhRoNjS84b06Fvee0Q0eBwL9RtfuLuRoI7v.jpeg',48.00,48.00,100,1,0,0,1,'2023-03-27 15:22:04','2023-03-27 15:22:04'),(544,'Nước uống tinh nghệ Condition Curcumin Fast (100ml)','nuoc-uong-tinh-nghe-condition-curcumin-fast-100ml-1606668759','SKUP18158',3,3,'<p>Nước uống tinh nghệ Condition Curcumin Fast l&agrave; thực phẩm bảo vệ sức khỏe gi&uacute;p hỗ trợ cải thiện sức khỏe dạ d&agrave;y, hệ ti&ecirc;u h&oacute;a nhờ c&ocirc;ng dụng nổi bật của tinh Nghệ Nano Curcumin, ph&ugrave; hợp sử dụng cho người vi&ecirc;m lo&eacute;t dạ d&agrave;y, h&agrave;nh t&aacute; tr&agrave;ng.</p>','160666875920201129235239WFvxGEgniwvYiqoIOnRk05zPBCOXugitRmV49bnG.jpeg',25.00,25.00,100,1,30,1,1,'2023-03-27 15:22:04','2023-03-27 15:22:04'),(545,'Nước giải rượu M5 (100ml)','nuoc-giai-ruou-m5-100ml-1606668899','SKUP15780',3,8,'<p>Nước giải rượu M5 gi&uacute;p tăng cường chức năng gan, thanh nhiệt, m&aacute;t gan, giải độc gan, hỗ trợ giảm c&aacute;c triệu chứng kh&oacute; chịu sau khi uống rượu, bia.</p>','160666889920201129235459fhWLVlvFZZpqqQ1lL5chfnYFCSUscCy167jgJAt0.jpeg',52.00,52.00,100,1,0,0,1,'2023-03-27 15:22:04','2023-03-27 15:22:04'),(546,'Thực phẩm bảo vệ sức khỏe men vi sinh Yunpro (Hộp 20 gói)','thuc-pham-bao-ve-suc-khoe-men-vi-sinh-yunpro-hop-20-goi-1606668998','SKUP13127',3,10,'<p>Thực phẩm bảo vệ sức khỏe men vi sinh Yunpro gi&uacute;p bổ sung c&aacute;c vi sinh vật c&oacute; &iacute;ch, ức chế c&aacute;c vi khuẩn c&oacute; hại, gi&uacute;p lập lại c&acirc;n bằng hệ vi sinh đường ruột. Sản phẩm hỗ trợ trường hợp rối loạn ti&ecirc;u h&oacute;a do loạn khuẩn đường ruột hoặc do sau khi d&ugrave;ng thuốc kh&aacute;ng sinh d&agrave;i ng&agrave;y đồng thời gi&uacute;p trẻ em ăn ngon miệng, n&acirc;ng cao sức đề kh&aacute;ng.</p>','160666899820201129235638pLLbXrTQmRA3pNxZo8oDD597osEUFxV1p3BdK3b1.jpeg',148.00,148.00,100,1,0,0,1,'2023-03-27 15:22:04','2023-03-27 15:22:04'),(547,'Thực phẩm bảo vệ sức khỏe giúp nhuận tràng, giảm các triệu chứng của bệnh trĩ Giấp Cá Plus (3 vỉ x 10 viên/hộp)','thuc-pham-bao-ve-suc-khoe-giup-nhuan-trang-giam-cac-trieu-chung-cua-benh-tri-giap-ca-plus-3-vi-x-10-vienhop-1606669252','SKUP15425',3,7,'<p>Thực phẩm bảo vệ sức khỏe Giấp C&aacute; Plus với th&agrave;nh phần chứa cao kh&ocirc; diếp c&aacute;, chất xơ tự nhi&ecirc;n nhập khẩu từ Bỉ, cao hạt dẻ ngựa gi&uacute;p nhuận tr&agrave;ng, tăng t&iacute;nh bền của th&agrave;nh mạch đồng thời hỗ trợ giảm c&aacute;c triệu chứng của bệnh trĩ. Sản phẩm d&agrave;nh cho người hay bị t&aacute;o b&oacute;n do ăn uống hoặc thai kỳ, bị trĩ.</p>','160666925220201130000052kOZ7dBPi2i2PssfscGtvFvnYCNu8q9s2rzeCAv8n.jpeg',100.00,99.00,100,1,0,0,1,'2023-03-27 15:22:04','2023-03-27 15:22:04'),(548,'Thực phẩm chức năng làm giảm đầy hơi, khó tiêu và ợ chua Dizzo (12 vỉ x 4 viên/hộp)','thuc-pham-chuc-nang-lam-giam-day-hoi-kho-tieu-va-o-chua-dizzo-12-vi-x-4-vienhop-1606669429','SKUP02417',3,3,'<p>Dizzo gi&uacute;p ti&ecirc;u h&oacute;a c&aacute;c thức ăn gi&agrave;u Protein, Glucid, Lipid một c&aacute;ch dễ d&agrave;ng hơn, gi&uacute;p ăn ngon miệng, tăng cường chuyển h&oacute;a v&agrave; hấp thu chất dinh dưỡng, giảm đầy hơi, kh&oacute; ti&ecirc;u.</p>','160666942920201130000349wWyJsAKzWCbHCYfhYgY0xA4QmMu2qWbOBsZuhD7D.jpeg',153.60,153.60,100,1,0,0,1,'2023-03-27 15:22:04','2023-03-27 15:22:04'),(549,'Siro giúp trẻ ăn ngon, hỗ trợ hệ tiêu hóa khỏe mạnh Pediakid Appetit -Tonus (Chai 125ml)','siro-giup-tre-an-ngon-ho-tro-he-tieu-hoa-khoe-manh-pediakid-appetit-tonus-chai-125ml-1606669572','SKUP11699',3,5,'<p>Siro Pediakid Appetit -Tonus gi&uacute;p k&iacute;ch th&iacute;ch trẻ ăn ngon, gi&uacute;p ti&ecirc;u h&oacute;a v&agrave; hấp thu tối đa thức ăn; chống t&aacute;o b&oacute;n, ti&ecirc;u chảy; k&iacute;ch th&iacute;ch nhu động ruột, gi&uacute;p dạ d&agrave;y hoạt động tốt hơn, cho trẻ hệ ti&ecirc;u h&oacute;a khỏe mạnh v&agrave; mau lớn.</p>','160666957220201130000612hn79IUpbl617c5Fc27TQIFw49wfDUUWXbMg6GcDb.jpeg',270.00,270.00,100,1,0,0,1,'2023-03-27 15:22:04','2023-03-27 15:22:04'),(550,'Thực phẩm bảo vệ sức khỏe giúp giải độc gan BioCo Simarin Extra (Hộp 20 viên x 4 vỉ)','thuc-pham-bao-ve-suc-khoe-giup-giai-doc-gan-bioco-simarin-extra-hop-20-vien-x-4-vi-1606669693','SKUP14480',3,4,'<p>Thực phẩm bảo vệ sức khỏe BioCo Simarin Extra chứa Silymarin v&agrave; Cholin gi&uacute;p giải độc gan, tăng cường chức năng gan, ph&ograve;ng ngừa v&agrave; cải thiện c&aacute;c bệnh l&yacute; về gan. D&agrave;nh cho người c&oacute; chức năng gan suy giảm hoặc bị nhiễm độc từ m&ocirc;i trường nghề nghiệp. Người muốn tăng cường chức năng gan.</p>','160666969320201130000813VK2ADXMs76V6ouqr2wy7qGbL23G60TQ23JtSssiH.jpeg',480.00,480.00,100,1,0,0,1,'2023-03-27 15:22:04','2023-03-27 15:22:04'),(551,'Thực phẩm bảo vệ sức khỏe men vi sinh Bifina R Health Aid (Hộp 60 gói)','thuc-pham-bao-ve-suc-khoe-men-vi-sinh-bifina-r-health-aid-hop-60-goi-1606669824','SKUP13154',3,4,'<p>Thực phẩm bảo vệ sức khỏe men vi sinh Bifina R Health Aid gi&uacute;p bổ sung vi khuẩn c&oacute; lợi cho đường ruột, gi&uacute;p c&acirc;n bằng hệ vi sinh vật đường ruột, k&iacute;ch th&iacute;ch sự ph&aacute;t triển của c&aacute;c vi khuẩn c&oacute; lợi đồng thời hỗ trợ qu&aacute; tr&igrave;nh ti&ecirc;u h&oacute;a thức ăn, tăng cường hấp thu dưỡng chất, tăng cường hệ miễn dịch.&nbsp;</p>','160666982420201130001024s9I43YeziNWvEvdNeu1hyY0UCPiuF0th9hTWoY4Y.jpeg',1026.00,1025.00,100,1,0,0,1,'2023-03-27 15:22:04','2023-03-27 15:22:04'),(552,'Thực phẩm bảo vệ sức khỏe hỗ trợ chức năng gan Mega Liver (Hộp 30 viên)','thuc-pham-bao-ve-suc-khoe-ho-tro-chuc-nang-gan-mega-liver-hop-30-vien-1606669952','SKUP15009',3,7,'<p>Thực phẩm bảo vệ sức khỏe Mega Liver gi&uacute;p m&aacute;t gan, giải độc gan v&agrave; tăng cường chức năng gan trong c&aacute;c trường hợp vi&ecirc;m gan, gan nhiễm mỡ, xơ gan, n&oacute;ng gan, uống nhiều bia rượu, bị ngộ độc thực phẩm v&agrave; sử dụng thuốc c&oacute; hại đến tế b&agrave;o gan.</p>','160666995220201130001232p8uVaPeCvDQ3HIbRuAsvf9cJpl009knAYK2yS4VE.jpeg',348.00,348.00,100,1,90,0,1,'2023-03-27 15:22:04','2023-03-27 15:22:04'),(553,'Cốm dạ dày Forte (Hộp 20 gói)','com-da-day-forte-hop-20-goi-1606670060','SKUP15426',3,5,'<p>Cốm dạ d&agrave;y Forte với th&agrave;nh phần chứa tinh nghệ đen, cao ch&egrave; d&acirc;y, mật ong, minh ph&agrave;n chế,&hellip;hỗ trợ giảm c&aacute;c triệu chứng của vi&ecirc;m lo&eacute;t dạ d&agrave;y &ndash; t&aacute; tr&agrave;ng, hỗ trợ bổ tỳ. Sản phẩm d&agrave;nh cho người đang bị vi&ecirc;m lo&eacute;t, đau dạ d&agrave;y &ndash; t&aacute; tr&agrave;ng, người hay bị đau thượng vị, đầy hơi kh&oacute; ti&ecirc;u v&agrave; ợ n&oacute;ng, ợ chua.</p>','1606670060202011300014204cpsmCQ9weizaxP2ggexMyQmakqJUMiBsSOfEP1z.jpeg',110.00,110.00,100,1,0,27,1,'2023-03-27 15:22:04','2023-03-27 15:22:04'),(554,'Viên bổ gan Blackmores Milk Thistle (Lọ 42 viên)','vien-bo-gan-blackmores-milk-thistle-lo-42-vien-1606670166','SKUP17449',3,1,'<p>Vi&ecirc;n bổ gan Blackmores Milk Thistle với th&agrave;nh phần chiết xuất kế sữa chứa flavanolignans gi&uacute;p hỗ trợ chức năng gan, phục hồi gan v&agrave; bảo vệ gan khỏi c&aacute;c chất độc hại.</p>','160667016620201130001606J6EtWMsqmPTvnmhaoywfL6QtPdZhL6murS5v4iuR.jpeg',459.00,459.00,100,1,0,0,1,'2023-03-27 15:22:04','2023-03-27 15:22:04');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `customer_id` int unsigned DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `phone_number` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `customer_notes` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `notes` longtext CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `amount` double(8,2) NOT NULL,
  `score_awards` double(8,2) NOT NULL DEFAULT '0.00',
  `admin_id_status_shipped` int unsigned DEFAULT NULL,
  `admin_id_status_delivered` int unsigned DEFAULT NULL,
  `admin_id_status_cancel` int unsigned DEFAULT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `order_id_unique` (`order_id`),
  KEY `customer_id` (`customer_id`),
  KEY `admin_id_status_shipped` (`admin_id_status_shipped`),
  KEY `admin_id_status_delivered` (`admin_id_status_delivered`),
  KEY `admin_id_status_cancel` (`admin_id_status_cancel`),
  CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  CONSTRAINT `transactions_ibfk_3` FOREIGN KEY (`admin_id_status_shipped`) REFERENCES `admins` (`id`),
  CONSTRAINT `transactions_ibfk_4` FOREIGN KEY (`admin_id_status_delivered`) REFERENCES `admins` (`id`),
  CONSTRAINT `transactions_ibfk_5` FOREIGN KEY (`admin_id_status_cancel`) REFERENCES `admins` (`id`),
  CONSTRAINT `transactions_ibfk_6` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `wishlists`
--

DROP TABLE IF EXISTS `wishlists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlists` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `product_id` (`product_id`),
  KEY `wishlists_ibfk_1` (`customer_id`),
  CONSTRAINT `wishlists_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `wishlists_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-27 23:06:29
