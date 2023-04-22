-- MySQL dump 10.13  Distrib 8.0.33, for macos13 (x86_64)
--
-- Host: localhost    Database: analytics
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `channel`
--

DROP TABLE IF EXISTS `channel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `channel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `channel`
--

LOCK TABLES `channel` WRITE;
/*!40000 ALTER TABLE `channel` DISABLE KEYS */;
INSERT INTO `channel` VALUES (1,'Flagrant'),(2,'Huberman'),(3,'LexFridman');
/*!40000 ALTER TABLE `channel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `monthly_gained_sub`
--

DROP TABLE IF EXISTS `monthly_gained_sub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `monthly_gained_sub` (
  `id` int NOT NULL AUTO_INCREMENT,
  `gainedSub` int NOT NULL,
  `month` varchar(255) NOT NULL,
  `channelidId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_30460932cbb3ec9b99850b3d060` (`channelidId`),
  CONSTRAINT `FK_30460932cbb3ec9b99850b3d060` FOREIGN KEY (`channelidId`) REFERENCES `channel` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monthly_gained_sub`
--

LOCK TABLES `monthly_gained_sub` WRITE;
/*!40000 ALTER TABLE `monthly_gained_sub` DISABLE KEYS */;
INSERT INTO `monthly_gained_sub` VALUES (13,65000,'JANUARY',1),(14,34188,'FEBRUARY',1),(15,75104,'MARCH',1),(16,35353,'APRIL',1),(17,49189,'MAY',1),(18,77953,'JUNE',1),(19,74597,'JULY',1),(20,48703,'AUGUST',1),(21,56310,'SEPTEMBER',1),(22,61507,'OCTOBER',1),(23,87377,'NOVEMBER',1),(24,65079,'DECEMBER',1),(25,61010,'JANUARY',2),(26,79003,'FEBRUARY',2),(27,61749,'MARCH',2),(28,86786,'MAY',2),(29,82097,'JUNE',2),(30,88053,'JULY',2),(31,49984,'AUGUST',2),(32,37437,'SEPTEMBER',2),(33,67692,'OCTOBER',2),(34,38946,'NOVEMBER',2),(35,52487,'DECEMBER',2),(36,40935,'JANUARY',3),(37,67569,'FEBRUARY',3),(38,32680,'MARCH',3),(39,76382,'APRIL',3),(40,47805,'MAY',3),(41,53378,'JUNE',3),(42,33237,'JULY',3),(43,41849,'AUGUST',3),(44,68511,'SEPTEMBER',3),(45,88497,'OCTOBER',3),(46,84112,'NOVEMBER',3),(47,71415,'DECEMBER',3);
/*!40000 ALTER TABLE `monthly_gained_sub` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pie_chart`
--

DROP TABLE IF EXISTS `pie_chart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pie_chart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `male` int NOT NULL,
  `female` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pie_chart`
--

LOCK TABLES `pie_chart` WRITE;
/*!40000 ALTER TABLE `pie_chart` DISABLE KEYS */;
INSERT INTO `pie_chart` VALUES (1,70,30),(2,60,40),(3,65,45);
/*!40000 ALTER TABLE `pie_chart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `videostatistics`
--

DROP TABLE IF EXISTS `videostatistics`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `videostatistics` (
  `id` int NOT NULL AUTO_INCREMENT,
  `viewCount` int NOT NULL,
  `videoTitle` varchar(255) NOT NULL,
  `publishedDate` datetime NOT NULL,
  `channelId` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_056f4979144891ba11fd3944e90` (`channelId`),
  CONSTRAINT `FK_056f4979144891ba11fd3944e90` FOREIGN KEY (`channelId`) REFERENCES `channel` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `videostatistics`
--

LOCK TABLES `videostatistics` WRITE;
/*!40000 ALTER TABLE `videostatistics` DISABLE KEYS */;
INSERT INTO `videostatistics` VALUES (2,98436,'Women Are Happier In The House ','2020-03-17 11:00:07',1),(3,263192,'Schul\'s Wifey Catches Corona','2020-02-18 12:45:00',1),(4,87917,'Confronting Your Girl On Her Period','2019-08-13 13:32:44',1),(5,46989,'Murder For Hire Should Be Legal','2020-04-10 18:24:21',1),(6,313863,'Moving In With Your Girl....BEWARE ','2020-01-07 14:00:04',1),(7,85273,'The ONE Way to get American\'s to Stay Inside','2020-03-27 20:30:01',1),(8,51330,'The Great Thing About The Corona Virus ','2020-03-13 11:00:13',1),(9,199501,'Everyone Loves Trump | Andrew Schul & Akaash Singh','2020-02-04 13:00:00',1),(10,109183,'Taking a Knee IS Respectful | Andrew Schul and Akaash Singh','2020-06-05 11:00:10',1),(11,97608,'BUY Your Girl\'s Forgiveness','2020-02-21 12:00:01',1),(12,164532,'How to Control Stress in Real-Time','2021-03-24 13:00:06',2),(13,342258,'Reduce Anxiety & Stress with the Physiological Sigh','2021-04-07 14:00:18',2),(14,530127,'Welcome to the Huberman Lab Podcast','2020-12-23 15:00:05',2),(15,112590,'AMA #5: Intrusive Thoughts, CGMs','2023-03-24 12:00:22',2),(16,210025,'AMA #4: Maintain Motivation, Improve REM Sleep','2023-02-24 13:00:16',2),(17,155878,'AMA #1: Leveraging Ultradian Cycles, How to Protect Your Brain, Seed Oils Examined and More','2022-11-02 15:15:02',2),(18,113656,'LIVE EVENT Q&A: Dr. Andrew Huberman Question & Answer in New York, NY','2022-12-14 14:51:49',2),(19,292703,'AMA #2: Improve Sleep, Reduce Sugar Cravings, Optimal Protein Intake, Stretching Frequency & More','2022-12-08 13:00:27',2),(20,272091,'Supercharge Exercise Performance & Recovery with Cooling | Huberman Lab Podcast #19','2021-05-10 12:00:17',2),(21,6473,'Sean Carroll: What is an Atom?','2019-11-04 17:22:04',3),(22,185001,'Will Javascript Take Over the World? | Brian Kernighan and Lex Fridman','2020-07-20 17:32:20',3),(23,31531,'Sean Carroll: What is the Wave Function?','2019-11-18 18:34:29',3),(24,112267,'Sean Carroll: Hilbert Space and Infinity','2019-11-06 16:16:44',3),(25,29016,'Sean Carroll: What is Quantum Entanglement?','2019-11-11 22:10:41',3),(26,25387,'Lex Fridman: Recipe for Progress in AI (Hard Work)','2020-01-13 16:30:36',3),(27,70599,'Elon Musk: What\'s Outside the Simulation? | AI Podcast Clips','2019-08-16 13:38:03',3),(28,17869,'I\'m Most Proud of Trying - Eric Weinstein | AI Podcast Clips','2020-04-15 14:00:41',3),(29,21660,'Measure passion not progress','2020-04-02 13:23:26',3),(30,80446,'Are We Living in a Simulation? with George Hot and Lex Fridman | AI Podcast Clips','2019-08-29 13:09:02',3),(31,8602,'Sean Carroll: What is Quantum Mechanics?','2019-11-03 18:58:18',3);
/*!40000 ALTER TABLE `videostatistics` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-22 23:13:24
