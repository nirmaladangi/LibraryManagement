/*
SQLyog Community Edition- MySQL GUI v8.04 
MySQL - 5.0.37-community-nt : Database - library
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`library` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `library`;

/*Table structure for table `books` */

DROP TABLE IF EXISTS `books`;

CREATE TABLE `books` (
  `BID` int(11) NOT NULL auto_increment,
  `BNAME` varchar(50) default NULL,
  `GENRE` varchar(20) default NULL,
  `PRICE` int(11) default NULL,
  PRIMARY KEY  (`BID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `books` */

insert  into `books`(`BID`,`BNAME`,`GENRE`,`PRICE`) values (1,'War and Peace','Mystery',200),(2,'The Guest Book','Fiction',300),(3,'The Perfect Murder','Mystery',150),(4,'Accidental Presidents','Biography',250),(5,'The Wicked King','Fiction',350);

/*Table structure for table `issued` */

DROP TABLE IF EXISTS `issued`;

CREATE TABLE `issued` (
  `IID` int(11) NOT NULL auto_increment,
  `UID` int(11) default NULL,
  `BID` int(11) default NULL,
  `ISSUED_DATE` varchar(20) default NULL,
  `RETURN_DATE` varchar(20) default NULL,
  `PERIOD` int(11) default NULL,
  `FINE` int(11) default NULL,
  PRIMARY KEY  (`IID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `issued` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `UID` int(11) NOT NULL auto_increment,
  `USERNAME` varchar(30) default NULL,
  `PASSWORD` varchar(30) default NULL,
  `ADMIN` tinyint(1) default NULL,
  PRIMARY KEY  (`UID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`UID`,`USERNAME`,`PASSWORD`,`ADMIN`) values (1,'admin','admin',1),(2,'nirmala','nirmala',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
