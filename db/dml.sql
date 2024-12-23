-- MySQL dump 10.13  Distrib 8.0.38, for macos14 (arm64)
--
-- Host: 127.0.0.1    Database: trip
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Dumping data for table `msl_address`
--

LOCK TABLES `msl_address` WRITE;
/*!40000 ALTER TABLE `msl_address` DISABLE KEYS */;
INSERT INTO `msl_address` VALUES (1,'Home','123 Main St',NULL,'New York','NY','USA','10001'),(2,'Home','456 Maple Ave',NULL,'Los Angeles','CA','USA','90001'),(3,'Home','789 Oak St',NULL,'Chicago','IL','USA','60601'),(4,'Home','321 Pine St',NULL,'Houston','TX','USA','77001'),(5,'Home','654 Elm St',NULL,'Phoenix','AZ','USA','85001'),(6,'Home','987 Cedar Ave',NULL,'Philadelphia','PA','USA','19019'),(7,'Home','159 Spruce St',NULL,'San Antonio','TX','USA','78201'),(8,'Home','753 Birch St',NULL,'San Diego','CA','USA','92101'),(9,'Home','852 Walnut St',NULL,'Dallas','TX','USA','75201'),(10,'Home','951 Chestnut Ave',NULL,'San Jose','CA','USA','95101'),(11,'Home','357 Ash St',NULL,'Austin','TX','USA','73301'),(12,'Home','258 Willow St',NULL,'Jacksonville','FL','USA','32099'),(13,'Home','654 Palm Ave',NULL,'San Francisco','CA','USA','94101'),(14,'Home','147 Cypress St',NULL,'Columbus','OH','USA','43085'),(15,'Home','369 Redwood Ave',NULL,'Fort Worth','TX','USA','76101'),(16,'Home','482 Magnolia Blvd',NULL,'Charlotte','NC','USA','28202'),(17,'Home','593 Poplar Dr',NULL,'Indianapolis','IN','USA','46204'),(18,'Home','604 Sycamore Ln',NULL,'San Francisco','CA','USA','94102'),(19,'Home','715 Aspen Rd',NULL,'Columbus','OH','USA','43215'),(20,'Home','826 Beech St',NULL,'Fort Worth','TX','USA','76102'),(21,'Home','937 Dogwood Ave',NULL,'Charlotte','NC','USA','28203'),(22,'Home','148 Elmwood Dr',NULL,'Indianapolis','IN','USA','46205'),(23,'Home','259 Fir St',NULL,'Seattle','WA','USA','98101'),(24,'Home','360 Garden Ln',NULL,'Denver','CO','USA','80202'),(25,'Home','471 Holly Rd',NULL,'Washington','DC','USA','20001'),(26,'Home','582 Ivy St',NULL,'Boston','MA','USA','02108'),(27,'Home','693 Juniper Ave',NULL,'El Paso','TX','USA','79901'),(28,'Home','804 Lilac Blvd',NULL,'Nashville','TN','USA','37201'),(29,'Home','915 Maple St',NULL,'Detroit','MI','USA','48201'),(30,'Home','126 Oakwood Dr',NULL,'Memphis','TN','USA','37501'),(101,'Port','101 Port Blvd',NULL,'Miami','FL','USA','33132'),(102,'Port','202 Port St',NULL,'Los Angeles','CA','USA','90731'),(103,'Port','303 Harbor Rd',NULL,'New York','NY','USA','10007'),(104,'Port','404 Dock Ave',NULL,'Seattle','WA','USA','98121'),(105,'Port','505 Pier Ln',NULL,'Honolulu','HI','USA','96813'),(106,'Port','606 Wharf Dr',NULL,'Boston','MA','USA','02210'),(107,'Port','707 Marina Blvd',NULL,'San Francisco','CA','USA','94111'),(108,'Port','808 Anchorage St',NULL,'Galveston','TX','USA','77550'),(109,'Port','909 Quay Rd',NULL,'San Diego','CA','USA','92101'),(110,'Port','110 Bay St',NULL,'New Orleans','LA','USA','70130');
/*!40000 ALTER TABLE `msl_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `msl_booking`
--

LOCK TABLES `msl_booking` WRITE;
/*!40000 ALTER TABLE `msl_booking` DISABLE KEYS */;
INSERT INTO `msl_booking` VALUES (1,'2023-12-15','10:00:00',1,1),(2,'2023-12-22','11:00:00',2,2),(3,'2023-12-29','12:00:00',3,3),(4,'2024-01-05','13:00:00',4,4),(5,'2024-01-12','14:00:00',5,5),(6,'2024-01-19','15:00:00',6,6),(7,'2024-01-26','16:00:00',7,7),(8,'2024-02-02','17:00:00',8,8),(9,'2024-02-09','18:00:00',9,9),(10,'2024-02-16','19:00:00',10,10),(11,'2024-02-23','20:00:00',11,11),(12,'2024-03-01','10:00:00',12,12),(13,'2024-03-08','11:00:00',13,13),(14,'2024-03-15','12:00:00',14,14),(15,'2024-03-22','13:00:00',15,15),(16,'2024-03-29','14:00:00',16,16),(17,'2024-04-05','15:00:00',17,17),(18,'2024-04-12','16:00:00',18,18),(19,'2024-04-19','17:00:00',19,19),(20,'2024-04-26','18:00:00',20,20),(21,'2024-05-03','19:00:00',21,21),(22,'2024-05-10','20:00:00',22,22),(23,'2024-05-17','10:00:00',23,23),(24,'2024-05-24','11:00:00',24,24),(25,'2024-05-31','12:00:00',25,25),(26,'2024-06-07','13:00:00',26,26),(27,'2024-06-14','14:00:00',27,27),(28,'2024-06-21','15:00:00',28,28),(29,'2024-06-28','16:00:00',29,29),(30,'2024-07-05','17:00:00',30,30);
/*!40000 ALTER TABLE `msl_booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `msl_entertainment`
--

LOCK TABLES `msl_entertainment` WRITE;
/*!40000 ALTER TABLE `msl_entertainment` DISABLE KEYS */;
INSERT INTO `msl_entertainment` VALUES (1,'Theater - Deck 8','Show','Daily','8','18:00:00',0,'20:00:00'),(2,'Theater - Deck 10','Show','Daily','10','20:30:00',0,'22:30:00'),(3,'Casino','Gambling','Daily','7','12:00:00',21,'02:00:00'),(4,'Library - Deck 3','Quiet Zone','Daily','3','08:00:00',0,'22:00:00'),(5,'Library - Deck 4','Quiet Zone','Daily','4','08:00:00',0,'22:00:00'),(6,'Children Play Area','Play Area','Daily','3','09:00:00',0,'18:00:00'),(7,'Gym','Fitness','Daily','5','06:00:00',16,'22:00:00'),(8,'Outdoor Pool','Swimming','Daily','11','08:00:00',0,'20:00:00'),(9,'Indoor Pool','Swimming','Daily','9','08:00:00',0,'20:00:00'),(10,'Whirlpool - Deck 11','Relaxation','Daily','11','08:00:00',12,'22:00:00'),(11,'Whirlpool - Deck 9','Relaxation','Daily','9','08:00:00',12,'22:00:00'),(12,'Steam Room','Relaxation','Daily','9','08:00:00',16,'22:00:00'),(13,'Sauna Room','Relaxation','Daily','9','08:00:00',16,'22:00:00'),(14,'Yoga Room','Fitness','Daily','5','06:00:00',16,'20:00:00'),(15,'Night Club - Deck 8','Club','Daily','8','21:00:00',18,'02:00:00'),(16,'Night Club - Deck 11','Club','Daily','11','21:00:00',18,'02:00:00'),(17,'Tennis Court','Sports','Daily','11','08:00:00',0,'20:00:00');
/*!40000 ALTER TABLE `msl_entertainment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `msl_entertainment_trip`
--

LOCK TABLES `msl_entertainment_trip` WRITE;
/*!40000 ALTER TABLE `msl_entertainment_trip` DISABLE KEYS */;
INSERT INTO `msl_entertainment_trip` VALUES (1,1,'ET1-1'),(1,3,'ET1-3'),(1,5,'ET1-5'),(10,2,'ET10-2'),(10,4,'ET10-4'),(2,2,'ET2-2'),(2,4,'ET2-4'),(3,1,'ET3-1'),(3,3,'ET3-3'),(3,5,'ET3-5'),(4,2,'ET4-2'),(4,4,'ET4-4'),(5,1,'ET5-1'),(5,3,'ET5-3'),(5,5,'ET5-5'),(6,2,'ET6-2'),(6,4,'ET6-4'),(7,1,'ET7-1'),(7,3,'ET7-3'),(7,5,'ET7-5'),(8,2,'ET8-2'),(8,4,'ET8-4'),(9,1,'ET9-1'),(9,3,'ET9-3'),(9,5,'ET9-5');
/*!40000 ALTER TABLE `msl_entertainment_trip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `msl_group`
--

LOCK TABLES `msl_group` WRITE;
/*!40000 ALTER TABLE `msl_group` DISABLE KEYS */;
INSERT INTO `msl_group` VALUES (1,'Smith Family Reunion',1),(2,'Corporate Retreat',2),(3,'Friends Getaway',3),(4,'Wedding Party',4),(5,'Alumni Cruise',5),(6,'Book Club',6),(7,'Yoga Enthusiasts',7),(8,'Photography Group',8),(9,'Food Lovers',9),(10,'Music Band',10),(11,'Art Class',11),(12,'Dance Troupe',12),(13,'Sports Fans',13),(14,'Adventure Seekers',14),(15,'Nature Lovers',15),(16,'History Buffs',16),(17,'Bird Watchers',17),(18,'Culinary Experts',18),(19,'Fitness Freaks',19),(20,'Wine Tasters',20),(21,'Gaming Guild',21),(22,'Marathon Runners',22),(23,'Chess Club',23),(24,'Movie Fans',24),(25,'Science Geeks',25),(26,'Literature Lovers',26),(27,'Travel Bloggers',27),(28,'Philosophy Circle',28),(29,'Tech Enthusiasts',29),(30,'Environmentalists',30);
/*!40000 ALTER TABLE `msl_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `msl_grouppackage`
--

LOCK TABLES `msl_grouppackage` WRITE;
/*!40000 ALTER TABLE `msl_grouppackage` DISABLE KEYS */;
INSERT INTO `msl_grouppackage` VALUES ('GP1','2023-12-16',1680.00,'2024-01-01','2024-01-07',1,1),('GP10','2024-02-17',360.00,'2024-03-04','2024-03-10',10,5),('GP11','2024-02-24',1680.00,'2024-03-11','2024-03-17',11,1),('GP12','2024-03-03',1680.00,'2024-03-18','2024-03-24',12,2),('GP13','2024-03-10',150.00,'2024-03-25','2024-03-31',13,3),('GP14','2024-03-17',250.00,'2024-04-01','2024-04-07',14,4),('GP15','2024-03-24',360.00,'2024-04-08','2024-04-14',15,5),('GP16','2024-03-31',1680.00,'2024-04-15','2024-04-21',16,1),('GP17','2024-04-07',1680.00,'2024-04-22','2024-04-28',17,2),('GP18','2024-04-14',150.00,'2024-04-29','2024-05-05',18,3),('GP19','2024-04-21',250.00,'2024-05-06','2024-05-12',19,4),('GP2','2023-12-23',1680.00,'2024-01-08','2024-01-14',2,2),('GP20','2024-04-28',360.00,'2024-05-13','2024-05-19',20,5),('GP21','2024-05-05',1680.00,'2024-05-20','2024-05-26',21,1),('GP22','2024-05-12',1680.00,'2024-05-27','2024-06-02',22,2),('GP23','2024-05-19',150.00,'2024-06-03','2024-06-09',23,3),('GP24','2024-05-26',250.00,'2024-06-10','2024-06-16',24,4),('GP25','2024-06-02',360.00,'2024-06-17','2024-06-23',25,5),('GP26','2024-06-09',1680.00,'2024-06-24','2024-06-30',26,1),('GP27','2024-06-16',1680.00,'2024-07-01','2024-07-07',27,2),('GP28','2024-06-23',150.00,'2024-07-08','2024-07-14',28,3),('GP29','2024-06-30',250.00,'2024-07-15','2024-07-21',29,4),('GP3','2023-12-30',150.00,'2024-01-15','2024-01-21',3,3),('GP30','2024-07-07',360.00,'2024-07-22','2024-07-28',30,5),('GP4','2024-01-06',250.00,'2024-01-22','2024-01-28',4,4),('GP5','2024-01-13',360.00,'2024-01-29','2024-02-04',5,5),('GP6','2024-01-20',1680.00,'2024-02-05','2024-02-11',6,1),('GP7','2024-01-27',1680.00,'2024-02-12','2024-02-18',7,2),('GP8','2024-02-03',150.00,'2024-02-19','2024-02-25',8,3),('GP9','2024-02-10',250.00,'2024-02-26','2024-03-03',9,4);
/*!40000 ALTER TABLE `msl_grouppackage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `msl_invoice`
--

LOCK TABLES `msl_invoice` WRITE;
/*!40000 ALTER TABLE `msl_invoice` DISABLE KEYS */;
INSERT INTO `msl_invoice` VALUES (1,'2023-12-21',3500.00,'2023-12-31'),(2,'2023-12-28',3000.00,'2024-01-07'),(3,'2024-01-04',2800.00,'2024-01-14'),(4,'2024-01-11',4000.00,'2024-01-21'),(5,'2024-01-18',4500.00,'2024-01-28'),(6,'2024-01-25',3800.00,'2024-02-04'),(7,'2024-02-01',3300.00,'2024-02-11'),(8,'2024-02-08',3100.00,'2024-02-18'),(9,'2024-02-15',4200.00,'2024-02-25'),(10,'2024-02-22',4700.00,'2024-03-04'),(11,'2024-03-01',3900.00,'2024-03-11'),(12,'2024-03-08',3400.00,'2024-03-18'),(13,'2024-03-15',3200.00,'2024-03-25'),(14,'2024-03-22',4300.00,'2024-04-01'),(15,'2024-03-29',4800.00,'2024-04-08'),(16,'2024-04-05',4000.00,'2024-04-15'),(17,'2024-04-12',3500.00,'2024-04-22'),(18,'2024-04-19',3300.00,'2024-04-29'),(19,'2024-04-26',4400.00,'2024-05-06'),(20,'2024-05-03',4900.00,'2024-05-13'),(21,'2024-05-10',4100.00,'2024-05-20'),(22,'2024-05-17',3600.00,'2024-05-27'),(23,'2024-05-24',3400.00,'2024-06-03'),(24,'2024-05-31',4500.00,'2024-06-10'),(25,'2024-06-07',5000.00,'2024-06-17'),(26,'2024-06-14',4200.00,'2024-06-24'),(27,'2024-06-21',3700.00,'2024-07-01'),(28,'2024-06-28',3500.00,'2024-07-08'),(29,'2024-07-05',4600.00,'2024-07-15'),(30,'2024-07-12',5100.00,'2024-07-22');
/*!40000 ALTER TABLE `msl_invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `msl_package`
--

LOCK TABLES `msl_package` WRITE;
/*!40000 ALTER TABLE `msl_package` DISABLE KEYS */;
INSERT INTO `msl_package` VALUES (1,'Water and Non-Alcoholic',40.00,0.00,'All Ages','Per Night'),(2,'Unlimited Bar',80.00,0.00,'Over 21','Per Night'),(3,'Internet 200 minutes, 100 GB',0.00,150.00,'Over 5','Per Trip'),(4,'Unlimited internet',0.00,250.00,'Over 5','Per Trip'),(5,'Specialty dining',60.00,0.00,'Over 5','Per Night');
/*!40000 ALTER TABLE `msl_package` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `msl_passenger`
--

LOCK TABLES `msl_passenger` WRITE;
/*!40000 ALTER TABLE `msl_passenger` DISABLE KEYS */;
INSERT INTO `msl_passenger` VALUES ('P1','John','Smith','1980-05-15','M','USA','john.smith@example.com','555-1001',1,1,1,1,1,'U001'),('P10','Robert','Brown','1985-03-25','M','USA','robert.brown@example.com','555-4001',4,4,4,4,4,'U010'),('P11','Jessica','Brown','1987-07-30','F','USA','jessica.brown@example.com','555-4002',4,4,4,4,4,'U011'),('P12','Sophia','Brown','2015-12-05','F','USA','sophia.brown@example.com','555-4003',4,4,4,4,4,'U012'),('P13','Daniel','Jones','1970-06-10','M','USA','daniel.jones@example.com','555-5001',5,5,5,5,5,'U013'),('P14','Karen','Jones','1972-09-15','F','USA','karen.jones@example.com','555-5002',5,5,5,5,5,'U014'),('P15','Nathan','Jones','1998-11-20','M','USA','nathan.jones@example.com','555-5003',5,5,5,5,5,'U015'),('P16','Ashley','Jones','2000-01-25','F','USA','ashley.jones@example.com','555-5004',5,5,5,5,5,'U016'),('P17','Matthew','Garcia','1988-04-14','M','USA','matthew.garcia@example.com','555-6001',6,6,6,1,6,'U017'),('P18','Amanda','Martinez','1986-07-19','F','USA','amanda.martinez@example.com','555-7001',7,7,7,2,7,'U018'),('P19','Christopher','Martinez','1984-02-23','M','USA','christopher.martinez@example.com','555-7002',7,7,7,2,7,'U019'),('P2','Emily','Smith','1982-07-20','F','USA','emily.smith@example.com','555-1002',1,1,1,1,1,'U002'),('P20','Patricia','Hernandez','1993-05-28','F','USA','patricia.hernandez@example.com','555-8001',8,8,8,3,8,'U020'),('P21','Kevin','Hernandez','1995-09-03','M','USA','kevin.hernandez@example.com','555-8002',8,8,8,3,8,'U021'),('P22','Jennifer','Lopez','1979-08-12','F','USA','jennifer.lopez@example.com','555-9001',9,9,9,4,9,'U022'),('P23','Brian','Lopez','1981-12-17','M','USA','brian.lopez@example.com','555-9002',9,9,9,4,9,'U023'),('P24','Samantha','Lopez','2012-02-22','F','USA','samantha.lopez@example.com','555-9003',9,9,9,4,9,'U024'),('P25','Anthony','Gonzalez','1983-03-27','M','USA','anthony.gonzalez@example.com','555-10001',10,10,10,5,10,'U025'),('P26','Michelle','Wilson','1991-06-01','F','USA','michelle.wilson@example.com','555-11001',11,11,11,1,11,'U026'),('P27','Thomas','Wilson','1989-10-06','M','USA','thomas.wilson@example.com','555-11002',11,11,11,1,11,'U027'),('P28','Elizabeth','Anderson','1987-01-11','F','USA','elizabeth.anderson@example.com','555-12001',12,12,12,2,12,'U028'),('P29','Mark','Anderson','1985-05-16','M','USA','mark.anderson@example.com','555-12002',12,12,12,2,12,'U029'),('P3','Michael','Smith','2010-09-05','M','USA','michael.smith@example.com','555-1003',1,1,1,1,1,'U003'),('P30','Charles','Thomas','1978-08-21','M','USA','charles.thomas@example.com','555-13001',13,13,13,3,13,'U030'),('P4','Sarah','Smith','2012-11-12','F','USA','sarah.smith@example.com','555-1004',1,1,1,1,1,'U004'),('P5','David','Johnson','1975-02-18','M','USA','david.johnson@example.com','555-2001',2,2,2,2,2,'U005'),('P6','Laura','Johnson','1978-04-22','F','USA','laura.johnson@example.com','555-2002',2,2,2,2,2,'U006'),('P7','Emma','Johnson','2005-06-30','F','USA','emma.johnson@example.com','555-2003',2,2,2,2,2,'U007'),('P8','James','Williams','1990-08-15','M','USA','james.williams@example.com','555-3001',3,3,3,3,3,'U008'),('P9','Olivia','Williams','1992-10-20','F','USA','olivia.williams@example.com','555-3002',3,3,3,3,3,'U009');
/*!40000 ALTER TABLE `msl_passenger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `msl_payment`
--

LOCK TABLES `msl_payment` WRITE;
/*!40000 ALTER TABLE `msl_payment` DISABLE KEYS */;
INSERT INTO `msl_payment` VALUES (1,'2023-12-20',3500.00,'Credit Card',1,1),(2,'2023-12-27',3000.00,'Debit Card',2,2),(3,'2024-01-03',2800.00,'PayPal',3,3),(4,'2024-01-10',4000.00,'Credit Card',4,4),(5,'2024-01-17',4500.00,'Debit Card',5,5),(6,'2024-01-24',3800.00,'PayPal',6,6),(7,'2024-01-31',3300.00,'Credit Card',7,7),(8,'2024-02-07',3100.00,'Debit Card',8,8),(9,'2024-02-14',4200.00,'PayPal',9,9),(10,'2024-02-21',4700.00,'Credit Card',10,10),(11,'2024-02-28',3900.00,'Debit Card',11,11),(12,'2024-03-07',3400.00,'PayPal',12,12),(13,'2024-03-14',3200.00,'Credit Card',13,13),(14,'2024-03-21',4300.00,'Debit Card',14,14),(15,'2024-03-28',4800.00,'PayPal',15,15),(16,'2024-04-04',4000.00,'Credit Card',16,16),(17,'2024-04-11',3500.00,'Debit Card',17,17),(18,'2024-04-18',3300.00,'PayPal',18,18),(19,'2024-04-25',4400.00,'Credit Card',19,19),(20,'2024-05-02',4900.00,'Debit Card',20,20),(21,'2024-05-09',4100.00,'PayPal',21,21),(22,'2024-05-16',3600.00,'Credit Card',22,22),(23,'2024-05-23',3400.00,'Debit Card',23,23),(24,'2024-05-30',4500.00,'PayPal',24,24),(25,'2024-06-06',5000.00,'Credit Card',25,25),(26,'2024-06-13',4200.00,'Debit Card',26,26),(27,'2024-06-20',3700.00,'PayPal',27,27),(28,'2024-06-27',3500.00,'Credit Card',28,28),(29,'2024-07-04',4600.00,'Debit Card',29,29),(30,'2024-07-11',5100.00,'PayPal',30,30);
/*!40000 ALTER TABLE `msl_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `msl_port`
--

LOCK TABLES `msl_port` WRITE;
/*!40000 ALTER TABLE `msl_port` DISABLE KEYS */;
INSERT INTO `msl_port` VALUES (1,'Port of Miami','Miami International Airport','P1',101),(2,'Port of Los Angeles','Los Angeles International Airport','P2',102),(3,'Port of New York','John F. Kennedy International Airport','P3',103),(4,'Port of Seattle','Seattle-Tacoma International Airport','P4',104),(5,'Port of Honolulu','Daniel K. Inouye International Airport','P5',105),(6,'Port of Boston','Logan International Airport','P6',106),(7,'Port of San Francisco','San Francisco International Airport','P7',107),(8,'Port of Galveston','William P. Hobby Airport','P8',108),(9,'Port of San Diego','San Diego International Airport','P9',109),(10,'Port of New Orleans','Louis Armstrong New Orleans International Airport','P10',110);
/*!40000 ALTER TABLE `msl_port` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `msl_restaurant`
--

LOCK TABLES `msl_restaurant` WRITE;
/*!40000 ALTER TABLE `msl_restaurant` DISABLE KEYS */;
INSERT INTO `msl_restaurant` VALUES (1,'Common Buffett','Buffet','07:00:00','21:00:00',6,'Serves Breakfast, Lunch, Dinner'),(2,'Italian Specialty','Italian','18:00:00','22:00:00',8,'Serves Dinner only'),(3,'Mexican Specialty','Mexican','18:00:00','22:00:00',7,'Serves Dinner only'),(4,'La-carte Continental','Continental','12:00:00','20:00:00',6,'Serves Lunch and Dinner'),(5,'Tokyo Ramen Japanese','Japanese','12:00:00','20:00:00',5,'Serves Lunch and Dinner'),(6,'Ming Wok Chinese','Chinese','12:00:00','20:00:00',5,'Serves Lunch and Dinner'),(7,'Round Clock Café','Café','00:00:00','23:59:00',10,'24-hour beverages and light food'),(8,'Pool Bar','Bar','10:00:00','22:00:00',10,'Serves alcoholic beverages'),(9,'Stout Bar','Bar','10:00:00','22:00:00',7,'Serves alcoholic beverages');
/*!40000 ALTER TABLE `msl_restaurant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `msl_restaurant_trip`
--

LOCK TABLES `msl_restaurant_trip` WRITE;
/*!40000 ALTER TABLE `msl_restaurant_trip` DISABLE KEYS */;
INSERT INTO `msl_restaurant_trip` VALUES (1,1,'RT1-1'),(2,1,'RT1-2'),(3,1,'RT1-3'),(4,1,'RT1-4'),(5,1,'RT1-5'),(1,2,'RT2-1'),(3,2,'RT2-3'),(5,2,'RT2-5'),(2,3,'RT3-2'),(4,3,'RT3-4'),(1,5,'RT5-1'),(3,5,'RT5-3'),(5,5,'RT5-5'),(2,6,'RT6-2'),(4,6,'RT6-4'),(1,7,'RT7-1'),(2,7,'RT7-2'),(3,7,'RT7-3'),(4,7,'RT7-4'),(5,7,'RT7-5'),(5,9,'RT9-5');
/*!40000 ALTER TABLE `msl_restaurant_trip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `msl_ship`
--

LOCK TABLES `msl_ship` WRITE;
/*!40000 ALTER TABLE `msl_ship` DISABLE KEYS */;
INSERT INTO `msl_ship` VALUES (1,'MS Majesty',4000),(2,'SS Voyager',3500),(3,'MV Oceanic',3000),(4,'MS Explorer',4500),(5,'SS Odyssey',5000);
/*!40000 ALTER TABLE `msl_ship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `msl_stateroom`
--

LOCK TABLES `msl_stateroom` WRITE;
/*!40000 ALTER TABLE `msl_stateroom` DISABLE KEYS */;
INSERT INTO `msl_stateroom` VALUES (1,'1001','The Haven Suite',500.00,'1000 SQFT',6,3,'Starboard Side',2),(2,'1002','The Haven Suite',550.00,'1000 SQFT',6,3,'Port Side',2),(3,'1003','The Haven Suite',600.00,'1000 SQFT',6,3,'Stern',2),(4,'1004','The Haven Suite',650.00,'1000 SQFT',6,3,'Bow',2),(5,'2001','Club Balcony Suite',350.00,'800 SQFT',4,2,'Starboard Side',2),(6,'2002','Club Balcony Suite',375.00,'800 SQFT',4,2,'Port Side',2),(7,'2003','Club Balcony Suite',400.00,'800 SQFT',4,2,'Stern',2),(8,'2004','Club Balcony Suite',425.00,'800 SQFT',4,2,'Bow',2),(9,'3001','Family Large Balcony',300.00,'600 SQFT',4,2,'Starboard Side',1),(10,'3002','Family Large Balcony',325.00,'600 SQFT',4,2,'Port Side',1),(11,'3003','Family Large Balcony',350.00,'600 SQFT',4,2,'Stern',1),(12,'3004','Family Large Balcony',375.00,'600 SQFT',4,2,'Bow',1),(13,'4001','Family Balcony',250.00,'400 SQFT',4,2,'Starboard Side',1),(14,'4002','Family Balcony',275.00,'400 SQFT',4,2,'Port Side',1),(15,'4003','Family Balcony',300.00,'400 SQFT',4,2,'Stern',1),(16,'4004','Family Balcony',325.00,'400 SQFT',4,2,'Bow',1),(17,'5001','Oceanview window',200.00,'300 SQFT',2,1,'Starboard Side',0),(18,'5002','Oceanview window',225.00,'300 SQFT',2,1,'Port Side',0),(19,'5003','Oceanview window',250.00,'300 SQFT',2,1,'Stern',0),(20,'5004','Oceanview window',275.00,'300 SQFT',2,1,'Bow',0),(21,'6001','Inside stateroom',150.00,'200 SQFT',2,1,'Starboard Side',0),(22,'6002','Inside stateroom',175.00,'200 SQFT',2,1,'Port Side',0),(23,'6003','Inside stateroom',200.00,'200 SQFT',2,1,'Stern',0),(24,'6004','Inside stateroom',225.00,'200 SQFT',2,1,'Bow',0),(25,'7001','Studio stateroom',100.00,'150 SQFT',1,1,'Starboard Side',0),(26,'7002','Studio stateroom',125.00,'150 SQFT',1,1,'Port Side',0),(27,'7003','Studio stateroom',150.00,'150 SQFT',1,1,'Stern',0),(28,'7004','Studio stateroom',175.00,'150 SQFT',1,1,'Bow',0);
/*!40000 ALTER TABLE `msl_stateroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `msl_stateroom_trip`
--

LOCK TABLES `msl_stateroom_trip` WRITE;
/*!40000 ALTER TABLE `msl_stateroom_trip` DISABLE KEYS */;
INSERT INTO `msl_stateroom_trip` VALUES (1,1,'ST1-1'),(1,29,'ST1-29'),(10,10,'ST10-10'),(11,11,'ST11-11'),(12,12,'ST12-12'),(13,13,'ST13-13'),(14,14,'ST14-14'),(15,15,'ST15-15'),(16,16,'ST16-16'),(17,17,'ST17-17'),(18,18,'ST18-18'),(19,19,'ST19-19'),(2,2,'ST2-2'),(2,30,'ST2-30'),(20,20,'ST20-20'),(21,21,'ST21-21'),(22,22,'ST22-22'),(23,23,'ST23-23'),(24,24,'ST24-24'),(25,25,'ST25-25'),(26,26,'ST26-26'),(27,27,'ST27-27'),(28,28,'ST28-28'),(3,3,'ST3-3'),(4,4,'ST4-4'),(5,5,'ST5-5'),(6,6,'ST6-6'),(7,7,'ST7-7'),(8,8,'ST8-8'),(9,9,'ST9-9');
/*!40000 ALTER TABLE `msl_stateroom_trip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `msl_trip`
--

LOCK TABLES `msl_trip` WRITE;
/*!40000 ALTER TABLE `msl_trip` DISABLE KEYS */;
INSERT INTO `msl_trip` VALUES (1,'2024-01-01','2024-01-07',3500,1),(2,'2024-01-08','2024-01-14',3000,2),(3,'2024-01-15','2024-01-21',2800,3),(4,'2024-01-22','2024-01-28',4000,4),(5,'2024-01-29','2024-02-04',4500,5),(6,'2024-02-05','2024-02-11',3800,1),(7,'2024-02-12','2024-02-18',3300,2),(8,'2024-02-19','2024-02-25',3100,3),(9,'2024-02-26','2024-03-03',4200,4),(10,'2024-03-04','2024-03-10',4700,5),(11,'2024-03-11','2024-03-17',3900,1),(12,'2024-03-18','2024-03-24',3400,2),(13,'2024-03-25','2024-03-31',3200,3),(14,'2024-04-01','2024-04-07',4300,4),(15,'2024-04-08','2024-04-14',4800,5),(16,'2024-04-15','2024-04-21',4000,1),(17,'2024-04-22','2024-04-28',3500,2),(18,'2024-04-29','2024-05-05',3300,3),(19,'2024-05-06','2024-05-12',4400,4),(20,'2024-05-13','2024-05-19',4900,5),(21,'2024-05-20','2024-05-26',4100,1),(22,'2024-05-27','2024-06-02',3600,2),(23,'2024-06-03','2024-06-09',3400,3),(24,'2024-06-10','2024-06-16',4500,4),(25,'2024-06-17','2024-06-23',5000,5),(26,'2024-06-24','2024-06-30',4200,1),(27,'2024-07-01','2024-07-07',3700,2),(28,'2024-07-08','2024-07-14',3500,3),(29,'2024-07-15','2024-07-21',4600,4),(30,'2024-07-22','2024-07-28',5100,5);
/*!40000 ALTER TABLE `msl_trip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `msl_user`
--

LOCK TABLES `msl_user` WRITE;
/*!40000 ALTER TABLE `msl_user` DISABLE KEYS */;
INSERT INTO `msl_user` VALUES ('U001','john_smith','9014b0d7a76d904bd958635a3c3399b7','Customer'),('U002','emily_smith','e917ad489e32a470f3f4c1ae579accc8','Customer'),('U003','michael_smith','823cd853eaf76d5a206ea4e87f15c69b','Customer'),('U004','sarah_smith','6cc5832fab2ef52a9879ab8e26e9701b','Customer'),('U005','david_johnson','b8302d9c76f3c9028e68505b0ea10d01','Customer'),('U006','laura_johnson','f249bae5bc25786c78feaeb08d3902de','Customer'),('U007','emma_johnson','09c3a7be02e519be98a9636d6c742429','Customer'),('U008','james_williams','a99e10cd3dd18d524feeec81ef9fe0cb','Customer'),('U009','olivia_williams','b903b99969f0dedd942cbeb22d22dd22','Customer'),('U010','robert_brown','b4edd84bb84b3fad8ac623dc076d5c83','Customer'),('U011','jessica_brown','a14857924e1b22b89fab3a188935b0fe','Customer'),('U012','sophia_brown','1eb636c73be9788da1266585636a315e','Customer'),('U013','daniel_jones','fd4cfb7820f5d691b3e924d37f1f8945','Customer'),('U014','karen_jones','0d1620b97fc6657e325856ee48978eb1','Customer'),('U015','nathan_jones','198b6c0ca41583d4654e46d8c7c814e2','Customer'),('U016','ashley_jones','ef49d9877a81b66ca0725096d80847be','Customer'),('U017','matthew_garcia','bc837dbed30ac0f0cc8cdc1aa81370dd','Customer'),('U018','amanda_martinez','253b3c536ee3a24fc2de37fe2cb7f064','Customer'),('U019','christopher_martinez','3aa5556e052d00f92c177953b15b0ec9','Customer'),('U020','patricia_hernandez','1e8eee2d4d319f14fe49acf0e6d0db84','Customer'),('U021','kevin_hernandez','025960f9ad7da84b1260111619473d60','Customer'),('U022','jennifer_lopez','7c9a04ac632b43f950d4c49a483ecd1d','Customer'),('U023','brian_lopez','66b62d5efb44005fb2c7444533f67071','Customer'),('U024','samantha_lopez','86ec68c835460283b94e19a53afb2702','Customer'),('U025','anthony_gonzalez','233ec5585eeebc7d83224f8f090041d6','Customer'),('U026','michelle_wilson','1a07f40542f453d88b48608b4d690955','Customer'),('U027','thomas_wilson','dad16fc059bce19f64298d853e47d61e','Customer'),('U028','elizabeth_anderson','cea542b94a94e4c2bb34ebd4a60d10f0','Customer'),('U029','mark_anderson','a388ef90af01dddcf279f09c0b6e72a6','Customer'),('U030','charles_thomas','1557761d74f7a27400a03dcdbb140075','Customer'),('U100','alice_admin','c32cc1f24d50f1f573d8d69943c80b1b','staff'),('U101','bob_portmgr','64da5dfb859bb7d3c8d3ecec56726711','staff'),('U102','carol_tripcoordinator','7bcd4cbb595a95c55529dd601707f7cf','staff'),('U103','dave_finance','f2f19e94ab694bd3b77ba5467a022f1a','staff'),('U104','eve_opsmanager','17fae2800a9540d4872cb73315fa0c76','staff'),('U105','aaa','202cb962ac59075b964b07152d234b70','Customer'),('U106','root','202cb962ac59075b964b07152d234b70','staff'),('U107','a123','202cb962ac59075b964b07152d234b70','Customer'),('U108','a123','202cb962ac59075b964b07152d234b70','Customer'),('U109','a123','202cb962ac59075b964b07152d234b70','Customer'),('U110','a123','202cb962ac59075b964b07152d234b70','Customer'),('U111','a123','202cb962ac59075b964b07152d234b70','Customer'),('U112','a123','202cb962ac59075b964b07152d234b70','Customer'),('U113','a123','202cb962ac59075b964b07152d234b70','Customer'),('U114','a123','202cb962ac59075b964b07152d234b70','Customer'),('U115','a123','202cb962ac59075b964b07152d234b70','Customer'),('U116','a123','202cb962ac59075b964b07152d234b70','Customer');
/*!40000 ALTER TABLE `msl_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `trip_port`
--

LOCK TABLES `trip_port` WRITE;
/*!40000 ALTER TABLE `trip_port` DISABLE KEYS */;
INSERT INTO `trip_port` VALUES ('TP1-1','start',1,1,1,'2024-01-01 09:00:00','2024-01-01 18:00:00'),('TP1-2','itinerary',2,1,2,'2024-01-02 08:00:00','2024-01-02 17:00:00'),('TP1-3','itinerary',3,1,3,'2024-01-03 08:00:00','2024-01-03 17:00:00'),('TP1-4','end',4,1,4,'2024-01-07 07:00:00','2024-01-07 10:00:00'),('TP10-1','start',1,10,5,'2024-03-04 09:00:00','2024-03-04 18:00:00'),('TP10-2','itinerary',2,10,6,'2024-03-05 08:00:00','2024-03-05 17:00:00'),('TP10-3','itinerary',3,10,7,'2024-03-06 08:00:00','2024-03-06 17:00:00'),('TP10-4','end',4,10,3,'2024-03-10 07:00:00','2024-03-10 10:00:00'),('TP2-1','start',1,2,2,'2024-01-08 09:00:00','2024-01-08 18:00:00'),('TP2-2','itinerary',2,2,5,'2024-01-09 08:00:00','2024-01-09 17:00:00'),('TP2-3','itinerary',3,2,6,'2024-01-10 08:00:00','2024-01-10 17:00:00'),('TP2-4','end',4,2,3,'2024-01-14 07:00:00','2024-01-14 10:00:00'),('TP3-1','start',1,3,3,'2024-01-15 09:00:00','2024-01-15 18:00:00'),('TP3-2','itinerary',2,3,7,'2024-01-16 08:00:00','2024-01-16 17:00:00'),('TP3-3','itinerary',3,3,8,'2024-01-17 08:00:00','2024-01-17 17:00:00'),('TP3-4','end',4,3,4,'2024-01-21 07:00:00','2024-01-21 10:00:00'),('TP4-1','start',1,4,4,'2024-01-22 09:00:00','2024-01-22 18:00:00'),('TP4-2','itinerary',2,4,9,'2024-01-23 08:00:00','2024-01-23 17:00:00'),('TP4-3','itinerary',3,4,10,'2024-01-24 08:00:00','2024-01-24 17:00:00'),('TP4-4','end',4,4,1,'2024-01-28 07:00:00','2024-01-28 10:00:00'),('TP5-1','start',1,5,5,'2024-01-29 09:00:00','2024-01-29 18:00:00'),('TP5-2','itinerary',2,5,6,'2024-01-30 08:00:00','2024-01-30 17:00:00'),('TP5-3','itinerary',3,5,7,'2024-01-31 08:00:00','2024-01-31 17:00:00'),('TP5-4','end',4,5,2,'2024-02-04 07:00:00','2024-02-04 10:00:00'),('TP6-1','start',1,6,1,'2024-02-05 09:00:00','2024-02-05 18:00:00'),('TP6-2','itinerary',2,6,8,'2024-02-06 08:00:00','2024-02-06 17:00:00'),('TP6-3','itinerary',3,6,9,'2024-02-07 08:00:00','2024-02-07 17:00:00'),('TP6-4','end',4,6,3,'2024-02-11 07:00:00','2024-02-11 10:00:00'),('TP7-1','start',1,7,2,'2024-02-12 09:00:00','2024-02-12 18:00:00'),('TP7-2','itinerary',2,7,5,'2024-02-13 08:00:00','2024-02-13 17:00:00'),('TP7-3','itinerary',3,7,6,'2024-02-14 08:00:00','2024-02-14 17:00:00'),('TP7-4','end',4,7,4,'2024-02-18 07:00:00','2024-02-18 10:00:00'),('TP8-1','start',1,8,3,'2024-02-19 09:00:00','2024-02-19 18:00:00'),('TP8-2','itinerary',2,8,7,'2024-02-20 08:00:00','2024-02-20 17:00:00'),('TP8-3','itinerary',3,8,9,'2024-02-21 08:00:00','2024-02-21 17:00:00'),('TP8-4','end',4,8,5,'2024-02-25 07:00:00','2024-02-25 10:00:00'),('TP9-1','start',1,9,4,'2024-02-26 09:00:00','2024-02-26 18:00:00'),('TP9-2','itinerary',2,9,10,'2024-02-27 08:00:00','2024-02-27 17:00:00'),('TP9-3','itinerary',3,9,1,'2024-02-28 08:00:00','2024-02-28 17:00:00'),('TP9-4','end',4,9,2,'2024-03-03 07:00:00','2024-03-03 10:00:00');
/*!40000 ALTER TABLE `trip_port` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-10 13:36:32
