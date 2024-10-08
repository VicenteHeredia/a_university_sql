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
-- Table structure for table `grades`
--

DROP TABLE IF EXISTS `grades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `grades` (
  `grades_id` int NOT NULL AUTO_INCREMENT,
  `grades_values` double NOT NULL,
  `grades_courses_id` int DEFAULT NULL,
  `grades_students_id` int DEFAULT NULL,
  `grades_professors_id` int DEFAULT NULL,
  PRIMARY KEY (`grades_id`),
  UNIQUE KEY `grades_id_UNIQUE` (`grades_id`),
  KEY `grades_courses_id_idx` (`grades_courses_id`),
  KEY `grades_students_id_idx` (`grades_students_id`),
  KEY `grades_professors_id_idx` (`grades_professors_id`),
  CONSTRAINT `grades_courses_id` FOREIGN KEY (`grades_courses_id`) REFERENCES `courses` (`courses_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `grades_professors_id` FOREIGN KEY (`grades_professors_id`) REFERENCES `professors` (`professors_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `grades_students_id` FOREIGN KEY (`grades_students_id`) REFERENCES `students` (`students_id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=351 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grades`
--

LOCK TABLES `grades` WRITE;
/*!40000 ALTER TABLE `grades` DISABLE KEYS */;
INSERT INTO `grades` VALUES (51,10,48,0,1),(52,9,49,1,1),(53,9,50,2,1),(54,6,51,3,1),(55,6,52,4,1),(56,8,53,5,1),(57,6,54,6,1),(58,7,55,7,1),(59,6,56,8,1),(60,9,57,9,1),(61,7,58,10,1),(62,8,59,11,1),(63,10,60,12,1),(64,10,61,13,1),(65,10,62,14,1),(66,8,63,15,1),(67,6,64,16,1),(68,5,65,17,1),(69,9,66,18,1),(70,7,67,19,1),(71,7,68,20,1),(72,8,69,21,1),(73,9,70,22,1),(74,9,71,23,1),(75,9,72,24,1),(76,7,73,25,1),(77,7,74,26,1),(78,10,75,27,1),(79,8,76,28,1),(80,10,77,29,1),(81,10,78,30,1),(82,8,79,31,1),(83,7,80,32,1),(84,10,81,33,1),(85,9,82,34,1),(86,9,83,35,1),(87,9,84,36,1),(88,6,85,37,1),(89,7,86,38,1),(90,7,87,39,1),(91,5,88,40,1),(92,5,89,41,1),(93,6,90,42,1),(94,7,91,43,1),(95,7,92,44,1),(96,7,93,45,1),(97,7,94,46,1),(98,8,95,47,1),(99,8,96,48,1),(100,6,97,49,1),(101,6,98,0,1),(102,10,99,1,1),(103,5,100,2,1),(104,9,101,3,1),(105,8,102,4,1),(106,9,103,5,1),(107,7,104,6,1),(108,6,105,7,1),(109,8,106,8,1),(110,7,107,9,1),(111,5,108,10,1),(112,8,109,11,1),(113,8,110,12,1),(114,10,111,13,1),(115,7,112,14,1),(116,9,113,15,1),(117,5,114,16,1),(118,9,115,17,1),(119,5,116,18,1),(120,8,117,19,1),(121,8,118,20,1),(122,8,119,21,1),(123,10,120,22,1),(124,9,121,23,1),(125,7,122,24,1),(126,9,123,25,1),(127,6,124,26,1),(128,9,125,27,1),(129,9,126,28,1),(130,9,127,29,1),(131,8,128,30,1),(132,10,129,31,1),(133,7,130,32,1),(134,8,131,33,1),(135,10,132,34,1),(136,7,133,35,1),(137,7,134,36,1),(138,6,135,37,1),(139,10,136,38,1),(140,7,137,39,1),(141,5,138,40,1),(142,7,139,41,1),(143,10,140,42,1),(144,9,141,43,1),(145,8,142,44,1),(146,7,143,45,1),(147,7,144,46,1),(148,10,145,47,1),(149,10,146,48,1),(150,8,147,49,1),(151,6,148,0,2),(152,6,149,1,2),(153,5,150,2,2),(154,8,151,3,2),(155,6,152,4,2),(156,8,153,5,2),(157,8,154,6,2),(158,7,155,7,2),(159,9,156,8,2),(160,6,157,9,2),(161,7,158,10,2),(162,7,159,11,2),(163,8,160,12,2),(164,8,161,13,2),(165,5,162,14,2),(166,8,163,15,2),(167,9,164,16,2),(168,9,165,17,2),(169,10,166,18,2),(170,8,167,19,2),(171,9,168,20,2),(172,10,169,21,2),(173,5,170,22,2),(174,10,171,23,2),(175,7,172,24,2),(176,5,173,25,2),(177,5,174,26,2),(178,7,175,27,2),(179,10,176,28,2),(180,7,177,29,2),(181,10,178,30,2),(182,8,179,31,2),(183,5,180,32,2),(184,5,181,33,2),(185,8,182,34,2),(186,9,183,35,2),(187,8,184,36,2),(188,6,185,37,2),(189,10,186,38,2),(190,9,187,39,2),(191,5,188,40,2),(192,6,189,41,2),(193,8,190,42,2),(194,9,191,43,2),(195,8,192,44,2),(196,8,193,45,2),(197,8,194,46,2),(198,7,195,47,2),(199,6,196,48,2),(200,10,197,49,2),(201,10,198,0,3),(202,9,199,1,3),(203,8,200,2,3),(204,7,201,3,3),(205,6,202,4,3),(206,8,203,5,3),(207,5,204,6,3),(208,10,205,7,3),(209,7,206,8,3),(210,6,207,9,3),(211,9,208,10,3),(212,8,209,11,3),(213,5,210,12,3),(214,10,211,13,3),(215,8,212,14,3),(216,9,213,15,3),(217,7,214,16,3),(218,8,215,17,3),(219,8,216,18,3),(220,7,217,19,3),(221,7,218,20,3),(222,9,219,21,3),(223,8,220,22,3),(224,7,221,23,3),(225,9,222,24,3),(226,7,223,25,3),(227,10,224,26,3),(228,6,225,27,3),(229,10,226,28,3),(230,5,227,29,3),(231,7,228,30,3),(232,5,229,31,3),(233,8,230,32,3),(234,7,231,33,3),(235,5,232,34,3),(236,6,233,35,3),(237,10,234,36,3),(238,9,235,37,3),(239,7,236,38,3),(240,8,237,39,3),(241,10,238,40,3),(242,8,239,41,3),(243,6,240,42,3),(244,10,241,43,3),(245,6,242,44,3),(246,10,243,45,3),(247,8,244,46,3),(248,7,245,47,3),(249,10,246,48,3),(250,10,247,49,3),(251,6,248,0,4),(252,9,249,1,4),(253,10,250,2,4),(254,6,251,3,4),(255,7,252,4,4),(256,7,253,5,4),(257,10,254,6,4),(258,7,255,7,4),(259,10,256,8,4),(260,5,257,9,4),(261,8,258,10,4),(262,9,259,11,4),(263,6,260,12,4),(264,7,261,13,4),(265,7,262,14,4),(266,5,263,15,4),(267,5,264,16,4),(268,9,265,17,4),(269,7,266,18,4),(270,7,267,19,4),(271,5,268,20,4),(272,6,269,21,4),(273,10,270,22,4),(274,5,271,23,4),(275,7,272,24,4),(276,7,273,25,4),(277,7,274,26,4),(278,6,275,27,4),(279,9,276,28,4),(280,6,277,29,4),(281,8,278,30,4),(282,5,279,31,4),(283,9,280,32,4),(284,10,281,33,4),(285,9,282,34,4),(286,5,283,35,4),(287,10,284,36,4),(288,6,285,37,4),(289,5,286,38,4),(290,8,287,39,4),(291,10,288,40,4),(292,7,289,41,4),(293,10,290,42,4),(294,7,291,43,4),(295,10,292,44,4),(296,9,293,45,4),(297,7,294,46,4),(298,9,295,47,4),(299,5,296,48,4),(300,5,297,49,4),(301,6,298,0,7),(302,9,299,1,7),(303,8,300,2,7),(304,5,301,3,7),(305,6,302,4,7),(306,9,303,5,7),(307,10,304,6,7),(308,5,305,7,7),(309,9,306,8,7),(310,7,307,9,7),(311,10,308,10,7),(312,6,309,11,7),(313,10,310,12,7),(314,5,311,13,7),(315,7,312,14,7),(316,8,313,15,7),(317,9,314,16,7),(318,9,315,17,7),(319,7,316,18,7),(320,9,317,19,7),(321,6,318,20,7),(322,10,319,21,7),(323,6,320,22,7),(324,6,321,23,7),(325,10,322,24,7),(326,10,323,25,7),(327,7,324,26,7),(328,7,325,27,7),(329,9,326,28,7),(330,8,327,29,7),(331,6,328,30,7),(332,5,329,31,7),(333,8,330,32,7),(334,9,331,33,7),(335,7,332,34,7),(336,9,333,35,7),(337,7,334,36,7),(338,8,335,37,7),(339,9,336,38,7),(340,7,337,39,7),(341,10,338,40,7),(342,7,339,41,7),(343,5,340,42,7),(344,7,341,43,7),(345,8,342,44,7),(346,8,343,45,7),(347,5,344,46,7),(348,5,345,47,7),(349,7,346,48,7),(350,6,347,49,7);
/*!40000 ALTER TABLE `grades` ENABLE KEYS */;
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
