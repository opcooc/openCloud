/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : open-cloud

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2019-12-01 15:09:05
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Records of gateway_route
-- ----------------------------
INSERT INTO `gateway_route` VALUES ('2', 'admin-server', '/admin/**', 'admin-server', '', '1', '0', '1', '1', '后台服务', null, null, '1');
INSERT INTO `gateway_route` VALUES ('3', 'site-server', '/site/**', 'site-server', '', '1', '0', '1', '1', '站点服务', null, null, '1');
SET FOREIGN_KEY_CHECKS=1;
