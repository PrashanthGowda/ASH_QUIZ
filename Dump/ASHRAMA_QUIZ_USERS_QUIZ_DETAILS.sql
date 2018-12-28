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
  `voucher_amount` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_quiz_id`),
  UNIQUE KEY `user_quiz_id_UNIQUE` (`user_quiz_id`),
  UNIQUE KEY `voucher_UNIQUE` (`voucher`),
  KEY `users_quiz_details_ibfk_1` (`user_id`),
  CONSTRAINT `users_quiz_details_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `USERS` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USERS_QUIZ_DETAILS`
--

LOCK TABLES `USERS_QUIZ_DETAILS` WRITE;
/*!40000 ALTER TABLE `USERS_QUIZ_DETAILS` DISABLE KEYS */;
INSERT INTO `USERS_QUIZ_DETAILS` VALUES (5,'[59, 159, 292, 346, 399, 422, 429, 465, 494, 512]','[0, 2, 1, 1, 1, 1, 3, 3, 2, 2]','viveka-if3Hi6PN','59962',10,10,12,'1546017886654','300'),(6,'[59, 159, 292, 346, 399, 422, 429, 465, 494, 512]','[0, 2, 1, 1, 1, 1, 3, 3, 2, 0]','rkm-pJIRoqTS','59964',9,10,13,'1546018137101','200'),(7,'[59, 159, 292, 346, 399, 422, 429, 465, 494, 512]','[0, 2, 1, 1, 1, 1, 3, 3, 1, 0]','rkm-LlujBEpY','59923',8,10,14,'1546018225512','200'),(8,'[59, 159, 292, 346, 399, 422, 429, 465, 494, 512]','[0, 2, 1, 1, 1, 1, 3, 1, 1, 0]',NULL,'59892',7,10,15,'1546018290599',NULL),(9,'[111, 161, 297, 380]','[0, 2, 2, -1]',NULL,'0',3,10,17,'1546018875208',NULL),(10,'[93, 132, 219, 358, 359, 388]','[0, 1, 3, 1, 0, -1]',NULL,'0',1,10,19,'1546019307573',NULL),(11,'[86, 179, 231, 326, 328]','[3, 3, 2, 2, -1]',NULL,'0',0,10,21,'1546019705032',NULL),(12,'[42, 148, 276, 310, 357, 373, 387, 510, 527, 563]','[0, 2, 0, 2, 0, 1, 2, 3, 2, 1]',NULL,'24',5,10,23,'1546019824869',NULL),(13,'[53, 153, 239, 338, 374, 391]','[3, 2, 1, 2, 2, -1]',NULL,'0',1,10,24,'1546019895531',NULL),(14,'[84, 181, 255, 343, 358, 371, 396, 469, 506, 515]','[1, 1, 2, 2, 1, 2, 1, 2, 2, 1]',NULL,'115',4,10,27,'1546020043580',NULL),(15,'[36, 156, 274, 354, 367, 385, 432, 497, 563, 588]','[2, 1, 1, 3, 1, 2, 1, 0, 1, 2]',NULL,'119',3,10,30,'1546020197613',NULL),(16,'[49, 149, 294, 326, 399, 406, 472, 493, 508, 539]','[1, 2, 1, 2, 1, 2, 0, 2, 1, 1]',NULL,'116',5,10,35,'1546020769921',NULL),(17,'[115, 189, 258, 300]','[2, 1, 0, -1]',NULL,'0',0,10,42,'1546021614906',NULL),(18,'[68, 208, 294, 300, 301, 302, 303, 343, 417, 454]','[2, 1, 0, 1, 1, 3, 2, 1, 2, 1]',NULL,'86',3,10,45,'1546021930210',NULL);
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

-- Dump completed on 2018-12-29  0:05:20
