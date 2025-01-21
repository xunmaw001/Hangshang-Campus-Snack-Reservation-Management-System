-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmv5e5m
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `ssmv5e5m`
--

/*!40000 DROP DATABASE IF EXISTS `ssmv5e5m`*/;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ssmv5e5m` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `ssmv5e5m`;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','upload/1646489719748.jpg'),(2,'picture2','upload/picture2.jpg'),(3,'picture3','upload/picture3.jpg');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dingdanqianshou`
--

DROP TABLE IF EXISTS `dingdanqianshou`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dingdanqianshou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinjiage` float DEFAULT NULL COMMENT '商品价格',
  `shangpinshuliang` int(11) DEFAULT NULL COMMENT '商品数量',
  `zongjine` float DEFAULT NULL COMMENT '总金额',
  `xueshengzhanghao` varchar(200) DEFAULT NULL COMMENT '学生账号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sushedizhi` varchar(200) DEFAULT NULL COMMENT '宿舍地址',
  `peisongyuanxingming` varchar(200) DEFAULT NULL COMMENT '配送员姓名',
  `shoujihao` varchar(200) DEFAULT NULL COMMENT '手机号',
  `qianshoushijian` datetime DEFAULT NULL COMMENT '签收时间',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1646489861129 DEFAULT CHARSET=utf8 COMMENT='订单签收';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dingdanqianshou`
--

LOCK TABLES `dingdanqianshou` WRITE;
/*!40000 ALTER TABLE `dingdanqianshou` DISABLE KEYS */;
INSERT INTO `dingdanqianshou` VALUES (61,'2022-03-05 13:46:49','订单编号1','商品编号1','商品名称1',1,1,1,'学生账号1','学生姓名1','联系电话1','宿舍地址1','配送员姓名1','手机号1','2022-03-05 21:46:49',1,1),(62,'2022-03-05 13:46:49','订单编号2','商品编号2','商品名称2',2,2,2,'学生账号2','学生姓名2','联系电话2','宿舍地址2','配送员姓名2','手机号2','2022-03-05 21:46:49',2,2),(63,'2022-03-05 13:46:49','订单编号3','商品编号3','商品名称3',3,3,3,'学生账号3','学生姓名3','联系电话3','宿舍地址3','配送员姓名3','手机号3','2022-03-05 21:46:49',3,3),(64,'2022-03-05 13:46:49','订单编号4','商品编号4','商品名称4',4,4,4,'学生账号4','学生姓名4','联系电话4','宿舍地址4','配送员姓名4','手机号4','2022-03-05 21:46:49',4,4),(65,'2022-03-05 13:46:49','订单编号5','商品编号5','商品名称5',5,5,5,'学生账号5','学生姓名5','联系电话5','宿舍地址5','配送员姓名5','手机号5','2022-03-05 21:46:49',5,5),(66,'2022-03-05 13:46:49','订单编号6','商品编号6','商品名称6',6,6,6,'学生账号6','学生姓名6','联系电话6','宿舍地址6','配送员姓名6','手机号6','2022-03-05 21:46:49',6,6),(1646489861128,'2022-03-05 14:17:40','20223522181637352733','5555555555','商品名称5',5,4,20,'222','李静','13615125121','抱朴楼-6号楼.205房','李继军','13612512511','2022-03-05 22:24:29',1646489459996,1646489705162);
/*!40000 ALTER TABLE `dingdanqianshou` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dingdanxinxi`
--

DROP TABLE IF EXISTS `dingdanxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dingdanxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinjiage` float DEFAULT NULL COMMENT '商品价格',
  `shangpinshuliang` int(11) DEFAULT NULL COMMENT '商品数量',
  `zongjine` float DEFAULT NULL COMMENT '总金额',
  `xueshengzhanghao` varchar(200) DEFAULT NULL COMMENT '学生账号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sushedizhi` varchar(200) DEFAULT NULL COMMENT '宿舍地址',
  `goumaishijian` datetime DEFAULT NULL COMMENT '购买时间',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1646489744841 DEFAULT CHARSET=utf8 COMMENT='订单信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dingdanxinxi`
--

LOCK TABLES `dingdanxinxi` WRITE;
/*!40000 ALTER TABLE `dingdanxinxi` DISABLE KEYS */;
INSERT INTO `dingdanxinxi` VALUES (41,'2022-03-05 13:46:49','1111111111','商品编号1','商品名称1',1,1,1,'学生账号1','学生姓名1','联系电话1','宿舍地址1','2022-03-05 21:46:49','未支付'),(42,'2022-03-05 13:46:49','2222222222','商品编号2','商品名称2',2,2,2,'学生账号2','学生姓名2','联系电话2','宿舍地址2','2022-03-05 21:46:49','未支付'),(43,'2022-03-05 13:46:49','3333333333','商品编号3','商品名称3',3,3,3,'学生账号3','学生姓名3','联系电话3','宿舍地址3','2022-03-05 21:46:49','未支付'),(44,'2022-03-05 13:46:49','4444444444','商品编号4','商品名称4',4,4,4,'学生账号4','学生姓名4','联系电话4','宿舍地址4','2022-03-05 21:46:49','未支付'),(45,'2022-03-05 13:46:49','5555555555','商品编号5','商品名称5',5,5,5,'学生账号5','学生姓名5','联系电话5','宿舍地址5','2022-03-05 21:46:49','未支付'),(46,'2022-03-05 13:46:49','6666666666','商品编号6','商品名称6',6,6,6,'学生账号6','学生姓名6','联系电话6','宿舍地址6','2022-03-05 21:46:49','未支付'),(1646489261902,'2022-03-05 14:07:41','20223522142459631733','3333333333','商品名称3',3,2,6,'111','胡月','13612512512','抱朴楼-6号楼，1205房','2022-03-05 22:14:24','未支付'),(1646489362480,'2022-03-05 14:09:21','2022352216012321551','2222222222','商品名称2',2,1,2,'111','胡月','13612512512','抱朴楼-6号楼，1205房','2022-03-05 22:16:00','未支付'),(1646489493744,'2022-03-05 14:11:33','20223522181637352733','5555555555','商品名称5',5,4,20,'222','李静','13615125121','抱朴楼-6号楼.205房','2022-03-05 22:18:17','已支付'),(1646489744840,'2022-03-05 14:15:44','2022352222271625875','1646490050479','饮料',6,5,30,'111','胡月','13612512512','抱朴楼-6号楼，1205房','2022-03-05 22:22:27','未支付');
/*!40000 ALTER TABLE `dingdanxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peisongdingdan`
--

DROP TABLE IF EXISTS `peisongdingdan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peisongdingdan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinjiage` float DEFAULT NULL COMMENT '商品价格',
  `shangpinshuliang` int(11) DEFAULT NULL COMMENT '商品数量',
  `zongjine` float DEFAULT NULL COMMENT '总金额',
  `xueshengzhanghao` varchar(200) DEFAULT NULL COMMENT '学生账号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sushedizhi` varchar(200) DEFAULT NULL COMMENT '宿舍地址',
  `gengxinshijian` datetime DEFAULT NULL COMMENT '更新时间',
  `peisongyuanxingming` varchar(200) DEFAULT NULL COMMENT '配送员姓名',
  `shoujihao` varchar(200) DEFAULT NULL COMMENT '手机号',
  `dingdanzhuangtai` varchar(200) DEFAULT NULL COMMENT '订单状态',
  `crossuserid` bigint(20) DEFAULT NULL COMMENT '跨表用户id',
  `crossrefid` bigint(20) DEFAULT NULL COMMENT '跨表主键id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1646489705163 DEFAULT CHARSET=utf8 COMMENT='配送订单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peisongdingdan`
--

LOCK TABLES `peisongdingdan` WRITE;
/*!40000 ALTER TABLE `peisongdingdan` DISABLE KEYS */;
INSERT INTO `peisongdingdan` VALUES (51,'2022-03-05 13:46:49','订单编号1','商品编号1','商品名称1',1,1,1,'学生账号1','学生姓名1','联系电话1','宿舍地址1','2022-03-05 21:46:49','配送员姓名1','手机号1','待配送',1,1),(52,'2022-03-05 13:46:49','订单编号2','商品编号2','商品名称2',2,2,2,'学生账号2','学生姓名2','联系电话2','宿舍地址2','2022-03-05 21:46:49','配送员姓名2','手机号2','待配送',2,2),(53,'2022-03-05 13:46:49','订单编号3','商品编号3','商品名称3',3,3,3,'学生账号3','学生姓名3','联系电话3','宿舍地址3','2022-03-05 21:46:49','配送员姓名3','手机号3','待配送',3,3),(54,'2022-03-05 13:46:49','订单编号4','商品编号4','商品名称4',4,4,4,'学生账号4','学生姓名4','联系电话4','宿舍地址4','2022-03-05 21:46:49','配送员姓名4','手机号4','待配送',4,4),(55,'2022-03-05 13:46:49','订单编号5','商品编号5','商品名称5',5,5,5,'学生账号5','学生姓名5','联系电话5','宿舍地址5','2022-03-05 21:46:49','配送员姓名5','手机号5','待配送',5,5),(56,'2022-03-05 13:46:49','订单编号6','商品编号6','商品名称6',6,6,6,'学生账号6','学生姓名6','联系电话6','宿舍地址6','2022-03-05 21:46:49','配送员姓名6','手机号6','待配送',6,6),(1646489705162,'2022-03-05 14:15:04','20223522181637352733','5555555555','商品名称5',5,4,20,'222','李静','13615125121','抱朴楼-6号楼.205房','2022-03-05 22:21:49','李继军','13612512511','配送中',1,1646489493744);
/*!40000 ALTER TABLE `peisongdingdan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `peisongyuan`
--

DROP TABLE IF EXISTS `peisongyuan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `peisongyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `peisongyuanxingming` varchar(200) DEFAULT NULL COMMENT '配送员姓名',
  `shoujihao` varchar(200) DEFAULT NULL COMMENT '手机号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1646489634137 DEFAULT CHARSET=utf8 COMMENT='配送员';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `peisongyuan`
--

LOCK TABLES `peisongyuan` WRITE;
/*!40000 ALTER TABLE `peisongyuan` DISABLE KEYS */;
INSERT INTO `peisongyuan` VALUES (21,'2022-03-05 13:46:49','配送员姓名1','13823888881'),(22,'2022-03-05 13:46:49','配送员姓名2','13823888882'),(23,'2022-03-05 13:46:49','配送员姓名3','13823888883'),(24,'2022-03-05 13:46:49','配送员姓名4','13823888884'),(25,'2022-03-05 13:46:49','配送员姓名5','13823888885'),(26,'2022-03-05 13:46:49','配送员姓名6','13823888886'),(1646489634136,'2022-03-05 14:13:53','李继军','13612512511');
/*!40000 ALTER TABLE `peisongyuan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shangpinxinxi`
--

DROP TABLE IF EXISTS `shangpinxinxi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinshuliang` int(11) DEFAULT NULL COMMENT '商品数量',
  `shangpinjiage` float DEFAULT NULL COMMENT '商品价格',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `shangpinmiaoshu` longtext COMMENT '商品描述',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1646489692298 DEFAULT CHARSET=utf8 COMMENT='商品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shangpinxinxi`
--

LOCK TABLES `shangpinxinxi` WRITE;
/*!40000 ALTER TABLE `shangpinxinxi` DISABLE KEYS */;
INSERT INTO `shangpinxinxi` VALUES (31,'2022-03-05 13:46:49','1111111111','商品名称1',1,1,'upload/shangpinxinxi_tupian1.jpg','商品描述1'),(32,'2022-03-05 13:46:49','2222222222','商品名称2',1,2,'upload/shangpinxinxi_tupian2.jpg','商品描述2'),(33,'2022-03-05 13:46:49','3333333333','商品名称3',1,3,'upload/shangpinxinxi_tupian3.jpg','商品描述3'),(34,'2022-03-05 13:46:49','4444444444','商品名称4',4,4,'upload/shangpinxinxi_tupian4.jpg','商品描述4'),(35,'2022-03-05 13:46:49','5555555555','商品名称5',1,5,'upload/shangpinxinxi_tupian5.jpg','商品描述5'),(36,'2022-03-05 13:46:49','6666666666','商品名称6',6,6,'upload/shangpinxinxi_tupian6.jpg','商品描述6'),(1646489692297,'2022-03-05 14:14:51','1646490050479','饮料',95,6,'upload/1646489667885.jpeg','<p><strong style=\"background-color: rgb(234, 207, 164); color: rgb(74, 50, 22);\">杭商校园零食预约管理系统杭商校园零食预约管理系统杭商校园零食预约管理系统杭商校园零食预约管理系统杭商校园零食预约管理系统杭商校园零食预约管理系统杭商校园零食预约管理系统杭商校园零食预约管理系统杭商校园零食预约管理系统</strong><img src=\"http://localhost:8080/ssmv5e5m/upload/1646489688498.jpeg\"><strong style=\"background-color: rgb(234, 207, 164); color: rgb(74, 50, 22);\">杭商校园零食预约管理系统杭商校园零食预约管理系统杭商校园零食预约管理系统杭商校园零食预约管理系统杭商校园零食预约管理系统</strong></p>');
/*!40000 ALTER TABLE `shangpinxinxi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1646489243106,'111','xuesheng','学生','843zz6iuyiwwhu3nh3k8m4tozjdmymoq','2022-03-05 14:07:30','2022-03-05 15:15:29'),(2,1646489459996,'222','xuesheng','学生','2fbakq5mvefbdfa98pcm2oadwkay0zvy','2022-03-05 14:11:04','2022-03-05 15:16:02'),(3,1,'abo','users','管理员','8s7m2dfx4qngk16h2951mw2l0h0qxkg3','2022-03-05 14:13:38','2022-03-05 15:18:03');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2022-03-05 13:46:50');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `xuesheng`
--

DROP TABLE IF EXISTS `xuesheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xueshengzhanghao` varchar(200) DEFAULT NULL COMMENT '学生账号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `mima` varchar(200) DEFAULT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sushedizhi` varchar(200) DEFAULT NULL COMMENT '宿舍地址',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xueshengzhanghao` (`xueshengzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1646489459997 DEFAULT CHARSET=utf8 COMMENT='学生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `xuesheng`
--

LOCK TABLES `xuesheng` WRITE;
/*!40000 ALTER TABLE `xuesheng` DISABLE KEYS */;
INSERT INTO `xuesheng` VALUES (11,'2022-03-05 13:46:49','学生账号1','学生姓名1','123456','男','13823888881','宿舍地址1','upload/xuesheng_touxiang1.jpg'),(12,'2022-03-05 13:46:49','学生账号2','学生姓名2','123456','男','13823888882','宿舍地址2','upload/xuesheng_touxiang2.jpg'),(13,'2022-03-05 13:46:49','学生账号3','学生姓名3','123456','男','13823888883','宿舍地址3','upload/xuesheng_touxiang3.jpg'),(14,'2022-03-05 13:46:49','学生账号4','学生姓名4','123456','男','13823888884','宿舍地址4','upload/xuesheng_touxiang4.jpg'),(15,'2022-03-05 13:46:49','学生账号5','学生姓名5','123456','男','13823888885','宿舍地址5','upload/xuesheng_touxiang5.jpg'),(16,'2022-03-05 13:46:49','学生账号6','学生姓名6','123456','男','13823888886','宿舍地址6','upload/xuesheng_touxiang6.jpg'),(1646489243106,'2022-03-05 14:07:23','111','胡月','111','女','13612512512','抱朴楼-6号楼，1205房','upload/1646489392916.jpeg'),(1646489459996,'2022-03-05 14:10:59','222','李静','222','女','13615125121','抱朴楼-6号楼.205房','upload/1646489473595.jpeg');
/*!40000 ALTER TABLE `xuesheng` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-08 17:47:35
