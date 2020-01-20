/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : open-cloud

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2019-12-01 15:11:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for job_logs
-- ----------------------------
DROP TABLE IF EXISTS `job_logs`;
CREATE TABLE `job_logs` (
  `log_id` bigint(20) NOT NULL,
  `job_name` varchar(255) NOT NULL COMMENT '任务名称',
  `job_group` varchar(255) NOT NULL COMMENT '任务组名',
  `job_class` varchar(255) DEFAULT NULL COMMENT '任务执行类',
  `job_description` varchar(255) DEFAULT NULL COMMENT '任务描述',
  `trigger_class` varchar(255) DEFAULT NULL COMMENT '任务触发器',
  `cron_expression` varchar(255) DEFAULT NULL COMMENT '任务表达式',
  `run_time` bigint(20) DEFAULT NULL COMMENT '运行时间',
  `run_start_time` datetime DEFAULT NULL COMMENT '运行开始时间',
  `run_end_time` datetime DEFAULT NULL COMMENT '运行结束时间',
  `create_time` datetime DEFAULT NULL COMMENT '日志创建时间',
  `job_data` varchar(255) DEFAULT NULL COMMENT '任务执行数据',
  `exception` text COMMENT '异常',
  `status` tinyint(3) DEFAULT '0' COMMENT '状态：0-失败 1-成功',
  `start_date` datetime DEFAULT NULL COMMENT '开始时间',
  `end_date` datetime DEFAULT NULL COMMENT '结束时间',
  `repeat_interval` bigint(20) DEFAULT NULL COMMENT '间隔时间',
  `repeat_count` int(8) DEFAULT NULL COMMENT '重复次数',
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='任务调度日志';
SET FOREIGN_KEY_CHECKS=1;
