CREATE DATABASE  IF NOT EXISTS `web` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `web`;
-- MySQL dump 10.13  Distrib 5.7.15, for Win64 (x86_64)
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
INSERT INTO `adminbaitap` VALUES (1481593799653,'Bài tập buổi học 1','Viết chương trình áp dụng những kiến thức đã học trong bài học rồi nộp bài tập lên dúng thời hạn','2016-12-15','10:00:00',1480662203856),(1481635167108,'Bài tập sau buổi 2','Các em hoàn thành bài tập trong file bài tập và gửi file bài tập lên đúng thời hạn','2016-12-15','09:00:00',1480937942115);
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
  `UserID` bigint(20) NOT NULL,
  `TenBT` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `GhiChu` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `MaCTKH` bigint(20) NOT NULL,
  `FileBaiTap` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ThoiGian` datetime DEFAULT NULL,
  PRIMARY KEY (`baitapID`,`UserID`,`MaCTKH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baitap`
--

LOCK TABLES `baitap` WRITE;
/*!40000 ALTER TABLE `baitap` DISABLE KEYS */;
INSERT INTO `baitap` VALUES (1481593799653,4,'Bài tập buổi học 1','hoàn thành',1480662203856,'BTHQTCSDL01112016.txt','2016-12-13 23:41:07'),(1481593799653,1478396124277,'Bài tập buổi học 1','Hoàn thành',1480662203856,'cv.txt','2016-12-13 23:41:30');
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
INSERT INTO `cauhoi` VALUES (1481537453699,1480223244590,'Những tên biết nào dưới đây được viết đúng theo quy tắc đặt tên của ngôn ngữ lập trình C?','diem toan','3diemtoan','_diemtoan','-diemtoan','C'),(1481537634093,1480223244590,' What is the correct value to return to the operating system upon the successful completion of a program?','0','-1','1','Do not return a value','A'),(1481537677052,1480223244590,'What is the only function all C programs must contain?','start()','system()','main()','program()','C'),(1481537724422,1480223244590,'What punctuation is used to signal the beginning and end of code blocks? ','{}','→ and ←','BEGIN and END','(and)','A'),(1481537755465,1480223244590,'What punctuation ends most lines of C code?','.',';',':','\'','B'),(1481537806284,1480223244590,'Which of the following is a correct comment?','*/ Comments */','** Comment **','/* Comment */',' { Comment }','C'),(1481537842978,1480223244590,'Which of the following is not a correct variable type?','float','real','int','double','B'),(1481537870554,1480223244590,'Which of the following is the correct operator to compare two variables?',':=','=','equal','==','D'),(1481537936970,1480223244590,'Which of the following is true?','1','-1','.1','All of the above','D'),(1481537970192,1480223244590,'Which of the following is the boolean operator for logical-and?','&','&&','|','|&','B'),(1481538010633,1480223244590,'Evaluate !(1 && !(0 || 1))','True','False','Unevaluatable','No','A'),(1481538056854,1480223244590,'Which of the following shows the correct syntax for an if statement?','if expression','if { expression','if ( expression )','expression if','C'),(1481538117200,1480223244590,'What is the final value of x when the code is run?<br>int x; <br>for(x = 0; x < 10; x++) { }','10','0=9','0','1','A'),(1481538151186,1480223244590,' When does the code block following while(x<100) execute?',' When x is less than one hundred','When x is greater than one hundred','When x is equal to one hundred','While it wishes','A'),(1481538202589,1480223244590,'Which is not a loop structure?','0','ìninitely','1','variable','C'),(1481538240366,1480223244590,'Which is not a proper prototype?','int funct(char x, char y);','double funct(char x)','void funct();','char x();','B'),(1481538339819,1480223244590,'Which follows the case statement?','end;','break;','stop;','continue;','B'),(1481538462984,1480223244590,'What is the result of the following code?<br>void main() {   <br>  int x = 0; <br>    switch(x)     {<br>     case 1: printf( \"One\" );  <br>   case 0: printf( \"Zero\" );    <br> case 2: printf( \"Hello World\" );   <br>  } <br>}','One','Zero','Hello World','ZeroHello World','D'),(1481538532069,1480223244590,'Which of the following is the proper keyword or function to deallocate memory in  C language?','free','delete','clear','remove','B'),(1481538564661,1480223244590,'Which of the following accesses a variable in structure b?','b→var;','b.var;','b-var;','remove','B'),(1481539281252,1480657717534,'Cookie là?','1 chuỗi ký tự trong dòng địa chỉ web','1 file nằm trên server','1 file nằm trên client','1 file XML','C'),(1481595728451,1480223290372,'File chứa mã nguồn java sau khi được biên dịch có đuôi là gì','.exe','.class','.jav','.java','B'),(1481595794851,1480223290372,'java platform có mấy thành phần','1','2','3','3','B'),(1481600546840,1481600081545,'Đặc điểm của oop','Diễn đạt thiếu tự nhiên','Chương trình là sự hoạt động của đối tượng','Khó mô tả những quan hệ phức tạp','Bảo mật kém','B'),(1481634212526,1481600081545,'Sử dụng cách tuyền nào trong hàm sẽ không làm thay đổi giá trị của biến trong chương trình chính','Truyền bằng giá trị','Truyền bằng giá trị địa chỉ tham số','A và B đúng','A và B sai','A');
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
INSERT INTO `chitietkhoahoc` VALUES (1480662203856,'Bài 1: Làm quen với ngôn ngữ lập trình c và các lệnh cơ bản (tiết 1)','I) Tạo chương trình cho phép xuất ra màn hình dòng chữ \"Hello world ! </br>Nhập vào năm:\" và bắt nhập vào năm hiện tại.</br>Sau đó xuất ra màn hình \"Năm bạn nhập là: [Số liệu bạn nhập trước đó]\".\r\n</br>Code:</br>\r\n#include \"stdio.h\"</br>\r\n#include \"conio.h\"</br>\r\nvoid main()\r\n{</br>\r\n      int year;</br>\r\n      printf(\"Hello world ! Nhap vao nam:\");</br>\r\n      scanf(\"%d\",&year);</br>\r\n      printf(\"Nam ban nhap la:%d\",year);</br>\r\n      getch();</br>\r\n}</br>\r\n-Đến đây sẽ có bạn hỏi rằng mấy cái chữ như int,#include ,getch().... là cái gì ? Tại sao lại cần nó ?</br>\r\nTrả lời : </br>\r\n-int : Đây là hàm khai báo biến có giá trị nguyên.Và 1 số hàm khai báo khác mình sẽ nói sau.</br>\r\n-getch(): Cái này giúp chương trình của bạn sau khi thực hiện xong hết các tác vụ nó sẽ đứng lại để bạn quan sát thành quả của mình.</br>\r\n-#include \"stdio.h\" :Đây là hàm dùng để bạn sử dụng getch(); trong chương trình.</br>\r\n-#include \"conio.h\" :Đây là hàm thư viện quản lý nhập/xuất trong chương trình trên,nó quản lý chững thứ như printf,scanf...</br>\r\n-printf : Đây là hàm xuất ra màn hình,những thứ được viết trong (\".....\") đều sẽ được đưa ra màn hình</br>\r\n\r\nCấu trúc : printf (\"[Những thứ sẽ được xuất ra màn hình]\",[kết quả sẽ được in ra]);\r\nhoặc printf(\"[Những thứ sẽ được xuất ra màn hình]\");</br>\r\n-scanf: Đây là hàm nhập,khi có hàm này chương trình của bạn sẽ dừng lại và bắt nhập vào 1 cái gì đó,như ví dụ trên thì \"%d\" có nghĩa là nơi để bạn nhập dữ liệu từ bàn phím còn \"&year\" là địa chỉ đối số của giá trị đó,nên nhớ rằng bạn phải khai báo \"year\" từ đầu.</br>\r\n\r\nCấu trúc : scanf (\"%[kiểu dữ liệu]\",Đối số);\r\nP/s: scanf có thể có nhiều đối số khác nhau \r\nVD: scanf(\"%[kiểu dữ liệu 1],%[kiểu dữ liệu 2]...\",Đối số 1,Đối số 2,...);</br>\r\nĐây là 1 ví dụ đơn giản.Sau đây mình sẽ liệt kê những loại biến khai báo khác về số khác :</br>\r\n-int : Khai báo biến có kiểu là số nguyên</br>\r\n-float : Khai báo biến có kiểu là số thực (số không nguyên,số lẻ)</br>\r\n-long : Khai báo biến có kiểu là số thực dài </br>\r\n-long double : Khai báo biến có kiểu là số thực rất dài</br>','https://drive.google.com/file/d/0ByTYafRiqTFoTHIzRjFDRUg0cmc/view?usp=sharing','https://drive.google.com/file/d/0ByTYafRiqTFoSjBlTXJsWnZVX0k/view?usp=sharing','https://www.youtube.com/embed/F_Ek89sh7lQ','linkwweb.docx',1480223244590),(1480937942115,'Bài 2: Làm quen với ngôn ngữ lập trình c và các lệnh cơ bản(tt)','II) VIẾT CHƯƠNG TRÌNH TÍNH CHU VI,DIỆN TÍCH CỦA HÌNH CHỮ NHẬT\r\nTrước khi thực hiện viết chương trình,bạn hãy suy nghĩ trong đầu rằng đề bài cần tìm cái gì và cần khai báo bao nhiêu biến?\r\nCông Thức : Chu vi = (Dài + Rộng)/2 và Diện tích = Dài*Rộng\r\nNếu chưa quen thì nên tập viết ra giấy sau đó viết lên máy.\r\nCode:\r\n#include \"stdio.h\"\r\n#include \"conio.h\"\r\nvoid main ()\r\n{\r\n    float Dai,Rong,Chuvi,Dientich;\r\n    printf(\"Chieu dai =\");\r\n    scanf(\"%f\",&Dai);\r\n    printf(\"Chieu rong =\");\r\n    scanf(\"%f\",&Rong);\r\n    Chuvi=(Dai+Rong)/2;\r\n    Dientich=Dai*Rong;\r\n    printf(\"Chu vi HCN = %0.2f\",Chuvi);\r\n    printf(\"Dien tich HCN = %0.2f\",Dientich);\r\n    getch();\r\n}\r\nSau khi quen với chương trình 1 thì chương trình này có thể bạn sẽ cảm thấy dễ hiểu rồi đúng không  .Ở đây nhận thấy là phải khai báo 4 biến là Dai,Rong,Chuvi,Dientich :2 biến để nhập vào,2 biến để xuất ra kết quả.Cái khác ở chương trình nằm ở chỗ là dùng toán tử gán,khi đã biết được hướng giải quyết thì việc viết chương trình cũng dễ hơn,cách đặt các phép toán tử cũng khá đơn giản,nó cũng như toán học vậy thôi.\r\n1 điều lưu ý là ở chương trình trên sẽ có bạn hỏi là tại sao khi xuất ra kết quả Chuvi,Dientich không dùng %f mà lại là %0.2f ?\r\nTrả lời: \r\nKhi xuất ra kết quả với %f thì máy sẽ hiểu theo cấu trúc [X.000000] có nghĩa là nó sẽ lấy độ dài phần dư đến 6 số.VD bạn ra kết quả = 5 thì nó sẽ xuất ra là 5.000000.Nên mình đã giới hạn nó lại bằng cách đặt là %0.2f.Các bạn cứ hiểu 0.2 ở đây là cho ra kết quả lấy phần dư chỉ giới hạn tối đa 2 số.VD kết quả bằng 5.345345 thì máy xuất ra là 5.34.','https://drive.google.com/file/d/0ByTYafRiqTFoSjBlTXJsWnZVX0k/view?usp=sharing','https://drive.google.com/file/d/0ByTYafRiqTFoSjBlTXJsWnZVX0k/view?usp=sharing','https://www.youtube.com/embed/Im5Lu5cOfqw','baocao.docx',1480223244590),(1481634760308,'Làm quen với lập trình bằng ngôn ngữ java','Cơ chế nào cho phép 1 ứng dụng Java độc lập với platform (chọn 2)‏ a- Mỗi platform có một trình Java.exe riêng để thông dịch file.class. b- file.class có cấu trúc độc lập với flatform. c- Mỗi nhà cung cấp hệ điều hành tạo ra các cách riêng để chạy ứng dụng Java','https://drive.google.com/file/d/0ByTYafRiqTFobFRiWVd0MFczYlk/view?usp=sharing',' https://drive.google.com/file/d/0ByTYafRiqTFoMGRLUDFHQ2hOaHM/view?usp=sharing','https://www.youtube.com/embed/jfynbQM3zf4','02.pdf',1480223290372);
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
INSERT INTO `chitietthread` VALUES (1481600279777,1481600114929,'Lưu Đình Mác','2016-12-13 10:37:59','Nhóm 12'),(1481601493339,1480026995269,'Luu Mác','2016-12-13 10:58:13','CSS/Bootstrap'),(1481633647221,1480026995269,'Luu Mác','2016-12-13 19:54:07','HTML5');
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
INSERT INTO `dangkykhoahoc` VALUES (2,1480223244590,'1'),(3,1480223244590,'1'),(4,1480223244590,'1'),(1478396124277,1480223244590,'1');
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
INSERT INTO `diem` VALUES (1480223244590,1478396124277,7,'Khá');
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
INSERT INTO `diembaitap` VALUES (1481593799653,1478396124277,9,'Tot');
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
) ENGINE=InnoDB AUTO_INCREMENT=1481600081546 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `khoahoc`
--

LOCK TABLES `khoahoc` WRITE;
/*!40000 ALTER TABLE `khoahoc` DISABLE KEYS */;
INSERT INTO `khoahoc` VALUES (1480223244590,'Lập trình C căn bản','2016-12-04',12000002,'Người chưa từng biết qua các ngôn ngữ lập trình\r\nSinh viên các trường Đại học, Cao đẳng, Trung cấp nghề hoặc những người làm việc trong lĩnh vực công nghệ thông tin và các đối tượng quan tâm đến lập trình bằng ngôn ngữ\r\n','Học để sử dụng thành thạo ngôn ngữ C\r\nRèn luyện vững vàng tư duy lập trình, thuật giải với ngôn ngữ C\r\nTiếp cận các ngôn ngữ lập trình khác một cách dễ dàng','https://www.youtube.com/embed/jShO78_I7RA'),(1480223290372,'Lập trình java','2016-12-04',2000000,'Java là một ngôn ngữ lập trình hướng đối tượng phổ biến nhất hiện nay được xây dựng và phát triển bởi Sun Microsystems.\r\nJava được sử dụng trong nhiều lĩnh vực và các nền tảng khác nhau.\r\nJava được chia thành 3 mảng chính đó là: lập trình desktop J2SE, lập trình web J2EE và lập trình trên thiết bị di động J2ME - ưa chuộng nhất hiện nay là Android.\r\nKhóa học Java for Base tại Stanford ngoài cung cấp những kiến thức nền tảng về Java Core bạn còn có cơ hội làm việc lớp lập trình cơ sở dữ liệu bằng JDBC và lập trình desktop để tạo giao diện phần mềm.\r\n','Hòa nhịp vào thế mạnh của Java,Lớp học Myclass.vn của chúng ta đã cho ra đời khóa học “Lập trình JAVA căn bản” với mục đích cung cấp cho các bạn học viên có những kiến thức cơ bản nhất về nguyên lý lập trình bằng ngôn ngữ Java, qua đó giúp các bạn có một nền tảng vững chắc về Java và có thể dùng ngôn ngữ này để lập trình với các Engine hay Framework nâng cao. Đồng thời qua đó, các bạn có thể tự tay phát triển những ứng dụng hoặc game cho riêng mình trên nhiều môi trường khác nhau, đặc biệt là hệ điều hành Android và xây dựng cho riêng mình một hậu phương vững chắc.Nào bây giờ chúng ta hãy bắt đầu với khóa học lập trình java căn bản này ngay nhé.','https://www.youtube.com/embed/3wQPXh4MNFw'),(1480657717534,'Lập trình Web với java','2016-12-02',2000000,'Khóa học giúp bạn tự tay thiết kế giao diện website theo chuẩn bằng Photoshop - và cách kiếm tiền bằng công việc bán bản thiết kế web để kiếm hàng ngàn $, tự tin nhận các dự án Freelancer về nghề Web Designer, tự tin xin việc ở lĩnh vực thiết kế UI web.\r\nKhóa học giúp bạn tự chuyển giao diện PSD sang bản HTML/CSS theo chuẩn Bootstrap - Responsive trên mọi thiết bị máy tính, tablet hay mobile, Tự tay thiết kế Template HTML để bán trên themforest, bootstrap, tự tin xin việc với vị trí lập trình Front-end.\r\nKhóa học giúp bạn tự tay làm website hoàn chỉnh với Wordpress, chuyển đổi giao diện từ HTML sang Wordpress, Tự tin ứng tuyển xin việc vị trí Website Developer ở các công ty phần mềm, lập trình web, tự nhận dự án Freelancer, tự tay thiết kế Themeđể bán trên Themforest.\r\n','Khóa học thiết kế giao diện web với Photoshop, theo chuẩn 12 cột, chuẩn w3c\r\nKhóa học Bootstrap đưa bản thiết kế HTML/CSS theo chuẩn Responsive trên mọi nền tảng thiết bị từ file PSD\r\nKhóa học Wordpress Developer: Chuyển giao diện từ HTML/CSS sang web động được quản lý bởi Wordpress\r\n','https://www.youtube.com/embed/VOyI1OvnSQM'),(1481600081545,'Lập trình hướng đối tượng','2016-12-30',1000000,'“Lập trình hướng đối tượng là 1 phương pháp viết mã cho phép các lập trình viên nhóm các action tượng tự nhau vào các class”. Điều này giúp mã lệnh giữ vững được nguyên lý DRY “don’t repeat yourself” (không lặp lại chính nó) và dễ dàng để bảo trì.','Hiểu Về Đối Tượng (Objects) Và Lớp (Class)\r\nCấu trúc Class\r\nĐịnh nghĩa thuộc tính của Class\r\nĐịnh nghĩa Phương thức của Class\r\n','https://www.youtube.com/embed/UtbmDxShsJI');
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
INSERT INTO `lambaikiemtra` VALUES (1480223244590,1481537453699,1478396124277,'C'),(1480223244590,1481537634093,1478396124277,'D'),(1480223244590,1481537677052,1478396124277,'D'),(1480223244590,1481537724422,1478396124277,'A'),(1480223244590,1481537755465,1478396124277,'B'),(1480223244590,1481537806284,1478396124277,'C'),(1480223244590,1481537842978,1478396124277,'B'),(1480223244590,1481537870554,1478396124277,'D'),(1480223244590,1481537936970,1478396124277,'D'),(1480223244590,1481537970192,1478396124277,'B'),(1480223244590,1481538010633,1478396124277,'C'),(1480223244590,1481538056854,1478396124277,'C'),(1480223244590,1481538117200,1478396124277,'A'),(1480223244590,1481538151186,1478396124277,'B'),(1480223244590,1481538202589,1478396124277,'D'),(1480223244590,1481538240366,1478396124277,'A'),(1480223244590,1481538339819,1478396124277,'B'),(1480223244590,1481538462984,1478396124277,'D'),(1480223244590,1481538532069,1478396124277,'B'),(1480223244590,1481538564661,1478396124277,'B');
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
INSERT INTO `thongbao` VALUES (1481600863682,1480223244590,'Có bài tập mới','Có bài tập mơi. Các em tải bài tập và làm rồi nộp lên trước thời gian quy định','2016-12-13 10:47:43');
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
) ENGINE=InnoDB AUTO_INCREMENT=1481640707417 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thread`
--

LOCK TABLES `thread` WRITE;
/*!40000 ALTER TABLE `thread` DISABLE KEYS */;
INSERT INTO `thread` VALUES (1480026995269,'Design template pretty in html ','2016-11-25 00:00:00'),(1480907470398,'How to deploy to web?','2016-12-05 00:00:00'),(1480986680541,'Học lập trình c có khó không??','2016-12-13 00:00:00'),(1481600114929,'Báo cáo cuối kỳ môn web??','2016-12-13 00:00:00');
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
INSERT INTO `users` VALUES (0,'nhom12it@gmail.com','123','admin','Lưu Đình Mác','1996-09-13','Nam',986175646,'background2.jpg'),(1,'nguoiemcuanui@gmail.com','123','admin','Lưu Đình Mác','1995-09-13','Nam',965175646,''),(2,'luumac2801@gmail.com','123','user','Lưu Đình Mác','1995-09-13','Nam',965175646,''),(3,'liemnguyen388@gmail.com','123','user','Nguyễn Văn Liêm','1996-11-22','Nam',0,''),(4,'vanbinh628@gmail.com','123','user','Bình','2016-11-16','Nam',0,''),(1478396124277,'user@gmail.com','123','user','Luu Mác','1995-01-11','Nam',987654321,'Capture.PNG'),(1481601348194,'luudinhmac123@gmail.com','123','user','Lưu','2016-12-12','Nam',0,'null');
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
-- Temporary view structure for view `viewhocviennopbai`
--

DROP TABLE IF EXISTS `viewhocviennopbai`;
/*!50001 DROP VIEW IF EXISTS `viewhocviennopbai`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `viewhocviennopbai` AS SELECT 
 1 AS `MaDeThi`,
 1 AS `UserID`,
 1 AS `HoTen`,
 1 AS `Diem`*/;
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
-- Final view structure for view `viewhocviennopbai`
--

/*!50001 DROP VIEW IF EXISTS `viewhocviennopbai`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `viewhocviennopbai` AS (select distinct `diem`.`MaDeThi` AS `MaDeThi`,`diem`.`UserID` AS `UserID`,`users`.`HoTen` AS `HoTen`,`diem`.`Diem` AS `Diem` from (((`users` join `khoahoc`) join `cauhoi`) join `diem`) where ((`khoahoc`.`MaKH` = `cauhoi`.`MaKH`) and (`diem`.`MaDeThi` = `cauhoi`.`MaKH`) and (`users`.`UserID` = `diem`.`UserID`))) */;
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

-- Dump completed on 2016-12-13 23:43:23
