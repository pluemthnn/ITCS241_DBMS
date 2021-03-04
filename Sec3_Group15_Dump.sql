-- MySQL dump 10.13  Distrib 8.0.22, for macos10.15 (x86_64)
--
-- Host: localhost    Database: EventManagement
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `artist`
--

DROP TABLE IF EXISTS `artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artist` (
  `AR_ID` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `ARNAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `EEVENT_ID` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `ARTELLNUM` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`AR_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist`
--

LOCK TABLES `artist` WRITE;
/*!40000 ALTER TABLE `artist` DISABLE KEYS */;
INSERT INTO `artist` VALUES ('1230','Backstreet Boys','1007','094-552-4349'),('1231','Ariana Grande','1008','086-937-8126'),('1232','Katy Perry','1009','082-125-8372'),('1233','Ed Sheeran','3002','093-627-7254'),('1234','Taylor Swift','2005','081-847-7764'),('1235','Shawn Mendes','2006','098-847-3487'),('1236','The Weeknd','2008','082-742-5374'),('1237','Coldplay','2012','093-324-3729'),('1238','Little Mix','1004','098-345-9992'),('1239','Bruno Mars','1001','083-837-6374'),('1240','Ruel','1009','097-265-6151'),('1241','Doja Cat','2005','061-159-1978'),('1242','Niki','2006','093-296-9551'),('1243','BTS','3002','082-823-9193'),('1244','Sam Smith','1009','098-325-3651'),('1245','Blackpink','1001','089-791-5072'),('1246','The toys','3002','086-668-4439'),('1247','Zara Larsson','1004','064-939-6168'),('1248','Lauv','1007','061-565-1666'),('1249','Dua Lipa','1009','092-649-6649'),('1250','Babe Rexha','2006','098-598-9897'),('1251','Troye Sivan','2005','065-269-9361'),('1252','Ink Warunthorn','2008','062-996-9661'),('1253','Sia','2012','081-789-4289'),('1254','Charlie Puth','1001','092-984-9999'),('1255','Keshi','3002','093-003-8888'),('1256','Lady Gaga','2008','082-823-6544'),('1257','DAY6','2008','087-774-3322'),('1258','Winner','2012','093-359-9916'),('1259','ZAYN','1004','062-546-5566'),('1260','Rihanna','2005','061-151-4669'),('1261','Justin Bieber','2006','097-997-9596'),('1262','Selena Gomez','1009','065-269-9396'),('1263','Billie Eilish','3002','093-515-5979'),('1264','The 1975','1007','061-594-9194'),('1265','RINI','2012','093-515-5469'),('1266','Beyonce','2008','098-396-4945'),('1267','Conan Gray','1009','092-396-6929'),('1268','Cardi B','2005','061-141-9649'),('1269','Destinys Child','2006','062-164-6994');
/*!40000 ALTER TABLE `artist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audience`
--

DROP TABLE IF EXISTS `audience`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audience` (
  `AUD_ID` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `AUDNAME` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `TK_ID` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `AUDTELLNUM` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`AUD_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audience`
--

LOCK TABLES `audience` WRITE;
/*!40000 ALTER TABLE `audience` DISABLE KEYS */;
INSERT INTO `audience` VALUES ('0101','Joyce Byers','100101','091-192-9787'),('0102','Jim Hopper','100102','094-192-9962'),('0103','Max Mayfield','200602','064-939-9369'),('0104','Sam Owens','100903','093-594-9163'),('0105','Michel Tribbiani','300203','092-651-4163'),('0202','Dustin Henderson','100802','098-194-2499'),('0304','Nancy Wheeler','100902','095-194-4493'),('0305','Phoebe Buffay','201202','093-362-6199'),('0309','Billy Hargrove','100401','093-554-5693'),('0402','Karen Wheeler','100703','061-159-4566'),('0404','Lucas Sinclair','100901','097-194-2697'),('0405','Jonathan Byers','200503','098-194-4541'),('0406','Joey Tribbiani','100701','080-894-9456'),('0407','Ross Geller','201201','065-323-9828'),('0501','Erica Sinclair','100103','061-493-9935'),('0502','Eleven','100801','098-194-1994'),('0506','Steve Harrington','200603','065-328-2269'),('0507','Mike Wheeler','100402','099-194-1959'),('0509','Robin Buckley','200501','093-564-9661'),('0601','Gina Tribbiani','300201','065-329-7932'),('0606','Bob Newby','100803','092-926-5493'),('0607','Chandler Bing','100702','061-164-4564'),('0609','Murray Bauman','200802','090-396-4298'),('0704','Rachel Green','200803','099-398-2946'),('0707','Monica Geller','200801','093-391-4293'),('0809','Zach Miller','100403','093-393-9228'),('0901','Bobbie Morganstern','300202','062-326-9228'),('0904','Martin Brenner','200502','065-995-9798'),('0906','Will Byers','200601','065-995-9663'),('0907','Alex Garrett','201203','064-329-4298');
/*!40000 ALTER TABLE `audience` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `EMP_ID` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `EMP_FNAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `EMP_LNAME` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `EMP_SALARY` decimal(10,2) NOT NULL,
  `EMP_DEPARTMENT` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `EEVENT_ID` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `EMTELLNUM` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`EMP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('034111','Boruto','Uzumaki',49000.00,'Event Designs','2006','084-392-8871'),('034257','Sarada','Uchiha',52000.00,'Special Event Planning Service','1004','080-047-9735'),('034341','Kakashi','Hatake',50000.00,'Event Management','1007',NULL),('034345','Sakura','Haruno',48000.00,'Event Coordination','1008','082-452-1235'),('034365','Naruto','Uzumaki',50000.00,'Event Management','2005',NULL),('034369','Sasuke','Uchiha',49000.00,'Event Designs','2008','093-231-8764'),('034546','Hinata','Hyuga',47000.00,'Event Entertainment','1009','096-327-4658'),('034554','Shino','Aburame',30000.00,'Conference and Venue Sourcing Service','1001','096-887-6314'),('034648','Kiba','Inuzuka',30000.00,'Conference and Venue Sourcing Service','2005','094-483-6158'),('034777','Neji','Hyuga',28000.00,'Workshops/Seminars training','3002',NULL);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `events` (
  `EEVENT_ID` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `ETYPE` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `EDATE` date NOT NULL,
  `ELOCATION` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`EEVENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES ('1001','PE','2020-01-07','250 Rt 59, Airmont NY 10901'),('1004','PE','2020-02-12','297 Grant Avenue,Auburn NY 13021'),('1007','OE','2020-05-15','1549 Rt 9, Halfmoon NY 12065'),('1008','CE','2020-07-17','425 Route 31, Macedon NY 14502'),('1009','CE','2020-12-23','180 River Rd, Lisbon CT 6351'),('2005','CE','2021-02-12','288 Larkin, Monroe NY 10950'),('2006','CE','2021-06-02','3949 Route 31, Clay NY 13041'),('2008','LE','2021-10-02','311 RT 9W, Glenmont NY 12077'),('2012','OE','2021-12-02','650 Main Ave, Norwalk CT 6851'),('3002','LE','2022-09-12','30 Catskill, Catskill NY 12414');
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foodbevzone`
--

DROP TABLE IF EXISTS `foodbevzone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `foodbevzone` (
  `FBNAME` varchar(60) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `FBOWNER` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `FBRENT` int NOT NULL,
  `FBTELLNUM` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `EEVENT_ID` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `FBZONE` char(1) COLLATE utf8_unicode_ci NOT NULL,
  CONSTRAINT `CHK_FBZONE` CHECK ((`FBZONE` in (_utf8mb3'A',_utf8mb3'B',_utf8mb3'C',_utf8mb3'D',_utf8mb3'E',_utf8mb3'F',_utf8mb3'G',_utf8mb3'H',_utf8mb3'I',_utf8mb3'J',_utf8mb3'K',_utf8mb3'L')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foodbevzone`
--

LOCK TABLES `foodbevzone` WRITE;
/*!40000 ALTER TABLE `foodbevzone` DISABLE KEYS */;
INSERT INTO `foodbevzone` VALUES ('The Lunch Box','Optimus Prime',100101,'088-937-2834','1001','A'),('The Extreme Burger','Harry Potter',100405,'093-454-9262','1004','F'),('The Grill Queen','Bilbo Baggins',100903,'098-598-9946','1009','B'),('Chickpea Chow','Ace Ventura',100803,'093-459-5168','1008','D'),('Eat Fest','Sarah Connor',300204,'093-459-2997','3002','G'),('Fries Empire','Katniss Everdeen',300209,'098-616-2959','3002','E'),('The Cake Shack','Jack Burton',100805,'093-163-9369','1008','A'),('Tamale Train','Axel Foley',202105,'061-362-9693','2012','J'),('The Pizza Cart','Obi-Wan Kenobi',100104,'061-294-4919','1001','D'),('The Fish Boat','Luke Skywalker',201209,'098-156-4491','2012','H'),('Mobile Dogs','Forrest Gump',201204,'093-296-9551','2012','I'),('Outside Eatery','Daniel Plainview',100710,'093-269-9461','1007','E'),('The Urban Grill','Hannibal Lecter',200804,'098-192-4491','2008','F'),('The Streatery','Doc Brown',200805,'098-639-9628','2008','G'),('The Juice Camion','Jack Sparrow',100804,'098-639-9398','1008','C'),('Food Truck Fanatic','Marty McFly',200506,'098-626-9949','2005','L'),('Street Fair','Michael Corleone',200604,'093-429-9649','2006','C'),('The Taco Station','Tyler Durden',100109,'062-149-5979','1001','E'),('Heathy House','Han Solo',200609,'062-149-5929','2006','B'),('Guerilla Taco','Ethan Hunt',100905,'080-798-5155','1009','H'),('The Minions','James Bond',100402,'093-469-4292','1004','E'),('The Omelette Truck','Archie Andrews',200803,'062-142-4199','2008','E'),('Sunrise Scrambles','Betty Cooper',100703,'062-164-9594','1007','I'),('Pancake Flippers','Veronica Lodge',200605,'092-898-4871','2006','F'),('Hot Potatoes','Jughead Jones',100904,'092-898-4483','1009','A'),('Rocky Mountain Pizza','Hermione Lodge',200504,'093-454-4259','2005','K'),('Bacon Buggy','Cheryl Blossom',100409,'093-459-9964','1004','C'),('The Lunch Truck','Josie McCoy',100704,'062-146-4998','1007','F'),('Taco Amigos','Alice Cooper',200503,'062-146-6266','2005','H'),('The Lunch','Josie McCoy',100702,'093-446-9429','1007','D'),('Taco Bell','Alice Cooper',200508,'098-624-9391','2005','G');
/*!40000 ALTER TABLE `foodbevzone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sponsor`
--

DROP TABLE IF EXISTS `sponsor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sponsor` (
  `SP_ID` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `SPNAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `SPBUDGET` decimal(10,2) NOT NULL,
  `EEVENT_ID` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `SPTELLNUM` varchar(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`SP_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sponsor`
--

LOCK TABLES `sponsor` WRITE;
/*!40000 ALTER TABLE `sponsor` DISABLE KEYS */;
INSERT INTO `sponsor` VALUES ('115131','Amazon Web Services',1000000.00,'1007','081-810-4724'),('115132','McDonalds',100000.00,'2005','080-591-9473'),('115133','Puma',250000.00,'1009','080-591-9573'),('115134','PepsiCo',500000.00,'2006','080-591-9637'),('115139','Laem Charoen Seafood',780000.00,'1008','080-596-5177'),('115144','Swensens',870000.00,'2005','080-596-5071'),('115169','AU BON PAIN',1230000.00,'2008','080-596-5437'),('115187','COCO FRESH TEA',820000.00,'2006','080-596-6017'),('115199','BONCHON',540000.00,'3002','080-596-5873'),('123201','BIG HIT ENTERTAINMENT',300000.00,'1008','080-592-3573'),('123202','BRAVADO',120000.00,'1009','080-592-3727'),('123203','SAMGSOM',340000.00,'1001','080-592-3937'),('123204','Blend 285',85000.00,'1007','080-592-5137'),('123244','NVAK FOUNDA­TION',340000.00,'2012','080-592-6849'),('123245','GENER8TOR',400000.00,'1007','080-592-7423'),('123246','Warner Music Group',90000.00,'2005','080-592-7832'),('123247','Sony Music Entertainment',800000.00,'2005','080-592-9433'),('123255','Johnny Walker',850000.00,'2008','080-592-5727'),('123256','Regency',600000.00,'3002','080-592-5873'),('123257','Jack Daniel',1000000.00,'1004','080-592-5972'),('123277','Universal Music Publishing Group',600000.00,'1007','080-592-9473'),('123286','SM Entertainment',980000.00,'2012','080-596-1157'),('123287','JYP Entertainment',1200000.00,'1007','080-596-0737'),('123288','YG Entertainment',1000000.00,'1004','080-592-9637'),('215131','Amazon Web Services',2000000.00,'2012','080-592-9472'),('215132','McDonalds',830000.00,'2006','080-596-5175'),('215199','BONCHON',24000.00,'1008','080-596-6337'),('223201','BIG HIT ENTERTAINMENT',980000.00,'1004','080-596-1167'),('223246','Warner Music Group',240000.00,'1009','080-596-6973'),('223247','Sony Music Entertainment',300000.00,'3002','080-596-5737'),('315132','McDonalds',450000.00,'1009','080-596-6837');
/*!40000 ALTER TABLE `sponsor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket` (
  `TK_ID` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `TKTYPE` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `TKDATE` date NOT NULL,
  `EEVENT_ID` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `TSEAT` varchar(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`TK_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES ('100101','RS','2020-01-07','1001','A01'),('100102','RS','2020-01-07','1001','A02'),('100103','RS','2020-01-07','1001','A04'),('100401','RS','2020-02-12','1004','A01'),('100402','RS','2020-02-12','1004','A03'),('100403','RS','2020-02-12','1004','B04'),('100701','GA','2020-05-15','1007','B02'),('100702','GA','2020-05-15','1007','B07'),('100703','VP','2020-05-15','1007','B08'),('100801','GA','2020-07-17','1008','D03'),('100802','VP','2020-07-17','1008','D02'),('100803','VP','2020-07-17','1008','D01'),('100901','OP','2020-12-23','1009','E05'),('100902','MP','2020-12-23','1009','E06'),('100903','CD','2020-12-23','1009','E07'),('200501','OP','2021-02-12','2005','B08'),('200502','OP','2021-02-12','2005','B09'),('200503','ED','2021-02-12','2005','B10'),('200601','OP','2021-06-02','2006','P01'),('200602','MP','2021-06-02','2006','P04'),('200603','CD','2021-06-02','2006','P05'),('200801','GA','2021-10-02','2008','B09'),('200802','VP','2021-10-02','2008','B10'),('200803','GA','2021-10-02','2008','C01'),('201201','GA','2021-12-02','2012','Z01'),('201202','GA','2021-12-02','2012','Z02'),('201203','GA','2021-12-02','2012','Z05'),('300201','VP','2022-09-12','3002','A01'),('300202','VP','2022-09-12','3002','B01'),('300203','VP','2022-09-12','3002','C01');
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-06 23:04:34
