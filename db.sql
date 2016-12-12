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
INSERT INTO `adminbaitap` VALUES (1,'Bài tập 1','Các em tải file bài tập về làm và nén lại file rar và gửi lên trước thời hạn','2016-12-11','23:00:00',1480662203856);
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
/*!40000 ALTER TABLE `baitap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cauhoi`
--

DROP TABLE IF EXISTS `cauhoi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cauhoi` (
  `MaCH` bigint(20) NOT NULL,
  `MaKH` bigint(20) NOT NULL,
  `NoiDung` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `A` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `B` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `C` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `D` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `DADung` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`MaCH`,`MaKH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cauhoi`
--

LOCK TABLES `cauhoi` WRITE;
/*!40000 ALTER TABLE `cauhoi` DISABLE KEYS */;
INSERT INTO `cauhoi` VALUES (1,1480223244590,'sdfsfsd','sdfsdgsd','sdgsdfsdf','sdfsdfsdf','sdfsdfsd','A'),(2,1480223244590,'123','123','123','123','123','A'),(123,1480223244590,'(NU12312323LL)','123123','13123','213123123','123123123','A'),(1481508158059,1480657717534,'sdfds','sdf','dsf','sdf','sdfsdf','A'),(1481508648560,1480657717534,'sdfds','sdf','dsf','sdf','sdfsdf','A'),(1481508746654,1480657717534,'sdfds','sdf','dsf','sdf','sdfsdf','A'),(141212312312311,1480223244590,'24124124','1241241241241','124124124124124','124124124124','124124124','A');
/*!40000 ALTER TABLE `cauhoi` ENABLE KEYS */;
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
INSERT INTO `chitietkhoahoc` VALUES (1480662203856,'Bài 1: Làm quen với ngôn ngữ lập trình c và các lệnh cơ bản','I) Tạo chương trình cho phép xuất ra màn hình dòng chữ \"Hello world ! </br>Nhập vào năm:\" và bắt nhập vào năm hiện tại.</br>Sau đó xuất ra màn hình \"Năm bạn nhập là: [Số liệu bạn nhập trước đó]\".\r\n</br>Code:</br>\r\n#include \"stdio.h\"</br>\r\n#include \"conio.h\"</br>\r\nvoid main()\r\n{</br>\r\n      int year;</br>\r\n      printf(\"Hello world ! Nhap vao nam:\");</br>\r\n      scanf(\"%d\",&year);</br>\r\n      printf(\"Nam ban nhap la:%d\",year);</br>\r\n      getch();</br>\r\n}</br>\r\n-Đến đây sẽ có bạn hỏi rằng mấy cái chữ như int,#include ,getch().... là cái gì ? Tại sao lại cần nó ?</br>\r\nTrả lời : </br>\r\n-int : Đây là hàm khai báo biến có giá trị nguyên.Và 1 số hàm khai báo khác mình sẽ nói sau.</br>\r\n-getch(): Cái này giúp chương trình của bạn sau khi thực hiện xong hết các tác vụ nó sẽ đứng lại để bạn quan sát thành quả của mình.</br>\r\n-#include \"stdio.h\" :Đây là hàm dùng để bạn sử dụng getch(); trong chương trình.</br>\r\n-#include \"conio.h\" :Đây là hàm thư viện quản lý nhập/xuất trong chương trình trên,nó quản lý chững thứ như printf,scanf...</br>\r\n-printf : Đây là hàm xuất ra màn hình,những thứ được viết trong (\".....\") đều sẽ được đưa ra màn hình</br>\r\n\r\nCấu trúc : printf (\"[Những thứ sẽ được xuất ra màn hình]\",[kết quả sẽ được in ra]);\r\nhoặc printf(\"[Những thứ sẽ được xuất ra màn hình]\");</br>\r\n-scanf: Đây là hàm nhập,khi có hàm này chương trình của bạn sẽ dừng lại và bắt nhập vào 1 cái gì đó,như ví dụ trên thì \"%d\" có nghĩa là nơi để bạn nhập dữ liệu từ bàn phím còn \"&year\" là địa chỉ đối số của giá trị đó,nên nhớ rằng bạn phải khai báo \"year\" từ đầu.</br>\r\n\r\nCấu trúc : scanf (\"%[kiểu dữ liệu]\",Đối số);\r\nP/s: scanf có thể có nhiều đối số khác nhau \r\nVD: scanf(\"%[kiểu dữ liệu 1],%[kiểu dữ liệu 2]...\",Đối số 1,Đối số 2,...);</br>\r\nĐây là 1 ví dụ đơn giản.Sau đây mình sẽ liệt kê những loại biến khai báo khác về số khác :</br>\r\n-int : Khai báo biến có kiểu là số nguyên</br>\r\n-float : Khai báo biến có kiểu là số thực (số không nguyên,số lẻ)</br>\r\n-long : Khai báo biến có kiểu là số thực dài </br>\r\n-long double : Khai báo biến có kiểu là số thực rất dài</br>','https://www.youtube.com/embed/zj-aEwORdzk','https://www.youtube.com/embed/zj-aEwORdzk','https://www.youtube.com/embed/zj-aEwORdzk','HD git.docx',1480223244590),(1480937942115,'Bài 2: Làm quen với ngôn ngữ lập trình c và các lệnh cơ bản(tt)','II) VIẾT CHƯƠNG TRÌNH TÍNH CHU VI,DIỆN TÍCH CỦA HÌNH CHỮ NHẬT\r\nTrước khi thực hiện viết chương trình,bạn hãy suy nghĩ trong đầu rằng đề bài cần tìm cái gì và cần khai báo bao nhiêu biến?\r\nCông Thức : Chu vi = (Dài + Rộng)/2 và Diện tích = Dài*Rộng\r\nNếu chưa quen thì nên tập viết ra giấy sau đó viết lên máy.\r\nCode:\r\n#include \"stdio.h\"\r\n#include \"conio.h\"\r\nvoid main ()\r\n{\r\n    float Dai,Rong,Chuvi,Dientich;\r\n    printf(\"Chieu dai =\");\r\n    scanf(\"%f\",&Dai);\r\n    printf(\"Chieu rong =\");\r\n    scanf(\"%f\",&Rong);\r\n    Chuvi=(Dai+Rong)/2;\r\n    Dientich=Dai*Rong;\r\n    printf(\"Chu vi HCN = %0.2f\",Chuvi);\r\n    printf(\"Dien tich HCN = %0.2f\",Dientich);\r\n    getch();\r\n}\r\nSau khi quen với chương trình 1 thì chương trình này có thể bạn sẽ cảm thấy dễ hiểu rồi đúng không  .Ở đây nhận thấy là phải khai báo 4 biến là Dai,Rong,Chuvi,Dientich :2 biến để nhập vào,2 biến để xuất ra kết quả.Cái khác ở chương trình nằm ở chỗ là dùng toán tử gán,khi đã biết được hướng giải quyết thì việc viết chương trình cũng dễ hơn,cách đặt các phép toán tử cũng khá đơn giản,nó cũng như toán học vậy thôi.\r\n1 điều lưu ý là ở chương trình trên sẽ có bạn hỏi là tại sao khi xuất ra kết quả Chuvi,Dientich không dùng %f mà lại là %0.2f ?\r\nTrả lời: \r\nKhi xuất ra kết quả với %f thì máy sẽ hiểu theo cấu trúc [X.000000] có nghĩa là nó sẽ lấy độ dài phần dư đến 6 số.VD bạn ra kết quả = 5 thì nó sẽ xuất ra là 5.000000.Nên mình đã giới hạn nó lại bằng cách đặt là %0.2f.Các bạn cứ hiểu 0.2 ở đây là cho ra kết quả lấy phần dư chỉ giới hạn tối đa 2 số.VD kết quả bằng 5.345345 thì máy xuất ra là 5.34.','https://docs.google.com/document/d/1siwUVMjMPLZj2radlrbN9W-WKJjoVlttbyjoArOC4D8/edit?usp=sharing','https://docs.google.com/document/d/1MOhwpNAJeTElxTn3XqDBH74ztP9VKDEBz7ZtT_Y5XIA/edit?usp=sharing','https://www.youtube.com/embed/zj-aEwORdzk','chiaip.docx',1480223244590);
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
INSERT INTO `dangkykhoahoc` VALUES (1,1480223244590,'1'),(2,1480223244590,'1'),(4,1480223244590,'1'),(1478396124277,1480223244590,'1'),(1478396124277,1480223290372,'1'),(1478396124277,1480657717534,'1');
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
INSERT INTO `dapanhv` VALUES (1481210281147,'BBABC',1478396124277,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dethi`
--

LOCK TABLES `dethi` WRITE;
/*!40000 ALTER TABLE `dethi` DISABLE KEYS */;
INSERT INTO `dethi` VALUES (1,'Kiểm tra lập trình C',1480223244590,'baikiemtra.txt'),(2,'412411',1480223244590,'sdfsdf');
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
INSERT INTO `diem` VALUES (1480223244590,4,2.5,'Yếu'),(1480223244590,1478396124277,10,'Xuất sắc'),(1480657717534,1478396124277,0,'Yếu');
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
INSERT INTO `khaosatkhoahoc` VALUES (1480223244590,2,0,'Tệ'),(1480223244590,4,45,'Cung dk'),(1480223244590,1478396124277,95,'Good');
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
-- Table structure for table `lambaikiemtra`
--

DROP TABLE IF EXISTS `lambaikiemtra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lambaikiemtra` (
  `MaKH` bigint(20) NOT NULL,
  `MaCH` bigint(20) NOT NULL,
  `UserID` bigint(20) NOT NULL,
  `DapAnChon` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`MaKH`,`MaCH`,`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lambaikiemtra`
--

LOCK TABLES `lambaikiemtra` WRITE;
/*!40000 ALTER TABLE `lambaikiemtra` DISABLE KEYS */;
INSERT INTO `lambaikiemtra` VALUES (1480223244590,1,4,'A'),(1480223244590,1,1478396124277,'A'),(1480223244590,2,4,'B'),(1480223244590,2,1478396124277,'A'),(1480223244590,123,4,'B'),(1480223244590,123,1478396124277,'A'),(1480223244590,141212312312311,4,'B'),(1480223244590,141212312312311,1478396124277,'A'),(1480657717534,1481508158059,1478396124277,'D'),(1480657717534,1481508648560,1478396124277,'D'),(1480657717534,1481508746654,1478396124277,'D');
/*!40000 ALTER TABLE `lambaikiemtra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thongbao`
--

DROP TABLE IF EXISTS `thongbao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thongbao` (
  `MaThongBao` bigint(20) NOT NULL,
  `MaKH` bigint(20) DEFAULT NULL,
  `TenThongBao` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `NoiDungTB` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThoiGianTB` datetime DEFAULT NULL,
  PRIMARY KEY (`MaThongBao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thongbao`
--

LOCK TABLES `thongbao` WRITE;
/*!40000 ALTER TABLE `thongbao` DISABLE KEYS */;
INSERT INTO `thongbao` VALUES (1481360290476,1480223244590,'Thông báo từ khoá học lập trình c','Có bài tập mới. Các em tải bài tập về và làm bài rồi nộp bài đúng trước thời hạn','2016-12-10 15:58:10');
/*!40000 ALTER TABLE `thongbao` ENABLE KEYS */;
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
INSERT INTO `thread` VALUES (1480026995269,'Design template pretty in html ','2016-11-25 00:00:00'),(1480907470398,'How to deploy to web?','2016-12-05 00:00:00'),(1480986680541,'Học lập trình c có khó không?','2016-12-06 08:11:20');
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
INSERT INTO `users` VALUES (0,'nhom12it@gmail.com','123','admin','Lưu Đình Mác','1996-09-13','Nam',986175646,''),(1,'nguoiemcuanui@gmail.com','123','admin','Lưu Đình Mác','1995-09-13','Nam',965175646,'cho.gif'),(2,'luumac2801@gmail.com','123','user','Lưu Đình Mác','1995-09-13','Nam',965175646,''),(3,'liemnguyen388@gmail.com','123','user','Nguyễn Văn Liêm','1996-11-22','Nam',0,''),(4,'vanbinh628@gmail.com','123','user','Bình','2016-11-16','Nam',0,''),(1478396124277,'user@gmail.com','123','user','Học viên','1995-01-11','Nam',12345678,'');
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
-- Temporary view structure for view `viewdethi`
--

DROP TABLE IF EXISTS `viewdethi`;
/*!50001 DROP VIEW IF EXISTS `viewdethi`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `viewdethi` AS SELECT 
 1 AS `MaKH`,
 1 AS `TenKH`,
 1 AS `MaCH`,
 1 AS `SoCau`*/;
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
-- Temporary view structure for view `viewthongbao`
--

DROP TABLE IF EXISTS `viewthongbao`;
/*!50001 DROP VIEW IF EXISTS `viewthongbao`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `viewthongbao` AS SELECT 
 1 AS `MaThongBao`,
 1 AS `MaKH`,
 1 AS `TenThongBao`,
 1 AS `NoiDungTB`,
 1 AS `ThoiGianTB`*/;
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
-- Final view structure for view `viewdethi`
--

/*!50001 DROP VIEW IF EXISTS `viewdethi`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewdethi` AS (select `khoahoc`.`MaKH` AS `MaKH`,`khoahoc`.`TenKH` AS `TenKH`,`cauhoi`.`MaCH` AS `MaCH`,count(`cauhoi`.`MaCH`) AS `SoCau` from (`khoahoc` join `cauhoi`) where (`cauhoi`.`MaKH` = `khoahoc`.`MaKH`) group by `khoahoc`.`MaKH`) */;
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
-- Final view structure for view `viewthongbao`
--

/*!50001 DROP VIEW IF EXISTS `viewthongbao`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewthongbao` AS (select distinct `thongbao`.`MaThongBao` AS `MaThongBao`,`thongbao`.`MaKH` AS `MaKH`,`thongbao`.`TenThongBao` AS `TenThongBao`,`thongbao`.`NoiDungTB` AS `NoiDungTB`,`thongbao`.`ThoiGianTB` AS `ThoiGianTB` from ((`thongbao` join `users`) join `dangkykhoahoc`) where ((`thongbao`.`MaKH` = `dangkykhoahoc`.`MaKH`) and (`dangkykhoahoc`.`chophep` = '1') and (`dangkykhoahoc`.`UserID` = `users`.`UserID`))) */;
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

-- Dump completed on 2016-12-12 10:59:52
