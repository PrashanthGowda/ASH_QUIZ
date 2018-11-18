-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: ASHRAMA_QUIZ
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
-- Table structure for table `USERS`
--

DROP TABLE IF EXISTS `USERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USERS` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(25) NOT NULL,
  `user_age` int(11) NOT NULL,
  `user_gender` varchar(25) NOT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `user_mobile` varchar(25) NOT NULL,
  `user_created_at` varchar(45) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_mobile_UNIQUE` (`user_mobile`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USERS`
--

LOCK TABLES `USERS` WRITE;
/*!40000 ALTER TABLE `USERS` DISABLE KEYS */;
INSERT INTO `USERS` VALUES (1,'jp',25,'Male','jp@gmail.com','11','2018-11-15 22:48:12.164'),(4,'jp1',25,'Male','jp@gmaila.com','111','2018-11-15 22:59:22.203'),(7,'jp1',25,'Male','jp@gmailaa.com','1111','2018-11-17 14:43:27.818'),(8,'Prashanth',22,'','','','2018-11-17 14:47:43.158'),(9,'Prashanth',22,'male','jprashanthgowda34@gmail.com','07411432462','2018-11-17 14:47:50.119'),(23,'dsf',23,'male','jprashanthgowda34@gmail.com6','074114324625','2018-11-17 15:29:03.676'),(24,'Prashanth H J',22,'male','jprashanthgowda3411@gmail.com','0741143246211','2018-11-17 15:36:34.030'),(29,'Prashanth H J11',22,'female','jprashanthgowda1134@gmail.com11','074114324621111','2018-11-17 16:01:55.196'),(30,'sdfg',22,'male','jprashan77thgowda34@gmail.com','0741143246277','2018-11-17 16:04:26.359'),(31,'Prashanth H J',22,'male','jprashanthgowda34@gmail.com','07411432462222','2018-11-17 16:15:46.499'),(33,'Prashanth H J',22,'male','jprashanthgowda34@gmail.com','074114324622','2018-11-18 17:02:45.762'),(34,'priya',22,'female','jprashanthgowda3499@gmail.com','0741143246299','2018-11-18 20:24:28.157'),(36,'Prashanth H J',22,'female','','0741143246211113','2018-11-18 20:27:00.872'),(37,'Lokesh',22,'male','lokesh@gmail.c0m','99889988999','2018-11-18 21:48:45.439'),(38,'dasdas',22,'male','jprashanthgowda34@gmail.com','0741143246222222','2018-11-18 21:54:21.296'),(39,'Prashanth H J',22,'male','jprashanthgowda34@gmail.com','07411432462111111','2018-11-18 22:04:18.145'),(40,'Prashanth H J',22,'male','jprashanthgowda34@gmail.com','074114324621212212','2018-11-18 22:07:37.466'),(42,'Prashanth H J',22,'female','jprashanthgowda34@gmail.com','0741143246211112212','2018-11-18 22:26:27.574'),(43,'Prashanth H J',22,'male','jprashanthgowda34@gmail.com','074114324621','2018-11-18 22:29:05.219');
/*!40000 ALTER TABLE `USERS` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-18 22:40:19
