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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USERS`
--

LOCK TABLES `USERS` WRITE;
/*!40000 ALTER TABLE `USERS` DISABLE KEYS */;
INSERT INTO `USERS` VALUES (10,'Prashanth 10',21,'male','jp@gmail.com','213123','1546016880244','Andhra Pradesh','India'),(11,'Prashant 8',21,'male','jp@gmaol.xom','73123312','1546016989502','Arunachal Pradesh','India'),(12,'prashanth 10',32,'male','nksd@anal','17432','1546017832072','Karnataka','India'),(13,'prashanth 9',23,'male','jp@fmak','2132312','1546018079620','Karnataka','India'),(14,'prashanth8',21,'male','jp@jkda','21321K','1546018175989','Kerala','India'),(15,'prashanth7',21,'male','kdas@kasdk','31231','1546018253540','Andaman and Nicobar Islands','India'),(16,'test',21,'male','askldsl@sldasdl','231231','1546018713244','Karnataka','India'),(17,'pras',12,'male','sdas@jasasj','12312','1546018814150','Karnataka','India'),(18,'dasd',21,'male','wdas@sadas','123213','1546019192879','dfsd','India'),(19,'asdasdasd',12,'male','wdasdas@asdasd','1231231','1546019245188','Andhra Pradesh','India'),(20,'adsda',21,'male','DAS@D','131231','1546019414076','Andhra Pradesh','India'),(21,'asds',23,'male','dasda@sdas','123123','1546019643729','Andhra Pradesh','India'),(22,'asdasd',12,'male','123121321','23123','1546019738202','Andaman and Nicobar Islands','India'),(23,'asdas',21,'male','dasd@asdsa','dadas','1546019787278','Andhra Pradesh','India'),(24,'dasd',21,'male','dfsdfdkW@knksdn','2131231','1546019870416','Andaman and Nicobar Islands','India'),(26,'dasd',21,'male','dasda@asda','1231222','1546019948329','Andaman and Nicobar Islands','India'),(27,'adasd',21,'male','DSDAS@JNAJS','122311','1546020007613','Andhra Pradesh','India'),(29,'ASDAS',22,'male','DASD#ASDS','12312111','1546020076177','Andhra Pradesh','India'),(30,'123gfsdsf',12,'male','saadsd#sads','123123123','1546020164659','Andhra Pradesh','India'),(32,'qwqwdq',21,'male','sdskd#kskad','1231231122','1546020229095','Andaman and Nicobar Islands','India'),(34,'Prashas',12,'male','jadjs@jasjd','12312312312312','1546020533540','Andhra Pradesh','India'),(35,'dfsdf',22,'male','sdsd#asdasd','1231231231','1546020735082','Andhra Pradesh','India'),(37,'asaks',12,'male','asdas@asda','23123qqq','1546020958415','Karnataka','India'),(38,'sadas',12,'male','dfa@asdas','1212','1546020998369','Andhra Pradesh','India'),(39,'`dasda@',21,'male','DAS@ASDAS','231231312312','1546021035681','Karnataka','India'),(41,'SDADA`',221,'male','ASAS#ASDSD','23123122','1546021201447','Andhra Pradesh','India'),(42,'ASDASDA',21,'male','WDAS@SADASD','12312312','1546021433047','Andaman and Nicobar Islands','India'),(43,'DSDSDAD',21,'male','JP@SADSAS','2312312','1546021700223','Andhra Pradesh','India'),(45,'ASDASD',122,'male','SDASD','123122112','1546021834409','Andaman and Nicobar Islands','India');
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

-- Dump completed on 2018-12-29  0:05:20
