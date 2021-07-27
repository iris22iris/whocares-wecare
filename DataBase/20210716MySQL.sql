/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 8.0.15 : Database - whocaresdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`whocaresdb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;

USE `whocaresdb`;

/*Table structure for table `buyitem` */

DROP TABLE IF EXISTS `buyitem`;

CREATE TABLE `buyitem` (
  `TITLE` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ORDID` int(11) unsigned zerofill DEFAULT NULL,
  `PRODITEMID` int(11) DEFAULT NULL,
  `PRODUCTTYPE` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `PRODID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `PRODNAME` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `PRODPRICE` decimal(10,1) DEFAULT NULL,
  `PRODQTY` decimal(8,0) DEFAULT NULL,
  `PRODSINGLEPRICE` decimal(10,1) DEFAULT NULL,
  `DISCOUNT` decimal(10,1) DEFAULT NULL,
  `ORDTOT` decimal(10,0) DEFAULT NULL,
  `ORDERDATE` datetime DEFAULT NULL,
  `NAME` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `CUSTID` int(11) DEFAULT NULL,
  KEY `ITEM_PRODID_FY` (`PRODID`),
  KEY `PRODITEMID` (`PRODITEMID`),
  KEY `BUYITEM_CUSTID_FK` (`CUSTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `buyitem` */

insert  into `buyitem`(`TITLE`,`ORDID`,`PRODITEMID`,`PRODUCTTYPE`,`PRODID`,`PRODNAME`,`PRODPRICE`,`PRODQTY`,`PRODSINGLEPRICE`,`DISCOUNT`,`ORDTOT`,`ORDERDATE`,`NAME`,`CUSTID`) values 
('B',00000000001,1,'A','A0001','照護型照護型自推輪自推輪',13000.0,1,13000.0,1.0,13000,'2021-07-01 21:54:03','史馬遷',103),
('B',00000000002,1,'A','A0002','鋁合金自推輪',12000.0,1,10800.0,0.9,15282,'2021-07-01 21:56:35','李卿照',104),
('B',00000000002,2,'H','H0001','德國原裝進口專業血糖機',2490.0,2,4482.0,0.9,15282,'2021-07-01 22:00:08','李卿照',104),
('B',00000000005,1,'C','C0006','鋁合金醫療用腋下拐杖',1300.0,2,1820.0,0.7,1820,'2021-07-01 22:19:02','朱厚照',105);

/*Table structure for table `comment` */

DROP TABLE IF EXISTS `comment`;

CREATE TABLE `comment` (
  `PRODID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `PRODNAME` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ASSCUSTID` int(11) DEFAULT NULL,
  `ASSFRACTION` decimal(4,1) DEFAULT NULL,
  `VISITS` decimal(14,0) DEFAULT NULL,
  `ASSCONTENT` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  KEY `ASSESS_ASSCUSTID_FK` (`ASSCUSTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `comment` */

insert  into `comment`(`PRODID`,`PRODNAME`,`ASSCUSTID`,`ASSFRACTION`,`VISITS`,`ASSCONTENT`) values 
('A0001','照護型自推輪',105,100.0,12,NULL),
('B0001','助行助步車休閒款',104,100.0,12,'很棒'),
('D0001','機械式助步器',105,90.0,12,'有了這個大好山水任我遨遊'),
('F0004','居家照顧電動床架',104,80.0,12,NULL),
('G0001','單側門檻式斜坡板',106,100.0,12,'太棒了,自己在家打早無障礙空間'),
('H0001','德國原裝進口專業血糖機',106,98.5,22,'有了這個可以幫自己做健康檢測,但是包裝有點壓壞了,美中不足'),
('H0001','德國原裝進口專業血糖機',101,100.0,22,''),
('H0002','醫用級電子血壓計',102,100.0,22,'聽友人介紹買了一台,很不錯'),
('A0001','照護型自推輪',103,100.0,22,'快速又方便'),
('D0001','機械式助步器',103,100.0,22,'妙哉妙哉二老高堂喜歡的不得了'),
('100051','介護型股煞休閒輪椅',107,100.0,22,'覺得不錯,難怪各大貴人都推薦'),
('400011','機械式助步器',108,100.0,22,'租來讓媽媽短時間使用,覺得保養很好,完全部會卡卡的。打算直接購買。'),
('600031','居家等級護理床墊',109,100.0,22,'雖然是租用二手物品,但物美價廉,可以看出有用心清理床墊,爸爸說躺的很舒適。'),
('700011','單側門檻式斜坡板',110,100.0,22,'老年中風,想自己在家裡打造無障礙空間,先租來用用看,覺得品質好,之後打算直接購買。'),
('800021','醫用級電子血壓計',105,100.0,22,'市面上太多血壓計,還好這裡可以先租用,在家使用覺得很可以,決定推薦大家直接購買。');

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `CUSTID` int(11) DEFAULT NULL,
  `ACCOUNT` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `PASSWORD` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `NAME` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `NICKNAME` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ID` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `BIRTHDAY` datetime DEFAULT NULL,
  `PHONE` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `CITY` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ADDRESS` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `EMAIL` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `CUSTOMERIMAGE` longblob,
  `FILENAME` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `MINETYPE` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `customer` */

insert  into `customer`(`CUSTID`,`ACCOUNT`,`PASSWORD`,`NAME`,`NICKNAME`,`ID`,`BIRTHDAY`,`PHONE`,`CITY`,`ADDRESS`,`EMAIL`,`CUSTOMERIMAGE`,`FILENAME`,`MINETYPE`) values 
(101,'sa00002','pa00002','杜睦','牧哥','Q111111111','1996-04-01 00:00:00','0965741358','台北','台北市大安區中正東路659號','sa2222222@gmail.com',NULL,'101.jpg',NULL),
(102,'sa00003','pa00003','白居易','白鴿','Q123654789','1996-04-01 00:00:00','0965321987','彰化','彰化縣二水區忠孝西路568號','easylivegood@gmail.com',NULL,'102.jpg',NULL),
(103,'aa00004','pp00004','史馬遷','司馬','E123659487','1996-04-01 00:00:00','0996325841','南投','南投縣埔里區建功街92巷4號-1','historymylove@yahoo.com.tw',NULL,'103.jpg',NULL),
(104,'aa00005','pa00005','李卿照','知否妹','S245698763','1996-04-01 00:00:00','0965478236','新北','新北市新莊區中華一路3段5號','youknowyouknow@gmail.com',NULL,'104.jpg',NULL),
(105,'aa00006','pv00006','朱後照','厚片','S125874642','1996-04-01 00:00:00','0954869213','新北','新北市五股區頭前路56號7巷-2','jfiel@yahoo.com.tw',NULL,'105.jpg',NULL),
(106,'sa00001','pa00001','愛新覺羅弘荔','荔枝','S136547528','1996-04-01 00:00:00','0926659875','高雄','高雄市三民區大安溪路593號','sa1111111@yahoo.com.tw',NULL,'106.jpg',NULL),
(107,'aa56565','ad56565','李後囑','李弟','A123456789','1996-04-01 00:00:00','0977777777','雲林','雲林虎尾區大安溪路36號','ad7777777@gmail.com',NULL,'107.jpg',NULL),
(108,'aa76767','ad76767','武責天','武姐','Q123456789','1996-04-01 00:00:00','0986868686','宜蘭','宜蘭礁溪吳沙紀念館','fiveday@gmail.com',NULL,'108.jpg',NULL),
(109,'dd86868','ad86868','曹阿瞞','曹兄','F123654987','1996-04-01 00:00:00','0986878521','屏東','屏東高商','satry@gmail.com',NULL,'109.jpg',NULL),
(110,'qj12123','aa12123','仲謀','孫大哥','G165479358','1996-04-01 00:00:00','0985236945','台南','台南安平區延平郡王路25號','eastking@gmail.com',NULL,'110.jpg',NULL);

/*Table structure for table `discount` */

DROP TABLE IF EXISTS `discount`;

CREATE TABLE `discount` (
  `DISCOUNTID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `DISCOUNTTYPE` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `discount` */

insert  into `discount`(`DISCOUNTID`,`DISCOUNTTYPE`) values 
('D07','七折優惠'),
('D09','九折優惠');

/*Table structure for table `ord` */

DROP TABLE IF EXISTS `ord`;

CREATE TABLE `ord` (
  `TITLE` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ORDID` int(11) unsigned zerofill DEFAULT NULL,
  `ORDERDATE` datetime DEFAULT NULL,
  `CUSTID` int(11) DEFAULT NULL,
  `NAME` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `RECINAME` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `RECICITY` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `RECIADDRESS` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `RECIPHONE` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ORDTOT` decimal(10,0) DEFAULT NULL,
  `DISCOUNTTYPE` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `PAYMENT` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `CARRIAGE` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `DISCOUNTID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT 'NULL',
  `SHIPDATE` datetime DEFAULT NULL,
  `ORDREMARK` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  KEY `ORD_CUSTID_FK` (`CUSTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ord` */

insert  into `ord`(`TITLE`,`ORDID`,`ORDERDATE`,`CUSTID`,`NAME`,`RECINAME`,`RECICITY`,`RECIADDRESS`,`RECIPHONE`,`ORDTOT`,`DISCOUNTTYPE`,`PAYMENT`,`CARRIAGE`,`DISCOUNTID`,`SHIPDATE`,`ORDREMARK`) values 
('B',00000000001,'2021-07-01 00:35:31',103,'史馬遷','趙框框','台北','台北市新莊區化成路10號','0986547214',13000,NULL,'線上刷卡','宅配',NULL,'2021-07-07 21:34:28','下午不在家'),
('B',00000000002,'2021-07-01 00:36:11',104,'李卿照','李卿照','新北','新北市新莊區中華一路3段5號','0965478236',15282,'優惠券','線上刷卡','宅配','D09','2021-07-07 21:34:37',NULL),
('R',00000000001,'2021-07-01 01:21:48',104,'李卿照','李卿照','新北','新北市新莊區中華一路3段5號','0965748236',540,NULL,'線上刷卡','宅配',NULL,'2021-07-07 21:34:41',NULL),
('R',00000000002,'2021-07-01 02:12:27',105,'朱後照','朱後照','新北','新北新北市五股區頭前路56號7巷-2','0954869213',1161,'優惠券','線上刷卡','宅配','D09','2021-07-07 21:36:25',NULL),
('B',00000000005,'2021-07-01 02:32:49',105,'朱後照','朱後照','新北','新北新北市五股區頭前路56號7巷-2','0954869213',1820,'優惠券','線上刷卡','宅配','D09','2021-07-07 21:36:30',NULL),
('R',00000000003,'2021-07-01 02:32:55',103,'史馬遷','史馬遷','南投','南投縣埔里區建功街92巷4號','0996325841',11497,'優惠券','貨到付款','宅配','D07','2021-07-07 21:36:34',NULL),
('R',00000000004,'2021-07-01 22:46:18',108,'武責天','武責天','宜蘭','宜蘭礁溪吳沙紀念館','0986868686',750,NULL,'線上刷卡','宅配',NULL,'2021-07-07 22:48:09',NULL),
(NULL,00100000020,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'NULL',NULL,NULL);

/*Table structure for table `proble` */

DROP TABLE IF EXISTS `proble`;

CREATE TABLE `proble` (
  `CUSTID` int(11) DEFAULT NULL,
  `TITLE` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ORDID` int(11) unsigned zerofill DEFAULT NULL,
  `EMAIL` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `PHONE` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `PROBLETYPE` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `PROBLE` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ORDTIME` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `proble` */

insert  into `proble`(`CUSTID`,`TITLE`,`ORDID`,`EMAIL`,`PHONE`,`PROBLETYPE`,`PROBLE`,`ORDTIME`) values 
(103,'R',00000000001,'historymylove@yahoo.com.tw','0996325841','RENT','請問租借也可以貨到付款嗎?',NULL),
(103,'B',00000000001,'historymylove@yahoo.com.tw','0996325841','BUY','請問產品有鑑賞期嗎',NULL);

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `CLASS` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `PRODID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `PRODNAME` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `PRICE` decimal(10,0) DEFAULT NULL,
  `COVERIMAGE` longblob,
  `MINETYPE` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `STOCK` int(11) DEFAULT NULL,
  `PRODUCTTYPE` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `FILENAME` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `product` */

insert  into `product`(`CLASS`,`PRODID`,`PRODNAME`,`PRICE`,`COVERIMAGE`,`MINETYPE`,`STOCK`,`PRODUCTTYPE`,`FILENAME`) values 
('B','10001','照護型照護型自推輪自推輪',13000,NULL,NULL,10,'A','10001'),
('B','10002','鋁合金自推輪',12000,NULL,NULL,10,'A','10002'),
('B','10003','簡易版自推輪',11000,NULL,NULL,10,'A','10003'),
('B','10004','經濟款機械式自推輪',4500,NULL,NULL,10,'A','10004'),
('B','10005','介護型股煞休閒輪椅',8500,NULL,NULL,10,'A','10005'),
('B','20001','助行助步車休閒款',6000,NULL,NULL,10,'B','20001'),
('B','30001','串手拐杖',200,NULL,NULL,10,'C','30001'),
('B','30002','兒童用醫療腋下拐杖',1000,NULL,NULL,10,'C','30002'),
('B','30003','鋁製四腳拐杖',750,NULL,NULL,10,'C','30003'),
('B','30004','可調整醫療用腋下拐杖',1000,NULL,NULL,10,'C','30004'),
('B','30005','輕量版醫療用腋下拐杖',1200,NULL,NULL,10,'C','30005'),
('B','30006','鋁合金醫療用腋下拐杖',1300,NULL,NULL,10,'C','30006'),
('B','30007','專業型醫療用腋下拐杖',1800,NULL,NULL,10,'C','30007'),
('B','40001','機械式助步器',1600,NULL,NULL,10,'D','40001'),
('B','40002','不鏽鋼老人助步器',1500,NULL,NULL,6,'D','40002'),
('B','50001','浴缸輔助扶手',7000,NULL,NULL,10,'E','50001'),
('B','50002','牆面如廁扶手',5000,NULL,NULL,10,'E','50002'),
('B','50003','專業型馬桶扶手',7200,NULL,NULL,10,'E','50003'),
('B','50004','沐浴躺椅',6500,NULL,NULL,10,'E','50004'),
('B','50005','洗澡椅',5000,NULL,NULL,10,'E','50005'),
('B','50006','可掀式洗澡椅',5000,NULL,NULL,10,'E','50006'),
('B','50007','一字型安全扶手',7500,NULL,NULL,10,'E','50007'),
('B','60001','三馬達電動型養護床',42000,NULL,NULL,10,'F','60001'),
('B','60002','醫療等級護理床墊',3000,NULL,NULL,10,'F','60002'),
('B','60003','居家等級護理床墊',2500,NULL,NULL,10,'F','60003'),
('B','60004','居家照顧電動床架',4000,NULL,NULL,10,'F','60004'),
('B','60005','居家照顧床開門式',45000,NULL,NULL,10,'F','60005'),
('B','70001','單側門檻式斜坡板',3000,NULL,NULL,10,'G','70001'),
('B','80001','德國原裝進口專業血糖機',2490,NULL,NULL,10,'H','80001'),
('B','80002','醫用級電子血壓計',1500,NULL,NULL,10,'H','80002');

/*Table structure for table `protype` */

DROP TABLE IF EXISTS `protype`;

CREATE TABLE `protype` (
  `PRODUCTTYPE` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `PRODNAME` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `protype` */

insert  into `protype`(`PRODUCTTYPE`,`PRODNAME`) values 
('A','輪椅'),
('B','助步車'),
('C','拐杖'),
('D','助步器'),
('E','衛浴輔助'),
('F','護理病床'),
('G','無障礙空間'),
('H','量測機器');

/*Table structure for table `rentitem` */

DROP TABLE IF EXISTS `rentitem`;

CREATE TABLE `rentitem` (
  `TITLE` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ORDID` int(11) unsigned zerofill DEFAULT NULL,
  `PRODITEMID` int(11) DEFAULT NULL,
  `PRODUCTTYPE` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `PRODID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `NUMBER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `PRODNAME` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `PRODPRICE` decimal(10,1) DEFAULT NULL,
  `DAY` decimal(8,0) DEFAULT NULL,
  `PRODQTY` decimal(8,0) DEFAULT NULL,
  `PRODSINGLEPRICE` decimal(10,1) DEFAULT NULL,
  `STARTDATE` datetime DEFAULT NULL,
  `RETURNDATE` datetime DEFAULT NULL,
  `DISCOUNT` decimal(10,1) DEFAULT NULL,
  `ORDTOT` decimal(10,0) DEFAULT NULL,
  `ORDERDATE` datetime DEFAULT NULL,
  `NAME` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `CUSTID` int(11) DEFAULT NULL,
  KEY `PRODITEMID` (`PRODITEMID`),
  KEY `RENTITEM_CUSTID_FK` (`CUSTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `rentitem` */

insert  into `rentitem`(`TITLE`,`ORDID`,`PRODITEMID`,`PRODUCTTYPE`,`PRODID`,`NUMBER`,`PRODNAME`,`PRODPRICE`,`DAY`,`PRODQTY`,`PRODSINGLEPRICE`,`STARTDATE`,`RETURNDATE`,`DISCOUNT`,`ORDTOT`,`ORDERDATE`,`NAME`,`CUSTID`) values 
('R',00000000003,1,'E','50004','1','沐浴躺椅',18.0,30,1,540.0,'2021-07-07 22:05:19','2021-08-05 22:05:47',1.0,540,'2021-07-01 22:05:14','李卿照',104),
('R',00000000004,1,'E','50004','2','沐浴躺椅',18.0,30,1,486.0,'2021-07-07 22:14:32','2021-08-05 22:14:36',0.9,1161,'2021-07-01 22:13:56','朱厚照',105),
('R',00000000004,2,'E','50007','1','一字型安全扶手',25.0,30,1,675.0,'2021-07-07 22:16:25','2021-08-05 22:16:29',0.9,1161,'2021-07-01 22:16:16','朱厚照',105),
('R',00000000006,1,'F','60004','1','居家照顧電動床架',45.0,365,1,11497.5,'2021-07-07 22:22:45','2022-07-06 22:22:50',0.7,11497,'2021-07-01 22:20:41','史馬遷',103),
('R',00000000007,1,'E','50007','2','一字型安全扶手',25.0,30,1,750.0,'2021-07-07 22:49:24','2021-08-05 22:49:32',1.0,750,'2021-07-01 22:49:45','武責天',108);

/*Table structure for table `rentproduct` */

DROP TABLE IF EXISTS `rentproduct`;

CREATE TABLE `rentproduct` (
  `CLASS` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `PRODID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `NUMBER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `PRODNAME` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `PRICE` decimal(10,0) DEFAULT NULL,
  `COVERIMAGE` longblob,
  `MINETYPE` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `STOCK` int(11) DEFAULT NULL,
  `PRODUCTTYPE` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `FILENAME` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `rentproduct` */

insert  into `rentproduct`(`CLASS`,`PRODID`,`NUMBER`,`PRODNAME`,`PRICE`,`COVERIMAGE`,`MINETYPE`,`STOCK`,`PRODUCTTYPE`,`FILENAME`) values 
('R','10001','1','照護型照護型自推輪自推輪',40,NULL,NULL,1,'A',NULL),
('R','10001','2','照護型照護型自推輪自推輪',40,NULL,NULL,1,'A',NULL),
('R','10002','1','鋁合金自推輪',35,NULL,NULL,1,'A',NULL),
('R','10002','2','鋁合金自推輪',35,NULL,NULL,1,'A',NULL),
('R','10003','1','簡易版自推輪',30,NULL,NULL,1,'A',NULL),
('R','10003','2','簡易版自推輪',30,NULL,NULL,1,'A',NULL),
('R','10004','1','經濟款機械式自推輪',25,NULL,NULL,1,'A',NULL),
('R','10004','2','經濟款機械式自推輪',25,NULL,NULL,1,'A',NULL),
('R','10005','1','介護型股煞休閒輪椅',25,NULL,NULL,1,'A',NULL),
('R','10005','2','介護型股煞休閒輪椅',25,NULL,NULL,1,'A',NULL),
('R','20001','1','助行助步車休閒款',20,NULL,NULL,1,'B',NULL),
('R','20001','2','助行助步車休閒款',20,NULL,NULL,1,'B',NULL),
('R','30001','1','串手拐杖',5,NULL,NULL,1,'C',NULL),
('R','30001','2','串手拐杖',5,NULL,NULL,1,'C',NULL),
('R','30002','1','兒童用醫療腋下拐杖',10,NULL,NULL,1,'C',NULL),
('R','30002','2','兒童用醫療腋下拐杖',10,NULL,NULL,1,'C',NULL),
('R','30003','1','鋁製四腳拐杖',10,NULL,NULL,1,'C',NULL),
('R','30003','2','鋁製四腳拐杖',10,NULL,NULL,1,'C',NULL),
('R','30004','1','可調整醫療用腋下拐杖',10,NULL,NULL,1,'C',NULL),
('R','30004','2','可調整醫療用腋下拐杖',10,NULL,NULL,1,'C',NULL),
('R','30005','1','輕量版醫療用腋下拐杖',15,NULL,NULL,1,'C',NULL),
('R','30005','2','輕量版醫療用腋下拐杖',15,NULL,NULL,1,'C',NULL),
('R','30006','1','鋁合金醫療用腋下拐杖',15,NULL,NULL,1,'C',NULL),
('R','30006','2','鋁合金醫療用腋下拐杖',15,NULL,NULL,1,'C',NULL),
('R','30007','1','專業型醫療用腋下拐杖',25,NULL,NULL,1,'C',NULL),
('R','30007','2','專業型醫療用腋下拐杖',25,NULL,NULL,1,'C',NULL),
('R','40001','1','機械式助步器',5,NULL,NULL,1,'D',NULL),
('R','40001','2','機械式助步器',5,NULL,NULL,1,'D',NULL),
('R','40002','1','不鏽鋼老人助步器',5,NULL,NULL,1,'D',NULL),
('R','40002','2','不鏽鋼老人助步器',5,NULL,NULL,1,'D',NULL),
('R','50001','1','浴缸輔助扶手',15,NULL,NULL,1,'E',NULL),
('R','50001','2','浴缸輔助扶手',15,NULL,NULL,1,'E',NULL),
('R','50002','1','牆面如廁扶手',15,NULL,NULL,1,'E',NULL),
('R','50002','2','牆面如廁扶手',15,NULL,NULL,1,'E',NULL),
('R','50003','1','專業型馬桶扶手',20,NULL,NULL,1,'E',NULL),
('R','50003','2','專業型馬桶扶手',20,NULL,NULL,1,'E',NULL),
('R','50004','1','沐浴躺椅',18,NULL,NULL,0,'E',NULL),
('R','50004','2','沐浴躺椅',18,NULL,NULL,0,'E',NULL),
('R','50005','1','洗澡椅',15,NULL,NULL,1,'E',NULL),
('R','50005','2','洗澡椅',15,NULL,NULL,1,'E',NULL),
('R','50006','1','可掀式洗澡椅',15,NULL,NULL,1,'E',NULL),
('R','50006','2','可掀式洗澡椅',15,NULL,NULL,1,'E',NULL),
('R','50007','1','一字型安全扶手',25,NULL,NULL,0,'E',NULL),
('R','50007','2','一字型安全扶手',25,NULL,NULL,0,'E',NULL),
('R','60001','1','三馬達電動型養護床',100,NULL,NULL,1,'F',NULL),
('R','60001','2','三馬達電動型養護床',100,NULL,NULL,1,'F',NULL),
('R','60002','1','醫療等級護理床墊',20,NULL,NULL,1,'F',NULL),
('R','60002','2','醫療等級護理床墊',20,NULL,NULL,1,'F',NULL),
('R','60003','1','居家等級護理床墊',30,NULL,NULL,1,'F',NULL),
('R','60003','2','居家等級護理床墊',30,NULL,NULL,1,'F',NULL),
('R','60004','1','居家照顧電動床架',45,NULL,NULL,0,'F',NULL),
('R','60004','2','居家照顧電動床架',45,NULL,NULL,1,'F',NULL),
('R','60005','1','居家照顧床開門式',100,NULL,NULL,1,'F',NULL),
('R','60005','2','居家照顧床開門式',100,NULL,NULL,1,'F',NULL),
('R','70001','1','單側門檻式斜坡板',5,NULL,NULL,1,'G',NULL),
('R','70001','2','單側門檻式斜坡板',5,NULL,NULL,1,'G',NULL),
('R','80001','1','德國原裝進口專業血糖機',10,NULL,NULL,1,'H',NULL),
('R','80001','2','德國原裝進口專業血糖機',10,NULL,NULL,1,'H',NULL),
('R','80002','1','醫用級電子血壓計',10,NULL,NULL,1,'H',NULL),
('R','80002','2','醫用級電子血壓計',10,NULL,NULL,1,'H',NULL);

/*Table structure for table `reserve` */

DROP TABLE IF EXISTS `reserve`;

CREATE TABLE `reserve` (
  `TITLE` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `RESERVEID` int(10) unsigned zerofill DEFAULT NULL,
  `WAITNUMBER` int(11) DEFAULT NULL,
  `CLASS` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `PRODID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `NUMBER` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `PRODNAME` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `WAITTYPE` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `RESERVEDATE` datetime DEFAULT NULL,
  `NAME` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `CUSTID` int(11) DEFAULT NULL,
  KEY `RESERVEID` (`RESERVEID`),
  KEY `RESERVE_CUSTID_FK` (`CUSTID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `reserve` */

insert  into `reserve`(`TITLE`,`RESERVEID`,`WAITNUMBER`,`CLASS`,`PRODID`,`NUMBER`,`PRODNAME`,`WAITTYPE`,`RESERVEDATE`,`NAME`,`CUSTID`) values 
('S',0000000001,2,'R','50004','1','沐浴躺椅','等待人數:1','2021-07-02 22:41:33','李後囑',107),
('S',0000000002,2,'R','50004','1','沐浴躺椅','等待人數:1','2021-07-03 22:43:43','杜睦',101),
('S',0000000003,2,'R','50007','1','一字型安全扶手','等待人數:1','2021-07-03 22:45:31','杜睦',101),
('S',0000000004,2,'R','50007','2','一字型安全扶手','等待人數:1','2021-07-03 22:51:18','仲謀',110),
('S',0000000005,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
