-- MySQL dump 10.13  Distrib 8.0.37, for Linux (x86_64)
--
-- Host: localhost    Database: ITI
-- ------------------------------------------------------
-- Server version	8.0.37-0ubuntu0.24.04.1

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
-- Table structure for table `Backup_Students`
--

DROP TABLE IF EXISTS `Backup_Students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Backup_Students` (
  `idstudent` int DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `nameTrack` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Backup_Students`
--

LOCK TABLES `Backup_Students` WRITE;
/*!40000 ALTER TABLE `Backup_Students` DISABLE KEYS */;
INSERT INTO `Backup_Students` VALUES (6,'mail@com','Assiut','male','seed amer','PHP'),(8,'mail@com','Assiut','male','seed amer','PHP');
/*!40000 ALTER TABLE `Backup_Students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Delete_Students`
--

DROP TABLE IF EXISTS `Delete_Students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Delete_Students` (
  `date_` date DEFAULT NULL,
  `idstudent` int DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `namestudent` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Delete_Students`
--

LOCK TABLES `Delete_Students` WRITE;
/*!40000 ALTER TABLE `Delete_Students` DISABLE KEYS */;
INSERT INTO `Delete_Students` VALUES ('2024-07-23',6,'male@gmail.com','assiut','ss mohamed'),('2024-07-23',5,'Mohamed@gmail.com','assiut','ibrahem ahmed'),('2024-07-23',8,'mail@com','Assiut','seed amer'),('2024-07-23',6,'mail@com','Assiut','seed amer');
/*!40000 ALTER TABLE `Delete_Students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `name` varchar(20) NOT NULL,
  `descibtion` text,
  `maxScore` int DEFAULT NULL,
  `nameTrack` varchar(20) NOT NULL,
  PRIMARY KEY (`name`,`nameTrack`),
  KEY `FK_trackcourses` (`nameTrack`),
  CONSTRAINT `FK_trackcourses` FOREIGN KEY (`nameTrack`) REFERENCES `tracks` (`nameTrack`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES ('CPP','programming language',120,'frontEnd'),('CSS','HyperText',120,'dotnet'),('CSS','HyperText',100,'frontEnd'),('CSS','HyperText',150,'PHP'),('Data Structur','advanced stored data',100,'PHP'),('Database','store data in orginze table',180,'dotnet'),('Database','stored data in orginze table',150,'frontEnd'),('Database','stored data in orginze table',150,'PHP'),('html','HyperText',150,'dotnet'),('html','HyperText',100,'frontEnd'),('html','HyperText',150,'PHP'),('OOP','Object orientd programming',150,'dotnet'),('PHP','programming language (open source)',200,'PHP');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `display_Trackswithcourses`
--

DROP TABLE IF EXISTS `display_Trackswithcourses`;
/*!50001 DROP VIEW IF EXISTS `display_Trackswithcourses`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `display_Trackswithcourses` AS SELECT 
 1 AS `secondName`,
 1 AS `name`,
 1 AS `nameTrack`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `display_score`
--

DROP TABLE IF EXISTS `display_score`;
/*!50001 DROP VIEW IF EXISTS `display_score`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `display_score` AS SELECT 
 1 AS `secondName`,
 1 AS `name`,
 1 AS `scoreStudent`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `display_track_courses`
--

DROP TABLE IF EXISTS `display_track_courses`;
/*!50001 DROP VIEW IF EXISTS `display_track_courses`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `display_track_courses` AS SELECT 
 1 AS `nameTrack`,
 1 AS `name`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `display_track_student`
--

DROP TABLE IF EXISTS `display_track_student`;
/*!50001 DROP VIEW IF EXISTS `display_track_student`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `display_track_student` AS SELECT 
 1 AS `firstName`,
 1 AS `nameTrack`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `exam`
--

DROP TABLE IF EXISTS `exam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `exam` (
  `idStudent` int NOT NULL,
  `nameCourse` varchar(20) NOT NULL,
  `scoreStudent` int DEFAULT '0',
  `dateExam` date DEFAULT NULL,
  PRIMARY KEY (`idStudent`,`nameCourse`),
  KEY `FK_studentExam` (`nameCourse`),
  CONSTRAINT `FK_courseExam` FOREIGN KEY (`nameCourse`) REFERENCES `courses` (`name`) ON DELETE CASCADE,
  CONSTRAINT `FK_studentExam1` FOREIGN KEY (`idStudent`) REFERENCES `student` (`idStudent`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam`
--

LOCK TABLES `exam` WRITE;
/*!40000 ALTER TABLE `exam` DISABLE KEYS */;
INSERT INTO `exam` VALUES (1,'CPP',89,'2020-02-02'),(1,'OOP',89,'2020-02-02'),(2,'CPP',90,'2020-02-02'),(3,'CPP',50,'2022-02-02'),(3,'Database',60,'2022-06-02'),(4,'PHP',70,'2022-06-02'),(7,'CPP',80,'2023-01-10'),(7,'CSS',90,'2023-01-06'),(7,'html',90,'2023-01-02');
/*!40000 ALTER TABLE `exam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phone_student`
--

DROP TABLE IF EXISTS `phone_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phone_student` (
  `idStudent` int NOT NULL,
  `phone` varchar(50) NOT NULL,
  PRIMARY KEY (`idStudent`,`phone`),
  CONSTRAINT `FK_phoneStudent` FOREIGN KEY (`idStudent`) REFERENCES `student` (`idStudent`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phone_student`
--

LOCK TABLES `phone_student` WRITE;
/*!40000 ALTER TABLE `phone_student` DISABLE KEYS */;
INSERT INTO `phone_student` VALUES (1,'123'),(1,'12345'),(2,'2123');
/*!40000 ALTER TABLE `phone_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `idStudent` int NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `firstName` varchar(12) DEFAULT NULL,
  `secondName` varchar(30) DEFAULT NULL,
  `nameTrack` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idStudent`),
  KEY `FK_trackStudent` (`nameTrack`),
  CONSTRAINT `FK_trackStudent` FOREIGN KEY (`nameTrack`) REFERENCES `tracks` (`nameTrack`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'mohamed@gmail.com','assiut','male','1998-07-13','mohamed','gad','dotnet'),(2,'mohamed@gmail.com','assiut','male','1999-04-03','mohamed','sayed','dotnet'),(3,'Mohamed@gmail.com','assiut','male','2000-01-10','sayed','ahmed','frontEnd'),(4,'Mohamed@gmail.com','assiut','male','2000-06-10','khaled','ahmed','PHP'),(6,'mail@com','Assiut','male','2000-01-02','seed','amer','PHP'),(7,'taha@gmail.com','assiut','male','2000-01-10','taha','taha','frontEnd'),(8,'mail@com','Assiut','male','2000-01-02','seed','amer','PHP');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `AddStudent` AFTER INSERT ON `student` FOR EACH ROW begin 
	insert into Backup_Students value (new.idStudent, new.email, new.address, new.gender, concat(new.firstName, ' ', new.secondName), new.nameTrack);	
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `Delete__` AFTER DELETE ON `student` FOR EACH ROW begin
	insert into Delete_Students value(now(), old.idStudent, old.email, old.address, concat(old.firstName, ' ', old.secondName));
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `student_course`
--

DROP TABLE IF EXISTS `student_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_course` (
  `idStudent` int NOT NULL,
  `nameCourse` varchar(20) NOT NULL,
  PRIMARY KEY (`idStudent`,`nameCourse`),
  KEY `FK_course` (`nameCourse`),
  CONSTRAINT `FK_course` FOREIGN KEY (`nameCourse`) REFERENCES `courses` (`name`) ON DELETE CASCADE,
  CONSTRAINT `FK_courses` FOREIGN KEY (`nameCourse`) REFERENCES `courses` (`name`),
  CONSTRAINT `FK_student` FOREIGN KEY (`idStudent`) REFERENCES `student` (`idStudent`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_course`
--

LOCK TABLES `student_course` WRITE;
/*!40000 ALTER TABLE `student_course` DISABLE KEYS */;
INSERT INTO `student_course` VALUES (3,'CPP'),(1,'OOP'),(2,'OOP'),(3,'PHP');
/*!40000 ALTER TABLE `student_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `temporary`
--

DROP TABLE IF EXISTS `temporary`;
/*!50001 DROP VIEW IF EXISTS `temporary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `temporary` AS SELECT 
 1 AS `name`,
 1 AS `maxScore`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `tracks`
--

DROP TABLE IF EXISTS `tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tracks` (
  `nameTrack` varchar(20) NOT NULL,
  `maxStudent` int DEFAULT NULL,
  PRIMARY KEY (`nameTrack`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracks`
--

LOCK TABLES `tracks` WRITE;
/*!40000 ALTER TABLE `tracks` DISABLE KEYS */;
INSERT INTO `tracks` VALUES ('dotnet',30),('frontEnd',20),('PHP',25),('socialMedia',25);
/*!40000 ALTER TABLE `tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `display_Trackswithcourses`
--

/*!50001 DROP VIEW IF EXISTS `display_Trackswithcourses`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `display_Trackswithcourses` AS select `student`.`secondName` AS `secondName`,`courses`.`name` AS `name`,`student`.`nameTrack` AS `nameTrack` from ((`student` join `student_course`) join `courses` on(((`student`.`nameTrack` = `courses`.`nameTrack`) and (`student`.`idStudent` = `student_course`.`idStudent`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `display_score`
--

/*!50001 DROP VIEW IF EXISTS `display_score`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `display_score` AS select `student`.`secondName` AS `secondName`,`courses`.`name` AS `name`,`exam`.`scoreStudent` AS `scoreStudent` from ((`student` join `exam`) join `courses` on(((`student`.`idStudent` = `exam`.`idStudent`) and (`exam`.`nameCourse` = `courses`.`name`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `display_track_courses`
--

/*!50001 DROP VIEW IF EXISTS `display_track_courses`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `display_track_courses` AS select `courses`.`nameTrack` AS `nameTrack`,`courses`.`name` AS `name` from `courses` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `display_track_student`
--

/*!50001 DROP VIEW IF EXISTS `display_track_student`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `display_track_student` AS select `student`.`firstName` AS `firstName`,`student`.`nameTrack` AS `nameTrack` from `student` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `temporary`
--

/*!50001 DROP VIEW IF EXISTS `temporary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `temporary` AS select `courses`.`name` AS `name`,`courses`.`maxScore` AS `maxScore` from `courses` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-23 21:10:10
