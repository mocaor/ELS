/*
Navicat MySQL Data Transfer

Source Server         : yu
Source Server Version : 50515
Source Host           : localhost:3306
Source Database       : els

Target Server Type    : MYSQL
Target Server Version : 50515
File Encoding         : 65001

Date: 2019-07-01 09:26:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for arrive
-- ----------------------------
DROP TABLE IF EXISTS `arrive`;
CREATE TABLE `arrive` (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '营业厅或中转中心编号',
  `arrive_date` datetime DEFAULT NULL COMMENT '到达日期',
  `transfer_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '中转单编号',
  `place_of_departure` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '出发地',
  `state` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '货物到达状态',
  `is_remove` tinyint(4) DEFAULT NULL COMMENT '是否被删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of arrive
-- ----------------------------

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '车辆代号',
  `code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属营业厅或中转中心编号',
  `license_plate` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '车牌号',
  `start_date` datetime DEFAULT NULL COMMENT '开始使用日期',
  `end_date` datetime DEFAULT NULL COMMENT '退役日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of car
-- ----------------------------

-- ----------------------------
-- Table structure for contract_order
-- ----------------------------
DROP TABLE IF EXISTS `contract_order`;
CREATE TABLE `contract_order` (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `sender_id` int(32) DEFAULT NULL COMMENT '寄件人编号',
  `addressee_name` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '收件人姓名',
  `addressee_region` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '收件人所属区域',
  `addressee_detail_address` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '收件人详细住址',
  `addressee_phone` int(11) DEFAULT NULL COMMENT '收件人手机号',
  `type` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '快递种类',
  `remarks` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '特殊备注',
  `goods_type` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '物品类型',
  `contract_time` datetime DEFAULT NULL COMMENT '预约时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of contract_order
-- ----------------------------

-- ----------------------------
-- Table structure for driver
-- ----------------------------
DROP TABLE IF EXISTS `driver`;
CREATE TABLE `driver` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '司机编号',
  `code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属营业厅或中转中心编号',
  `name` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '姓名',
  `birthday` datetime DEFAULT NULL COMMENT '出生日期',
  `identity` varchar(18) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '身份证号',
  `phone` int(11) DEFAULT NULL COMMENT '手机号',
  `gender` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '性别',
  `end_date` datetime DEFAULT NULL COMMENT '行驶证期限',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of driver
-- ----------------------------

-- ----------------------------
-- Table structure for els_bank_account
-- ----------------------------
DROP TABLE IF EXISTS `els_bank_account`;
CREATE TABLE `els_bank_account` (
  `account` int(32) NOT NULL COMMENT '账号',
  `money` double(32,0) NOT NULL COMMENT '金额',
  `Is_remove` tinyint(1) DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of els_bank_account
-- ----------------------------

-- ----------------------------
-- Table structure for els_city
-- ----------------------------
DROP TABLE IF EXISTS `els_city`;
CREATE TABLE `els_city` (
  `id` int(32) NOT NULL COMMENT '城市编号',
  `City_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of els_city
-- ----------------------------

-- ----------------------------
-- Table structure for els_driver_salary
-- ----------------------------
DROP TABLE IF EXISTS `els_driver_salary`;
CREATE TABLE `els_driver_salary` (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `Driver_id` int(32) NOT NULL COMMENT '司机编号',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '姓名',
  `salary` double(32,0) NOT NULL COMMENT '底薪',
  `Singe_freight` double(32,0) NOT NULL COMMENT '单次计费',
  `Freight_number` int(32) NOT NULL COMMENT '次数',
  `bonus` double(32,0) NOT NULL COMMENT '奖金',
  `total` double(32,0) NOT NULL COMMENT '总计',
  `Is_remove` tinyint(1) DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of els_driver_salary
-- ----------------------------

-- ----------------------------
-- Table structure for els_employee
-- ----------------------------
DROP TABLE IF EXISTS `els_employee`;
CREATE TABLE `els_employee` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '工号',
  `job` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '职位',
  `department` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '部门',
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '姓名',
  `status` tinyint(1) NOT NULL COMMENT '工作状态',
  `limit` int(32) NOT NULL COMMENT '权限',
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of els_employee
-- ----------------------------

-- ----------------------------
-- Table structure for els_employee_salary
-- ----------------------------
DROP TABLE IF EXISTS `els_employee_salary`;
CREATE TABLE `els_employee_salary` (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `Employee_id` int(32) NOT NULL COMMENT '工号',
  `position` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '职位',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '姓名',
  `salary` double(32,0) NOT NULL COMMENT '底薪',
  `royalty` double(32,0) NOT NULL COMMENT '提成',
  `bonus` double(32,0) NOT NULL COMMENT '奖金',
  `total` double(32,0) NOT NULL COMMENT '总计',
  `Is_remove` tinyint(1) DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of els_employee_salary
-- ----------------------------

-- ----------------------------
-- Table structure for els_enterprise_account
-- ----------------------------
DROP TABLE IF EXISTS `els_enterprise_account`;
CREATE TABLE `els_enterprise_account` (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `organization` int(32) DEFAULT NULL COMMENT '机构',
  `personnel` int(32) DEFAULT NULL COMMENT '人员',
  `car` int(32) DEFAULT NULL COMMENT '车辆',
  `inventory` int(32) DEFAULT NULL COMMENT '库存',
  `Bank_account_id` int(32) DEFAULT NULL COMMENT '银行账户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of els_enterprise_account
-- ----------------------------

-- ----------------------------
-- Table structure for els_inventory
-- ----------------------------
DROP TABLE IF EXISTS `els_inventory`;
CREATE TABLE `els_inventory` (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `area` int(32) DEFAULT NULL COMMENT '区号',
  `row` int(32) DEFAULT NULL COMMENT '排号',
  `frame` int(32) DEFAULT NULL COMMENT '架号',
  `status` int(32) DEFAULT NULL COMMENT '位号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of els_inventory
-- ----------------------------

-- ----------------------------
-- Table structure for els_inventory_order_relation
-- ----------------------------
DROP TABLE IF EXISTS `els_inventory_order_relation`;
CREATE TABLE `els_inventory_order_relation` (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `inventory_id` int(32) DEFAULT NULL COMMENT '库存编号',
  `order_id` int(32) DEFAULT NULL COMMENT '订单编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of els_inventory_order_relation
-- ----------------------------

-- ----------------------------
-- Table structure for els_in_inventory
-- ----------------------------
DROP TABLE IF EXISTS `els_in_inventory`;
CREATE TABLE `els_in_inventory` (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `order_code` int(32) DEFAULT NULL COMMENT '快递编号',
  `In_Date` datetime DEFAULT NULL COMMENT '入库日期',
  `destination` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '目的地',
  `area` int(32) DEFAULT NULL COMMENT '区号',
  `row` int(32) DEFAULT NULL COMMENT '架号',
  `frame` int(32) DEFAULT NULL COMMENT '排号',
  `status` int(32) DEFAULT NULL COMMENT '位号',
  `Is_remove` tinyint(1) DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of els_in_inventory
-- ----------------------------

-- ----------------------------
-- Table structure for els_log
-- ----------------------------
DROP TABLE IF EXISTS `els_log`;
CREATE TABLE `els_log` (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `job_number` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '工号',
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '操作人',
  `action` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '操作行为',
  `Log_time` datetime NOT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of els_log
-- ----------------------------

-- ----------------------------
-- Table structure for els_organization
-- ----------------------------
DROP TABLE IF EXISTS `els_organization`;
CREATE TABLE `els_organization` (
  `id` int(32) NOT NULL COMMENT '机构编号',
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '名称',
  `varchar` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '归属',
  `rent` double(32,0) NOT NULL COMMENT '租金',
  `address` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '机构地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of els_organization
-- ----------------------------

-- ----------------------------
-- Table structure for els_out_inventory
-- ----------------------------
DROP TABLE IF EXISTS `els_out_inventory`;
CREATE TABLE `els_out_inventory` (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `order_code` int(32) DEFAULT NULL COMMENT '快递编号',
  `Out_date` int(32) DEFAULT NULL COMMENT '出库日期',
  `destination` int(32) DEFAULT NULL COMMENT '目的地',
  `Loading_Type` int(32) DEFAULT NULL COMMENT '装运形式',
  `Tranfer_id` int(32) DEFAULT NULL COMMENT '中转单',
  `Is_remove` tinyint(1) DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of els_out_inventory
-- ----------------------------

-- ----------------------------
-- Table structure for els_pay
-- ----------------------------
DROP TABLE IF EXISTS `els_pay`;
CREATE TABLE `els_pay` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `Pay_date` datetime NOT NULL COMMENT '付款日期',
  `Pay_money` double(32,0) NOT NULL COMMENT '付款金额',
  `Pay_name` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '付款人',
  `Pay_account` int(32) NOT NULL COMMENT '付款账号',
  `Pay_list` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '条目',
  `Pay_remarks` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  `Is_remove` tinyint(1) DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of els_pay
-- ----------------------------

-- ----------------------------
-- Table structure for els_postage_strategy
-- ----------------------------
DROP TABLE IF EXISTS `els_postage_strategy`;
CREATE TABLE `els_postage_strategy` (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `Start_place` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '起始地',
  `End_place` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '目的地',
  `distance` double(32,0) NOT NULL COMMENT '距离',
  `Economy_express` double(32,0) NOT NULL COMMENT '经济快递',
  `Standard_express` double(32,0) NOT NULL COMMENT '标准快递',
  `express` double(32,0) NOT NULL COMMENT '特快',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of els_postage_strategy
-- ----------------------------

-- ----------------------------
-- Table structure for els_salary_strategy
-- ----------------------------
DROP TABLE IF EXISTS `els_salary_strategy`;
CREATE TABLE `els_salary_strategy` (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `job` int(32) NOT NULL COMMENT '职位',
  `salary` double(32,0) NOT NULL COMMENT '底薪',
  `royalty` double(32,0) NOT NULL COMMENT '提成',
  `Single_freight` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '单次运费',
  `Freight_number` int(32) NOT NULL COMMENT '计次',
  `bonus` double(32,0) NOT NULL COMMENT '奖金',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of els_salary_strategy
-- ----------------------------

-- ----------------------------
-- Table structure for els_transportation_cost
-- ----------------------------
DROP TABLE IF EXISTS `els_transportation_cost`;
CREATE TABLE `els_transportation_cost` (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `type` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '运输方式',
  `cost` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '运输成本',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of els_transportation_cost
-- ----------------------------

-- ----------------------------
-- Table structure for loading
-- ----------------------------
DROP TABLE IF EXISTS `loading`;
CREATE TABLE `loading` (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `date` datetime DEFAULT NULL COMMENT '装车日期',
  `code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '中转中心或营业厅编号',
  `transportation_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '运输编号',
  `place_of _arrival` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '到达地',
  `transport_means_code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '车辆代号',
  `supervisor` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'supervisor',
  `escort` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '押运员',
  `freight` double(32,0) DEFAULT NULL COMMENT '运费',
  `is_remove` tinyint(4) DEFAULT NULL COMMENT '是否被删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of loading
-- ----------------------------

-- ----------------------------
-- Table structure for loading_order_relation
-- ----------------------------
DROP TABLE IF EXISTS `loading_order_relation`;
CREATE TABLE `loading_order_relation` (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `loading_id` int(32) DEFAULT NULL COMMENT '装车单编号',
  `order_code` int(10) DEFAULT NULL COMMENT '订单条形码号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of loading_order_relation
-- ----------------------------

-- ----------------------------
-- Table structure for logistics
-- ----------------------------
DROP TABLE IF EXISTS `logistics`;
CREATE TABLE `logistics` (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `order_code` int(10) DEFAULT NULL COMMENT '订单条形码号',
  `time` datetime DEFAULT NULL COMMENT '到达时间',
  `address` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '到达地址',
  `state` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of logistics
-- ----------------------------

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `sender_id` int(32) DEFAULT NULL COMMENT '寄件人编号',
  `addressee_name` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '收件人姓名',
  `addressee_region` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '收件人所属区域',
  `addressee_detail_address` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '收件人详细住址',
  `addressee_phone` int(11) DEFAULT NULL COMMENT '收件人手机号',
  `goods_count` int(32) DEFAULT NULL COMMENT '货物数量',
  `goods_weight` double(32,0) DEFAULT NULL COMMENT '货物总重量',
  `goods_volume` double(32,0) DEFAULT NULL COMMENT '货物体积',
  `goods_name` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '货物名',
  `goods_size` double(32,0) DEFAULT NULL COMMENT '货物尺寸',
  `packing_fee` double(32,0) DEFAULT NULL COMMENT '包装费',
  `freight` double(32,0) DEFAULT NULL COMMENT '运费',
  `total_fee` double(32,0) DEFAULT NULL COMMENT '总费用',
  `code` int(32) DEFAULT NULL COMMENT '订单条形码号',
  `type` int(32) DEFAULT NULL COMMENT '快递种类',
  `true_addressee_name` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '实际收件人姓名',
  `receipt_date` datetime DEFAULT NULL COMMENT '收件日期',
  `is_remove` tinyint(4) DEFAULT NULL COMMENT '是否被删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of order
-- ----------------------------

-- ----------------------------
-- Table structure for pie
-- ----------------------------
DROP TABLE IF EXISTS `pie`;
CREATE TABLE `pie` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属营业厅编号',
  `arrive_date` datetime DEFAULT NULL COMMENT '到达日期',
  `order_code` int(11) DEFAULT NULL COMMENT '订单条形码号',
  `courier` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '派送员',
  `is_remove` tinyint(4) DEFAULT NULL COMMENT '是否被删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of pie
-- ----------------------------

-- ----------------------------
-- Table structure for receipt
-- ----------------------------
DROP TABLE IF EXISTS `receipt`;
CREATE TABLE `receipt` (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属营业厅编号',
  `date` datetime DEFAULT NULL COMMENT '收款日期',
  `money` double(32,0) DEFAULT NULL COMMENT '收款金额',
  `courier` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '收款快递员',
  `is_remove` tinyint(1) DEFAULT NULL COMMENT '是否被删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of receipt
-- ----------------------------

-- ----------------------------
-- Table structure for receipt_order_relation
-- ----------------------------
DROP TABLE IF EXISTS `receipt_order_relation`;
CREATE TABLE `receipt_order_relation` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `receipt_id` int(32) DEFAULT NULL COMMENT '收款单编号',
  `order_code` int(10) DEFAULT NULL COMMENT '订单条形码号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of receipt_order_relation
-- ----------------------------

-- ----------------------------
-- Table structure for sender
-- ----------------------------
DROP TABLE IF EXISTS `sender`;
CREATE TABLE `sender` (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `name` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '姓名',
  `region` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属区域',
  `detail_address` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '详细住址',
  `phone` int(11) DEFAULT NULL COMMENT '手机号',
  `password` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '账号密码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sender
-- ----------------------------

-- ----------------------------
-- Table structure for transfer
-- ----------------------------
DROP TABLE IF EXISTS `transfer`;
CREATE TABLE `transfer` (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '中转单编号',
  `date` datetime DEFAULT NULL COMMENT '装车日期',
  `transportation_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '运输编号',
  `place_of_departure` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '出发地',
  `place_of _arrival` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '到达地',
  `container_member` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '货柜员',
  `monitor_member` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '监装员',
  `freight` double DEFAULT NULL COMMENT '运费',
  `is_remove` tinyint(1) DEFAULT NULL COMMENT '是否被删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of transfer
-- ----------------------------

-- ----------------------------
-- Table structure for transfer_order_relation
-- ----------------------------
DROP TABLE IF EXISTS `transfer_order_relation`;
CREATE TABLE `transfer_order_relation` (
  `id` int(32) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `transfer_code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '中转单编号',
  `order_code` int(10) DEFAULT NULL COMMENT '订单条形码号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of transfer_order_relation
-- ----------------------------

-- ----------------------------
-- Table structure for transportation
-- ----------------------------
DROP TABLE IF EXISTS `transportation`;
CREATE TABLE `transportation` (
  `id` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '运输编号',
  `code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '所属营业厅或中转中心编号',
  `start_time` datetime DEFAULT NULL COMMENT '发车时间',
  `car_id` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '车辆代号',
  `origin` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '起始地址',
  `destination` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '目的地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of transportation
-- ----------------------------
