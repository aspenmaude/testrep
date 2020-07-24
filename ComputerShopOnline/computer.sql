-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.5.4-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for computer
CREATE DATABASE IF NOT EXISTS `computer` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `computer`;

-- Dumping structure for table computer.category
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table computer.category: ~5 rows (approximately)
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`id`, `CategoryName`) VALUES
	(1, 'thinkpad'),
	(2, 'HP'),
	(3, 'DELL'),
	(4, 'ASUS'),
	(5, 'MacBook');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;

-- Dumping structure for table computer.customer
CREATE TABLE IF NOT EXISTS `customer` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_user` int(10) DEFAULT 0,
  `name` varchar(50) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `sdt` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_customer_user` (`id_user`),
  CONSTRAINT `FK_customer_user` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table computer.customer: ~3 rows (approximately)
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` (`id`, `id_user`, `name`, `address`, `sdt`) VALUES
	(1, 2, 'nghia', 'HCM', '000777'),
	(2, 3, 'Minh', 'Đà Nẵng', '000999'),
	(3, 4, 'V.Anh', 'Hà Nội', '000888');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;

-- Dumping structure for table computer.order
CREATE TABLE IF NOT EXISTS `order` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_name` int(10) DEFAULT NULL,
  `id_product` int(10) DEFAULT NULL,
  `OrderName` varchar(50) DEFAULT NULL,
  `OrderDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_order_customer` (`id_name`),
  KEY `FK_order_product` (`id_product`),
  CONSTRAINT `FK_order_customer` FOREIGN KEY (`id_name`) REFERENCES `customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_order_product` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table computer.order: ~3 rows (approximately)
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` (`id`, `id_name`, `id_product`, `OrderName`, `OrderDate`) VALUES
	(1, 2, 4, 'order01', '2020-07-24 08:49:31'),
	(2, 3, 5, 'order02', '2020-07-20 09:50:09'),
	(3, 1, 1, 'order03', '2020-07-22 10:50:44');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;

-- Dumping structure for table computer.order_detail
CREATE TABLE IF NOT EXISTS `order_detail` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_order` int(10) DEFAULT NULL,
  `id_product` int(10) DEFAULT NULL,
  `UnitPrice` int(10) DEFAULT NULL,
  `Quantity` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_order_detail_order` (`id_order`),
  KEY `FK_order_detail_product` (`id_product`),
  CONSTRAINT `FK_order_detail_order` FOREIGN KEY (`id_order`) REFERENCES `order` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_order_detail_product` FOREIGN KEY (`id_product`) REFERENCES `product` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table computer.order_detail: ~3 rows (approximately)
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` (`id`, `id_order`, `id_product`, `UnitPrice`, `Quantity`) VALUES
	(1, 3, 1, 23000000, 1),
	(2, 2, 5, 30000000, 1),
	(3, 1, 4, 7000000, 3);
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;

-- Dumping structure for table computer.product
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_category` int(10) DEFAULT NULL,
  `ProductName` varchar(100) DEFAULT NULL,
  `UnitPrice` int(10) DEFAULT NULL,
  `UnitInStock` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_product_category` (`id_category`),
  CONSTRAINT `FK_product_category` FOREIGN KEY (`id_category`) REFERENCES `category` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Dumping data for table computer.product: ~7 rows (approximately)
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`id`, `id_category`, `ProductName`, `UnitPrice`, `UnitInStock`) VALUES
	(1, 1, 'ThinkPad T490 Core i5 10210U New Seal BH Lenovo Vietnam', 23000000, 10),
	(2, 3, 'Dell Inspiron 5593 i5 1035G1 Ram 8Gb MX230 2Gb FHD', 13000000, 5),
	(3, 2, 'HP EliteBook X360 830 G6 i7 8665u 8Gb FullHD Touch', 20000000, 8),
	(4, 4, 'Asus VivoBook A542U i5 Ram 8Gb 15.6inch', 7000000, 3),
	(5, 5, 'MacBook Pro 2020 13 inch MXK32 (2-Thunderbolt 3) Gray Core i5 1.4GHz / 8GB / 256GB', 30000000, 8),
	(6, 1, 'LENOVO THINKPAD X1 CARBON GEN 6', 20000000, 3),
	(7, 2, 'DellL atitudeE7480i7-6600U 16GB FullHD', 13000000, 3);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

-- Dumping structure for table computer.user
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `User` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `Type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table computer.user: ~4 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`, `User`, `Password`, `Type`) VALUES
	(1, 'admin', 'admin', 'admin'),
	(2, 'user1', 'user1', 'user'),
	(3, 'user2', 'user2', 'user'),
	(4, 'user3', 'user3', 'user');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
