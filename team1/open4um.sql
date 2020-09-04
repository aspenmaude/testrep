-- --------------------------------------------------------
-- Host:                         192.168.123.34
-- Server version:               10.5.4-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.0.0.5919
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for open4um
CREATE DATABASE IF NOT EXISTS `open4um` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `open4um`;

-- Dumping structure for table open4um.cart
CREATE TABLE IF NOT EXISTS `cart` (
  `cartid` int(11) NOT NULL AUTO_INCREMENT,
  `proid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`cartid`),
  KEY `FK_cart_proid_product_proid` (`proid`),
  KEY `FK_cart_userid_user_userid` (`userid`),
  CONSTRAINT `FK_cart_proid_product_proid` FOREIGN KEY (`proid`) REFERENCES `product` (`proid`),
  CONSTRAINT `FK_cart_userid_user_userid` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table open4um.cart: ~0 rows (approximately)
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;

-- Dumping structure for table open4um.category
CREATE TABLE IF NOT EXISTS `category` (
  `ctgid` int(11) NOT NULL AUTO_INCREMENT,
  `ctgname` varchar(45) DEFAULT NULL,
  `ctgdate` varchar(45) DEFAULT NULL,
  `parentid` int(11) NOT NULL,
  PRIMARY KEY (`ctgid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- Dumping data for table open4um.category: ~6 rows (approximately)
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`ctgid`, `ctgname`, `ctgdate`, `parentid`) VALUES
	(1, 'Thảo Luận Chung', '03/09/2020', 0),
	(2, 'Kiến Thức cần biết', '03/09/2020', 0),
	(3, 'Tin Tức CNTT', '03/09/2020', 1),
	(4, 'Nghề Nghiệp\r\n', '03/09/2020', 1),
	(6, 'Nhập Môn Lập Trình\r\n', '03/09/2020', 2),
	(7, 'Kĩ Thuật Lập trình\r\n', '03/09/2020', 2);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;

-- Dumping structure for table open4um.comment
CREATE TABLE IF NOT EXISTS `comment` (
  `cmtid` int(11) NOT NULL AUTO_INCREMENT,
  `cmtname` varchar(45) DEFAULT NULL,
  `datecmt` timestamp NULL DEFAULT NULL,
  `userid` int(11) NOT NULL,
  `like` int(11) DEFAULT NULL,
  `dislikes` int(11) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `sourceid` int(11) DEFAULT NULL,
  PRIMARY KEY (`cmtid`),
  KEY `FK_comment_userid_user_userid` (`userid`),
  KEY `FK_comment_productid_product_proid` (`productid`),
  KEY `FK_comment_sourceid_source_sourceid` (`sourceid`),
  CONSTRAINT `FK_comment_productid_product_proid` FOREIGN KEY (`productid`) REFERENCES `product` (`proid`),
  CONSTRAINT `FK_comment_sourceid_source_sourceid` FOREIGN KEY (`sourceid`) REFERENCES `source` (`sourceid`),
  CONSTRAINT `FK_comment_userid_user_userid` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='FK_comment_sourceid_source_sourceid';

-- Dumping data for table open4um.comment: ~0 rows (approximately)
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;

-- Dumping structure for table open4um.historymoney
CREATE TABLE IF NOT EXISTS `historymoney` (
  `hismid` int(11) NOT NULL AUTO_INCREMENT,
  `money` double DEFAULT NULL,
  `date` timestamp NULL DEFAULT NULL,
  `discription` varchar(200) DEFAULT NULL,
  `userid` int(11) NOT NULL,
  PRIMARY KEY (`hismid`),
  KEY `FK_historymoney_userid_user_userid` (`userid`),
  CONSTRAINT `FK_historymoney_userid_user_userid` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table open4um.historymoney: ~0 rows (approximately)
/*!40000 ALTER TABLE `historymoney` DISABLE KEYS */;
INSERT INTO `historymoney` (`hismid`, `money`, `date`, `discription`, `userid`) VALUES
	(1, 25000, '2020-09-04 15:51:30', 'bigcity boiz', 1),
	(2, 50000, '2020-09-04 15:52:24', 'deep sea', 1),
	(3, 10000, '2020-09-04 15:52:38', 'alo', 2);
/*!40000 ALTER TABLE `historymoney` ENABLE KEYS */;

-- Dumping structure for table open4um.message
CREATE TABLE IF NOT EXISTS `message` (
  `messid` int(11) NOT NULL AUTO_INCREMENT,
  `senduserid` int(11) DEFAULT NULL,
  `receiveuserid` int(11) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `datemsg` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`messid`),
  KEY `FK_message_senduserid_user_userid` (`senduserid`),
  KEY `FK_message_receiveuserid_user_userid` (`receiveuserid`),
  CONSTRAINT `FK_message_receiveuserid_user_userid` FOREIGN KEY (`receiveuserid`) REFERENCES `user` (`userid`),
  CONSTRAINT `FK_message_senduserid_user_userid` FOREIGN KEY (`senduserid`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table open4um.message: ~0 rows (approximately)
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
/*!40000 ALTER TABLE `message` ENABLE KEYS */;

-- Dumping structure for table open4um.orderhistory
CREATE TABLE IF NOT EXISTS `orderhistory` (
  `orid` int(11) NOT NULL AUTO_INCREMENT,
  `orderdate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `userid` int(11) NOT NULL,
  `sourceid` int(11) DEFAULT NULL,
  PRIMARY KEY (`orid`),
  KEY `FK_orderhistory_userid_user_userid` (`userid`),
  KEY `FK_orderhistory_sourceid_source_sourceid` (`sourceid`),
  CONSTRAINT `FK_orderhistory_sourceid_source_sourceid` FOREIGN KEY (`sourceid`) REFERENCES `source` (`sourceid`),
  CONSTRAINT `FK_orderhistory_userid_user_userid` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table open4um.orderhistory: ~0 rows (approximately)
/*!40000 ALTER TABLE `orderhistory` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderhistory` ENABLE KEYS */;

-- Dumping structure for table open4um.product
CREATE TABLE IF NOT EXISTS `product` (
  `proid` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) DEFAULT NULL,
  `ctgid` int(11) NOT NULL,
  `like` int(11) DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `datepost` timestamp NULL DEFAULT NULL,
  `content` text DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  `userid` int(11) NOT NULL,
  `stateid` int(11) NOT NULL,
  `reason` text DEFAULT NULL,
  `dislikes` int(11) DEFAULT NULL,
  PRIMARY KEY (`proid`),
  KEY `FK_product_ctgid_category_ctgid` (`ctgid`),
  KEY `FK_product_userid_user_userid` (`userid`),
  KEY `FK_product_stateid_stateProduct_stateid` (`stateid`),
  CONSTRAINT `FK_product_ctgid_category_ctgid` FOREIGN KEY (`ctgid`) REFERENCES `category` (`ctgid`),
  CONSTRAINT `FK_product_stateid_stateProduct_stateid` FOREIGN KEY (`stateid`) REFERENCES `stateproduct` (`stateid`),
  CONSTRAINT `FK_product_userid_user_userid` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='(cmtid)';

-- Dumping data for table open4um.product: ~5 rows (approximately)
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`proid`, `title`, `ctgid`, `like`, `views`, `datepost`, `content`, `image`, `userid`, `stateid`, `reason`, `dislikes`) VALUES
	(1, 'Nâng cấp màn hình Full HD cho laptop', 3, 2, 12, '2020-09-03 14:54:06', 'Chào các bạn, mình thấy có khá nhiều bạn hỏi về vấn đề nâng cấp màn hình Full HD cho laptop mà các bạn đang sử dụng. Mình xin chia sẻ một số kinh nghiệm như sau:', '/resources/images/newscntt1.png', 8, 2, NULL, 1),
	(2, 'Làm thế nào để xây dựng phong cách làm việc chuyên nghiệp?', 4, 3, 23, '2020-09-03 14:55:09', 'Có nhiều tiêu chuẩn khác nhau để đánh giá tính chuyên nghiệp của một cá nhân, tóm gọn lại có 10 tiêu chuẩn cơ bản sau giúp bạn xây dựng và hoàn thiện tính chuyên nghiệp trong phong cách làm việc tại công ty:', '/resources/images/newscntt1.png', 1, 2, NULL, 2),
	(3, 'Samsung ra mắt máy chiếu tầm gần 130 inch 4K HDR10+', 6, 3, 22, '2020-09-03 14:56:44', 'Samsung vừa giới thiệu The Premiere, dòng máy chiếu tầm gần của họ thuộc dải sản phẩm Lifestyle, gồm 2 mẫu máy chiếu hỗ trợ độ phân giải 4K và kích thước màn chiếu rộng 130 inch. The Premiere sẽ được bán ra cuối năm nay, tuy nhiên chưa có giá cụ thể.', '/resources/images/newscntt1.png', 8, 2, NULL, 1),
	(4, 'Phần mềm quản lý group facebook – Ninja Group', 7, 12, 333, '2020-09-03 14:57:57', 'Phần mềm quản lý group sẽ giúp các Admin quản lý hệ thống Group, tự động chăm sóc, nuôi group facebook của mình một cách dễ dàng, hiệu quả và chính xác với các chức năng cực kỳ tuyệt vời mà ngay cả chính các Admin, Mod cũng không thể làm tốt hơn được.', '/resources/images/newscntt1.png', 8, 2, NULL, 1),
	(5, 'CEO của HTC từ chức', 3, 3, 234, '2020-09-03 16:38:03', 'Chưa đầy một năm sau khi được bổ nhiệm chủ tịch và CEO của HTC, Yves Maitre hôm nay đã từ chức và nhường lại vị trí CEO cho người đồng sáng lập HTC là Cher Wang. Tình hình dịch bệnh khiến Yves Maitre phải ở lại châu Âu là lý do được đưa ra nhưng kết quả kinh doanh có tác động nhất định đến quyết định này.', '/resources/images/newscntt1.png', 8, 2, NULL, 2);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;

-- Dumping structure for table open4um.rating
CREATE TABLE IF NOT EXISTS `rating` (
  `rateid` int(11) NOT NULL AUTO_INCREMENT,
  `ratevalue` int(11) DEFAULT NULL,
  `ratename` varchar(45) DEFAULT NULL,
  `sourceid` int(11) DEFAULT NULL,
  PRIMARY KEY (`rateid`),
  KEY `FK_rating_sourceid_source_sourceid` (`sourceid`),
  CONSTRAINT `FK_rating_sourceid_source_sourceid` FOREIGN KEY (`sourceid`) REFERENCES `source` (`sourceid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table open4um.rating: ~0 rows (approximately)
/*!40000 ALTER TABLE `rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `rating` ENABLE KEYS */;

-- Dumping structure for table open4um.report
CREATE TABLE IF NOT EXISTS `report` (
  `reportid` int(11) NOT NULL AUTO_INCREMENT,
  `reportname` text DEFAULT NULL,
  `userid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `reportdate` timestamp NULL DEFAULT NULL,
  `cmtid` int(11) NOT NULL,
  PRIMARY KEY (`reportid`),
  KEY `FK_report_userid_user_userid` (`userid`),
  KEY `FK_report_productid_product_proid` (`productid`),
  KEY `FK_report_cmtid_comment_cmtid` (`cmtid`),
  CONSTRAINT `FK_report_cmtid_comment_cmtid` FOREIGN KEY (`cmtid`) REFERENCES `comment` (`cmtid`),
  CONSTRAINT `FK_report_productid_product_proid` FOREIGN KEY (`productid`) REFERENCES `product` (`proid`),
  CONSTRAINT `FK_report_userid_user_userid` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='(cmtid)';

-- Dumping data for table open4um.report: ~0 rows (approximately)
/*!40000 ALTER TABLE `report` DISABLE KEYS */;
/*!40000 ALTER TABLE `report` ENABLE KEYS */;

-- Dumping structure for table open4um.role
CREATE TABLE IF NOT EXISTS `role` (
  `roleid` int(11) NOT NULL AUTO_INCREMENT,
  `roleaccount_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`roleid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table open4um.role: ~2 rows (approximately)
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` (`roleid`, `roleaccount_name`) VALUES
	(1, 'user'),
	(2, 'admin');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;

-- Dumping structure for table open4um.roleaccount
CREATE TABLE IF NOT EXISTS `roleaccount` (
  `roleaccount_id` int(11) NOT NULL AUTO_INCREMENT,
  `roleaccount_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`roleaccount_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table open4um.roleaccount: ~0 rows (approximately)
/*!40000 ALTER TABLE `roleaccount` DISABLE KEYS */;
/*!40000 ALTER TABLE `roleaccount` ENABLE KEYS */;

-- Dumping structure for table open4um.role_user
CREATE TABLE IF NOT EXISTS `role_user` (
  `role_user_id` int(11) NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `roleid` int(11) NOT NULL,
  PRIMARY KEY (`role_user_id`),
  KEY `FK_role_user_user` (`userid`),
  KEY `FK_role_user_role` (`roleid`),
  CONSTRAINT `FK_role_user_role` FOREIGN KEY (`roleid`) REFERENCES `role` (`roleid`),
  CONSTRAINT `FK_role_user_user` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table open4um.role_user: ~2 rows (approximately)
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` (`role_user_id`, `userid`, `roleid`) VALUES
	(1, 1, 1),
	(2, 3, 2),
	(3, 2, 2),
	(4, 2, 1);
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;

-- Dumping structure for table open4um.source
CREATE TABLE IF NOT EXISTS `source` (
  `sourceid` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NULL DEFAULT NULL,
  `sourcename` varchar(45) DEFAULT NULL,
  `size` varchar(45) DEFAULT NULL,
  `contentdetails` varchar(1000) DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `ctgid` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `avatar` varchar(45) DEFAULT NULL,
  `stateid` int(11) DEFAULT NULL,
  PRIMARY KEY (`sourceid`),
  KEY `FK_source_stateid_stateProduct_stateid` (`stateid`),
  KEY `FK_source_ctgid_category_ctgid` (`ctgid`),
  KEY `FK_source_userid_user_userid` (`userid`),
  CONSTRAINT `FK_source_ctgid_category_ctgid` FOREIGN KEY (`ctgid`) REFERENCES `category` (`ctgid`),
  CONSTRAINT `FK_source_stateid_stateProduct_stateid` FOREIGN KEY (`stateid`) REFERENCES `stateproduct` (`stateid`),
  CONSTRAINT `FK_source_userid_user_userid` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- Dumping data for table open4um.source: ~3 rows (approximately)
/*!40000 ALTER TABLE `source` DISABLE KEYS */;
INSERT INTO `source` (`sourceid`, `date`, `sourcename`, `size`, `contentdetails`, `title`, `userid`, `ctgid`, `price`, `avatar`, `stateid`) VALUES
	(1, '2020-09-03 18:50:50', 'Thong', NULL, NULL, NULL, 1, 7, 10000, NULL, 2),
	(2, '2020-09-04 08:07:38', 'Coder', NULL, NULL, NULL, 2, 7, 50000, NULL, 2),
	(3, '2020-09-04 08:12:14', 'Y', NULL, NULL, NULL, 1, 2, 30000, NULL, 1);
/*!40000 ALTER TABLE `source` ENABLE KEYS */;

-- Dumping structure for table open4um.stateproduct
CREATE TABLE IF NOT EXISTS `stateproduct` (
  `stateid` int(11) NOT NULL AUTO_INCREMENT,
  `statename` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`stateid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table open4um.stateproduct: ~2 rows (approximately)
/*!40000 ALTER TABLE `stateproduct` DISABLE KEYS */;
INSERT INTO `stateproduct` (`stateid`, `statename`) VALUES
	(1, 'Chưa duyệt'),
	(2, 'Đã Duyệt');
/*!40000 ALTER TABLE `stateproduct` ENABLE KEYS */;

-- Dumping structure for table open4um.tag
CREATE TABLE IF NOT EXISTS `tag` (
  `tagid` int(11) NOT NULL AUTO_INCREMENT,
  `tagname` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`tagid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table open4um.tag: ~0 rows (approximately)
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;

-- Dumping structure for table open4um.tag_product
CREATE TABLE IF NOT EXISTS `tag_product` (
  `tag_productid` int(11) NOT NULL AUTO_INCREMENT,
  `tagid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  PRIMARY KEY (`tag_productid`),
  KEY `FK_tag_product_productid_product_proid` (`productid`),
  KEY `FK_tag_product_tagid_tag_tagid` (`tagid`),
  CONSTRAINT `FK_tag_product_productid_product_proid` FOREIGN KEY (`productid`) REFERENCES `product` (`proid`),
  CONSTRAINT `FK_tag_product_tagid_tag_tagid` FOREIGN KEY (`tagid`) REFERENCES `tag` (`tagid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table open4um.tag_product: ~0 rows (approximately)
/*!40000 ALTER TABLE `tag_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `tag_product` ENABLE KEYS */;

-- Dumping structure for table open4um.user
CREATE TABLE IF NOT EXISTS `user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(200) NOT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `fbid` varchar(200) DEFAULT NULL,
  `avatar` varchar(45) DEFAULT NULL,
  `token` varchar(200) DEFAULT NULL,
  `money` double DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Dumping data for table open4um.user: ~12 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`userid`, `username`, `password`, `phone`, `email`, `status`, `fbid`, `avatar`, `token`, `money`) VALUES
	(1, 'Binz', '123', '0339653319', 'thongvo197@gmail.com', NULL, NULL, 'avatar.jpg', NULL, 10000),
	(2, 'nguyenthai', '123123123a', '0929133803', 'nguyenthai492018@gmail.com', NULL, NULL, NULL, NULL, NULL),
	(3, 'nguyenthai1', '123123123a', '0929133803', 'nguyenthai492017@gmail.com', NULL, NULL, NULL, NULL, NULL),
	(4, 'ngthaix', '12311231', '0929133803', 'nguyenthai492018@gmail.com', NULL, NULL, NULL, NULL, NULL),
	(5, 'nguen', '12131', '0929133803', 'nguyenthai492018@gmail.com', NULL, NULL, NULL, NULL, NULL),
	(6, 'nguyenthai11', '123123123a', '0929133803', 'nguyenthai492018@gmail.com', NULL, NULL, NULL, NULL, NULL),
	(7, 'nguythai12123', '1312', '09229113303', 'nguyenthai', NULL, NULL, NULL, NULL, NULL),
	(8, 'aspen', '123', '0929133803', 'huunghia.thnvtv@gmail.com', NULL, NULL, NULL, NULL, NULL),
	(9, 'nguyenthai12312312', '1321', '0926', 'nguen', NULL, NULL, NULL, NULL, NULL),
	(10, 'dasdasda', '12312312', '31546545', 'nguyenthai492017@gmail.com', NULL, NULL, NULL, NULL, NULL),
	(11, 'dasdasda', 'wqeqweqw', '12221436', 'nguyenthai492018@gmail.com', NULL, NULL, NULL, NULL, NULL),
	(12, 'hihihi', '121232', '2888', 'nguyenthai492017@gmail.com', NULL, NULL, NULL, NULL, NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
