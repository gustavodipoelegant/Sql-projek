-- MariaDB dump 10.19  Distrib 10.4.19-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: kue
-- ------------------------------------------------------
-- Server version	10.4.19-MariaDB

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

--
-- Temporary table structure for view `bayar`
--

DROP TABLE IF EXISTS `bayar`;
/*!50001 DROP VIEW IF EXISTS `bayar`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `bayar` (
  `id` tinyint NOT NULL,
  `nama` tinyint NOT NULL,
  `nomorhp` tinyint NOT NULL,
  `zona` tinyint NOT NULL,
  `alamat` tinyint NOT NULL,
  `jeniskue` tinyint NOT NULL,
  `ukurankue` tinyint NOT NULL,
  `lilin` tinyint NOT NULL,
  `harga_jenis` tinyint NOT NULL,
  `harga` tinyint NOT NULL,
  `ongkir` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `jenis`
--

DROP TABLE IF EXISTS `jenis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jenis` (
  `jenis` varchar(100) NOT NULL,
  `harga_jenis` int(11) NOT NULL,
  PRIMARY KEY (`jenis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jenis`
--

LOCK TABLES `jenis` WRITE;
/*!40000 ALTER TABLE `jenis` DISABLE KEYS */;
INSERT INTO `jenis` VALUES ('Black Forest',15000),('Cheese Cake',15000),('Chocolate Cake',10000),('Opera Cake',15000),('Red Velvet',10000);
/*!40000 ALTER TABLE `jenis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pesanan`
--

DROP TABLE IF EXISTS `pesanan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pesanan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(100) NOT NULL,
  `nomorhp` varchar(15) NOT NULL,
  `zona` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `jeniskue` varchar(100) NOT NULL,
  `ukurankue` varchar(100) NOT NULL,
  `lilin` int(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `zona` (`zona`),
  KEY `ukurankue` (`ukurankue`),
  KEY `jeniskue` (`jeniskue`),
  CONSTRAINT `pesanan_ibfk_1` FOREIGN KEY (`zona`) REFERENCES `zonakirim` (`zona`),
  CONSTRAINT `pesanan_ibfk_2` FOREIGN KEY (`ukurankue`) REFERENCES `ukuran` (`ukuran`),
  CONSTRAINT `pesanan_ibfk_3` FOREIGN KEY (`jeniskue`) REFERENCES `jenis` (`jenis`)
) ENGINE=InnoDB AUTO_INCREMENT=1218976457 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pesanan`
--

LOCK TABLES `pesanan` WRITE;
/*!40000 ALTER TABLE `pesanan` DISABLE KEYS */;
INSERT INTO `pesanan` VALUES (12434221,'Acen','098899900','Kalimantan','KELAPAAA','Black Forest','Sangat Besar',12);
/*!40000 ALTER TABLE `pesanan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `totalbayar`
--

DROP TABLE IF EXISTS `totalbayar`;
/*!50001 DROP VIEW IF EXISTS `totalbayar`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `totalbayar` (
  `id` tinyint NOT NULL,
  `nama` tinyint NOT NULL,
  `nomorhp` tinyint NOT NULL,
  `zona` tinyint NOT NULL,
  `alamat` tinyint NOT NULL,
  `jeniskue` tinyint NOT NULL,
  `ukurankue` tinyint NOT NULL,
  `lilin` tinyint NOT NULL,
  `harga_jenis` tinyint NOT NULL,
  `harga` tinyint NOT NULL,
  `ongkir` tinyint NOT NULL,
  `total` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `ukuran`
--

DROP TABLE IF EXISTS `ukuran`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ukuran` (
  `ukuran` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  PRIMARY KEY (`ukuran`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ukuran`
--

LOCK TABLES `ukuran` WRITE;
/*!40000 ALTER TABLE `ukuran` DISABLE KEYS */;
INSERT INTO `ukuran` VALUES ('Besar',25000),('Kecil',15000),('Sangat Besar',30000),('Sangat Kecil',10000),('Sedang',20000);
/*!40000 ALTER TABLE `ukuran` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zonakirim`
--

DROP TABLE IF EXISTS `zonakirim`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zonakirim` (
  `zona` varchar(100) NOT NULL,
  `ongkir` int(11) NOT NULL,
  PRIMARY KEY (`zona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zonakirim`
--

LOCK TABLES `zonakirim` WRITE;
/*!40000 ALTER TABLE `zonakirim` DISABLE KEYS */;
INSERT INTO `zonakirim` VALUES ('Kalimantan',20000),('Luar Kalimantan',40000);
/*!40000 ALTER TABLE `zonakirim` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `bayar`
--

/*!50001 DROP TABLE IF EXISTS `bayar`*/;
/*!50001 DROP VIEW IF EXISTS `bayar`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `bayar` AS select `pesanan`.`id` AS `id`,`pesanan`.`nama` AS `nama`,`pesanan`.`nomorhp` AS `nomorhp`,`pesanan`.`zona` AS `zona`,`pesanan`.`alamat` AS `alamat`,`pesanan`.`jeniskue` AS `jeniskue`,`pesanan`.`ukurankue` AS `ukurankue`,`pesanan`.`lilin` AS `lilin`,`jenis`.`harga_jenis` AS `harga_jenis`,`ukuran`.`harga` AS `harga`,`zonakirim`.`ongkir` AS `ongkir` from (((`pesanan` left join `jenis` on(`pesanan`.`jeniskue` = `jenis`.`jenis`)) left join `ukuran` on(`pesanan`.`ukurankue` = `ukuran`.`ukuran`)) left join `zonakirim` on(`pesanan`.`zona` = `zonakirim`.`zona`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `totalbayar`
--

/*!50001 DROP TABLE IF EXISTS `totalbayar`*/;
/*!50001 DROP VIEW IF EXISTS `totalbayar`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `totalbayar` AS select `bayar`.`id` AS `id`,`bayar`.`nama` AS `nama`,`bayar`.`nomorhp` AS `nomorhp`,`bayar`.`zona` AS `zona`,`bayar`.`alamat` AS `alamat`,`bayar`.`jeniskue` AS `jeniskue`,`bayar`.`ukurankue` AS `ukurankue`,`bayar`.`lilin` AS `lilin`,`bayar`.`harga_jenis` AS `harga_jenis`,`bayar`.`harga` AS `harga`,`bayar`.`ongkir` AS `ongkir`,sum(`bayar`.`harga_jenis` + `bayar`.`harga` + `bayar`.`ongkir`) AS `total` from `bayar` */;
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

-- Dump completed on 2021-05-30 17:06:15
