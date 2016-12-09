CREATE DATABASE  IF NOT EXISTS `web` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `web`;
-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: web
-- ------------------------------------------------------
-- Server version	5.7.15-log

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
-- Table structure for table `adminbaitap`
--

DROP TABLE IF EXISTS `adminbaitap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `adminbaitap` (
  `IDBaiTap` bigint(20) NOT NULL,
  `TenBaiTap` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NoiDung` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HanNop` date DEFAULT NULL,
  `GioNop` time DEFAULT NULL,
  `MaChiTietKH` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`IDBaiTap`),
  UNIQUE KEY `MaChiTietKH_UNIQUE` (`MaChiTietKH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adminbaitap`
--

LOCK TABLES `adminbaitap` WRITE;
/*!40000 ALTER TABLE `adminbaitap` DISABLE KEYS */;
INSERT INTO `adminbaitap` VALUES (1,'Bài tập 1','Các em tải file bài tập về làm và nén lại file rar và gửi lên trước thời hạn','2016-12-10','01:00:00',1480662203856);
/*!40000 ALTER TABLE `adminbaitap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `baitap`
--

DROP TABLE IF EXISTS `baitap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `baitap` (
  `baitapID` bigint(20) NOT NULL,
  `UserID` bigint(20) DEFAULT NULL,
  `TenBT` varchar(200) DEFAULT NULL,
  `GhiChu` varchar(1000) DEFAULT NULL,
  `MaCTKH` bigint(20) DEFAULT NULL,
  `FileBaiTap` varchar(1000) DEFAULT NULL,
  `ThoiGian` datetime DEFAULT NULL,
  PRIMARY KEY (`baitapID`),
  KEY `UserID` (`UserID`),
  KEY `uploadID` (`FileBaiTap`),
  CONSTRAINT `baitap_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baitap`
--

LOCK TABLES `baitap` WRITE;
/*!40000 ALTER TABLE `baitap` DISABLE KEYS */;
INSERT INTO `baitap` VALUES (1,1478396124277,'Bài tập 1','Hoàn thành tất cả các bài tập',1480662203856,'dbms.docx','2016-12-09 16:42:09');
/*!40000 ALTER TABLE `baitap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chitietkhoahoc`
--

DROP TABLE IF EXISTS `chitietkhoahoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chitietkhoahoc` (
  `ChiTietKHID` bigint(20) NOT NULL,
  `TenBaiHoc` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `NoiDung` varchar(5000) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `DuongDanBaiGiang` varchar(200) DEFAULT NULL,
  `DuongDanEbook` varchar(200) DEFAULT NULL,
  `DuongDanVideo` varchar(200) DEFAULT NULL,
  `DuongDanBaiTap` varchar(1000) DEFAULT NULL,
  `MaKH` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ChiTietKHID`),
  KEY `MaKH` (`MaKH`),
  CONSTRAINT `chitietkhoahoc_ibfk_1` FOREIGN KEY (`MaKH`) REFERENCES `khoahoc` (`MaKH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitietkhoahoc`
--

LOCK TABLES `chitietkhoahoc` WRITE;
/*!40000 ALTER TABLE `chitietkhoahoc` DISABLE KEYS */;
INSERT INTO `chitietkhoahoc` VALUES (1480662203856,'Bài 1: Làm quen với ngôn ngữ lập trình C','Bài 1 làm quen với ngôn ngữ lập trình<br> Ngôn ngữ lập trình c là 1 cái gì đó là là là','123','123','https://www.youtube.com/embed/WdJtw6F3MRI','ip.docx',1480223244590),(1480937942115,'Bài 2: là, quen với ngôn ngữ lập trinh (tt)','Bài giảng','https://docs.google.com/document/d/1siwUVMjMPLZj2radlrbN9W-WKJjoVlttbyjoArOC4D8/edit?usp=sharing','https://docs.google.com/document/d/1MOhwpNAJeTElxTn3XqDBH74ztP9VKDEBz7ZtT_Y5XIA/edit?usp=sharing','https://www.youtube.com/embed/zj-aEwORdzk','14110114.docx',1480223244590);
/*!40000 ALTER TABLE `chitietkhoahoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chitietthread`
--

DROP TABLE IF EXISTS `chitietthread`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chitietthread` (
  `ThreadCTID` bigint(20) NOT NULL,
  `MaThread` bigint(20) DEFAULT NULL,
  `UserID` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThoiGian` datetime DEFAULT NULL,
  `BinhLuan` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ThreadCTID`),
  KEY `MaThread_idx` (`MaThread`),
  CONSTRAINT `MaThread` FOREIGN KEY (`MaThread`) REFERENCES `thread` (`MaThread`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chitietthread`
--

LOCK TABLES `chitietthread` WRITE;
/*!40000 ALTER TABLE `chitietthread` DISABLE KEYS */;
INSERT INTO `chitietthread` VALUES (1481078687940,1480026543673,'Mác','2016-12-07 09:44:47','D');
/*!40000 ALTER TABLE `chitietthread` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dangkykhoahoc`
--

DROP TABLE IF EXISTS `dangkykhoahoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dangkykhoahoc` (
  `UserID` bigint(20) NOT NULL,
  `MaKH` bigint(20) NOT NULL,
  `chophep` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`MaKH`,`UserID`),
  KEY `UserID` (`UserID`),
  KEY `MaKH` (`MaKH`),
  CONSTRAINT `dangkykhoahoc_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`),
  CONSTRAINT `dangkykhoahoc_ibfk_2` FOREIGN KEY (`MaKH`) REFERENCES `khoahoc` (`MaKH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dangkykhoahoc`
--

LOCK TABLES `dangkykhoahoc` WRITE;
/*!40000 ALTER TABLE `dangkykhoahoc` DISABLE KEYS */;
INSERT INTO `dangkykhoahoc` VALUES (1,1480223244590,'1'),(4,1480223244590,'1'),(1478396124277,1480223244590,'1'),(1478396124277,1480223290372,'1');
/*!40000 ALTER TABLE `dangkykhoahoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `dangkys`
--

DROP TABLE IF EXISTS `dangkys`;
/*!50001 DROP VIEW IF EXISTS `dangkys`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `dangkys` AS SELECT 
 1 AS `UserID`,
 1 AS `MaKH`,
 1 AS `chophep`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `dapanhv`
--

DROP TABLE IF EXISTS `dapanhv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dapanhv` (
  `DapAnID` bigint(20) NOT NULL,
  `ChuoiDapAn` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UserID` bigint(20) DEFAULT NULL,
  `DeThiID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`DapAnID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dapanhv`
--

LOCK TABLES `dapanhv` WRITE;
/*!40000 ALTER TABLE `dapanhv` DISABLE KEYS */;
INSERT INTO `dapanhv` VALUES (1481210281147,'BBABC',1478396124277,1),(1481210381305,'BBABC',1478396124277,1);
/*!40000 ALTER TABLE `dapanhv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `demdangky`
--

DROP TABLE IF EXISTS `demdangky`;
/*!50001 DROP VIEW IF EXISTS `demdangky`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `demdangky` AS SELECT 
 1 AS `MaKH`,
 1 AS `UserID`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `dethi`
--

DROP TABLE IF EXISTS `dethi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dethi` (
  `MaDeThi` bigint(20) NOT NULL AUTO_INCREMENT,
  `TenDeThi` varchar(200) DEFAULT NULL,
  `MaKH` bigint(20) DEFAULT NULL,
  `FileData` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`MaDeThi`),
  KEY `MaKH` (`MaKH`),
  CONSTRAINT `dethi_ibfk_1` FOREIGN KEY (`MaKH`) REFERENCES `khoahoc` (`MaKH`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dethi`
--

LOCK TABLES `dethi` WRITE;
/*!40000 ALTER TABLE `dethi` DISABLE KEYS */;
INSERT INTO `dethi` VALUES (1,'Kiểm tra lập trình C',1480223244590,'baikiemtra.txt');
/*!40000 ALTER TABLE `dethi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diem`
--

DROP TABLE IF EXISTS `diem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diem` (
  `MaDeThi` bigint(20) NOT NULL,
  `UserID` bigint(20) NOT NULL,
  `Diem` float DEFAULT NULL,
  `NhanXet` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`MaDeThi`,`UserID`),
  KEY `UserID` (`UserID`),
  CONSTRAINT `diem_ibfk_2` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diem`
--

LOCK TABLES `diem` WRITE;
/*!40000 ALTER TABLE `diem` DISABLE KEYS */;
INSERT INTO `diem` VALUES (0,0,0,NULL),(1,1478396124277,10,'Good');
/*!40000 ALTER TABLE `diem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diembaitap`
--

DROP TABLE IF EXISTS `diembaitap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diembaitap` (
  `MaBT` bigint(20) DEFAULT NULL,
  `UserID` bigint(20) DEFAULT NULL,
  `DiemSo` float DEFAULT NULL,
  `NhanXet` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diembaitap`
--

LOCK TABLES `diembaitap` WRITE;
/*!40000 ALTER TABLE `diembaitap` DISABLE KEYS */;
INSERT INTO `diembaitap` VALUES (1,1478396124277,8,'Khá');
/*!40000 ALTER TABLE `diembaitap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khaosatkhoahoc`
--

DROP TABLE IF EXISTS `khaosatkhoahoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `khaosatkhoahoc` (
  `MaKH` bigint(20) NOT NULL,
  `UserID` bigint(20) NOT NULL,
  `KQ` float DEFAULT NULL,
  `NhanXet` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`MaKH`,`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khaosatkhoahoc`
--

LOCK TABLES `khaosatkhoahoc` WRITE;
/*!40000 ALTER TABLE `khaosatkhoahoc` DISABLE KEYS */;
INSERT INTO `khaosatkhoahoc` VALUES (1480223244590,4,60,''),(1480223244590,1478396124277,10,'');
/*!40000 ALTER TABLE `khaosatkhoahoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `khoahoc`
--

DROP TABLE IF EXISTS `khoahoc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `khoahoc` (
  `MaKH` bigint(20) NOT NULL AUTO_INCREMENT,
  `TenKH` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `NgayKhaiGiang` date DEFAULT NULL,
  `HocPhi` bigint(20) DEFAULT NULL,
  `KhaiQuat` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `NoiDung` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `ShowTester` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`MaKH`)
) ENGINE=InnoDB AUTO_INCREMENT=1480657717535 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khoahoc`
--

LOCK TABLES `khoahoc` WRITE;
/*!40000 ALTER TABLE `khoahoc` DISABLE KEYS */;
INSERT INTO `khoahoc` VALUES (1480223244590,'Lập trình C căn bản','2016-12-04',1200000,'Khoá học lập trình C','Chi tiết','https://www.youtube.com/embed/BTtsVGmbiYM'),(1480223290372,'Lập trình web','2016-12-04',2000000,'LTWeb','KH của thầy Dũng','https://www.youtube.com/embed/BTtsVGmbiYM'),(1480657717534,'Lập trình APS.Net','2016-12-02',2000000,'A','A','https://www.youtube.com/embed/j__Q13iAxNk');
/*!40000 ALTER TABLE `khoahoc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thread`
--

DROP TABLE IF EXISTS `thread`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thread` (
  `MaThread` bigint(20) NOT NULL AUTO_INCREMENT,
  `TenThread` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `NgayTao` datetime DEFAULT NULL,
  PRIMARY KEY (`MaThread`)
) ENGINE=InnoDB AUTO_INCREMENT=1480986680542 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thread`
--

LOCK TABLES `thread` WRITE;
/*!40000 ALTER TABLE `thread` DISABLE KEYS */;
INSERT INTO `thread` VALUES (1480026543673,'How to deploy to web??','2016-11-25 00:00:00'),(1480026995269,'Design template in html','2016-11-25 00:00:00'),(1480907470398,'How to deploy to web?','2016-12-05 00:00:00'),(1480986680541,'Học lập trình','2016-12-06 08:11:20');
/*!40000 ALTER TABLE `thread` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `UserID` bigint(20) NOT NULL,
  `Email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Password` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Role` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `HoTen` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `GioiTinh` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SDT` int(11) DEFAULT NULL,
  `HinhAnh` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`UserID`),
  UNIQUE KEY `Email_UNIQUE` (`Email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (0,'nhom12it@gmail.com','123','admin','Lưu Đình Mác','1996-09-13','Nam',986175646,''),(1,'nguoiemcuanui@gmail.com','123','admin','Lưu Đình Mác','1995-09-13','Nam',965175646,''),(2,'luumac2801@gmail.com','123','user','Lưu Đình Mác','1995-09-13','Nam',965175646,''),(3,'liemnguyen388@gmail.com','123','user','Nguyễn Văn Liêm','1996-11-22','Nam',0,''),(4,'vanbinh628@gmail.com','123','user','Binh','2016-11-16','Nam',0,''),(1478396124277,'user@gmail.com','123','user','Học viên','1995-01-11','Nam',12345678,''),(1481278007510,'123@123','123','user','123123','2016-12-19','Nam',0,'null');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `viewdanhsachbaitap`
--

DROP TABLE IF EXISTS `viewdanhsachbaitap`;
/*!50001 DROP VIEW IF EXISTS `viewdanhsachbaitap`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `viewdanhsachbaitap` AS SELECT 
 1 AS `baitapID`,
 1 AS `UserID`,
 1 AS `HoTen`,
 1 AS `TenBT`,
 1 AS `GhiChu`,
 1 AS `MaCTKH`,
 1 AS `FileBaiTap`,
 1 AS `ThoiGian`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viewdanhsachhocvienkhoahoc`
--

DROP TABLE IF EXISTS `viewdanhsachhocvienkhoahoc`;
/*!50001 DROP VIEW IF EXISTS `viewdanhsachhocvienkhoahoc`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `viewdanhsachhocvienkhoahoc` AS SELECT 
 1 AS `UserID`,
 1 AS `Email`,
 1 AS `HoTen`,
 1 AS `GioiTinh`,
 1 AS `NgaySinh`,
 1 AS `SDT`,
 1 AS `MaKH`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viewdanhsachnopbai`
--

DROP TABLE IF EXISTS `viewdanhsachnopbai`;
/*!50001 DROP VIEW IF EXISTS `viewdanhsachnopbai`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `viewdanhsachnopbai` AS SELECT 
 1 AS `UserID`,
 1 AS `HoTen`,
 1 AS `DapAnID`,
 1 AS `DeThiID`,
 1 AS `MaKH`,
 1 AS `ChuoiDapAn`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viewdenopbai`
--

DROP TABLE IF EXISTS `viewdenopbai`;
/*!50001 DROP VIEW IF EXISTS `viewdenopbai`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `viewdenopbai` AS SELECT 
 1 AS `UserID`,
 1 AS `HoTen`,
 1 AS `DapAnID`,
 1 AS `DeThiID`,
 1 AS `ChuoiDapAn`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viewhannopbai`
--

DROP TABLE IF EXISTS `viewhannopbai`;
/*!50001 DROP VIEW IF EXISTS `viewhannopbai`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `viewhannopbai` AS SELECT 
 1 AS `IDBaiTap`,
 1 AS `TenBaiTap`,
 1 AS `NoiDung`,
 1 AS `HanNop`,
 1 AS `GioNop`,
 1 AS `MaChiTietKH`,
 1 AS `ngay`,
 1 AS `Gio`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viewquanlytaikhoan`
--

DROP TABLE IF EXISTS `viewquanlytaikhoan`;
/*!50001 DROP VIEW IF EXISTS `viewquanlytaikhoan`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `viewquanlytaikhoan` AS SELECT 
 1 AS `UserID`,
 1 AS `Email`,
 1 AS `HoTen`,
 1 AS `NgaySinh`,
 1 AS `GioiTinh`,
 1 AS `SDT`,
 1 AS `HinhAnh`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viewthongtindangky`
--

DROP TABLE IF EXISTS `viewthongtindangky`;
/*!50001 DROP VIEW IF EXISTS `viewthongtindangky`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `viewthongtindangky` AS SELECT 
 1 AS `UserID`,
 1 AS `Email`,
 1 AS `Hoten`,
 1 AS `NgaySinh`,
 1 AS `SDT`,
 1 AS `MaKH`,
 1 AS `TenKH`,
 1 AS `chophep`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `viewthongtinkhoahoc`
--

DROP TABLE IF EXISTS `viewthongtinkhoahoc`;
/*!50001 DROP VIEW IF EXISTS `viewthongtinkhoahoc`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `viewthongtinkhoahoc` AS SELECT 
 1 AS `MaKH`,
 1 AS `TenKH`,
 1 AS `SoLuong`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `dangkys`
--

/*!50001 DROP VIEW IF EXISTS `dangkys`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `dangkys` AS (select `dangkykhoahoc`.`UserID` AS `UserID`,`dangkykhoahoc`.`MaKH` AS `MaKH`,`dangkykhoahoc`.`chophep` AS `chophep` from `dangkykhoahoc`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `demdangky`
--

/*!50001 DROP VIEW IF EXISTS `demdangky`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `demdangky` AS select `dangkykhoahoc`.`MaKH` AS `MaKH`,`dangkykhoahoc`.`UserID` AS `UserID` from `dangkykhoahoc` where (`dangkykhoahoc`.`chophep` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewdanhsachbaitap`
--

/*!50001 DROP VIEW IF EXISTS `viewdanhsachbaitap`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewdanhsachbaitap` AS (select `baitap`.`baitapID` AS `baitapID`,`baitap`.`UserID` AS `UserID`,`users`.`HoTen` AS `HoTen`,`baitap`.`TenBT` AS `TenBT`,`baitap`.`GhiChu` AS `GhiChu`,`baitap`.`MaCTKH` AS `MaCTKH`,`baitap`.`FileBaiTap` AS `FileBaiTap`,`baitap`.`ThoiGian` AS `ThoiGian` from (`users` join `baitap`) where (`users`.`UserID` = `baitap`.`UserID`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewdanhsachhocvienkhoahoc`
--

/*!50001 DROP VIEW IF EXISTS `viewdanhsachhocvienkhoahoc`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewdanhsachhocvienkhoahoc` AS select `users`.`UserID` AS `UserID`,`users`.`Email` AS `Email`,`users`.`HoTen` AS `HoTen`,`users`.`GioiTinh` AS `GioiTinh`,`users`.`NgaySinh` AS `NgaySinh`,`users`.`SDT` AS `SDT`,`dangkykhoahoc`.`MaKH` AS `MaKH` from (`users` left join `dangkykhoahoc` on((`users`.`UserID` = `dangkykhoahoc`.`UserID`))) where (`dangkykhoahoc`.`chophep` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewdanhsachnopbai`
--

/*!50001 DROP VIEW IF EXISTS `viewdanhsachnopbai`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewdanhsachnopbai` AS (select `viewdenopbai`.`UserID` AS `UserID`,`viewdenopbai`.`HoTen` AS `HoTen`,`viewdenopbai`.`DapAnID` AS `DapAnID`,`viewdenopbai`.`DeThiID` AS `DeThiID`,`dethi`.`MaKH` AS `MaKH`,`viewdenopbai`.`ChuoiDapAn` AS `ChuoiDapAn` from (`viewdenopbai` left join `dethi` on((`viewdenopbai`.`DeThiID` = `dethi`.`MaDeThi`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewdenopbai`
--

/*!50001 DROP VIEW IF EXISTS `viewdenopbai`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewdenopbai` AS (select `users`.`UserID` AS `UserID`,`users`.`HoTen` AS `HoTen`,`dapanhv`.`DapAnID` AS `DapAnID`,`dapanhv`.`DeThiID` AS `DeThiID`,`dapanhv`.`ChuoiDapAn` AS `ChuoiDapAn` from (`dapanhv` left join `users` on((`dapanhv`.`UserID` = `users`.`UserID`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewhannopbai`
--

/*!50001 DROP VIEW IF EXISTS `viewhannopbai`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewhannopbai` AS (select `adminbaitap`.`IDBaiTap` AS `IDBaiTap`,`adminbaitap`.`TenBaiTap` AS `TenBaiTap`,`adminbaitap`.`NoiDung` AS `NoiDung`,`adminbaitap`.`HanNop` AS `HanNop`,`adminbaitap`.`GioNop` AS `GioNop`,`adminbaitap`.`MaChiTietKH` AS `MaChiTietKH`,(to_days(`adminbaitap`.`HanNop`) - to_days(now())) AS `ngay`,time_to_sec(timediff(`adminbaitap`.`GioNop`,curtime())) AS `Gio` from `adminbaitap`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewquanlytaikhoan`
--

/*!50001 DROP VIEW IF EXISTS `viewquanlytaikhoan`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewquanlytaikhoan` AS (select `users`.`UserID` AS `UserID`,`users`.`Email` AS `Email`,`users`.`HoTen` AS `HoTen`,`users`.`NgaySinh` AS `NgaySinh`,`users`.`GioiTinh` AS `GioiTinh`,`users`.`SDT` AS `SDT`,`users`.`HinhAnh` AS `HinhAnh` from `users`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewthongtindangky`
--

/*!50001 DROP VIEW IF EXISTS `viewthongtindangky`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewthongtindangky` AS select `users`.`UserID` AS `UserID`,`users`.`Email` AS `Email`,`users`.`HoTen` AS `Hoten`,`users`.`NgaySinh` AS `NgaySinh`,`users`.`SDT` AS `SDT`,`dangkykhoahoc`.`MaKH` AS `MaKH`,`khoahoc`.`TenKH` AS `TenKH`,`dangkykhoahoc`.`chophep` AS `chophep` from ((`dangkykhoahoc` join `khoahoc`) join `users`) where ((`dangkykhoahoc`.`MaKH` = `khoahoc`.`MaKH`) and (`dangkykhoahoc`.`UserID` = `users`.`UserID`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `viewthongtinkhoahoc`
--

/*!50001 DROP VIEW IF EXISTS `viewthongtinkhoahoc`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewthongtinkhoahoc` AS select `khoahoc`.`MaKH` AS `MaKH`,`khoahoc`.`TenKH` AS `TenKH`,count(`demdangky`.`UserID`) AS `SoLuong` from (`khoahoc` left join `demdangky` on((`khoahoc`.`MaKH` = `demdangky`.`MaKH`))) group by `khoahoc`.`MaKH` */;
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

-- Dump completed on 2016-12-09 20:07:18
