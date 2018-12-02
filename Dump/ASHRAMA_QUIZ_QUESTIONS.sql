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
  `correct_answer_index` int(1) NOT NULL,
  `category_id` int(1) DEFAULT NULL,
  `is_active` int(1) NOT NULL,
  `question_created_at` varchar(45) NOT NULL,
  `question` text NOT NULL,
  `question_updated_at` varchar(45) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`question_id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QUESTIONS`
--

LOCK TABLES `QUESTIONS` WRITE;
/*!40000 ALTER TABLE `QUESTIONS` DISABLE KEYS */;
INSERT INTO `QUESTIONS` VALUES (1,'[\"1893\", \"1963\", \"1983\", \"1863\"]',3,1,1,'882226357','Swami Vivekananda was born in the year ___________','882226357',NULL),(2,'[\"Ramachandra Dutta\", \"Vishwanatha Dutta\", \"Durgaprasad Dutta\", \"Kaliprasad Dutta\"]',1,1,1,'882226357','______________was the father of Swami Vivekananda.','882226357',NULL),(3,'[\"Chandramani Devi\", \"Shyamasundari Devi\", \"Maheshwari Devi\", \"Bhuvaneshwari Devi\"]',3,1,1,'882226357','______________was the mother of Swami Vivekananda.','882226357',NULL),(4,'[\"Gadaay\", \"Biley\", \"Vivek\", \"None of these\"]',1,1,1,'882226357','Young Narendra (Swami Vivekanand[was nick named as__________in his childhood days.','882226357',NULL),(5,'[\"1863\", \"1963\", \"1983\", \"1893\"]',3,1,1,'882226357','Swami Vivekananda attended the Parliament of Religions at Chicago  in the year________','882226357','image1.png'),(6,'[\"Dakshineshwar\", \"Kamarpukur\", \"Cossipore Garden\", \"None of these\"]',2,2,1,'882226357','Sri Ramakrishna Paramahamsa spent his last days in _______','882226357',NULL),(7,'[\"Radhakrishna Temple\", \"Kali Temple\", \"Devi Temple\", \"Durga Temple\"]',1,2,1,'882226357','Sri Ramakrishna Paramahamsa was the priest in __________temple.','882226357',NULL),(8,'[\"10\", \"12\", \"14\", \"16\"]',3,2,1,'882226357','Monastic direct disciples of Sri Ramakrishna Paramahamsa are__________','882226357',NULL),(9,'[\"Miss Josephine Mc Leod\", \"Christine\", \"Margaret Noble\", \"Hale Sisiters\"]',2,2,1,'882226357','The Spiritual daughter of Swami Vivekananda was__________','882226357',NULL),(10,'[\"Swami Vivekananda\", \"Swami Akhandananda\", \"Swami Ramakrishnananda\", \"Swami Brahmananda\"]',3,2,1,'882226357','Who was regarded as \'Manasa putra\' of Sri Ramakrishna paramahamsa?','882226357','image2.png'),(11,'[\"Beebathsa\", \"Rudra\", \"Adbhuta\", \"Karuna\"]',1,3,1,'882226357','Which of the following \'Rasas\' in the Indian classical music depicts the feeling of anger?','882226357',NULL),(12,'[\"Pondicherry\", \"Panaji\", \"Bombay\", \"Madras\"]',2,3,1,'882226357','Which Indian city was gifted by the Portuguese as dowry to Charles II, the King of England, when he got married to the sister of the King of Portugal in 1662?','882226357',NULL),(13,'[\"BalagangadharnathTilak\", \"Mahatma Gandhi\", \"Tansen\", \"Amir Khusro\"]',1,3,1,'882226357','Pandit Ravi Shankar composed Raga Mohankauns in honour of','882226357',NULL),(14,'[\"Film actor\", \"Photographer\", \"Cinematographer\", \"Film producer\"]',1,3,1,'882226357','Raja Deendayal is described as the first ___________ of India','882226357',NULL),(15,'[\"TirumalaiNayak\", \"Raja RajaChola\", \"KulasekaraPandya\", \"Narasimha II\"]',2,3,1,'882226357','The Meenakshi Temple was originally built by','882226357','image3.png'),(16,'[\"Kozhikode, Kerala\", \"Chidambaram, Tamil Nadu\", \"Khajuraho, Madhya Pradesh\", \"Baroda, Gujarat\"]',1,4,1,'882226357','The Natyanjali Dance Festival is held at','882226357',NULL),(17,'[\"Thanjavur, Tamil nadu\", \"Chidambaram, Tamil Nadu\", \"Shivam, Andhra Pradesh\", \"Vaishno Devi, Jammu and Kashmir\"]',3,4,1,'882226357','Which of the following is believed to be the site of \"AkashLinga\" (Invisible Linga) of Lord Shiva?','882226357',NULL),(18,'[\"Rigveda\", \"Yajurveda\", \"Atharvaveda\", \"Samaveda\"]',0,4,1,'882226357','The Aitareya Upanishad belongs to the','882226357',NULL),(19,'[\"Vishnu\", \"Brahma\", \"Indra\", \"Shiva\"]',1,4,1,'882226357','According to Hindu mythology, who among the following is considered as the Creator of the Universe?','882226357',NULL),(20,'[\"Kurmaavatara\", \"Matsyaavatara\", \"Parashuramaavatara\", \"Rama avatara\"]',1,4,1,'882226357','The earliest avatara of Lord Vishnu was','882226357','image4.png'),(21,'[\"Sri Ramakrishna’s Room at Dakshineshwar\", \"Hriday’s House\", \"Cossipore Garden\", \"Kehsab’s House\"]',2,5,1,'882226357','The photograph of Sri Ramakrishna standing in ecstacy with Hriday supporting him was taken at_______.','882226357',NULL),(22,'[\"Romain Rolland\", \"Max Muller\", \"Girish Chandra Ghosh\", \"Swami Vivekananada\"]',0,5,1,'882226357','Who wrote the article “A Real Atman” on Sri Ramakrishna?','882226357',NULL),(23,'[\"Sister Nivedita. Swami Vivekananada\", \"Swami Vivekananda, Balaram Bose\", \"Sister Nivedita. Sara Ole Bull\", \"Ramachandra Dutta, Nivedita\"]',2,5,1,'882226357','In whose house was the first photograph of Holy Mother taken and took the initiative?','882226357',NULL),(24,'[\"Swami Brahmananda, Swami Premananda\", \"Swami Bramhmananda , Swami Vivekananada\", \"Swami Turiyananada, Swami Saradananada\", \"Swami Ramakrishnananda, Swami Vivekananda\"]',0,5,1,'882226357','Of two of his disciples, Sri Ramakrishna used to say that they were the followers of Jesus Christ in previous incarnations. Who were they?','882226357',NULL),(25,'[\"Kamarpukur\", \"Sihore\", \"Dere\", \"Koalpara\"]',2,5,1,'882226357','In which village of Bengal were the ancestors of Sri Ramakrishna Residing?','882226357','image5.png'),(26,'[\"Chandramani Devi\", \"Dhani\", \"Bhairavi Brahmani\", \"Bhuvaneshwari Devi\"]',1,6,1,'882226357','From whom did Gadadhar received first Bhiksha during his Thread ceremony?','882226357',NULL),(27,'[\"Venkateshwara\", \"Phalaharani Kali Puja\", \"Sanyasa deeksha\", \"Maha Shivaratri\"]',1,6,1,'882226357','On which auspicious occasion did Sri Ramakrishna perform the Shodashi Puja?','882226357',NULL),(28,'[\"Totapuri\", \"Balaram Bose\", \"Bhairavi Brahmani\", \"Pavahari Baba\"]',0,6,1,'882226357','Who gave Sanyasa diksha to Sri Ramakrishna Paramahamsa?','882226357',NULL),(29,'[\"Nag Mahashay\", \"Girish Chandra Ghosh\", \"Swami Vivekananada\", \"Master Mahashay\"]',3,6,1,'882226357','Which disciple of Sri Ramakrishna recorded the conversations of Sri Ramakrishna and later published it as “Sri Sri Ramakrishna Kathamruta”?','882226357',NULL),(30,'[\"12\", \"16\", \"18\", \"None\"]',0,6,1,'882226357','How many Shiva temples are there in Dakshineshwar Kali temple premises?','882226357','image6.png'),(31,'[\"Bankim Chandra Chatterjee\", \"Lala Lajpat Rai\", \"Sardar Vallabhai Patel\", \"Rabindra Nath Tagore\"]',0,7,1,'882226357','Who wrote the book Anandmath','882226357',NULL),(32,'[\"Tulsidas\", \"Kalidas\", \"Surdas\", \"Banabhatta\"]',1,7,1,'882226357','Author of Abhijnana Shakuntala was?','882226357',NULL),(33,'[\"Maagod\", \"Malgudi\", \"Malguri\", \"Talgudi\"]',1,7,1,'882226357','R.K.Narayan has his stories centered around which imaginary place?','882226357',NULL),(34,'[\"Indira Gandhi\", \"P V Narasimha Rao\", \"Atal Bihari Vajapayee\", \"Rajiv Gandhi\"]',2,7,1,'882226357','Which Indian prime minister is also a poet?','882226357',NULL),(35,'[\"Sun\", \"Wind\", \"Air\", \"Water\"]',0,7,1,'882226357','To whom is the konark temple dedicated?','882226357','image7.png'),(36,'[\"Sukh Singh\", \"Jai Singh\", \"Mohammad bin-tughlaq\", \"Babar\"]',2,8,1,'882226357','Who built Jantar Mantar at Delhi?','882226357',NULL),(37,'[\"Ramanujacharya\", \"Shankaracharya\", \"Tulsidas\", \"Kanakadasa\"]',2,8,1,'882226357','Who wrote Bhajagovindam?','882226357',NULL),(38,'[\"Guru Govind Singh\", \"Surdas\", \"Kabir\", \"Dalai Lama\"]',1,8,1,'882226357','Who is the poet saint who united Hindus and Muslims?','882226357',NULL),(39,'[\"Orissa\", \"Kerala\", \"Tamilnadu\", \"Karnataka\"]',3,8,1,'882226357','Where is the famous “snake boat race” held in india?','882226357',NULL),(40,'[\"Masti Venkatesh Iyengar\", \"Gokak V.K\", \"T.N. Shreekanthaiah\", \"Kuvempu\"]',2,8,1,'882226357','Who among the following has not received “Jnanapeetha award”?','882226357','image8.png'),(41,'[\"Andal\", \"Meera Bai\", \"Sakku Bai\", \"None of these\"]',0,9,1,'882226357','Who was the ancient poetress of Tamil Nadu and also the devotee of Lord Vishnu ?','882226357',NULL),(42,'[\"Lord Shiva\", \"Lord Vishwanatha\", \"Lord Channamallikarjuna\", \"Lord Kudalasangamadeva\"]',3,9,1,'882226357','Akkamahadevi was the devotee of _______________.','882226357',NULL),(43,'[\"Venkateshwara\", \"Cheluvanarayanaswami\", \"Ranganathaswami\", \"Chennakeshava\"]',0,9,1,'882226357','The famous saint Annamacharya was the devotee of Lord __________.','882226357',NULL),(44,'[\"Karnataka\", \"Andhra Pradesh\", \"Tamil Nadu\", \"Kerala\"]',1,9,1,'882226357','From which state do the famous saint Annamacharya belong ?','882226357',NULL),(45,'[\"Orrisa\", \"West Bengal\", \"Assam\", \"Bihar\"]',1,9,1,'882226357','From which state of India do the saint Aurobindo belong ?','882226357','image9.png'),(46,'[\"Shane Warne\", \"Sachin Tendulkar\", \"Sunil Gavaskar\", \"Ricky Ponting\"]',0,10,1,'882226357','Who among the following cricketers has been declared the \"Cricketer of the Twentieth Century\" by the ICC?','882226357',NULL),(47,'[\"Calcutta\", \"Sydney\", \"Headingley\", \"Lords\"]',2,10,1,'882226357','Where did India play its first one day international match ?','882226357',NULL),(48,'[\"Alan Isaac\", \"Jagmohan Dalmiya\", \"Sharad Pawar\", \"Viv Richards\"]',3,10,1,'882226357','Who among this has never been the President of International Cricket Council?','882226357',NULL),(49,'[\"Don Bradman\", \"Sachin Tendulkar\", \"Kapil Dev\", \"Imran Khan\"]',1,10,1,'882226357','he first batsman declared run out by a third umpire decision in the history of cricket was ___________','882226357',NULL),(50,'[\"Shaun Pollock\", \"Shahid Afridi\", \"Sanath Jayasuriya\", \"MS Dhoni\"]',2,10,1,'882226357','In cricket, which player has got maximum number of one day ducks?','882226357','image10.png');
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

-- Dump completed on 2018-12-02 20:31:05
