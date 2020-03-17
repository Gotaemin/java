-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: movie_db
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `bbs`
--

DROP TABLE IF EXISTS `bbs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bbs` (
  `bbsID` int NOT NULL,
  `bbsTitle` varchar(50) DEFAULT NULL,
  `userID` varchar(20) DEFAULT NULL,
  `bbsDate` datetime DEFAULT NULL,
  `bbsContent` varchar(2048) DEFAULT NULL,
  `bbsAvailable` int DEFAULT NULL,
  PRIMARY KEY (`bbsID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bbs`
--

LOCK TABLES `bbs` WRITE;
/*!40000 ALTER TABLE `bbs` DISABLE KEYS */;
INSERT INTO `bbs` VALUES (1,'test',NULL,'2020-03-05 16:00:35','test Content Add',1),(2,'qwer','hong','2020-03-05 17:11:02','test',1),(3,'test3','hong','2020-03-06 16:25:01','asdfqwer',1),(4,'test4','hong','2020-03-06 16:26:33','asdfasdf',1),(5,'test4','hong','2020-03-06 16:26:38','asdfasdf',1),(6,'asdfasdfeqte','hong','2020-03-06 16:27:58','1111',1),(7,'555588484848484','hong','2020-03-06 16:28:09','qwerasddddddddddd',1),(8,'eeeeeeeeeee','hong','2020-03-06 16:28:19','fffffff',1),(9,'asdf','hong','2020-03-06 16:29:33','eeeee',1),(10,'11111','hong','2020-03-06 16:29:40','efe',1),(11,'11ë²ì§¸ ê²ìë¬¼','hong','2020-03-06 16:29:54','ãã´ã',1),(12,'<script>alert(\'hello world\')</script>','hong','2020-03-06 22:17:34','XSS attack ',1);
/*!40000 ALTER TABLE `bbs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-17 17:26:34
