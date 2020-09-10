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
  `url` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ctgid`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- Dumping data for table open4um.category: ~13 rows (approximately)
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` (`ctgid`, `ctgname`, `ctgdate`, `parentid`, `url`) VALUES
	(1, 'Thảo Luận Chung', '03/09/2020', 0, NULL),
	(2, 'Kiến Thức cần biết', '03/09/2020', 0, NULL),
	(3, 'Tin Tức CNTT', '03/09/2020', 1, '/open4um/forum/thaoluanchung/news/'),
	(4, 'Nghề Nghiệp\r\n', '03/09/2020', 1, '/open4um/forum/thaoluanchung/jobs/'),
	(6, 'Nhập Môn Lập Trình\r\n', '03/09/2020', 2, '/open4um/forum/kienthuc/nmlt/'),
	(7, 'Kĩ Thuật Lập trình\r\n', '03/09/2020', 2, '/open4um/forum/kienthuc/ktlt/'),
	(26, 'Source Web', '03/09/2020', 33, NULL),
	(27, 'Source Game', '03/09/2020', 34, NULL),
	(28, 'C#', '03/09/2020', 26, NULL),
	(29, 'Java', '03/09/2020', 26, NULL),
	(30, 'PHP', '03/09/2020', 26, NULL),
	(31, 'Unity', '03/09/2020', 27, NULL),
	(32, 'Cocos', '03/09/2020', 27, NULL),
	(34, 'pppppppp', '03/09/2020', 1, NULL),
	(35, 'aaaaaaa', NULL, 2, NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='FK_comment_sourceid_source_sourceid';

-- Dumping data for table open4um.comment: ~3 rows (approximately)
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` (`cmtid`, `cmtname`, `datecmt`, `userid`, `like`, `dislikes`, `parent`, `productid`, `sourceid`) VALUES
	(1, 'OK', '2020-09-10 08:58:51', 1, NULL, NULL, NULL, 1, 2),
	(2, 'Test', '2020-09-10 09:00:35', 2, NULL, NULL, NULL, 1, NULL),
	(3, 'OK OK', '2020-09-10 09:03:17', 3, NULL, NULL, NULL, 1, NULL);
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

-- Dumping data for table open4um.historymoney: ~3 rows (approximately)
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table open4um.message: ~6 rows (approximately)
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` (`messid`, `senduserid`, `receiveuserid`, `content`, `datemsg`) VALUES
	(1, 1, 149, 'sadsadsadadasd', '2020-09-08 17:03:04'),
	(2, 1, 149, 'hello cau', '2020-09-07 17:03:39'),
	(3, 3, 1, 'asdd', '2020-09-07 17:04:34'),
	(4, 1, 2, 'boop boop', '2020-09-08 13:25:34'),
	(5, 1, 2, 'merong merong', '2020-09-08 16:08:24'),
	(6, 1, 149, 'bankai', '2020-09-09 13:48:48');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- Dumping data for table open4um.orderhistory: ~5 rows (approximately)
/*!40000 ALTER TABLE `orderhistory` DISABLE KEYS */;
INSERT INTO `orderhistory` (`orid`, `orderdate`, `userid`, `sourceid`) VALUES
	(1, '2020-09-07 18:44:55', 3, 1),
	(2, '2020-09-07 18:45:19', 3, 4),
	(3, '2020-09-07 18:45:39', 8, 2),
	(4, '2020-09-07 18:45:59', 3, 2),
	(5, '2020-09-07 18:46:05', 2, 2);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='(cmtid)';

-- Dumping data for table open4um.product: ~6 rows (approximately)
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` (`proid`, `title`, `ctgid`, `like`, `views`, `datepost`, `content`, `image`, `userid`, `stateid`, `reason`, `dislikes`) VALUES
	(1, 'Nâng cấp màn hình Full HD cho laptop', 3, 2, 12, '2020-09-03 14:54:06', 'Chào các bạn, mình thấy có khá nhiều bạn hỏi về vấn đề nâng cấp màn hình Full HD cho laptop mà các bạn đang sử dụng. Mình xin chia sẻ một số kinh nghiệm như sau:', '/resources/images/newscntt1.png', 8, 1, NULL, 1),
	(2, 'Làm thế nào để xây dựng phong cách làm việc chuyên nghiệp?', 4, 3, 23, '2020-09-03 14:55:09', 'Có nhiều tiêu chuẩn khác nhau để đánh giá tính chuyên nghiệp của một cá nhân, tóm gọn lại có 10 tiêu chuẩn cơ bản sau giúp bạn xây dựng và hoàn thiện tính chuyên nghiệp trong phong cách làm việc tại công ty:', '/resources/images/newscntt1.png', 1, 2, NULL, 2),
	(3, 'Samsung ra mắt máy chiếu tầm gần 130 inch 4K HDR10+', 6, 3, 22, '2020-09-03 14:56:44', 'Samsung vừa giới thiệu The Premiere, dòng máy chiếu tầm gần của họ thuộc dải sản phẩm Lifestyle, gồm 2 mẫu máy chiếu hỗ trợ độ phân giải 4K và kích thước màn chiếu rộng 130 inch. The Premiere sẽ được bán ra cuối năm nay, tuy nhiên chưa có giá cụ thể.', '/resources/images/newscntt1.png', 8, 2, NULL, 1),
	(4, 'Phần mềm quản lý group facebook – Ninja Group', 7, 12, 333, '2020-09-03 14:57:57', 'Phần mềm quản lý group sẽ giúp các Admin quản lý hệ thống Group, tự động chăm sóc, nuôi group facebook của mình một cách dễ dàng, hiệu quả và chính xác với các chức năng cực kỳ tuyệt vời mà ngay cả chính các Admin, Mod cũng không thể làm tốt hơn được.', '/resources/images/newscntt1.png', 8, 2, NULL, 1),
	(5, 'CEO của HTC từ chức', 3, 3, 234, '2020-09-03 16:38:03', 'Chưa đầy một năm sau khi được bổ nhiệm chủ tịch và CEO của HTC, Yves Maitre hôm nay đã từ chức và nhường lại vị trí CEO cho người đồng sáng lập HTC là Cher Wang. Tình hình dịch bệnh khiến Yves Maitre phải ở lại châu Âu là lý do được đưa ra nhưng kết quả kinh doanh có tác động nhất định đến quyết định này.', '/resources/images/newscntt1.png', 8, 2, NULL, 2),
	(6, 'Công việc của quản trị tuyển dụng', 4, 2, 432, '2020-09-07 19:14:39', 'Trong vô số các công việc liên quan của phòng nhân sự, tuyển dụng là nhiệm vụ chiếm tỷ trọng cao cả về số lượng và mức độ quan trọng. Đa phần nhiệm vụ này sẽ do trưởng phòng hoặc giám đốc nhân sự trực tiếp điều phối. Thuật ngữ chuyên ngành gọi riêng đây là công tác quản trị tuyển dụng với hàng loạt công việc gắn kết chặt chẽ với nhau. Chi tiết cụ thể TalentBold sẽ thể hiện qua bài viết dưới đây.\r\n\r\nNhững doanh nghiệp có lượng nhân sự lớn, biến động thường xuyên còn có thể lập riêng một phòng ban chuyên về quản trị tuyển dụng nhằm đảm bảo nhu cầu nhân lực luôn được lấp đầy nhanh chóng và hiệu quả.\r\n\r\nI. Khái quát về quản trị tuyển dụng\r\nQuản trị tuyển dụng là việc tìm kiếm, chiêu mộ nhân viên phù hợp nhất với vị trí đang trống tại một phòng ban nào đó trong doanh nghiệp.\r\n\r\n\r\nCông việc này đặt nặng về chất lượng và sự sáng tạo trong cách làm việc, bởi lẽ, cùng một lúc người quản trị tuyển dụng có thể tuyển hàng trăm nhân sự cho nhiều phòng ban khác nhau mà vẫn phải đảm bảo chất lượng ứng viên như yêu cầu.\r\n\r\nII. Những công việc cần làm tại vị trí quản trị tuyển dụng\r\n1. Tiếp nhận thông tin bổ sung nhân lực từ phòng ban cụ thể\r\nNhững phòng ban trong doanh nghiệp khi thiếu hụt nhân sự đều sẽ liên hệ và gửi yêu cầu bổ sung nhân lực đến phòng nhân sự, cụ thể là người quản trị tuyển dụng.\r\n\r\n2. Trình ban giám đốc phê duyệt yêu cầu tuyển dụng\r\nTừ yêu cầu nhận được, phòng nhân sự sẽ báo cáo cấp trên để xin chỉ thị về việc lập kế hoạch tuyển dụng thêm nhân lực hay không.\r\n\r\n3. Viết bài và đăng tin tuyển dụng\r\nKhi đã được phê duyệt, đăng thông tin tìm kiếm ứng viên sẽ là công việc tiếp theo của quản trị tuyển dụng.\r\n\r\nSoạn thảo bài viết tuyển dụng với đầy đủ thông tin về vị trí công việc, yêu cầu, mô tả công việc cụ thể…, đồng thời phải chọn lựa kênh tuyển dụng trực tuyến thích hợp để đăng tin.\r\n\r\n4. Tiếp nhận hồ sơ ứng viên\r\nDoanh nghiệp có thể tiếp nhận hồ sơ trực tiếp tại văn phòng, nhận hồ sơ qua email trực tiếp hoặc qua email liên kết với kênh tuyển dụng trực tiếp.\r\n\r\nMỗi ngày đều phải tổng hợp lại hồ sơ và lên kế hoạch sàng lọc ứng viên phù hợp để tránh quá tải.\r\n\r\n5. Chuyển danh sách ứng viên dự kiến qua phòng ban nơi cần bổ sung nhân lực\r\nTrực tiếp người quản trị tuyển dụng sẽ sàng lọc danh sách ứng viên phù hợp và gửi cho trưởng phòng nơi cần nhân lực kiểm tra, phê duyệt lại lần nữa.\r\n\r\nQuy trình này khá quan trọng vì trưởng phòng là người nắm rõ yêu cầu công việc đang thiếu nhân sự, và ứng viên cần sở hữu tố chất quan trọng nào nhất.\r\n\r\nBên cạnh đó, những yêu cầu đặc biệt khi phỏng vấn ứng viên cũng có thể được trưởng phòng ghi chú cụ thể, tạo thuận lợi cho người phỏng vấn.\r\n\r\n6. Lên lịch hẹn phỏng vấn ứng viên\r\nTừ danh sách ứng viên đã phê duyệt, phòng nhân sự sẽ lên lịch hẹn phỏng vấn dựa trên khung thời gian làm việc của người phỏng vấn và của ứng viên.\r\n\r\nThông thường thông báo lịch hẹn phỏng vấn sẽ gửi qua email, nếu người quản trị tuyển dụng muốn phỏng vấn sơ bộ thì có thể thông báo bằng điện thoại.\r\n\r\n7. Báo cáo cấp trên về kết quả phỏng vấn\r\nSau khi hoàn tất phỏng vấn tất cả ứng viên, người quản trị tuyển dụng sẽ lập báo cáo trình lên cấp trên.\r\n\r\nCấp trên và trưởng phòng nơi cần nhân lực sẽ trực tiếp thảo luận cùng nhau, cân nhắc lựa chọn ứng viên và gửi danh sách ứng viên trúng tuyển về phòng nhân sự.\r\n\r\n8. Liên lạc ứng viên trúng tuyển và sắp xếp thời gian nhận việc\r\nLiên lạc trực tiếp với ứng viên trúng tuyển để thỏa thuận thời gian bắt đầu thời gian thử việc. Sau đó, gửi một email xác nhận với thời gian đã thống nhất là quy trình thông báo được đánh giá chuyên nghiệp.\r\n\r\nNếu có thay đổi gì từ 01 trong 02 bên, việc trao đổi nên diễn ra trên email để các cấp quản lý có đính kèm trong email có thể cập nhật tình hình thường xuyên.\r\n\r\n9. Đánh giá kết quả ứng viên sau thời gian thử việc\r\nCông việc quản trị tuyển dụng vẫn phải tiếp tục với việc theo dõi kết quả báo cáo thử việc từ quản lý trực tiếp của ứng viên.\r\n\r\nThậm chí, trong quá trình thử việc có thể người quản trị tuyển dụng phải đổi ứng viên mới nếu ứng viên thử việc hoặc người quản lý trực tiếp cảm thấy bên còn lại không phù hợp với mong muốn và sự kỳ vọng, khó gắn bó lâu dài.\r\n\r\n10. Báo cáo ban lãnh đạo, hoàn tất hồ sơ tuyển dụng chính thức\r\nNếu kết quả thử việc được đánh giá tốt, phù hợp yêu cầu doanh nghiệp, người quản trị sẽ lập báo cáo lên ban lãnh đạo và tiến hành hồ sơ ký kết hợp đồng lao động chính thức.\r\n\r\nIII. Ứng dụng công nghệ trong công tác quản trị tuyển dụng\r\nNhững doanh nghiệp, tập đoàn lớn, lượng công việc quản trị tuyển dụng rất lớn, để tiết kiệm thời gian, nâng cao năng suất hiệu quả làm việc của người quản trị tuyển dụng, trang bị phần mềm quản trị tuyển dụng đang là xu hướng hiện nay.\r\n\r\nThông qua phần mềm này, mọi công việc liên quan đến quản trị tuyển dụng đều sẽ được tự động hóa theo tiêu chí lựa chọn, ví dụ:\r\n\r\nTạo mẫu CV riêng cho doanh nghiệp\r\n\r\nTổng hợp thông tin nhanh chóng theo từng tiêu chí trong mẫu CV\r\n\r\nTự động sàng lọc danh sách ứng viên theo một hoặc một số tiêu chí, tùy người quản trị tuyển dụng chọn\r\n\r\nTổng hợp danh sách báo cáo, đánh giá mức độ phù hợp của ứng viên, đánh giá hiệu quả các kênh tuyển dụng… đều được tính toán tự động và thể hiện bằng những con số cụ thể\r\n\r\nPhỏng vấn trực tuyến ứng viên ở xa hoặc khi người trực tiếp phỏng vấn đang đi công tác…\r\nNhân tài là rường cột chủ chốt, có được nhân viên giỏi chính là nền tảng ban đầu cho mọi thành công của doanh nghiệp. Vì vậy, quản trị tuyển dụng luôn là tuyến đầu với trọng trách nặng nề khi là nơi tiếp nhận và sàng lọc nhân tài.\r\n\r\nTheo dõi xu hướng quản trị tuyển dụng từ nhiều năm nay, TalenBold nhận thấy từ khi phần mềm quản trị tuyển dụng hiện hữu tại các doanh nghiệp, người quản trị tuyển dụng tối giản nhiều công đoạn tạo nguồn ứng viên, thời gian tập trung cho chất lượng ứng viên nhiều hơn, nhờ vậy, kết quả hoạt động của hàng loạt doanh nghiệp được cải thiện đáng kể.', '/resources/images/newscntt1.png', 8, 2, NULL, 2);
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

-- Dumping data for table open4um.role: ~3 rows (approximately)
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` (`roleid`, `roleaccount_name`) VALUES
	(1, 'user'),
	(2, 'censor'),
	(3, 'admin');
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Dumping data for table open4um.role_user: ~10 rows (approximately)
/*!40000 ALTER TABLE `role_user` DISABLE KEYS */;
INSERT INTO `role_user` (`role_user_id`, `userid`, `roleid`) VALUES
	(1, 8, 3),
	(2, 147, 3),
	(3, 1, 1),
	(4, 159, 3),
	(5, 147, 1),
	(6, 154, 1),
	(7, 155, 1),
	(8, 160, 1),
	(9, 1, 3),
	(10, 162, 1);
/*!40000 ALTER TABLE `role_user` ENABLE KEYS */;

-- Dumping structure for table open4um.source
CREATE TABLE IF NOT EXISTS `source` (
  `sourceid` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NULL DEFAULT NULL,
  `sourcename` varchar(500) DEFAULT NULL,
  `size` varchar(45) DEFAULT NULL,
  `contentdetails` varchar(1000) DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `ctgid` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `avatar` varchar(500) DEFAULT NULL,
  `stateid` int(11) DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `dowloads` int(11) DEFAULT NULL,
  PRIMARY KEY (`sourceid`),
  KEY `FK_source_stateid_stateProduct_stateid` (`stateid`),
  KEY `FK_source_ctgid_category_ctgid` (`ctgid`),
  KEY `FK_source_userid_user_userid` (`userid`),
  CONSTRAINT `FK_source_ctgid_category_ctgid` FOREIGN KEY (`ctgid`) REFERENCES `category` (`ctgid`),
  CONSTRAINT `FK_source_stateid_stateProduct_stateid` FOREIGN KEY (`stateid`) REFERENCES `stateproduct` (`stateid`),
  CONSTRAINT `FK_source_userid_user_userid` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Dumping data for table open4um.source: ~10 rows (approximately)
/*!40000 ALTER TABLE `source` DISABLE KEYS */;
INSERT INTO `source` (`sourceid`, `date`, `sourcename`, `size`, `contentdetails`, `title`, `userid`, `ctgid`, `price`, `avatar`, `stateid`, `views`, `dowloads`) VALUES
	(1, '2020-09-03 18:50:50', 'Giải Sudoku bằng Java Swing', NULL, NULL, NULL, 1, 29, 10000, 'imgc.jpg', 2, 123, 100),
	(2, '2020-09-04 08:07:38', 'Lập trình game sudoku java full source code giao diện đẹp', NULL, NULL, NULL, 2, 29, 50000, 'lap-trinh-game-sudoku-java-full-source-code-giao-dien-dep-162417.jpg', 2, 114, 50),
	(3, '2020-09-04 08:12:14', 'Assignment Quản lý nhân viên java 2 fpt polytechnic, java swing', NULL, NULL, NULL, 1, 28, 30000, 'assignment-quan-ly-nhan-vien-java-2-fpt-polytechnic-java-swing-183848.jpg', 1, 632, 20),
	(4, '2020-09-07 16:28:11', 'tho', NULL, NULL, NULL, 2, 30, 2000, NULL, 2, NULL, 10),
	(5, '2020-09-03 21:50:50', 'abc', NULL, NULL, NULL, NULL, 29, NULL, NULL, NULL, NULL, NULL),
	(6, '2020-09-09 09:55:06', 'nsss', NULL, NULL, NULL, NULL, 31, NULL, NULL, NULL, NULL, NULL),
	(7, '2020-09-09 09:55:19', 'ddd', NULL, NULL, NULL, NULL, 28, NULL, NULL, NULL, NULL, NULL),
	(8, '2020-09-09 09:55:23', 'aaaa', NULL, NULL, NULL, NULL, 30, NULL, NULL, NULL, NULL, NULL),
	(9, '2020-09-09 09:55:32', 'tyyyyy', NULL, NULL, NULL, NULL, 28, NULL, NULL, NULL, NULL, NULL),
	(10, '2020-09-09 09:55:38', 'ghhhhhh', NULL, NULL, NULL, NULL, 32, NULL, NULL, NULL, NULL, NULL);
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
  `password` varchar(200) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `avatar` varchar(45) DEFAULT NULL,
  `money` double DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=163 DEFAULT CHARSET=utf8;

-- Dumping data for table open4um.user: ~18 rows (approximately)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`userid`, `username`, `password`, `phone`, `email`, `status`, `avatar`, `money`) VALUES
	(1, 'Binz', '123', '090908869sss', 'nguyenthai1701@gmail.com', 'active', '/resources/images/thai.jpg', 10000),
	(2, 'nguyenthai', '123', '0929133880', 'nguyenthai492018@gmail.com', 'active', '/resources/images/thai.jpg', NULL),
	(3, 'hihi', '123', '0000', 'nguyenthai1701@gmail.com', 'active', '/resources/images/thai.jpg', NULL),
	(8, 'aspen', '123', '0929133803', 'huunghia.thnvtv@gmail.com', 'active', '/resources/images/thai.jpg', NULL),
	(147, 'binzz', '$2a$12$CFo.twqke9uTdceYy2Vw0OKBMG95ykuYhQ7q7NEZYOF7G2GXLb0Pq', '092933', 'nguyenthai492017@gmail.com', 'active', '/resources/images/thai.jpg', 10000),
	(149, 'thaicc', '$2a$12$ONVtAblU3tsW2BcA4bXb6OfF6SuW6BY/2slEH8HUepWQ9IPYu4hU2', '092923360', 'nguyenthai492017@gmail.com', 'active', '/resources/images/thai.jpg', NULL),
	(151, 'chicc', '$2a$12$nRatyk5NVVXWEXtaylxaAeKB4.IGKdJ.lH8Ee5NI4koriYHXZ2LjW', '0911', 'nguyenthai492017@gmail.com', 'active', '/resources/images/thai.jpg', NULL),
	(152, 'thongcc', '$2a$12$AsxDWonIC5k.yHjiICDfuOsL.NQZ8lE2xi7M3ZV.ljTq6Vpkb/rFW', '0929133', 'nguyenthai492017@gmail.com', 'active', '/resources/images/thai.jpg', NULL),
	(153, 'totoan1995', 'T@an1995', NULL, NULL, NULL, '/resources/images/2744528.jpg', NULL),
	(154, 'minhanh.nguyen6688', 'minhanh123', NULL, NULL, NULL, '/resources/images/minh-anh.jpg', NULL),
	(155, 'lenym30051997', 'lien123', '', '', 'inactive', '/resources/images/lien-le.jpg', NULL),
	(156, 'huenhi.bui', 'nhi123', NULL, NULL, NULL, '/resources/images/nhi.jpg', NULL),
	(157, 'NguyenThai492017', 'thai123', NULL, NULL, NULL, '/resources/images/thai.jpg', NULL),
	(158, 'huynhnhu.tran.98096', 'nhu123', NULL, NULL, NULL, '/resources/images/nhu.jpg', NULL),
	(159, 'kiki', NULL, NULL, NULL, NULL, '/resources/images/thai.jpg', NULL),
	(160, 'chigogo', '$2a$12$wQZpLWCbDvsApF.I6EeLTOIIFZk3gu7IcUsggYvoCkj/kFABuJIpG', '0929133803', 'chigogo@gmail.com', 'active', NULL, NULL),
	(161, 'thaigogo', '$2a$12$2YxYazv5slH5w2Mw7/3WqutvAcfatgLf5NfgEzHyjbk2RATnW96jy', '0929133803', 'nguyenthai492018@gmail.com', 'active', NULL, NULL),
	(162, 'olala', '$2a$12$jqFw7H5wZZNcIojeDKN4/.a5ytzoyp88QyvS4GZKtImz9Mw2Ewx8S', '0929133803', 'nguyenthai492018@gmail.com', 'active', NULL, NULL);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
