-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: wheyshop
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `app_roles`
--

DROP TABLE IF EXISTS `app_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `app_roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_roles`
--

LOCK TABLES `app_roles` WRITE;
/*!40000 ALTER TABLE `app_roles` DISABLE KEYS */;
INSERT INTO `app_roles` VALUES (1,'ROLE_USER'),(2,'ROLE_ADMIN');
/*!40000 ALTER TABLE `app_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_details`
--

DROP TABLE IF EXISTS `cart_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_details` (
  `cart_detail_id` bigint NOT NULL AUTO_INCREMENT,
  `price` double DEFAULT NULL,
  `quantity` int NOT NULL,
  `cart_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`cart_detail_id`),
  KEY `FKkcochhsa891wv0s9wrtf36wgt` (`cart_id`),
  KEY `FK9rlic3aynl3g75jvedkx84lhv` (`product_id`),
  CONSTRAINT `FK9rlic3aynl3g75jvedkx84lhv` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  CONSTRAINT `FKkcochhsa891wv0s9wrtf36wgt` FOREIGN KEY (`cart_id`) REFERENCES `carts` (`cart_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_details`
--

LOCK TABLES `cart_details` WRITE;
/*!40000 ALTER TABLE `cart_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carts`
--

DROP TABLE IF EXISTS `carts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carts` (
  `cart_id` bigint NOT NULL AUTO_INCREMENT,
  `amount` double DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`cart_id`),
  KEY `FKb5o626f86h46m4s7ms6ginnop` (`user_id`),
  CONSTRAINT `FKb5o626f86h46m4s7ms6ginnop` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carts`
--

LOCK TABLES `carts` WRITE;
/*!40000 ALTER TABLE `carts` DISABLE KEYS */;
INSERT INTO `carts` VALUES (6,0,'Phu Tho','0911112222',7),(7,0,'100, Phường Nông Trang, Thành phố Việt Trì, Tỉnh Phú Thọ','0358888999',8);
/*!40000 ALTER TABLE `carts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `category_id` bigint NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (10,'WHEY PROTEIN'),(11,'SỮA TĂNG CÂN'),(12,'BCAA AMINO ACIDS'),(13,'TĂNG SỨC MẠNH'),(14,'VITAMIN KHOÁNG CHẤT'),(15,'DẦU CÁ OMEGA-3'),(16,'HỖ TRỢ GIẢM CÂN'),(17,'BÁNH PROTEIN BAR'),(18,'PHỤ KIỆN TẬP GYM'),(19,'DINH DƯỠNG CHẠY BỘ');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `favorites`
--

DROP TABLE IF EXISTS `favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorites` (
  `favorite_id` bigint NOT NULL AUTO_INCREMENT,
  `product_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`favorite_id`),
  KEY `FK6sgu5npe8ug4o42bf9j71x20c` (`product_id`),
  KEY `FKk7du8b8ewipawnnpg76d55fus` (`user_id`),
  CONSTRAINT `FK6sgu5npe8ug4o42bf9j71x20c` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  CONSTRAINT `FKk7du8b8ewipawnnpg76d55fus` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorites`
--

LOCK TABLES `favorites` WRITE;
/*!40000 ALTER TABLE `favorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notification`
--

DROP TABLE IF EXISTS `notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notification` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `message` varchar(255) DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notification`
--

LOCK TABLES `notification` WRITE;
/*!40000 ALTER TABLE `notification` DISABLE KEYS */;
INSERT INTO `notification` VALUES (1,'Nguyen Thanh Trung đã đặt một đơn hàng (27)',_binary '\0','2023-05-17 06:43:37');
/*!40000 ALTER TABLE `notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_details` (
  `order_detail_id` bigint NOT NULL AUTO_INCREMENT,
  `price` double DEFAULT NULL,
  `quantity` int NOT NULL,
  `order_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  PRIMARY KEY (`order_detail_id`),
  KEY `FKjyu2qbqt8gnvno9oe9j2s2ldk` (`order_id`),
  KEY `FK4q98utpd73imf4yhttm3w0eax` (`product_id`),
  CONSTRAINT `FK4q98utpd73imf4yhttm3w0eax` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  CONSTRAINT `FKjyu2qbqt8gnvno9oe9j2s2ldk` FOREIGN KEY (`order_id`) REFERENCES `orders` (`orders_id`)
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` VALUES (114,921500,1,27,68);
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orders_id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `amount` double DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `status` int NOT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`orders_id`),
  KEY `FK32ql8ubntj5uh44ph9659tiih` (`user_id`),
  CONSTRAINT `FK32ql8ubntj5uh44ph9659tiih` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (27,'100, Phường Nông Trang, Thành phố Việt Trì, Tỉnh Phú Thọ',921500,'2023-05-17 06:43:37','0358888999',0,8);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(1000) DEFAULT NULL,
  `discount` int NOT NULL,
  `entered_date` date DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` int NOT NULL,
  `sold` int NOT NULL,
  `status` bit(1) DEFAULT NULL,
  `category_id` bigint DEFAULT NULL,
  `avgrating` double DEFAULT NULL,
  `ratingcount` int NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `FKog2rp4qthbtt2lfyhfo32lsw9` (`category_id`),
  CONSTRAINT `FKog2rp4qthbtt2lfyhfo32lsw9` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (56,'Whey Rule 1 Protein là sản phẩm phát triển cơ bắp cung cấp 100% Whey Isolate và Hydrolyzed hấp thu nhanh. Whey Rule 1 protein nhập khẩu chính hãng, cam kết chất lượng, giá rẻ nhất tại Hà Nội & Tp.HCM.',17,'2023-05-05','https://res.cloudinary.com/dp2mdpvur/image/upload/v1683302735/products/luivlamhcct55xhs0tqk.webp','Rule 1 Proteins 5Lbs (2.23kg)',2020000,100,0,_binary '',10,NULL,0),(57,'Rule 1 Whey Blend là sản phẩm hỗ trợ phục hồi và phát triển cơ bắp vượt trội với công thức 3 nguồn protein : Whey Hydrolysate, Whey Isolate và Whey Concentrate. Rule 1 Whey Blend được nhập khẩu chính hãng, cam kết chất lượng, giá rẻ tốt nhất Hà Nội & Tp.HCM',10,'2023-05-05','https://res.cloudinary.com/dp2mdpvur/image/upload/v1683302785/products/plzwnnrni7xqgsmhaswx.jpg','Rule 1 Whey Blend 5Lbs (2.27kg)',1550000,10,0,_binary '',10,NULL,0),(58,'Whey Gold Standard 10lbs sản phẩm sữa tăng cơ uy tín bán chạy hơn 30 năm, cam kết chất lượng, nhập khẩu chính hãng giá rẻ nhất Hà Nội, TPHCM.',0,'2023-05-05','https://res.cloudinary.com/dp2mdpvur/image/upload/v1683302846/products/f1c73vjx5jyp0mtpir1h.jpg','100% Whey Gold Standard 10Lbs (4.5kg)',3290000,100,0,_binary '',10,NULL,0),(59,'Platinum HydroWhey ON là sản phẩm tăng cơ bắp hiệu quả nhất với 100% Whey thủy phân hấp thu nhanh, chính hãng Optimum Nutrition và giá tốt nhất tại Hà Nội TPHCM',0,'2023-05-05','https://res.cloudinary.com/dp2mdpvur/image/upload/v1683302884/products/s28pcfnzncxlutqhgvmm.jpg','Platinum HydroWhey 3.5Lbs (1.59kg)',1950000,100,0,_binary '',10,NULL,0),(60,'Mutant ISO Surge là sản phẩm 100% Whey Isolate & Hydrolysate phát triển cơ bắp nhanh nhất, với hơn 15 hương vị lựa chọn, chính hãng uy tín và giá rẻ tại Hà Nội TpHCM.',15,'2023-05-05','https://res.cloudinary.com/dp2mdpvur/image/upload/v1683302948/products/mixq79ia2kvenmve5cav.webp','Mutant Iso Surge 5Lbs (2.3kg)',2300000,200,0,_binary '',10,NULL,0),(61,'Whey Rule 1 Proteins là sản phẩm tăng cơ nhanh TOP 1, bán chạy hàng đầu năm 2021 bởi chất lượng vượt trội, chính hãng và giá rẻ nhất tại Hà Nội, TpHCM…',0,'2023-05-05','https://res.cloudinary.com/dp2mdpvur/image/upload/v1683303000/products/fxsgfjyy8cin01aejnjx.jpg','Rule 1 Protein 10Lbs (4.5kg)',3770000,100,0,_binary '',10,NULL,0),(62,'Whey Gold Standard 100% là sản phẩm Whey tăng cơ với hơn 30 năm uy tín thương hiệu hàng đầu thế giới,cam kết chính hãng, chất lượng và giá rẻ nhất Hà Nội, TpHCM.',18,'2023-05-05','https://res.cloudinary.com/dp2mdpvur/image/upload/v1683303065/products/ywv6ptjxulsaocjxhs4j.webp','100% Whey Gold Standard 5Lbs (2.3kg)',1950000,100,0,_binary '',10,NULL,0),(63,'Whey BPI ISO HD là sản phẩm 100% Whey Isolate hỗ trợ phục hồi, phát triển cơ bắp hiệu quả. Cam kết nhập khẩu chính hãng uy tín và giá rẻ nhất tại Hà Nội, TpHCM.',0,'2023-05-05','https://res.cloudinary.com/dp2mdpvur/image/upload/v1683303096/products/t9no8gtqyey85oa0lzxu.webp','ISO HD 4.9Lbs (2.2kg)',1540000,100,0,_binary '',10,NULL,0),(64,'Bữa ăn nhanh, thông minh với Labrada Lean Pro 8 5lbs (2,27kg) sẽ giúp cho cơ bắp của bạn lớn hơn, mạnh mẽ hơn và gọn gàng nhanh chóng hơn bao giờ hết.',9,'2023-05-05','https://res.cloudinary.com/dp2mdpvur/image/upload/v1683303182/products/uaf1nssu5imawnm9d2na.jpg','Labrada Lean Pro 8 5Lbs (2.3kg)',1850000,100,0,_binary '',10,NULL,0),(65,'Ostrovit Whey Protein Isolate với 100% Whey Isolate tinh khiết hỗ trợ phục hồi, phát trượt cơ bắp vượt trội. Ostrovit Whey Protein Isolate nhập khẩu chính hãng, cam kết giá rẻ tốt nhất Hà Nội TpHCM.',0,'2023-05-05','https://res.cloudinary.com/dp2mdpvur/image/upload/v1683303211/products/ambvlufo8r59wf6amdfi.jpg','Ostrovit Whey Protein Isolate (700g)',750000,100,0,_binary '',10,NULL,0),(66,'Rule 1 Whey Blend 10lbs hỗ trợ phát triển cơ bắp vượt trội, giá rẻ. Sản phẩm nhập khẩu chính hãng, cam kết chất lượng, giá rẻ tốt nhất Hà Nội & Tp.HCM.',12,'2023-05-05','https://res.cloudinary.com/dp2mdpvur/image/upload/v1683303279/products/aa6jpnuc9ajpycqsjhab.jpg','Rule 1 Whey Blend 10Lbs (4.54kg)',2850000,100,0,_binary '',10,NULL,0),(67,'VitaXtrong ISO Pro được đánh giá là một trong những sản phẩm Whey Protein tinh khiết nhất hiện nay. ISOPRO 100% Hydrolyzed Whey Protein và không chứa đường lactose, gluten, chất béo bão hòa.',10,'2023-05-05','https://res.cloudinary.com/dp2mdpvur/image/upload/v1683303439/products/y8xikmmowbx3z7vqwxdm.webp','VitaXtrong ISO Pro 5Lbs (2.3kg)',2200000,100,0,_binary '',10,NULL,0),(68,'Whey Gold Standard 2Lbs là sản phẩm Whey Protein tăng cơ truyền thống size nhỏ của hãng ON. Whey Gold Standard 2lbs nhập khẩu chính hãng, giá rẻ tại Hà Nội TpHCM.',3,'2023-05-05','https://res.cloudinary.com/dp2mdpvur/image/upload/v1683303770/products/d1rxtzroeylelory657w.jpg','100% Whey Gold Standard 2Lbs (900g)',950000,100,0,_binary '',10,NULL,0),(69,'BioTechUSA ISO Whey ZERO được chiết lọc tinh chất từ whey protein (WPI) tinh khiết nhất, với thành phần độc đáo ZERO lactose, ZERO trans fat và ZERO cholesterol, phát triển cơ bắp vượt trội.',0,'2023-05-05','https://res.cloudinary.com/dp2mdpvur/image/upload/v1683303962/products/w3bdtweioucrnxrcqump.webp','ISO Whey Zero 5Lbs (2.3kg)',2150000,100,0,_binary '',10,NULL,0),(70,'Ostrovit Standard WPC80 bổ sung 100% Whey Protein Concentrate hỗ trợ phát triển cơ bắp. Ostrovit Standard WPC80 nhập khẩu chính hãng, cam kết giá rẻ tốt nhất Hà Nội TpHCM.',8,'2023-05-05','https://res.cloudinary.com/dp2mdpvur/image/upload/v1683304011/products/uvewwoeujfk2bpj2h2yk.jpg','Ostrovit Standard WPC80 5Lbs (2.3kg)',1250000,100,0,_binary '',10,NULL,0),(71,'Biotech Hydro Whey Zero cung cấp 100% Whey Hydrolyzed phát triển cơ bắp nhanh nhất.Biotech Hydro Whey Zero nhập khẩu chính hãng, cam kết chất lượng, giá rẻ nhất tại Hà Nội & Tp.HCM.',15,'2023-05-05','https://res.cloudinary.com/dp2mdpvur/image/upload/v1683304072/products/ltoumkpfd48dl6leebbe.webp','Hydro Whey Zero 4lbs (1.8kg)',2300000,100,0,_binary '',10,NULL,0),(72,'Lipo 6 Hardcore hỗ trợ sinh nhiệt đốt mỡ giảm cân tự nhiên, an toàn và lành tính. Sản phẩm được nhập khẩu chính hãng, cam kết giá rẻ tốt nhất Hà Nội TpHCM…',18,'2023-05-05','https://res.cloudinary.com/dp2mdpvur/image/upload/v1683314309/products/v2hhwvzmysta3cljchns.jpg','Lipo 6 Hardcore (60 viên)',550000,100,0,_binary '',16,NULL,0),(73,'Hydroxycut Elite là sản phẩm hỗ trợ giảm mỡ, tăng cường trao đổi chất, giảm mỡ nhanh. Hydroxycut Elite chính hãng, cam kết chất lượng, giá rẻ nhất tại Hà Nội & Tp.HCM.',22,'2023-05-05','https://res.cloudinary.com/dp2mdpvur/image/upload/v1683314335/products/lc0sadlrrxxawuy7oa4f.webp','Hydroxycut Hardcore Elite (100 viên)',550000,100,0,_binary '',16,NULL,0),(74,'Lipo 6 Stim Free là sản phẩm hỗ trợ giảm cân hoàn toàn không có caffeine,thành phần tự nhiên 100%. Sản phẩm nhập khẩu chính hãng, cam kết giá rẻ, tốt nhất tại Hà Nội TpHCM',47,'2023-05-05','https://res.cloudinary.com/dp2mdpvur/image/upload/v1683314419/products/sjipfn1428cng8ixsofu.jpg','Lipo 6 Stim Free (60 viên)',850000,200,0,_binary '',16,NULL,0),(75,'Ostrovit L Carnitine là sản phẩm bổ sung 1000mg L Carnitine hỗ trợ chuyển hóa mỡ thừa lành tính của cơ thể thành năng lượng hiệu quả, an toàn, giá rẻ…',0,'2023-05-05','https://res.cloudinary.com/dp2mdpvur/image/upload/v1683314459/products/r9cuacuar6wudv7nkpk0.jpg','Ostrovit L Carnitine 1000mg (90 viên)',350000,100,0,_binary '',16,NULL,0),(76,'Ostrovit CLA + Greentea + L-Carnitine là sản phẩm hỗ trợ giảm cân chuyển hóa mỡ thừa với sự kết hợp 3 trong 1, tăng cường trao đổi chất, giảm mỡ nhanh, hiệu quả',15,'2023-05-05','https://res.cloudinary.com/dp2mdpvur/image/upload/v1683314514/products/qc40t28tejluk58wv6e6.webp','Ostrovit CLA + Green tea + L-Carnitine (90 viên)',350000,100,0,_binary '',16,NULL,0),(77,'Yến mạch ngũ cốc ăn liền Granola thay thế bữa ăn phụ lành mạnh, hỗ trợ giảm cân hiệu quả. Yến mạch Granola nhập khẩu chính hãng Mỹ, giá rẻ tốt nhất Hà Nội TpHCM.',10,'2023-05-05','https://res.cloudinary.com/dp2mdpvur/image/upload/v1683314553/products/rgemmkq4r0f3rldybo7h.jpg','Yến Mạch Ngũ Cốc Quaker Simply Granola 2Lbs (978g)',560000,100,0,_binary '',16,NULL,0),(78,'Ostrovit Omega 3 Ultra bổ sung hàm lượng lớn Omega 3 thiết yếu cho sức khỏe, giúp cải thiện sức khỏe tim mạch, não bộ, chống viêm,… mang tới nhiều lợi ích.',0,'2023-05-05','https://res.cloudinary.com/dp2mdpvur/image/upload/v1683314678/products/cjgfxu0ok6dlbadk6dnw.jpg','Ostrovit Omega-3 Ultra (90 viên)',350000,100,0,_binary '',15,NULL,0),(79,'OstroVit Omega 3 là sản phẩm bổ sung Omega 3 cung cấp axit béo có lợi, thiết yếu cho sức khỏe. OstroVit Omega 3 chính hãng, chất lượng, giá rẻ nhất Hà Nội TpHCM.',33,'2023-05-05','https://res.cloudinary.com/dp2mdpvur/image/upload/v1683314716/products/g4ntzgzw4tgplcgazqau.jpg','Ostrovit Omega-3 (90 viên)',300000,100,0,_binary '',15,NULL,0),(80,'Now Omega 3 500 viên là sản phẩm bổ sung chất béo tốt thiết yếu có lợi cho sức khỏe. Now Omega 3 500 viên giá rẻ, chính hãng, cam kết chất lượng, hiệu quả…',20,'2023-05-05','https://res.cloudinary.com/dp2mdpvur/image/upload/v1683314841/products/mxfbalvfhvfena7osdnz.png','Now Omega-3 (500 viên)',850000,200,0,_binary '',15,NULL,0),(81,'Ostrovit Omega-3 D3+K2 (90 viên) là công thức tổng hợp 3 trong 1 hỗ trợ phát triển sức khỏe toàn diện bao gồm: tim mạch, xương khớp, não bộ,…',13,'2023-05-05','https://res.cloudinary.com/dp2mdpvur/image/upload/v1683314896/products/nloxy202blnxlp8mfwwu.png','Ostrovit Omega-3 D3+K2 (90 viên)',450000,100,0,_binary '',15,NULL,0),(82,'Now Omega 3 200 viên là sản phẩm bổ sung dầu cá hỗ trợ cải thiện tim mạch, tốt cho mắt, giảm cholesterol . Now Omega-3 nhập khẩu chính hãng, cam kết chất lượng, giá rẻ nhất tại Hà Nội & Tp.HCM.',5,'2023-05-05','https://res.cloudinary.com/dp2mdpvur/image/upload/v1683315014/products/ifvnyfkmmanbfjpzcpb1.jpg','Now Omega-3 (200 viên)',400000,100,0,_binary '',15,NULL,0);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rates`
--

DROP TABLE IF EXISTS `rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rates` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `comment` varchar(255) DEFAULT NULL,
  `rate_date` datetime DEFAULT NULL,
  `rating` double DEFAULT NULL,
  `order_detail_id` bigint DEFAULT NULL,
  `product_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKoesgfm245y1ula1pn74fw9mkk` (`order_detail_id`),
  KEY `FK4mdsmkrr7od84tpgxto2v3t2e` (`product_id`),
  KEY `FKanlgavwqngljux10mtly8qr6f` (`user_id`),
  CONSTRAINT `FK4mdsmkrr7od84tpgxto2v3t2e` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`),
  CONSTRAINT `FKanlgavwqngljux10mtly8qr6f` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `FKoesgfm245y1ula1pn74fw9mkk` FOREIGN KEY (`order_detail_id`) REFERENCES `order_details` (`order_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rates`
--

LOCK TABLES `rates` WRITE;
/*!40000 ALTER TABLE `rates` DISABLE KEYS */;
/*!40000 ALTER TABLE `rates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `user_id` bigint NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `FKihg20vygk8qb8lw0s573lqsmq` (`role_id`),
  CONSTRAINT `FKhfh9dx7w3ubf1co1vdev94g3f` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  CONSTRAINT `FKihg20vygk8qb8lw0s573lqsmq` FOREIGN KEY (`role_id`) REFERENCES `app_roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (7,1),(8,1),(2,2);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `user_id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `gender` bit(1) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `register_date` date DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'Hà Nội','trung@gmail.com',_binary '','https://res.cloudinary.com/dp2mdpvur/image/upload/v1683302513/customer/x3brlgxq4bnb791b3zud.jpg','admin','$2a$10$yvcT5zT/lDrM89Lofss6GeF0icqluuVVxo2QX4BehAh75k.eAzFIe','0987654321','2023-04-30',_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJncmVlbnlzaG9wLmFkbUBnbWFpbC5jb20iLCJzY29wZXMiOlt7ImF1dGhvcml0eSI6IlJPTEVfQURNSU4ifV0sImlzcyI6Imh0dHA6Ly9kZXZnbGFuLmNvbSIsImlhdCI6MTY0Nzc4MjE4MywiZXhwIjoxNjQ3ODAwMTgzfQ.cLQLN6HPjClhuJFdBro1WHKEKfA7wYbBa3Eg3uHfNAE'),(7,'Phu Tho','khachhang@gmail.com',_binary '','https://res.cloudinary.com/dp2mdpvur/image/upload/v1683315588/customer/nb8htos9ksobicjpew1h.jpg','Nguyen Hoang Trung','$2a$10$RByTOQZFGshaOA0Rwf9zpux8R.QdmyiC8sIV3rKw6zzZiOVNw59BC','0911112222','2023-05-05',_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJraGFjaGhhbmdAZ21haWwuY29tIiwic2NvcGVzIjpbeyJhdXRob3JpdHkiOiJST0xFX0FETUlOIn1dLCJpc3MiOiJodHRwOi8vZGV2Z2xhbi5jb20iLCJpYXQiOjE2ODMzMDUwMzcsImV4cCI6MTY4MzMyMzAzN30.8D3l54S_yvKDNHZl9zOned6TAGVeq9APnpcfvK3CIZc'),(8,'Phu Tho','trung@icloud.com',_binary '','https://res.cloudinary.com/dp2mdpvur/image/upload/v1682667679/ogit3spkplrdd2jqxdg5.png','Nguyen Thanh Trung','$2a$10$zO6wEYh2wZ9VrGagKOeDnOgEjLRZK5t97HTF3mWprecW1H3ApuMDq','0358888999','2023-05-16',_binary '','eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ0cnVuZ0BpY2xvdWQuY29tIiwic2NvcGVzIjpbeyJhdXRob3JpdHkiOiJST0xFX0FETUlOIn1dLCJpc3MiOiJodHRwOi8vZGV2Z2xhbi5jb20iLCJpYXQiOjE2ODQyODAzMjYsImV4cCI6MTY4NDI5ODMyNn0.JgS48Y8Jm9H7c_f3milAqTL6Voh2phGKMrQ64nUl73M');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-19  2:38:06
