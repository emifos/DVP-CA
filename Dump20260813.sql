CREATE DATABASE  IF NOT EXISTS `news` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `news`;
-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: news
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `articles`
--

DROP TABLE IF EXISTS `articles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `body` text,
  `category` varchar(200) DEFAULT NULL,
  `submitted_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `submitted_by` (`submitted_by`),
  CONSTRAINT `articles_ibfk_1` FOREIGN KEY (`submitted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articles`
--

LOCK TABLES `articles` WRITE;
/*!40000 ALTER TABLE `articles` DISABLE KEYS */;
INSERT INTO `articles` VALUES (1,'Why TypeScript Makes Development Easier','TypeScript helps developers catch errors before the code runs by adding static typing to JavaScript. This makes large projects easier to maintain and debug.','Programming',1,'2026-08-06 09:36:52'),(2,'Getting Started with REST APIs','REST APIs allow applications to communicate over HTTP. They are commonly used to send and retrieve data between a frontend and a backend service.','Backend',2,'2026-08-06 09:36:52'),(3,'Introduction to SQL Databases','SQL databases store data in structured tables with rows and columns. They are widely used because they support powerful queries and relationships between data.','Database',3,'2026-08-06 09:36:52'),(4,'My Article','This is my first article!','Text',2,'2026-08-06 12:54:38'),(5,'My second Article','Hello from the other side','Text',2,'2026-08-10 08:10:18'),(6,' ','Hello from the other side','Text',3,'2026-08-10 09:13:43'),(7,'The best title','Hello this is a article about something very exiting','Text',3,'2026-08-10 09:39:44'),(8,'The best title    ','Hello this is a article about something very exiting','Text',3,'2026-08-10 09:41:16'),(9,'Sunshine','Sunshine everyday!','Sun',1,'2026-08-10 09:50:33'),(10,'My title','My body','Lol',2,'2026-08-11 08:02:04'),(11,'Sunshine','Hello this is a article about something very exiting','Sun',6,'2026-08-11 08:17:21'),(12,'Sunshine','Hello this is a article about something very exiting','Sun',5,'2026-08-11 08:17:45'),(13,'Sunshine','Hello this is a article about something very exiting','Sun',2,'2026-08-11 08:17:56'),(14,'Sunshine','Hello this is a article about something very exiting','Sun',1,'2026-08-11 08:18:03'),(15,'Sunshine','Hello this is a article about something very exiting....','Sun',6,'2026-08-11 08:28:27');
/*!40000 ALTER TABLE `articles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'bob@example.com','test_hash_1','2026-08-06 09:29:11'),(2,'charlie@example.com','test_hash_2','2026-08-06 09:29:11'),(3,'diana@example.com','test_hash_3','2026-08-06 09:29:11'),(4,'ems@example.com','$2b$10$I3aL82dKb2.5CLfpE0t67u6nfaPP8BTFShMNLuEoaJTDHuIt7xW5q','2026-08-10 10:26:02'),(5,'emsibobb@example.com','$2b$10$ekoDi9PQM6VH7tz/JNT5.e.fFAlNOxkaqu62cDouIZHEw5Ptvz13i','2026-08-11 08:04:52'),(6,'emilobb@example.com','$2b$10$aCX8/t/z.m3aU64ZbN3r/OOqzBguGsrqAfMIQxg5W1HdudxzaerJS','2026-08-11 08:11:42');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-08-13  9:52:49
