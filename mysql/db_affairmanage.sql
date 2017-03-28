/*
Navicat MySQL Data Transfer

Source Server         : test
Source Server Version : 50173
Source Host           : 172.16.13.179:3306
Source Database       : db_affairmanage

Target Server Type    : MYSQL
Target Server Version : 50173
File Encoding         : 65001

Date: 2017-03-28 14:40:06
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_criticism
-- ----------------------------
DROP TABLE IF EXISTS `tb_criticism`;
CREATE TABLE `tb_criticism` (
  `criticismID` int(11) NOT NULL AUTO_INCREMENT COMMENT '消息批复ID',
  `criticismContent` text COMMENT '批复内容',
  `employeeID` int(11) DEFAULT NULL COMMENT '批复人',
  `critiamTime` datetime DEFAULT NULL COMMENT '批复时间',
  `messageID` int(11) DEFAULT NULL COMMENT '消息ID',
  PRIMARY KEY (`criticismID`),
  KEY `employeeID` (`employeeID`),
  KEY `messageID` (`messageID`),
  CONSTRAINT `tb_criticism_ibfk_1` FOREIGN KEY (`employeeID`) REFERENCES `tb_employee` (`employeeID`),
  CONSTRAINT `tb_criticism_ibfk_2` FOREIGN KEY (`messageID`) REFERENCES `tb_message` (`messageID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='消息批复表';

-- ----------------------------
-- Records of tb_criticism
-- ----------------------------
INSERT INTO `tb_criticism` VALUES ('4', '<p>测试批复</p>', '7040', '2017-03-24 15:36:54', '14');

-- ----------------------------
-- Table structure for tb_employee
-- ----------------------------
DROP TABLE IF EXISTS `tb_employee`;
CREATE TABLE `tb_employee` (
  `employeeID` int(11) NOT NULL DEFAULT '0' COMMENT '员工编号',
  `employeeName` varchar(20) DEFAULT NULL COMMENT '员工姓名',
  `employeeSex` bit(1) DEFAULT NULL COMMENT '员工性别',
  `employeeBirth` date DEFAULT NULL COMMENT '出生日期',
  `employeePhone` varchar(11) DEFAULT NULL COMMENT '办公室电话',
  `employeePlace` varchar(50) DEFAULT NULL COMMENT '住址',
  `joinTime` date DEFAULT NULL COMMENT '录入时间',
  `password` varchar(20) DEFAULT NULL COMMENT '系统口令',
  `isLead` bit(1) DEFAULT NULL COMMENT '是否为管理层',
  PRIMARY KEY (`employeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='员工信息表';

-- ----------------------------
-- Records of tb_employee
-- ----------------------------
INSERT INTO `tb_employee` VALUES ('7039', '余小姐', '', '1994-09-22', '15671663701', '湖北省', '2013-09-12', '654321', '');
INSERT INTO `tb_employee` VALUES ('7040', '张晗', '', '1995-09-22', '15671663706', '湖北省', '2013-09-12', '123456', '');

-- ----------------------------
-- Table structure for tb_message
-- ----------------------------
DROP TABLE IF EXISTS `tb_message`;
CREATE TABLE `tb_message` (
  `messageID` int(11) NOT NULL AUTO_INCREMENT COMMENT '消息ID',
  `messageTitle` varchar(50) DEFAULT NULL COMMENT '消息标题',
  `messageContent` text COMMENT '消息内容',
  `employeeID` int(11) DEFAULT NULL COMMENT '发布人',
  `publishTime` datetime DEFAULT NULL COMMENT '发布时间',
  PRIMARY KEY (`messageID`),
  KEY `employeeID` (`employeeID`),
  CONSTRAINT `tb_message_ibfk_1` FOREIGN KEY (`employeeID`) REFERENCES `tb_employee` (`employeeID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='消息信息表';

-- ----------------------------
-- Records of tb_message
-- ----------------------------
INSERT INTO `tb_message` VALUES ('14', '网络维护公告', '<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0pt; text-indent: 48pt; line-height: 42pt; mso-char-indent-count: 2.0; mso-line-height-rule: exactly\"><span style=\"font-size: 24pt; font-family: 宋体; mso-ascii-font-family: \'Times New Roman\'; mso-hansi-font-family: \'Times New Roman\'\">为保证网络上网，网络信息中心特安排了网络维护人员值班。各用户如有网络故障，请按以下方式联系。</span><span lang=\"EN-US\" style=\"font-size: 24pt\"><o:p></o:p></span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0pt; text-indent: 24pt; line-height: 42pt; mso-char-indent-count: 1.0; mso-line-height-rule: exactly\"><span style=\"font-size: 24pt; font-family: 宋体; mso-ascii-font-family: \'Times New Roman\'; mso-hansi-font-family: \'Times New Roman\'\">　值班电话：</span><span lang=\"EN-US\" style=\"font-size: 24pt\">110</span></p>\r\n<p class=\"MsoNormal\" style=\"margin: 0cm 0cm 0pt; text-indent: 24pt; line-height: 42pt; mso-char-indent-count: 1.0; mso-line-height-rule: exactly\"><span style=\"font-size: 24pt; font-family: 宋体; mso-ascii-font-family: \'Times New Roman\'; mso-hansi-font-family: \'Times New Roman\'\">&nbsp;值班人：余小姐</span></p>', '7039', '2017-03-24 15:10:36');

-- ----------------------------
-- Table structure for tb_reply
-- ----------------------------
DROP TABLE IF EXISTS `tb_reply`;
CREATE TABLE `tb_reply` (
  `replyID` int(11) NOT NULL AUTO_INCREMENT COMMENT '消息回复ID',
  `replyContent` text COMMENT '回复消息',
  `employeeID` int(11) DEFAULT NULL COMMENT '回复人',
  `repayTime` datetime DEFAULT NULL COMMENT '回复时间',
  `messageID` int(11) DEFAULT NULL COMMENT '消息ID',
  PRIMARY KEY (`replyID`),
  KEY `employeeID` (`employeeID`),
  KEY `messageID` (`messageID`),
  CONSTRAINT `tb_reply_ibfk_1` FOREIGN KEY (`employeeID`) REFERENCES `tb_employee` (`employeeID`),
  CONSTRAINT `tb_reply_ibfk_2` FOREIGN KEY (`messageID`) REFERENCES `tb_message` (`messageID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='消息回复表';

-- ----------------------------
-- Records of tb_reply
-- ----------------------------
INSERT INTO `tb_reply` VALUES ('9', '<p>太好了，希望以后不要再无故掉线了！！！</p>', '7040', '2017-03-24 15:33:34', '14');
