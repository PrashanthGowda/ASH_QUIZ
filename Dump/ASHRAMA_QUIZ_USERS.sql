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
  `user_state` varchar(255) NOT NULL,
  `user_country` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_mobile_UNIQUE` (`user_mobile`),
  UNIQUE KEY `user_id_UNIQUE` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USERS`
--

LOCK TABLES `USERS` WRITE;
/*!40000 ALTER TABLE `USERS` DISABLE KEYS */;
INSERT INTO `USERS` VALUES (58,'Prashanth H J',23,'male','jprashanthgowda34@gmail.com','07411432462','2018-12-02 18:33:43.480','Karnataka','India'),(59,'Prashanth H J',24,'male','jprashanthgowda34@gmail.com','074114324621','2018-12-02 18:37:41.989','Hofu borgarsva i','Iceland'),(60,'pri',19,'female','jprashanthgowda34@gmail.com','1231231312312','2018-12-02 18:41:41.305','Adrar','Algeria'),(61,'Prashanth H J',12,'male','jprashanthgowda34@gmail.com','0741143246212','2018-12-02 18:50:30.322','Karnataka','India'),(62,'Prashanth H J',23,'male','jprashanthgowda34@gmail.com','0741143246223','2018-12-02 18:51:31.535','Bangka-Belitung','Indonesia'),(63,'sda',12,'male','jprashanthgowda34@gmail.com','074114324621111','2018-12-02 18:52:02.201','Arunachal Pradesh','India'),(64,'Prashanth H J',26,'male','jprashanthgowda34@gmail.com','0741143246226','2018-12-02 18:53:46.411','Dhi Qar','Iraq'),(65,'jaua',56,'male','1wwx2','213123','2018-12-02 18:55:21.984','Arunachal Pradesh','India'),(66,'prave',25,'male','jprashanthgowda34@gmail.com','07411432462213','2018-12-02 18:58:12.053','Les Escaldes','Andorra'),(67,'Prashanth H J',54,'male','jprashanthgowda34@gmail.com','0741143246233333','2018-12-02 19:22:34.376','Bihar','India'),(68,'children',12,'male','jprashanthgowda34@gmail.com','074114324621122','2018-12-02 19:57:26.358','Karnataka','India'),(70,'Children',12,'male','jprashanthgowda34@gmail.com','074114324621212','2018-12-02 19:58:46.722','Karnataka','India'),(72,'Adult',26,'male','jprashanthgowda34@gmail.com','074114324621111111','2018-12-02 20:01:39.144','Bihar','India'),(74,'Prashanth H J',32,'male','jprashanthgowda34@gmail.com','07411432462111111','2018-12-02 20:27:29.724','Karnataka','India');
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

-- Dump completed on 2018-12-05 14:55:53
