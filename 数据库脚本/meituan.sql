/*
SQLyog Ultimate v12.3.1 (64 bit)
MySQL - 5.5.27 : Database - meituan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`meituan` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `meituan`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `Address_ID` INT(8) NOT NULL AUTO_INCREMENT COMMENT '地址ID',
  `Customer_ID` INT(16) DEFAULT NULL COMMENT '顾客ID',
  `Address_Name` VARCHAR(64) DEFAULT NULL COMMENT '地址',
  `Buyer_Name` VARCHAR(16) DEFAULT NULL COMMENT '姓名',
  `Buyer_Sex` VARCHAR(4) DEFAULT NULL COMMENT '性别',
  `Buyer_Phone` VARCHAR(11) DEFAULT NULL COMMENT '电话',
  `Note` TEXT COMMENT '备注',
  PRIMARY KEY (`Address_ID`),
  KEY `address_customer_fk` (`Customer_ID`),
  CONSTRAINT `address_customer_fk` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=INNODB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Table structure for table `collection` */

DROP TABLE IF EXISTS `collection`;

CREATE TABLE `collection` (
  `Collection_ID` INT(4) NOT NULL AUTO_INCREMENT COMMENT '收藏ID',
  `Customer_ID` INT(16) DEFAULT NULL COMMENT '顾客ID',
  `Shop_ID` INT(12) DEFAULT NULL COMMENT '店铺ID',
  PRIMARY KEY (`Collection_ID`),
  KEY `collection_customer_fk` (`Customer_ID`),
  KEY `collection_shop_fk` (`Shop_ID`),
  CONSTRAINT `collection_customer_fk` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `collection_shop_fk` FOREIGN KEY (`Shop_ID`) REFERENCES `shop` (`Shop_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=INNODB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `Customer_ID` INT(16) NOT NULL AUTO_INCREMENT COMMENT '账号ID',
  `Customer_Name` VARCHAR(16) DEFAULT NULL COMMENT '账号名',
  `Customer_Psw` VARCHAR(16) DEFAULT NULL COMMENT '账号密码',
  `Customer_Phone` VARCHAR(11) DEFAULT NULL COMMENT '手机号码',
  PRIMARY KEY (`Customer_ID`)
) ENGINE=INNODB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Table structure for table `detail` */

DROP TABLE IF EXISTS `detail`;

CREATE TABLE `detail` (
  `Detail_ID` INT(8) NOT NULL AUTO_INCREMENT,
  `Order_ID` INT(12) DEFAULT NULL,
  `Goods_Name` VARCHAR(16) DEFAULT NULL,
  `Buy_Number` INT(4) DEFAULT '0',
  `Goods_Sum` DOUBLE DEFAULT '0',
  PRIMARY KEY (`Detail_ID`),
  KEY `order_detail_fk` (`Order_ID`),
  CONSTRAINT `order_detail_fk` FOREIGN KEY (`Order_ID`) REFERENCES `order` (`Order_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `goods` */

DROP TABLE IF EXISTS `goods`;

CREATE TABLE `goods` (
  `Goods_ID` INT(16) NOT NULL AUTO_INCREMENT COMMENT '商品ID',
  `Goods_Type_ID` INT(8) DEFAULT NULL COMMENT '商品类别ID',
  `Goods_Name` VARCHAR(16) DEFAULT NULL COMMENT '商品名',
  `Goods_Pic` MEDIUMBLOB COMMENT '商品图',
  `Goods_Price` DOUBLE DEFAULT NULL COMMENT '价格',
  `Goods_Month_Sale` INT(8) DEFAULT NULL COMMENT '本月累计销量',
  `Goods_LastMonth_Sale` INT(8) DEFAULT NULL COMMENT '上个月销量',
  PRIMARY KEY (`Goods_ID`),
  KEY `goods_goods_type_fk` (`Goods_Type_ID`),
  CONSTRAINT `goods_goods_type_fk` FOREIGN KEY (`Goods_Type_ID`) REFERENCES `goods_type` (`Goods_Type_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `goods_type` */

DROP TABLE IF EXISTS `goods_type`;

CREATE TABLE `goods_type` (
  `Goods_Type_ID` INT(8) NOT NULL AUTO_INCREMENT COMMENT '商品类别ID',
  `Shop_ID` INT(12) DEFAULT NULL COMMENT '店铺ID',
  `Goods_Type_Name` VARCHAR(8) DEFAULT NULL COMMENT '类别名',
  PRIMARY KEY (`Goods_Type_ID`),
  KEY `goods_type_shop_fk` (`Shop_ID`),
  CONSTRAINT `goods_type_shop_fk` FOREIGN KEY (`Shop_ID`) REFERENCES `shop` (`Shop_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*Table structure for table `order` */

DROP TABLE IF EXISTS `order`;

CREATE TABLE `order` (
  `Order_ID` INT(12) NOT NULL AUTO_INCREMENT COMMENT '订单号(ID)',
  `Order_Time` DATE DEFAULT NULL COMMENT '下单时间',
  `Order_Amount` DOUBLE DEFAULT NULL COMMENT '支付金额',
  `Update_Time` DATE DEFAULT NULL COMMENT '更新时间',
  `Order_Status` VARCHAR(8) DEFAULT NULL COMMENT '订单状态(待付款、待接单、待配送、完成、退单)',
  `Address_ID` INT(8) DEFAULT NULL,
  `Seller_ID` INT(12) DEFAULT NULL,
  `Customer_ID` INT(16) DEFAULT NULL,
  PRIMARY KEY (`Order_ID`),
  KEY `order_address_fk` (`Address_ID`),
  KEY `order_seller_fk` (`Seller_ID`),
  KEY `order_customer_fk` (`Customer_ID`),
  CONSTRAINT `order_address_fk` FOREIGN KEY (`Address_ID`) REFERENCES `address` (`Address_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `order_seller_fk` FOREIGN KEY (`Seller_ID`) REFERENCES `seller` (`Seller_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `order_customer_fk` FOREIGN KEY (`Customer_ID`) REFERENCES `customer` (`Customer_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=INNODB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Table structure for table `seller` */

DROP TABLE IF EXISTS `seller`;

CREATE TABLE `seller` (
  `Seller_ID` INT(12) NOT NULL AUTO_INCREMENT COMMENT '账号ID',
  `Seller_Name` VARCHAR(16) DEFAULT NULL COMMENT '账号名',
  `Seller_Psw` VARCHAR(16) DEFAULT NULL COMMENT '账号密码',
  `Seller_Phone` VARCHAR(11) DEFAULT NULL COMMENT '手机号码',
  PRIMARY KEY (`Seller_ID`)
) ENGINE=INNODB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Table structure for table `shop` */

DROP TABLE IF EXISTS `shop`;

CREATE TABLE `shop` (
  `Shop_ID` INT(12) NOT NULL AUTO_INCREMENT COMMENT '店铺ID',
  `Seller_ID` INT(12) DEFAULT NULL COMMENT '商家ID',
  `Shop_Pic` MEDIUMBLOB COMMENT '店面图',
  `Shop_name` VARCHAR(16) DEFAULT NULL COMMENT '店名',
  `Shop_Type` VARCHAR(8) DEFAULT NULL COMMENT '店铺类型',
  `Shop_Status` VARCHAR(8) DEFAULT NULL COMMENT '店铺状态(没开店、审核中、待开店、休息中、营业中、接受预订)',
  `Business_Hours_Start` VARCHAR(12) DEFAULT NULL COMMENT '开始营业时间',
  `Business_Hours_End` VARCHAR(12) DEFAULT NULL COMMENT '结束营业时间',
  `Shop_Address` VARCHAR(64) DEFAULT NULL COMMENT '店铺地址',
  `Shop_Phone` VARCHAR(16) DEFAULT NULL COMMENT '店铺电话',
  `Start_Price` DOUBLE DEFAULT NULL COMMENT '起送价',
  `Send_Price` DOUBLE DEFAULT NULL COMMENT '配送价',
  `Month_Sale` INT(8) DEFAULT NULL COMMENT '月销量',
  `Shop_Auto_Switch` INT(1) DEFAULT NULL COMMENT '自动开店设置的状态(开/关)',
  PRIMARY KEY (`Shop_ID`),
  KEY `shop_seller_fk` (`Seller_ID`),
  CONSTRAINT `shop_seller_fk` FOREIGN KEY (`Seller_ID`) REFERENCES `seller` (`Seller_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=INNODB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

/*Table structure for table `shop_sale` */

DROP TABLE IF EXISTS `shop_sale`;

CREATE TABLE `shop_sale` (
  `Sale_ID` INT(16) NOT NULL AUTO_INCREMENT,
  `Shop_ID` INT(12) DEFAULT NULL,
  `Statistic_Time` DATE DEFAULT NULL,
  `Shop_Month_Sale` INT(8) DEFAULT NULL,
  `Hot_Sale_Name` VARCHAR(16) DEFAULT NULL,
  `Hot_Sale_Month` INT(8) DEFAULT NULL,
  PRIMARY KEY (`Sale_ID`),
  KEY `shop_sale_shop_fk` (`Shop_ID`),
  CONSTRAINT `shop_sale_shop_fk` FOREIGN KEY (`Shop_ID`) REFERENCES `shop` (`Shop_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=INNODB DEFAULT CHARSET=utf8;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
