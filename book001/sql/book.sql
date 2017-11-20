/*
Navicat MySQL Data Transfer

Source Server         : ensong
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : book

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2017-11-14 11:41:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_accepter
-- ----------------------------
DROP TABLE IF EXISTS `t_accepter`;
CREATE TABLE `t_accepter` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `email` varchar(40) DEFAULT NULL,
  `eid` int(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk2` (`eid`),
  CONSTRAINT `fk2` FOREIGN KEY (`eid`) REFERENCES `t_email` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_accepter
-- ----------------------------
INSERT INTO `t_accepter` VALUES ('1', '3096365299@qq.com', '1');
INSERT INTO `t_accepter` VALUES ('2', '3096365299@qq.com', '2');
INSERT INTO `t_accepter` VALUES ('3', 'hdy937309420@sina.com', '3');
INSERT INTO `t_accepter` VALUES ('4', 'hdy937309420@sina.com', '6');
INSERT INTO `t_accepter` VALUES ('5', 'hdy937309420@sina.com', '7');
INSERT INTO `t_accepter` VALUES ('6', '3096365299@qq.com', '7');
INSERT INTO `t_accepter` VALUES ('7', 'hdy937309420@sina.com', '8');
INSERT INTO `t_accepter` VALUES ('8', '3096365299@qq.com', '8');
INSERT INTO `t_accepter` VALUES ('9', '1877695876@qq.com', '8');
INSERT INTO `t_accepter` VALUES ('10', 'hdy937309420@sina.com', '9');
INSERT INTO `t_accepter` VALUES ('11', 'hdy937309420@sina.com', '10');
INSERT INTO `t_accepter` VALUES ('12', '3096365299@qq.com', '11');
INSERT INTO `t_accepter` VALUES ('13', '834480214@qq.com', '11');
INSERT INTO `t_accepter` VALUES ('14', '981230394@qq.com', '11');
INSERT INTO `t_accepter` VALUES ('15', '3217895605@qq.com', '12');
INSERT INTO `t_accepter` VALUES ('16', '974762753@qq.com', '12');
INSERT INTO `t_accepter` VALUES ('17', 'hdy937309420@sina.com', '12');
INSERT INTO `t_accepter` VALUES ('18', '3096365299@qq.com', '13');
INSERT INTO `t_accepter` VALUES ('19', 'hdy937309420@sina.com', '13');

-- ----------------------------
-- Table structure for t_book
-- ----------------------------
DROP TABLE IF EXISTS `t_book`;
CREATE TABLE `t_book` (
  `bid` int(6) NOT NULL AUTO_INCREMENT,
  `bname` varchar(60) NOT NULL,
  `bauthor` varchar(20) DEFAULT NULL,
  `bpublisher` varchar(100) DEFAULT NULL,
  `bpublishDate` datetime DEFAULT NULL,
  `bcid` int(6) DEFAULT NULL,
  PRIMARY KEY (`bid`),
  UNIQUE KEY `bname` (`bname`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_book
-- ----------------------------
INSERT INTO `t_book` VALUES ('1', 'Java并发编程实践', 'hello', '中国工业出版社', '2015-02-10 00:00:00', '1');
INSERT INTO `t_book` VALUES ('2', 'Myql从删库到跑路', 'Leon', '机械出版社', '2014-05-13 00:00:00', '1');
INSERT INTO `t_book` VALUES ('3', '西游记', '吴承恩', '中国文学出版社', '2014-05-05 00:00:00', '2');
INSERT INTO `t_book` VALUES ('5', 'Steam', 'G胖', 'V社', '2010-01-04 00:00:00', '1');
INSERT INTO `t_book` VALUES ('9', '哈姆雷特', '威廉·莎士比亚', '英国出版社', '2017-02-06 00:00:00', '2');
INSERT INTO `t_book` VALUES ('26', '立体构成', 'Korin', '中国工业出版社', '2015-02-17 00:00:00', '3');
INSERT INTO `t_book` VALUES ('27', '完美世界', '辰东', '文学作品出版社', '2017-11-10 00:00:00', '2');
INSERT INTO `t_book` VALUES ('28', '流畅的Pyhton', 'Leon', '中国工业出版社', '2016-02-19 00:00:00', '1');
INSERT INTO `t_book` VALUES ('29', '第一行代码', '郭霖', '人民邮电', '2016-06-08 00:00:00', '1');
INSERT INTO `t_book` VALUES ('40', 'Linux基础', 'Leon', '中国工业出版社', '2017-11-06 00:00:00', '1');
INSERT INTO `t_book` VALUES ('41', 'C++', 'Leon', '机械出版社', '2017-11-08 00:00:00', '1');
INSERT INTO `t_book` VALUES ('42', 'Python爬虫', 'Leon', '中国文学出版社', '2017-11-01 00:00:00', '1');
INSERT INTO `t_book` VALUES ('43', 'Java面试宝典', 'Leon', '中国工业出版社', '2017-10-31 00:00:00', '1');
INSERT INTO `t_book` VALUES ('44', '三国演义', 'Leon', '中国工业出版社', '2017-11-01 00:00:00', '2');
INSERT INTO `t_book` VALUES ('45', 'C', 'Leon', '中国工业出版社', '2017-11-06 00:00:00', '1');
INSERT INTO `t_book` VALUES ('49', 'Nginx', 'Leon', '中国工业出版社', '2017-11-01 00:00:00', '1');
INSERT INTO `t_book` VALUES ('50', 'Redis', 'Leon', '中国工业出版社', '2017-11-01 00:00:00', '1');
INSERT INTO `t_book` VALUES ('51', 'Zooper', 'Leon', '中国工业出版社', '2017-11-02 00:00:00', '1');
INSERT INTO `t_book` VALUES ('58', 'Python机器语言学习', 'Leon', '机械出版社', '2016-06-14 00:00:00', '1');
INSERT INTO `t_book` VALUES ('59', 'IDEA', 'Leon', '机械出版社', '2017-11-05 00:00:00', '2');
INSERT INTO `t_book` VALUES ('61', 'Eclipse', 'Leon', '中国文学出版社', '2017-11-01 00:00:00', '2');
INSERT INTO `t_book` VALUES ('62', 'ActiveMQ', 'Leon', '机械出版社', '2017-11-01 00:00:00', '2');
INSERT INTO `t_book` VALUES ('63', 'Springboot-Thymeleaf', 'Leon', '中国文学出版社', '2017-11-01 00:00:00', '5');
INSERT INTO `t_book` VALUES ('64', '金融证券', 'Korin', '中国文学出版社', '2017-11-01 00:00:00', '5');
INSERT INTO `t_book` VALUES ('65', '梁山伯与祝英台', 'Hello', '中国音乐出版社', '2015-02-04 00:00:00', '6');
INSERT INTO `t_book` VALUES ('66', '巴斯蒂安钢琴教学成功之道', 'Leon', '上海音乐出版社', '2015-02-03 00:00:00', '6');
INSERT INTO `t_book` VALUES ('67', '金字塔原理大全集', 'Leon', '中国文学出版社', '2015-02-06 00:00:00', '7');
INSERT INTO `t_book` VALUES ('68', '科学管理原理', 'Leon', '中国文学出版社', '2015-02-06 00:00:00', '7');
INSERT INTO `t_book` VALUES ('69', '格鲁夫给经理人的第一课', 'Korin', '中国文学出版社', '2015-02-06 00:00:00', '7');
INSERT INTO `t_book` VALUES ('70', '伟大的博弈', 'Korin', '中国文学出版社', '2015-02-06 00:00:00', '8');
INSERT INTO `t_book` VALUES ('71', '第四次工业革命', 'Korin', '中国文学出版社', '2015-02-06 00:00:00', '8');
INSERT INTO `t_book` VALUES ('72', '用地图看懂世界经济', 'Korin', '中国文学出版社', '2015-02-06 00:00:00', '8');
INSERT INTO `t_book` VALUES ('73', '国家为什么会失败', 'Korin', '中国文学出版社', '2015-02-06 00:00:00', '8');
INSERT INTO `t_book` VALUES ('74', '海洋之歌：一个博物学者的发现之旅', 'Korin', '中国工业出版社', '2015-02-06 00:00:00', '9');
INSERT INTO `t_book` VALUES ('75', '谷物：如何拥有一片森林', 'Korin', '中国工业出版社', '2015-02-06 00:00:00', '9');
INSERT INTO `t_book` VALUES ('76', '时尚新厨房：花式营养早餐一本全', 'Korin', '中国新东方出版社', '2015-02-04 00:00:00', '10');
INSERT INTO `t_book` VALUES ('77', '食物信息图 : 看得见味道的食物百科', 'Leon', '中国新东方出版社', '2015-02-04 00:00:00', '10');
INSERT INTO `t_book` VALUES ('78', '孩子爱吃的花式营养早餐', 'Leon', '中国新东方出版社', '2015-02-04 00:00:00', '10');
INSERT INTO `t_book` VALUES ('79', '蔡澜旅行食记', 'Leon', '中国新东方出版社', '2015-02-04 00:00:00', '10');
INSERT INTO `t_book` VALUES ('82', 'Struts2入门', 'hello', '机械出版社', '2017-11-01 00:00:00', '1');

-- ----------------------------
-- Table structure for t_category
-- ----------------------------
DROP TABLE IF EXISTS `t_category`;
CREATE TABLE `t_category` (
  `cid` int(6) NOT NULL AUTO_INCREMENT,
  `cname` varchar(40) NOT NULL,
  PRIMARY KEY (`cid`),
  UNIQUE KEY `cname` (`cname`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_category
-- ----------------------------
INSERT INTO `t_category` VALUES ('9', '地理');
INSERT INTO `t_category` VALUES ('2', '文学');
INSERT INTO `t_category` VALUES ('4', '法律');
INSERT INTO `t_category` VALUES ('7', '管理');
INSERT INTO `t_category` VALUES ('8', '经济');
INSERT INTO `t_category` VALUES ('10', '美食');
INSERT INTO `t_category` VALUES ('3', '艺术');
INSERT INTO `t_category` VALUES ('1', '计算机');
INSERT INTO `t_category` VALUES ('5', '金融');
INSERT INTO `t_category` VALUES ('6', '音乐');

-- ----------------------------
-- Table structure for t_email
-- ----------------------------
DROP TABLE IF EXISTS `t_email`;
CREATE TABLE `t_email` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `content` varchar(8000) DEFAULT NULL,
  `subject` varchar(300) DEFAULT NULL,
  `filePath` varchar(300) DEFAULT NULL,
  `fileName` varchar(400) DEFAULT NULL,
  `uid` int(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk1` (`uid`),
  CONSTRAINT `fk1` FOREIGN KEY (`uid`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_email
-- ----------------------------
INSERT INTO `t_email` VALUES ('1', '34334', 'we', 'D:\\Java\\Tomcat\\apache-tomcat-8.0.45-windows-x64\\apache-tomcat-8.0.45\\webapps\\SpringEmail\\upload\\Lighthouse.jpg', 'Lighthouse.jpg', '1');
INSERT INTO `t_email` VALUES ('2', '今天学习了Spring整合Email发送邮件', 'IDEA发布邮件', 'D:\\Java\\Tomcat\\apache-tomcat-8.0.45-windows-x64\\apache-tomcat-8.0.45\\webapps\\SpringEmail\\upload\\ComPerformance-master.zip', 'ComPerformance-master.zip', '1');
INSERT INTO `t_email` VALUES ('3', '今天天气真好', '2017-11-05', 'D:\\Java\\Tomcat\\apache-tomcat-8.0.45-windows-x64\\apache-tomcat-8.0.45\\webapps\\SpringEmail\\upload\\ComPerformance-master.zip', 'ComPerformance-master.zip', '1');
INSERT INTO `t_email` VALUES ('4', '今天天气真好', '2017-11-05', 'D:\\Java\\Tomcat\\apache-tomcat-8.0.45-windows-x64\\apache-tomcat-8.0.45\\webapps\\SpringEmail\\upload\\c3p0-0.9.1.2.jar', 'c3p0-0.9.1.2.jar', '1');
INSERT INTO `t_email` VALUES ('5', '今天天气真好', '2017-11-05', 'D:\\Java\\Tomcat\\apache-tomcat-8.0.45-windows-x64\\apache-tomcat-8.0.45\\webapps\\SpringEmail\\upload\\c3p0-0.9.1.2.pom', 'c3p0-0.9.1.2.pom', '1');
INSERT INTO `t_email` VALUES ('6', 'Spring多邮件发送', '2017-11-07', 'D:\\Java\\Tomcat\\apache-tomcat-8.0.45-windows-x64\\apache-tomcat-8.0.45\\webapps\\email\\upload\\commons-codec-1.6.jar', 'commons-codec-1.6.jar', '1');
INSERT INTO `t_email` VALUES ('7', '3243', 'Spring', 'D:\\Java\\Tomcat\\apache-tomcat-8.0.45-windows-x64\\apache-tomcat-8.0.45\\webapps\\email\\upload\\commons-codec-1.6.pom', 'commons-codec-1.6.pom', '1');
INSERT INTO `t_email` VALUES ('8', 'Spring整合Email完成！！！', 'Email', 'D:\\Java\\Tomcat\\apache-tomcat-8.0.45-windows-x64\\apache-tomcat-8.0.45\\webapps\\email\\upload\\log.log2017-08-15', 'log.log2017-08-15', '1');
INSERT INTO `t_email` VALUES ('9', 'Hello,World', 'Hello', 'D:\\Java\\Tomcat\\apache-tomcat-8.0.45-windows-x64\\apache-tomcat-8.0.45\\webapps\\email\\upload\\log.log2017-09-04', 'log.log2017-09-04', '1');
INSERT INTO `t_email` VALUES ('10', '1322432', 'Python', 'D:\\Java\\Tomcat\\apache-tomcat-8.0.45-windows-x64\\apache-tomcat-8.0.45\\webapps\\email\\upload\\log.log2017-10-20', 'log.log2017-10-20', '1');
INSERT INTO `t_email` VALUES ('11', '23432324534534435r34\r\n                   345435435434453455\r\n\r\n345435434355453', 'Spring集成Redis', 'D:\\Java\\Tomcat\\apache-tomcat-8.0.45-windows-x64\\apache-tomcat-8.0.45\\webapps\\email\\upload\\c3p0-0.9.1.2.jar', 'c3p0-0.9.1.2.jar', '1');
INSERT INTO `t_email` VALUES ('12', 'hello,world', '2017-11-08', 'D:\\Java\\Tomcat\\apache-tomcat-8.0.45-windows-x64\\apache-tomcat-8.0.45\\webapps\\email\\upload\\commons-digester-1.6.pom', 'commons-digester-1.6.pom', '1');
INSERT INTO `t_email` VALUES ('13', 'ewqe234324325435\r\n                   34543543454\r\n4543534\r\n\r\n34543534534\r\n\\\r\n\r\n45454445\r\n4\r\n3543', '超市订单管理系统', 'D:\\Java\\Tomcat\\apache-tomcat-8.0.45-windows-x64\\apache-tomcat-8.0.45\\webapps\\email\\upload\\Hydrangeas.jpg', 'Hydrangeas.jpg', '1');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `email` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES ('1', 'Leonhardt', 'zmxnnszmiftqbbgi', '937309420@qq.com');

-- ----------------------------
-- View structure for v_book
-- ----------------------------
DROP VIEW IF EXISTS `v_book`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_book` AS select `t_book`.`bname` AS `bname`,`t_book`.`bauthor` AS `bauthor` from `t_book` ;
