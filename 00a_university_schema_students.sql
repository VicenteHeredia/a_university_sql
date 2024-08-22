-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: a_university_schema
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.22.04.1

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
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `students_id` int NOT NULL AUTO_INCREMENT,
  `students_name` varchar(45) NOT NULL,
  `students_email` varchar(45) NOT NULL,
  PRIMARY KEY (`students_id`),
  UNIQUE KEY `studens_id_UNIQUE` (`students_id`),
  UNIQUE KEY `students_email_UNIQUE` (`students_email`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Student	0','student0@university.com'),(2,'Student	1','student1@university.com'),(3,'Student	2','student2@university.com'),(4,'Student	3','student3@university.com'),(5,'Student	4','student4@university.com'),(6,'Student	5','student5@university.com'),(7,'Student	6','student6@university.com'),(8,'Student	7','student7@university.com'),(9,'Student	8','student8@university.com'),(10,'Student	9','student9@university.com'),(11,'Student	10','student10@university.com'),(12,'Student	11','student11@university.com'),(13,'Student	12','student12@university.com'),(14,'Student	13','student13@university.com'),(15,'Student	14','student14@university.com'),(16,'Student	15','student15@university.com'),(17,'Student	16','student16@university.com'),(18,'Student	17','student17@university.com'),(19,'Student	18','student18@university.com'),(20,'Student	19','student19@university.com'),(21,'Student	20','student20@university.com'),(22,'Student	21','student21@university.com'),(23,'Student	22','student22@university.com'),(24,'Student	23','student23@university.com'),(25,'Student	24','student24@university.com'),(26,'Student	25','student25@university.com'),(27,'Student	26','student26@university.com'),(28,'Student	27','student27@university.com'),(29,'Student	28','student28@university.com'),(30,'Student	29','student29@university.com'),(31,'Student	30','student30@university.com'),(32,'Student	31','student31@university.com'),(33,'Student	32','student32@university.com'),(34,'Student	33','student33@university.com'),(35,'Student	34','student34@university.com'),(36,'Student	35','student35@university.com'),(37,'Student	36','student36@university.com'),(38,'Student	37','student37@university.com'),(39,'Student	38','student38@university.com'),(40,'Student	39','student39@university.com'),(41,'Student	40','student40@university.com'),(42,'Student	41','student41@university.com'),(43,'Student	42','student42@university.com'),(44,'Student	43','student43@university.com'),(45,'Student	44','student44@university.com'),(46,'Student	45','student45@university.com'),(47,'Student	46','student46@university.com'),(48,'Student	47','student47@university.com'),(49,'Student	48','student48@university.com'),(50,'Student	49','student49@university.com');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-22 11:40:38
