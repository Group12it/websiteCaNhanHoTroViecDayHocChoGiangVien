/*
SQLyog Enterprise - MySQL GUI v6.15
MySQL - 5.7.15-log : Database - web
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `web`;

USE `web`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `chitietthread` */

DROP TABLE IF EXISTS `chitietthread`;

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

/*Data for the table `chitietthread` */

insert  into `chitietthread`(`ThreadCTID`,`MaThread`,`UserID`,`ThoiGian`,`BinhLuan`) values (1478538501491,1478331762610,'Lưu Đình Mác','2016-11-08 00:08:21','Này thi hiện tên'),(1478538515061,1478331762610,'Mác','2016-11-08 00:08:35','dfdsfsd'),(1478538543877,1478331762610,'Mác','2016-11-08 00:09:03','hay'),(1478538567549,1478331762610,'Admin','2016-11-08 00:09:27','thằng này được');

/*Table structure for table `danhsachhocvienthi` */

DROP TABLE IF EXISTS `danhsachhocvienthi`;

CREATE TABLE `danhsachhocvienthi` (
  `STT` int(11) NOT NULL,
  `TenHV` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `TenBaiTap` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `ThoiGianNop` date DEFAULT NULL,
  PRIMARY KEY (`STT`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `danhsachhocvienthi` */

insert  into `danhsachhocvienthi`(`STT`,`TenHV`,`TenBaiTap`,`ThoiGianNop`) values (1,'Lưu Đình Mac','Bài tập 1','2016-10-20'),(2,'Lưu Đình Mac','Bài tập 1','2016-10-20'),(3,'Nguyễn Văn Liêm','Bài tập 1','2016-10-20');

/*Table structure for table `dethi` */

DROP TABLE IF EXISTS `dethi`;

CREATE TABLE `dethi` (
  `MaDeThi` bigint(20) NOT NULL AUTO_INCREMENT,
  `TenDeThi` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `DuongDanDeThi` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`MaDeThi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `dethi` */

/*Table structure for table `khoahoc` */

DROP TABLE IF EXISTS `khoahoc`;

CREATE TABLE `khoahoc` (
  `MaKH` bigint(20) NOT NULL AUTO_INCREMENT,
  `TenKH` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `NgayKhaiGiang` date DEFAULT NULL,
  `HocPhi` bigint(20) DEFAULT NULL,
  `KhaiQuat` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `NoiDung` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `ShowTester` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`MaKH`)
) ENGINE=InnoDB AUTO_INCREMENT=1478414235933 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `khoahoc` */

insert  into `khoahoc`(`MaKH`,`TenKH`,`NgayKhaiGiang`,`HocPhi`,`KhaiQuat`,`NoiDung`,`ShowTester`) values (1,'Lập trình C căn bản','2016-11-01',1200000,'Khái quát khoá học lập trình C căn bản...','Mục tiêu phải đạt được trong môn học là phải biết vận dụng ngôn ngữ lập trình c để giải các bài toán cơ bản...',NULL),(1478414235932,'Lập trình web','2016-11-11',100000,'123132','1231231','');

/*Table structure for table `thread` */

DROP TABLE IF EXISTS `thread`;

CREATE TABLE `thread` (
  `MaThread` bigint(20) NOT NULL AUTO_INCREMENT,
  `TenThread` varchar(200) CHARACTER SET utf8 DEFAULT NULL,
  `NgayTao` date DEFAULT NULL,
  PRIMARY KEY (`MaThread`)
) ENGINE=InnoDB AUTO_INCREMENT=1478533552561 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `thread` */

insert  into `thread`(`MaThread`,`TenThread`,`NgayTao`) values (1478331762610,'Begin learning programming c basic','2016-10-05'),(1478332226869,'Thế nào là ngôn ngữ lập trình','2016-11-05');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

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

/*Data for the table `users` */

insert  into `users`(`UserID`,`Email`,`Password`,`Role`,`HoTen`,`NgaySinh`,`GioiTinh`,`SDT`,`HinhAnh`) values (1,'nguoiemcuanui@gmail.com','admin','admin','Lưu Đình Mác','1995-09-13','Nam',965175646,'sdfsdf.jpg'),(2,'admin@gmail.com','admin','admin','Admin','2000-01-01','Nữ',1234565655,'background2.jpg'),(1478396124277,'user@gmail.com','123','user','Mác','1995-01-11','null',12345678,'sdfsdf.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
