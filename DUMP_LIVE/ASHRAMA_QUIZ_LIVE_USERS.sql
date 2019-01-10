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
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USERS`
--

LOCK TABLES `USERS` WRITE;
/*!40000 ALTER TABLE `USERS` DISABLE KEYS */;
INSERT INTO `USERS` VALUES (62,'sdfbdsdds',21,'male','jprashanthgowda34@gmail.com','07411432462','1547138852316','Karnataka','India'),(63,'Prashanth H J',21,'male','jprashanthgowda34@gmail.com','+4474114324621212','1547139156087','Karnataka','India'),(64,'Prashanth H J',21,'male','jprashanthgowda34@gmail.com','+44741212211432462','1547139335541','Karnataka','India'),(65,'Prashanth H J',12,'male','jprashanthgowda34@gmail.com','+44741122111432462','1547139390002','Karnataka','India'),(66,'addasd',21,'male','ASASD@ASDAS','23423233','1547139477791','Bihar','India'),(67,'sdafs@sadas',21,'male','jprashanthgowda34@gmail.com','312312','1547140231959','Karnataka','India'),(68,'Prashanth H J',12,'male','jprashanthgowda34@gmail.com','+447411432462','1547140349716','Karnataka','India'),(70,'Prashanth H J',21,'male','jprashanthgowda34@gmail.com','+44741143246122','1547145041767','Karnataka','India'),(72,'Prashanth H J',21,'male','jprashanthgowda34@gmail.com','127411432462','1547145091680','Karnataka','India'),(73,'sdfa',21,'male','asd@dsf','213245','1547145237987','Bihar','India'),(74,'sdfgs',21,'male','adsf@dsfc','32454','1547145497718','dsfg','India'),(75,'Prashanth H J',21,'male','jprashanthgowda34@gmail.com','+4474114324212262','1547145752973','Karnataka','India'),(76,'wasd',12,'male','jprashanthgowda34@gmail.com','123435','1547146055896','Karnataka','India'),(78,'Prashanth H J',21,'male','jprashanthgowda34@gmail.com','+447411431212462','1547146283816','Karnataka','India'),(79,'Prashanth H J',21,'male','jprashanthgowda34@gmail.com','+447411221432462','1547146497556','Karnataka','India'),(80,'sssda',11,'male','jprashanthgowda34@gmail.com','+447422114324622','1547146712227','Karnataka','India'),(82,'Prashanth H J',21,'male','jprashanthgowda34@gmail.com','+447411432462212','1547147066745','Karnataka','India'),(83,'Prashanth H J',12,'male','jprashanthgowda34@gmail.com','+447411432461222','1547147763086','Karnataka','India'),(84,'qeweq',12,'male','asdsa@dfsdf','13321','1547147907426','Bihar','India'),(85,'asdasd',21,'male','jprashanthgowda34@gmail.com','12231','1547147963185','Karnataka','India');
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

-- Dump completed on 2019-01-11  1:00:35
