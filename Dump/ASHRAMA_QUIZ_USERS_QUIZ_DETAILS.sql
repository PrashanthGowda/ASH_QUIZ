-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: ASHRAMA_QUIZ
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `USERS_QUIZ_DETAILS`
--

DROP TABLE IF EXISTS `USERS_QUIZ_DETAILS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USERS_QUIZ_DETAILS` (
  `user_quiz_id` int(11) NOT NULL AUTO_INCREMENT,
  `attended_quiz_questions` json NOT NULL,
  `answers_index` json NOT NULL,
  `voucher` varchar(25) DEFAULT NULL,
  `total_time_taken` varchar(255) NOT NULL,
  `total_correct_answers` int(11) NOT NULL,
  `total_question` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `quiz_created_at` varchar(45) NOT NULL,
  PRIMARY KEY (`user_quiz_id`),
  UNIQUE KEY `user_quiz_id_UNIQUE` (`user_quiz_id`),
  UNIQUE KEY `voucher_UNIQUE` (`voucher`),
  KEY `users_quiz_details_ibfk_1` (`user_id`),
  CONSTRAINT `users_quiz_details_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `USERS` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USERS_QUIZ_DETAILS`
--

LOCK TABLES `USERS_QUIZ_DETAILS` WRITE;
/*!40000 ALTER TABLE `USERS_QUIZ_DETAILS` DISABLE KEYS */;
INSERT INTO `USERS_QUIZ_DETAILS` VALUES (1,'[1, 2, 3, 4]','[0, 1, 2, 3]','sdasdasda1','10 minutes',3,4,1,'2018-11-15 23:42:42.542'),(3,'[1, 2, 3, 4]','[0, 1, 2, 3]','sdasdasda11','10 minutes',3,4,4,'2018-11-15 23:45:20.709'),(4,'[1, 2, 3, 4]','[0, 1, 2, 3]','sdasdasda','10 minutes',3,4,4,'2018-11-15 23:45:30.006'),(5,'\"[1, 2, 3, 4]\"','\"[0, 1, 2, 3]\"','cWZylLP7','10 minutes',4,4,4,'2018-11-18 21:41:32.343'),(6,'\"[1, 2, 3, 4]\"','\"[0, 1, 2, 3]\"','OBODptLU','10 minutes',4,4,4,'2018-11-18 21:41:54.610'),(7,'\"[1, 2, 3, 4]\"','\"[0, 1, 2, 3]\"','EF605Fq0','10 minutes',4,4,4,'2018-11-18 21:42:53.484'),(8,'\"[1, 2, 3, 4]\"','\"[0, 1, 2, 3]\"','Zr8Xv6yU','10 minutes',4,4,4,'2018-11-18 21:58:23.031'),(9,'[5, 4, 3, 9, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8]','[3, 2, 3, 0]','','10 mins',17,5,40,'2018-11-18 22:23:35.301'),(11,'[5, 4, 3, 9, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8]','[3, 2, 3, 0]',NULL,'10 mins',19,5,40,'2018-11-18 22:24:42.016'),(12,'[5, 4, 3, 9, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8]','[3, 2, 3, 0]',NULL,'10 mins',20,5,40,'2018-11-18 22:24:43.111'),(13,'[5, 4, 3, 9, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8]','[3, 2, 3, 0]',NULL,'10 mins',21,5,40,'2018-11-18 22:24:54.678'),(14,'[5, 4, 3, 9, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8, 8]','[3, 2, 3, 0]',NULL,'10 mins',22,5,40,'2018-11-18 22:25:19.023'),(15,'[5, 4, 3, 8, 9, 9, 9]','[3, 2, 3, 1]',NULL,'10 mins',7,5,42,'2018-11-18 22:27:28.335'),(17,'[4, 3, 5, 9, 10, 10]','[2, 3, 3, 0]',NULL,'10 mins',6,5,43,'2018-11-18 22:31:16.896'),(18,'[4, 3, 5, 9, 10, 10, 10]','[2, 3, 3, 0]',NULL,'10 mins',7,5,43,'2018-11-18 22:31:23.184'),(19,'[4, 3, 5, 9, 10, 10, 10, 10]','[2, 3, 3, 0]',NULL,'10 mins',8,5,43,'2018-11-18 22:31:24.289'),(20,'[4, 3, 5, 9, 10, 10, 10, 10, 10]','[2, 3, 3, 0]',NULL,'10 mins',9,5,43,'2018-11-18 22:31:32.670'),(21,'[4, 3, 5, 9, 10, 10, 10, 10, 10, 10]','[2, 3, 3, 0]',NULL,'10 mins',10,5,43,'2018-11-18 22:31:48.697'),(22,'[4, 3, 5, 9, 10, 10, 10, 10, 10, 10, 10]','[2, 3, 3, 0]',NULL,'10 mins',11,5,43,'2018-11-18 22:34:45.930'),(23,'[4, 3, 5, 9, 10, 10, 10, 10, 10, 10, 10, 10]','[2, 3, 3, 0]','7orb82lZ','10 mins',12,5,43,'2018-11-18 22:35:13.585'),(24,'[4, 3, 5, 9, 10, 10, 10, 10, 10, 10, 10, 10, 10]','[2, 3, 3, 0]','ttXpTfXy','10 mins',13,5,43,'2018-11-18 22:35:42.530'),(25,'[4, 3, 5, 9, 8]','[\"2\", \"3\", \"3\", \"0\", \"1\"]','rYb2DZdb','10 mins',10,5,52,'2018-11-19 15:29:09.289'),(26,'[4, 3, 5, 8, 9]','[2, 3, 3, 1]','ws8WJkZ7','10 mins',5,5,55,'2018-11-19 16:42:39.150'),(27,'[5, 4, 3, 8, 9]','[3, 2, 3, 1, 0]','zycgdc1A','10 mins',5,5,56,'2018-11-19 16:51:17.099'),(28,'[5, 3, 4, 8, 9]','[3, 3, 2, 0, 1]',NULL,'10 mins',3,5,57,'2018-11-19 16:58:42.102'),(29,'[5, 3, 4, 8, 9]','[3, 3, 2, 1, 0]','2Wczl05C','10 mins',5,5,58,'2018-11-19 17:03:15.276'),(30,'[3, 4, 5, 8, 10]','[3, 2, 3, 1, 2]','YR8eAE0R','10 mins',5,5,59,'2018-11-19 17:05:16.255'),(31,'[3, 5, 4, 10, 8]','[3, 2, 2, 2, 1]','Bf9T1e7D','10 mins',4,5,61,'2018-11-19 17:07:39.793'),(32,'[5, 3, 4, 9, 8]','[3, 3, 2, 0, 1]','mNwlG7Z5','10 mins',5,5,62,'2018-11-19 17:10:24.141'),(33,'[4, 5, 3, 8, 9]','[2, 3, 3, 1, 0]','atc8t1Ep','10 mins',5,5,63,'2018-11-19 17:12:30.150'),(34,'[3, 5, 4, 8, 10]','[3, 3, 2, 1, 2]','m2Hxnw0k','10 mins',5,5,64,'2018-11-19 17:14:30.295'),(35,'[4, 3, 5, 10, 8]','[2, 3, 3, 2, 1]','SpYOz8ny','10 mins',5,5,65,'2018-11-19 17:17:34.219'),(36,'[5, 3, 4, 10, 9]','[3, 3, 2, 2, 0]','fRY7mV43','10 mins',5,5,66,'2018-11-19 17:24:45.419'),(37,'[3, 5, 4, 8, 10]','[3, 3, 2, 1, 2]','iSUL3i9B','10 mins',5,5,67,'2018-11-19 17:27:16.024'),(38,'[3, 4, 5, 9, 10]','[3, 2, 1, 0, 2]','ypWAuGKL','10 mins',4,5,68,'2018-11-19 17:37:05.682'),(39,'[4, 3, 5, 8, 9]','[2, 3, 3, 1, 0]','dSSI1CCx','10 mins',5,5,69,'2018-11-19 18:09:35.441'),(40,'[4, 5, 3, 10, 9]','[2, 3, 3, 2, -1]','4FT9WyEp','10 mins',5,5,71,'2018-11-19 18:26:39.455'),(41,'[3, 5, 4, 10, 9]','[3, 3, 2, 2, 0]','JYJ4yXE9','10 mins',5,5,73,'2018-11-19 18:59:43.078');
/*!40000 ALTER TABLE `USERS_QUIZ_DETAILS` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-19 19:12:17
