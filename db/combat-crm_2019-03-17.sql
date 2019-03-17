# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.24)
# Database: combat-crm
# Generation Time: 2019-03-17 11:42:41 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table clue
# ------------------------------------------------------------

DROP TABLE IF EXISTS `clue`;

CREATE TABLE `clue` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `phone` varchar(255) DEFAULT NULL COMMENT '电话',
  `utm` varchar(255) DEFAULT NULL COMMENT '角色',
  `user_id` int(11) DEFAULT NULL COMMENT '销售人员',
  `status` int(11) DEFAULT NULL COMMENT '状态[1:没有意向,2:意向一般,3:意向强烈,4:完成销售,5:取消销售]',
  `remark` text COMMENT '备注',
  `created_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `is_deleted` int(11) DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `clue` WRITE;
/*!40000 ALTER TABLE `clue` DISABLE KEYS */;

INSERT INTO `clue` (`id`, `name`, `phone`, `utm`, `user_id`, `status`, `remark`, `created_time`, `is_deleted`)
VALUES
	(1,'客户1','13500000001','baidu',2,1,'备注备注备注','2019-03-17 11:29:11',NULL),
	(2,'客户2','13500000002','baidu',2,2,'备注备注备注','2019-03-17 11:29:11',NULL);

/*!40000 ALTER TABLE `clue` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table clue_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `clue_log`;

CREATE TABLE `clue_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `clue_id` int(11) DEFAULT NULL COMMENT '线索id',
  `content` text COMMENT '内容',
  `created_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `is_deleted` int(11) DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `clue_log` WRITE;
/*!40000 ALTER TABLE `clue_log` DISABLE KEYS */;

INSERT INTO `clue_log` (`id`, `clue_id`, `content`, `created_time`, `is_deleted`)
VALUES
	(1,1,'跟踪内容1','2019-03-17 16:03:12',NULL),
	(2,1,'跟踪内容2','2019-03-17 16:17:31',NULL);

/*!40000 ALTER TABLE `clue_log` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '姓名',
  `phone` varchar(255) DEFAULT NULL COMMENT '电话',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `role` int(11) DEFAULT NULL COMMENT '角色',
  `created_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  `is_deleted` int(11) DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` (`id`, `name`, `phone`, `password`, `role`, `created_time`, `is_deleted`)
VALUES
	(1,'周杰伦','13511111111','123456',1,'2019-03-16 18:50:00',NULL),
	(2,'陈奕迅','13522222222','123456',2,'2019-03-16 18:55:52',NULL),
	(3,'陈伟霆','13533333333','123456',2,'2019-03-16 22:22:47',NULL),
	(4,'刘德华','13544444444','123456',2,'2019-03-16 22:22:57',NULL),
	(5,'张国荣','13555555555','123456',2,'2019-03-16 22:23:17',NULL),
	(6,'袁咏仪','13566666666','123456',2,'2019-03-17 09:46:33',NULL),
	(7,'钟汉良','13577777777','123456',2,'2019-03-17 09:58:34',NULL);

/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
