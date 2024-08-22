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
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `courses_id` int NOT NULL AUTO_INCREMENT,
  `courses_types` varchar(45) NOT NULL,
  `courses_students_id` int DEFAULT NULL,
  `courses_professors_id` int DEFAULT NULL,
  PRIMARY KEY (`courses_id`),
  UNIQUE KEY `courses_id_UNIQUE` (`courses_id`),
  KEY `courses_students_id_idx` (`courses_students_id`),
  KEY `courses_professors_id_idx` (`courses_professors_id`),
  CONSTRAINT `courses_professors_id` FOREIGN KEY (`courses_professors_id`) REFERENCES `professors` (`professors_id`) ON DELETE SET NULL ON UPDATE SET NULL,
  CONSTRAINT `courses_students_id` FOREIGN KEY (`courses_students_id`) REFERENCES `students` (`students_id`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=348 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (48,'Type-0',0,1),(49,'Type-0',1,1),(50,'Type-0',2,1),(51,'Type-0',3,1),(52,'Type-0',4,1),(53,'Type-0',5,1),(54,'Type-0',6,1),(55,'Type-0',7,1),(56,'Type-0',8,1),(57,'Type-0',9,1),(58,'Type-0',10,1),(59,'Type-0',11,1),(60,'Type-0',12,1),(61,'Type-0',13,1),(62,'Type-0',14,1),(63,'Type-0',15,1),(64,'Type-0',16,1),(65,'Type-0',17,1),(66,'Type-0',18,1),(67,'Type-0',19,1),(68,'Type-0',20,1),(69,'Type-0',21,1),(70,'Type-0',22,1),(71,'Type-0',23,1),(72,'Type-0',24,1),(73,'Type-0',25,1),(74,'Type-0',26,1),(75,'Type-0',27,1),(76,'Type-0',28,1),(77,'Type-0',29,1),(78,'Type-0',30,1),(79,'Type-0',31,1),(80,'Type-0',32,1),(81,'Type-0',33,1),(82,'Type-0',34,1),(83,'Type-0',35,1),(84,'Type-0',36,1),(85,'Type-0',37,1),(86,'Type-0',38,1),(87,'Type-0',39,1),(88,'Type-0',40,1),(89,'Type-0',41,1),(90,'Type-0',42,1),(91,'Type-0',43,1),(92,'Type-0',44,1),(93,'Type-0',45,1),(94,'Type-0',46,1),(95,'Type-0',47,1),(96,'Type-0',48,1),(97,'Type-0',49,1),(98,'Type-1',0,1),(99,'Type-1',1,1),(100,'Type-1',2,1),(101,'Type-1',3,1),(102,'Type-1',4,1),(103,'Type-1',5,1),(104,'Type-1',6,1),(105,'Type-1',7,1),(106,'Type-1',8,1),(107,'Type-1',9,1),(108,'Type-1',10,1),(109,'Type-1',11,1),(110,'Type-1',12,1),(111,'Type-1',13,1),(112,'Type-1',14,1),(113,'Type-1',15,1),(114,'Type-1',16,1),(115,'Type-1',17,1),(116,'Type-1',18,1),(117,'Type-1',19,1),(118,'Type-1',20,1),(119,'Type-1',21,1),(120,'Type-1',22,1),(121,'Type-1',23,1),(122,'Type-1',24,1),(123,'Type-1',25,1),(124,'Type-1',26,1),(125,'Type-1',27,1),(126,'Type-1',28,1),(127,'Type-1',29,1),(128,'Type-1',30,1),(129,'Type-1',31,1),(130,'Type-1',32,1),(131,'Type-1',33,1),(132,'Type-1',34,1),(133,'Type-1',35,1),(134,'Type-1',36,1),(135,'Type-1',37,1),(136,'Type-1',38,1),(137,'Type-1',39,1),(138,'Type-1',40,1),(139,'Type-1',41,1),(140,'Type-1',42,1),(141,'Type-1',43,1),(142,'Type-1',44,1),(143,'Type-1',45,1),(144,'Type-1',46,1),(145,'Type-1',47,1),(146,'Type-1',48,1),(147,'Type-1',49,1),(148,'Type-2',0,2),(149,'Type-2',1,2),(150,'Type-2',2,2),(151,'Type-2',3,2),(152,'Type-2',4,2),(153,'Type-2',5,2),(154,'Type-2',6,2),(155,'Type-2',7,2),(156,'Type-2',8,2),(157,'Type-2',9,2),(158,'Type-2',10,2),(159,'Type-2',11,2),(160,'Type-2',12,2),(161,'Type-2',13,2),(162,'Type-2',14,2),(163,'Type-2',15,2),(164,'Type-2',16,2),(165,'Type-2',17,2),(166,'Type-2',18,2),(167,'Type-2',19,2),(168,'Type-2',20,2),(169,'Type-2',21,2),(170,'Type-2',22,2),(171,'Type-2',23,2),(172,'Type-2',24,2),(173,'Type-2',25,2),(174,'Type-2',26,2),(175,'Type-2',27,2),(176,'Type-2',28,2),(177,'Type-2',29,2),(178,'Type-2',30,2),(179,'Type-2',31,2),(180,'Type-2',32,2),(181,'Type-2',33,2),(182,'Type-2',34,2),(183,'Type-2',35,2),(184,'Type-2',36,2),(185,'Type-2',37,2),(186,'Type-2',38,2),(187,'Type-2',39,2),(188,'Type-2',40,2),(189,'Type-2',41,2),(190,'Type-2',42,2),(191,'Type-2',43,2),(192,'Type-2',44,2),(193,'Type-2',45,2),(194,'Type-2',46,2),(195,'Type-2',47,2),(196,'Type-2',48,2),(197,'Type-2',49,2),(198,'Type-3',0,3),(199,'Type-3',1,3),(200,'Type-3',2,3),(201,'Type-3',3,3),(202,'Type-3',4,3),(203,'Type-3',5,3),(204,'Type-3',6,3),(205,'Type-3',7,3),(206,'Type-3',8,3),(207,'Type-3',9,3),(208,'Type-3',10,3),(209,'Type-3',11,3),(210,'Type-3',12,3),(211,'Type-3',13,3),(212,'Type-3',14,3),(213,'Type-3',15,3),(214,'Type-3',16,3),(215,'Type-3',17,3),(216,'Type-3',18,3),(217,'Type-3',19,3),(218,'Type-3',20,3),(219,'Type-3',21,3),(220,'Type-3',22,3),(221,'Type-3',23,3),(222,'Type-3',24,3),(223,'Type-3',25,3),(224,'Type-3',26,3),(225,'Type-3',27,3),(226,'Type-3',28,3),(227,'Type-3',29,3),(228,'Type-3',30,3),(229,'Type-3',31,3),(230,'Type-3',32,3),(231,'Type-3',33,3),(232,'Type-3',34,3),(233,'Type-3',35,3),(234,'Type-3',36,3),(235,'Type-3',37,3),(236,'Type-3',38,3),(237,'Type-3',39,3),(238,'Type-3',40,3),(239,'Type-3',41,3),(240,'Type-3',42,3),(241,'Type-3',43,3),(242,'Type-3',44,3),(243,'Type-3',45,3),(244,'Type-3',46,3),(245,'Type-3',47,3),(246,'Type-3',48,3),(247,'Type-3',49,3),(248,'Type-4',0,4),(249,'Type-4',1,4),(250,'Type-4',2,4),(251,'Type-4',3,4),(252,'Type-4',4,4),(253,'Type-4',5,4),(254,'Type-4',6,4),(255,'Type-4',7,4),(256,'Type-4',8,4),(257,'Type-4',9,4),(258,'Type-4',10,4),(259,'Type-4',11,4),(260,'Type-4',12,4),(261,'Type-4',13,4),(262,'Type-4',14,4),(263,'Type-4',15,4),(264,'Type-4',16,4),(265,'Type-4',17,4),(266,'Type-4',18,4),(267,'Type-4',19,4),(268,'Type-4',20,4),(269,'Type-4',21,4),(270,'Type-4',22,4),(271,'Type-4',23,4),(272,'Type-4',24,4),(273,'Type-4',25,4),(274,'Type-4',26,4),(275,'Type-4',27,4),(276,'Type-4',28,4),(277,'Type-4',29,4),(278,'Type-4',30,4),(279,'Type-4',31,4),(280,'Type-4',32,4),(281,'Type-4',33,4),(282,'Type-4',34,4),(283,'Type-4',35,4),(284,'Type-4',36,4),(285,'Type-4',37,4),(286,'Type-4',38,4),(287,'Type-4',39,4),(288,'Type-4',40,4),(289,'Type-4',41,4),(290,'Type-4',42,4),(291,'Type-4',43,4),(292,'Type-4',44,4),(293,'Type-4',45,4),(294,'Type-4',46,4),(295,'Type-4',47,4),(296,'Type-4',48,4),(297,'Type-4',49,4),(298,'Type-5',0,7),(299,'Type-5',1,7),(300,'Type-5',2,7),(301,'Type-5',3,7),(302,'Type-5',4,7),(303,'Type-5',5,7),(304,'Type-5',6,7),(305,'Type-5',7,7),(306,'Type-5',8,7),(307,'Type-5',9,7),(308,'Type-5',10,7),(309,'Type-5',11,7),(310,'Type-5',12,7),(311,'Type-5',13,7),(312,'Type-5',14,7),(313,'Type-5',15,7),(314,'Type-5',16,7),(315,'Type-5',17,7),(316,'Type-5',18,7),(317,'Type-5',19,7),(318,'Type-5',20,7),(319,'Type-5',21,7),(320,'Type-5',22,7),(321,'Type-5',23,7),(322,'Type-5',24,7),(323,'Type-5',25,7),(324,'Type-5',26,7),(325,'Type-5',27,7),(326,'Type-5',28,7),(327,'Type-5',29,7),(328,'Type-5',30,7),(329,'Type-5',31,7),(330,'Type-5',32,7),(331,'Type-5',33,7),(332,'Type-5',34,7),(333,'Type-5',35,7),(334,'Type-5',36,7),(335,'Type-5',37,7),(336,'Type-5',38,7),(337,'Type-5',39,7),(338,'Type-5',40,7),(339,'Type-5',41,7),(340,'Type-5',42,7),(341,'Type-5',43,7),(342,'Type-5',44,7),(343,'Type-5',45,7),(344,'Type-5',46,7),(345,'Type-5',47,7),(346,'Type-5',48,7),(347,'Type-5',49,7);
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
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
