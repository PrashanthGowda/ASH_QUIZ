-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: ASHRAMA_QUIZ_LIVE
-- ------------------------------------------------------
-- Server version	5.7.21

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
  `index_total` int(11) NOT NULL,
  `total_question` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `quiz_created_at` varchar(45) NOT NULL,
  `voucher_amount` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_quiz_id`),
  UNIQUE KEY `user_quiz_id_UNIQUE` (`user_quiz_id`),
  UNIQUE KEY `voucher_UNIQUE` (`voucher`),
  KEY `users_quiz_details_ibfk_1` (`user_id`),
  CONSTRAINT `users_quiz_details_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `USERS` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USERS_QUIZ_DETAILS`
--

LOCK TABLES `USERS_QUIZ_DETAILS` WRITE;
/*!40000 ALTER TABLE `USERS_QUIZ_DETAILS` DISABLE KEYS */;
INSERT INTO `USERS_QUIZ_DETAILS` VALUES (45,'[47, 191, 283, 369, 418, 437, 477, 491, 638, 681]','[2, 0, 1, 2, 2, 1, 3, 0, 2, 0]',NULL,'151',2,10,98,'1547182025463',NULL),(46,'[1, 2, 3, 4, 5, 6, 7, 8, 346, 347]','[0, 1, 1, 1, 0, 2, 3, 1, 2, 0]','rkm-8ZKOU4rJ','141',9,10,99,'1547182608031','200'),(47,'[1, 2, 3, 4, 5, 6, 7, 8, 346, 347]','[0, 1, 1, 1, 0, 2, 3, 1, 0, 1]','rkm-WaWHpfXS','146',8,10,101,'1547182709584','200'),(48,'[1, 2, 3, 4, 5, 6, 7, 8, 346, 347]','[0, 1, 1, 1, 0, 2, 3, 1, 1, 2]','rkm-l6WH6BIw','142',8,10,102,'1547183006590','200'),(49,'[45, 88, 296, 359, 366, 460, 479, 485, 553, 660]','[0, 2, 2, 1, 1, 3, 1, 0, 3, 1]',NULL,'144',3,10,103,'1547183119935',NULL),(50,'[49, 93, 139, 146, 229, 280, 334, 521, 623]','[2, 3, 0, 3, 3, 0, 2, 2, -1]',NULL,'0',3,10,104,'1547183332377',NULL);
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

-- Dump completed on 2019-01-11 10:43:46
