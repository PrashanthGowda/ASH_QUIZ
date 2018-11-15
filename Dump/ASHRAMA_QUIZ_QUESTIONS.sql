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
-- Table structure for table `QUESTIONS`
--

DROP TABLE IF EXISTS `QUESTIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QUESTIONS` (
  `question_id` int(11) NOT NULL AUTO_INCREMENT,
  `question_options` json NOT NULL,
  `correct_answer_index` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `is_active` tinyint(4) NOT NULL,
  `question_created_at` varchar(45) NOT NULL,
  `question` text NOT NULL,
  PRIMARY KEY (`question_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `CATEGORIES` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUESTIONS`
--

LOCK TABLES `QUESTIONS` WRITE;
/*!40000 ALTER TABLE `QUESTIONS` DISABLE KEYS */;
INSERT INTO `QUESTIONS` VALUES (1,'[\"Don Bradman\", \"Brian Lara\", \"Lane Hutton\", \"Gary Sobers\"]',0,1,1,'2018-11-14 23:34:36','Which cricketer had scored highest individual score in first-class cricket?'),(2,'[\"Ricky Ponting\", \"Mahela Jayawardene\", \"Jacques Kallis\", \"Mark Waugh\"]',2,1,1,'2018-11-14 23:52:08','Which cricketer has taken most catches in ODI cricket?'),(3,'[\"Virender Sehwag\", \"Chris Gayle\", \"Martin Guptill\", \"Rohit Sharma\"]',3,1,1,'2018-11-14 23:52:08','Which cricketer had scored highest individual score in ODI cricket?'),(4,'[\"Lane Hutton\", \"Wally Hammond\", \"Jack Hobbs\", \"Sachin Tendulkar\"]',2,1,1,'2018-11-14 23:52:08','Which cricketer had scored most centuries in first-class cricket?'),(5,'[\"Vivian Richards\", \"Corey Anderson\", \"Shahid Afridi\", \"AB de Villiers\"]',3,1,1,'2018-11-14 23:52:08','Which cricketer had scored fastest century in ODI cricket?'),(6,'[\"Germany\", \"Italy\", \"Spain\", \"Brazil\"]',3,2,1,'2018-11-14 23:52:08','Which of the following country won Football world Cup maximum times?'),(7,'[\"Jurgen Klinsmann\", \"Meradona\", \"Miroslave Klose\", \"Pele\"]',2,2,1,'2018-11-14 23:52:08','Who among the following player scores highest number of goals in Footbal World Cup?'),(8,'[\"kemari\", \"Episkyros\", \"Cuju\", \"Inuit\"]',1,2,1,'2018-11-14 23:52:08','Which of the following term is recognised as an early form of football by FIFA?'),(9,'[\"1930\", \"1931\", \"1932\", \"1933\"]',0,2,1,'2018-11-14 23:52:08','When was the first FIFA World Cup inaugurated?'),(10,'[\"Newcastle\", \"Southampton\", \"Tottenham Hotspur\", \"Lincoln City\"]',2,2,1,'2018-11-14 23:52:08',' Which of following team do not play in stripes?');
/*!40000 ALTER TABLE `QUESTIONS` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-11-15 23:47:17
