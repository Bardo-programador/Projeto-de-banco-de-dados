-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_doacao_sangue
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Table structure for table `tbl_doacao`
--

DROP TABLE IF EXISTS `tbl_doacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_doacao` (
  `id_doacao` int(11) NOT NULL AUTO_INCREMENT,
  `id_doador` int(11) NOT NULL,
  `volume_doacao` decimal(5,2) NOT NULL,
  `data_doacao` date NOT NULL,
  PRIMARY KEY (`id_doacao`),
  KEY `fk_doador` (`id_doador`),
  CONSTRAINT `fk_doador` FOREIGN KEY (`id_doador`) REFERENCES `tbl_pessoa` (`id_pessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_doacao`
--

LOCK TABLES `tbl_doacao` WRITE;
/*!40000 ALTER TABLE `tbl_doacao` DISABLE KEYS */;
INSERT INTO `tbl_doacao` VALUES (1,1,354.12,'2022-12-13'),(2,1,235.12,'2021-09-11'),(3,2,112.65,'2020-01-24'),(4,5,70.60,'2019-05-12'),(5,6,257.26,'2020-03-16'),(6,3,82.31,'2018-05-26'),(7,4,354.91,'2017-02-09'),(8,7,255.26,'2021-01-11'),(9,9,351.32,'2023-01-16'),(10,8,158.49,'2020-09-11'),(11,10,238.37,'2021-12-25'),(12,9,86.15,'2019-03-09'),(13,6,193.97,'2019-03-02'),(14,4,175.90,'2015-11-23'),(15,3,242.88,'2016-07-12'),(16,6,175.90,'2016-09-29');
/*!40000 ALTER TABLE `tbl_doacao` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-17 11:05:27
