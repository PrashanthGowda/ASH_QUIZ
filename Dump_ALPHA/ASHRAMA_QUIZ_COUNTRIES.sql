-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: localhost    Database: ASHRAMA_QUIZ_ALPHA
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
-- Table structure for table `COUNTRIES`
--

DROP TABLE IF EXISTS `COUNTRIES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `COUNTRIES` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(3) NOT NULL,
  `name` varchar(150) NOT NULL,
  `phonecode` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COUNTRIES`
--

LOCK TABLES `COUNTRIES` WRITE;
/*!40000 ALTER TABLE `COUNTRIES` DISABLE KEYS */;
INSERT INTO `COUNTRIES` VALUES (1,'AF','Afghanistan',93),(2,'AL','Albania',355),(3,'DZ','Algeria',213),(4,'AS','American Samoa',1684),(5,'AD','Andorra',376),(6,'AO','Angola',244),(7,'AI','Anguilla',1264),(8,'AQ','Antarctica',0),(9,'AG','Antigua And Barbuda',1268),(10,'AR','Argentina',54),(11,'AM','Armenia',374),(12,'AW','Aruba',297),(13,'AU','Australia',61),(14,'AT','Austria',43),(15,'AZ','Azerbaijan',994),(16,'BS','Bahamas The',1242),(17,'BH','Bahrain',973),(18,'BD','Bangladesh',880),(19,'BB','Barbados',1246),(20,'BY','Belarus',375),(21,'BE','Belgium',32),(22,'BZ','Belize',501),(23,'BJ','Benin',229),(24,'BM','Bermuda',1441),(25,'BT','Bhutan',975),(26,'BO','Bolivia',591),(27,'BA','Bosnia and Herzegovina',387),(28,'BW','Botswana',267),(29,'BV','Bouvet Island',0),(30,'BR','Brazil',55),(31,'IO','British Indian Ocean Territory',246),(32,'BN','Brunei',673),(33,'BG','Bulgaria',359),(34,'BF','Burkina Faso',226),(35,'BI','Burundi',257),(36,'KH','Cambodia',855),(37,'CM','Cameroon',237),(38,'CA','Canada',1),(39,'CV','Cape Verde',238),(40,'KY','Cayman Islands',1345),(41,'CF','Central African Republic',236),(42,'TD','Chad',235),(43,'CL','Chile',56),(44,'CN','China',86),(45,'CX','Christmas Island',61),(46,'CC','Cocos (Keeling) Islands',672),(47,'CO','Colombia',57),(48,'KM','Comoros',269),(49,'CG','Republic Of The Congo',242),(50,'CD','Democratic Republic Of The Congo',242),(51,'CK','Cook Islands',682),(52,'CR','Costa Rica',506),(53,'CI','Cote D\'Ivoire (Ivory Coast)',225),(54,'HR','Croatia (Hrvatska)',385),(55,'CU','Cuba',53),(56,'CY','Cyprus',357),(57,'CZ','Czech Republic',420),(58,'DK','Denmark',45),(59,'DJ','Djibouti',253),(60,'DM','Dominica',1767),(61,'DO','Dominican Republic',1809),(62,'TP','East Timor',670),(63,'EC','Ecuador',593),(64,'EG','Egypt',20),(65,'SV','El Salvador',503),(66,'GQ','Equatorial Guinea',240),(67,'ER','Eritrea',291),(68,'EE','Estonia',372),(69,'ET','Ethiopia',251),(70,'XA','External Territories of Australia',61),(71,'FK','Falkland Islands',500),(72,'FO','Faroe Islands',298),(73,'FJ','Fiji Islands',679),(74,'FI','Finland',358),(75,'FR','France',33),(76,'GF','French Guiana',594),(77,'PF','French Polynesia',689),(78,'TF','French Southern Territories',0),(79,'GA','Gabon',241),(80,'GM','Gambia The',220),(81,'GE','Georgia',995),(82,'DE','Germany',49),(83,'GH','Ghana',233),(84,'GI','Gibraltar',350),(85,'GR','Greece',30),(86,'GL','Greenland',299),(87,'GD','Grenada',1473),(88,'GP','Guadeloupe',590),(89,'GU','Guam',1671),(90,'GT','Guatemala',502),(91,'XU','Guernsey and Alderney',44),(92,'GN','Guinea',224),(93,'GW','Guinea-Bissau',245),(94,'GY','Guyana',592),(95,'HT','Haiti',509),(96,'HM','Heard and McDonald Islands',0),(97,'HN','Honduras',504),(98,'HK','Hong Kong S.A.R.',852),(99,'HU','Hungary',36),(100,'IS','Iceland',354),(101,'IN','India',91),(102,'ID','Indonesia',62),(103,'IR','Iran',98),(104,'IQ','Iraq',964),(105,'IE','Ireland',353),(106,'IL','Israel',972),(107,'IT','Italy',39),(108,'JM','Jamaica',1876),(109,'JP','Japan',81),(110,'XJ','Jersey',44),(111,'JO','Jordan',962),(112,'KZ','Kazakhstan',7),(113,'KE','Kenya',254),(114,'KI','Kiribati',686),(115,'KP','Korea North',850),(116,'KR','Korea South',82),(117,'KW','Kuwait',965),(118,'KG','Kyrgyzstan',996),(119,'LA','Laos',856),(120,'LV','Latvia',371),(121,'LB','Lebanon',961),(122,'LS','Lesotho',266),(123,'LR','Liberia',231),(124,'LY','Libya',218),(125,'LI','Liechtenstein',423),(126,'LT','Lithuania',370),(127,'LU','Luxembourg',352),(128,'MO','Macau S.A.R.',853),(129,'MK','Macedonia',389),(130,'MG','Madagascar',261),(131,'MW','Malawi',265),(132,'MY','Malaysia',60),(133,'MV','Maldives',960),(134,'ML','Mali',223),(135,'MT','Malta',356),(136,'XM','Man (Isle of)',44),(137,'MH','Marshall Islands',692),(138,'MQ','Martinique',596),(139,'MR','Mauritania',222),(140,'MU','Mauritius',230),(141,'YT','Mayotte',269),(142,'MX','Mexico',52),(143,'FM','Micronesia',691),(144,'MD','Moldova',373),(145,'MC','Monaco',377),(146,'MN','Mongolia',976),(147,'MS','Montserrat',1664),(148,'MA','Morocco',212),(149,'MZ','Mozambique',258),(150,'MM','Myanmar',95),(151,'NA','Namibia',264),(152,'NR','Nauru',674),(153,'NP','Nepal',977),(154,'AN','Netherlands Antilles',599),(155,'NL','Netherlands The',31),(156,'NC','New Caledonia',687),(157,'NZ','New Zealand',64),(158,'NI','Nicaragua',505),(159,'NE','Niger',227),(160,'NG','Nigeria',234),(161,'NU','Niue',683),(162,'NF','Norfolk Island',672),(163,'MP','Northern Mariana Islands',1670),(164,'NO','Norway',47),(165,'OM','Oman',968),(166,'PK','Pakistan',92),(167,'PW','Palau',680),(168,'PS','Palestinian Territory Occupied',970),(169,'PA','Panama',507),(170,'PG','Papua new Guinea',675),(171,'PY','Paraguay',595),(172,'PE','Peru',51),(173,'PH','Philippines',63),(174,'PN','Pitcairn Island',0),(175,'PL','Poland',48),(176,'PT','Portugal',351),(177,'PR','Puerto Rico',1787),(178,'QA','Qatar',974),(179,'RE','Reunion',262),(180,'RO','Romania',40),(181,'RU','Russia',70),(182,'RW','Rwanda',250),(183,'SH','Saint Helena',290),(184,'KN','Saint Kitts And Nevis',1869),(185,'LC','Saint Lucia',1758),(186,'PM','Saint Pierre and Miquelon',508),(187,'VC','Saint Vincent And The Grenadines',1784),(188,'WS','Samoa',684),(189,'SM','San Marino',378),(190,'ST','Sao Tome and Principe',239),(191,'SA','Saudi Arabia',966),(192,'SN','Senegal',221),(193,'RS','Serbia',381),(194,'SC','Seychelles',248),(195,'SL','Sierra Leone',232),(196,'SG','Singapore',65),(197,'SK','Slovakia',421),(198,'SI','Slovenia',386),(199,'XG','Smaller Territories of the UK',44),(200,'SB','Solomon Islands',677),(201,'SO','Somalia',252),(202,'ZA','South Africa',27),(203,'GS','South Georgia',0),(204,'SS','South Sudan',211),(205,'ES','Spain',34),(206,'LK','Sri Lanka',94),(207,'SD','Sudan',249),(208,'SR','Suriname',597),(209,'SJ','Svalbard And Jan Mayen Islands',47),(210,'SZ','Swaziland',268),(211,'SE','Sweden',46),(212,'CH','Switzerland',41),(213,'SY','Syria',963),(214,'TW','Taiwan',886),(215,'TJ','Tajikistan',992),(216,'TZ','Tanzania',255),(217,'TH','Thailand',66),(218,'TG','Togo',228),(219,'TK','Tokelau',690),(220,'TO','Tonga',676),(221,'TT','Trinidad And Tobago',1868),(222,'TN','Tunisia',216),(223,'TR','Turkey',90),(224,'TM','Turkmenistan',7370),(225,'TC','Turks And Caicos Islands',1649),(226,'TV','Tuvalu',688),(227,'UG','Uganda',256),(228,'UA','Ukraine',380),(229,'AE','United Arab Emirates',971),(230,'GB','United Kingdom',44),(231,'US','United States',1),(232,'UM','United States Minor Outlying Islands',1),(233,'UY','Uruguay',598),(234,'UZ','Uzbekistan',998),(235,'VU','Vanuatu',678),(236,'VA','Vatican City State (Holy See)',39),(237,'VE','Venezuela',58),(238,'VN','Vietnam',84),(239,'VG','Virgin Islands (British)',1284),(240,'VI','Virgin Islands (US)',1340),(241,'WF','Wallis And Futuna Islands',681),(242,'EH','Western Sahara',212),(243,'YE','Yemen',967),(244,'YU','Yugoslavia',38),(245,'ZM','Zambia',260),(246,'ZW','Zimbabwe',263);
/*!40000 ALTER TABLE `COUNTRIES` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-01-01 14:26:41
