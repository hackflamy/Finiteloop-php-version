/*
SQLyog Community Edition- MySQL GUI v5.22a
Host - 5.1.30-community : Database - restaurant review
*********************************************************************
Server version : 5.1.30-community
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `restaurant review`;

USE `restaurant review`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `tbladministrator` */

DROP TABLE IF EXISTS `tbladministrator`;

CREATE TABLE `tbladministrator` (
  `admin_emailAddr` varchar(50) NOT NULL,
  `admin_Password` varchar(15) DEFAULT NULL,
  `admin_FirstName` varchar(50) DEFAULT NULL,
  `admin_LastName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`admin_emailAddr`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbladministrator` */

insert  into `tbladministrator`(`admin_emailAddr`,`admin_Password`,`admin_FirstName`,`admin_LastName`) values ('arafatsage@gmail.com','user3pass','Arafat','Mashabela'),('botha.quintin1123@gmail.com','user1pass','Quintin','Botha'),('lezandi.charel@gmail.com','user4pass','Charel','Marais'),('sbusisomasina95@gmail.com','user2pass','Sbusiso','Masina');

/*Table structure for table `tbladvertisement` */

DROP TABLE IF EXISTS `tbladvertisement`;

CREATE TABLE `tbladvertisement` (
  `ad_AdvertID` int(4) NOT NULL AUTO_INCREMENT,
  `Res_Code` varchar(6) DEFAULT NULL,
  `Fee_Num` int(1) DEFAULT NULL,
  `star_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `Addvert_link` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ad_AdvertID`),
  UNIQUE KEY `AdvertID` (`ad_AdvertID`),
  KEY `FK_tbladvertisement_res` (`Res_Code`),
  KEY `FK_tbladvertisement_pay` (`Fee_Num`),
  CONSTRAINT `tbladvertisement_ibfk_1` FOREIGN KEY (`Res_Code`) REFERENCES `tblrestaurant` (`Res_Code`),
  CONSTRAINT `tbladvertisement_ibfk_2` FOREIGN KEY (`Fee_Num`) REFERENCES `tblfee` (`Fee_Num`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

/*Data for the table `tbladvertisement` */

insert  into `tbladvertisement`(`ad_AdvertID`,`Res_Code`,`Fee_Num`,`star_date`,`end_date`,`Addvert_link`) values (8,'r11',4,'2017-06-23','2017-06-30','http://www.example2.com'),(14,'r14',3,'2017-06-27','2017-06-29','http://www.spurWitbank.com'),(22,'r06',3,'2017-06-28','2017-06-29','http://www.happyhongEm.com'),(23,'r10',2,'2017-06-13','2017-06-16','http://www.panarottis.com'),(28,'r03',4,'2017-06-28','2017-06-30','http://www.example.com'),(29,'r01',1,'2017-06-11','2017-06-30','http://www.180.co.za'),(30,'r14',4,'2017-06-11','2017-06-30','http://www.spur.co.za');

/*Table structure for table `tblfee` */

DROP TABLE IF EXISTS `tblfee`;

CREATE TABLE `tblfee` (
  `Fee_Num` int(1) NOT NULL AUTO_INCREMENT,
  `Fee_Description` varchar(50) DEFAULT NULL,
  `Fee_Amount` double(6,2) DEFAULT NULL,
  PRIMARY KEY (`Fee_Num`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `tblfee` */

insert  into `tblfee`(`Fee_Num`,`Fee_Description`,`Fee_Amount`) values (1,'Monthy fee',200.78),(2,'fixed fee',3895.59),(3,'weekely fee',900.89),(4,'5 year contract',992.59);

/*Table structure for table `tblfoodcritic` */

DROP TABLE IF EXISTS `tblfoodcritic`;

CREATE TABLE `tblfoodcritic` (
  `Cr_No` int(6) NOT NULL AUTO_INCREMENT,
  `Cr_Name` varchar(25) DEFAULT NULL,
  `Cr_CellNo` varchar(10) DEFAULT NULL,
  `Cr_emailAddr` varchar(30) DEFAULT NULL,
  `Cr_Password` varchar(15) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `Adress` varchar(45) DEFAULT NULL,
  `Profile_Pic` varchar(100) DEFAULT NULL,
  `Clasification` varchar(45) DEFAULT NULL,
  `Cr_Role` varchar(10) DEFAULT NULL,
  `Sec_Ques` varchar(100) DEFAULT NULL,
  `Sec_Answer` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Cr_No`),
  UNIQUE KEY `CrNo` (`Cr_No`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `tblfoodcritic` */

insert  into `tblfoodcritic`(`Cr_No`,`Cr_Name`,`Cr_CellNo`,`Cr_emailAddr`,`Cr_Password`,`gender`,`Adress`,`Profile_Pic`,`Clasification`,`Cr_Role`,`Sec_Ques`,`Sec_Answer`) values (1,'UltimateCritic12','0798862477','testmail@gmail.com','testpassword123',NULL,NULL,NULL,NULL,'user',NULL,NULL),(2,'THECRITIC054','0832547896','critic@yahoo.com','critic054',NULL,NULL,NULL,NULL,'user',NULL,NULL),(3,'Stapleton','0736545897','champ@gmail.com','nope123456','Male',NULL,'~//Customer//Images//IMG-20161027-WA0001.jpg',NULL,'user',NULL,NULL),(4,'FoodLover2143','0846523212','peterjack2@gmail.com','peterjackfood',NULL,NULL,NULL,NULL,'user',NULL,NULL),(5,'Jackson321','0765478549','jacksonjohn@yahoo.co.uk','jackson321.',NULL,NULL,NULL,NULL,'user',NULL,NULL),(6,'JOHNDOE','0865478965','johndoe@gmail.com','johndoe123',NULL,NULL,NULL,NULL,'user',NULL,NULL),(7,'HelloNew','0785652321','jacques@gmail.com','12345678',NULL,NULL,NULL,NULL,'user',NULL,NULL),(8,'wdrgthy','758757','grhtjyu',NULL,NULL,NULL,NULL,NULL,'user',NULL,NULL),(9,'gffdgfdr','089978767','ffgffgf',NULL,'',NULL,NULL,NULL,'user',NULL,NULL),(10,'gfhj','01485616','DBDCEHFJE',NULL,'',NULL,NULL,NULL,'user',NULL,NULL),(11,'MR Masina','','Sbu@gmail.com','123456789','',NULL,'~//profile//Koala.jpg',NULL,'admin','First pet name',''),(12,'Flamy','0744068844','f@flooo.com','123456789','Null',NULL,'Null',NULL,'user','Null','Null'),(13,'Flamy','0744068844','c@floop.com','c@5LOOP',NULL,NULL,NULL,NULL,'user','My favourite color','blue'),(14,'Chris','0744068855','cp@floop.com','Cp@5loop','Null',NULL,'Null',NULL,'user','Null','Null'),(15,'Sabelo Johannes','0735311312','johannes@yahoo.com','Aaaa1234','Null',NULL,'Null',NULL,'user','Null','Null'),(16,'gman','0712395180','gman@gmail.com','Gman@123','Male','lukin 8','~//profile//Gmanpic.jpg','Single','user','Favourite color','green'),(17,'Sbusiso','0784534344','Sbusisomasina@gmail.com','Sb@1234','Male','344 Machibin street','~//profile//Koala.jpg','Single','user','First pet name','Goodman');

/*Table structure for table `tblmanager` */

DROP TABLE IF EXISTS `tblmanager`;

CREATE TABLE `tblmanager` (
  `Man_ID` int(4) NOT NULL AUTO_INCREMENT,
  `Man_Name` varchar(25) DEFAULT NULL,
  `Man_CellNo` varchar(10) DEFAULT NULL,
  `Man_emailAddr` varchar(30) DEFAULT NULL,
  `Man_Password` varchar(15) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `Profile_Pic` varchar(100) DEFAULT NULL,
  `Sec_Ques` varchar(100) DEFAULT NULL,
  `Sec_Answer` varchar(50) DEFAULT NULL,
  `Res_Code` varchar(6) NOT NULL,
  PRIMARY KEY (`Man_ID`,`Res_Code`),
  UNIQUE KEY `ManagerID` (`Man_ID`),
  KEY `FK_tblmanager` (`Res_Code`),
  CONSTRAINT `FK_tblmanager` FOREIGN KEY (`Res_Code`) REFERENCES `tblrestaurant` (`Res_Code`)
) ENGINE=InnoDB AUTO_INCREMENT=8513 DEFAULT CHARSET=latin1;

/*Data for the table `tblmanager` */

insert  into `tblmanager`(`Man_ID`,`Man_Name`,`Man_CellNo`,`Man_emailAddr`,`Man_Password`,`gender`,`Address`,`Profile_Pic`,`Sec_Ques`,`Sec_Answer`,`Res_Code`) values (1223,'Mahlongo','0724563287','mahlongos@yahoo.com','Simphiwe@123','Female',NULL,NULL,NULL,NULL,'r01'),(1452,'Dlamini','0744623541','champ@gmail.com','champ@123','Male',NULL,NULL,NULL,NULL,'r15'),(2020,'Mabena','0744253613','luckymabena@yahoo.com','Lucky@123','Male',NULL,NULL,NULL,NULL,'r02'),(2154,'Botha','0748895742','botha.jp@gmail.com','JP@123','Male',NULL,NULL,NULL,NULL,'r03'),(3000,'Masina','0712354698','masinarr@yahoo.com','Richard@123','Female',NULL,NULL,NULL,NULL,'r04'),(3210,'Pretorius','0601423695','gertpretorius@gmail.com','Gert@123','Male',NULL,NULL,NULL,NULL,'r05'),(5023,'Khosa','0602453871','khosasan@gmail.com','Sanele@123','Male',NULL,NULL,NULL,NULL,'r06'),(5024,'Roussow','0831245795','roussowj@gmail.com','Jack@123','Male',NULL,NULL,NULL,NULL,'r07'),(5412,'Skosana','0834157469','skosanasr@yahoo.com','Sbusiso@123','Male',NULL,NULL,NULL,NULL,'r08'),(6952,'Peters','0824513692','peterschar@gmail.com','Charlene@123','Male',NULL,NULL,NULL,NULL,'r09'),(6958,'Peterson','0821515463','petersonpp@gmail.com','Peter@123','Male',NULL,NULL,NULL,NULL,'r10'),(7014,'Radebe','0732156294','radeber@gmail.com','Ronnie@123','Male',NULL,NULL,NULL,NULL,'r11'),(7542,'Ngwenya','0712395180','goodies@gmail.com','goodies@123','Male',NULL,NULL,NULL,NULL,'r13'),(7896,'Mphe','0714582254','mphejr@gmail.com','John@123','Male',NULL,NULL,NULL,NULL,'r12'),(8512,'Masina','0744812356','sbuda@gmail.com','sbuda@123','Male',NULL,NULL,NULL,NULL,'r14');

/*Table structure for table `tblpayment` */

DROP TABLE IF EXISTS `tblpayment`;

CREATE TABLE `tblpayment` (
  `Payment_ReceiptNo` int(10) NOT NULL AUTO_INCREMENT,
  `Payment_Date` varchar(20) DEFAULT NULL,
  `Fee_Num` int(1) DEFAULT NULL,
  `Res_Code` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`Payment_ReceiptNo`),
  UNIQUE KEY `ReceiptNo` (`Payment_ReceiptNo`),
  KEY `Fee_Num` (`Fee_Num`),
  KEY `Res_Code` (`Res_Code`),
  CONSTRAINT `tblpayment_ibfk_1` FOREIGN KEY (`Fee_Num`) REFERENCES `tblfee` (`Fee_Num`),
  CONSTRAINT `tblpayment_ibfk_2` FOREIGN KEY (`Res_Code`) REFERENCES `tblrestaurant` (`Res_Code`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `tblpayment` */

/*Table structure for table `tblrating` */

DROP TABLE IF EXISTS `tblrating`;

CREATE TABLE `tblrating` (
  `rat_code` int(5) NOT NULL AUTO_INCREMENT,
  `rat_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`rat_code`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `tblrating` */

insert  into `tblrating`(`rat_code`,`rat_name`) values (1,'VERY BAD'),(2,'BAD'),(3,'AVERAGE'),(4,'GOOD'),(5,'EXCELENT');

/*Table structure for table `tblrestaurant` */

DROP TABLE IF EXISTS `tblrestaurant`;

CREATE TABLE `tblrestaurant` (
  `Res_Code` varchar(6) NOT NULL,
  `Res_Name` varchar(25) DEFAULT NULL,
  `Res_TelNo` varchar(10) DEFAULT NULL,
  `Res_Town` varchar(30) DEFAULT NULL,
  `Res_Logo` varchar(100) DEFAULT NULL,
  `Res_Loc` varchar(100) DEFAULT NULL,
  `Res_Web` varchar(50) DEFAULT NULL,
  `Res_Address` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Res_Code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tblrestaurant` */

insert  into `tblrestaurant`(`Res_Code`,`Res_Name`,`Res_TelNo`,`Res_Town`,`Res_Logo`,`Res_Loc`,`Res_Web`,`Res_Address`) values ('r01','180 Degrees','0136561181','eMalahleni','Restaurants/180Log.jpg','~/Restaurants/180Loc.JPG','https://www.facebook.com/uturn.aven','40 Bethal St, Zeekoewater 311-Js'),('r02','Billy G\'s','0136559335','eMalahleni','Restaurants/BillyLog.jpg','~/Restaurants/BillyLoc.JPG','https://www.tsogosun.com/billy-g-the-ridge-casino?','The Ridge Cnr N4 Highway &, Mandela St'),('r03','Brazen Head','0136560634','eMalahleni','Restaurants/BrazenLog.jpg','~/Restaurants/BrazenLoc.JPG',NULL,'31 Bethal St & Mandela Dr, Modelpark'),('r04','Chesa Nyama','0718011912','eMalahleni','Restaurants/ChesaLog.jpg','~/Restaurants/ChesaLoc.JPG','http://www.chesanyama.co.za/Home/','15A, Saveways Crescent Centre'),('r05','Eatoons','0136908377','eMalahleni','Restaurants/EatoonsLog.jpg','~/Restaurants/EatoonsLoc.JPG',NULL,'Watermeyer St, Klipfontein'),('r06','Happy Hong','0136561827','eMalahleni','Restaurants/HHLog.jpg','~/Restaurants/HHLoc.JPG',NULL,'Shop 7, River Crescent Centre, Mandela St'),('r07','Jimmy\'s Killer Grills','0824767864','eMalahleni','Restaurants/JimmyLog.jpg','~/Restaurants/JimmyLoc.JPG',NULL,'22 Corridor Cres, Ben Fleur'),('r08','Keg and Hunter','0136923414','eMalahleni','Restaurants/KegLog.jpg','~/Restaurants/KegLoc.JPG',NULL,'Swartbos Avenue'),('r09','Mamalisa','0136564370','eMalahleni','Restaurants/MamalisaLog.jpg','~/Restaurants/MamalisaLoc.JPG','http://www.mamalisa.co.za/','2 Celia St'),('r10','Panarottis','0136924321','eMalahleni','Restaurants/PanarottisLog.jpg','~/Restaurants/PanarottisLoc.JPG','https://www.panarottis.co.za/restau','10A, Highveld Mall, Mandela St'),('r11','Primi Piati','0134920123','eMalahleni','Restaurants/PPLog.jpg','~/Restaurants/PPLoc.JPG','http://www.primi-world.co.za/locati','Doornpoort AH 312-Js'),('r12','Raku Lounge','0829730230','eMalahleni','Restaurants/RakuLog.jpg','~/Restaurants/RakuLoc.JPG',NULL,'28 Prinsberg Ave, Hoeveldpark'),('r13','Rapsody\'s','0136928560','eMalahleni','Restaurants/RapsLog.jpg','~/Restaurants/RapsLoc.JPG','http://www.rhapsodys.co.za/','Ben Fleur Shopping Centre, Ben Fleur'),('r14','Spur','0136970088','eMalahleni','Restaurants/SpurLog.jpg','~/Restaurants/SpurLoc.JPG','https://www.spur.co.za/restaurant/f','Mandela Dr, Shop 8, Highveld Mall'),('r15','Wimpy','0136974466','eMalahleni','Restaurants/WimpyLog.jpg','~/Restaurants/WimpyLoc.JPG','http://www.wimpy.co.za/','Shop 54A, Highveld Mall, Mandela St');

/*Table structure for table `tblreview` */

DROP TABLE IF EXISTS `tblreview`;

CREATE TABLE `tblreview` (
  `Review_No` int(6) NOT NULL AUTO_INCREMENT,
  `Review_Content` varchar(500) DEFAULT NULL,
  `Review_Date` varchar(20) DEFAULT NULL,
  `Review_Response` varchar(500) DEFAULT NULL,
  `Response_Date` varchar(20) DEFAULT NULL,
  `Res_Code` varchar(6) DEFAULT NULL,
  `Cr_No` int(6) NOT NULL,
  `rat_code` int(5) DEFAULT NULL,
  `serviceID` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`Review_No`),
  KEY `FK_tblreview` (`Res_Code`),
  KEY `FK_tblreview_critic` (`Cr_No`),
  KEY `FK_tblreview_rat` (`rat_code`),
  KEY `FK_tblreview_serv` (`serviceID`),
  CONSTRAINT `FK_tblreview_serv` FOREIGN KEY (`serviceID`) REFERENCES `tblservice` (`serviceID`),
  CONSTRAINT `FK_tblreview` FOREIGN KEY (`Res_Code`) REFERENCES `tblrestaurant` (`Res_Code`),
  CONSTRAINT `FK_tblreview_critic` FOREIGN KEY (`Cr_No`) REFERENCES `tblfoodcritic` (`Cr_No`),
  CONSTRAINT `FK_tblreview_rat` FOREIGN KEY (`rat_code`) REFERENCES `tblrating` (`rat_code`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

/*Data for the table `tblreview` */

insert  into `tblreview`(`Review_No`,`Review_Content`,`Review_Date`,`Review_Response`,`Response_Date`,`Res_Code`,`Cr_No`,`rat_code`,`serviceID`) values (8,'fghjjk','0000-00-00',NULL,NULL,'r07',7,3,'S1'),(9,'The experience was quite nuce','0000-00-00',NULL,NULL,'r04',7,4,'S2'),(10,'The experience was quite nice','0000-00-00',NULL,NULL,'r04',7,4,'S3'),(11,'','0000-00-00',NULL,NULL,'r09',7,4,'S4'),(12,'Was good but could be much better','5/30/2017',NULL,NULL,'r05',7,3,'S4'),(13,'Perfection','5/30/2017',NULL,NULL,'r13',7,5,'S2'),(14,'I would say good stuff about Rapsody but the staff was just so rude to me, so nah bad bad bad!!!','6/11/2017',NULL,NULL,'r13',7,1,'S1'),(15,'I would say good stuff about Rapsody but the staff was just so rude to me, so nah bad bad bad!!!','6/11/2017',NULL,NULL,'r13',7,1,'S1'),(16,'Bad experience','5/31/2017',NULL,NULL,'r11',7,4,'S2'),(17,'Quite good I think','6/7/2017',NULL,NULL,'r14',7,5,'S3'),(18,'The experience was quite bad man','6/21/2017',NULL,NULL,'r13',7,2,'S3'),(19,'The stuff is just rude man','6/7/2017',NULL,NULL,'r13',7,2,'S4'),(20,'The food was excelent and the service more so.','6/1/2017',NULL,NULL,'r01',7,5,'S2'),(21,'Worst experience of my life.','5/28/2017',NULL,NULL,'r08',7,1,'S1'),(22,'Wont recommend.','5/28/2017',NULL,NULL,'r11',7,2,'S4'),(23,'Most adorable cats around the place and food was great.','5/28/2017',NULL,NULL,'r15',7,4,'S4'),(24,'Pest problem dont go.','5/8/2017',NULL,NULL,'r15',7,2,'S3'),(25,'the food was perfectly cooked. its only a bit loud in the bar.','5/26/2017',NULL,NULL,'r01',7,3,'S2'),(26,'The bar has to many drunks.','5/26/2017',NULL,NULL,'r01',7,2,'S1'),(27,'What a place astounding not to say the least.','5/26/2017',NULL,NULL,'r02',7,5,'S4'),(28,'Cant complain about a thing.','5/26/2017',NULL,NULL,'r02',7,4,'S3'),(29,'Best sushi an such value for money.','5/8/2017',NULL,NULL,'r09',7,5,'S2'),(30,'Good one','6/12/2017',NULL,NULL,'r07',7,4,'S1');

/*Table structure for table `tblservice` */

DROP TABLE IF EXISTS `tblservice`;

CREATE TABLE `tblservice` (
  `serviceID` varchar(3) NOT NULL,
  `serviceType` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`serviceID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tblservice` */

insert  into `tblservice`(`serviceID`,`serviceType`) values ('S1','Staff'),('S2','Food'),('S3','Price'),('S4','Environment');

/* Procedure structure for procedure `DeleteAvert` */

/*!50003 DROP PROCEDURE IF EXISTS  `DeleteAvert` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `DeleteAvert`(IN p_ad_AdvertID INT)
BEGIN
 delete from tbladvertisement where ad_AdvertID=p_ad_AdvertID;
 END */$$
DELIMITER ;

/* Procedure structure for procedure `Login` */

/*!50003 DROP PROCEDURE IF EXISTS  `Login` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Login`(in pEmail varchar(30),in pPasword varchar(15))
BEGIN
 select Cr_emailAddr,Cr_Password
 from tblfoodcritic
 where Cr_emailAddr=pEmail
 and Cr_Password=pPassword;
 END */$$
DELIMITER ;

/* Procedure structure for procedure `MakeAdvertisement` */

/*!50003 DROP PROCEDURE IF EXISTS  `MakeAdvertisement` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `MakeAdvertisement`(IN p_Res_Code varchar(6), IN p_feeNo int(1), IN p_star_date varchar(50), IN p_end_date varchar(50),IN p_special_description varchar(200))
BEGIN
 INSERT INTO tbladvertisement(Res_Code,Fee_Num,star_date,end_date,Addvert_link)
 VALUES(p_Res_Code,p_feeNo,p_star_date,p_end_date,p_special_description);
 END */$$
DELIMITER ;

/* Procedure structure for procedure `Register` */

/*!50003 DROP PROCEDURE IF EXISTS  `Register` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `Register`(in pName Varchar(25),in pCell varchar(10),in pEmail varchar(30), in pPassword varchar(15) )
BEGIN
 insert into tblfoodcritic(Cr_Name,Cr_CellNo,Cr_emailAddr,Cr_Password) value(Cr_Name=pName,Cr_CellNo=pCell,Cr_emailAddr=pEmail,Cr_Password=pPassword); 
 END */$$
DELIMITER ;

/* Procedure structure for procedure `ResAdverts` */

/*!50003 DROP PROCEDURE IF EXISTS  `ResAdverts` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `ResAdverts`(
 IN p_Res_Code 		VARCHAR(6)
 )
BEGIN
 SELECT Res_Name, star_date, end_date, Addvert_link, Res_Address, Res_Web
 FROM tbladvertisement a, tblrestaurant r
 WHERE a.Res_Code = r.Res_Code 
 AND r.Res_code = p_Res_Code; 
 END */$$
DELIMITER ;

/* Procedure structure for procedure `SelectAdvert` */

/*!50003 DROP PROCEDURE IF EXISTS  `SelectAdvert` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `SelectAdvert`(IN p_resCode varchar(6) )
BEGIN
 select ad_AdvertID,Addvert_link 
 from tbladvertisement
 WHERE Res_Code = p_resCode;
 END */$$
DELIMITER ;

/* Procedure structure for procedure `test` */

/*!50003 DROP PROCEDURE IF EXISTS  `test` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `test`()
BEGIN
 END */$$
DELIMITER ;

/* Procedure structure for procedure `UpdateAdvert` */

/*!50003 DROP PROCEDURE IF EXISTS  `UpdateAdvert` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`root`@`localhost` PROCEDURE `UpdateAdvert`(IN p_Res_Code VARCHAR(6), IN p_star_date VARCHAR(50), IN p_end_date VARCHAR(50),IN p_special_description VARCHAR(200), IN p_ad_AdvertID INT)
BEGIN
 UPDATE  tbladvertisement SET Res_Code=p_Res_Code,star_date=p_star_date,end_date=p_end_date,Addvert_link=p_special_description
 WHERE ad_AdvertID=p_ad_AdvertID;
 END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
