-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bookstore
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tblbook`
--

DROP TABLE IF EXISTS `tblbook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblbook` (
  `ID` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `author` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` int NOT NULL,
  `createDate` datetime NOT NULL,
  `image` longtext NOT NULL,
  `categoryID` int NOT NULL,
  `typeID` int NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `categoryID` (`categoryID`),
  KEY `typeID` (`typeID`),
  CONSTRAINT `tblbook_ibfk_1` FOREIGN KEY (`categoryID`) REFERENCES `tblcategory` (`ID`),
  CONSTRAINT `tblbook_ibfk_2` FOREIGN KEY (`typeID`) REFERENCES `tbltype` (`typeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblbook`
--

LOCK TABLES `tblbook` WRITE;
/*!40000 ALTER TABLE `tblbook` DISABLE KEYS */;
INSERT INTO `tblbook` VALUES ('0cbd93e3-1208-467d-bfc1-1999c74ddc3f','Harry Potter và phòng chứa bí mật ','Kể từ lúc Harry trở về nhà vào mùa hè, gia đình Dursley đã dùng thủ đoạn xấu xí lấy đi tất cả những thứ giúp cậu trở lại Trường đào tạo pháp sư và phù thủy Hogwarts. Lúc đóng gói rương hành lí, cậu nhận được lời cảnh báo kì lạ, một sinh vật kì quái nói rằng nếu Harry trở lại Hogwarts, tai họa sẽ ập đến.','J.K.Rowling',135000,'2021-12-02 08:25:39','https://www.nxbtre.com.vn/Images/Book/nxbtre_full_21472017_034753.jpg',2,3,3),('1','The Institute','','Stephen King',200000,'2021-01-01 00:00:00','https://images-na.ssl-images-amazon.com/images/I/81pA6-hv+2L.jpg',1,3,5),('1412597e-a379-4943-8399-fd8e6b8c5f2a','Harry Potter và hội phượng hoàng','Harry Potter và Hội Phượng hoàng là một cuốn tiểu thuyết giả tưởng được viết bởi tác giả người Anh JK Rowling và tiểu thuyết thứ năm trong loạt phim Harry Potter . Phim kể về cuộc đấu tranh của Harry Potter trong năm thứ năm tại Trường Phù thủy và Pháp sư Hogwarts , bao gồm sự trở lại lén lút của nhân vật phản diện Lord Voldemort ,kỳ thi OWL và Bộ Pháp thuật cản trở. Cuốn tiểu thuyết được xuất bản vào ngày 21 tháng 6 năm 2003 bởi Bloomsbury ở Vương quốc Anh, Scholastic ở Hoa Kỳ và Raincoastở Canada. Nó đã bán được năm triệu bản trong 24 giờ đầu tiên xuất bản.','J.K.Rowling',130000,'2021-12-02 08:24:18','https://radiotoday.net/wp-content/uploads/2015/01/Harry-Potter-va-hoi-phuong-hoang.jpg',1,3,3),('2','Harry Potter và chiếc cốc lửa','Khi giải Quidditch Thế giới bị cắt ngang bởi những kẻ ủng hộ Chúa tể Voldemort và sự trở lại của Dấu hiệu hắc ám khủng khiếp, Harry ý thức được rõ ràng rằng, Chúa tể Voldemort đang ngày càng mạnh hơn. Và để trở lại thế giới phép thuật, Chúa tể hắc ám cần phải đánh bại kẻ duy nhất sống sót từ lời nguyền chết chóc của hắn - Harry Potter. Vì lẽ đó, khi Harry bị buộc phải bước vào giải đấu Tam Pháp thuật uy tín nhưng nguy hiểm, cậu nhận ra rằng trên cả chiến thắng, cậu phải giữ được mạng sống của mình.','J.K.Rowling',175000,'2021-01-02 00:00:00','https://www.nxbtre.com.vn/Images/Book/nxbtre_full_20342017_033410.jpg',2,3,1),('21850481-2ea8-4c72-be64-6437090d622e','Cujo','','Stephen King',150000,'2021-11-24 16:07:35','https://images-na.ssl-images-amazon.com/images/I/71AKaPbpeYL.jpg',1,2,2),('3','Percy Jackson and The Lightning Thief','Kẻ cắp tia chớp (tựa gốc tiếng Anh: The Lightning Thief) là một tiểu thuyết phiêu lưu kỳ ảo dựa trên thần thoại Hy Lạp được xuất bản năm 2005, đây là tập đầu tiên của bộ truyện Percy Jackson và các vị thần trên đỉnh Olympus. Nhân vật chính là Percy Jackson, một cậu bé 12 tuổi, á thần, con của vị thần Hy Lạp Poseidon. Percy cùng các bạn Annabeth Chase và Grover Underwood lên đường thực hiện nhiệm vụ ngăn chặn một trận chiến giữa các vị thần Zeus, Poseidon, Hades.','Rick Riordan',138000,'2021-01-02 00:00:00','https://images-na.ssl-images-amazon.com/images/I/81qOXsLCmhL.jpg',1,1,9),('37836206-3f3e-4362-8294-2bdc9e2eef27','Rose Madder','','Stephen King',125000,'2021-12-02 08:31:52','https://images-na.ssl-images-amazon.com/images/I/616hbmWpb8L.jpg',1,2,2),('3d40a2c2-ae3f-4c91-9fc2-91850e1083d3','Harry Potter và hoàng tử lai','Đang giữa mùa hè, nhưng có một màn sương giá trái mùa bám đầy lên những ô kính cửa sổ. Trong phòng ngủ của mình, tại nhà dượng Dursley trên đường Priver Drive, Harry Potter đang hồi hộp đợi chuyến viếng thăm của chính giáo sư Dumbledore. Lần gần nhất nó thầy Hiệu trưởng là trong một cuộc đấu ác liệt mặt-đối-mặt với Chúa tể Voldemort, và Harry không thể tin nổi giáo sư Dumbledore sẽ đích thân xuất hiện tại nhà dượng Dursley chứ không phải nơi nào khác. Tại sao cụ lại tới thăm nó lúc này? Điều gì khiến cụ không thể chờ cho tới khi Harry quay lại trường Hogwarts trong vài tuần tới? Năm thứ sáu của Harry tại trường Hogwarts đã có một cuộc khởi đầu khác thường, đúng vào lúc thế giới Muggle và thế giới phù thuỷ bắt đầu đan vào nhau...\nJ.K. Rowling kể lại những cuộc phiêu lưu mới nhất của Harry ở năm thứ sáu tại trường Hogwarts bằng một kỹ năng tuyệt vời và một phong cách nghẹt thở.','J.K.Rowling',125000,'2021-12-02 08:24:35','https://images-na.ssl-images-amazon.com/images/I/915i0eI3J8L.jpg',2,3,2),('807829e2-bc1d-409b-9b21-c35f2837c5cb','The Poppy Wife','Harry đang chờ đợi ở trường Privet Drive. Hội Phượng Hoàng sắp đến hộ tống nó ra đi an toàn, gắng hết sức không để cho Voldemort và bọn tay chân hắn biết được. Nhưng sau đó Harry sẽ làm gì? Làm cách nào nó có thể hoàn thành nhiệm vụ cực kỳ quan trọng và dường như bất khả thi mà giáo sự Dumbledore đã giao lại cho nó?','Caroline Scott',250000,'2021-12-02 08:34:16','https://m.media-amazon.com/images/I/51gZI9XnXoL.jpg',4,2,2),('93f4fed1-ab03-4284-88c9-78add1a70d28','Harry Potter và bảo bối tử thần ','Harry đang chờ đợi ở trường Privet Drive. Hội Phượng Hoàng sắp đến hộ tống nó ra đi an toàn, gắng hết sức không để cho Voldemort và bọn tay chân hắn biết được. Nhưng sau đó Harry sẽ làm gì? Làm cách nào nó có thể hoàn thành nhiệm vụ cực kỳ quan trọng và dường như bất khả thi mà giáo sự Dumbledore đã giao lại cho nó?','J.K.Rowling',100000,'2021-12-02 08:26:31','https://www.nxbtre.com.vn/Images/Book/nxbtre_full_11592017_085924.jpg',3,2,3),('a7ff8d9b-b7bb-49f0-8108-ade76e4ab04f','IT','\'They when you\'re down here with me, you\'ll float, too.\'\nDerry, Maine is just an ordinary town: familiar, well-ordered for the most part, a good place to live.\nIt is a group of children who see - and feel - what makes Derry so horribly different. In the storm drains, in the sewers, IT lurks, taking on the shape of every nightmare, each one\'s deepest dread. Sometimes is appears as an evil clown named Pennywise and sometimes IT reaches up, seizing, tearing, killing . . .\nTime passes and the children grow up, move away and forget. Until they are called back, once more to confront IT as IT stirs and coils in the sullen depths of their memories, emerging again to make their past nightmares a terrible present reality.','Stephen King',182000,'2021-12-02 12:04:39','https://ss-images.saostar.vn/wp700/2020/01/08/6781321/1.jpg',1,3,2),('b38d61cd-b923-4287-bb39-7998d2263aed','Harry Potter và tên tù nhân ngục Azkaban','Harry Potter may mắn sống sót đến tuổi 13, sau nhiều cuộc tấn công của Chúa tể hắc ám.\nNhưng hy vọng có một học kỳ yên ổn với Quidditch của cậu đã tiêu tan thành mây khói khi một kẻ điên cuồng giết người hàng loạt vừa thoát khỏi nhà tù Azkaban, với sự lùng sục của những cai tù là giám ngục.\nDường như trường Hogwarts là nơi an toàn nhất cho Harry lúc này. Nhưng có phải là sự trùng hợp khi cậu luôn cảm giác có ai đang quan sát mình từ bóng đêm, và những điềm báo của giáo sư Trelawney liệu có chính xác?\n‘Câu chuyện được kể với trí tưởng tượng bay bổng, sự hài hước bất tận có thể quyến rũ cả người lớn lẫn trẻ em.’','J.K.Rowling',139700,'2021-12-02 08:19:29','https://www.nxbtre.com.vn/Images/Book/nxbtre_full_20282017_032849.jpg',3,3,4),('d692c63b-3bac-49d8-8440-dfb6d64c991c','Coraline ','\"Khi Coraline bước qua cánh cửa, nó nhìn thấy một ngôi nhà giống hệt nhà mình. Chỉ có điều, mọi thứ dường như tốt đẹp và hấp dẫn hơn.\nNơi ấy có mẹ khác của nó, và cả cha khác nữa. Họ muốn nó ở lại làm con gái bé bỏng của họ. Họ muốn thay đổi nó và giữ nó bên mình mãi mãi.\nNhưng từ phía sau cánh cửa, Coraline mới biết điều nó thật sự cần. Nó khao khát trở lại cuộc sống đích thực của mình. Bằng tất cả trí khôn và lòng dũng cảm, Coraline đã thực hiện một hành trình phi thường, ly kỳ và vô cùng bất ngờ.\"','Neil Gaiman',45000,'2021-12-02 08:35:51','https://images-na.ssl-images-amazon.com/images/I/71QIjs87Q5L.jpg',1,2,2),('dc24d864-a8bf-4c49-a65d-b3ed7f3ddb81','lược sử thời gian','','Stephen Hawking',95000,'2021-12-04 13:59:14','https://www.nxbtre.com.vn/Images/Book/copy_27_nxbtre_full_21022016_100217.jpg',2,3,2),('e3e74d97-68fe-4ce2-8332-eea4e604636c','Người lửa','The fireman is coming. Stay cool.\nNo one knows exactly when it began or where it originated. A terrifying new plague is spreading like wildfire across the country, striking cities one by one: Boston, Detroit, Seattle. The doctors call it Draco Incendia Trychophyton. To everyone else it’s Dragonscale, a highly contagious, deadly spore that marks its hosts with beautiful black and gold marks across their bodies—before causing them to burst into flames. Millions are infected; blazes erupt everywhere. There is no antidote. No one is safe.','Joe Hill',95000,'2021-12-02 08:31:02','https://salt.tikicdn.com/cache/w1200/ts/product/74/4b/54/e9a58de606d16b301ff0dd5ef35aeacd.jpg',1,2,2);
/*!40000 ALTER TABLE `tblbook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblcategory`
--

DROP TABLE IF EXISTS `tblcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblcategory` (
  `ID` int NOT NULL,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblcategory`
--

LOCK TABLES `tblcategory` WRITE;
/*!40000 ALTER TABLE `tblcategory` DISABLE KEYS */;
INSERT INTO `tblcategory` VALUES (1,'Horror'),(2,'Science'),(3,'Action'),(4,'Romance'),(5,'Love');
/*!40000 ALTER TABLE `tblcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblorder`
--

DROP TABLE IF EXISTS `tblorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblorder` (
  `orderID` varchar(50) NOT NULL,
  `userID` varchar(50) DEFAULT NULL,
  `totalPrice` int DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  PRIMARY KEY (`orderID`),
  KEY `userID` (`userID`),
  CONSTRAINT `tblorder_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `tbluser` (`userID`),
  CONSTRAINT `tblorder_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `tbluser` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblorder`
--

LOCK TABLES `tblorder` WRITE;
/*!40000 ALTER TABLE `tblorder` DISABLE KEYS */;
INSERT INTO `tblorder` VALUES ('0a62a313-08f2-4e63-b62b-2dc953d05433','1',99000,'2021-11-24 14:14:54'),('19ee2529-8f79-4098-9722-107a90824c2b','1',99000,'2021-11-24 14:27:26'),('2addd355-30a2-443b-b0a6-628f16383374','1',99000,'2021-11-24 14:22:22'),('3222f9a0-2fec-4873-bdd4-d65d6ebbc0b1','1',99000,'2021-11-24 14:20:07'),('45c8a27d-7b85-4194-b071-dc90fc472298','1',99000,'2021-11-24 14:26:24'),('5fc76bd0-24b4-4362-8828-896bd7cb601f','1',99000,'2021-11-24 14:15:58'),('8adcaf8c-cc32-4e7f-b469-da5ae5d1cf71','1',99000,'2021-11-24 14:24:55'),('903e3026-7e15-41a9-a8ef-d740da440796','1',99000,'2021-11-24 14:20:03'),('a5df38dc-4e31-47a4-b7bd-f81ecaecca06','1',99000,'2021-11-24 14:20:10'),('aaa39ba2-485d-47b7-89f8-9a4f2031fd9d','1',99000,'2021-11-24 14:12:56'),('b46b2666-dabb-493d-8848-88348c892674','1',99000,'2021-11-24 14:09:57'),('b4d25888-41a0-4e0b-8d8a-f363428dd505','1',99000,'2021-11-24 14:19:29'),('c9726c3d-c824-4376-9075-7d8f14886907','1',99000,'2021-11-24 14:11:39'),('ca2bb3e9-ff13-4623-b884-b215a0f4f14a','1',99000,'2021-11-24 14:25:33'),('d9969c9a-2333-41cc-a939-909d085c90fc','1',99000,'2021-11-24 14:29:26'),('dffba933-ed2a-433c-8939-9b7da5242fa9','1',198000,'2021-11-24 14:32:07');
/*!40000 ALTER TABLE `tblorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblorderdetail`
--

DROP TABLE IF EXISTS `tblorderdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblorderdetail` (
  `detailID` varchar(50) NOT NULL,
  `orderID` varchar(50) DEFAULT NULL,
  `bookID` varchar(50) DEFAULT NULL,
  `detailPrice` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`detailID`),
  KEY `bookID` (`bookID`),
  KEY `orderID` (`orderID`),
  CONSTRAINT `tblorderdetail_ibfk_1` FOREIGN KEY (`bookID`) REFERENCES `tblbook` (`ID`),
  CONSTRAINT `tblorderdetail_ibfk_2` FOREIGN KEY (`orderID`) REFERENCES `tblorder` (`orderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblorderdetail`
--

LOCK TABLES `tblorderdetail` WRITE;
/*!40000 ALTER TABLE `tblorderdetail` DISABLE KEYS */;
INSERT INTO `tblorderdetail` VALUES ('0144873b-b48e-4700-a4b4-9ac2eb4c044b','dffba933-ed2a-433c-8939-9b7da5242fa9','3',99000,2),('0c7df106-8c99-45be-a4ed-cbe2121bc20d','3222f9a0-2fec-4873-bdd4-d65d6ebbc0b1','3',99000,1),('3f7de6b7-3e9c-4eb7-aeb0-4624edcdbea0','45c8a27d-7b85-4194-b071-dc90fc472298','3',99000,1),('767aeea1-a0bf-4c53-8530-3ae91e25f16c','903e3026-7e15-41a9-a8ef-d740da440796','3',99000,1),('78a14afc-7809-4cbb-ba6f-9ee728ee076c','19ee2529-8f79-4098-9722-107a90824c2b','3',99000,1),('a4f3c03c-cc02-4ccf-ab60-3c9ec6f7de85','b4d25888-41a0-4e0b-8d8a-f363428dd505','3',99000,1),('ad32b64e-bb65-4247-a8f8-9c68067c38f4','d9969c9a-2333-41cc-a939-909d085c90fc','3',99000,1),('bb4b670e-c553-4c5a-93f2-b228b9e39e91','2addd355-30a2-443b-b0a6-628f16383374','3',99000,1),('c666b4ea-6b95-4071-9c5a-cd8630326f36','ca2bb3e9-ff13-4623-b884-b215a0f4f14a','3',99000,1),('dc32baf8-b0ad-4432-b56a-83113fdb8598','a5df38dc-4e31-47a4-b7bd-f81ecaecca06','3',99000,1),('fe4313d7-8104-4242-973d-fe7660040337','8adcaf8c-cc32-4e7f-b469-da5ae5d1cf71','3',99000,1);
/*!40000 ALTER TABLE `tblorderdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblrole`
--

DROP TABLE IF EXISTS `tblrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblrole` (
  `roleID` int NOT NULL,
  `roleName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`roleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblrole`
--

LOCK TABLES `tblrole` WRITE;
/*!40000 ALTER TABLE `tblrole` DISABLE KEYS */;
INSERT INTO `tblrole` VALUES (1,'Admin'),(2,'User');
/*!40000 ALTER TABLE `tblrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblshippinginfo`
--

DROP TABLE IF EXISTS `tblshippinginfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblshippinginfo` (
  `orderID` varchar(50) NOT NULL,
  `fullName` varchar(150) NOT NULL,
  `address` varchar(200) NOT NULL,
  `city` varchar(150) NOT NULL,
  `state` varchar(150) NOT NULL,
  `note` text NOT NULL,
  `phone` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`orderID`),
  UNIQUE KEY `orderID_UNIQUE` (`orderID`),
  CONSTRAINT `tblshippinginfo_ibfk_1` FOREIGN KEY (`orderID`) REFERENCES `tblorder` (`orderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblshippinginfo`
--

LOCK TABLES `tblshippinginfo` WRITE;
/*!40000 ALTER TABLE `tblshippinginfo` DISABLE KEYS */;
INSERT INTO `tblshippinginfo` VALUES ('d9969c9a-2333-41cc-a939-909d085c90fc','Test','Test','HCM','HCM','','0911111111'),('dffba933-ed2a-433c-8939-9b7da5242fa9','Test','Test','HCM','HCM','','0911111111');
/*!40000 ALTER TABLE `tblshippinginfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbltype`
--

DROP TABLE IF EXISTS `tbltype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbltype` (
  `typeID` int NOT NULL,
  `name` varchar(150) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`typeID`),
  UNIQUE KEY `name_UNIQUE` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbltype`
--

LOCK TABLES `tbltype` WRITE;
/*!40000 ALTER TABLE `tbltype` DISABLE KEYS */;
INSERT INTO `tbltype` VALUES (3,'Rare'),(2,'Sale'),(1,'Used');
/*!40000 ALTER TABLE `tbltype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbluser`
--

DROP TABLE IF EXISTS `tbluser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbluser` (
  `userID` varchar(50) NOT NULL,
  `userName` varchar(150) DEFAULT NULL,
  `userAddress` varchar(200) DEFAULT NULL,
  `userPhone` varchar(22) DEFAULT NULL,
  `password` varchar(22) DEFAULT NULL,
  `createDate` datetime DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `userStatus` int DEFAULT NULL,
  `roleID` int DEFAULT NULL,
  PRIMARY KEY (`userID`),
  KEY `roleID` (`roleID`),
  CONSTRAINT `tbluser_ibfk_1` FOREIGN KEY (`roleID`) REFERENCES `tblrole` (`roleID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbluser`
--

LOCK TABLES `tbluser` WRITE;
/*!40000 ALTER TABLE `tbluser` DISABLE KEYS */;
INSERT INTO `tbluser` VALUES ('1','test','test','0911111112','1','2021-01-01 00:00:00','1',1,2),('2','admin','admin','0922222222','1','2021-01-01 00:00:00','admin',1,1);
/*!40000 ALTER TABLE `tbluser` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-06 11:04:54
