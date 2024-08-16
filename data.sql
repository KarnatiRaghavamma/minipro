-- MySQL dump 10.13  Distrib 8.0.37, for Win64 (x86_64)
--
-- Host: localhost    Database: spm
-- ------------------------------------------------------
-- Server version	8.0.37

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `files_data`
--

DROP TABLE IF EXISTS `files_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files_data` (
  `f_id` int NOT NULL AUTO_INCREMENT,
  `file_name` varchar(50) NOT NULL,
  `file_data` longblob,
  `added_by` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`f_id`),
  UNIQUE KEY `file_name` (`file_name`),
  KEY `added_by` (`added_by`),
  CONSTRAINT `files_data_ibfk_1` FOREIGN KEY (`added_by`) REFERENCES `student` (`email`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files_data`
--

LOCK TABLES `files_data` WRITE;
/*!40000 ALTER TABLE `files_data` DISABLE KEYS */;
INSERT INTO `files_data` VALUES (1,'otp.py',_binary 'import random \r\ndef genotp():\r\n    otp=\'\'\r\n    Caps=[chr(i) for i in range(ord(\'A\'),ord(\'Z\')+1)] #list comprehension\r\n    sma=[chr(i) for i in range(ord(\'a\'),ord(\'z\')+1)]\r\n    for i in range(0,2):\r\n        otp=otp+random.choice(Caps)  #to get 1 large character in alphabetic\r\n        otp=otp+str(random.randint(0,9)) # to get 1 char in alphabetic\r\n        otp=otp+random.choice(sma) # to get 1 small char in alphabetic\r\n    return otp\r\n','raghavammaraghavamma059@gmail.com','2024-08-12 10:54:09');
/*!40000 ALTER TABLE `files_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notes` (
  `nid` int NOT NULL AUTO_INCREMENT,
  `title` varchar(20) NOT NULL,
  `note_content` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `added_by` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`nid`),
  UNIQUE KEY `title` (`title`),
  KEY `added_by` (`added_by`),
  CONSTRAINT `notes_ibfk_1` FOREIGN KEY (`added_by`) REFERENCES `student` (`email`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (4,'Python','Python is a high level language','2024-08-10 07:21:15','raghavammaraghavamma059@gmail.com'),(5,'Mysql','MySQL is an open-source relational database management system','2024-08-10 07:21:33','raghavammaraghavamma059@gmail.com');
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `email` varchar(100) NOT NULL,
  `student_fname` varchar(50) NOT NULL,
  `student_lname` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `password` varbinary(10) DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('raghavammaraghavamma059@gmail.com','Raghavamma','Karnati','2024-08-07 11:26:39',_binary '1234');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-16 12:34:49
