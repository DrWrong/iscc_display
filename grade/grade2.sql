/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50051
Source Host           : localhost:3306
Source Database       : grade2

Target Server Type    : MYSQL
Target Server Version : 50051
File Encoding         : 65001

Date: 2014-08-13 11:00:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `flag`
-- ----------------------------
DROP TABLE IF EXISTS `flag`;
CREATE TABLE `flag` (
  `id` int(4) NOT NULL auto_increment,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of flag
-- ----------------------------
INSERT INTO `flag` VALUES ('2', '1231231122');
INSERT INTO `flag` VALUES ('3', '123');

-- ----------------------------
-- Table structure for `hosts`
-- ----------------------------
DROP TABLE IF EXISTS `hosts`;
CREATE TABLE `hosts` (
  `id` int(4) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `fid` int(4) default NULL,
  `tid` int(4) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_fid` (`fid`),
  KEY `hosts_FK_tid` (`tid`),
  CONSTRAINT `FK_fid` FOREIGN KEY (`fid`) REFERENCES `flag` (`id`),
  CONSTRAINT `hosts_FK_tid` FOREIGN KEY (`tid`) REFERENCES `team` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of hosts
-- ----------------------------
INSERT INTO `hosts` VALUES ('1', '123', '127.0.0.1', '3', '3');
INSERT INTO `hosts` VALUES ('2', '123', '1112', '3', '2');
INSERT INTO `hosts` VALUES ('3', '123', '123', '3', '3');

-- ----------------------------
-- Table structure for `log`
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log` (
  `id` int(4) NOT NULL auto_increment,
  `tid` int(4) NOT NULL,
  `hid` int(4) NOT NULL,
  `isok` enum('0','1') NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of log
-- ----------------------------

-- ----------------------------
-- Table structure for `manager`
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `id` int(4) NOT NULL auto_increment,
  `username` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES ('1', 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- ----------------------------
-- Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int(4) NOT NULL auto_increment,
  `ctime` varchar(50) NOT NULL,
  `content` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('1', '2014-08-05 09:45:19', '11111111111111');
INSERT INTO `message` VALUES ('3', '2014-08-05 09:57:12', '你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好<br />');
INSERT INTO `message` VALUES ('4', '2014-08-05 09:57:12', '<strong>你好你好你好你好</strong>你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好你好<br />');

-- ----------------------------
-- Table structure for `team`
-- ----------------------------
DROP TABLE IF EXISTS `team`;
CREATE TABLE `team` (
  `id` int(4) NOT NULL auto_increment,
  `name` varchar(100) NOT NULL,
  `sign` varchar(32) NOT NULL,
  `logo_path` varchar(100) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of team
-- ----------------------------
INSERT INTO `team` VALUES ('2', '1112', '4e6d2', '');
INSERT INTO `team` VALUES ('3', '5', '09c7f5d', '');
INSERT INTO `team` VALUES ('4', '123456', '75c64e4', '');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(4) NOT NULL auto_increment,
  `username` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `tid` int(4) NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_tid` (`tid`),
  CONSTRAINT `FK_tid` FOREIGN KEY (`tid`) REFERENCES `team` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '123', '123', '2');
INSERT INTO `users` VALUES ('3', '111', '111', '3');
