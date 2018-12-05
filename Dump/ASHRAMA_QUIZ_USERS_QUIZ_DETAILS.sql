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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USERS_QUIZ_DETAILS`
--

LOCK TABLES `USERS_QUIZ_DETAILS` WRITE;
/*!40000 ALTER TABLE `USERS_QUIZ_DETAILS` DISABLE KEYS */;
INSERT INTO `USERS_QUIZ_DETAILS` VALUES (1,'[4, 5, 3, 9, 8]','[0, 0, 0, 1, -1]',NULL,'10 mins',0,5,61,'2018-12-02 18:50:52.493'),(2,'[5, 4]','[3, 3]',NULL,'10 mins',0,5,63,'2018-12-02 18:52:20.387'),(3,'[4, 3, 5, 9, 8]','[1, 3, 3, 3, 0]',NULL,'10 mins',3,5,64,'2018-12-02 18:54:22.443'),(4,'[3, 5, 4, 10, 8]','[3, 3, 1, 2, -1]',NULL,'10 mins',3,5,65,'2018-12-02 18:55:45.574'),(5,'[5, 4, 3, 9]','[3, 1, 3, -1]',NULL,'10 mins',3,5,66,'2018-12-02 18:58:50.309'),(6,'[8, 17, 29, 41, 44]','[1, 1, 2, 3, 1]',NULL,'10 mins',1,5,74,'2018-12-02 20:28:17.816');
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

-- Dump completed on 2018-12-05 14:55:53
