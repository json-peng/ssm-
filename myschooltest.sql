/*
SQLyog Ultimate v8.32 
MySQL - 5.7.28-log : Database - myschooltest
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`myschooltest` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `myschooltest`;

/*Table structure for table `grade` */

DROP TABLE IF EXISTS `grade`;

CREATE TABLE `grade` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `grdName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `grade` */

insert  into `grade`(`id`,`grdName`) values (1,'一年级'),(2,'二年级'),(3,'三年级');

/*Table structure for table `score` */

DROP TABLE IF EXISTS `score`;

CREATE TABLE `score` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `scrNumber` int(100) DEFAULT NULL,
  `studentId` bigint(10) DEFAULT NULL,
  `subjectId` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

/*Data for the table `score` */

insert  into `score`(`id`,`scrNumber`,`studentId`,`subjectId`) values (1,89,1,1),(3,100,4,3),(4,88,3,2),(5,87,1,3),(8,100,3,1),(9,98,4,2),(10,12,3,1),(11,68,4,3);

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `id` bigint(100) NOT NULL AUTO_INCREMENT,
  `StuName` varchar(50) DEFAULT NULL,
  `StuBirthday` date DEFAULT NULL,
  `StuSex` int(2) DEFAULT NULL,
  `StuAddress` varchar(50) DEFAULT NULL,
  `StuEmail` varchar(50) DEFAULT NULL,
  `gradeId` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `student` */

insert  into `student`(`id`,`StuName`,`StuBirthday`,`StuSex`,`StuAddress`,`StuEmail`,`gradeId`) values (1,'林一','2018-03-06',0,'南孚城',NULL,1),(3,'张楠','2016-08-15',0,'罗丽城',NULL,3),(4,'111','2014-09-08',1,'1','1',1);

/*Table structure for table `subject` */

DROP TABLE IF EXISTS `subject`;

CREATE TABLE `subject` (
  `id` bigint(10) NOT NULL AUTO_INCREMENT,
  `subName` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `subject` */

insert  into `subject`(`id`,`subName`) values (1,'语'),(2,'数'),(3,'英');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `userName` varchar(50) DEFAULT NULL,
  `passWord` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`id`,`userName`,`passWord`) values (1,'林一','111');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
