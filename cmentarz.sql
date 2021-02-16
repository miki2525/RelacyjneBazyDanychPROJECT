-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: s20157
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB-0+deb9u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

USE s20157;

--
-- Table structure for table `GROB_wynajmujacy`
--

DROP TABLE IF EXISTS `GROB_wynajmujacy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `GROB_wynajmujacy` (
  `id_grob` int(11) NOT NULL,
  `id_wynajmujacy` int(11) NOT NULL,
  KEY `id_grob` (`id_grob`),
  KEY `id_wynajmujacy` (`id_wynajmujacy`),
  CONSTRAINT `GROB_wynajmujacy_ibfk_1` FOREIGN KEY (`id_grob`) REFERENCES `grob` (`grobID`),
  CONSTRAINT `GROB_wynajmujacy_ibfk_2` FOREIGN KEY (`id_wynajmujacy`) REFERENCES `wynajmujacy` (`wynajmujacyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `GROB_wynajmujacy`
--

LOCK TABLES `GROB_wynajmujacy` WRITE;
/*!40000 ALTER TABLE `GROB_wynajmujacy` DISABLE KEYS */;
INSERT INTO `GROB_wynajmujacy` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20),(21,1);
/*!40000 ALTER TABLE `GROB_wynajmujacy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `firma`
--

DROP TABLE IF EXISTS `firma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `firma` (
  `firmaID` int(11) NOT NULL AUTO_INCREMENT,
  `nip` bigint(20) NOT NULL,
  `nazwa` varchar(20) NOT NULL,
  PRIMARY KEY (`firmaID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `firma`
--

LOCK TABLES `firma` WRITE;
/*!40000 ALTER TABLE `firma` DISABLE KEYS */;
INSERT INTO `firma` VALUES (1,1234567890,'Ziemniarze'),(2,987654321,'Deepy'),(3,1234543210,'Darksiders'),(4,987678901,'Black'),(5,5432167890,'Zakopce'),(6,8426248622,'Łopaciarze'),(7,7418529633,'Deluks'),(8,3692581477,'Moria'),(9,9517538624,'Forever'),(10,2426848697,'Klaustrofobia'),(11,258357151,'Elizeum'),(12,7439526410,'Dodna'),(13,8640021186,'Elpako'),(14,2525167308,'Zombie'),(15,3340084317,'Comatose'),(16,4662841395,'Cisza'),(17,5577213941,'Eternity'),(18,798269815,'Bezbolowi'),(19,9283329813,'Cofeen'),(20,4156249824,'Underground');
/*!40000 ALTER TABLE `firma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grob`
--

DROP TABLE IF EXISTS `grob`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grob` (
  `grobID` int(11) NOT NULL AUTO_INCREMENT,
  `data_poczatek` date DEFAULT NULL,
  `data_koniec` date DEFAULT NULL,
  `id_lokalizacja` int(11) NOT NULL,
  PRIMARY KEY (`grobID`),
  UNIQUE KEY `id_lokalizacja` (`id_lokalizacja`),
  CONSTRAINT `grob_ibfk_1` FOREIGN KEY (`id_lokalizacja`) REFERENCES `lokalizacja` (`lokalizacjaID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grob`
--

LOCK TABLES `grob` WRITE;
/*!40000 ALTER TABLE `grob` DISABLE KEYS */;
INSERT INTO `grob` VALUES (1,'2020-07-03','2040-07-03',1),(2,'2000-08-18','2020-08-18',3),(3,'2001-11-27','2021-11-27',5),(4,'1945-07-21','2045-07-21',7),(5,'1999-04-07','2049-06-10',9),(6,'2010-04-24','2040-09-11',11),(7,'2020-02-21','2040-02-21',13),(8,'2012-08-25','2032-08-25',15),(9,'2012-07-18','2032-07-18',17),(10,'2000-04-21','2020-04-21',19),(11,'2021-01-25','2041-01-25',2),(12,'1997-05-23','2048-05-23',4),(13,'1999-04-11','2029-04-11',6),(14,'2003-07-28','2023-07-28',8),(15,'1989-02-20','2029-02-20',10),(16,'2015-09-16','2025-09-16',12),(17,'2007-06-24','2027-06-24',14),(18,'2018-10-07','2038-10-07',18),(19,'2011-11-30','2021-11-30',16),(20,'2019-08-15','2029-08-15',20),(21,'2020-02-09','2040-02-09',21);
/*!40000 ALTER TABLE `grob` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logi`
--

DROP TABLE IF EXISTS `logi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logi` (
  `data` date DEFAULT NULL,
  `napis` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logi`
--

LOCK TABLES `logi` WRITE;
/*!40000 ALTER TABLE `logi` DISABLE KEYS */;
/*!40000 ALTER TABLE `logi` ENABLE KEYS */;
UNLOCK TABLES;

delimiter ;;
DROP TRIGGER if exists grob_waznosc_up;
CREATE TRIGGER grob_waznosc_up AFTER UPDATE ON grob
FOR EACH ROW BEGIN
INSERT INTO logi values (now(),concat('ważność grobu o id: ',OLD.grobID,', wynosi: ',NEW.data_koniec));
END;
;;
delimiter ;


--
-- Table structure for table `lokalizacja`
--

DROP TABLE IF EXISTS `lokalizacja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lokalizacja` (
  `lokalizacjaID` int(11) NOT NULL AUTO_INCREMENT,
  `alejka` int(11) DEFAULT NULL,
  `rzad` int(11) DEFAULT NULL,
  `miejsce` int(11) DEFAULT NULL,
  `id_grob` int(11) NOT NULL,
  PRIMARY KEY (`lokalizacjaID`),
  UNIQUE KEY `id_grob` (`id_grob`),
  CONSTRAINT `lokalizacja_ibfk_1` FOREIGN KEY (`id_grob`) REFERENCES `grob` (`grobID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lokalizacja`
--

LOCK TABLES `lokalizacja` WRITE;
/*!40000 ALTER TABLE `lokalizacja` DISABLE KEYS */;
INSERT INTO `lokalizacja` VALUES (1,10,1,1,1),(2,10,1,1,2),(3,1,1,1,3),(4,2,2,1,4),(5,3,2,1,5),(6,4,3,2,6),(7,5,2,1,7),(8,10,1,1,8),(9,10,1,1,9),(10,6,5,3,10),(11,7,3,10,11),(12,8,2,4,12),(13,9,10,10,13),(14,10,1,1,14),(15,10,1,1,15),(16,10,1,1,16),(17,10,1,1,17),(18,2,2,2,18),(19,3,2,2,19),(20,4,3,1,20),(21,2,2,3,21);
/*!40000 ALTER TABLE `lokalizacja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pochowek`
--

DROP TABLE IF EXISTS `pochowek`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pochowek` (
  `pochowekID` int(11) NOT NULL AUTO_INCREMENT,
  `rodzaj` char(1) DEFAULT NULL,
  `id_firma` int(11) NOT NULL,
  `id_zmarly` int(11) NOT NULL,
  PRIMARY KEY (`pochowekID`),
  KEY `id_firma` (`id_firma`),
  UNIQUE KEY `id_zmarly` (`id_zmarly`),
  CONSTRAINT `pochowek_ibfk_1` FOREIGN KEY (`id_firma`) REFERENCES `firma` (`firmaID`),
  CONSTRAINT `pochowek_ibfk_2` FOREIGN KEY (`id_zmarly`) REFERENCES `zmarly` (`zmarlyID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pochowek`
--

LOCK TABLES `pochowek` WRITE;
/*!40000 ALTER TABLE `pochowek` DISABLE KEYS */;
INSERT INTO `pochowek` VALUES (1,'U',1,1),(2,'U',2,2),(3,'T',3,3),(4,'T',4,4),(5,'T',5,5),(6,'T',6,6),(7,'T',7,7),(8,'U',8,8),(9,'U',9,9),(10,'T',10,10),(11,'U',11,11),(12,'T',12,12),(13,'T',13,13),(14,'U',14,14),(15,'U',15,15),(16,'U',16,16),(17,'U',17,17),(18,'U',18,18),(19,'T',19,19),(20,'T',20,20),(21,'T',2,21),(22,'U',4,22),(23,'U',5,23),(24,'T',20,24),(25,'T',11,25),(26,'T',8,26);
/*!40000 ALTER TABLE `pochowek` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wynajmujacy`
--

DROP TABLE IF EXISTS `wynajmujacy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wynajmujacy` (
  `wynajmujacyID` int(11) NOT NULL AUTO_INCREMENT,
  `imie` varchar(20) DEFAULT NULL,
  `nazwisko` varchar(20) DEFAULT NULL,
  `pesel` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`wynajmujacyID`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wynajmujacy`
--

LOCK TABLES `wynajmujacy` WRITE;
/*!40000 ALTER TABLE `wynajmujacy` DISABLE KEYS */;
INSERT INTO `wynajmujacy` VALUES (1,'Jurek','Kowalski',50062611111),(2,'Mikołaj','Rusinek',61112201234),(3,'Tomasz','Nerda',90053089066),(4,'Tymoteusz','Koszara',73062609876),(5,'Bartłomiej','Kolonko',78021586243),(6,'Maurycy','Grubas',66041853226),(7,'Krzysztof','Wileński',83082249876),(8,'Karolina','Mostkowiak',75091703991),(9,'Marcelina','Zielińska',81112087551),(10,'Mirosław','Kloser',83071821885),(11,'Natalia','Paszko',74051724852),(12,'Gertruda','Małecka',51102165432),(13,'Felicjan','Naziemny',49071496385),(14,'Marysia','Czapel',66061666852),(15,'Katarzyna','Młynkowska',69031784623),(16,'Grzegorz','Walczyk',830101147950),(17,'Wojciech','Panczak',560825127862),(18,'Roksana','Bajka',9110746228),(19,'Tadeusz','Kazimek',51112605433),(20,'Krystyna','Zielińska',79071005231);
/*!40000 ALTER TABLE `wynajmujacy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zmarly`
--

DROP TABLE IF EXISTS `zmarly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zmarly` (
  `zmarlyID` int(11) NOT NULL AUTO_INCREMENT,
  `imie` varchar(20) DEFAULT NULL,
  `nazwisko` varchar(20) DEFAULT NULL,
  `data_urodzenia` date DEFAULT NULL,
  `data_zgonu` date DEFAULT NULL,
  `id_grob` int(11) NOT NULL,
  PRIMARY KEY (`zmarlyID`),
  KEY `id_grob` (`id_grob`),
  CONSTRAINT `zmarly_ibfk_1` FOREIGN KEY (`id_grob`) REFERENCES `grob` (`grobID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zmarly`
--

LOCK TABLES `zmarly` WRITE;
/*!40000 ALTER TABLE `zmarly` DISABLE KEYS */;
INSERT INTO `zmarly` VALUES (1,'Jan','Kowalski','2000-06-26','2020-06-26',1),(2,'Mateusz','Rusinek','1904-12-16','2000-08-11',2),(3,'Marianna','Nerda','1951-11-20','2001-11-20',3),(4,'Marek','Koszara','1939-07-30','1945-07-14',4),(5,'Waldemar','Kazimek','1949-01-10','1999-03-31',5),(6,'Tadeusz','Kolonko','1972-09-05','2010-04-17',6),(7,'Wanda','Grubas','1962-12-16','2020-02-14',7),(8,'Krzysztof','Wieleński','1938-05-11','2012-08-18',8),(9,'Damian','Mostkowiak','1941-10-27','2012-07-11',9),(10,'Andrzej','Zieliński','1951-01-17','2000-04-14',10),(11,'Halina','Kloser','1955-03-24','2021-01-18',11),(12,'Kamila','Paszko','1940-08-17','1997-05-16',12),(13,'Katarzyna','Małecka','1966-04-04','1999-04-04',13),(14,'Michał','Naziemny','1953-12-12','2003-07-21',14),(15,'Leszek','Czapel','1935-10-24','1989-02-13',15),(16,'Sandra','Młynkowska','1949-04-03','2015-09-09',16),(17,'Bartłomiej','Walczyk','1999-08-20','2007-06-17',17),(18,'Milena','Panczak','1942-03-29','2018-09-30',18),(19,'Telimena','Bajka','1958-10-25','2011-11-23',19),(20,'Amelia','Zielińska','1928-05-12','2019-08-08',20),(21,'Marian','Kazimek','1939-12-24','2019-06-10',5),(22,'Jan','Paszko','1942-01-11','2018-05-16',12),(23,'Jan','Kolonko','1959-04-10','2015-03-14',6),(24,'Jan','Naziemny','1955-07-11','2013-04-07',14),(25,'Agnieszka','Kolonko','1945-11-17','2020-09-04',6),(26,'Jarosłąw','Kowalski','1970-11-10','2020-02-02',21);
/*!40000 ALTER TABLE `zmarly` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-17 20:56:13
