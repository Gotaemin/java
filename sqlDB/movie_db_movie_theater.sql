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
-- Table structure for table `movie_theater`
--

DROP TABLE IF EXISTS `movie_theater`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movie_theater` (
  `theaterNum` int NOT NULL AUTO_INCREMENT,
  `movieNum` int DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `local` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`theaterNum`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_theater`
--

LOCK TABLES `movie_theater` WRITE;
/*!40000 ALTER TABLE `movie_theater` DISABLE KEYS */;
INSERT INTO `movie_theater` VALUES (1,1,'서울','강남'),(3,1,'서울','홍대입구'),(4,1,'서울','목동'),(5,1,'서울','불광'),(6,1,'서울','건대입구'),(7,1,'서울','신촌'),(8,2,'서울','강남'),(9,2,'서울','홍대입구'),(10,2,'서울','목동'),(11,2,'서울','불광'),(12,3,'서울','건대입구'),(13,3,'서울','신촌'),(14,4,'서울','강남'),(15,4,'서울','홍대입구'),(16,4,'서울','목동'),(17,4,'서울','불광'),(18,4,'서울','건대입구'),(19,4,'서울','신촌');
/*!40000 ALTER TABLE `movie_theater` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-16 17:25:29
