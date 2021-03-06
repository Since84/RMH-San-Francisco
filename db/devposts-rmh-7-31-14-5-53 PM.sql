# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 69.195.222.144 (MySQL 5.5.29-0ubuntu0.12.04.2)
# Database: rmh
# Generation Time: 2014-08-01 00:53:22 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table wp_postmeta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_postmeta`;

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`)
VALUES
	(1,2,'_wp_page_template','default'),
	(2,5,'_wp_attached_file','2014/07/cropped-logo.jpg'),
	(3,5,'_wp_attachment_context','custom-header'),
	(4,5,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:1050;s:6:\"height\";i:524;s:4:\"file\";s:24:\"2014/07/cropped-logo.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"cropped-logo-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"cropped-logo-300x149.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:149;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"cropped-logo-1024x511.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
	(5,5,'_wp_attachment_is_custom_header','rmh'),
	(6,6,'_wp_attached_file','2014/07/cropped-logo1.jpg'),
	(7,6,'_wp_attachment_context','custom-header'),
	(8,6,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:200;s:6:\"height\";i:99;s:4:\"file\";s:25:\"2014/07/cropped-logo1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"cropped-logo1-150x99.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:99;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
	(9,6,'_wp_attachment_is_custom_header','rmh'),
	(10,7,'_wp_attached_file','2014/07/logo.jpg'),
	(11,7,'_wp_attachment_context','custom-header'),
	(12,8,'_wp_attached_file','2014/07/logo1.jpg'),
	(13,8,'_wp_attachment_context','custom-header'),
	(14,8,'_wp_attachment_metadata','a:5:{s:5:\"width\";i:645;s:6:\"height\";i:322;s:4:\"file\";s:17:\"2014/07/logo1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"logo1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:17:\"logo1-300x149.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:149;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:10:{s:8:\"aperture\";i:0;s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";i:0;s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";i:0;s:3:\"iso\";i:0;s:13:\"shutter_speed\";i:0;s:5:\"title\";s:0:\"\";}}'),
	(15,8,'_wp_attachment_is_custom_header','rmh'),
	(16,9,'_menu_item_type','post_type'),
	(17,9,'_menu_item_menu_item_parent','20'),
	(18,9,'_menu_item_object_id','2'),
	(19,9,'_menu_item_object','page'),
	(20,9,'_menu_item_target',''),
	(21,9,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(22,9,'_menu_item_xfn',''),
	(23,9,'_menu_item_url',''),
	(25,10,'_menu_item_type','post_type'),
	(26,10,'_menu_item_menu_item_parent','0'),
	(27,10,'_menu_item_object_id','2'),
	(28,10,'_menu_item_object','page'),
	(29,10,'_menu_item_target',''),
	(30,10,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(31,10,'_menu_item_xfn',''),
	(32,10,'_menu_item_url',''),
	(33,12,'_edit_lock','1406614574:2'),
	(34,14,'_edit_lock','1406614776:2'),
	(35,14,'_edit_last','2'),
	(36,16,'_edit_lock','1406614794:2'),
	(37,16,'_edit_last','2'),
	(38,18,'_edit_last','2'),
	(39,18,'_edit_lock','1406614574:2'),
	(40,20,'_menu_item_type','post_type'),
	(41,20,'_menu_item_menu_item_parent','0'),
	(42,20,'_menu_item_object_id','18'),
	(43,20,'_menu_item_object','page'),
	(44,20,'_menu_item_target',''),
	(45,20,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(46,20,'_menu_item_xfn',''),
	(47,20,'_menu_item_url',''),
	(49,21,'_menu_item_type','post_type'),
	(50,21,'_menu_item_menu_item_parent','20'),
	(51,21,'_menu_item_object_id','16'),
	(52,21,'_menu_item_object','page'),
	(53,21,'_menu_item_target',''),
	(54,21,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(55,21,'_menu_item_xfn',''),
	(56,21,'_menu_item_url',''),
	(58,22,'_menu_item_type','post_type'),
	(59,22,'_menu_item_menu_item_parent','20'),
	(60,22,'_menu_item_object_id','14'),
	(61,22,'_menu_item_object','page'),
	(62,22,'_menu_item_target',''),
	(63,22,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(64,22,'_menu_item_xfn',''),
	(65,22,'_menu_item_url',''),
	(67,23,'_menu_item_type','post_type'),
	(68,23,'_menu_item_menu_item_parent','20'),
	(69,23,'_menu_item_object_id','2'),
	(70,23,'_menu_item_object','page'),
	(71,23,'_menu_item_target',''),
	(72,23,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(73,23,'_menu_item_xfn',''),
	(74,23,'_menu_item_url',''),
	(76,24,'_edit_lock','1406614726:2'),
	(77,24,'_edit_last','2'),
	(78,26,'_edit_last','2'),
	(79,26,'_edit_lock','1406614743:2'),
	(80,28,'_edit_lock','1406614760:2'),
	(81,28,'_edit_last','2'),
	(82,31,'_edit_lock','1406614833:2'),
	(83,31,'_edit_last','2'),
	(84,33,'_edit_last','2'),
	(85,33,'_edit_lock','1406614847:2'),
	(86,35,'_edit_lock','1406614858:2'),
	(87,35,'_edit_last','2'),
	(88,37,'_edit_lock','1406614875:2'),
	(89,37,'_edit_last','2'),
	(90,39,'_edit_lock','1406614904:2'),
	(91,39,'_edit_last','2'),
	(92,41,'_edit_lock','1406614924:2'),
	(93,41,'_edit_last','2'),
	(94,43,'_edit_lock','1406614940:2'),
	(95,43,'_edit_last','2'),
	(96,45,'_edit_lock','1406614966:2'),
	(97,45,'_edit_last','2'),
	(98,47,'_edit_lock','1406615131:2'),
	(99,48,'_edit_last','2'),
	(100,48,'_edit_lock','1406615005:2'),
	(101,50,'_edit_lock','1406615017:2'),
	(102,50,'_edit_last','2'),
	(103,52,'_edit_lock','1406615051:2'),
	(104,52,'_edit_last','2'),
	(105,54,'_edit_lock','1406615069:2'),
	(106,54,'_edit_last','2'),
	(107,56,'_edit_lock','1406789942:2'),
	(108,56,'_edit_last','2'),
	(109,58,'_menu_item_type','post_type'),
	(110,58,'_menu_item_menu_item_parent','0'),
	(111,58,'_menu_item_object_id','48'),
	(112,58,'_menu_item_object','page'),
	(113,58,'_menu_item_target',''),
	(114,58,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(115,58,'_menu_item_xfn',''),
	(116,58,'_menu_item_url',''),
	(118,59,'_menu_item_type','post_type'),
	(119,59,'_menu_item_menu_item_parent','58'),
	(120,59,'_menu_item_object_id','56'),
	(121,59,'_menu_item_object','page'),
	(122,59,'_menu_item_target',''),
	(123,59,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(124,59,'_menu_item_xfn',''),
	(125,59,'_menu_item_url',''),
	(127,60,'_menu_item_type','post_type'),
	(128,60,'_menu_item_menu_item_parent','58'),
	(129,60,'_menu_item_object_id','54'),
	(130,60,'_menu_item_object','page'),
	(131,60,'_menu_item_target',''),
	(132,60,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(133,60,'_menu_item_xfn',''),
	(134,60,'_menu_item_url',''),
	(136,61,'_menu_item_type','post_type'),
	(137,61,'_menu_item_menu_item_parent','58'),
	(138,61,'_menu_item_object_id','52'),
	(139,61,'_menu_item_object','page'),
	(140,61,'_menu_item_target',''),
	(141,61,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(142,61,'_menu_item_xfn',''),
	(143,61,'_menu_item_url',''),
	(145,62,'_menu_item_type','post_type'),
	(146,62,'_menu_item_menu_item_parent','58'),
	(147,62,'_menu_item_object_id','50'),
	(148,62,'_menu_item_object','page'),
	(149,62,'_menu_item_target',''),
	(150,62,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(151,62,'_menu_item_xfn',''),
	(152,62,'_menu_item_url',''),
	(154,63,'_menu_item_type','post_type'),
	(155,63,'_menu_item_menu_item_parent','0'),
	(156,63,'_menu_item_object_id','33'),
	(157,63,'_menu_item_object','page'),
	(158,63,'_menu_item_target',''),
	(159,63,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(160,63,'_menu_item_xfn',''),
	(161,63,'_menu_item_url',''),
	(163,64,'_menu_item_type','post_type'),
	(164,64,'_menu_item_menu_item_parent','63'),
	(165,64,'_menu_item_object_id','45'),
	(166,64,'_menu_item_object','page'),
	(167,64,'_menu_item_target',''),
	(168,64,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(169,64,'_menu_item_xfn',''),
	(170,64,'_menu_item_url',''),
	(172,65,'_menu_item_type','post_type'),
	(173,65,'_menu_item_menu_item_parent','63'),
	(174,65,'_menu_item_object_id','43'),
	(175,65,'_menu_item_object','page'),
	(176,65,'_menu_item_target',''),
	(177,65,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(178,65,'_menu_item_xfn',''),
	(179,65,'_menu_item_url',''),
	(181,66,'_menu_item_type','post_type'),
	(182,66,'_menu_item_menu_item_parent','63'),
	(183,66,'_menu_item_object_id','41'),
	(184,66,'_menu_item_object','page'),
	(185,66,'_menu_item_target',''),
	(186,66,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(187,66,'_menu_item_xfn',''),
	(188,66,'_menu_item_url',''),
	(190,67,'_menu_item_type','post_type'),
	(191,67,'_menu_item_menu_item_parent','63'),
	(192,67,'_menu_item_object_id','35'),
	(193,67,'_menu_item_object','page'),
	(194,67,'_menu_item_target',''),
	(195,67,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(196,67,'_menu_item_xfn',''),
	(197,67,'_menu_item_url',''),
	(199,68,'_menu_item_type','post_type'),
	(200,68,'_menu_item_menu_item_parent','67'),
	(201,68,'_menu_item_object_id','39'),
	(202,68,'_menu_item_object','page'),
	(203,68,'_menu_item_target',''),
	(204,68,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(205,68,'_menu_item_xfn',''),
	(206,68,'_menu_item_url',''),
	(208,69,'_menu_item_type','post_type'),
	(209,69,'_menu_item_menu_item_parent','67'),
	(210,69,'_menu_item_object_id','37'),
	(211,69,'_menu_item_object','page'),
	(212,69,'_menu_item_target',''),
	(213,69,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(214,69,'_menu_item_xfn',''),
	(215,69,'_menu_item_url',''),
	(217,70,'_menu_item_type','post_type'),
	(218,70,'_menu_item_menu_item_parent','0'),
	(219,70,'_menu_item_object_id','26'),
	(220,70,'_menu_item_object','page'),
	(221,70,'_menu_item_target',''),
	(222,70,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(223,70,'_menu_item_xfn',''),
	(224,70,'_menu_item_url',''),
	(226,71,'_menu_item_type','post_type'),
	(227,71,'_menu_item_menu_item_parent','70'),
	(228,71,'_menu_item_object_id','31'),
	(229,71,'_menu_item_object','page'),
	(230,71,'_menu_item_target',''),
	(231,71,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(232,71,'_menu_item_xfn',''),
	(233,71,'_menu_item_url',''),
	(235,72,'_menu_item_type','post_type'),
	(236,72,'_menu_item_menu_item_parent','70'),
	(237,72,'_menu_item_object_id','28'),
	(238,72,'_menu_item_object','page'),
	(239,72,'_menu_item_target',''),
	(240,72,'_menu_item_classes','a:1:{i:0;s:0:\"\";}'),
	(241,72,'_menu_item_xfn',''),
	(242,72,'_menu_item_url','');

/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table wp_posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wp_posts`;

CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`)
VALUES
	(1,1,'2014-07-24 18:50:09','2014-07-24 18:50:09','Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!','Hello world!','','publish','open','open','','hello-world','','','2014-07-24 18:50:09','2014-07-24 18:50:09','',0,'http://rmh.ag/?p=1',0,'post','',1),
	(2,1,'2014-07-24 18:50:09','2014-07-24 18:50:09','This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://rmh.ag/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!','Sample Page','','publish','open','open','','sample-page','','','2014-07-24 18:50:09','2014-07-24 18:50:09','',0,'http://rmh.ag/?page_id=2',0,'page','',0),
	(5,1,'2014-07-24 23:38:00','2014-07-24 23:38:00','http://rmh.ag/wp-content/uploads/2014/07/cropped-logo.jpg','cropped-logo.jpg','','inherit','closed','open','','cropped-logo-jpg','','','2014-07-24 23:38:00','2014-07-24 23:38:00','',0,'http://rmh.ag/wp-content/uploads/2014/07/cropped-logo.jpg',0,'attachment','image/jpeg',0),
	(6,1,'2014-07-24 23:41:10','2014-07-24 23:41:10','http://rmh.ag/wp-content/uploads/2014/07/cropped-logo1.jpg','cropped-logo1.jpg','','inherit','closed','open','','cropped-logo1-jpg','','','2014-07-24 23:41:10','2014-07-24 23:41:10','',0,'http://rmh.ag/wp-content/uploads/2014/07/cropped-logo1.jpg',0,'attachment','image/jpeg',0),
	(7,1,'2014-07-24 23:41:44','2014-07-24 23:41:44','http://rmh.ag/wp-content/uploads/2014/07/logo.jpg','logo.jpg','','inherit','open','open','','logo-jpg','','','2014-07-24 23:41:44','2014-07-24 23:41:44','',0,'http://rmh.ag/wp-content/uploads/2014/07/logo.jpg',0,'attachment','image/jpeg',0),
	(8,1,'2014-07-24 23:42:42','2014-07-24 23:42:42','http://rmh.ag/wp-content/uploads/2014/07/logo1.jpg','logo1.jpg','','inherit','closed','open','','logo1-jpg','','','2014-07-24 23:42:42','2014-07-24 23:42:42','',0,'http://rmh.ag/wp-content/uploads/2014/07/logo1.jpg',0,'attachment','image/jpeg',0),
	(9,1,'2014-07-25 23:42:31','2014-07-25 23:42:31','','Receive Updates','','publish','open','open','','receive-updates','','','2014-07-29 06:29:29','2014-07-29 06:29:29','',0,'http://rmh.ag/?p=9',4,'nav_menu_item','',0),
	(10,1,'2014-07-25 23:44:56','2014-07-25 23:44:56','','Receive Updates','','publish','open','open','','receive-updates-2','','','2014-07-25 23:44:56','2014-07-25 23:44:56','',0,'http://rmh.ag/?p=10',1,'nav_menu_item','',0),
	(11,2,'2014-07-29 06:15:48','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2014-07-29 06:15:48','0000-00-00 00:00:00','',0,'http://rmh.ag?p=11',0,'post','',0),
	(12,2,'2014-07-29 06:15:57','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2014-07-29 06:15:57','0000-00-00 00:00:00','',0,'http://rmh.ag?p=12',0,'post','',0),
	(13,2,'2014-07-29 06:16:25','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2014-07-29 06:16:25','0000-00-00 00:00:00','',0,'http://rmh.ag?page_id=13',0,'page','',0),
	(14,2,'2014-07-29 06:17:57','2014-07-29 06:17:57','','Mission','','publish','open','open','','mission','','','2014-07-29 06:21:59','2014-07-29 06:21:59','',18,'http://rmh.ag?page_id=14',0,'page','',0),
	(15,2,'2014-07-29 06:17:57','2014-07-29 06:17:57','','Mission','','inherit','open','open','','14-revision-v1','','','2014-07-29 06:17:57','2014-07-29 06:17:57','',14,'http://rmh.ag?p=15',0,'revision','',0),
	(16,2,'2014-07-29 06:18:18','2014-07-29 06:18:18','','History','','publish','open','open','','history','','','2014-07-29 06:22:17','2014-07-29 06:22:17','',18,'http://rmh.ag?page_id=16',0,'page','',0),
	(17,2,'2014-07-29 06:18:18','2014-07-29 06:18:18','','history','','inherit','open','open','','16-revision-v1','','','2014-07-29 06:18:18','2014-07-29 06:18:18','',16,'http://rmh.ag?p=17',0,'revision','',0),
	(18,2,'2014-07-29 06:18:36','2014-07-29 06:18:36','','Who We Are','','publish','open','open','','who-we-are','','','2014-07-29 06:18:36','2014-07-29 06:18:36','',0,'http://rmh.ag?page_id=18',0,'page','',0),
	(19,2,'2014-07-29 06:18:36','2014-07-29 06:18:36','','Who We Are','','inherit','open','open','','18-revision-v1','','','2014-07-29 06:18:36','2014-07-29 06:18:36','',18,'http://rmh.ag?p=19',0,'revision','',0),
	(20,2,'2014-07-29 06:20:28','2014-07-29 06:20:28',' ','','','publish','open','open','','20','','','2014-07-29 06:29:29','2014-07-29 06:29:29','',0,'http://rmh.ag?p=20',1,'nav_menu_item','',0),
	(21,2,'2014-07-29 06:20:28','2014-07-29 06:20:28',' ','','','publish','open','open','','21','','','2014-07-29 06:29:29','2014-07-29 06:29:29','',18,'http://rmh.ag?p=21',2,'nav_menu_item','',0),
	(22,2,'2014-07-29 06:20:28','2014-07-29 06:20:28',' ','','','publish','open','open','','22','','','2014-07-29 06:29:29','2014-07-29 06:29:29','',18,'http://rmh.ag?p=22',3,'nav_menu_item','',0),
	(23,2,'2014-07-29 06:20:29','2014-07-29 06:20:29',' ','','','publish','open','open','','23','','','2014-07-29 06:29:29','2014-07-29 06:29:29','',0,'http://rmh.ag?p=23',5,'nav_menu_item','',0),
	(24,2,'2014-07-29 06:20:59','2014-07-29 06:20:59','','Our Relationship with McDonald\'s','','publish','open','open','','our-relationship-with-mcdonalds','','','2014-07-29 06:20:59','2014-07-29 06:20:59','',18,'http://rmh.ag?page_id=24',0,'page','',0),
	(25,2,'2014-07-29 06:20:59','2014-07-29 06:20:59','','Our Relationship with McDonald\'s','','inherit','open','open','','24-revision-v1','','','2014-07-29 06:20:59','2014-07-29 06:20:59','',24,'http://rmh.ag?p=25',0,'revision','',0),
	(26,2,'2014-07-29 06:21:24','2014-07-29 06:21:24','','What We Do','','publish','open','open','','what-we-do','','','2014-07-29 06:21:24','2014-07-29 06:21:24','',0,'http://rmh.ag?page_id=26',0,'page','',0),
	(27,2,'2014-07-29 06:21:24','2014-07-29 06:21:24','','What We Do','','inherit','open','open','','26-revision-v1','','','2014-07-29 06:21:24','2014-07-29 06:21:24','',26,'http://rmh.ag?p=27',0,'revision','',0),
	(28,2,'2014-07-29 06:21:42','2014-07-29 06:21:42','','Scott Street House','','publish','open','open','','scott-street-house','','','2014-07-29 06:21:42','2014-07-29 06:21:42','',26,'http://rmh.ag?page_id=28',0,'page','',0),
	(29,2,'2014-07-29 06:21:42','2014-07-29 06:21:42','','Scott Street House','','inherit','open','open','','28-revision-v1','','','2014-07-29 06:21:42','2014-07-29 06:21:42','',28,'http://rmh.ag?p=29',0,'revision','',0),
	(30,2,'2014-07-29 06:22:17','2014-07-29 06:22:17','','History','','inherit','open','open','','16-revision-v1','','','2014-07-29 06:22:17','2014-07-29 06:22:17','',16,'http://rmh.ag?p=30',0,'revision','',0),
	(31,2,'2014-07-29 06:22:42','2014-07-29 06:22:42','','Mission Bay House','','publish','open','open','','mission-bay-house','','','2014-07-29 06:22:42','2014-07-29 06:22:42','',26,'http://rmh.ag?page_id=31',0,'page','',0),
	(32,2,'2014-07-29 06:22:42','2014-07-29 06:22:42','','Mission Bay House','','inherit','open','open','','31-revision-v1','','','2014-07-29 06:22:42','2014-07-29 06:22:42','',31,'http://rmh.ag?p=32',0,'revision','',0),
	(33,2,'2014-07-29 06:23:09','2014-07-29 06:23:09','','How You Can Help','','publish','open','open','','how-you-can-help','','','2014-07-29 06:23:09','2014-07-29 06:23:09','',0,'http://rmh.ag?page_id=33',0,'page','',0),
	(34,2,'2014-07-29 06:23:09','2014-07-29 06:23:09','','How You Can Help','','inherit','open','open','','33-revision-v1','','','2014-07-29 06:23:09','2014-07-29 06:23:09','',33,'http://rmh.ag?p=34',0,'revision','',0),
	(35,2,'2014-07-29 06:23:20','2014-07-29 06:23:20','','Donate','','publish','open','open','','donate','','','2014-07-29 06:23:20','2014-07-29 06:23:20','',33,'http://rmh.ag?page_id=35',0,'page','',0),
	(36,2,'2014-07-29 06:23:20','2014-07-29 06:23:20','','Donate','','inherit','open','open','','35-revision-v1','','','2014-07-29 06:23:20','2014-07-29 06:23:20','',35,'http://rmh.ag?p=36',0,'revision','',0),
	(37,2,'2014-07-29 06:23:34','2014-07-29 06:23:34','','Matching Gifts','','publish','open','open','','matching-gifts','','','2014-07-29 06:23:34','2014-07-29 06:23:34','',35,'http://rmh.ag?page_id=37',0,'page','',0),
	(38,2,'2014-07-29 06:23:34','2014-07-29 06:23:34','','Matching Gifts','','inherit','open','open','','37-revision-v1','','','2014-07-29 06:23:34','2014-07-29 06:23:34','',37,'http://rmh.ag?p=38',0,'revision','',0),
	(39,2,'2014-07-29 06:23:58','2014-07-29 06:23:58','','Donate Your Automobile','','publish','open','open','','donate-your-automobile','','','2014-07-29 06:23:58','2014-07-29 06:23:58','',35,'http://rmh.ag?page_id=39',0,'page','',0),
	(40,2,'2014-07-29 06:23:58','2014-07-29 06:23:58','','Donate Your Automobile','','inherit','open','open','','39-revision-v1','','','2014-07-29 06:23:58','2014-07-29 06:23:58','',39,'http://rmh.ag?p=40',0,'revision','',0),
	(41,2,'2014-07-29 06:24:26','2014-07-29 06:24:26','','Hearts & Hands Campaign','','publish','open','open','','hearts-hands-campaign','','','2014-07-29 06:24:26','2014-07-29 06:24:26','',33,'http://rmh.ag?page_id=41',0,'page','',0),
	(42,2,'2014-07-29 06:24:26','2014-07-29 06:24:26','','Hearts & Hands Campaign','','inherit','open','open','','41-revision-v1','','','2014-07-29 06:24:26','2014-07-29 06:24:26','',41,'http://rmh.ag?p=42',0,'revision','',0),
	(43,2,'2014-07-29 06:24:38','2014-07-29 06:24:38','','Volunteer','','publish','open','open','','volunteer','','','2014-07-29 06:24:38','2014-07-29 06:24:38','',33,'http://rmh.ag?page_id=43',0,'page','',0),
	(44,2,'2014-07-29 06:24:38','2014-07-29 06:24:38','','Volunteer','','inherit','open','open','','43-revision-v1','','','2014-07-29 06:24:38','2014-07-29 06:24:38','',43,'http://rmh.ag?p=44',0,'revision','',0),
	(45,2,'2014-07-29 06:24:58','2014-07-29 06:24:58','','Wish List','','publish','open','open','','wish-list','','','2014-07-29 06:24:58','2014-07-29 06:24:58','',33,'http://rmh.ag?page_id=45',0,'page','',0),
	(46,2,'2014-07-29 06:24:58','2014-07-29 06:24:58','','Wish List','','inherit','open','open','','45-revision-v1','','','2014-07-29 06:24:58','2014-07-29 06:24:58','',45,'http://rmh.ag?p=46',0,'revision','',0),
	(47,2,'2014-07-29 06:25:15','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2014-07-29 06:25:15','0000-00-00 00:00:00','',0,'http://rmh.ag?p=47',0,'post','',0),
	(48,2,'2014-07-29 06:25:48','2014-07-29 06:25:48','','Events and News','','publish','open','open','','events-and-news','','','2014-07-29 06:25:48','2014-07-29 06:25:48','',0,'http://rmh.ag?page_id=48',0,'page','',0),
	(49,2,'2014-07-29 06:25:48','2014-07-29 06:25:48','','Events and News','','inherit','open','open','','48-revision-v1','','','2014-07-29 06:25:48','2014-07-29 06:25:48','',48,'http://rmh.ag?p=49',0,'revision','',0),
	(50,2,'2014-07-29 06:25:59','2014-07-29 06:25:59','','News','','publish','open','open','','news','','','2014-07-29 06:25:59','2014-07-29 06:25:59','',48,'http://rmh.ag?page_id=50',0,'page','',0),
	(51,2,'2014-07-29 06:25:59','2014-07-29 06:25:59','','News','','inherit','open','open','','50-revision-v1','','','2014-07-29 06:25:59','2014-07-29 06:25:59','',50,'http://rmh.ag?p=51',0,'revision','',0),
	(52,2,'2014-07-29 06:26:23','2014-07-29 06:26:23','','Patrick Marleau Golf Classic','','publish','open','open','','patrick-marleau-golf-classic','','','2014-07-29 06:26:23','2014-07-29 06:26:23','',48,'http://rmh.ag?page_id=52',0,'page','',0),
	(53,2,'2014-07-29 06:26:23','2014-07-29 06:26:23','','Patrick Marleau Golf Classic','','inherit','open','open','','52-revision-v1','','','2014-07-29 06:26:23','2014-07-29 06:26:23','',52,'http://rmh.ag?p=53',0,'revision','',0),
	(54,2,'2014-07-29 06:26:51','2014-07-29 06:26:51','','Home Away From Home Gala','','publish','open','open','','home-away-from-home-gala','','','2014-07-29 06:26:51','2014-07-29 06:26:51','',48,'http://rmh.ag?page_id=54',0,'page','',0),
	(55,2,'2014-07-29 06:26:51','2014-07-29 06:26:51','','Home Away From Home Gala','','inherit','open','open','','54-revision-v1','','','2014-07-29 06:26:51','2014-07-29 06:26:51','',54,'http://rmh.ag?p=55',0,'revision','',0),
	(56,2,'2014-07-29 06:27:07','2014-07-29 06:27:07','','Community Fundraisers','','publish','open','open','','community-fundraisers','','','2014-07-29 06:27:07','2014-07-29 06:27:07','',48,'http://rmh.ag?page_id=56',0,'page','',0),
	(57,2,'2014-07-29 06:27:07','2014-07-29 06:27:07','','Community Fundraisers','','inherit','open','open','','56-revision-v1','','','2014-07-29 06:27:07','2014-07-29 06:27:07','',56,'http://rmh.ag?p=57',0,'revision','',0),
	(58,2,'2014-07-29 06:29:29','2014-07-29 06:29:29',' ','','','publish','open','open','','58','','','2014-07-29 06:29:29','2014-07-29 06:29:29','',0,'http://rmh.ag?p=58',16,'nav_menu_item','',0),
	(59,2,'2014-07-29 06:29:29','2014-07-29 06:29:29',' ','','','publish','open','open','','59','','','2014-07-29 06:29:29','2014-07-29 06:29:29','',48,'http://rmh.ag?p=59',19,'nav_menu_item','',0),
	(60,2,'2014-07-29 06:29:29','2014-07-29 06:29:29',' ','','','publish','open','open','','60','','','2014-07-29 06:29:29','2014-07-29 06:29:29','',48,'http://rmh.ag?p=60',18,'nav_menu_item','',0),
	(61,2,'2014-07-29 06:29:29','2014-07-29 06:29:29',' ','','','publish','open','open','','61','','','2014-07-29 06:29:29','2014-07-29 06:29:29','',48,'http://rmh.ag?p=61',17,'nav_menu_item','',0),
	(62,2,'2014-07-29 06:29:29','2014-07-29 06:29:29',' ','','','publish','open','open','','62','','','2014-07-29 06:29:29','2014-07-29 06:29:29','',48,'http://rmh.ag?p=62',20,'nav_menu_item','',0),
	(63,2,'2014-07-29 06:29:29','2014-07-29 06:29:29',' ','','','publish','open','open','','63','','','2014-07-29 06:29:29','2014-07-29 06:29:29','',0,'http://rmh.ag?p=63',9,'nav_menu_item','',0),
	(64,2,'2014-07-29 06:29:29','2014-07-29 06:29:29',' ','','','publish','open','open','','64','','','2014-07-29 06:29:29','2014-07-29 06:29:29','',33,'http://rmh.ag?p=64',10,'nav_menu_item','',0),
	(65,2,'2014-07-29 06:29:29','2014-07-29 06:29:29',' ','','','publish','open','open','','65','','','2014-07-29 06:29:29','2014-07-29 06:29:29','',33,'http://rmh.ag?p=65',11,'nav_menu_item','',0),
	(66,2,'2014-07-29 06:29:29','2014-07-29 06:29:29',' ','','','publish','open','open','','66','','','2014-07-29 06:29:29','2014-07-29 06:29:29','',33,'http://rmh.ag?p=66',12,'nav_menu_item','',0),
	(67,2,'2014-07-29 06:29:29','2014-07-29 06:29:29',' ','','','publish','open','open','','67','','','2014-07-29 06:29:29','2014-07-29 06:29:29','',33,'http://rmh.ag?p=67',13,'nav_menu_item','',0),
	(68,2,'2014-07-29 06:29:29','2014-07-29 06:29:29',' ','','','publish','open','open','','68','','','2014-07-29 06:29:29','2014-07-29 06:29:29','',35,'http://rmh.ag?p=68',14,'nav_menu_item','',0),
	(69,2,'2014-07-29 06:29:29','2014-07-29 06:29:29',' ','','','publish','open','open','','69','','','2014-07-29 06:29:29','2014-07-29 06:29:29','',35,'http://rmh.ag?p=69',15,'nav_menu_item','',0),
	(70,2,'2014-07-29 06:29:29','2014-07-29 06:29:29',' ','','','publish','open','open','','70','','','2014-07-29 06:29:29','2014-07-29 06:29:29','',0,'http://rmh.ag?p=70',6,'nav_menu_item','',0),
	(71,2,'2014-07-29 06:29:29','2014-07-29 06:29:29',' ','','','publish','open','open','','71','','','2014-07-29 06:29:29','2014-07-29 06:29:29','',26,'http://rmh.ag?p=71',7,'nav_menu_item','',0),
	(72,2,'2014-07-29 06:29:29','2014-07-29 06:29:29',' ','','','publish','open','open','','72','','','2014-07-29 06:29:29','2014-07-29 06:29:29','',26,'http://rmh.ag?p=72',8,'nav_menu_item','',0),
	(73,2,'2014-07-31 06:58:53','0000-00-00 00:00:00','','Auto Draft','','auto-draft','open','open','','','','','2014-07-31 06:58:53','0000-00-00 00:00:00','',0,'http://rmh.ag?p=73',0,'post','',0);

/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
