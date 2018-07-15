/*
Navicat MySQL Data Transfer

Source Server         : 服务器
Source Server Version : 50714
Source Host           : 192.168.31.100:3306
Source Database       : family

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-07-13 21:50:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for acl
-- ----------------------------
DROP TABLE IF EXISTS `acl`;
CREATE TABLE `acl` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acl_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='权限表';

-- ----------------------------
-- Records of acl
-- ----------------------------
INSERT INTO `acl` VALUES ('2', '个人管理');
INSERT INTO `acl` VALUES ('3', '审核管理');
INSERT INTO `acl` VALUES ('4', '系统权限');
INSERT INTO `acl` VALUES ('5', '系统备份');
INSERT INTO `acl` VALUES ('6', '用户管理');
INSERT INTO `acl` VALUES ('7', '系统统计');
INSERT INTO `acl` VALUES ('8', '公告管理');
INSERT INTO `acl` VALUES ('10', '我的上传');
INSERT INTO `acl` VALUES ('11', '我的下载');
INSERT INTO `acl` VALUES ('12', '归档文件删除');
INSERT INTO `acl` VALUES ('13', '积分管理');
INSERT INTO `acl` VALUES ('14', '分类管理');

-- ----------------------------
-- Table structure for acl_group
-- ----------------------------
DROP TABLE IF EXISTS `acl_group`;
CREATE TABLE `acl_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `acl_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=263 DEFAULT CHARSET=utf8 COMMENT='权限-角色表';

-- ----------------------------
-- Records of acl_group
-- ----------------------------
INSERT INTO `acl_group` VALUES ('226', '2', '18');
INSERT INTO `acl_group` VALUES ('227', '3', '18');
INSERT INTO `acl_group` VALUES ('228', '4', '18');
INSERT INTO `acl_group` VALUES ('229', '5', '18');
INSERT INTO `acl_group` VALUES ('230', '6', '18');
INSERT INTO `acl_group` VALUES ('231', '7', '18');
INSERT INTO `acl_group` VALUES ('232', '8', '18');
INSERT INTO `acl_group` VALUES ('233', '10', '18');
INSERT INTO `acl_group` VALUES ('234', '11', '18');
INSERT INTO `acl_group` VALUES ('235', '12', '18');
INSERT INTO `acl_group` VALUES ('236', '13', '18');
INSERT INTO `acl_group` VALUES ('237', '14', '18');
INSERT INTO `acl_group` VALUES ('238', '2', '19');
INSERT INTO `acl_group` VALUES ('239', '10', '19');
INSERT INTO `acl_group` VALUES ('240', '11', '19');
INSERT INTO `acl_group` VALUES ('248', '2', '27');
INSERT INTO `acl_group` VALUES ('249', '3', '27');
INSERT INTO `acl_group` VALUES ('250', '4', '27');
INSERT INTO `acl_group` VALUES ('251', '5', '27');
INSERT INTO `acl_group` VALUES ('252', '6', '27');
INSERT INTO `acl_group` VALUES ('253', '7', '27');
INSERT INTO `acl_group` VALUES ('254', '8', '27');
INSERT INTO `acl_group` VALUES ('255', '10', '27');
INSERT INTO `acl_group` VALUES ('256', '11', '27');
INSERT INTO `acl_group` VALUES ('257', '12', '27');
INSERT INTO `acl_group` VALUES ('258', '13', '27');
INSERT INTO `acl_group` VALUES ('259', '14', '27');
INSERT INTO `acl_group` VALUES ('260', '2', '28');
INSERT INTO `acl_group` VALUES ('261', '10', '28');
INSERT INTO `acl_group` VALUES ('262', '11', '28');

-- ----------------------------
-- Table structure for area
-- ----------------------------
DROP TABLE IF EXISTS `area`;
CREATE TABLE `area` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(400) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of area
-- ----------------------------
INSERT INTO `area` VALUES ('2', '西安公司');

-- ----------------------------
-- Table structure for bimowl
-- ----------------------------
DROP TABLE IF EXISTS `bimowl`;
CREATE TABLE `bimowl` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `file_id` int(11) DEFAULT '-1',
  `entity` varchar(100) DEFAULT NULL,
  `rel_type` int(11) unsigned DEFAULT NULL COMMENT '0,cover,  1,connect, 2,contained in, 3,reference, 4,aggregates',
  `target` varchar(100) DEFAULT NULL COMMENT 'triple [entity_id  rel_type   target] ',
  `target_type` int(11) unsigned DEFAULT NULL COMMENT '0:entity_type,  1:document_type,  2:other',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of bimowl
-- ----------------------------

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(300) DEFAULT NULL,
  `parent_id` int(11) unsigned DEFAULT NULL COMMENT 'category父节点id',
  `flag` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=485 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '总体规划', '193', '1');
INSERT INTO `category` VALUES ('2', '彩色总平', '1', '0');
INSERT INTO `category` VALUES ('3', '总体鸟瞰', '1', '0');
INSERT INTO `category` VALUES ('4', '模型照片', '1', '0');
INSERT INTO `category` VALUES ('5', '分期开发', '1', '0');
INSERT INTO `category` VALUES ('6', '交通分析', '1', '0');
INSERT INTO `category` VALUES ('7', '产品分布', '1', '0');
INSERT INTO `category` VALUES ('8', '景观结构', '1', '0');
INSERT INTO `category` VALUES ('9', '技术指标', '1', '0');
INSERT INTO `category` VALUES ('10', '施工图纸', '1', '0');
INSERT INTO `category` VALUES ('11', '示范区规划', '193', '1');
INSERT INTO `category` VALUES ('12', '彩色总平', '11', '0');
INSERT INTO `category` VALUES ('13', '区位关系', '11', '0');
INSERT INTO `category` VALUES ('14', '景观结构', '11', '0');
INSERT INTO `category` VALUES ('15', '体验流线', '11', '0');
INSERT INTO `category` VALUES ('16', '技术指标', '11', '0');
INSERT INTO `category` VALUES ('17', '单元户型', '193', '1');
INSERT INTO `category` VALUES ('18', '顶层户型', '17', '0');
INSERT INTO `category` VALUES ('19', '标准层户型', '17', '0');
INSERT INTO `category` VALUES ('20', '入口层户型', '17', '0');
INSERT INTO `category` VALUES ('21', '技术指标', '17', '0');
INSERT INTO `category` VALUES ('22', '别墅户型', '193', '1');
INSERT INTO `category` VALUES ('23', '顶层平面', '22', '0');
INSERT INTO `category` VALUES ('24', '中间平面', '22', '0');
INSERT INTO `category` VALUES ('25', '入口平面', '22', '0');
INSERT INTO `category` VALUES ('26', '地下平面', '22', '0');
INSERT INTO `category` VALUES ('27', '技术指标', '22', '0');
INSERT INTO `category` VALUES ('28', '住宅立面', '193', '1');
INSERT INTO `category` VALUES ('29', '单体效果图', '28', '0');
INSERT INTO `category` VALUES ('30', '立面图', '28', '0');
INSERT INTO `category` VALUES ('31', '顶部做法', '28', '0');
INSERT INTO `category` VALUES ('32', '门窗做法', '28', '0');
INSERT INTO `category` VALUES ('33', '装饰做法', '28', '0');
INSERT INTO `category` VALUES ('34', '墙体做法', '28', '0');
INSERT INTO `category` VALUES ('35', '技术指标', '28', '0');
INSERT INTO `category` VALUES ('36', '售楼处', '193', '1');
INSERT INTO `category` VALUES ('37', '建筑平面', '36', '0');
INSERT INTO `category` VALUES ('38', '功能分区', '37', '0');
INSERT INTO `category` VALUES ('39', '营销动线', '37', '0');
INSERT INTO `category` VALUES ('40', '平面设计', '37', '0');
INSERT INTO `category` VALUES ('41', '建筑立面', '36', '0');
INSERT INTO `category` VALUES ('42', '单体效果图', '41', '0');
INSERT INTO `category` VALUES ('43', '立面图', '41', '0');
INSERT INTO `category` VALUES ('44', '顶部做法', '41', '0');
INSERT INTO `category` VALUES ('45', '门窗做法', '41', '0');
INSERT INTO `category` VALUES ('46', '装饰做法', '41', '0');
INSERT INTO `category` VALUES ('47', '墙体做法', '41', '0');
INSERT INTO `category` VALUES ('48', '建筑剖面', '36', '0');
INSERT INTO `category` VALUES ('49', '技术指标', '36', '0');
INSERT INTO `category` VALUES ('50', '施工图纸', '36', '0');
INSERT INTO `category` VALUES ('51', '售楼处装修', '193', '1');
INSERT INTO `category` VALUES ('52', '室内效果', '51', '0');
INSERT INTO `category` VALUES ('53', '入口区', '52', '0');
INSERT INTO `category` VALUES ('54', '沙盘区', '52', '0');
INSERT INTO `category` VALUES ('55', '洽谈区', '52', '0');
INSERT INTO `category` VALUES ('56', '影音区', '52', '0');
INSERT INTO `category` VALUES ('57', '展示区', '52', '0');
INSERT INTO `category` VALUES ('58', '卫生间', '52', '0');
INSERT INTO `category` VALUES ('59', '其他区域', '52', '0');
INSERT INTO `category` VALUES ('60', '硬装材料', '51', '0');
INSERT INTO `category` VALUES ('61', '软装物料', '51', '0');
INSERT INTO `category` VALUES ('62', '技术指标', '51', '0');
INSERT INTO `category` VALUES ('63', '样板间装修', '193', '1');
INSERT INTO `category` VALUES ('64', '情景风格', '63', '0');
INSERT INTO `category` VALUES ('65', '设计效果', '63', '0');
INSERT INTO `category` VALUES ('66', '客厅空间', '65', '0');
INSERT INTO `category` VALUES ('67', '主卧空间', '65', '0');
INSERT INTO `category` VALUES ('68', '餐厅空间', '65', '0');
INSERT INTO `category` VALUES ('69', '主卫空间', '65', '0');
INSERT INTO `category` VALUES ('70', '厨房空间', '65', '0');
INSERT INTO `category` VALUES ('71', '书房空间', '65', '0');
INSERT INTO `category` VALUES ('72', '玄关空间', '65', '0');
INSERT INTO `category` VALUES ('73', '卫生间', '65', '0');
INSERT INTO `category` VALUES ('74', '儿童房', '65', '0');
INSERT INTO `category` VALUES ('75', '老人房', '65', '0');
INSERT INTO `category` VALUES ('76', '其他区域', '65', '0');
INSERT INTO `category` VALUES ('77', '硬装材料', '63', '0');
INSERT INTO `category` VALUES ('78', '软装物料', '63', '0');
INSERT INTO `category` VALUES ('79', '技术指标', '63', '0');
INSERT INTO `category` VALUES ('80', '示范区景观', '193', '1');
INSERT INTO `category` VALUES ('81', '构筑物', '80', '0');
INSERT INTO `category` VALUES ('82', '入口大门', '81', '0');
INSERT INTO `category` VALUES ('83', '围墙', '81', '0');
INSERT INTO `category` VALUES ('84', '廊架', '81', '0');
INSERT INTO `category` VALUES ('85', '景亭', '81', '0');
INSERT INTO `category` VALUES ('86', '景桥', '81', '0');
INSERT INTO `category` VALUES ('87', '地面铺装', '80', '0');
INSERT INTO `category` VALUES ('88', '广场铺装', '87', '0');
INSERT INTO `category` VALUES ('89', '停车铺装', '87', '0');
INSERT INTO `category` VALUES ('90', '道路铺装', '87', '0');
INSERT INTO `category` VALUES ('91', '室外水景', '80', '0');
INSERT INTO `category` VALUES ('92', '水体及驳岸', '91', '0');
INSERT INTO `category` VALUES ('93', '叠水', '91', '0');
INSERT INTO `category` VALUES ('94', '泳池', '91', '0');
INSERT INTO `category` VALUES ('95', '种植绿化', '80', '0');
INSERT INTO `category` VALUES ('96', '种植设计', '95', '0');
INSERT INTO `category` VALUES ('97', '乔木设计', '95', '0');
INSERT INTO `category` VALUES ('98', '灌木设计', '95', '0');
INSERT INTO `category` VALUES ('99', '藤本设计', '95', '0');
INSERT INTO `category` VALUES ('100', '地被设计', '95', '0');
INSERT INTO `category` VALUES ('101', '苗木表', '95', '0');
INSERT INTO `category` VALUES ('102', '室外小品', '80', '0');
INSERT INTO `category` VALUES ('103', '室外小品布置', '102', '0');
INSERT INTO `category` VALUES ('104', '座椅', '102', '0');
INSERT INTO `category` VALUES ('105', '花钵', '102', '0');
INSERT INTO `category` VALUES ('106', '雕塑', '102', '0');
INSERT INTO `category` VALUES ('107', '其他', '102', '0');
INSERT INTO `category` VALUES ('108', '标识系统', '80', '0');
INSERT INTO `category` VALUES ('109', '标识布置', '108', '0');
INSERT INTO `category` VALUES ('110', '总图标识', '108', '0');
INSERT INTO `category` VALUES ('111', '标识井盖', '108', '0');
INSERT INTO `category` VALUES ('112', '指路牌', '108', '0');
INSERT INTO `category` VALUES ('113', 'LOGO', '108', '0');
INSERT INTO `category` VALUES ('114', '门牌', '108', '0');
INSERT INTO `category` VALUES ('115', '其他', '108', '0');
INSERT INTO `category` VALUES ('116', '照明系统', '80', '0');
INSERT INTO `category` VALUES ('117', '照明布置', '116', '0');
INSERT INTO `category` VALUES ('118', '道路照明', '116', '0');
INSERT INTO `category` VALUES ('119', '植物照明', '116', '0');
INSERT INTO `category` VALUES ('120', '水体照明', '116', '0');
INSERT INTO `category` VALUES ('121', '硬景照明', '116', '0');
INSERT INTO `category` VALUES ('122', '园区景观', '193', '1');
INSERT INTO `category` VALUES ('123', '构筑物', '122', '0');
INSERT INTO `category` VALUES ('124', '入口大门', '123', '0');
INSERT INTO `category` VALUES ('125', '围墙', '123', '0');
INSERT INTO `category` VALUES ('126', '廊架', '123', '0');
INSERT INTO `category` VALUES ('127', '景亭', '123', '0');
INSERT INTO `category` VALUES ('128', '景桥', '123', '0');
INSERT INTO `category` VALUES ('129', '地面铺装', '122', '0');
INSERT INTO `category` VALUES ('130', '广场铺装', '129', '0');
INSERT INTO `category` VALUES ('131', '停车铺装', '129', '0');
INSERT INTO `category` VALUES ('132', '道路铺装', '129', '0');
INSERT INTO `category` VALUES ('133', '水景设计', '122', '0');
INSERT INTO `category` VALUES ('134', '水体及驳岸', '133', '0');
INSERT INTO `category` VALUES ('135', '叠水', '133', '0');
INSERT INTO `category` VALUES ('136', '泳池', '133', '0');
INSERT INTO `category` VALUES ('137', '种植绿化', '122', '0');
INSERT INTO `category` VALUES ('138', '种植设计', '137', '0');
INSERT INTO `category` VALUES ('139', '乔木设计', '137', '0');
INSERT INTO `category` VALUES ('140', '灌木设计', '137', '0');
INSERT INTO `category` VALUES ('141', '藤本设计', '137', '0');
INSERT INTO `category` VALUES ('142', '地被设计', '137', '0');
INSERT INTO `category` VALUES ('143', '苗木表', '137', '0');
INSERT INTO `category` VALUES ('144', '室外小品', '122', '0');
INSERT INTO `category` VALUES ('145', '室外小品布置', '144', '0');
INSERT INTO `category` VALUES ('146', '座椅', '144', '0');
INSERT INTO `category` VALUES ('147', '花钵', '144', '0');
INSERT INTO `category` VALUES ('148', '雕塑', '144', '0');
INSERT INTO `category` VALUES ('149', '其他', '144', '0');
INSERT INTO `category` VALUES ('150', '标识系统', '122', '0');
INSERT INTO `category` VALUES ('151', '标识布置', '150', '0');
INSERT INTO `category` VALUES ('152', '总图标识', '150', '0');
INSERT INTO `category` VALUES ('153', '标识井盖', '150', '0');
INSERT INTO `category` VALUES ('154', '指路牌', '150', '0');
INSERT INTO `category` VALUES ('155', 'LOGO', '150', '0');
INSERT INTO `category` VALUES ('156', '门牌', '150', '0');
INSERT INTO `category` VALUES ('157', '其他', '150', '0');
INSERT INTO `category` VALUES ('158', '照明系统', '122', '0');
INSERT INTO `category` VALUES ('159', '照明布置', '158', '0');
INSERT INTO `category` VALUES ('160', '道路照明', '158', '0');
INSERT INTO `category` VALUES ('161', '植物照明', '158', '0');
INSERT INTO `category` VALUES ('162', '水体照明', '158', '0');
INSERT INTO `category` VALUES ('163', '硬景照明', '158', '0');
INSERT INTO `category` VALUES ('164', '公共装修', '193', '1');
INSERT INTO `category` VALUES ('165', '首层大堂', '164', '0');
INSERT INTO `category` VALUES ('166', '设计效果', '165', '0');
INSERT INTO `category` VALUES ('167', '硬装材料', '165', '0');
INSERT INTO `category` VALUES ('168', '软装物料', '165', '0');
INSERT INTO `category` VALUES ('169', '技术指标', '165', '0');
INSERT INTO `category` VALUES ('170', '电梯厅', '164', '0');
INSERT INTO `category` VALUES ('171', '设计效果', '170', '0');
INSERT INTO `category` VALUES ('172', '硬装材料', '170', '0');
INSERT INTO `category` VALUES ('173', '软装物料', '170', '0');
INSERT INTO `category` VALUES ('174', '技术指标', '170', '0');
INSERT INTO `category` VALUES ('175', '架空层', '164', '0');
INSERT INTO `category` VALUES ('176', '设计效果', '175', '0');
INSERT INTO `category` VALUES ('177', '硬装材料', '175', '0');
INSERT INTO `category` VALUES ('178', '软装物料', '175', '0');
INSERT INTO `category` VALUES ('179', '技术指标', '175', '0');
INSERT INTO `category` VALUES ('180', '电梯轿厢', '164', '0');
INSERT INTO `category` VALUES ('181', '设计效果', '180', '0');
INSERT INTO `category` VALUES ('182', '硬装材料', '180', '0');
INSERT INTO `category` VALUES ('183', '软装物料', '180', '0');
INSERT INTO `category` VALUES ('184', '技术指标', '180', '0');
INSERT INTO `category` VALUES ('185', '车库大堂', '164', '0');
INSERT INTO `category` VALUES ('186', '设计效果', '185', '0');
INSERT INTO `category` VALUES ('187', '硬装材料', '185', '0');
INSERT INTO `category` VALUES ('188', '软装物料', '185', '0');
INSERT INTO `category` VALUES ('189', '技术指标', '185', '0');
INSERT INTO `category` VALUES ('193', '产品设计标准化', '0', null);
INSERT INTO `category` VALUES ('462', '封面图', '1', '3');
INSERT INTO `category` VALUES ('463', '导航信息表', '1', '2');
INSERT INTO `category` VALUES ('464', '封面图', '11', '3');
INSERT INTO `category` VALUES ('465', '导航信息表', '11', '2');
INSERT INTO `category` VALUES ('466', '封面图', '17', '3');
INSERT INTO `category` VALUES ('467', '导航信息表', '17', '2');
INSERT INTO `category` VALUES ('468', '封面图', '22', '3');
INSERT INTO `category` VALUES ('469', '导航信息表', '22', '2');
INSERT INTO `category` VALUES ('470', '封面图', '28', '3');
INSERT INTO `category` VALUES ('471', '导航信息表', '28', '2');
INSERT INTO `category` VALUES ('472', '封面图', '36', '3');
INSERT INTO `category` VALUES ('473', '导航信息表', '36', '2');
INSERT INTO `category` VALUES ('474', '封面图', '51', '3');
INSERT INTO `category` VALUES ('475', '导航信息表', '51', '2');
INSERT INTO `category` VALUES ('476', '封面图', '63', '3');
INSERT INTO `category` VALUES ('477', '导航信息表', '63', '2');
INSERT INTO `category` VALUES ('478', '封面图', '80', '3');
INSERT INTO `category` VALUES ('479', '导航信息表', '80', '2');
INSERT INTO `category` VALUES ('480', '封面图', '122', '3');
INSERT INTO `category` VALUES ('481', '导航信息表', '122', '2');
INSERT INTO `category` VALUES ('482', '封面图', '164', '3');
INSERT INTO `category` VALUES ('483', '导航信息表', '164', '2');
INSERT INTO `category` VALUES ('484', '数字化方案', '193', '1');

-- ----------------------------
-- Table structure for category_back
-- ----------------------------
DROP TABLE IF EXISTS `category_back`;
CREATE TABLE `category_back` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL COMMENT '下载用户',
  `parent_id` int(11) DEFAULT NULL COMMENT '审核状态：已通过（1），审核中（0），拒绝（-1)',
  `flag` int(11) DEFAULT NULL COMMENT 'NULL或者0 普通，1 特别（能够确定导航封面和展示excel信息，如吴经理标1的项目）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='类目标，主要用来描述分类标准';

-- ----------------------------
-- Records of category_back
-- ----------------------------

-- ----------------------------
-- Table structure for category_test
-- ----------------------------
DROP TABLE IF EXISTS `category_test`;
CREATE TABLE `category_test` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(200) DEFAULT '',
  `ParentId` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category_test
-- ----------------------------
INSERT INTO `category_test` VALUES ('1', '门', '0');
INSERT INTO `category_test` VALUES ('2', '窗', '0');
INSERT INTO `category_test` VALUES ('5', '木门', '1');
INSERT INTO `category_test` VALUES ('6', '铁门', '1');
INSERT INTO `category_test` VALUES ('10', '防盗窗', '2');
INSERT INTO `category_test` VALUES ('12', '生铁窗', '2');
INSERT INTO `category_test` VALUES ('13', '加强铁窗', '12');
INSERT INTO `category_test` VALUES ('14', '加固铁窗', '12');
INSERT INTO `category_test` VALUES ('15', '防盗门', '6');
INSERT INTO `category_test` VALUES ('16', '测试铁窗A', '13');
INSERT INTO `category_test` VALUES ('17', '测试铁窗B', '13');
INSERT INTO `category_test` VALUES ('18', '测试防盗门A', '15');
INSERT INTO `category_test` VALUES ('19', '玻璃窗', '2');
INSERT INTO `category_test` VALUES ('20', '地板', '0');
INSERT INTO `category_test` VALUES ('21', '木地板', '20');
INSERT INTO `category_test` VALUES ('22', '玻璃窗', '21');
INSERT INTO `category_test` VALUES ('23', '墙', '0');
INSERT INTO `category_test` VALUES ('24', '防盗', '10');

-- ----------------------------
-- Table structure for company
-- ----------------------------
DROP TABLE IF EXISTS `company`;
CREATE TABLE `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `com_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8 COMMENT='子公司';

-- ----------------------------
-- Records of company
-- ----------------------------
INSERT INTO `company` VALUES ('1', '北京总公司');
INSERT INTO `company` VALUES ('2', '河北分公司');
INSERT INTO `company` VALUES ('3', '新疆');
INSERT INTO `company` VALUES ('4', '成都');
INSERT INTO `company` VALUES ('5', '潍坊');
INSERT INTO `company` VALUES ('6', '事业');
INSERT INTO `company` VALUES ('7', '华东');
INSERT INTO `company` VALUES ('8', '北京');
INSERT INTO `company` VALUES ('9', '武汉');
INSERT INTO `company` VALUES ('10', '西安');
INSERT INTO `company` VALUES ('11', '物业');
INSERT INTO `company` VALUES ('12', '天津');
INSERT INTO `company` VALUES ('13', '长沙');
INSERT INTO `company` VALUES ('14', '中建公司');
INSERT INTO `company` VALUES ('15', '红强公司');
INSERT INTO `company` VALUES ('16', '水木红');
INSERT INTO `company` VALUES ('17', '鑫磊');
INSERT INTO `company` VALUES ('18', '1234');
INSERT INTO `company` VALUES ('19', '水木宏创');
INSERT INTO `company` VALUES ('20', 'sdsds');
INSERT INTO `company` VALUES ('21', '中国足协');
INSERT INTO `company` VALUES ('22', '宏创');
INSERT INTO `company` VALUES ('23', '都是');
INSERT INTO `company` VALUES ('24', '宏创');
INSERT INTO `company` VALUES ('25', 'dffds');
INSERT INTO `company` VALUES ('26', 'sdas');
INSERT INTO `company` VALUES ('27', 'sdas');
INSERT INTO `company` VALUES ('28', '地方大幅度');
INSERT INTO `company` VALUES ('29', 'dfdf');
INSERT INTO `company` VALUES ('30', 'we');
INSERT INTO `company` VALUES ('31', '');
INSERT INTO `company` VALUES ('32', '');
INSERT INTO `company` VALUES ('33', '');
INSERT INTO `company` VALUES ('34', '');
INSERT INTO `company` VALUES ('35', '');
INSERT INTO `company` VALUES ('36', '');
INSERT INTO `company` VALUES ('37', '');
INSERT INTO `company` VALUES ('38', '');
INSERT INTO `company` VALUES ('39', '');
INSERT INTO `company` VALUES ('40', '');
INSERT INTO `company` VALUES ('41', '');
INSERT INTO `company` VALUES ('42', '');
INSERT INTO `company` VALUES ('43', '');
INSERT INTO `company` VALUES ('44', '');
INSERT INTO `company` VALUES ('45', '');
INSERT INTO `company` VALUES ('46', '');
INSERT INTO `company` VALUES ('47', '');
INSERT INTO `company` VALUES ('48', '');
INSERT INTO `company` VALUES ('49', '');
INSERT INTO `company` VALUES ('50', '');
INSERT INTO `company` VALUES ('51', '');
INSERT INTO `company` VALUES ('52', '');
INSERT INTO `company` VALUES ('53', '');
INSERT INTO `company` VALUES ('54', '');
INSERT INTO `company` VALUES ('55', '');
INSERT INTO `company` VALUES ('56', '');
INSERT INTO `company` VALUES ('57', '');
INSERT INTO `company` VALUES ('58', '');
INSERT INTO `company` VALUES ('59', '');
INSERT INTO `company` VALUES ('60', '');
INSERT INTO `company` VALUES ('61', '');
INSERT INTO `company` VALUES ('62', '');
INSERT INTO `company` VALUES ('63', '');
INSERT INTO `company` VALUES ('64', '');
INSERT INTO `company` VALUES ('65', '');
INSERT INTO `company` VALUES ('66', '');
INSERT INTO `company` VALUES ('67', '');
INSERT INTO `company` VALUES ('68', '');
INSERT INTO `company` VALUES ('69', '');
INSERT INTO `company` VALUES ('70', '');
INSERT INTO `company` VALUES ('71', '二人');
INSERT INTO `company` VALUES ('72', '二人');
INSERT INTO `company` VALUES ('73', '');
INSERT INTO `company` VALUES ('74', '');
INSERT INTO `company` VALUES ('75', '');
INSERT INTO `company` VALUES ('76', '');
INSERT INTO `company` VALUES ('77', '');
INSERT INTO `company` VALUES ('78', '');
INSERT INTO `company` VALUES ('79', '');
INSERT INTO `company` VALUES ('80', '');
INSERT INTO `company` VALUES ('81', '');
INSERT INTO `company` VALUES ('82', 'sdas');
INSERT INTO `company` VALUES ('83', 'sdd');
INSERT INTO `company` VALUES ('84', 'dfdf');
INSERT INTO `company` VALUES ('85', '风管');
INSERT INTO `company` VALUES ('86', '');
INSERT INTO `company` VALUES ('87', '');
INSERT INTO `company` VALUES ('88', '');
INSERT INTO `company` VALUES ('89', '');
INSERT INTO `company` VALUES ('90', '');
INSERT INTO `company` VALUES ('91', '');
INSERT INTO `company` VALUES ('92', '');
INSERT INTO `company` VALUES ('93', '');
INSERT INTO `company` VALUES ('94', '');
INSERT INTO `company` VALUES ('95', '');
INSERT INTO `company` VALUES ('96', '');
INSERT INTO `company` VALUES ('97', '');
INSERT INTO `company` VALUES ('98', '');
INSERT INTO `company` VALUES ('99', '');
INSERT INTO `company` VALUES ('100', '');
INSERT INTO `company` VALUES ('101', '');
INSERT INTO `company` VALUES ('102', '');
INSERT INTO `company` VALUES ('103', '');
INSERT INTO `company` VALUES ('104', '');
INSERT INTO `company` VALUES ('105', '');
INSERT INTO `company` VALUES ('106', '');
INSERT INTO `company` VALUES ('107', '');
INSERT INTO `company` VALUES ('108', '');
INSERT INTO `company` VALUES ('109', '');
INSERT INTO `company` VALUES ('110', '');
INSERT INTO `company` VALUES ('111', '');
INSERT INTO `company` VALUES ('112', '');
INSERT INTO `company` VALUES ('113', '');
INSERT INTO `company` VALUES ('114', '');
INSERT INTO `company` VALUES ('115', '');
INSERT INTO `company` VALUES ('116', '');
INSERT INTO `company` VALUES ('117', 'df ');
INSERT INTO `company` VALUES ('118', 'df ');
INSERT INTO `company` VALUES ('119', '金华');
INSERT INTO `company` VALUES ('120', 'sd ');
INSERT INTO `company` VALUES ('121', 'sss');
INSERT INTO `company` VALUES ('122', 'sss');
INSERT INTO `company` VALUES ('123', 'sss');
INSERT INTO `company` VALUES ('124', 'sss');
INSERT INTO `company` VALUES ('125', 'sss');
INSERT INTO `company` VALUES ('126', 'sss');
INSERT INTO `company` VALUES ('127', 'sss');
INSERT INTO `company` VALUES ('128', 'sss');
INSERT INTO `company` VALUES ('129', 'sss');
INSERT INTO `company` VALUES ('130', 'sss');
INSERT INTO `company` VALUES ('131', 'sss');
INSERT INTO `company` VALUES ('132', 'sss');
INSERT INTO `company` VALUES ('133', 'sss');
INSERT INTO `company` VALUES ('134', 'sss');
INSERT INTO `company` VALUES ('135', '所得到的');
INSERT INTO `company` VALUES ('136', '所得到的');
INSERT INTO `company` VALUES ('137', 'dfdf');
INSERT INTO `company` VALUES ('138', '宏创');
INSERT INTO `company` VALUES ('139', '地方');
INSERT INTO `company` VALUES ('140', '');
INSERT INTO `company` VALUES ('141', '房改房');
INSERT INTO `company` VALUES ('142', '哈');
INSERT INTO `company` VALUES ('143', '达利园');
INSERT INTO `company` VALUES ('144', '达利园');

-- ----------------------------
-- Table structure for datafield
-- ----------------------------
DROP TABLE IF EXISTS `datafield`;
CREATE TABLE `datafield` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(300) DEFAULT NULL,
  `category_id` int(11) unsigned DEFAULT NULL COMMENT '所属的category(叶节点)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=118 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of datafield
-- ----------------------------
INSERT INTO `datafield` VALUES ('1', '总用地面积', '2');
INSERT INTO `datafield` VALUES ('2', '示范区占地面积', '2');
INSERT INTO `datafield` VALUES ('3', '容积率', '2');
INSERT INTO `datafield` VALUES ('4', '建筑面积', '2');
INSERT INTO `datafield` VALUES ('5', '建筑密度', '2');
INSERT INTO `datafield` VALUES ('6', '绿化率', '2');
INSERT INTO `datafield` VALUES ('7', '停车配比', '2');
INSERT INTO `datafield` VALUES ('8', '出入口数量', '3');
INSERT INTO `datafield` VALUES ('9', '停车配比', '3');
INSERT INTO `datafield` VALUES ('10', '地上停车数量', '3');
INSERT INTO `datafield` VALUES ('11', '地下停车数量', '3');
INSERT INTO `datafield` VALUES ('12', '人车分流情况', '3');
INSERT INTO `datafield` VALUES ('13', '人防等级', '4');
INSERT INTO `datafield` VALUES ('14', '总面积', '4');
INSERT INTO `datafield` VALUES ('15', '地下室层高', '4');
INSERT INTO `datafield` VALUES ('16', '开发分期次数', '5');
INSERT INTO `datafield` VALUES ('17', '每期面积规模/占比', '5');
INSERT INTO `datafield` VALUES ('18', '每期物业类型', '5');
INSERT INTO `datafield` VALUES ('19', '产品形式', '13');
INSERT INTO `datafield` VALUES ('20', '面积', '13');
INSERT INTO `datafield` VALUES ('21', '拼合方式', '13');
INSERT INTO `datafield` VALUES ('22', '梯户比', '13');
INSERT INTO `datafield` VALUES ('23', '得房率', '13');
INSERT INTO `datafield` VALUES ('24', '产品形式', '14');
INSERT INTO `datafield` VALUES ('25', '面积', '14');
INSERT INTO `datafield` VALUES ('26', '拼合方式', '14');
INSERT INTO `datafield` VALUES ('27', '梯户比', '14');
INSERT INTO `datafield` VALUES ('28', '得房率', '14');
INSERT INTO `datafield` VALUES ('29', '产品形式', '15');
INSERT INTO `datafield` VALUES ('30', '面积', '15');
INSERT INTO `datafield` VALUES ('31', '拼合方式', '15');
INSERT INTO `datafield` VALUES ('32', '梯户比', '15');
INSERT INTO `datafield` VALUES ('33', '得房率', '15');
INSERT INTO `datafield` VALUES ('34', '产品形式', '17');
INSERT INTO `datafield` VALUES ('35', '主要材料', '17');
INSERT INTO `datafield` VALUES ('36', '立面风格', '17');
INSERT INTO `datafield` VALUES ('37', '产品形式', '37');
INSERT INTO `datafield` VALUES ('38', '面积', '37');
INSERT INTO `datafield` VALUES ('39', '拼合方式', '37');
INSERT INTO `datafield` VALUES ('40', '梯户比', '37');
INSERT INTO `datafield` VALUES ('41', '得房率', '37');
INSERT INTO `datafield` VALUES ('42', '产品形式', '38');
INSERT INTO `datafield` VALUES ('43', '面积', '38');
INSERT INTO `datafield` VALUES ('44', '拼合方式', '38');
INSERT INTO `datafield` VALUES ('45', '梯户比', '38');
INSERT INTO `datafield` VALUES ('46', '得房率', '38');
INSERT INTO `datafield` VALUES ('47', '产品形式', '39');
INSERT INTO `datafield` VALUES ('48', '面积', '39');
INSERT INTO `datafield` VALUES ('49', '拼合方式', '39');
INSERT INTO `datafield` VALUES ('50', '梯户比', '39');
INSERT INTO `datafield` VALUES ('51', '得房率', '39');
INSERT INTO `datafield` VALUES ('52', '产品形式', '41');
INSERT INTO `datafield` VALUES ('53', '主要材料', '41');
INSERT INTO `datafield` VALUES ('54', '立面风格', '41');
INSERT INTO `datafield` VALUES ('55', '产品形式', '60');
INSERT INTO `datafield` VALUES ('56', '面积', '60');
INSERT INTO `datafield` VALUES ('57', '地上层数', '60');
INSERT INTO `datafield` VALUES ('58', '地下层数', '60');
INSERT INTO `datafield` VALUES ('59', '得房率', '60');
INSERT INTO `datafield` VALUES ('60', '产品形式', '62');
INSERT INTO `datafield` VALUES ('61', '主要材料', '62');
INSERT INTO `datafield` VALUES ('62', '立面风格', '62');
INSERT INTO `datafield` VALUES ('63', '总建筑面积', '82');
INSERT INTO `datafield` VALUES ('64', '层数', '82');
INSERT INTO `datafield` VALUES ('65', '首层建筑面积', '82');
INSERT INTO `datafield` VALUES ('66', '层高', '82');
INSERT INTO `datafield` VALUES ('67', '产品形式', '84');
INSERT INTO `datafield` VALUES ('68', '主要材料', '84');
INSERT INTO `datafield` VALUES ('69', '立面风格', '84');
INSERT INTO `datafield` VALUES ('70', '示范区用地面积', '129');
INSERT INTO `datafield` VALUES ('71', '种植面积', '129');
INSERT INTO `datafield` VALUES ('72', '硬景面积', '129');
INSERT INTO `datafield` VALUES ('73', '水景面积', '129');
INSERT INTO `datafield` VALUES ('74', '软硬景比例', '129');
INSERT INTO `datafield` VALUES ('75', '乔木种植密度', '129');
INSERT INTO `datafield` VALUES ('76', '停车数量', '129');
INSERT INTO `datafield` VALUES ('77', '住区景观面积', '161');
INSERT INTO `datafield` VALUES ('78', '种植面积', '161');
INSERT INTO `datafield` VALUES ('79', '硬景面积', '161');
INSERT INTO `datafield` VALUES ('80', '水景面积', '161');
INSERT INTO `datafield` VALUES ('81', '软硬景比例', '161');
INSERT INTO `datafield` VALUES ('82', '乔木种植密度', '161');
INSERT INTO `datafield` VALUES ('83', '总建筑面积', '214');
INSERT INTO `datafield` VALUES ('84', '层数', '214');
INSERT INTO `datafield` VALUES ('85', '产品形式', '215');
INSERT INTO `datafield` VALUES ('86', '主要材料', '215');
INSERT INTO `datafield` VALUES ('87', '立面风格', '215');
INSERT INTO `datafield` VALUES ('88', '总建筑面积', '218');
INSERT INTO `datafield` VALUES ('89', '层数', '218');
INSERT INTO `datafield` VALUES ('90', '产品形式', '219');
INSERT INTO `datafield` VALUES ('91', '主要材料', '219');
INSERT INTO `datafield` VALUES ('92', '立面风格', '219');
INSERT INTO `datafield` VALUES ('93', '总建筑面积', '222');
INSERT INTO `datafield` VALUES ('94', '层数', '222');
INSERT INTO `datafield` VALUES ('95', '产品形式', '223');
INSERT INTO `datafield` VALUES ('96', '主要材料', '223');
INSERT INTO `datafield` VALUES ('97', '立面风格', '223');
INSERT INTO `datafield` VALUES ('98', '总建筑面积', '226');
INSERT INTO `datafield` VALUES ('99', '层数', '226');
INSERT INTO `datafield` VALUES ('100', '产品形式', '227');
INSERT INTO `datafield` VALUES ('101', '主要材料', '227');
INSERT INTO `datafield` VALUES ('102', '立面风格', '227');
INSERT INTO `datafield` VALUES ('103', '总建筑面积', '230');
INSERT INTO `datafield` VALUES ('104', '层数', '230');
INSERT INTO `datafield` VALUES ('105', '产品形式', '231');
INSERT INTO `datafield` VALUES ('106', '主要材料', '231');
INSERT INTO `datafield` VALUES ('107', '立面风格', '231');
INSERT INTO `datafield` VALUES ('108', '总建筑面积', '234');
INSERT INTO `datafield` VALUES ('109', '层数', '234');
INSERT INTO `datafield` VALUES ('110', '产品形式', '235');
INSERT INTO `datafield` VALUES ('111', '主要材料', '235');
INSERT INTO `datafield` VALUES ('112', '立面风格', '235');
INSERT INTO `datafield` VALUES ('113', '总建筑面积', '238');
INSERT INTO `datafield` VALUES ('114', '层数', '238');
INSERT INTO `datafield` VALUES ('115', '产品形式', '239');
INSERT INTO `datafield` VALUES ('116', '主要材料', '239');
INSERT INTO `datafield` VALUES ('117', '立面风格', '239');

-- ----------------------------
-- Table structure for datainfo
-- ----------------------------
DROP TABLE IF EXISTS `datainfo`;
CREATE TABLE `datainfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `datacontent` longtext NOT NULL COMMENT '下载用户',
  `category_id` int(11) DEFAULT NULL COMMENT '审核状态：已通过（1），审核中（0），拒绝（-1)',
  `files_id` int(11) DEFAULT NULL COMMENT '下载次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='下载审核、统计';

-- ----------------------------
-- Records of datainfo
-- ----------------------------
INSERT INTO `datainfo` VALUES ('1', '100000', '2', '1');
INSERT INTO `datainfo` VALUES ('2', '20101021', '2', '1');
INSERT INTO `datainfo` VALUES ('3', '中建地产西安', '2', '1');
INSERT INTO `datainfo` VALUES ('4', '', null, null);

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(50) DEFAULT NULL,
  `dept_info` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='部门';

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES ('1', '营销管理', null);
INSERT INTO `dept` VALUES ('2', '苏州路项目发展', null);
INSERT INTO `dept` VALUES ('3', '河滩路项目发展', null);
INSERT INTO `dept` VALUES ('4', '透支管理', null);
INSERT INTO `dept` VALUES ('5', '财务资金', null);
INSERT INTO `dept` VALUES ('6', '综合管理', null);
INSERT INTO `dept` VALUES ('7', '合约商务', null);
INSERT INTO `dept` VALUES ('8', '人力资源', null);
INSERT INTO `dept` VALUES ('9', '规划设计', null);
INSERT INTO `dept` VALUES ('10', '前期开发', null);
INSERT INTO `dept` VALUES ('11', '领导', null);
INSERT INTO `dept` VALUES ('12', '产品研发部', null);
INSERT INTO `dept` VALUES ('13', '中建部门', null);
INSERT INTO `dept` VALUES ('14', ' 红强部门', null);
INSERT INTO `dept` VALUES ('15', '设计院', null);

-- ----------------------------
-- Table structure for download
-- ----------------------------
DROP TABLE IF EXISTS `download`;
CREATE TABLE `download` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '下载用户',
  `file_guid` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '审核状态：已通过（1），审核中（0），拒绝（-1)',
  `audit_time` int(11) DEFAULT NULL,
  `download_time` int(11) DEFAULT NULL,
  `download_count` int(11) DEFAULT NULL COMMENT '下载次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=428 DEFAULT CHARSET=utf8 COMMENT='下载审核、统计';

-- ----------------------------
-- Records of download
-- ----------------------------
INSERT INTO `download` VALUES ('98', '230', '5094d9de-afce-4e3b-9566-57f6841c314f', null, null, '1452491918', null);
INSERT INTO `download` VALUES ('99', '230', 'c518b2fe-d86f-452d-b56f-2ca3a756c095', null, null, '1452491937', null);
INSERT INTO `download` VALUES ('100', '230', 'd0ea9188-f0eb-424f-92f6-8224ed43f533', null, null, '1452491989', null);
INSERT INTO `download` VALUES ('109', '230', '06b9081e-13dc-4c88-9432-3a8eca659522', null, null, '1452497841', null);
INSERT INTO `download` VALUES ('110', '230', '21d5a23d-1d46-479d-809b-4fd563cf9984', null, null, '1452497867', null);
INSERT INTO `download` VALUES ('111', '230', '7d3ddec1-675b-4e93-b5ad-4de43d0dca24', null, null, '1452497884', null);
INSERT INTO `download` VALUES ('113', '230', '4ff46dc8-8147-4e00-820e-9124f3bfeea7', null, null, '1452563793', null);
INSERT INTO `download` VALUES ('114', '230', '7984f0f3-bf1f-4607-9dae-75b8504ddf12', null, null, '1452563807', null);
INSERT INTO `download` VALUES ('115', '230', '218c855f-1e1c-433c-a305-a7ecda3509f1', null, null, '1452563820', null);
INSERT INTO `download` VALUES ('116', '230', 'b62b1015-fada-4501-a68b-b85a36acf002', null, null, '1452563920', null);
INSERT INTO `download` VALUES ('117', '230', '6e23a485-148b-4833-8ed3-dad31054d84f', null, null, '1452563930', null);
INSERT INTO `download` VALUES ('118', '230', 'e305f3e7-241c-4796-9bda-be2780937a9c', null, null, '1452563954', null);
INSERT INTO `download` VALUES ('119', '230', '3c0e733e-e31d-4d8b-bb50-b4b9756a6917', null, null, '1452564093', null);
INSERT INTO `download` VALUES ('120', '230', '48f14019-eedb-4bb8-8f3f-fd7f7fef1109', null, null, '1452564139', null);
INSERT INTO `download` VALUES ('121', '230', '309efddb-9314-44ae-9e2d-ac8f234e6197', null, null, '1452564159', null);
INSERT INTO `download` VALUES ('122', '230', '4402d08c-523b-4e89-a588-dd241807b4c2', null, null, '1452564173', null);
INSERT INTO `download` VALUES ('123', '230', 'ecd03a45-bb3a-4205-94ba-a80da8de890c', null, null, '1452564188', null);
INSERT INTO `download` VALUES ('127', '230', 'ff2cf688-4247-4a9a-9801-ac37ea4262c8', null, null, '1452564353', null);
INSERT INTO `download` VALUES ('128', '230', '9d900e3b-28d4-4826-923d-90302bab47df', null, null, '1452564375', null);
INSERT INTO `download` VALUES ('129', '230', '292a46b6-0fea-4136-8ca2-b4277fa638c5', null, null, '1452564396', null);
INSERT INTO `download` VALUES ('130', '230', 'e02fe860-63ee-4492-87ae-9b1d3c20cac0', null, null, '1452564410', null);
INSERT INTO `download` VALUES ('131', '230', 'ef71279b-3482-4a53-8cff-bcc7d190a54e', null, null, '1452564428', null);
INSERT INTO `download` VALUES ('132', '230', 'f3495506-e063-488f-8e25-be0419082504', null, null, '1452564448', null);
INSERT INTO `download` VALUES ('133', '230', '9837ab81-47ba-4e12-8e1c-d8a4548a0f09', null, null, '1452564465', null);
INSERT INTO `download` VALUES ('134', '230', 'c7403e20-42c2-4127-8476-98b6f565f727', null, null, '1452564595', null);
INSERT INTO `download` VALUES ('135', '230', 'd3a950db-dadd-4c23-a1bf-d12b44e37438', null, null, '1452564610', null);
INSERT INTO `download` VALUES ('136', '230', 'e2ddcc3e-470c-4808-9fb6-48b7f0ab5ec0', null, null, '1452564623', null);
INSERT INTO `download` VALUES ('137', '230', '0145341c-2ce3-49be-b6b8-a02524fa74bd', null, null, '1452564647', null);
INSERT INTO `download` VALUES ('138', '230', '9ca78502-7ea1-4229-ade6-a8e10e83d03d', null, null, '1452564668', null);
INSERT INTO `download` VALUES ('192', '231', '4402d08c-523b-4e89-a588-dd241807b4c2', null, null, '1452827793', null);
INSERT INTO `download` VALUES ('195', '231', '4ff46dc8-8147-4e00-820e-9124f3bfeea7', null, null, '1452828658', '1');
INSERT INTO `download` VALUES ('196', '231', '4402d08c-523b-4e89-a588-dd241807b4c2', null, null, '1452829121', '1');
INSERT INTO `download` VALUES ('197', '231', '6a3ceafe-097f-4c89-af67-3db37235df63', null, null, '1452829125', '1');
INSERT INTO `download` VALUES ('198', '231', '6a3ceafe-097f-4c89-af67-3db37235df63', null, null, '1452829139', '1');
INSERT INTO `download` VALUES ('199', '231', 'dd243d9a-4289-4501-b335-ac39fda02b8c', null, null, '1452829151', '1');
INSERT INTO `download` VALUES ('200', '231', 'ff2cf688-4247-4a9a-9801-ac37ea4262c8', null, null, '1452829154', '1');
INSERT INTO `download` VALUES ('201', '231', '3c0e733e-e31d-4d8b-bb50-b4b9756a6917', null, null, '1452829311', '1');
INSERT INTO `download` VALUES ('202', '231', '525646b0-078f-4438-a98b-49e91d7c7588', null, null, '1452829641', '1');
INSERT INTO `download` VALUES ('213', '231', '07301213-3d93-47e3-85c5-d1c2c64a5b7a', null, null, '1452924064', '1');
INSERT INTO `download` VALUES ('215', '231', '07301213-3d93-47e3-85c5-d1c2c64a5b7a', null, null, '1452934663', '1');
INSERT INTO `download` VALUES ('216', '231', '07301213-3d93-47e3-85c5-d1c2c64a5b7a', null, null, '1452934667', '1');
INSERT INTO `download` VALUES ('217', '231', 'b97cc5df-d2f2-4400-9937-5e62cf18885a', null, null, '1452934706', '1');
INSERT INTO `download` VALUES ('221', '231', 'b97cc5df-d2f2-4400-9937-5e62cf18885a', null, null, '1452934800', '1');
INSERT INTO `download` VALUES ('223', '231', '525646b0-078f-4438-a98b-49e91d7c7588', null, null, '1452934811', '1');
INSERT INTO `download` VALUES ('225', '231', '4ff46dc8-8147-4e00-820e-9124f3bfeea7', null, null, '1452934898', '1');
INSERT INTO `download` VALUES ('226', '231', '4ff46dc8-8147-4e00-820e-9124f3bfeea7', null, null, '1452934903', '1');
INSERT INTO `download` VALUES ('227', '232', '07301213-3d93-47e3-85c5-d1c2c64a5b7a', null, null, '1452934907', '1');
INSERT INTO `download` VALUES ('228', '232', 'cbffe4df-b772-4c27-9b46-0470bcb28688', null, null, '1452934920', '1');
INSERT INTO `download` VALUES ('229', '231', '4ff46dc8-8147-4e00-820e-9124f3bfeea7', null, null, '1452934939', '1');
INSERT INTO `download` VALUES ('230', '231', '4ff46dc8-8147-4e00-820e-9124f3bfeea7', null, null, '1452935010', '1');
INSERT INTO `download` VALUES ('231', '231', 'b97cc5df-d2f2-4400-9937-5e62cf18885a', null, null, '1452935078', '1');
INSERT INTO `download` VALUES ('232', '231', '07301213-3d93-47e3-85c5-d1c2c64a5b7a', null, null, '1452935081', '1');
INSERT INTO `download` VALUES ('233', '231', '07301213-3d93-47e3-85c5-d1c2c64a5b7a', null, null, '1452935099', '1');
INSERT INTO `download` VALUES ('234', '232', '19f612f9-6afb-4e91-9557-258a849704f8', null, null, '1452935108', '1');
INSERT INTO `download` VALUES ('235', '232', 'afbcba50-20ff-4da7-a5f4-d20dcc97cfb2', null, null, '1452935179', '1');
INSERT INTO `download` VALUES ('236', '232', 'b97cc5df-d2f2-4400-9937-5e62cf18885a', null, null, '1452936018', '1');
INSERT INTO `download` VALUES ('237', '232', 'fb4a2b78-7808-4985-97b9-e6c03058ca9f', null, null, '1452936121', '1');
INSERT INTO `download` VALUES ('238', '232', '4ff46dc8-8147-4e00-820e-9124f3bfeea7', null, null, '1452936193', '1');
INSERT INTO `download` VALUES ('239', '232', '4ff46dc8-8147-4e00-820e-9124f3bfeea7', null, null, '1452936204', '1');
INSERT INTO `download` VALUES ('240', '232', '45623931-904d-4df2-8552-6d5f673ba099', null, null, '1452936238', '1');
INSERT INTO `download` VALUES ('241', '231', 'b97cc5df-d2f2-4400-9937-5e62cf18885a', null, null, '1452936611', '1');
INSERT INTO `download` VALUES ('242', '231', 'd357339e-5788-4f00-83ec-f4979370d2b2', null, null, '1452936637', '1');
INSERT INTO `download` VALUES ('243', '231', 'd357339e-5788-4f00-83ec-f4979370d2b2', null, null, '1452936642', '1');
INSERT INTO `download` VALUES ('244', '231', '22c87ea8-a7a4-426c-aa5b-1c1c36aa3896', null, null, '1452936649', '1');
INSERT INTO `download` VALUES ('245', '231', '22c87ea8-a7a4-426c-aa5b-1c1c36aa3896', null, null, '1452936673', '1');
INSERT INTO `download` VALUES ('246', '231', 'd357339e-5788-4f00-83ec-f4979370d2b2', null, null, '1452936989', '1');
INSERT INTO `download` VALUES ('247', '231', 'b97cc5df-d2f2-4400-9937-5e62cf18885a', null, null, '1452936994', '1');
INSERT INTO `download` VALUES ('248', '231', 'b97cc5df-d2f2-4400-9937-5e62cf18885a', null, null, '1452937093', '1');
INSERT INTO `download` VALUES ('255', '234', '3a3b7b28-75b8-4b39-b699-973a0c326b70', null, null, '1453256664', '1');
INSERT INTO `download` VALUES ('256', '234', 'a83b423f-83ea-4534-96e6-d8cbe32d16ce', null, null, '1453256779', '1');
INSERT INTO `download` VALUES ('257', '234', 'a83b423f-83ea-4534-96e6-d8cbe32d16ce', null, null, '1453256873', '1');
INSERT INTO `download` VALUES ('313', '101', '7755e19b-5100-46d7-9dda-849002281fcc', null, null, '1530580636', null);
INSERT INTO `download` VALUES ('314', '101', 'dd50f974-fac4-4383-b460-321fd3a2ed1c', null, null, '1530580666', null);
INSERT INTO `download` VALUES ('315', '101', 'ea39e1ba-5f47-4977-be5a-f0c13d63fb53', null, null, '1530580693', null);
INSERT INTO `download` VALUES ('316', '101', '8bb660c2-d88f-4bd5-bb1d-976064dbdfa1', null, null, '1530580714', null);
INSERT INTO `download` VALUES ('317', '101', '2b8a3422-2fa8-48d6-a249-b0ae007a9f0b', null, null, '1530580812', null);
INSERT INTO `download` VALUES ('318', '101', '57b83d87-dcb8-4fb0-89cd-7a03165543d8', null, null, '1530580842', null);
INSERT INTO `download` VALUES ('319', '101', '954f578c-0d45-4e60-9c2f-6db2b74c952c', null, null, '1530580872', null);
INSERT INTO `download` VALUES ('320', '101', '185ea5c9-14b1-4826-bfa1-7370a7b5e827', null, null, '1530580895', null);
INSERT INTO `download` VALUES ('321', '101', '8e6039c0-4a85-470b-a825-f9a6f65d63b5', null, null, '1530580921', null);
INSERT INTO `download` VALUES ('322', '101', '4dfeb7ef-d9c3-4c78-80b6-cf341e9298ed', null, null, '1530580956', null);
INSERT INTO `download` VALUES ('323', '101', '26df09e7-2f3b-4be5-bfb9-195f29868487', null, null, '1530581047', null);
INSERT INTO `download` VALUES ('324', '101', '40ce65f5-1730-4c56-a189-7aa15870c71a', null, null, '1530581069', null);
INSERT INTO `download` VALUES ('325', '101', 'a5260dd9-d12e-4c26-a173-c0da1bfc80d2', null, null, '1530581104', null);
INSERT INTO `download` VALUES ('326', '101', '92d7e174-6860-4540-9f67-a9ab06d4e05a', null, null, '1530581133', null);
INSERT INTO `download` VALUES ('327', '101', '27bda983-7071-4c29-b7fb-220d8a1b9278', null, null, '1530581153', null);
INSERT INTO `download` VALUES ('328', '101', 'b959ad0c-b411-436e-9bff-991799613343', null, null, '1530581189', null);
INSERT INTO `download` VALUES ('329', '101', '838fb10a-1e71-48ed-92f6-6e64376ccb69', null, null, '1530581209', null);
INSERT INTO `download` VALUES ('330', '101', 'e15d2359-c757-4e22-91d1-99452c840e94', null, null, '1530581240', null);
INSERT INTO `download` VALUES ('331', '101', '0f6bf369-bced-4e62-91f8-b2953cb76118', null, null, '1530581267', null);
INSERT INTO `download` VALUES ('332', '101', '516757fe-8635-406f-9d3b-c7aefd28bb2a', null, null, '1530581294', null);
INSERT INTO `download` VALUES ('333', '101', '9e6ca54c-758e-4915-87fa-86100f3c4ab0', null, null, '1530581317', null);
INSERT INTO `download` VALUES ('334', '101', 'eddf2b2f-8613-4447-a267-41ad6ac18329', null, null, '1530581345', null);
INSERT INTO `download` VALUES ('335', '101', 'f1b6cc47-9cbc-433f-98ab-d9531f237978', null, null, '1530581609', null);
INSERT INTO `download` VALUES ('336', '101', 'c82a2ce4-f5d4-41b0-8d7a-c068eea9a7ae', null, null, '1530581627', null);
INSERT INTO `download` VALUES ('337', '101', '4287f88e-dd18-413e-b36d-80c8a1321a92', null, null, '1530581647', null);
INSERT INTO `download` VALUES ('338', '101', 'bebd3c64-4ebf-4778-9aab-e58c11d2be2a', null, null, '1530581698', null);
INSERT INTO `download` VALUES ('339', '101', 'f9976aae-6f5c-4f36-ad31-faf4a1565d31', null, null, '1530581718', null);
INSERT INTO `download` VALUES ('340', '101', '76151586-341c-48ac-9cdd-dd5e496272e5', null, null, '1530581737', null);
INSERT INTO `download` VALUES ('341', '101', 'c84a4626-bbc2-4ec4-acb4-69e5811129d9', null, null, '1530581759', null);
INSERT INTO `download` VALUES ('342', '101', '7666d58a-8b3c-4eb5-9749-a75e9c9cb9e5', null, null, '1530581779', null);
INSERT INTO `download` VALUES ('343', '101', 'a5d9de0e-2168-402f-b056-2ed395907493', null, null, '1530581801', null);
INSERT INTO `download` VALUES ('344', '101', '2007b486-ed1e-4d66-98c9-3870cd97bf68', null, null, '1530581822', null);
INSERT INTO `download` VALUES ('345', '101', '21d054a5-0c91-4ad1-b18a-559ead6f536f', null, null, '1530581843', null);
INSERT INTO `download` VALUES ('346', '101', '4db5d1fb-c21c-4644-882c-a7c7b3e289f3', null, null, '1530581861', null);
INSERT INTO `download` VALUES ('347', '101', 'ba49e0f8-2f06-4f56-add5-d9a66d536481', null, null, '1530581911', null);
INSERT INTO `download` VALUES ('348', '101', '210b5cff-f016-4e5f-9ddb-97de5c4cdfd4', null, null, '1530581981', null);
INSERT INTO `download` VALUES ('349', '101', '7b42d13c-4e73-4489-9dd7-66e0a2fbbbbb', null, null, '1530582000', null);
INSERT INTO `download` VALUES ('350', '101', 'bce912cb-22c2-4b5e-9c60-f2f0ab09c464', null, null, '1530582021', null);
INSERT INTO `download` VALUES ('351', '101', 'bff7156d-bad2-472c-afbd-1f94d9f95158', null, null, '1530582043', null);
INSERT INTO `download` VALUES ('352', '101', '7a75e713-46a2-40ef-a3a1-f5f9576626d8', null, null, '1530582065', null);
INSERT INTO `download` VALUES ('353', '101', '851caac5-7f3d-420e-a4c3-424295657aff', null, null, '1530582092', null);
INSERT INTO `download` VALUES ('354', '101', '4e77445a-2041-41cf-b8d2-366b69bbbdce', null, null, '1530582112', null);
INSERT INTO `download` VALUES ('355', '101', 'fba0e49d-9849-44b2-ba99-fdfb24552865', null, null, '1530582132', null);
INSERT INTO `download` VALUES ('356', '101', 'fc588526-09a7-4669-aaff-e4190046abda', null, null, '1530582153', null);
INSERT INTO `download` VALUES ('357', '101', '34a19c9e-bd23-49c9-866f-cce77c604492', null, null, '1530582196', null);
INSERT INTO `download` VALUES ('358', '101', '342f4b45-7d50-462f-9d23-c1815935a956', null, null, '1530582217', null);
INSERT INTO `download` VALUES ('359', '101', '4c2bea20-ab9a-45c1-b671-c3d6d87387bc', null, null, '1530582236', null);
INSERT INTO `download` VALUES ('360', '101', '95ad1b12-36b7-4f7b-aff6-914dbacf17c6', null, null, '1530582255', null);
INSERT INTO `download` VALUES ('361', '101', 'f532c6e4-dab4-4636-9cba-dc62e05ebfff', null, null, '1530582484', null);
INSERT INTO `download` VALUES ('362', '101', 'c1052d3b-ea8b-4dbe-9820-4a6bf6c7aeb8', null, null, '1530582504', null);
INSERT INTO `download` VALUES ('363', '101', '88157fed-d193-483d-98fa-5810a4d8ce8a', null, null, '1530582526', null);
INSERT INTO `download` VALUES ('364', '101', 'dd079a7a-0d13-4e3c-bb98-ee348006bb74', null, null, '1530582546', null);
INSERT INTO `download` VALUES ('365', '101', '512b36df-2d11-4b94-a603-58f7f8c16115', null, null, '1530582576', null);
INSERT INTO `download` VALUES ('366', '101', 'f4a8cefd-c782-46b6-b656-b517ed126730', null, null, '1530582596', null);
INSERT INTO `download` VALUES ('367', '101', '0cbe9bae-18d4-462b-8029-e612ee1db23d', null, null, '1530582618', null);
INSERT INTO `download` VALUES ('368', '101', '9ff162e0-3327-405e-9a5a-067ce3fa945a', null, null, '1530582639', null);
INSERT INTO `download` VALUES ('369', '101', '94550659-d66e-44e0-bf64-ca5996447ec4', null, null, '1530582679', null);
INSERT INTO `download` VALUES ('370', '101', 'a60966bc-19c8-4cab-a90e-c1f87987dac2', null, null, '1530582721', null);
INSERT INTO `download` VALUES ('371', '101', 'dd53df25-4539-4dee-b8a9-bd740476a6e6', null, null, '1530582741', null);
INSERT INTO `download` VALUES ('372', '101', '291fdb0f-bc6b-4529-a574-96208b890e92', null, null, '1530582768', null);
INSERT INTO `download` VALUES ('373', '101', 'ae8d3a17-26b9-41ce-8cca-9387aaa2ec11', null, null, '1530582789', null);
INSERT INTO `download` VALUES ('374', '101', 'aa777b03-b2c8-44f9-8856-c308db444293', null, null, '1530582809', null);
INSERT INTO `download` VALUES ('375', '101', 'af73e8f1-40a1-4ea1-a08a-048f2def618b', null, null, '1530582829', null);
INSERT INTO `download` VALUES ('376', '101', 'a31d6910-81e6-44ec-9b43-3b0e303cf3cd', null, null, '1530582869', null);
INSERT INTO `download` VALUES ('377', '101', 'a3b3d24d-28ea-419f-a2f4-6cc247311da2', null, null, '1530582898', null);
INSERT INTO `download` VALUES ('378', '101', '7b76509b-34f2-4b8b-a69b-6c97c2c7ed7f', null, null, '1530582992', null);
INSERT INTO `download` VALUES ('379', '101', 'd2d88889-0fd7-4aca-adf8-6cf51a203aad', null, null, '1530583018', null);
INSERT INTO `download` VALUES ('380', '101', '1042dca9-d793-4e66-8b52-2c7bfef0561c', null, null, '1530583038', null);
INSERT INTO `download` VALUES ('381', '101', 'b76af67f-9658-46d4-b116-8d7fa1634a6a', null, null, '1530583059', null);
INSERT INTO `download` VALUES ('382', '101', '6bf3626d-ec6a-46e0-bc89-06f302409748', null, null, '1530583080', null);
INSERT INTO `download` VALUES ('383', '101', '3d54705a-d0a3-4df1-b983-c14e543e5e7d', null, null, '1530583156', null);
INSERT INTO `download` VALUES ('384', '101', '7a433c0c-4bd6-4bca-b288-217bd3a1b411', null, null, '1530583173', null);
INSERT INTO `download` VALUES ('385', '101', '0da3defc-c38c-4b35-8e61-a4a5aa11e22f', null, null, '1530583197', null);
INSERT INTO `download` VALUES ('386', '101', '5338143e-91b2-4c59-aef6-e3fb42023f67', null, null, '1530583215', null);
INSERT INTO `download` VALUES ('387', '101', 'b70b213e-6d83-4f37-a155-feb0976c6e42', null, null, '1530583308', null);
INSERT INTO `download` VALUES ('388', '101', '75abac89-cf48-4592-b533-698472f96cba', null, null, '1530583343', null);
INSERT INTO `download` VALUES ('389', '101', '0d35502a-ca53-428e-be48-7b00bae0128b', null, null, '1530583368', null);
INSERT INTO `download` VALUES ('390', '101', '9e57fd3b-1379-452a-b675-c59f1c1f1a50', null, null, '1530583386', null);
INSERT INTO `download` VALUES ('391', '101', '6402c306-708e-47b5-b888-7e5d9181424a', null, null, '1530583406', null);
INSERT INTO `download` VALUES ('392', '101', 'f6fb85ae-f098-4102-aabb-fba4e965d52f', null, null, '1530583434', null);
INSERT INTO `download` VALUES ('393', '101', '586f35da-758a-430a-8965-3530ca49044c', null, null, '1530583453', null);
INSERT INTO `download` VALUES ('394', '101', '168bc036-0f26-4b77-af54-82dc1ebdfa75', null, null, '1530583472', null);
INSERT INTO `download` VALUES ('395', '101', 'bfe079db-0f72-437c-8839-d00fba2c9788', null, null, '1530583520', null);
INSERT INTO `download` VALUES ('396', '101', '470c02d9-20fd-4797-a724-a6f5cd4d0fd5', null, null, '1530583568', null);
INSERT INTO `download` VALUES ('397', '101', 'b637bf4e-2f69-4584-aa3b-127f3dddab6f', null, null, '1530583587', null);
INSERT INTO `download` VALUES ('398', '101', 'ea326cfb-a943-49b4-ad5f-ff4aad4ec920', null, null, '1530583608', null);
INSERT INTO `download` VALUES ('399', '101', 'e73a2e9f-b379-4730-a29e-215ca253430b', null, null, '1530583628', null);
INSERT INTO `download` VALUES ('400', '101', '8e93284c-ba35-4266-b9f1-8d2deebf4092', null, null, '1530583677', null);
INSERT INTO `download` VALUES ('401', '101', '1ca44af6-1f92-4f0b-9a2b-c94996d3975c', null, null, '1530583701', null);
INSERT INTO `download` VALUES ('402', '101', '4dda7d31-b721-4291-aca1-9682f42a2fda', null, null, '1530583722', null);
INSERT INTO `download` VALUES ('403', '101', 'b378151c-2a11-4be6-8fac-efb067e965e4', null, null, '1530583740', null);
INSERT INTO `download` VALUES ('404', '101', '599d6b28-cce8-4cfa-a59f-4534a9f20c32', null, null, '1530583762', null);
INSERT INTO `download` VALUES ('411', '235', 'c84a4626-bbc2-4ec4-acb4-69e5811129d9', null, null, '1530868318', '3');
INSERT INTO `download` VALUES ('412', '235', '4287f88e-dd18-413e-b36d-80c8a1321a92', null, null, '1530868436', '3');
INSERT INTO `download` VALUES ('413', '235', '2b8a3422-2fa8-48d6-a249-b0ae007a9f0b', null, null, '1531101691', '2');
INSERT INTO `download` VALUES ('414', '236', 'f1b6cc47-9cbc-433f-98ab-d9531f237978', null, null, '1531108203', '1');
INSERT INTO `download` VALUES ('415', '240', 'b70b213e-6d83-4f37-a155-feb0976c6e42', null, null, '1531118662', '1');
INSERT INTO `download` VALUES ('416', '237', '954f578c-0d45-4e60-9c2f-6db2b74c952c', null, null, '1531218656', '1');
INSERT INTO `download` VALUES ('417', '315', 'f1b6cc47-9cbc-433f-98ab-d9531f237978', null, null, '1531289689', '4');
INSERT INTO `download` VALUES ('418', '315', '7755e19b-5100-46d7-9dda-849002281fcc', null, null, '1531289754', '2');
INSERT INTO `download` VALUES ('419', '315', '2b8a3422-2fa8-48d6-a249-b0ae007a9f0b', null, null, '1531289771', '1');
INSERT INTO `download` VALUES ('420', '315', '57b83d87-dcb8-4fb0-89cd-7a03165543d8', null, null, '1531289790', '1');
INSERT INTO `download` VALUES ('421', '314', 'c84a4626-bbc2-4ec4-acb4-69e5811129d9', null, null, '1531305043', '12');
INSERT INTO `download` VALUES ('422', '315', '4287f88e-dd18-413e-b36d-80c8a1321a92', null, null, '1531358223', '1');
INSERT INTO `download` VALUES ('423', '315', '8e6039c0-4a85-470b-a825-f9a6f65d63b5', null, null, '1531358327', '1');
INSERT INTO `download` VALUES ('424', '239', 'c84a4626-bbc2-4ec4-acb4-69e5811129d9', null, null, '1531388639', '2');
INSERT INTO `download` VALUES ('425', '239', '0f6bf369-bced-4e62-91f8-b2953cb76118', null, null, '1531386677', '1');
INSERT INTO `download` VALUES ('426', '239', 'ba49e0f8-2f06-4f56-add5-d9a66d536481', null, null, '1531386720', '1');
INSERT INTO `download` VALUES ('427', '239', '7755e19b-5100-46d7-9dda-849002281fcc', null, null, '1531386733', '1');

-- ----------------------------
-- Table structure for download_acl
-- ----------------------------
DROP TABLE IF EXISTS `download_acl`;
CREATE TABLE `download_acl` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `categoryId` int(11) DEFAULT NULL,
  `downloadgroupId` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of download_acl
-- ----------------------------
INSERT INTO `download_acl` VALUES ('77', '2', '0');
INSERT INTO `download_acl` VALUES ('78', '31', '0');
INSERT INTO `download_acl` VALUES ('79', '32', '0');
INSERT INTO `download_acl` VALUES ('80', '40', '0');
INSERT INTO `download_acl` VALUES ('81', '3', '0');
INSERT INTO `download_acl` VALUES ('82', '24', '0');
INSERT INTO `download_acl` VALUES ('83', '27', '0');
INSERT INTO `download_acl` VALUES ('84', '28', '0');
INSERT INTO `download_acl` VALUES ('85', '5', '0');
INSERT INTO `download_acl` VALUES ('86', '25', '0');
INSERT INTO `download_acl` VALUES ('87', '26', '0');
INSERT INTO `download_acl` VALUES ('88', '33', '0');
INSERT INTO `download_acl` VALUES ('89', '6', '0');
INSERT INTO `download_acl` VALUES ('90', '14', '0');
INSERT INTO `download_acl` VALUES ('91', '19', '0');
INSERT INTO `download_acl` VALUES ('92', '20', '0');
INSERT INTO `download_acl` VALUES ('93', '21', '0');
INSERT INTO `download_acl` VALUES ('94', '48', '0');
INSERT INTO `download_acl` VALUES ('95', '49', '0');
INSERT INTO `download_acl` VALUES ('96', '50', '0');
INSERT INTO `download_acl` VALUES ('97', '2', '0');
INSERT INTO `download_acl` VALUES ('98', '31', '0');
INSERT INTO `download_acl` VALUES ('99', '32', '0');
INSERT INTO `download_acl` VALUES ('100', '40', '0');
INSERT INTO `download_acl` VALUES ('101', '3', '0');
INSERT INTO `download_acl` VALUES ('102', '24', '0');
INSERT INTO `download_acl` VALUES ('103', '27', '0');
INSERT INTO `download_acl` VALUES ('104', '28', '0');
INSERT INTO `download_acl` VALUES ('105', '5', '0');
INSERT INTO `download_acl` VALUES ('106', '25', '0');
INSERT INTO `download_acl` VALUES ('107', '26', '0');
INSERT INTO `download_acl` VALUES ('108', '33', '0');
INSERT INTO `download_acl` VALUES ('109', '6', '0');
INSERT INTO `download_acl` VALUES ('111', '31', '0');
INSERT INTO `download_acl` VALUES ('112', '32', '0');
INSERT INTO `download_acl` VALUES ('113', '40', '0');
INSERT INTO `download_acl` VALUES ('129', '2', '8');
INSERT INTO `download_acl` VALUES ('130', '31', '8');
INSERT INTO `download_acl` VALUES ('131', '32', '8');
INSERT INTO `download_acl` VALUES ('132', '40', '8');
INSERT INTO `download_acl` VALUES ('133', '2', '7');
INSERT INTO `download_acl` VALUES ('134', '28', '7');
INSERT INTO `download_acl` VALUES ('135', '50', '7');
INSERT INTO `download_acl` VALUES ('136', '31', '7');
INSERT INTO `download_acl` VALUES ('137', '32', '7');
INSERT INTO `download_acl` VALUES ('138', '3', '7');
INSERT INTO `download_acl` VALUES ('139', '24', '7');
INSERT INTO `download_acl` VALUES ('140', '27', '7');
INSERT INTO `download_acl` VALUES ('141', '5', '7');
INSERT INTO `download_acl` VALUES ('142', '25', '7');
INSERT INTO `download_acl` VALUES ('143', '26', '7');
INSERT INTO `download_acl` VALUES ('144', '6', '7');
INSERT INTO `download_acl` VALUES ('145', '14', '7');
INSERT INTO `download_acl` VALUES ('146', '19', '7');
INSERT INTO `download_acl` VALUES ('147', '20', '7');
INSERT INTO `download_acl` VALUES ('148', '21', '7');
INSERT INTO `download_acl` VALUES ('149', '48', '7');
INSERT INTO `download_acl` VALUES ('150', '49', '7');
INSERT INTO `download_acl` VALUES ('151', '22', '7');
INSERT INTO `download_acl` VALUES ('152', '43', '7');
INSERT INTO `download_acl` VALUES ('153', '44', '7');
INSERT INTO `download_acl` VALUES ('154', '3', '10');
INSERT INTO `download_acl` VALUES ('155', '24', '10');
INSERT INTO `download_acl` VALUES ('156', '27', '10');
INSERT INTO `download_acl` VALUES ('157', '2', '11');
INSERT INTO `download_acl` VALUES ('158', '31', '11');
INSERT INTO `download_acl` VALUES ('159', '32', '11');
INSERT INTO `download_acl` VALUES ('160', '51', '11');
INSERT INTO `download_acl` VALUES ('161', '52', '11');
INSERT INTO `download_acl` VALUES ('162', '53', '11');
INSERT INTO `download_acl` VALUES ('163', '5', '11');
INSERT INTO `download_acl` VALUES ('164', '25', '11');
INSERT INTO `download_acl` VALUES ('165', '26', '11');
INSERT INTO `download_acl` VALUES ('166', '6', '11');
INSERT INTO `download_acl` VALUES ('167', '14', '11');
INSERT INTO `download_acl` VALUES ('168', '21', '11');
INSERT INTO `download_acl` VALUES ('169', '48', '11');
INSERT INTO `download_acl` VALUES ('170', '49', '11');
INSERT INTO `download_acl` VALUES ('171', '22', '11');
INSERT INTO `download_acl` VALUES ('172', '43', '11');
INSERT INTO `download_acl` VALUES ('173', '44', '11');
INSERT INTO `download_acl` VALUES ('191', '2', '12');
INSERT INTO `download_acl` VALUES ('192', '31', '12');
INSERT INTO `download_acl` VALUES ('193', '32', '12');
INSERT INTO `download_acl` VALUES ('194', '51', '12');
INSERT INTO `download_acl` VALUES ('195', '52', '12');
INSERT INTO `download_acl` VALUES ('196', '53', '12');
INSERT INTO `download_acl` VALUES ('197', '5', '12');
INSERT INTO `download_acl` VALUES ('198', '25', '12');
INSERT INTO `download_acl` VALUES ('199', '26', '12');
INSERT INTO `download_acl` VALUES ('200', '6', '12');
INSERT INTO `download_acl` VALUES ('201', '14', '12');
INSERT INTO `download_acl` VALUES ('202', '21', '12');
INSERT INTO `download_acl` VALUES ('203', '48', '12');
INSERT INTO `download_acl` VALUES ('204', '49', '12');
INSERT INTO `download_acl` VALUES ('205', '22', '12');
INSERT INTO `download_acl` VALUES ('206', '43', '12');
INSERT INTO `download_acl` VALUES ('207', '44', '12');
INSERT INTO `download_acl` VALUES ('208', '65', '13');
INSERT INTO `download_acl` VALUES ('209', '66', '13');

-- ----------------------------
-- Table structure for download_copy
-- ----------------------------
DROP TABLE IF EXISTS `download_copy`;
CREATE TABLE `download_copy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL COMMENT '下载用户',
  `file_guid` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '审核状态：已通过（1），审核中（0），拒绝（-1)',
  `audit_time` int(11) DEFAULT NULL,
  `download_time` int(11) DEFAULT NULL,
  `download_count` int(11) DEFAULT NULL COMMENT '下载次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=405 DEFAULT CHARSET=utf8 COMMENT='下载审核、统计';

-- ----------------------------
-- Records of download_copy
-- ----------------------------
INSERT INTO `download_copy` VALUES ('98', '230', '5094d9de-afce-4e3b-9566-57f6841c314f', null, null, '1452491918', null);
INSERT INTO `download_copy` VALUES ('99', '230', 'c518b2fe-d86f-452d-b56f-2ca3a756c095', null, null, '1452491937', null);
INSERT INTO `download_copy` VALUES ('100', '230', 'd0ea9188-f0eb-424f-92f6-8224ed43f533', null, null, '1452491989', null);
INSERT INTO `download_copy` VALUES ('101', '101', 'd0ea9188-f0eb-424f-92f6-8224ed43f533', null, null, '1452492038', null);
INSERT INTO `download_copy` VALUES ('102', '101', '89e32e42-6fd8-4254-ade9-71ff08bf5b18', null, null, '1452493860', null);
INSERT INTO `download_copy` VALUES ('103', '101', '5094d9de-afce-4e3b-9566-57f6841c314f', null, null, '1452494007', null);
INSERT INTO `download_copy` VALUES ('104', '101', '5fd2bb17-acb7-4e7f-a349-7ad5cacd993b', null, null, '1452495755', null);
INSERT INTO `download_copy` VALUES ('105', '101', '4b048c77-2d4b-4d34-855c-30e8a5e7121b', null, null, '1452495769', null);
INSERT INTO `download_copy` VALUES ('106', '101', '4a6c75a4-520c-461e-b6b6-ef1fb10e4278', null, null, '1452495773', null);
INSERT INTO `download_copy` VALUES ('107', '101', '8761afad-f653-473d-8aea-381ae262111a', null, null, '1452495794', null);
INSERT INTO `download_copy` VALUES ('108', '101', 'e98009ab-7651-44b0-96a0-fa70373fd562', null, null, '1452495829', null);
INSERT INTO `download_copy` VALUES ('109', '230', '06b9081e-13dc-4c88-9432-3a8eca659522', null, null, '1452497841', null);
INSERT INTO `download_copy` VALUES ('110', '230', '21d5a23d-1d46-479d-809b-4fd563cf9984', null, null, '1452497867', null);
INSERT INTO `download_copy` VALUES ('111', '230', '7d3ddec1-675b-4e93-b5ad-4de43d0dca24', null, null, '1452497884', null);
INSERT INTO `download_copy` VALUES ('112', '101', '8348b2a9-3ca5-479c-bba5-71c930b4aa93', null, null, '1452507862', null);
INSERT INTO `download_copy` VALUES ('113', '230', '4ff46dc8-8147-4e00-820e-9124f3bfeea7', null, null, '1452563793', null);
INSERT INTO `download_copy` VALUES ('114', '230', '7984f0f3-bf1f-4607-9dae-75b8504ddf12', null, null, '1452563807', null);
INSERT INTO `download_copy` VALUES ('115', '230', '218c855f-1e1c-433c-a305-a7ecda3509f1', null, null, '1452563820', null);
INSERT INTO `download_copy` VALUES ('116', '230', 'b62b1015-fada-4501-a68b-b85a36acf002', null, null, '1452563920', null);
INSERT INTO `download_copy` VALUES ('117', '230', '6e23a485-148b-4833-8ed3-dad31054d84f', null, null, '1452563930', null);
INSERT INTO `download_copy` VALUES ('118', '230', 'e305f3e7-241c-4796-9bda-be2780937a9c', null, null, '1452563954', null);
INSERT INTO `download_copy` VALUES ('119', '230', '3c0e733e-e31d-4d8b-bb50-b4b9756a6917', null, null, '1452564093', null);
INSERT INTO `download_copy` VALUES ('120', '230', '48f14019-eedb-4bb8-8f3f-fd7f7fef1109', null, null, '1452564139', null);
INSERT INTO `download_copy` VALUES ('121', '230', '309efddb-9314-44ae-9e2d-ac8f234e6197', null, null, '1452564159', null);
INSERT INTO `download_copy` VALUES ('122', '230', '4402d08c-523b-4e89-a588-dd241807b4c2', null, null, '1452564173', null);
INSERT INTO `download_copy` VALUES ('123', '230', 'ecd03a45-bb3a-4205-94ba-a80da8de890c', null, null, '1452564188', null);
INSERT INTO `download_copy` VALUES ('124', '101', '95812c04-4679-4aed-b3db-0cbd783b9b5e', null, null, '1452564235', null);
INSERT INTO `download_copy` VALUES ('125', '101', '6a3ceafe-097f-4c89-af67-3db37235df63', null, null, '1452564254', null);
INSERT INTO `download_copy` VALUES ('126', '101', 'dd243d9a-4289-4501-b335-ac39fda02b8c', null, null, '1452564266', null);
INSERT INTO `download_copy` VALUES ('127', '230', 'ff2cf688-4247-4a9a-9801-ac37ea4262c8', null, null, '1452564353', null);
INSERT INTO `download_copy` VALUES ('128', '230', '9d900e3b-28d4-4826-923d-90302bab47df', null, null, '1452564375', null);
INSERT INTO `download_copy` VALUES ('129', '230', '292a46b6-0fea-4136-8ca2-b4277fa638c5', null, null, '1452564396', null);
INSERT INTO `download_copy` VALUES ('130', '230', 'e02fe860-63ee-4492-87ae-9b1d3c20cac0', null, null, '1452564410', null);
INSERT INTO `download_copy` VALUES ('131', '230', 'ef71279b-3482-4a53-8cff-bcc7d190a54e', null, null, '1452564428', null);
INSERT INTO `download_copy` VALUES ('132', '230', 'f3495506-e063-488f-8e25-be0419082504', null, null, '1452564448', null);
INSERT INTO `download_copy` VALUES ('133', '230', '9837ab81-47ba-4e12-8e1c-d8a4548a0f09', null, null, '1452564465', null);
INSERT INTO `download_copy` VALUES ('134', '230', 'c7403e20-42c2-4127-8476-98b6f565f727', null, null, '1452564595', null);
INSERT INTO `download_copy` VALUES ('135', '230', 'd3a950db-dadd-4c23-a1bf-d12b44e37438', null, null, '1452564610', null);
INSERT INTO `download_copy` VALUES ('136', '230', 'e2ddcc3e-470c-4808-9fb6-48b7f0ab5ec0', null, null, '1452564623', null);
INSERT INTO `download_copy` VALUES ('137', '230', '0145341c-2ce3-49be-b6b8-a02524fa74bd', null, null, '1452564647', null);
INSERT INTO `download_copy` VALUES ('138', '230', '9ca78502-7ea1-4229-ade6-a8e10e83d03d', null, null, '1452564668', null);
INSERT INTO `download_copy` VALUES ('139', '101', '4286c2eb-d2e2-43d2-be99-a429453b2f8b', null, null, '1452564791', null);
INSERT INTO `download_copy` VALUES ('140', '101', 'd4f28a2f-e787-4709-8719-01e6b33e8536', null, null, '1452564807', null);
INSERT INTO `download_copy` VALUES ('141', '101', 'a24aa3fe-ea05-49b4-a9ed-82d0ce9246e0', null, null, '1452564822', null);
INSERT INTO `download_copy` VALUES ('142', '101', 'd357339e-5788-4f00-83ec-f4979370d2b2', null, null, '1452565024', null);
INSERT INTO `download_copy` VALUES ('143', '101', '22c87ea8-a7a4-426c-aa5b-1c1c36aa3896', null, null, '1452565036', null);
INSERT INTO `download_copy` VALUES ('144', '101', '74f04fd1-f4db-40ce-b77a-359f71182a0a', null, null, '1452565051', null);
INSERT INTO `download_copy` VALUES ('145', '101', 'a59e94ba-93a2-4e09-999a-a070c772a5a4', null, null, '1452565064', null);
INSERT INTO `download_copy` VALUES ('146', '101', '3704e421-aefa-4cdf-bf49-1d6e1e542828', null, null, '1452565094', null);
INSERT INTO `download_copy` VALUES ('147', '101', '3c736113-41c8-46f0-8176-2d67fb82b1b5', null, null, '1452565339', null);
INSERT INTO `download_copy` VALUES ('148', '101', 'c4030bdb-0229-4e0a-a458-d6155b97915b', null, null, '1452568207', null);
INSERT INTO `download_copy` VALUES ('149', '101', 'a59c1af3-94b6-4c07-bc12-c177255f3e30', null, null, '1452568223', null);
INSERT INTO `download_copy` VALUES ('150', '101', '4cad5b50-44ad-4a3d-88da-9521a5c96653', null, null, '1452568279', null);
INSERT INTO `download_copy` VALUES ('151', '101', '4cb733f1-8403-482a-8a54-41d6cdf4e694', null, null, '1452568301', null);
INSERT INTO `download_copy` VALUES ('152', '101', '04fca3e4-99e6-47f9-86c7-4366d1a64f95', null, null, '1452568440', null);
INSERT INTO `download_copy` VALUES ('153', '101', 'ee40373c-6b3a-4907-8115-3740863d36dd', null, null, '1452568458', null);
INSERT INTO `download_copy` VALUES ('154', '101', '8e0ad312-d64d-4ddc-95f7-eee4d298d96d', null, null, '1452568578', null);
INSERT INTO `download_copy` VALUES ('155', '101', 'db84d42d-1147-4881-b369-1401716a2739', null, null, '1452568789', null);
INSERT INTO `download_copy` VALUES ('156', '101', 'f26fd943-8005-4154-a9b4-9c948b520cd0', null, null, '1452568807', null);
INSERT INTO `download_copy` VALUES ('157', '101', '35ec2ea0-baed-4aef-bdab-0aca13755cad', null, null, '1452568869', null);
INSERT INTO `download_copy` VALUES ('158', '101', 'c2266fae-3c59-4374-9e42-4581e3818a74', null, null, '1452568892', null);
INSERT INTO `download_copy` VALUES ('159', '101', 'e01633c5-3385-4807-b7f9-b49806e24901', null, null, '1452568917', null);
INSERT INTO `download_copy` VALUES ('160', '101', '21da32ce-0603-4859-a84a-dd518344624b', null, null, '1452579129', null);
INSERT INTO `download_copy` VALUES ('161', '101', '214d602b-ae93-477f-ab8d-329c917d6b83', null, null, '1452579153', null);
INSERT INTO `download_copy` VALUES ('162', '101', '80d61799-3031-43d5-97f9-5ccbc59ef324', null, null, '1452579188', null);
INSERT INTO `download_copy` VALUES ('163', '101', 'da021f99-649f-477b-b21a-2b53cfd4f3b5', null, null, '1452579206', null);
INSERT INTO `download_copy` VALUES ('164', '101', 'd8af3d60-b678-4e9e-b2cf-d7c928636b0d', null, null, '1452583470', null);
INSERT INTO `download_copy` VALUES ('165', '101', '9a169abc-343c-4b9d-98c3-b25256e62bae', null, null, '1452583483', null);
INSERT INTO `download_copy` VALUES ('166', '101', '0ad4e3b3-c0d5-45e4-b83a-902ac05bf690', null, null, '1452583497', null);
INSERT INTO `download_copy` VALUES ('167', '101', '790a1093-80c0-431a-a85d-2c50bc484b61', null, null, '1452583615', null);
INSERT INTO `download_copy` VALUES ('168', '101', '0216ad3a-3ce0-47e4-9ca2-a38d74e26d2a', null, null, '1452583632', null);
INSERT INTO `download_copy` VALUES ('169', '101', '74854cb7-28f6-4289-afd5-71e4adc7c9ea', null, null, '1452583667', null);
INSERT INTO `download_copy` VALUES ('170', '101', '45623931-904d-4df2-8552-6d5f673ba099', null, null, '1452583680', null);
INSERT INTO `download_copy` VALUES ('171', '101', 'b3a94634-c0ae-401a-be54-977eef4298d2', null, null, '1452583698', null);
INSERT INTO `download_copy` VALUES ('172', '101', '58667091-3d92-4ccb-af0f-efe030140dae', null, null, '1452655704', null);
INSERT INTO `download_copy` VALUES ('173', '101', 'c85899c6-a7ec-40c4-ace1-b96508f92411', null, null, '1452655809', null);
INSERT INTO `download_copy` VALUES ('174', '101', '19f612f9-6afb-4e91-9557-258a849704f8', null, null, '1452741147', null);
INSERT INTO `download_copy` VALUES ('175', '101', '0704cd11-1722-453c-a1a1-45f0e08507cf', null, null, '1452741732', null);
INSERT INTO `download_copy` VALUES ('176', '101', '784070e0-3419-452f-aaad-4ba00c0e20a9', null, null, '1452741778', null);
INSERT INTO `download_copy` VALUES ('177', '101', 'c5565c9b-6242-423e-a790-64418797eeb1', null, null, '1452742138', null);
INSERT INTO `download_copy` VALUES ('178', '101', 'c5565c9b-6242-423e-a790-64418797eeb1', null, null, '1452742182', null);
INSERT INTO `download_copy` VALUES ('179', '101', '708d1802-9054-41f3-9526-0315af6006a3', null, null, '1452745838', null);
INSERT INTO `download_copy` VALUES ('180', '101', '342affb8-a945-4ec1-b4c8-4ebafc62df23', null, null, '1452821190', null);
INSERT INTO `download_copy` VALUES ('181', '101', '23ee88fb-bd87-47ba-bdfd-5f12050bea8a', null, null, '1452821257', null);
INSERT INTO `download_copy` VALUES ('182', '101', 'afbcba50-20ff-4da7-a5f4-d20dcc97cfb2', null, null, '1452821704', null);
INSERT INTO `download_copy` VALUES ('183', '101', 'a97bd27c-cdd8-4dfa-b487-bb39536fda15', null, null, '1452822132', null);
INSERT INTO `download_copy` VALUES ('184', '101', '73b40b22-d8dc-47b6-a136-ed531390faca', null, null, '1452822530', null);
INSERT INTO `download_copy` VALUES ('185', '101', '8014148c-5c6d-4cc2-b436-3f325a93dfef', null, null, '1452822584', null);
INSERT INTO `download_copy` VALUES ('186', '101', '74cd987c-4fa2-4aef-af88-2f8263efb446', null, null, '1452822629', null);
INSERT INTO `download_copy` VALUES ('187', '101', 'c24c01de-fe1c-4c5d-8457-a1ec47684408', null, null, '1452822653', null);
INSERT INTO `download_copy` VALUES ('188', '101', 'fb4a2b78-7808-4985-97b9-e6c03058ca9f', null, null, '1452822674', null);
INSERT INTO `download_copy` VALUES ('189', '101', 'e22f0be7-225a-40da-94b8-c9d327bc9f2a', null, null, '1452822687', null);
INSERT INTO `download_copy` VALUES ('190', '101', '135eec4d-0a4a-4ec0-b419-caf8c8f98ced', null, null, '1452822706', null);
INSERT INTO `download_copy` VALUES ('191', '101', '30eaece1-0bf7-49e8-8fa7-204932e77ffe', null, null, '1452822757', null);
INSERT INTO `download_copy` VALUES ('192', '231', '4402d08c-523b-4e89-a588-dd241807b4c2', null, null, '1452827793', null);
INSERT INTO `download_copy` VALUES ('193', '231', '', null, null, '1452827794', '1');
INSERT INTO `download_copy` VALUES ('194', '231', '', null, null, '1452828614', '1');
INSERT INTO `download_copy` VALUES ('195', '231', '4ff46dc8-8147-4e00-820e-9124f3bfeea7', null, null, '1452828658', '1');
INSERT INTO `download_copy` VALUES ('196', '231', '4402d08c-523b-4e89-a588-dd241807b4c2', null, null, '1452829121', '1');
INSERT INTO `download_copy` VALUES ('197', '231', '6a3ceafe-097f-4c89-af67-3db37235df63', null, null, '1452829125', '1');
INSERT INTO `download_copy` VALUES ('198', '231', '6a3ceafe-097f-4c89-af67-3db37235df63', null, null, '1452829139', '1');
INSERT INTO `download_copy` VALUES ('199', '231', 'dd243d9a-4289-4501-b335-ac39fda02b8c', null, null, '1452829151', '1');
INSERT INTO `download_copy` VALUES ('200', '231', 'ff2cf688-4247-4a9a-9801-ac37ea4262c8', null, null, '1452829154', '1');
INSERT INTO `download_copy` VALUES ('201', '231', '3c0e733e-e31d-4d8b-bb50-b4b9756a6917', null, null, '1452829311', '1');
INSERT INTO `download_copy` VALUES ('202', '231', '525646b0-078f-4438-a98b-49e91d7c7588', null, null, '1452829641', '1');
INSERT INTO `download_copy` VALUES ('203', '101', 'defd595b-562c-476e-a834-388e1656eff6', null, null, '1452836796', '1');
INSERT INTO `download_copy` VALUES ('204', '101', 'defd595b-562c-476e-a834-388e1656eff6', null, null, '1452845056', '1');
INSERT INTO `download_copy` VALUES ('205', '101', '3c736113-41c8-46f0-8176-2d67fb82b1b5', null, null, '1452845902', '1');
INSERT INTO `download_copy` VALUES ('206', '101', '3c736113-41c8-46f0-8176-2d67fb82b1b5', null, null, '1452851999', '1');
INSERT INTO `download_copy` VALUES ('207', '101', 'e3a3d9cf-9bd6-4df1-971b-c1b7ce567640', null, null, '1452923462', '1');
INSERT INTO `download_copy` VALUES ('208', '101', 'cbffe4df-b772-4c27-9b46-0470bcb28688', null, null, '1452923497', '1');
INSERT INTO `download_copy` VALUES ('209', '101', 'cbffe4df-b772-4c27-9b46-0470bcb28688', null, null, '1452923633', '1');
INSERT INTO `download_copy` VALUES ('210', '101', '91827a78-3ea0-4015-a601-092c716bc3de', null, null, '1452923795', '1');
INSERT INTO `download_copy` VALUES ('211', '101', '220f5582-7e5c-4417-8385-29c2b2bd2f04', null, null, '1452923840', '1');
INSERT INTO `download_copy` VALUES ('212', '101', '07301213-3d93-47e3-85c5-d1c2c64a5b7a', null, null, '1452923993', '1');
INSERT INTO `download_copy` VALUES ('213', '231', '07301213-3d93-47e3-85c5-d1c2c64a5b7a', null, null, '1452924064', '1');
INSERT INTO `download_copy` VALUES ('214', '101', 'b97cc5df-d2f2-4400-9937-5e62cf18885a', null, null, '1452929103', '1');
INSERT INTO `download_copy` VALUES ('215', '231', '07301213-3d93-47e3-85c5-d1c2c64a5b7a', null, null, '1452934663', '1');
INSERT INTO `download_copy` VALUES ('216', '231', '07301213-3d93-47e3-85c5-d1c2c64a5b7a', null, null, '1452934667', '1');
INSERT INTO `download_copy` VALUES ('217', '231', 'b97cc5df-d2f2-4400-9937-5e62cf18885a', null, null, '1452934706', '1');
INSERT INTO `download_copy` VALUES ('218', '101', '4cb733f1-8403-482a-8a54-41d6cdf4e694', null, null, '1452934736', '1');
INSERT INTO `download_copy` VALUES ('219', '101', '220f5582-7e5c-4417-8385-29c2b2bd2f04', null, null, '1452934763', '1');
INSERT INTO `download_copy` VALUES ('220', '101', '525646b0-078f-4438-a98b-49e91d7c7588', null, null, '1452934788', '1');
INSERT INTO `download_copy` VALUES ('221', '231', 'b97cc5df-d2f2-4400-9937-5e62cf18885a', null, null, '1452934800', '1');
INSERT INTO `download_copy` VALUES ('222', '101', '525646b0-078f-4438-a98b-49e91d7c7588', null, null, '1452934802', '1');
INSERT INTO `download_copy` VALUES ('223', '231', '525646b0-078f-4438-a98b-49e91d7c7588', null, null, '1452934811', '1');
INSERT INTO `download_copy` VALUES ('224', '101', 'b97cc5df-d2f2-4400-9937-5e62cf18885a', null, null, '1452934830', '1');
INSERT INTO `download_copy` VALUES ('225', '231', '4ff46dc8-8147-4e00-820e-9124f3bfeea7', null, null, '1452934898', '1');
INSERT INTO `download_copy` VALUES ('226', '231', '4ff46dc8-8147-4e00-820e-9124f3bfeea7', null, null, '1452934903', '1');
INSERT INTO `download_copy` VALUES ('227', '232', '07301213-3d93-47e3-85c5-d1c2c64a5b7a', null, null, '1452934907', '1');
INSERT INTO `download_copy` VALUES ('228', '232', 'cbffe4df-b772-4c27-9b46-0470bcb28688', null, null, '1452934920', '1');
INSERT INTO `download_copy` VALUES ('229', '231', '4ff46dc8-8147-4e00-820e-9124f3bfeea7', null, null, '1452934939', '1');
INSERT INTO `download_copy` VALUES ('230', '231', '4ff46dc8-8147-4e00-820e-9124f3bfeea7', null, null, '1452935010', '1');
INSERT INTO `download_copy` VALUES ('231', '231', 'b97cc5df-d2f2-4400-9937-5e62cf18885a', null, null, '1452935078', '1');
INSERT INTO `download_copy` VALUES ('232', '231', '07301213-3d93-47e3-85c5-d1c2c64a5b7a', null, null, '1452935081', '1');
INSERT INTO `download_copy` VALUES ('233', '231', '07301213-3d93-47e3-85c5-d1c2c64a5b7a', null, null, '1452935099', '1');
INSERT INTO `download_copy` VALUES ('234', '232', '19f612f9-6afb-4e91-9557-258a849704f8', null, null, '1452935108', '1');
INSERT INTO `download_copy` VALUES ('235', '232', 'afbcba50-20ff-4da7-a5f4-d20dcc97cfb2', null, null, '1452935179', '1');
INSERT INTO `download_copy` VALUES ('236', '232', 'b97cc5df-d2f2-4400-9937-5e62cf18885a', null, null, '1452936018', '1');
INSERT INTO `download_copy` VALUES ('237', '232', 'fb4a2b78-7808-4985-97b9-e6c03058ca9f', null, null, '1452936121', '1');
INSERT INTO `download_copy` VALUES ('238', '232', '4ff46dc8-8147-4e00-820e-9124f3bfeea7', null, null, '1452936193', '1');
INSERT INTO `download_copy` VALUES ('239', '232', '4ff46dc8-8147-4e00-820e-9124f3bfeea7', null, null, '1452936204', '1');
INSERT INTO `download_copy` VALUES ('240', '232', '45623931-904d-4df2-8552-6d5f673ba099', null, null, '1452936238', '1');
INSERT INTO `download_copy` VALUES ('241', '231', 'b97cc5df-d2f2-4400-9937-5e62cf18885a', null, null, '1452936611', '1');
INSERT INTO `download_copy` VALUES ('242', '231', 'd357339e-5788-4f00-83ec-f4979370d2b2', null, null, '1452936637', '1');
INSERT INTO `download_copy` VALUES ('243', '231', 'd357339e-5788-4f00-83ec-f4979370d2b2', null, null, '1452936642', '1');
INSERT INTO `download_copy` VALUES ('244', '231', '22c87ea8-a7a4-426c-aa5b-1c1c36aa3896', null, null, '1452936649', '1');
INSERT INTO `download_copy` VALUES ('245', '231', '22c87ea8-a7a4-426c-aa5b-1c1c36aa3896', null, null, '1452936673', '1');
INSERT INTO `download_copy` VALUES ('246', '231', 'd357339e-5788-4f00-83ec-f4979370d2b2', null, null, '1452936989', '1');
INSERT INTO `download_copy` VALUES ('247', '231', 'b97cc5df-d2f2-4400-9937-5e62cf18885a', null, null, '1452936994', '1');
INSERT INTO `download_copy` VALUES ('248', '231', 'b97cc5df-d2f2-4400-9937-5e62cf18885a', null, null, '1452937093', '1');
INSERT INTO `download_copy` VALUES ('249', '101', '309efddb-9314-44ae-9e2d-ac8f234e6197', null, null, '1453079369', '1');
INSERT INTO `download_copy` VALUES ('250', '101', '641f1eed-7064-4085-a604-5224399a4214', null, null, '1453079598', '1');
INSERT INTO `download_copy` VALUES ('251', '101', '641f1eed-7064-4085-a604-5224399a4214', null, null, '1453079622', '1');
INSERT INTO `download_copy` VALUES ('252', '101', 'db15dd7a-a5bf-4c2e-98f2-232ac7bcbf4d', null, null, '1453079751', '1');
INSERT INTO `download_copy` VALUES ('253', '101', 'db15dd7a-a5bf-4c2e-98f2-232ac7bcbf4d', null, null, '1453079756', '1');
INSERT INTO `download_copy` VALUES ('254', '101', 'ec66dda5-f20c-4279-8e28-f513e090f947', null, null, '1453079793', '1');
INSERT INTO `download_copy` VALUES ('255', '234', '3a3b7b28-75b8-4b39-b699-973a0c326b70', null, null, '1453256664', '1');
INSERT INTO `download_copy` VALUES ('256', '234', 'a83b423f-83ea-4534-96e6-d8cbe32d16ce', null, null, '1453256779', '1');
INSERT INTO `download_copy` VALUES ('257', '234', 'a83b423f-83ea-4534-96e6-d8cbe32d16ce', null, null, '1453256873', '1');
INSERT INTO `download_copy` VALUES ('258', '101', '07301213-3d93-47e3-85c5-d1c2c64a5b7a', null, null, '1453602582', '1');
INSERT INTO `download_copy` VALUES ('259', '101', '07301213-3d93-47e3-85c5-d1c2c64a5b7a', null, null, '1453602582', '1');
INSERT INTO `download_copy` VALUES ('260', '101', 'cbffe4df-b772-4c27-9b46-0470bcb28688', null, null, '1453602590', '1');
INSERT INTO `download_copy` VALUES ('261', '101', 'cbffe4df-b772-4c27-9b46-0470bcb28688', null, null, '1453602590', '1');
INSERT INTO `download_copy` VALUES ('262', '101', 'd357339e-5788-4f00-83ec-f4979370d2b2', null, null, '1453603045', '1');
INSERT INTO `download_copy` VALUES ('263', '101', 'd357339e-5788-4f00-83ec-f4979370d2b2', null, null, '1453607424', '1');
INSERT INTO `download_copy` VALUES ('264', '101', '641f1eed-7064-4085-a604-5224399a4214', null, null, '1453607429', '1');
INSERT INTO `download_copy` VALUES ('265', '101', '641f1eed-7064-4085-a604-5224399a4214', null, null, '1453607443', '1');
INSERT INTO `download_copy` VALUES ('266', '101', 'ec66dda5-f20c-4279-8e28-f513e090f947', null, null, '1453607460', '1');
INSERT INTO `download_copy` VALUES ('267', '101', 'ec66dda5-f20c-4279-8e28-f513e090f947', null, null, '1453607477', '1');
INSERT INTO `download_copy` VALUES ('268', '101', '1ccbe858-d6b7-4327-aaca-8a36f0b5458b', null, null, '1530268129', null);
INSERT INTO `download_copy` VALUES ('269', '101', 'ed436405-699e-41c6-be8a-3a7c15b05127', null, null, '1530427385', null);
INSERT INTO `download_copy` VALUES ('270', '101', 'e223abad-15f5-4b29-b9a2-36179443df6b', null, null, '1530427500', null);
INSERT INTO `download_copy` VALUES ('271', '101', 'dbda5435-7edc-422e-9761-e330a7a34b9e', null, null, '1530427592', null);
INSERT INTO `download_copy` VALUES ('272', '101', '4a2e8269-581b-4ce8-b9a1-b813b01db2d4', null, null, '1530427762', null);
INSERT INTO `download_copy` VALUES ('273', '101', '933a15a0-fd51-46a1-a17f-be8fc861839e', null, null, '1530428830', null);
INSERT INTO `download_copy` VALUES ('274', '101', '3ff4b789-284c-480f-be2c-6b17b10a3608', null, null, '1530430067', null);
INSERT INTO `download_copy` VALUES ('275', '101', 'b7d04435-a9cf-414e-b4f0-5a252aeaeaec', null, null, '1530430114', null);
INSERT INTO `download_copy` VALUES ('276', '101', '8881319b-8e96-44cf-8aaf-fda4d144b2bb', null, null, '1530443289', null);
INSERT INTO `download_copy` VALUES ('277', '101', '3d153646-3a1c-4115-b69d-b0af06c4277e', null, null, '1530498479', null);
INSERT INTO `download_copy` VALUES ('278', '101', 'c0d192be-bf1c-4b33-bbb1-4302afbdd312', null, null, '1530499397', null);
INSERT INTO `download_copy` VALUES ('279', '101', 'e55e7524-cf7a-4291-9a64-525b0e368082', null, null, '1530499425', null);
INSERT INTO `download_copy` VALUES ('280', '101', 'f083199f-07b8-4da0-8f9d-7d9a9b528cd6', null, null, '1530499449', null);
INSERT INTO `download_copy` VALUES ('281', '101', '95f066d5-31ea-4e46-b9ec-183a0a4a5160', null, null, '1530499476', null);
INSERT INTO `download_copy` VALUES ('282', '101', '69bca6ea-a805-4e01-ae4a-2b3bae2a8da5', null, null, '1530499575', null);
INSERT INTO `download_copy` VALUES ('283', '101', '0a7788f6-1f3f-4ddc-9baf-c4480c0bfeaa', null, null, '1530499613', null);
INSERT INTO `download_copy` VALUES ('284', '101', '592faa25-4325-4c74-ab1c-3a5d3cfb7349', null, null, '1530499683', null);
INSERT INTO `download_copy` VALUES ('285', '101', 'fc85d17a-628b-406f-b5d9-c8a73a8b8132', null, null, '1530499711', null);
INSERT INTO `download_copy` VALUES ('286', '101', '74373385-f320-4099-8307-96fedf2f5a6a', null, null, '1530499742', null);
INSERT INTO `download_copy` VALUES ('287', '101', '771dbdb3-eae7-4abf-be3b-3f65c43053cf', null, null, '1530499769', null);
INSERT INTO `download_copy` VALUES ('288', '101', 'cd8f965f-a211-4d44-a312-462cb61a8aba', null, null, '1530500199', null);
INSERT INTO `download_copy` VALUES ('289', '101', '283aa8be-20f0-464e-af06-4035e1f8248f', null, null, '1530500539', null);
INSERT INTO `download_copy` VALUES ('290', '101', 'a031c1b1-184b-48af-ae02-77cbc30c2c2d', null, null, '1530504728', null);
INSERT INTO `download_copy` VALUES ('291', '101', '5defd439-fc35-43b7-9daf-a6e82c6c1aa4', null, null, '1530504767', null);
INSERT INTO `download_copy` VALUES ('292', '101', 'e2bae828-9de5-4931-852d-9af6844eb8a1', null, null, '1530504793', null);
INSERT INTO `download_copy` VALUES ('293', '101', '1f60bcd5-be8d-4fcf-839f-dcd046302320', null, null, '1530504822', null);
INSERT INTO `download_copy` VALUES ('294', '101', 'bdfbfafc-d496-4737-baf2-6df5904d76c5', null, null, '1530504858', null);
INSERT INTO `download_copy` VALUES ('295', '101', 'e097c3f0-216d-428a-a53a-d86c0d79477c', null, null, '1530504888', null);
INSERT INTO `download_copy` VALUES ('296', '101', 'd7f87739-ca33-4826-89d6-6ffcffa1c61c', null, null, '1530504934', null);
INSERT INTO `download_copy` VALUES ('297', '101', '7f09e0b9-b867-44c8-af18-5405b3954901', null, null, '1530504972', null);
INSERT INTO `download_copy` VALUES ('298', '101', '02055bde-0b98-46e5-9863-5a97d64534f6', null, null, '1530505002', null);
INSERT INTO `download_copy` VALUES ('299', '101', '5a7815f4-fb5c-4019-8ef5-af1b6a5b29f6', null, null, '1530505059', null);
INSERT INTO `download_copy` VALUES ('300', '101', '846766b9-9bf4-45a9-8b53-6aa6e80bc3e4', null, null, '1530505307', null);
INSERT INTO `download_copy` VALUES ('301', '101', 'a2ede3ce-1520-4a89-96d8-77402e08843c', null, null, '1530505333', null);
INSERT INTO `download_copy` VALUES ('302', '101', '743a19f1-ac8a-4924-a4b3-c468dde37430', null, null, '1530505369', null);
INSERT INTO `download_copy` VALUES ('303', '101', '3537c9f3-0cb2-4152-a8c1-16cf1705e647', null, null, '1530505472', null);
INSERT INTO `download_copy` VALUES ('304', '101', 'eeffe565-dbb4-4919-b169-33b9e761b535', null, null, '1530505501', null);
INSERT INTO `download_copy` VALUES ('305', '101', 'dc1d10e5-523f-436d-8354-73820e44b719', null, null, '1530505527', null);
INSERT INTO `download_copy` VALUES ('306', '101', '55be4e85-bfaa-4095-9cb2-7c5d4ab4d044', null, null, '1530505581', null);
INSERT INTO `download_copy` VALUES ('307', '101', '0383e2f3-9c8e-409c-9a16-5ce029081cdd', null, null, '1530505605', null);
INSERT INTO `download_copy` VALUES ('308', '101', '931f7bba-07c4-4fff-aebc-780ea5b0ba8d', null, null, '1530505658', null);
INSERT INTO `download_copy` VALUES ('309', '101', '65400dfe-c0da-4f46-a40a-272b1ce56b09', null, null, '1530505881', null);
INSERT INTO `download_copy` VALUES ('310', '101', 'ad4aa152-6e11-4156-ba20-428bb9e1634a', null, null, '1530505911', null);
INSERT INTO `download_copy` VALUES ('311', '101', '54fddfbd-6ffe-4c37-b2ac-a09db6920e3c', null, null, '1530506155', null);
INSERT INTO `download_copy` VALUES ('312', '101', 'c795cb6f-154f-40ec-b04c-19fa1603103b', null, null, '1530579764', null);
INSERT INTO `download_copy` VALUES ('313', '101', '7755e19b-5100-46d7-9dda-849002281fcc', null, null, '1530580636', null);
INSERT INTO `download_copy` VALUES ('314', '101', 'dd50f974-fac4-4383-b460-321fd3a2ed1c', null, null, '1530580666', null);
INSERT INTO `download_copy` VALUES ('315', '101', 'ea39e1ba-5f47-4977-be5a-f0c13d63fb53', null, null, '1530580693', null);
INSERT INTO `download_copy` VALUES ('316', '101', '8bb660c2-d88f-4bd5-bb1d-976064dbdfa1', null, null, '1530580714', null);
INSERT INTO `download_copy` VALUES ('317', '101', '2b8a3422-2fa8-48d6-a249-b0ae007a9f0b', null, null, '1530580812', null);
INSERT INTO `download_copy` VALUES ('318', '101', '57b83d87-dcb8-4fb0-89cd-7a03165543d8', null, null, '1530580842', null);
INSERT INTO `download_copy` VALUES ('319', '101', '954f578c-0d45-4e60-9c2f-6db2b74c952c', null, null, '1530580872', null);
INSERT INTO `download_copy` VALUES ('320', '101', '185ea5c9-14b1-4826-bfa1-7370a7b5e827', null, null, '1530580895', null);
INSERT INTO `download_copy` VALUES ('321', '101', '8e6039c0-4a85-470b-a825-f9a6f65d63b5', null, null, '1530580921', null);
INSERT INTO `download_copy` VALUES ('322', '101', '4dfeb7ef-d9c3-4c78-80b6-cf341e9298ed', null, null, '1530580956', null);
INSERT INTO `download_copy` VALUES ('323', '101', '26df09e7-2f3b-4be5-bfb9-195f29868487', null, null, '1530581047', null);
INSERT INTO `download_copy` VALUES ('324', '101', '40ce65f5-1730-4c56-a189-7aa15870c71a', null, null, '1530581069', null);
INSERT INTO `download_copy` VALUES ('325', '101', 'a5260dd9-d12e-4c26-a173-c0da1bfc80d2', null, null, '1530581104', null);
INSERT INTO `download_copy` VALUES ('326', '101', '92d7e174-6860-4540-9f67-a9ab06d4e05a', null, null, '1530581133', null);
INSERT INTO `download_copy` VALUES ('327', '101', '27bda983-7071-4c29-b7fb-220d8a1b9278', null, null, '1530581153', null);
INSERT INTO `download_copy` VALUES ('328', '101', 'b959ad0c-b411-436e-9bff-991799613343', null, null, '1530581189', null);
INSERT INTO `download_copy` VALUES ('329', '101', '838fb10a-1e71-48ed-92f6-6e64376ccb69', null, null, '1530581209', null);
INSERT INTO `download_copy` VALUES ('330', '101', 'e15d2359-c757-4e22-91d1-99452c840e94', null, null, '1530581240', null);
INSERT INTO `download_copy` VALUES ('331', '101', '0f6bf369-bced-4e62-91f8-b2953cb76118', null, null, '1530581267', null);
INSERT INTO `download_copy` VALUES ('332', '101', '516757fe-8635-406f-9d3b-c7aefd28bb2a', null, null, '1530581294', null);
INSERT INTO `download_copy` VALUES ('333', '101', '9e6ca54c-758e-4915-87fa-86100f3c4ab0', null, null, '1530581317', null);
INSERT INTO `download_copy` VALUES ('334', '101', 'eddf2b2f-8613-4447-a267-41ad6ac18329', null, null, '1530581345', null);
INSERT INTO `download_copy` VALUES ('335', '101', 'f1b6cc47-9cbc-433f-98ab-d9531f237978', null, null, '1530581609', null);
INSERT INTO `download_copy` VALUES ('336', '101', 'c82a2ce4-f5d4-41b0-8d7a-c068eea9a7ae', null, null, '1530581627', null);
INSERT INTO `download_copy` VALUES ('337', '101', '4287f88e-dd18-413e-b36d-80c8a1321a92', null, null, '1530581647', null);
INSERT INTO `download_copy` VALUES ('338', '101', 'bebd3c64-4ebf-4778-9aab-e58c11d2be2a', null, null, '1530581698', null);
INSERT INTO `download_copy` VALUES ('339', '101', 'f9976aae-6f5c-4f36-ad31-faf4a1565d31', null, null, '1530581718', null);
INSERT INTO `download_copy` VALUES ('340', '101', '76151586-341c-48ac-9cdd-dd5e496272e5', null, null, '1530581737', null);
INSERT INTO `download_copy` VALUES ('341', '101', 'c84a4626-bbc2-4ec4-acb4-69e5811129d9', null, null, '1530581759', null);
INSERT INTO `download_copy` VALUES ('342', '101', '7666d58a-8b3c-4eb5-9749-a75e9c9cb9e5', null, null, '1530581779', null);
INSERT INTO `download_copy` VALUES ('343', '101', 'a5d9de0e-2168-402f-b056-2ed395907493', null, null, '1530581801', null);
INSERT INTO `download_copy` VALUES ('344', '101', '2007b486-ed1e-4d66-98c9-3870cd97bf68', null, null, '1530581822', null);
INSERT INTO `download_copy` VALUES ('345', '101', '21d054a5-0c91-4ad1-b18a-559ead6f536f', null, null, '1530581843', null);
INSERT INTO `download_copy` VALUES ('346', '101', '4db5d1fb-c21c-4644-882c-a7c7b3e289f3', null, null, '1530581861', null);
INSERT INTO `download_copy` VALUES ('347', '101', 'ba49e0f8-2f06-4f56-add5-d9a66d536481', null, null, '1530581911', null);
INSERT INTO `download_copy` VALUES ('348', '101', '210b5cff-f016-4e5f-9ddb-97de5c4cdfd4', null, null, '1530581981', null);
INSERT INTO `download_copy` VALUES ('349', '101', '7b42d13c-4e73-4489-9dd7-66e0a2fbbbbb', null, null, '1530582000', null);
INSERT INTO `download_copy` VALUES ('350', '101', 'bce912cb-22c2-4b5e-9c60-f2f0ab09c464', null, null, '1530582021', null);
INSERT INTO `download_copy` VALUES ('351', '101', 'bff7156d-bad2-472c-afbd-1f94d9f95158', null, null, '1530582043', null);
INSERT INTO `download_copy` VALUES ('352', '101', '7a75e713-46a2-40ef-a3a1-f5f9576626d8', null, null, '1530582065', null);
INSERT INTO `download_copy` VALUES ('353', '101', '851caac5-7f3d-420e-a4c3-424295657aff', null, null, '1530582092', null);
INSERT INTO `download_copy` VALUES ('354', '101', '4e77445a-2041-41cf-b8d2-366b69bbbdce', null, null, '1530582112', null);
INSERT INTO `download_copy` VALUES ('355', '101', 'fba0e49d-9849-44b2-ba99-fdfb24552865', null, null, '1530582132', null);
INSERT INTO `download_copy` VALUES ('356', '101', 'fc588526-09a7-4669-aaff-e4190046abda', null, null, '1530582153', null);
INSERT INTO `download_copy` VALUES ('357', '101', '34a19c9e-bd23-49c9-866f-cce77c604492', null, null, '1530582196', null);
INSERT INTO `download_copy` VALUES ('358', '101', '342f4b45-7d50-462f-9d23-c1815935a956', null, null, '1530582217', null);
INSERT INTO `download_copy` VALUES ('359', '101', '4c2bea20-ab9a-45c1-b671-c3d6d87387bc', null, null, '1530582236', null);
INSERT INTO `download_copy` VALUES ('360', '101', '95ad1b12-36b7-4f7b-aff6-914dbacf17c6', null, null, '1530582255', null);
INSERT INTO `download_copy` VALUES ('361', '101', 'f532c6e4-dab4-4636-9cba-dc62e05ebfff', null, null, '1530582484', null);
INSERT INTO `download_copy` VALUES ('362', '101', 'c1052d3b-ea8b-4dbe-9820-4a6bf6c7aeb8', null, null, '1530582504', null);
INSERT INTO `download_copy` VALUES ('363', '101', '88157fed-d193-483d-98fa-5810a4d8ce8a', null, null, '1530582526', null);
INSERT INTO `download_copy` VALUES ('364', '101', 'dd079a7a-0d13-4e3c-bb98-ee348006bb74', null, null, '1530582546', null);
INSERT INTO `download_copy` VALUES ('365', '101', '512b36df-2d11-4b94-a603-58f7f8c16115', null, null, '1530582576', null);
INSERT INTO `download_copy` VALUES ('366', '101', 'f4a8cefd-c782-46b6-b656-b517ed126730', null, null, '1530582596', null);
INSERT INTO `download_copy` VALUES ('367', '101', '0cbe9bae-18d4-462b-8029-e612ee1db23d', null, null, '1530582618', null);
INSERT INTO `download_copy` VALUES ('368', '101', '9ff162e0-3327-405e-9a5a-067ce3fa945a', null, null, '1530582639', null);
INSERT INTO `download_copy` VALUES ('369', '101', '94550659-d66e-44e0-bf64-ca5996447ec4', null, null, '1530582679', null);
INSERT INTO `download_copy` VALUES ('370', '101', 'a60966bc-19c8-4cab-a90e-c1f87987dac2', null, null, '1530582721', null);
INSERT INTO `download_copy` VALUES ('371', '101', 'dd53df25-4539-4dee-b8a9-bd740476a6e6', null, null, '1530582741', null);
INSERT INTO `download_copy` VALUES ('372', '101', '291fdb0f-bc6b-4529-a574-96208b890e92', null, null, '1530582768', null);
INSERT INTO `download_copy` VALUES ('373', '101', 'ae8d3a17-26b9-41ce-8cca-9387aaa2ec11', null, null, '1530582789', null);
INSERT INTO `download_copy` VALUES ('374', '101', 'aa777b03-b2c8-44f9-8856-c308db444293', null, null, '1530582809', null);
INSERT INTO `download_copy` VALUES ('375', '101', 'af73e8f1-40a1-4ea1-a08a-048f2def618b', null, null, '1530582829', null);
INSERT INTO `download_copy` VALUES ('376', '101', 'a31d6910-81e6-44ec-9b43-3b0e303cf3cd', null, null, '1530582869', null);
INSERT INTO `download_copy` VALUES ('377', '101', 'a3b3d24d-28ea-419f-a2f4-6cc247311da2', null, null, '1530582898', null);
INSERT INTO `download_copy` VALUES ('378', '101', '7b76509b-34f2-4b8b-a69b-6c97c2c7ed7f', null, null, '1530582992', null);
INSERT INTO `download_copy` VALUES ('379', '101', 'd2d88889-0fd7-4aca-adf8-6cf51a203aad', null, null, '1530583018', null);
INSERT INTO `download_copy` VALUES ('380', '101', '1042dca9-d793-4e66-8b52-2c7bfef0561c', null, null, '1530583038', null);
INSERT INTO `download_copy` VALUES ('381', '101', 'b76af67f-9658-46d4-b116-8d7fa1634a6a', null, null, '1530583059', null);
INSERT INTO `download_copy` VALUES ('382', '101', '6bf3626d-ec6a-46e0-bc89-06f302409748', null, null, '1530583080', null);
INSERT INTO `download_copy` VALUES ('383', '101', '3d54705a-d0a3-4df1-b983-c14e543e5e7d', null, null, '1530583156', null);
INSERT INTO `download_copy` VALUES ('384', '101', '7a433c0c-4bd6-4bca-b288-217bd3a1b411', null, null, '1530583173', null);
INSERT INTO `download_copy` VALUES ('385', '101', '0da3defc-c38c-4b35-8e61-a4a5aa11e22f', null, null, '1530583197', null);
INSERT INTO `download_copy` VALUES ('386', '101', '5338143e-91b2-4c59-aef6-e3fb42023f67', null, null, '1530583215', null);
INSERT INTO `download_copy` VALUES ('387', '101', 'b70b213e-6d83-4f37-a155-feb0976c6e42', null, null, '1530583308', null);
INSERT INTO `download_copy` VALUES ('388', '101', '75abac89-cf48-4592-b533-698472f96cba', null, null, '1530583343', null);
INSERT INTO `download_copy` VALUES ('389', '101', '0d35502a-ca53-428e-be48-7b00bae0128b', null, null, '1530583368', null);
INSERT INTO `download_copy` VALUES ('390', '101', '9e57fd3b-1379-452a-b675-c59f1c1f1a50', null, null, '1530583386', null);
INSERT INTO `download_copy` VALUES ('391', '101', '6402c306-708e-47b5-b888-7e5d9181424a', null, null, '1530583406', null);
INSERT INTO `download_copy` VALUES ('392', '101', 'f6fb85ae-f098-4102-aabb-fba4e965d52f', null, null, '1530583434', null);
INSERT INTO `download_copy` VALUES ('393', '101', '586f35da-758a-430a-8965-3530ca49044c', null, null, '1530583453', null);
INSERT INTO `download_copy` VALUES ('394', '101', '168bc036-0f26-4b77-af54-82dc1ebdfa75', null, null, '1530583472', null);
INSERT INTO `download_copy` VALUES ('395', '101', 'bfe079db-0f72-437c-8839-d00fba2c9788', null, null, '1530583520', null);
INSERT INTO `download_copy` VALUES ('396', '101', '470c02d9-20fd-4797-a724-a6f5cd4d0fd5', null, null, '1530583568', null);
INSERT INTO `download_copy` VALUES ('397', '101', 'b637bf4e-2f69-4584-aa3b-127f3dddab6f', null, null, '1530583587', null);
INSERT INTO `download_copy` VALUES ('398', '101', 'ea326cfb-a943-49b4-ad5f-ff4aad4ec920', null, null, '1530583608', null);
INSERT INTO `download_copy` VALUES ('399', '101', 'e73a2e9f-b379-4730-a29e-215ca253430b', null, null, '1530583628', null);
INSERT INTO `download_copy` VALUES ('400', '101', '8e93284c-ba35-4266-b9f1-8d2deebf4092', null, null, '1530583677', null);
INSERT INTO `download_copy` VALUES ('401', '101', '1ca44af6-1f92-4f0b-9a2b-c94996d3975c', null, null, '1530583701', null);
INSERT INTO `download_copy` VALUES ('402', '101', '4dda7d31-b721-4291-aca1-9682f42a2fda', null, null, '1530583722', null);
INSERT INTO `download_copy` VALUES ('403', '101', 'b378151c-2a11-4be6-8fac-efb067e965e4', null, null, '1530583740', null);
INSERT INTO `download_copy` VALUES ('404', '101', '599d6b28-cce8-4cfa-a59f-4534a9f20c32', null, null, '1530583762', null);

-- ----------------------------
-- Table structure for download_group
-- ----------------------------
DROP TABLE IF EXISTS `download_group`;
CREATE TABLE `download_group` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `downloadGroupName` varchar(200) NOT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of download_group
-- ----------------------------
INSERT INTO `download_group` VALUES ('7', '管理员组', '最大权限');
INSERT INTO `download_group` VALUES ('8', '建筑组', '只能下载建筑');
INSERT INTO `download_group` VALUES ('10', '测试群组', '仅供测试');
INSERT INTO `download_group` VALUES ('11', '测试测试', '测试测试');
INSERT INTO `download_group` VALUES ('12', '测试测试', '测试测试');
INSERT INTO `download_group` VALUES ('13', '给排水', '给排水');

-- ----------------------------
-- Table structure for excelcontent
-- ----------------------------
DROP TABLE IF EXISTS `excelcontent`;
CREATE TABLE `excelcontent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dict_id` int(11) DEFAULT NULL,
  `project_id` int(11) DEFAULT NULL,
  `item_value` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=547 DEFAULT CHARSET=utf8 COMMENT='展示excel信息';

-- ----------------------------
-- Records of excelcontent
-- ----------------------------
INSERT INTO `excelcontent` VALUES ('1', '1', '1', '198943.2');
INSERT INTO `excelcontent` VALUES ('2', '2', '1', '99854.34');
INSERT INTO `excelcontent` VALUES ('3', '3', '1', '2.0');
INSERT INTO `excelcontent` VALUES ('4', '4', '1', '2010年10月1日');
INSERT INTO `excelcontent` VALUES ('5', '5', '1', '城市近郊');
INSERT INTO `excelcontent` VALUES ('6', '6', '1', '18000');
INSERT INTO `excelcontent` VALUES ('7', '7', '1', '4');
INSERT INTO `excelcontent` VALUES ('8', '8', '1', '高层联排公寓');
INSERT INTO `excelcontent` VALUES ('9', '9', '1', '北京');
INSERT INTO `excelcontent` VALUES ('10', '10', '1', '中建');
INSERT INTO `excelcontent` VALUES ('11', '42', '1', '-1200.0');
INSERT INTO `excelcontent` VALUES ('12', '43', '1', '意式');
INSERT INTO `excelcontent` VALUES ('13', '44', '1', '-5.0');
INSERT INTO `excelcontent` VALUES ('14', '45', '1', '石材');
INSERT INTO `excelcontent` VALUES ('15', '46', '1', '-230.0');
INSERT INTO `excelcontent` VALUES ('16', '47', '1', '2010年02月19日');
INSERT INTO `excelcontent` VALUES ('17', '48', '1', '会所商业');
INSERT INTO `excelcontent` VALUES ('18', '49', '1', '中华大商厦');
INSERT INTO `excelcontent` VALUES ('19', '50', '1', '地中海');
INSERT INTO `excelcontent` VALUES ('20', '51', '1', '1100.22');
INSERT INTO `excelcontent` VALUES ('21', '52', '1', '500.00');
INSERT INTO `excelcontent` VALUES ('22', '53', '1', '2500');
INSERT INTO `excelcontent` VALUES ('23', '54', '1', '2800');
INSERT INTO `excelcontent` VALUES ('24', '55', '1', '上海大研室内设计有限公司');
INSERT INTO `excelcontent` VALUES ('25', '56', '1', '今典国际');
INSERT INTO `excelcontent` VALUES ('26', '57', '1', '中建·红杉溪谷[北京]');
INSERT INTO `excelcontent` VALUES ('27', '58', '1', '意式');
INSERT INTO `excelcontent` VALUES ('28', '59', '1', '115.33');
INSERT INTO `excelcontent` VALUES ('29', '60', '1', '否');
INSERT INTO `excelcontent` VALUES ('30', '61', '1', '2100');
INSERT INTO `excelcontent` VALUES ('31', '62', '1', '1700');
INSERT INTO `excelcontent` VALUES ('32', '63', '1', '上海大研室内设计有限公司');
INSERT INTO `excelcontent` VALUES ('33', '64', '1', '今典国际');
INSERT INTO `excelcontent` VALUES ('34', '65', '1', '中建·红杉溪谷[北京]');
INSERT INTO `excelcontent` VALUES ('35', '66', '1', '11000.22');
INSERT INTO `excelcontent` VALUES ('36', '67', '1', '0.00');
INSERT INTO `excelcontent` VALUES ('37', '68', '1', '欧式古典');
INSERT INTO `excelcontent` VALUES ('38', '69', '1', '800');
INSERT INTO `excelcontent` VALUES ('39', '70', '1', '20110201');
INSERT INTO `excelcontent` VALUES ('40', '71', '1', '原景设计工作室');
INSERT INTO `excelcontent` VALUES ('41', '72', '1', '东方园林');
INSERT INTO `excelcontent` VALUES ('42', '73', '1', '中建·红杉溪谷[北京]');
INSERT INTO `excelcontent` VALUES ('43', '74', '1', '34565.22');
INSERT INTO `excelcontent` VALUES ('44', '75', '1', '300.64');
INSERT INTO `excelcontent` VALUES ('45', '76', '1', '欧式古典');
INSERT INTO `excelcontent` VALUES ('46', '77', '1', '400');
INSERT INTO `excelcontent` VALUES ('47', '78', '1', '20130201');
INSERT INTO `excelcontent` VALUES ('48', '79', '1', '原景设计工作室');
INSERT INTO `excelcontent` VALUES ('49', '80', '1', '东方园林');
INSERT INTO `excelcontent` VALUES ('50', '81', '1', '中建·红杉溪谷[北京]');
INSERT INTO `excelcontent` VALUES ('51', '82', '1', '意式');
INSERT INTO `excelcontent` VALUES ('52', '83', '1', '210.22');
INSERT INTO `excelcontent` VALUES ('53', '84', '1', '1200');
INSERT INTO `excelcontent` VALUES ('54', '85', '1', '石材');
INSERT INTO `excelcontent` VALUES ('55', '86', '1', '石材');
INSERT INTO `excelcontent` VALUES ('56', '87', '1', '20130201');
INSERT INTO `excelcontent` VALUES ('57', '88', '1', '上海大研室内设计有限公司');
INSERT INTO `excelcontent` VALUES ('58', '89', '1', '中建·红杉溪谷[北京]');
INSERT INTO `excelcontent` VALUES ('59', '1', '2', '2081232.43');
INSERT INTO `excelcontent` VALUES ('60', '2', '2', '866545.43');
INSERT INTO `excelcontent` VALUES ('61', '3', '2', '2.4');
INSERT INTO `excelcontent` VALUES ('62', '4', '2', '2009年12月31日');
INSERT INTO `excelcontent` VALUES ('63', '5', '2', '城市新区');
INSERT INTO `excelcontent` VALUES ('64', '6', '2', '4350.0');
INSERT INTO `excelcontent` VALUES ('65', '7', '2', '6');
INSERT INTO `excelcontent` VALUES ('66', '8', '2', '高层小高层洋房');
INSERT INTO `excelcontent` VALUES ('67', '9', '2', '北京');
INSERT INTO `excelcontent` VALUES ('68', '10', '2', '总公司');
INSERT INTO `excelcontent` VALUES ('69', '1', '4', '1075433.21');
INSERT INTO `excelcontent` VALUES ('70', '2', '4', '324242.21');
INSERT INTO `excelcontent` VALUES ('71', '3', '4', '3.3');
INSERT INTO `excelcontent` VALUES ('72', '4', '4', '2009年3月28日');
INSERT INTO `excelcontent` VALUES ('73', '5', '4', '城市新区');
INSERT INTO `excelcontent` VALUES ('74', '6', '4', '7800.0');
INSERT INTO `excelcontent` VALUES ('75', '7', '4', '4');
INSERT INTO `excelcontent` VALUES ('76', '8', '4', '高层小高层');
INSERT INTO `excelcontent` VALUES ('77', '9', '4', '北京');
INSERT INTO `excelcontent` VALUES ('78', '10', '4', '总公司');
INSERT INTO `excelcontent` VALUES ('79', '42', '4', '2400.51');
INSERT INTO `excelcontent` VALUES ('80', '43', '4', '新中式汉唐风');
INSERT INTO `excelcontent` VALUES ('81', '44', '4', '2层');
INSERT INTO `excelcontent` VALUES ('82', '45', '4', '石材');
INSERT INTO `excelcontent` VALUES ('83', '46', '4', '1400.0');
INSERT INTO `excelcontent` VALUES ('84', '47', '4', '2004年05月07日');
INSERT INTO `excelcontent` VALUES ('85', '48', '4', '会所商业');
INSERT INTO `excelcontent` VALUES ('86', '49', '4', '中建·开元壹号[西安]');
INSERT INTO `excelcontent` VALUES ('87', '50', '4', '新中式');
INSERT INTO `excelcontent` VALUES ('88', '51', '4', '1500.22');
INSERT INTO `excelcontent` VALUES ('89', '52', '4', '800.0');
INSERT INTO `excelcontent` VALUES ('90', '53', '4', '2700.0');
INSERT INTO `excelcontent` VALUES ('91', '54', '4', '2300.0');
INSERT INTO `excelcontent` VALUES ('92', '55', '4', '笙竹室内设计有限公司');
INSERT INTO `excelcontent` VALUES ('93', '56', '4', '笙竹室内设计有限公司');
INSERT INTO `excelcontent` VALUES ('94', '57', '4', '中建·开元壹号[西安]');
INSERT INTO `excelcontent` VALUES ('95', '58', '4', '新中式');
INSERT INTO `excelcontent` VALUES ('96', '59', '4', '122.43');
INSERT INTO `excelcontent` VALUES ('97', '60', '4', '否');
INSERT INTO `excelcontent` VALUES ('98', '61', '4', '2300.0');
INSERT INTO `excelcontent` VALUES ('99', '62', '4', '1700.0');
INSERT INTO `excelcontent` VALUES ('100', '63', '4', '笙竹室内设计有限公司');
INSERT INTO `excelcontent` VALUES ('101', '64', '4', '笙竹室内设计有限公司');
INSERT INTO `excelcontent` VALUES ('102', '65', '4', '中建·开元壹号[西安]');
INSERT INTO `excelcontent` VALUES ('103', '66', '4', '21250.22');
INSERT INTO `excelcontent` VALUES ('104', '67', '4', '2100.9');
INSERT INTO `excelcontent` VALUES ('105', '68', '4', '新苏式园林');
INSERT INTO `excelcontent` VALUES ('106', '69', '4', '640.0');
INSERT INTO `excelcontent` VALUES ('107', '70', '4', '40575.0');
INSERT INTO `excelcontent` VALUES ('108', '71', '4', '易兰景观设计有限公司');
INSERT INTO `excelcontent` VALUES ('109', '72', '4', '东方园林');
INSERT INTO `excelcontent` VALUES ('110', '73', '4', '中建·开元壹号[西安]');
INSERT INTO `excelcontent` VALUES ('111', '74', '4', '785432.21');
INSERT INTO `excelcontent` VALUES ('112', '75', '4', '12300.64');
INSERT INTO `excelcontent` VALUES ('113', '76', '4', '欧式古典');
INSERT INTO `excelcontent` VALUES ('114', '77', '4', '230.0');
INSERT INTO `excelcontent` VALUES ('115', '78', '4', '41306.0');
INSERT INTO `excelcontent` VALUES ('116', '79', '4', '易兰景观设计有限公司');
INSERT INTO `excelcontent` VALUES ('117', '80', '4', '东方园林');
INSERT INTO `excelcontent` VALUES ('118', '81', '4', '中建·开元壹号[西安]');
INSERT INTO `excelcontent` VALUES ('119', '42', '2', '2100.32');
INSERT INTO `excelcontent` VALUES ('120', '43', '2', '新古典');
INSERT INTO `excelcontent` VALUES ('121', '44', '2', '2层');
INSERT INTO `excelcontent` VALUES ('122', '45', '2', '石材');
INSERT INTO `excelcontent` VALUES ('123', '46', '2', '1100.0');
INSERT INTO `excelcontent` VALUES ('124', '47', '2', '2004年05月7日');
INSERT INTO `excelcontent` VALUES ('125', '48', '2', '会所');
INSERT INTO `excelcontent` VALUES ('126', '49', '2', '中建·大观天下[潍坊]');
INSERT INTO `excelcontent` VALUES ('127', '50', '2', '新古典');
INSERT INTO `excelcontent` VALUES ('128', '51', '2', '1300.53');
INSERT INTO `excelcontent` VALUES ('129', '52', '2', '820.37');
INSERT INTO `excelcontent` VALUES ('130', '53', '2', '2300.0');
INSERT INTO `excelcontent` VALUES ('131', '54', '2', '2100.0');
INSERT INTO `excelcontent` VALUES ('132', '55', '2', '深圳派尚室内设计有限公司');
INSERT INTO `excelcontent` VALUES ('133', '56', '2', '深圳派尚室内设计有限公司');
INSERT INTO `excelcontent` VALUES ('134', '57', '2', '中建·大观天下[潍坊]');
INSERT INTO `excelcontent` VALUES ('135', '58', '2', '现代风格');
INSERT INTO `excelcontent` VALUES ('136', '59', '2', '143.62');
INSERT INTO `excelcontent` VALUES ('137', '60', '2', '否');
INSERT INTO `excelcontent` VALUES ('138', '61', '2', '2300.0');
INSERT INTO `excelcontent` VALUES ('139', '62', '2', '1900.0');
INSERT INTO `excelcontent` VALUES ('140', '63', '2', '深圳派尚室内设计有限公司');
INSERT INTO `excelcontent` VALUES ('141', '64', '2', '深圳派尚室内设计有限公司');
INSERT INTO `excelcontent` VALUES ('142', '65', '2', '中建·大观天下[潍坊]');
INSERT INTO `excelcontent` VALUES ('143', '66', '2', '15212.31');
INSERT INTO `excelcontent` VALUES ('144', '67', '2', '430.2');
INSERT INTO `excelcontent` VALUES ('145', '68', '2', '欧式古典');
INSERT INTO `excelcontent` VALUES ('146', '69', '2', '600.0');
INSERT INTO `excelcontent` VALUES ('147', '70', '2', '40452.0');
INSERT INTO `excelcontent` VALUES ('148', '71', '2', '土人景观设计有限公司');
INSERT INTO `excelcontent` VALUES ('149', '72', '2', '东方园林');
INSERT INTO `excelcontent` VALUES ('150', '73', '2', '中建·大观天下[潍坊]');
INSERT INTO `excelcontent` VALUES ('151', '74', '2', '563215.43');
INSERT INTO `excelcontent` VALUES ('152', '75', '2', '3320.64');
INSERT INTO `excelcontent` VALUES ('153', '76', '2', '欧式古典');
INSERT INTO `excelcontent` VALUES ('154', '77', '2', '210.0');
INSERT INTO `excelcontent` VALUES ('155', '78', '2', '41487.0');
INSERT INTO `excelcontent` VALUES ('156', '79', '2', '土人景观设计有限公司');
INSERT INTO `excelcontent` VALUES ('157', '80', '2', '东方园林');
INSERT INTO `excelcontent` VALUES ('158', '81', '2', '中建·大观天下[潍坊]');
INSERT INTO `excelcontent` VALUES ('159', '82', '2', '新古典');
INSERT INTO `excelcontent` VALUES ('160', '83', '2', '170.52');
INSERT INTO `excelcontent` VALUES ('161', '84', '2', '840.0');
INSERT INTO `excelcontent` VALUES ('162', '85', '2', '石材');
INSERT INTO `excelcontent` VALUES ('163', '86', '2', '石材');
INSERT INTO `excelcontent` VALUES ('164', '87', '2', '41487.0');
INSERT INTO `excelcontent` VALUES ('165', '88', '2', '深圳派尚室内设计有限公司');
INSERT INTO `excelcontent` VALUES ('166', '89', '2', '中建·大观天下[潍坊]');
INSERT INTO `excelcontent` VALUES ('167', '1', '3', '403456.21');
INSERT INTO `excelcontent` VALUES ('168', '2', '3', '148148.24');
INSERT INTO `excelcontent` VALUES ('169', '3', '3', '2.7');
INSERT INTO `excelcontent` VALUES ('170', '4', '3', '2011年2月19日');
INSERT INTO `excelcontent` VALUES ('171', '5', '3', '城市边缘');
INSERT INTO `excelcontent` VALUES ('172', '6', '3', '');
INSERT INTO `excelcontent` VALUES ('173', '7', '3', '4');
INSERT INTO `excelcontent` VALUES ('174', '8', '3', '高层多层叠加');
INSERT INTO `excelcontent` VALUES ('175', '9', '3', '天津');
INSERT INTO `excelcontent` VALUES ('176', '10', '3', '总公司');
INSERT INTO `excelcontent` VALUES ('177', '42', '3', '1835.43');
INSERT INTO `excelcontent` VALUES ('178', '43', '3', 'Artdeco');
INSERT INTO `excelcontent` VALUES ('179', '44', '3', '2层');
INSERT INTO `excelcontent` VALUES ('180', '45', '3', '石材');
INSERT INTO `excelcontent` VALUES ('181', '46', '3', '1450.0');
INSERT INTO `excelcontent` VALUES ('182', '47', '3', '');
INSERT INTO `excelcontent` VALUES ('183', '48', '3', '会所');
INSERT INTO `excelcontent` VALUES ('184', '49', '3', '中建·滨海壹号[天津]');
INSERT INTO `excelcontent` VALUES ('185', '50', '3', 'Artdeco');
INSERT INTO `excelcontent` VALUES ('186', '51', '3', '1540.34');
INSERT INTO `excelcontent` VALUES ('187', '52', '3', '330.0');
INSERT INTO `excelcontent` VALUES ('188', '53', '3', '2700.0');
INSERT INTO `excelcontent` VALUES ('189', '54', '3', '2800.0');
INSERT INTO `excelcontent` VALUES ('190', '55', '3', '笙竹室内设计有限公司');
INSERT INTO `excelcontent` VALUES ('191', '56', '3', '笙竹室内设计有限公司');
INSERT INTO `excelcontent` VALUES ('192', '57', '3', '中建·滨海壹号[天津]');
INSERT INTO `excelcontent` VALUES ('193', '58', '3', 'Artdeco');
INSERT INTO `excelcontent` VALUES ('194', '59', '3', '127.43');
INSERT INTO `excelcontent` VALUES ('195', '60', '3', '否');
INSERT INTO `excelcontent` VALUES ('196', '61', '3', '2550.0');
INSERT INTO `excelcontent` VALUES ('197', '62', '3', '2000.0');
INSERT INTO `excelcontent` VALUES ('198', '63', '3', '笙竹室内设计有限公司');
INSERT INTO `excelcontent` VALUES ('199', '64', '3', '笙竹室内设计有限公司');
INSERT INTO `excelcontent` VALUES ('200', '65', '3', '中建·滨海壹号[天津]');
INSERT INTO `excelcontent` VALUES ('201', '66', '3', '11000.22');
INSERT INTO `excelcontent` VALUES ('202', '67', '3', '0.0');
INSERT INTO `excelcontent` VALUES ('203', '68', '3', '欧式古典');
INSERT INTO `excelcontent` VALUES ('204', '69', '3', '800.0');
INSERT INTO `excelcontent` VALUES ('205', '70', '3', '');
INSERT INTO `excelcontent` VALUES ('206', '71', '3', '易兰景观设计有限公司');
INSERT INTO `excelcontent` VALUES ('207', '72', '3', '普邦园林');
INSERT INTO `excelcontent` VALUES ('208', '73', '3', '中建·滨海壹号[天津]');
INSERT INTO `excelcontent` VALUES ('209', '74', '3', '98765.22');
INSERT INTO `excelcontent` VALUES ('210', '75', '3', '0.0');
INSERT INTO `excelcontent` VALUES ('211', '76', '3', '欧式古典');
INSERT INTO `excelcontent` VALUES ('212', '77', '3', '400.0');
INSERT INTO `excelcontent` VALUES ('213', '78', '3', '');
INSERT INTO `excelcontent` VALUES ('214', '79', '3', '易兰景观设计有限公司');
INSERT INTO `excelcontent` VALUES ('215', '80', '3', '普邦园林');
INSERT INTO `excelcontent` VALUES ('216', '81', '3', '中建·滨海壹号[天津]');
INSERT INTO `excelcontent` VALUES ('217', '82', '3', 'Artdeco');
INSERT INTO `excelcontent` VALUES ('218', '83', '3', '290.34');
INSERT INTO `excelcontent` VALUES ('219', '84', '3', '1200.0');
INSERT INTO `excelcontent` VALUES ('220', '85', '3', '石材');
INSERT INTO `excelcontent` VALUES ('221', '86', '3', '石材');
INSERT INTO `excelcontent` VALUES ('222', '87', '3', '41548.0');
INSERT INTO `excelcontent` VALUES ('223', '88', '3', '');
INSERT INTO `excelcontent` VALUES ('224', '89', '3', '滨海一号[天津]');
INSERT INTO `excelcontent` VALUES ('225', '1', '5', '454210.23');
INSERT INTO `excelcontent` VALUES ('226', '2', '5', '189254.67');
INSERT INTO `excelcontent` VALUES ('227', '3', '5', '2.4');
INSERT INTO `excelcontent` VALUES ('228', '4', '5', '2008年8月31日');
INSERT INTO `excelcontent` VALUES ('229', '5', '5', '城市近郊');
INSERT INTO `excelcontent` VALUES ('230', '6', '5', '7600.0');
INSERT INTO `excelcontent` VALUES ('231', '7', '5', '4');
INSERT INTO `excelcontent` VALUES ('232', '8', '5', '高层小高层');
INSERT INTO `excelcontent` VALUES ('233', '9', '5', '北京');
INSERT INTO `excelcontent` VALUES ('234', '10', '5', '总公司');
INSERT INTO `excelcontent` VALUES ('235', '42', '5', '920.11');
INSERT INTO `excelcontent` VALUES ('236', '43', '5', '新古典');
INSERT INTO `excelcontent` VALUES ('237', '44', '5', '1层');
INSERT INTO `excelcontent` VALUES ('238', '45', '5', '涂料');
INSERT INTO `excelcontent` VALUES ('239', '46', '5', '900.0');
INSERT INTO `excelcontent` VALUES ('240', '47', '5', '2012  年   04月  23   日');
INSERT INTO `excelcontent` VALUES ('241', '48', '5', '商业');
INSERT INTO `excelcontent` VALUES ('242', '49', '5', '中建·麓山和苑[长沙]');
INSERT INTO `excelcontent` VALUES ('243', '50', '5', '新古典');
INSERT INTO `excelcontent` VALUES ('244', '51', '5', '890.31');
INSERT INTO `excelcontent` VALUES ('245', '52', '5', '40.13');
INSERT INTO `excelcontent` VALUES ('246', '53', '5', '2100.0');
INSERT INTO `excelcontent` VALUES ('247', '54', '5', '1850.0');
INSERT INTO `excelcontent` VALUES ('248', '55', '5', '台湾邱德光工作室');
INSERT INTO `excelcontent` VALUES ('249', '56', '5', '台湾邱德光工作室');
INSERT INTO `excelcontent` VALUES ('250', '57', '5', '中建·麓山和苑[长沙]');
INSERT INTO `excelcontent` VALUES ('251', '58', '5', '东南亚');
INSERT INTO `excelcontent` VALUES ('252', '59', '5', '138.31');
INSERT INTO `excelcontent` VALUES ('253', '60', '5', '是');
INSERT INTO `excelcontent` VALUES ('254', '61', '5', '1950.0');
INSERT INTO `excelcontent` VALUES ('255', '62', '5', '2100.0');
INSERT INTO `excelcontent` VALUES ('256', '63', '5', '台湾邱德光工作室');
INSERT INTO `excelcontent` VALUES ('257', '64', '5', '台湾邱德光工作室');
INSERT INTO `excelcontent` VALUES ('258', '65', '5', '中建·麓山和苑[长沙]');
INSERT INTO `excelcontent` VALUES ('259', '66', '5', '16021.33');
INSERT INTO `excelcontent` VALUES ('260', '67', '5', '340.32');
INSERT INTO `excelcontent` VALUES ('261', '68', '5', '欧式古典');
INSERT INTO `excelcontent` VALUES ('262', '69', '5', '650.0');
INSERT INTO `excelcontent` VALUES ('263', '70', '5', '40238.0');
INSERT INTO `excelcontent` VALUES ('264', '71', '5', '国际怡境景观设计有限公司');
INSERT INTO `excelcontent` VALUES ('265', '72', '5', '怡发园林有限公司');
INSERT INTO `excelcontent` VALUES ('266', '73', '5', '中建·麓山和苑[长沙]');
INSERT INTO `excelcontent` VALUES ('267', '74', '5', '98321.34');
INSERT INTO `excelcontent` VALUES ('268', '75', '5', '300.64');
INSERT INTO `excelcontent` VALUES ('269', '76', '5', '欧式古典');
INSERT INTO `excelcontent` VALUES ('270', '77', '5', '430.0');
INSERT INTO `excelcontent` VALUES ('271', '78', '5', '41153.0');
INSERT INTO `excelcontent` VALUES ('272', '79', '5', '国际怡境景观设计有限公司');
INSERT INTO `excelcontent` VALUES ('273', '80', '5', '怡发园林有限公司');
INSERT INTO `excelcontent` VALUES ('274', '81', '5', '中建·麓山和苑[长沙]');
INSERT INTO `excelcontent` VALUES ('275', '82', '5', '新古典');
INSERT INTO `excelcontent` VALUES ('276', '83', '5', '239.11');
INSERT INTO `excelcontent` VALUES ('277', '84', '5', '1200.0');
INSERT INTO `excelcontent` VALUES ('278', '85', '5', '石材');
INSERT INTO `excelcontent` VALUES ('279', '86', '5', '涂料');
INSERT INTO `excelcontent` VALUES ('280', '87', '5', '41153.0');
INSERT INTO `excelcontent` VALUES ('281', '88', '5', '台湾邱德光工作室');
INSERT INTO `excelcontent` VALUES ('282', '89', '5', '中建·麓山和苑[长沙]');
INSERT INTO `excelcontent` VALUES ('283', '1', '6', '2123.0');
INSERT INTO `excelcontent` VALUES ('284', '2', '6', '1234.0');
INSERT INTO `excelcontent` VALUES ('285', '3', '6', '0.23');
INSERT INTO `excelcontent` VALUES ('286', '4', '6', '2012年4月1日');
INSERT INTO `excelcontent` VALUES ('287', '5', '6', '城市核心区');
INSERT INTO `excelcontent` VALUES ('288', '6', '6', '2000.0');
INSERT INTO `excelcontent` VALUES ('289', '7', '6', '2');
INSERT INTO `excelcontent` VALUES ('290', '8', '6', '高层');
INSERT INTO `excelcontent` VALUES ('291', '9', '6', '北京');
INSERT INTO `excelcontent` VALUES ('292', '10', '6', '中建地产');
INSERT INTO `excelcontent` VALUES ('293', '42', '6', '2301.22');
INSERT INTO `excelcontent` VALUES ('294', '43', '6', '法式');
INSERT INTO `excelcontent` VALUES ('295', '44', '6', '2层');
INSERT INTO `excelcontent` VALUES ('296', '45', '6', '石材');
INSERT INTO `excelcontent` VALUES ('297', '46', '6', '1400.0');
INSERT INTO `excelcontent` VALUES ('298', '47', '6', '41244.0');
INSERT INTO `excelcontent` VALUES ('299', '48', '6', '会所');
INSERT INTO `excelcontent` VALUES ('300', '49', '6', '中建·汤逊湖壹号[武汉]');
INSERT INTO `excelcontent` VALUES ('301', '50', '6', '法式');
INSERT INTO `excelcontent` VALUES ('302', '51', '6', '1520.22');
INSERT INTO `excelcontent` VALUES ('303', '52', '6', '520.3');
INSERT INTO `excelcontent` VALUES ('304', '53', '6', '2800.0');
INSERT INTO `excelcontent` VALUES ('305', '54', '6', '2300.0');
INSERT INTO `excelcontent` VALUES ('306', '55', '6', '上海大研室内设计有限公司');
INSERT INTO `excelcontent` VALUES ('307', '56', '6', '上海大研室内设计有限公司');
INSERT INTO `excelcontent` VALUES ('308', '57', '6', '中建·汤逊湖壹号[武汉]');
INSERT INTO `excelcontent` VALUES ('309', '58', '6', '英式');
INSERT INTO `excelcontent` VALUES ('310', '59', '6', '213.34');
INSERT INTO `excelcontent` VALUES ('311', '60', '6', '是');
INSERT INTO `excelcontent` VALUES ('312', '61', '6', '3400.0');
INSERT INTO `excelcontent` VALUES ('313', '62', '6', '2900.0');
INSERT INTO `excelcontent` VALUES ('314', '63', '6', '深圳派尚室内设计有限公司');
INSERT INTO `excelcontent` VALUES ('315', '64', '6', '深圳派尚室内设计有限公司');
INSERT INTO `excelcontent` VALUES ('316', '65', '6', '中建·汤逊湖壹号[武汉]');
INSERT INTO `excelcontent` VALUES ('317', '66', '6', '15320.22');
INSERT INTO `excelcontent` VALUES ('318', '67', '6', '430.02');
INSERT INTO `excelcontent` VALUES ('319', '68', '6', '法式');
INSERT INTO `excelcontent` VALUES ('320', '69', '6', '830.0');
INSERT INTO `excelcontent` VALUES ('321', '70', '6', '40878.0');
INSERT INTO `excelcontent` VALUES ('322', '71', '6', '易兰景观设计有限公司');
INSERT INTO `excelcontent` VALUES ('323', '72', '6', '东方园林');
INSERT INTO `excelcontent` VALUES ('324', '73', '6', '中建·红杉溪谷[北京]');
INSERT INTO `excelcontent` VALUES ('325', '74', '6', '34565.22');
INSERT INTO `excelcontent` VALUES ('326', '75', '6', '300.64');
INSERT INTO `excelcontent` VALUES ('327', '76', '6', '欧式古典');
INSERT INTO `excelcontent` VALUES ('328', '77', '6', '400.0');
INSERT INTO `excelcontent` VALUES ('329', '78', '6', '41306.0');
INSERT INTO `excelcontent` VALUES ('330', '79', '6', '易兰景观设计有限公司');
INSERT INTO `excelcontent` VALUES ('331', '80', '6', '东方园林');
INSERT INTO `excelcontent` VALUES ('332', '81', '6', '中建·汤逊湖壹号[武汉]');
INSERT INTO `excelcontent` VALUES ('333', '82', '6', '法式');
INSERT INTO `excelcontent` VALUES ('334', '83', '6', '32.22');
INSERT INTO `excelcontent` VALUES ('335', '84', '6', '1500.0');
INSERT INTO `excelcontent` VALUES ('336', '85', '6', '石材');
INSERT INTO `excelcontent` VALUES ('337', '86', '6', '石材');
INSERT INTO `excelcontent` VALUES ('338', '87', '6', '41548.0');
INSERT INTO `excelcontent` VALUES ('339', '88', '6', '上海大研室内设计有限公司');
INSERT INTO `excelcontent` VALUES ('340', '89', '6', '中建·汤逊湖壹号[武汉]');
INSERT INTO `excelcontent` VALUES ('341', '82', '4', '新中式汉唐风');
INSERT INTO `excelcontent` VALUES ('342', '83', '4', '320.19');
INSERT INTO `excelcontent` VALUES ('343', '84', '4', '1000.0');
INSERT INTO `excelcontent` VALUES ('344', '85', '4', '石材');
INSERT INTO `excelcontent` VALUES ('345', '86', '4', '石材');
INSERT INTO `excelcontent` VALUES ('346', '87', '4', '41306.0');
INSERT INTO `excelcontent` VALUES ('347', '88', '4', '笙竹室内设计有限公司');
INSERT INTO `excelcontent` VALUES ('348', '89', '4', '中建·开元壹号[西安]');
INSERT INTO `excelcontent` VALUES ('349', '11', '1', '高层');
INSERT INTO `excelcontent` VALUES ('350', '12', '1', '2000.5');
INSERT INTO `excelcontent` VALUES ('351', '13', '1', '0.8');
INSERT INTO `excelcontent` VALUES ('352', '14', '1', '首置');
INSERT INTO `excelcontent` VALUES ('353', '15', '1', '普适');
INSERT INTO `excelcontent` VALUES ('354', '16', '1', '0.3');
INSERT INTO `excelcontent` VALUES ('355', '17', '1', '标2');
INSERT INTO `excelcontent` VALUES ('356', '18', '1', '红山溪谷');
INSERT INTO `excelcontent` VALUES ('357', '19', '1', '200.0');
INSERT INTO `excelcontent` VALUES ('358', '20', '1', '200.0');
INSERT INTO `excelcontent` VALUES ('359', '21', '1', '');
INSERT INTO `excelcontent` VALUES ('360', '22', '1', '200.0');
INSERT INTO `excelcontent` VALUES ('361', '23', '1', '200.0');
INSERT INTO `excelcontent` VALUES ('362', '24', '1', '50.0');
INSERT INTO `excelcontent` VALUES ('363', '25', '1', '350.0');
INSERT INTO `excelcontent` VALUES ('364', '26', '1', '下挂一层');
INSERT INTO `excelcontent` VALUES ('365', '27', '1', '侧入户');
INSERT INTO `excelcontent` VALUES ('366', '28', '1', '10');
INSERT INTO `excelcontent` VALUES ('367', '29', '1', '独立半地下');
INSERT INTO `excelcontent` VALUES ('368', '30', '1', '20.0');
INSERT INTO `excelcontent` VALUES ('369', '31', '1', '红山溪谷');
INSERT INTO `excelcontent` VALUES ('370', '32', '1', '200.0');
INSERT INTO `excelcontent` VALUES ('371', '33', '1', '200.0');
INSERT INTO `excelcontent` VALUES ('372', '34', '1', '高层');
INSERT INTO `excelcontent` VALUES ('373', '35', '1', '意式');
INSERT INTO `excelcontent` VALUES ('374', '36', '1', '石材');
INSERT INTO `excelcontent` VALUES ('375', '37', '1', '210.0');
INSERT INTO `excelcontent` VALUES ('376', '38', '1', '2012年04月12日adf');
INSERT INTO `excelcontent` VALUES ('377', '39', '1', '红山溪谷');
INSERT INTO `excelcontent` VALUES ('378', '40', '1', '上海建筑设计院');
INSERT INTO `excelcontent` VALUES ('379', '41', '1', '上海建筑设计院');
INSERT INTO `excelcontent` VALUES ('380', '1', '8', '2123.0');
INSERT INTO `excelcontent` VALUES ('381', '2', '8', '1234.0');
INSERT INTO `excelcontent` VALUES ('382', '3', '8', '0.23');
INSERT INTO `excelcontent` VALUES ('383', '4', '8', '2012年2月19日');
INSERT INTO `excelcontent` VALUES ('384', '5', '8', '城市核心区');
INSERT INTO `excelcontent` VALUES ('385', '6', '8', '2000.0');
INSERT INTO `excelcontent` VALUES ('386', '7', '8', '2');
INSERT INTO `excelcontent` VALUES ('387', '8', '8', '高层');
INSERT INTO `excelcontent` VALUES ('388', '9', '8', '北京');
INSERT INTO `excelcontent` VALUES ('389', '10', '8', '中建地产');
INSERT INTO `excelcontent` VALUES ('390', '42', '8', '-1200.0');
INSERT INTO `excelcontent` VALUES ('391', '43', '8', '意式');
INSERT INTO `excelcontent` VALUES ('392', '44', '8', '-5.0');
INSERT INTO `excelcontent` VALUES ('393', '45', '8', '石材');
INSERT INTO `excelcontent` VALUES ('394', '46', '8', '-230.0');
INSERT INTO `excelcontent` VALUES ('395', '47', '8', '2.0100219E7');
INSERT INTO `excelcontent` VALUES ('396', '48', '8', '会所商业');
INSERT INTO `excelcontent` VALUES ('397', '49', '8', '中华大商厦');
INSERT INTO `excelcontent` VALUES ('398', '1', '17', '2123.0');
INSERT INTO `excelcontent` VALUES ('399', '2', '17', '123.0');
INSERT INTO `excelcontent` VALUES ('400', '3', '17', '0.23');
INSERT INTO `excelcontent` VALUES ('401', '4', '17', '2012.0');
INSERT INTO `excelcontent` VALUES ('402', '5', '17', '城市核心区');
INSERT INTO `excelcontent` VALUES ('403', '6', '17', '2000.0');
INSERT INTO `excelcontent` VALUES ('404', '7', '17', '2.0');
INSERT INTO `excelcontent` VALUES ('405', '8', '17', '高层');
INSERT INTO `excelcontent` VALUES ('406', '9', '17', '北京');
INSERT INTO `excelcontent` VALUES ('407', '10', '17', '中建地产');
INSERT INTO `excelcontent` VALUES ('408', '1', '30', '2123.0');
INSERT INTO `excelcontent` VALUES ('409', '2', '30', '123.0');
INSERT INTO `excelcontent` VALUES ('410', '3', '30', '0.23');
INSERT INTO `excelcontent` VALUES ('411', '4', '30', '2012.0');
INSERT INTO `excelcontent` VALUES ('412', '5', '30', '城市核心区');
INSERT INTO `excelcontent` VALUES ('413', '6', '30', '2000.0');
INSERT INTO `excelcontent` VALUES ('414', '7', '30', '2.0');
INSERT INTO `excelcontent` VALUES ('415', '8', '30', '高层');
INSERT INTO `excelcontent` VALUES ('416', '9', '30', '北京');
INSERT INTO `excelcontent` VALUES ('417', '10', '30', '中建地产');
INSERT INTO `excelcontent` VALUES ('418', '1', '31', '2123.0');
INSERT INTO `excelcontent` VALUES ('419', '2', '31', '123.0');
INSERT INTO `excelcontent` VALUES ('420', '3', '31', '0.23');
INSERT INTO `excelcontent` VALUES ('421', '4', '31', '2012.0');
INSERT INTO `excelcontent` VALUES ('422', '5', '31', '城市核心区');
INSERT INTO `excelcontent` VALUES ('423', '6', '31', '2000.0');
INSERT INTO `excelcontent` VALUES ('424', '7', '31', '2.0');
INSERT INTO `excelcontent` VALUES ('425', '8', '31', '高层');
INSERT INTO `excelcontent` VALUES ('426', '9', '31', '北京');
INSERT INTO `excelcontent` VALUES ('427', '10', '31', '中建地产');
INSERT INTO `excelcontent` VALUES ('428', '1', '32', '2123.0');
INSERT INTO `excelcontent` VALUES ('429', '2', '32', '123.0');
INSERT INTO `excelcontent` VALUES ('430', '3', '32', '0.23');
INSERT INTO `excelcontent` VALUES ('431', '4', '32', '2012.0');
INSERT INTO `excelcontent` VALUES ('432', '5', '32', '城市核心区');
INSERT INTO `excelcontent` VALUES ('433', '6', '32', '2000.0');
INSERT INTO `excelcontent` VALUES ('434', '7', '32', '2.0');
INSERT INTO `excelcontent` VALUES ('435', '8', '32', '高层');
INSERT INTO `excelcontent` VALUES ('436', '9', '32', '北京');
INSERT INTO `excelcontent` VALUES ('437', '10', '32', '中建地产');
INSERT INTO `excelcontent` VALUES ('438', '1', '33', '2123.0');
INSERT INTO `excelcontent` VALUES ('439', '2', '33', '123.0');
INSERT INTO `excelcontent` VALUES ('440', '3', '33', '0.23');
INSERT INTO `excelcontent` VALUES ('441', '4', '33', '2012.0');
INSERT INTO `excelcontent` VALUES ('442', '5', '33', '城市核心区');
INSERT INTO `excelcontent` VALUES ('443', '6', '33', '2000.0');
INSERT INTO `excelcontent` VALUES ('444', '7', '33', '2.0');
INSERT INTO `excelcontent` VALUES ('445', '8', '33', '高层');
INSERT INTO `excelcontent` VALUES ('446', '9', '33', '北京');
INSERT INTO `excelcontent` VALUES ('447', '10', '33', '中建地产');
INSERT INTO `excelcontent` VALUES ('448', '1', '34', '2123.0');
INSERT INTO `excelcontent` VALUES ('449', '2', '34', '123.0');
INSERT INTO `excelcontent` VALUES ('450', '3', '34', '0.23');
INSERT INTO `excelcontent` VALUES ('451', '4', '34', '2012.0');
INSERT INTO `excelcontent` VALUES ('452', '5', '34', '城市核心区');
INSERT INTO `excelcontent` VALUES ('453', '6', '34', '2000.0');
INSERT INTO `excelcontent` VALUES ('454', '7', '34', '2.0');
INSERT INTO `excelcontent` VALUES ('455', '8', '34', '高层');
INSERT INTO `excelcontent` VALUES ('456', '9', '34', '北京');
INSERT INTO `excelcontent` VALUES ('457', '10', '34', '中建地产');
INSERT INTO `excelcontent` VALUES ('458', '1', '35', '2123.0');
INSERT INTO `excelcontent` VALUES ('459', '2', '35', '123.0');
INSERT INTO `excelcontent` VALUES ('460', '3', '35', '0.23');
INSERT INTO `excelcontent` VALUES ('461', '4', '35', '2012.0');
INSERT INTO `excelcontent` VALUES ('462', '5', '35', '城市核心区');
INSERT INTO `excelcontent` VALUES ('463', '6', '35', '2000.0');
INSERT INTO `excelcontent` VALUES ('464', '7', '35', '2.0');
INSERT INTO `excelcontent` VALUES ('465', '8', '35', '高层');
INSERT INTO `excelcontent` VALUES ('466', '9', '35', '北京');
INSERT INTO `excelcontent` VALUES ('467', '10', '35', '中建地产');
INSERT INTO `excelcontent` VALUES ('468', '1', '36', '2123.0');
INSERT INTO `excelcontent` VALUES ('469', '2', '36', '123.0');
INSERT INTO `excelcontent` VALUES ('470', '3', '36', '0.23');
INSERT INTO `excelcontent` VALUES ('471', '4', '36', '2012.0');
INSERT INTO `excelcontent` VALUES ('472', '5', '36', '城市核心区');
INSERT INTO `excelcontent` VALUES ('473', '6', '36', '2000.0');
INSERT INTO `excelcontent` VALUES ('474', '7', '36', '2.0');
INSERT INTO `excelcontent` VALUES ('475', '8', '36', '高层');
INSERT INTO `excelcontent` VALUES ('476', '9', '36', '北京');
INSERT INTO `excelcontent` VALUES ('477', '10', '36', '中建地产');
INSERT INTO `excelcontent` VALUES ('478', '1', '37', '2123.0');
INSERT INTO `excelcontent` VALUES ('479', '2', '37', '123.0');
INSERT INTO `excelcontent` VALUES ('480', '3', '37', '0.23');
INSERT INTO `excelcontent` VALUES ('481', '4', '37', '2012.0');
INSERT INTO `excelcontent` VALUES ('482', '5', '37', '城市核心区');
INSERT INTO `excelcontent` VALUES ('483', '6', '37', '2000.0');
INSERT INTO `excelcontent` VALUES ('484', '7', '37', '2.0');
INSERT INTO `excelcontent` VALUES ('485', '8', '37', '高层');
INSERT INTO `excelcontent` VALUES ('486', '9', '37', '北京');
INSERT INTO `excelcontent` VALUES ('487', '10', '37', '中建地产');
INSERT INTO `excelcontent` VALUES ('488', '1', '38', '2123.0');
INSERT INTO `excelcontent` VALUES ('489', '2', '38', '123.0');
INSERT INTO `excelcontent` VALUES ('490', '3', '38', '0.23');
INSERT INTO `excelcontent` VALUES ('491', '4', '38', '2012.0');
INSERT INTO `excelcontent` VALUES ('492', '5', '38', '城市核心区');
INSERT INTO `excelcontent` VALUES ('493', '6', '38', '2000.0');
INSERT INTO `excelcontent` VALUES ('494', '7', '38', '2.0');
INSERT INTO `excelcontent` VALUES ('495', '8', '38', '高层');
INSERT INTO `excelcontent` VALUES ('496', '9', '38', '北京');
INSERT INTO `excelcontent` VALUES ('497', '10', '38', '中建地产');
INSERT INTO `excelcontent` VALUES ('498', '1', '39', '2123.0');
INSERT INTO `excelcontent` VALUES ('499', '2', '39', '123.0');
INSERT INTO `excelcontent` VALUES ('500', '3', '39', '0.23');
INSERT INTO `excelcontent` VALUES ('501', '4', '39', '2012.0');
INSERT INTO `excelcontent` VALUES ('502', '5', '39', '城市核心区');
INSERT INTO `excelcontent` VALUES ('503', '6', '39', '2000.0');
INSERT INTO `excelcontent` VALUES ('504', '7', '39', '2.0');
INSERT INTO `excelcontent` VALUES ('505', '8', '39', '高层');
INSERT INTO `excelcontent` VALUES ('506', '9', '39', '北京');
INSERT INTO `excelcontent` VALUES ('507', '10', '39', '中建地产');
INSERT INTO `excelcontent` VALUES ('508', '1', '40', '2123.0');
INSERT INTO `excelcontent` VALUES ('509', '2', '40', '123.0');
INSERT INTO `excelcontent` VALUES ('510', '3', '40', '0.23');
INSERT INTO `excelcontent` VALUES ('511', '4', '40', '2012.0');
INSERT INTO `excelcontent` VALUES ('512', '5', '40', '城市核心区');
INSERT INTO `excelcontent` VALUES ('513', '6', '40', '2000.0');
INSERT INTO `excelcontent` VALUES ('514', '7', '40', '2.0');
INSERT INTO `excelcontent` VALUES ('515', '8', '40', '高层');
INSERT INTO `excelcontent` VALUES ('516', '9', '40', '北京');
INSERT INTO `excelcontent` VALUES ('517', '10', '40', '中建地产');
INSERT INTO `excelcontent` VALUES ('518', '1', '7', '2123.0');
INSERT INTO `excelcontent` VALUES ('519', '2', '7', '123.0');
INSERT INTO `excelcontent` VALUES ('520', '3', '7', '0.23');
INSERT INTO `excelcontent` VALUES ('521', '4', '7', '2012年1月27日');
INSERT INTO `excelcontent` VALUES ('522', '5', '7', '城市核心区');
INSERT INTO `excelcontent` VALUES ('523', '6', '7', '2000.0');
INSERT INTO `excelcontent` VALUES ('524', '7', '7', '2');
INSERT INTO `excelcontent` VALUES ('525', '8', '7', '高层');
INSERT INTO `excelcontent` VALUES ('526', '9', '7', '北京');
INSERT INTO `excelcontent` VALUES ('527', '10', '7', '中建地产');
INSERT INTO `excelcontent` VALUES ('528', '1', '11', '2123.0');
INSERT INTO `excelcontent` VALUES ('529', '2', '11', '1234.0');
INSERT INTO `excelcontent` VALUES ('530', '3', '11', '0.23');
INSERT INTO `excelcontent` VALUES ('531', '4', '11', '2012.0');
INSERT INTO `excelcontent` VALUES ('532', '5', '11', '城市核心区');
INSERT INTO `excelcontent` VALUES ('533', '6', '11', '2000.0');
INSERT INTO `excelcontent` VALUES ('534', '7', '11', '2.0');
INSERT INTO `excelcontent` VALUES ('535', '8', '11', '高层');
INSERT INTO `excelcontent` VALUES ('536', '9', '11', '北京');
INSERT INTO `excelcontent` VALUES ('537', '10', '11', '中建地产');
INSERT INTO `excelcontent` VALUES ('538', '90', '1', '15320.22');
INSERT INTO `excelcontent` VALUES ('539', '91', '1', '430.02');
INSERT INTO `excelcontent` VALUES ('540', '92', '1', '法式');
INSERT INTO `excelcontent` VALUES ('541', '93', '1', '830.0');
INSERT INTO `excelcontent` VALUES ('542', '94', '1', '40878.0');
INSERT INTO `excelcontent` VALUES ('543', '95', '1', '易兰景观设计有限公司');
INSERT INTO `excelcontent` VALUES ('544', '96', '1', '东方园林');
INSERT INTO `excelcontent` VALUES ('545', '97', '1', '中建·红杉溪谷[北京]');
INSERT INTO `excelcontent` VALUES ('546', null, null, '(Null)');

-- ----------------------------
-- Table structure for exceldict
-- ----------------------------
DROP TABLE IF EXISTS `exceldict`;
CREATE TABLE `exceldict` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `unit` varchar(100) DEFAULT NULL,
  `value_type` int(11) DEFAULT NULL COMMENT ' 数据类型 ：int(0), float(1), varchar(2),date(3),比率(4)',
  `selection` varchar(500) DEFAULT NULL,
  `nofilter` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exceldict
-- ----------------------------
INSERT INTO `exceldict` VALUES ('1', '1', '建筑面积', '平方米', '1', null, '0');
INSERT INTO `exceldict` VALUES ('2', '1', '土地面积', '平方米', '1', null, '0');
INSERT INTO `exceldict` VALUES ('3', '1', '容积率', '', '1', null, '0');
INSERT INTO `exceldict` VALUES ('4', '1', '取地时间', '', '3', null, '0');
INSERT INTO `exceldict` VALUES ('5', '1', '区位类型', '', '2', '城市核心区,城市新区,城市近郊,城市远郊', '0');
INSERT INTO `exceldict` VALUES ('6', '1', '首期均价', '元/平方米', '0', null, '0');
INSERT INTO `exceldict` VALUES ('7', '1', '开发分期', '期', '0', null, '0');
INSERT INTO `exceldict` VALUES ('8', '1', '物业类型', '', '2', '高层,小高层,多层叠加,多层大平层,联排,合院,双拼,独栋,公寓,公租房', '0');
INSERT INTO `exceldict` VALUES ('9', '1', '所在城市', '', '2', null, '0');
INSERT INTO `exceldict` VALUES ('10', '1', '开发单位', '', '2', null, '0');
INSERT INTO `exceldict` VALUES ('11', '17', '物业类型', '', '2', '高层,小高层,多层叠加,多层大平层,公寓,公租房', '0');
INSERT INTO `exceldict` VALUES ('12', '17', '标准层建筑面积', '平方米', '1', null, '0');
INSERT INTO `exceldict` VALUES ('13', '17', '标准层得房率', '', '4', null, '0');
INSERT INTO `exceldict` VALUES ('14', '17', '主力客户', '', '2', '首置,首改,再改', '0');
INSERT INTO `exceldict` VALUES ('15', '17', '适用区域', '', '2', '北方,南方,普适', '0');
INSERT INTO `exceldict` VALUES ('16', '17', '梯户比', '', '1', '1T2,1T3,1T4,1T6,其他', '0');
INSERT INTO `exceldict` VALUES ('17', '17', '拼合方式', '', '2', '标2,舒2,紧3,标3,舒3', '0');
INSERT INTO `exceldict` VALUES ('18', '17', '来源项目', '', '2', null, '0');
INSERT INTO `exceldict` VALUES ('19', '17', '单元轴线面宽', '米', '1', null, '0');
INSERT INTO `exceldict` VALUES ('20', '17', '单元轴线进深', '米', '1', null, '0');
INSERT INTO `exceldict` VALUES ('21', '22', '物业类型', '', '2', '联排,双拼,独栋品,合院', '0');
INSERT INTO `exceldict` VALUES ('22', '22', '套型建筑面积', '平方米', '1', null, '0');
INSERT INTO `exceldict` VALUES ('23', '22', '套型使用面积', '平方米', '1', null, '0');
INSERT INTO `exceldict` VALUES ('24', '22', '套型阳台面积', '平方米', '1', null, '0');
INSERT INTO `exceldict` VALUES ('25', '22', '地下使用面积', '平方米', '1', null, '0');
INSERT INTO `exceldict` VALUES ('26', '22', '后庭院高差', '', '2', '下挂一层,下挂半层,下挂二层,上挂一层,平层', '0');
INSERT INTO `exceldict` VALUES ('27', '22', '入户方式', '', '2', '侧入户,北入户,南入户,东入户, 西入户', '0');
INSERT INTO `exceldict` VALUES ('28', '22', '房间数量', '室', '1', null, '0');
INSERT INTO `exceldict` VALUES ('29', '22', '停车方式', '', '2', '独立半地下,独立地下,集中地下,独立地上,无独立车库', '0');
INSERT INTO `exceldict` VALUES ('30', '22', '车位数量', '辆', '0', null, '0');
INSERT INTO `exceldict` VALUES ('31', '22', '来源项目', '', '2', null, '0');
INSERT INTO `exceldict` VALUES ('32', '22', '单套轴线面宽', '米', '1', null, '0');
INSERT INTO `exceldict` VALUES ('33', '22', '单套轴线进深', '米', '1', null, '0');
INSERT INTO `exceldict` VALUES ('34', '28', '物业类型', '', '2', '高层,小高层,多层叠加,多层大平层,联排,合院,双拼,独栋,公寓,公租房', '0');
INSERT INTO `exceldict` VALUES ('35', '28', '立面风格', '', '2', null, '0');
INSERT INTO `exceldict` VALUES ('36', '28', '外墙主要材料', '', '2', '石材,面砖,涂料,其他', '0');
INSERT INTO `exceldict` VALUES ('37', '28', '外墙装修限额', '元/平方米', '0', null, '0');
INSERT INTO `exceldict` VALUES ('38', '28', '首期开盘时间', '', '3', null, '0');
INSERT INTO `exceldict` VALUES ('39', '28', '方案设计单位', '', '2', null, '1');
INSERT INTO `exceldict` VALUES ('40', '28', '施工图设计单位', '', '2', null, '1');
INSERT INTO `exceldict` VALUES ('41', '28', '产品来源', '', '2', null, '0');
INSERT INTO `exceldict` VALUES ('42', '36', '建筑面积', '平方米', '1', null, '0');
INSERT INTO `exceldict` VALUES ('43', '36', '立面风格', '', '2', null, '0');
INSERT INTO `exceldict` VALUES ('44', '36', '地上建筑层数', '层', '0', '1,2,3', '0');
INSERT INTO `exceldict` VALUES ('45', '36', '外墙主要材料', '', '2', '石材,面砖,涂料,其他', '0');
INSERT INTO `exceldict` VALUES ('46', '36', '外墙装修限额', '元/平方米', '0', null, '0');
INSERT INTO `exceldict` VALUES ('47', '36', '开放时间', '', '3', null, '0');
INSERT INTO `exceldict` VALUES ('48', '36', '后续用途', '', '2', '会所,商业,办公,拆除', '0');
INSERT INTO `exceldict` VALUES ('49', '36', '来源项目', '', '2', null, '0');
INSERT INTO `exceldict` VALUES ('50', '51', '装修风格', '', '2', null, '0');
INSERT INTO `exceldict` VALUES ('51', '51', '精装面积', '平方米', '1', null, '0');
INSERT INTO `exceldict` VALUES ('52', '51', '简装面积', '平方米', '1', null, '0');
INSERT INTO `exceldict` VALUES ('53', '51', '硬装限额', '元/平方米', '0', null, '0');
INSERT INTO `exceldict` VALUES ('54', '51', '软装限额', '元/平方米', '0', null, '0');
INSERT INTO `exceldict` VALUES ('55', '51', '硬装设计单位', '', '2', null, '1');
INSERT INTO `exceldict` VALUES ('56', '51', '软装实施单位', '', '2', null, '1');
INSERT INTO `exceldict` VALUES ('57', '51', '来源项目', '', '2', null, '0');
INSERT INTO `exceldict` VALUES ('58', '63', '装修风格', '', '2', null, '0');
INSERT INTO `exceldict` VALUES ('59', '63', '装修面积', '平方米', '1', null, '0');
INSERT INTO `exceldict` VALUES ('60', '63', '实体样板', '', '2', '是,否', '0');
INSERT INTO `exceldict` VALUES ('61', '63', '硬装限额', '元/平方米', '0', null, '0');
INSERT INTO `exceldict` VALUES ('62', '63', '软装限额', '元/平方米', '0', null, '0');
INSERT INTO `exceldict` VALUES ('63', '63', '硬装设计单位', '', '2', null, '1');
INSERT INTO `exceldict` VALUES ('64', '63', '软装实施单位', '', '2', null, '1');
INSERT INTO `exceldict` VALUES ('65', '63', '来源项目', '', '2', null, '0');
INSERT INTO `exceldict` VALUES ('66', '80', '占地面积', '平方米', '1', null, '0');
INSERT INTO `exceldict` VALUES ('67', '80', '水景面积', '平方米', '1', null, '0');
INSERT INTO `exceldict` VALUES ('68', '80', '景观风格', '', '2', null, '0');
INSERT INTO `exceldict` VALUES ('69', '80', '景观造价限额', '元/平方米', '0', null, '0');
INSERT INTO `exceldict` VALUES ('70', '80', '开放时间', '', '3', null, '0');
INSERT INTO `exceldict` VALUES ('71', '80', '景观设计单位', '', '2', null, '1');
INSERT INTO `exceldict` VALUES ('72', '80', '景观施工单位', '', '2', null, '1');
INSERT INTO `exceldict` VALUES ('73', '80', '产品来源', '', '2', null, '0');
INSERT INTO `exceldict` VALUES ('74', '122', '景观面积', '平方米', '1', null, '0');
INSERT INTO `exceldict` VALUES ('75', '122', '水景面积', '平方米', '1', null, '0');
INSERT INTO `exceldict` VALUES ('76', '122', '景观风格', '', '2', null, '0');
INSERT INTO `exceldict` VALUES ('77', '122', '景观造价限额', '元/平方米', '0', null, '0');
INSERT INTO `exceldict` VALUES ('78', '122', '首期交楼时间', '', '3', null, '0');
INSERT INTO `exceldict` VALUES ('79', '122', '景观设计单位', '', '2', null, '1');
INSERT INTO `exceldict` VALUES ('80', '122', '景观施工单位', '', '2', null, '1');
INSERT INTO `exceldict` VALUES ('81', '122', '来源项目', '', '2', null, '0');
INSERT INTO `exceldict` VALUES ('82', '164', '装修风格', '', '2', null, '0');
INSERT INTO `exceldict` VALUES ('83', '164', '装修面积', '平方米', '1', null, '0');
INSERT INTO `exceldict` VALUES ('84', '164', '装修限额', '元/平方米', '0', null, '0');
INSERT INTO `exceldict` VALUES ('85', '164', '主要地面材料', '', '2', null, '1');
INSERT INTO `exceldict` VALUES ('86', '164', '主要墙面材料', '', '2', null, '1');
INSERT INTO `exceldict` VALUES ('87', '164', '交楼时间', '', '1', null, '0');
INSERT INTO `exceldict` VALUES ('88', '164', '装修设计单位', '', '2', null, '1');
INSERT INTO `exceldict` VALUES ('89', '164', '来源项目', '', '2', null, '0');
INSERT INTO `exceldict` VALUES ('90', '11', '占地面积', '平方米', '1', null, '0');
INSERT INTO `exceldict` VALUES ('91', '11', '水景面积', '平方米', '1', null, '0');
INSERT INTO `exceldict` VALUES ('92', '11', '景观风格', '', '2', null, '0');
INSERT INTO `exceldict` VALUES ('93', '11', '景观造价限额', '元/平方米', '0', null, '0');
INSERT INTO `exceldict` VALUES ('94', '11', '开放时间', '', '2', null, '0');
INSERT INTO `exceldict` VALUES ('95', '11', '景观设计单位', '', '2', null, '1');
INSERT INTO `exceldict` VALUES ('96', '11', '景观施工单位', '', '2', null, '1');
INSERT INTO `exceldict` VALUES ('97', '11', '产品来源', '', '2', null, '0');

-- ----------------------------
-- Table structure for exceldict_back
-- ----------------------------
DROP TABLE IF EXISTS `exceldict_back`;
CREATE TABLE `exceldict_back` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `unit` varchar(100) DEFAULT NULL,
  `value_type` int(11) DEFAULT NULL COMMENT ' 数据类型 ：int(0), float(1), varchar(2)',
  `selection` varchar(500) DEFAULT NULL COMMENT '选择项',
  `nofilter` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '不参与户型搜索',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=90 DEFAULT CHARSET=utf8 COMMENT='展示的数据项，也是用来过滤的数据项，如面积，容积率等等';

-- ----------------------------
-- Records of exceldict_back
-- ----------------------------
INSERT INTO `exceldict_back` VALUES ('1', '194', '建筑面积', '平方米', '1', null, '0');
INSERT INTO `exceldict_back` VALUES ('2', '194', '土地面积', '平方米', '1', null, '0');
INSERT INTO `exceldict_back` VALUES ('3', '194', '容积率', '', '1', null, '0');
INSERT INTO `exceldict_back` VALUES ('4', '194', '取地时间', '年', '0', null, '0');
INSERT INTO `exceldict_back` VALUES ('5', '194', '区位类型', '', '2', '城市核心区,城市新区,城市边缘,城市近郊,城市远郊,小诚镇', '0');
INSERT INTO `exceldict_back` VALUES ('6', '194', '首期均价', '元/平方米', '0', null, '0');
INSERT INTO `exceldict_back` VALUES ('7', '194', '开发分期', '期', '0', null, '0');
INSERT INTO `exceldict_back` VALUES ('8', '194', '物业类型', '', '2', '高层,小高层,多层叠加,多层大平层,联排,合院,双拼,独栋,公寓,公租房', '0');
INSERT INTO `exceldict_back` VALUES ('9', '194', '所在城市', '', '2', null, '0');
INSERT INTO `exceldict_back` VALUES ('10', '194', '开发单位', '', '2', null, '0');
INSERT INTO `exceldict_back` VALUES ('11', '202', '物业类型', '', '2', '高层,小高层,多层叠加,多层大平层,公寓,公租房', '0');
INSERT INTO `exceldict_back` VALUES ('12', '202', '标准层建筑面积', '平方米', '1', null, '0');
INSERT INTO `exceldict_back` VALUES ('13', '202', '标准层得房率', '', '1', null, '0');
INSERT INTO `exceldict_back` VALUES ('14', '202', '主力客户', '', '2', '首置,首改,再改', '0');
INSERT INTO `exceldict_back` VALUES ('15', '202', '适用区域', '', '2', '北方,南方,普适', '0');
INSERT INTO `exceldict_back` VALUES ('16', '202', '梯户比', '', '1', null, '0');
INSERT INTO `exceldict_back` VALUES ('17', '202', '拼合方式', '', '2', '一居,标2,舒2,紧3,标3,舒3,4居及以上', '0');
INSERT INTO `exceldict_back` VALUES ('18', '202', '产品来源', '', '2', null, '0');
INSERT INTO `exceldict_back` VALUES ('19', '202', '单元轴线面宽', '米', '1', null, '0');
INSERT INTO `exceldict_back` VALUES ('20', '202', '单元轴线进深', '米', '1', null, '0');
INSERT INTO `exceldict_back` VALUES ('21', '203', '物业类型', '', '2', '联排,双拼,独栋品,合院', '0');
INSERT INTO `exceldict_back` VALUES ('22', '203', '套型建筑面积', '平方米', '1', null, '0');
INSERT INTO `exceldict_back` VALUES ('23', '203', '套型使用面积', '平方米', '1', null, '0');
INSERT INTO `exceldict_back` VALUES ('24', '203', '套型阳台面积', '平方米', '1', null, '0');
INSERT INTO `exceldict_back` VALUES ('25', '203', '地下使用面积', '平方米', '1', null, '0');
INSERT INTO `exceldict_back` VALUES ('26', '203', '后庭院高差', '', '2', '下挂一层,下挂半层,下挂二层,上挂一层,平层', '0');
INSERT INTO `exceldict_back` VALUES ('27', '203', '入户方式', '', '2', '侧入户,北入户,南入户,东西向别墅可写东入户, 西入户', '0');
INSERT INTO `exceldict_back` VALUES ('28', '203', '房间数量', '室', '1', null, '0');
INSERT INTO `exceldict_back` VALUES ('29', '203', '停车方式', '', '2', '独立半地下,独立地下,集中地下,独立地上,无独立车库', '0');
INSERT INTO `exceldict_back` VALUES ('30', '203', '车位数量', '辆', '0', null, '0');
INSERT INTO `exceldict_back` VALUES ('31', '203', '产品来源', '', '2', null, '0');
INSERT INTO `exceldict_back` VALUES ('32', '203', '单套轴线面宽', '米', '1', null, '0');
INSERT INTO `exceldict_back` VALUES ('33', '203', '单套轴线进深', '米', '1', null, '0');
INSERT INTO `exceldict_back` VALUES ('34', '204', '物业类型', '', '2', '高层,小高层,多层叠加,多层大平层,联排,合院,双拼,独栋,公寓,公租房', '0');
INSERT INTO `exceldict_back` VALUES ('35', '204', '立面风格', '', '2', null, '0');
INSERT INTO `exceldict_back` VALUES ('36', '204', '外墙主要材料', '', '2', '石材,面砖,涂料,其他', '0');
INSERT INTO `exceldict_back` VALUES ('37', '204', '外墙装修限额', '元/平方米', '0', null, '0');
INSERT INTO `exceldict_back` VALUES ('38', '204', '首期开盘时间', '', '2', null, '0');
INSERT INTO `exceldict_back` VALUES ('39', '204', '方案设计单位', '', '2', null, '1');
INSERT INTO `exceldict_back` VALUES ('40', '204', '施工图设计单位', '', '2', null, '1');
INSERT INTO `exceldict_back` VALUES ('41', '204', '产品来源', '', '2', null, '0');
INSERT INTO `exceldict_back` VALUES ('42', '209', '建筑面积', '平方米', '1', null, '0');
INSERT INTO `exceldict_back` VALUES ('43', '209', '立面风格', '', '2', null, '0');
INSERT INTO `exceldict_back` VALUES ('44', '209', '地上建筑层数', '层', '0', '1,2,3', '0');
INSERT INTO `exceldict_back` VALUES ('45', '209', '外墙主要材料', '', '2', null, '0');
INSERT INTO `exceldict_back` VALUES ('46', '209', '外墙装修限额', '元/平方米', '0', null, '0');
INSERT INTO `exceldict_back` VALUES ('47', '209', '开放时间', '', '2', null, '0');
INSERT INTO `exceldict_back` VALUES ('48', '209', '后续用途', '', '2', '会所,商业,办公,拆除', '0');
INSERT INTO `exceldict_back` VALUES ('49', '209', '产品来源', '', '2', null, '0');
INSERT INTO `exceldict_back` VALUES ('50', '215', '装修风格', '平方米', '1', null, '0');
INSERT INTO `exceldict_back` VALUES ('51', '215', '精装面积', '平方米', '1', null, '0');
INSERT INTO `exceldict_back` VALUES ('52', '215', '简装面积', '元/平方米', '0', null, '0');
INSERT INTO `exceldict_back` VALUES ('53', '215', '硬装限额', '元/平方米', '0', null, '0');
INSERT INTO `exceldict_back` VALUES ('54', '215', '软装限额', '', '0', null, '0');
INSERT INTO `exceldict_back` VALUES ('55', '215', '硬装设计单位', '', '2', null, '1');
INSERT INTO `exceldict_back` VALUES ('56', '215', '软装实施单位', '', '2', null, '1');
INSERT INTO `exceldict_back` VALUES ('57', '215', '产品来源', '', '2', null, '0');
INSERT INTO `exceldict_back` VALUES ('58', '224', '装修风格', '', '2', null, '0');
INSERT INTO `exceldict_back` VALUES ('59', '224', '装修面积', '平方米', '1', null, '0');
INSERT INTO `exceldict_back` VALUES ('60', '224', '实体样板', '', '2', '是,否', '0');
INSERT INTO `exceldict_back` VALUES ('61', '224', '硬装限额', '元/平方米', '1', null, '0');
INSERT INTO `exceldict_back` VALUES ('62', '224', '软装限额', '元/平方米', '1', null, '0');
INSERT INTO `exceldict_back` VALUES ('63', '224', '硬装设计单位', '', '2', null, '1');
INSERT INTO `exceldict_back` VALUES ('64', '224', '软装实施单位', '', '2', null, '1');
INSERT INTO `exceldict_back` VALUES ('65', '224', '产品来源', '', '2', null, '0');
INSERT INTO `exceldict_back` VALUES ('66', '236', '占地面积', '平方米', '1', null, '0');
INSERT INTO `exceldict_back` VALUES ('67', '236', '水景面积', '平方米', '1', null, '0');
INSERT INTO `exceldict_back` VALUES ('68', '236', '景观风格', '', '2', null, '0');
INSERT INTO `exceldict_back` VALUES ('69', '236', '景观造价限额', '元/平方米', '0', null, '0');
INSERT INTO `exceldict_back` VALUES ('70', '236', '开放时间', '', '2', null, '0');
INSERT INTO `exceldict_back` VALUES ('71', '236', '景观设计单位', '', '2', null, '1');
INSERT INTO `exceldict_back` VALUES ('72', '236', '景观施工单位', '', '2', null, '1');
INSERT INTO `exceldict_back` VALUES ('73', '236', '产品来源', '', '2', null, '0');
INSERT INTO `exceldict_back` VALUES ('74', '275', '景观面积', '平方米', '1', null, '0');
INSERT INTO `exceldict_back` VALUES ('75', '275', '水景面积', '平方米', '1', null, '0');
INSERT INTO `exceldict_back` VALUES ('76', '275', '景观风格', '', '2', null, '0');
INSERT INTO `exceldict_back` VALUES ('77', '275', '景观造价限额', '元/平方米', '0', null, '0');
INSERT INTO `exceldict_back` VALUES ('78', '275', '入住时间', '', '2', null, '0');
INSERT INTO `exceldict_back` VALUES ('79', '275', '景观设计单位', '', '2', null, '1');
INSERT INTO `exceldict_back` VALUES ('80', '275', '景观施工单位', '', '2', null, '1');
INSERT INTO `exceldict_back` VALUES ('81', '275', '产品来源', '', '2', null, '0');
INSERT INTO `exceldict_back` VALUES ('82', '312', '装修风格', '', '2', null, '0');
INSERT INTO `exceldict_back` VALUES ('83', '312', '装修面积', '平方米', '1', null, '0');
INSERT INTO `exceldict_back` VALUES ('84', '312', '装修限额', '元/平方米', '0', null, '0');
INSERT INTO `exceldict_back` VALUES ('85', '312', '主要地面材料', '', '2', null, '1');
INSERT INTO `exceldict_back` VALUES ('86', '312', '主要墙面材料', '', '2', null, '1');
INSERT INTO `exceldict_back` VALUES ('87', '312', '入住时间', '', '2', null, '0');
INSERT INTO `exceldict_back` VALUES ('88', '312', '装修设计单位', '', '2', null, '1');
INSERT INTO `exceldict_back` VALUES ('89', '312', '产品来源', '', '2', null, '0');

-- ----------------------------
-- Table structure for exprop
-- ----------------------------
DROP TABLE IF EXISTS `exprop`;
CREATE TABLE `exprop` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_id` int(11) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of exprop
-- ----------------------------
INSERT INTO `exprop` VALUES ('1', '1251', '倒萨', '倒萨');
INSERT INTO `exprop` VALUES ('2', '1249', '的撒范德萨', '的撒的撒');

-- ----------------------------
-- Table structure for file
-- ----------------------------
DROP TABLE IF EXISTS `file`;
CREATE TABLE `file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guid` varchar(255) DEFAULT NULL,
  `url` varchar(1000) DEFAULT NULL,
  `image_url` varchar(1000) DEFAULT NULL,
  `filename` varchar(1000) DEFAULT NULL COMMENT '文件名称',
  `user_id` int(11) DEFAULT NULL COMMENT '上传用户的ID',
  `category_id` int(11) DEFAULT NULL COMMENT '类别的编号',
  `project_id` int(11) DEFAULT NULL COMMENT '项目编号',
  `status` int(11) DEFAULT NULL COMMENT '文件的状态：0:删除；1:上传审核中；2:上传审核通过；3:上传审核被拒绝；4:更新审核中；5:更新审核通过；6:更新审核被拒绝',
  `request_time` int(11) DEFAULT NULL,
  `audit_upload_time` int(11) DEFAULT NULL,
  `audit_update_time` int(11) DEFAULT NULL,
  `propjson` text,
  `file_version` varchar(50) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  `builtincate` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8 COMMENT='文件归档';

-- ----------------------------
-- Records of file
-- ----------------------------
INSERT INTO `file` VALUES ('1', '7755e19b-5100-46d7-9dda-849002281fcc', '192.168.31.100/file/7755e19b-5100-46d7-9dda-849002281fcc/梳妆台柜-双门四个抽屉.rfa', '192.168.31.100/file/7755e19b-5100-46d7-9dda-849002281fcc/梳妆台柜-双门四个抽屉.bmp', '梳妆台柜-双门四个抽屉', '101', '18', null, '0', null, '1530580636', null, '{\"FamilyPropGroups\":{\"尺寸标注\":{\"深度\":\"600\",\"底座深度\":\"35\",\"高度\":\"710\",\"底座高度\":\"100\",\"宽度\":\"1200\"},\"材质和装饰\":{\"箱材质\":\"-1\",\"门/抽屉材质\":\"-1\"},\"标识数据\":{\"设计选项\":\"-1\",\"成本\":\"0.00\",\"类型图像\":\"-1\",\"类型名称\":\"1200 mm\"},\"其他\":{\"族名称\":\"梳妆台柜-双门四个抽屉\"}},\"SymbolPropNodes\":{\"1200 mm\":{\"其他\":{\"类别\":\"-2001000\"}}}}', null, 'Autodesk Revit 2014', '-2001000');
INSERT INTO `file` VALUES ('13', 'a5260dd9-d12e-4c26-a173-c0da1bfc80d2', '192.168.31.100/file/a5260dd9-d12e-4c26-a173-c0da1bfc80d2/木包推拉门-固定边框-剖面.rfa', '192.168.31.100/file/a5260dd9-d12e-4c26-a173-c0da1bfc80d2/木包推拉门-固定边框-剖面.bmp', '木包推拉门-固定边框-剖面', '101', '11', null, '0', null, '1530581103', null, '{\"FamilyPropGroups\":{\"标识数据\":{\"成本\":\"0.00\",\"设计选项\":\"-1\",\"类型名称\":\"木包推拉门 - 固定边框 - 剖面\",\"类型图像\":\"-1\"},\"结构\":{\"横断面形状\":\"0\"},\"其他\":{\"族名称\":\"木包推拉门 - 固定边框 - 剖面\"}},\"SymbolPropNodes\":{\"木包推拉门 - 固定边框 - 剖面\":{\"其他\":{\"类别\":\"-2002000\"}}}}', null, 'Autodesk Revit 2015', '-2002000');
INSERT INTO `file` VALUES ('14', '92d7e174-6860-4540-9f67-a9ab06d4e05a', '192.168.31.100/file/92d7e174-6860-4540-9f67-a9ab06d4e05a/檐底板通风孔-小圆-剖面.rfa', '192.168.31.100/file/92d7e174-6860-4540-9f67-a9ab06d4e05a/檐底板通风孔-小圆-剖面.bmp', '檐底板通风孔-小圆-剖面', '101', '11', null, '0', null, '1530581133', null, '{\"FamilyPropGroups\":{\"标识数据\":{\"设计选项\":\"-1\",\"成本\":\"0.00\",\"类型图像\":\"-1\"},\"结构\":{\"横断面形状\":\"0\"},\"其他\":{\"族名称\":\"檐底板通风孔 - 小圆 - 剖面\"}},\"SymbolPropNodes\":{\"40mm\":{\"其他\":{\"类别\":\"-2002000\"},\"标识数据\":{\"类型名称\":\"40mm\"},\"尺寸标注\":{\"法兰\":\"7\",\"宽度\":\"40\"}},\"50mm\":{\"其他\":{\"类别\":\"-2002000\"},\"尺寸标注\":{\"法兰\":\"7\",\"宽度\":\"50\"},\"标识数据\":{\"类型名称\":\"50mm\"}},\"20mm\":{\"其他\":{\"类别\":\"-2002000\"},\"尺寸标注\":{\"宽度\":\"20\",\"法兰\":\"3\"},\"标识数据\":{\"类型名称\":\"20mm\"}},\"25mm\":{\"其他\":{\"类别\":\"-2002000\"},\"尺寸标注\":{\"法兰\":\"3\",\"宽度\":\"25\"},\"标识数据\":{\"类型名称\":\"25mm\"}},\"75mm\":{\"其他\":{\"类别\":\"-2002000\"},\"尺寸标注\":{\"法兰\":\"7\",\"宽度\":\"75\"},\"标识数据\":{\"类型名称\":\"75mm\"}},\"100mm\":{\"其他\":{\"类别\":\"-2002000\"},\"尺寸标注\":{\"法兰\":\"7\",\"宽度\":\"100\"},\"标识数据\":{\"类型名称\":\"100mm\"}},\"150mm\":{\"其他\":{\"类别\":\"-2002000\"},\"尺寸标注\":{\"法兰\":\"8\",\"宽度\":\"150\"},\"标识数据\":{\"类型名称\":\"150mm\"}},\"65mm\":{\"其他\":{\"类别\":\"-2002000\"},\"尺寸标注\":{\"法兰\":\"7\",\"宽度\":\"65\"},\"标识数据\":{\"类型名称\":\"65mm\"}}}}', null, 'Autodesk Revit 2015', '-2002000');
INSERT INTO `file` VALUES ('15', '27bda983-7071-4c29-b7fb-220d8a1b9278', '192.168.31.100/file/27bda983-7071-4c29-b7fb-220d8a1b9278/空气幕-热水-立式.rfa', '192.168.31.100/file/27bda983-7071-4c29-b7fb-220d8a1b9278/空气幕-热水-立式.bmp', '空气幕-热水-立式', '101', '7', null, '0', null, '1530581153', null, '{\"FamilyPropGroups\":{\"其他\":{\"高度 4\":\"175\",\"高度 3\":\"436\",\"高度 2\":\"299\",\"半径 1\":\"113\",\"高度 1\":\"995\",\"族名称\":\"空气幕-热水-立式\",\"半径 2\":\"28\"},\"尺寸标注\":{\"进口半径\":\"25 mm\",\"空气幕高度\":\"1247\",\"出口半径\":\"25 mm\",\"风管高度\":\"100 mm\",\"进口直径\":\"50 mm\",\"出口直径\":\"50 mm\",\"管道距离 1\":\"84\",\"管道距离 2\":\"256\"},\"电气\":{\"电压\":\"380 V\",\"极数\":\"3\"},\"材质和装饰\":{\"气幕材质\":\"-1\"},\"标识数据\":{\"类型图像\":\"-1\",\"设计选项\":\"-1\",\"成本\":\"0.00\"}},\"SymbolPropNodes\":{\"5508 CMH\":{\"电气 - 负荷\":{\"名义载荷\":\"1500 VA\"},\"其他\":{\"长度 1\":\"437\",\"类别\":\"-2001140\",\"宽度 2\":\"99\"},\"尺寸标注\":{\"空气幕宽度\":\"495\",\"风管宽度\":\"1500 mm\",\"空气幕长度\":\"1660\"},\"标识数据\":{\"类型名称\":\"5508 CMH\"}},\"5170 CMH\":{\"电气 - 负荷\":{\"名义载荷\":\"1500 VA\"},\"尺寸标注\":{\"空气幕宽度\":\"495\",\"风管宽度\":\"1200 mm\",\"空气幕长度\":\"1360\"},\"其他\":{\"类别\":\"-2001140\",\"宽度 2\":\"99\",\"长度 1\":\"337\"},\"标识数据\":{\"类型名称\":\"5170 CMH\"}},\"5346 CMH\":{\"尺寸标注\":{\"风管宽度\":\"1500 mm\",\"空气幕长度\":\"1660\",\"空气幕宽度\":\"562\"},\"其他\":{\"类别\":\"-2001140\",\"宽度 2\":\"112\",\"长度 1\":\"428\"},\"电气 - 负荷\":{\"名义载荷\":\"1100 VA\"},\"标识数据\":{\"类型名称\":\"5346 CMH\"}},\"5060 CMH\":{\"其他\":{\"类别\":\"-2001140\",\"宽度 2\":\"112\",\"长度 1\":\"328\"},\"尺寸标注\":{\"风管宽度\":\"1200 mm\",\"空气幕长度\":\"1360\",\"空气幕宽度\":\"562\"},\"电气 - 负荷\":{\"名义载荷\":\"1100 VA\"},\"标识数据\":{\"类型名称\":\"5060 CMH\"}},\"2480 CMH\":{\"其他\":{\"类别\":\"-2001140\",\"宽度 2\":\"112\",\"长度 1\":\"262\"},\"尺寸标注\":{\"空气幕宽度\":\"562\",\"风管宽度\":\"1000 mm\",\"空气幕长度\":\"1160\"},\"标识数据\":{\"类型名称\":\"2480 CMH\"},\"电气 - 负荷\":{\"名义载荷\":\"550 VA\"}},\"2304 CMH\":{\"其他\":{\"类别\":\"-2001140\",\"宽度 2\":\"112\",\"长度 1\":\"195\"},\"尺寸标注\":{\"空气幕宽度\":\"562\",\"风管宽度\":\"800 mm\",\"空气幕长度\":\"960\"},\"电气 - 负荷\":{\"名义载荷\":\"550 VA\"},\"标识数据\":{\"类型名称\":\"2304 CMH\"}}}}', null, 'Autodesk Revit 2015', '-2001140');
INSERT INTO `file` VALUES ('19', '0f6bf369-bced-4e62-91f8-b2953cb76118', '192.168.31.100/file/0f6bf369-bced-4e62-91f8-b2953cb76118/窗帘盒.rfa', '192.168.31.100/file/0f6bf369-bced-4e62-91f8-b2953cb76118/窗帘盒.bmp', '窗帘盒', '101', '13', null, '0', null, '1530581266', null, '{\"FamilyPropGroups\":{\"其他\":{\"有中间连接\":\"True\",\"族名称\":\"窗帘盒\"},\"尺寸标注\":{\"底高度\":\"2100\",\"宽度\":\"1800\",\"窗帘盒深度\":\"200\"},\"标识数据\":{\"类型图像\":\"-1\",\"类型名称\":\"窗帘盒 1\",\"设计选项\":\"-1\",\"成本\":\"0.00\"}},\"SymbolPropNodes\":{\"窗帘盒 1\":{\"其他\":{\"类别\":\"-2000151\"}}}}', null, 'Autodesk Revit 2015', '-2000151');
INSERT INTO `file` VALUES ('21', '9e6ca54c-758e-4915-87fa-86100f3c4ab0', '192.168.31.100/file/9e6ca54c-758e-4915-87fa-86100f3c4ab0/建筑起重机.rfa', '192.168.31.100/file/9e6ca54c-758e-4915-87fa-86100f3c4ab0/建筑起重机.bmp', '建筑起重机', '101', '14', null, '0', null, '1530581317', null, '{\"FamilyPropGroups\":{\"其他\":{\"族名称\":\"建筑起重机\"},\"标识数据\":{\"成本\":\"0.00\",\"设计选项\":\"-1\",\"类型图像\":\"-1\"}},\"SymbolPropNodes\":{\"22000mm @ 60 度\":{\"其他\":{\"类别\":\"-2001260\",\"弯钩\":\"30.00°\",\"吊杆半部\":\"11000\"},\"尺寸标注\":{\"旋转半径\":\"5805\",\"平衡锤\":\"5500\",\"吊杆角度\":\"60.00°\",\"宽度\":\"4900\",\"驾驶室宽度\":\"3650\",\"吊杆长度\":\"22000\"},\"标识数据\":{\"类型名称\":\"22000mm @ 60 度\"}},\"20000mm @ 45 度\":{\"其他\":{\"类别\":\"-2001260\",\"吊杆半部\":\"10000\",\"弯钩\":\"45.00°\"},\"尺寸标注\":{\"吊杆长度\":\"20000\",\"吊杆角度\":\"45.00°\",\"旋转半径\":\"4555\",\"平衡锤\":\"4250\",\"宽度\":\"4100\",\"驾驶室宽度\":\"3050\"},\"标识数据\":{\"类型名称\":\"20000mm @ 45 度\"}}}}', null, 'Autodesk Revit 2015', '-2001260');
INSERT INTO `file` VALUES ('29', 'c84a4626-bbc2-4ec4-acb4-69e5811129d9', '192.168.31.100/file/c84a4626-bbc2-4ec4-acb4-69e5811129d9/双扇平开-带贴面.rfa', '192.168.31.100/file/c84a4626-bbc2-4ec4-acb4-69e5811129d9/双扇平开-带贴面.bmp', '双扇平开-带贴面', '101', '18', null, '0', null, '1530581759', null, '{\"FamilyPropGroups\":{\"约束\":{\"窗嵌入\":\"20\"},\"其他\":{\"外贴面厚度\":\"15\",\"贴面宽度\":\"90\",\"内贴面厚度\":\"20\",\"族名称\":\"双扇平开-带贴面\"},\"材质和装饰\":{\"窗台材质\":\"-1\",\"框架材质\":\"-1\",\"贴面材质\":\"-1\",\"玻璃\":\"-1\"},\"分析属性\":{\"日光得热系数\":\"0.78\",\"构造类型 ID\":\"GSP4R\",\"可见光透过率\":\"0.9\",\"传热系数(U)\":\"3.6886 W/(m²·K)\",\"热阻(R)\":\"0.2711 (m²·K)/W\",\"分析构造\":\"1/8 英寸 Pilkington 单层玻璃\"},\"标识数据\":{\"成本\":\"0.00\",\"类型图像\":\"-1\",\"设计选项\":\"-1\"},\"尺寸标注\":{\"粗略宽度\":\"900\",\"粗略高度\":\"1200\"},\"构造\":{\"墙闭合\":\"0\"},\"模型属性\":{\"默认窗台高度\":\"900\"}},\"SymbolPropNodes\":{\"900 x 1200mm\":{\"标识数据\":{\"类型名称\":\"900 x 1200mm\",\"类型标记\":\"1\"},\"尺寸标注\":{\"宽度\":\"900\",\"高度\":\"1200\"},\"其他\":{\"类别\":\"-2000014\"}},\"1200 x 1200mm\":{\"其他\":{\"类别\":\"-2000014\"},\"尺寸标注\":{\"高度\":\"1200\",\"宽度\":\"1200\"},\"标识数据\":{\"类型标记\":\"2\",\"类型名称\":\"1200 x 1200mm\"}},\"1800 x 900mm\":{\"其他\":{\"类别\":\"-2000014\"},\"尺寸标注\":{\"高度\":\"900\",\"宽度\":\"1800\"},\"标识数据\":{\"类型标记\":\"3\",\"类型名称\":\"1800 x 900mm\"}}}}', null, 'Autodesk Revit 2015', '-2000014');
INSERT INTO `file` VALUES ('33', '21d054a5-0c91-4ad1-b18a-559ead6f536f', '192.168.31.100/file/21d054a5-0c91-4ad1-b18a-559ead6f536f/带壁架的模板托梁.rfa', '192.168.31.100/file/21d054a5-0c91-4ad1-b18a-559ead6f536f/带壁架的模板托梁.bmp', '带壁架的模板托梁', '101', '17', null, '0', null, '1530581843', null, '{\"FamilyPropGroups\":{\"尺寸标注\":{\"b\":\"150\",\"楼板厚度\":\"120\"},\"其他\":{\"族名称\":\"带壁架的模板托梁\"},\"结构\":{\"横断面形状\":\"0\"},\"标识数据\":{\"成本\":\"0.00\",\"类型图像\":\"-1\",\"部件代码\":\"B10\",\"设计选项\":\"-1\"}},\"SymbolPropNodes\":{\"150 x 350\":{\"标识数据\":{\"类型名称\":\"150 x 350\"},\"约束\":{\"楔形右\":\"True\",\"楔形左\":\"True\"},\"尺寸标注\":{\"邻近的梁深度\":\"250\",\"h\":\"350\",\"楔形右尺寸\":\"11\",\"楔形左尺寸\":\"11\",\"模板填充左\":\"75\",\"模板填充右\":\"75\"},\"其他\":{\"类别\":\"-2001320\"}},\"150 x 400\":{\"约束\":{\"楔形右\":\"True\",\"楔形左\":\"True\"},\"其他\":{\"类别\":\"-2001320\"},\"尺寸标注\":{\"模板填充左\":\"75\",\"模板填充右\":\"75\",\"h\":\"400\",\"楔形左尺寸\":\"15\",\"邻近的梁深度\":\"300\",\"楔形右尺寸\":\"15\"},\"标识数据\":{\"类型名称\":\"150 x 400\"}},\"150 x 500\":{\"约束\":{\"楔形右\":\"True\",\"楔形左\":\"True\"},\"其他\":{\"类别\":\"-2001320\"},\"尺寸标注\":{\"模板填充左\":\"75\",\"模板填充右\":\"75\",\"楔形右尺寸\":\"19\",\"楔形左尺寸\":\"19\",\"邻近的梁深度\":\"350\",\"h\":\"500\"},\"标识数据\":{\"类型名称\":\"150 x 500\"}},\"150 x 600\":{\"约束\":{\"楔形右\":\"True\",\"楔形左\":\"True\"},\"其他\":{\"类别\":\"-2001320\"},\"尺寸标注\":{\"模板填充左\":\"75\",\"模板填充右\":\"75\",\"邻近的梁深度\":\"400\",\"楔形左尺寸\":\"23\",\"h\":\"600\",\"楔形右尺寸\":\"23\"},\"标识数据\":{\"类型名称\":\"150 x 600\"}},\"150 x 350 边缘梁 1\":{\"尺寸标注\":{\"邻近的梁深度\":\"250\",\"h\":\"350\",\"模板填充右\":\"75\",\"楔形左尺寸\":\"0\",\"模板填充左\":\"0\",\"楔形右尺寸\":\"0\"},\"其他\":{\"类别\":\"-2001320\"},\"约束\":{\"楔形左\":\"False\",\"楔形右\":\"False\"},\"标识数据\":{\"类型名称\":\"150 x 350 边缘梁 1\"}},\"150 x 350 边缘梁 2\":{\"尺寸标注\":{\"邻近的梁深度\":\"250\",\"h\":\"350\",\"模板填充左\":\"75\",\"楔形左尺寸\":\"0\",\"楔形右尺寸\":\"0\",\"模板填充右\":\"0\"},\"其他\":{\"类别\":\"-2001320\"},\"约束\":{\"楔形左\":\"False\",\"楔形右\":\"False\"},\"标识数据\":{\"类型名称\":\"150 x 350 边缘梁 2\"}},\"150 x 400 边缘梁 1\":{\"其他\":{\"类别\":\"-2001320\"},\"尺寸标注\":{\"模板填充右\":\"75\",\"h\":\"400\",\"邻近的梁深度\":\"300\",\"楔形左尺寸\":\"0\",\"模板填充左\":\"0\",\"楔形右尺寸\":\"0\"},\"约束\":{\"楔形左\":\"False\",\"楔形右\":\"False\"},\"标识数据\":{\"类型名称\":\"150 x 400 边缘梁 1\"}},\"150 x 400 边缘梁 2\":{\"其他\":{\"类别\":\"-2001320\"},\"尺寸标注\":{\"模板填充左\":\"75\",\"h\":\"400\",\"邻近的梁深度\":\"300\",\"楔形左尺寸\":\"0\",\"楔形右尺寸\":\"0\",\"模板填充右\":\"0\"},\"约束\":{\"楔形左\":\"False\",\"楔形右\":\"False\"},\"标识数据\":{\"类型名称\":\"150 x 400 边缘梁 2\"}},\"150 x 500 边缘梁 1\":{\"其他\":{\"类别\":\"-2001320\"},\"尺寸标注\":{\"模板填充右\":\"75\",\"邻近的梁深度\":\"350\",\"h\":\"500\",\"楔形左尺寸\":\"0\",\"模板填充左\":\"0\",\"楔形右尺寸\":\"0\"},\"约束\":{\"楔形左\":\"False\",\"楔形右\":\"False\"},\"标识数据\":{\"类型名称\":\"150 x 500 边缘梁 1\"}},\"150 x 500 边缘梁 2\":{\"其他\":{\"类别\":\"-2001320\"},\"尺寸标注\":{\"模板填充左\":\"75\",\"邻近的梁深度\":\"350\",\"h\":\"500\",\"楔形左尺寸\":\"0\",\"楔形右尺寸\":\"0\",\"模板填充右\":\"0\"},\"约束\":{\"楔形左\":\"False\",\"楔形右\":\"False\"},\"标识数据\":{\"类型名称\":\"150 x 500 边缘梁 2\"}},\"150 x 600 边缘梁 1\":{\"其他\":{\"类别\":\"-2001320\"},\"尺寸标注\":{\"模板填充右\":\"75\",\"邻近的梁深度\":\"400\",\"h\":\"600\",\"楔形左尺寸\":\"0\",\"模板填充左\":\"0\",\"楔形右尺寸\":\"0\"},\"约束\":{\"楔形左\":\"False\",\"楔形右\":\"False\"},\"标识数据\":{\"类型名称\":\"150 x 600 边缘梁 1\"}},\"150 x 600 边缘梁 2\":{\"其他\":{\"类别\":\"-2001320\"},\"尺寸标注\":{\"模板填充左\":\"75\",\"邻近的梁深度\":\"400\",\"h\":\"600\",\"楔形左尺寸\":\"0\",\"楔形右尺寸\":\"0\",\"模板填充右\":\"0\"},\"约束\":{\"楔形左\":\"False\",\"楔形右\":\"False\"},\"标识数据\":{\"类型名称\":\"150 x 600 边缘梁 2\"}},\"150 x 350 T 形\":{\"尺寸标注\":{\"邻近的梁深度\":\"250\",\"h\":\"350\",\"模板填充左\":\"75\",\"模板填充右\":\"75\",\"楔形左尺寸\":\"0\",\"楔形右尺寸\":\"0\"},\"其他\":{\"类别\":\"-2001320\"},\"约束\":{\"楔形左\":\"False\",\"楔形右\":\"False\"},\"标识数据\":{\"类型名称\":\"150 x 350 T 形\"}},\"150 x 400 T 形\":{\"其他\":{\"类别\":\"-2001320\"},\"尺寸标注\":{\"模板填充左\":\"75\",\"模板填充右\":\"75\",\"h\":\"400\",\"邻近的梁深度\":\"300\",\"楔形左尺寸\":\"0\",\"楔形右尺寸\":\"0\"},\"约束\":{\"楔形左\":\"False\",\"楔形右\":\"False\"},\"标识数据\":{\"类型名称\":\"150 x 400 T 形\"}},\"150 x 500 T 形\":{\"其他\":{\"类别\":\"-2001320\"},\"尺寸标注\":{\"模板填充左\":\"75\",\"模板填充右\":\"75\",\"邻近的梁深度\":\"350\",\"h\":\"500\",\"楔形左尺寸\":\"0\",\"楔形右尺寸\":\"0\"},\"约束\":{\"楔形左\":\"False\",\"楔形右\":\"False\"},\"标识数据\":{\"类型名称\":\"150 x 500 T 形\"}},\"150 x 600 T 形\":{\"其他\":{\"类别\":\"-2001320\"},\"尺寸标注\":{\"模板填充左\":\"75\",\"模板填充右\":\"75\",\"邻近的梁深度\":\"400\",\"h\":\"600\",\"楔形左尺寸\":\"0\",\"楔形右尺寸\":\"0\"},\"约束\":{\"楔形左\":\"False\",\"楔形右\":\"False\"},\"标识数据\":{\"类型名称\":\"150 x 600 T 形\"}}}}', null, 'Autodesk Revit 2015', '-2001320');
INSERT INTO `file` VALUES ('34', '4db5d1fb-c21c-4644-882c-a7c7b3e289f3', '192.168.31.100/file/4db5d1fb-c21c-4644-882c-a7c7b3e289f3/梯形钢屋顶-15m-1.rfa', '192.168.31.100/file/4db5d1fb-c21c-4644-882c-a7c7b3e289f3/梯形钢屋顶-15m-1.bmp', '梯形钢屋顶-15m-1', '101', '11', null, '0', null, '1530581860', null, '{\"FamilyPropGroups\":{\"标识数据\":{\"成本\":\"0.00\",\"类型名称\":\"标准\",\"OmniClass 标题\":\"Trussed Beams and Joists\",\"设计选项\":\"-1\",\"OmniClass 编号\":\"23.25.30.21.14\",\"类型图像\":\"-1\"},\"斜腹杆\":{\"终点约束释放\":\"1\",\"起点约束释放\":\"1\",\"角度\":\"0.00°\",\"结构框架类型\":\"-1\"},\"上弦杆\":{\"起点约束释放\":\"1\",\"角度\":\"0.00°\",\"分析垂直投影\":\"-3\",\"结构框架类型\":\"-1\",\"终点约束释放\":\"1\"},\"下弦杆\":{\"结构框架类型\":\"-1\",\"分析垂直投影\":\"-3\",\"起点约束释放\":\"1\",\"终点约束释放\":\"1\",\"角度\":\"0.00°\"},\"其他\":{\"族名称\":\"梯形钢屋顶-15m-1\"},\"尺寸标注\":{\"偏移\":\"150\"},\"构造\":{\"腹杆符号缩进\":\"True\",\"腹杆方向\":\"0\"},\"竖向腹杆\":{\"结构框架类型\":\"-1\",\"起点约束释放\":\"1\",\"终点约束释放\":\"1\",\"角度\":\"0.00°\"}},\"SymbolPropNodes\":{\"标准\":{\"其他\":{\"类别\":\"-2009600\"}}}}', null, 'Autodesk Revit 2015', '-2009600');
INSERT INTO `file` VALUES ('35', 'ba49e0f8-2f06-4f56-add5-d9a66d536481', '192.168.31.100/file/ba49e0f8-2f06-4f56-add5-d9a66d536481/打桩机.rfa', '192.168.31.100/file/ba49e0f8-2f06-4f56-add5-d9a66d536481/打桩机.bmp', '打桩机', '101', '14', null, '0', null, '1530581911', null, '{\"FamilyPropGroups\":{\"标识数据\":{\"类型名称\":\"打桩机\",\"制作\":\"BIMto\",\"设计选项\":\"-1\",\"版本号\":\"V1\",\"产品类别\":\"施工机械\",\"成本\":\"0.00\",\"类型图像\":\"-1\"},\"其他\":{\"族名称\":\"打桩机\"},\"IFC 参数\":{\"PH\":\"7.0\"}},\"SymbolPropNodes\":{\"打桩机\":{\"其他\":{\"类别\":\"-2001350\"}}}}', null, 'Autodesk Revit 2014', '-2001350');
INSERT INTO `file` VALUES ('36', '210b5cff-f016-4e5f-9ddb-97de5c4cdfd4', '192.168.31.100/file/210b5cff-f016-4e5f-9ddb-97de5c4cdfd4/打桩机.rfa', '192.168.31.100/file/210b5cff-f016-4e5f-9ddb-97de5c4cdfd4/打桩机.bmp', '打桩机', '101', '17', null, '0', null, '1530581980', null, '{\"FamilyPropGroups\":{\"标识数据\":{\"产品类别\":\"施工机械\",\"制作\":\"BIMto\",\"设计选项\":\"-1\",\"版本号\":\"V1\",\"成本\":\"0.00\",\"类型图像\":\"-1\",\"类型名称\":\"打桩机\"},\"IFC 参数\":{\"PH\":\"7.0\"},\"其他\":{\"族名称\":\"打桩机\"}},\"SymbolPropNodes\":{\"打桩机\":{\"其他\":{\"类别\":\"-2001350\"}}}}', null, 'Autodesk Revit 2014', '-2001350');
INSERT INTO `file` VALUES ('37', '7b42d13c-4e73-4489-9dd7-66e0a2fbbbbb', '192.168.31.100/file/7b42d13c-4e73-4489-9dd7-66e0a2fbbbbb/梯形钢屋顶-15m-1.rfa', '192.168.31.100/file/7b42d13c-4e73-4489-9dd7-66e0a2fbbbbb/梯形钢屋顶-15m-1.bmp', '梯形钢屋顶-15m-1', '101', '17', null, '0', null, '1530582000', null, '{\"FamilyPropGroups\":{\"上弦杆\":{\"终点约束释放\":\"1\",\"起点约束释放\":\"1\",\"结构框架类型\":\"-1\",\"角度\":\"0.00°\",\"分析垂直投影\":\"-3\"},\"下弦杆\":{\"起点约束释放\":\"1\",\"分析垂直投影\":\"-3\",\"终点约束释放\":\"1\",\"角度\":\"0.00°\",\"结构框架类型\":\"-1\"},\"竖向腹杆\":{\"终点约束释放\":\"1\",\"结构框架类型\":\"-1\",\"角度\":\"0.00°\",\"起点约束释放\":\"1\"},\"斜腹杆\":{\"结构框架类型\":\"-1\",\"终点约束释放\":\"1\",\"起点约束释放\":\"1\",\"角度\":\"0.00°\"},\"标识数据\":{\"类型图像\":\"-1\",\"OmniClass 标题\":\"Trussed Beams and Joists\",\"类型名称\":\"标准\",\"OmniClass 编号\":\"23.25.30.21.14\",\"设计选项\":\"-1\",\"成本\":\"0.00\"},\"其他\":{\"族名称\":\"梯形钢屋顶-15m-1\"},\"构造\":{\"腹杆方向\":\"0\",\"腹杆符号缩进\":\"True\"},\"尺寸标注\":{\"偏移\":\"150\"}},\"SymbolPropNodes\":{\"标准\":{\"其他\":{\"类别\":\"-2009600\"}}}}', null, 'Autodesk Revit 2015', '-2009600');
INSERT INTO `file` VALUES ('38', 'bce912cb-22c2-4b5e-9c60-f2f0ab09c464', '192.168.31.100/file/bce912cb-22c2-4b5e-9c60-f2f0ab09c464/带壁架的模板托梁.rfa', '192.168.31.100/file/bce912cb-22c2-4b5e-9c60-f2f0ab09c464/带壁架的模板托梁.bmp', '带壁架的模板托梁', '101', '17', null, '0', null, '1530582021', null, '{\"FamilyPropGroups\":{\"标识数据\":{\"设计选项\":\"-1\",\"类型图像\":\"-1\",\"成本\":\"0.00\",\"部件代码\":\"B10\"},\"其他\":{\"族名称\":\"带壁架的模板托梁\"},\"尺寸标注\":{\"b\":\"150\",\"楼板厚度\":\"120\"},\"结构\":{\"横断面形状\":\"0\"}},\"SymbolPropNodes\":{\"150 x 350\":{\"其他\":{\"类别\":\"-2001320\"},\"尺寸标注\":{\"模板填充右\":\"75\",\"楔形右尺寸\":\"11\",\"邻近的梁深度\":\"250\",\"模板填充左\":\"75\",\"h\":\"350\",\"楔形左尺寸\":\"11\"},\"约束\":{\"楔形左\":\"True\",\"楔形右\":\"True\"},\"标识数据\":{\"类型名称\":\"150 x 350\"}},\"150 x 400\":{\"其他\":{\"类别\":\"-2001320\"},\"尺寸标注\":{\"模板填充右\":\"75\",\"模板填充左\":\"75\",\"楔形右尺寸\":\"15\",\"h\":\"400\",\"楔形左尺寸\":\"15\",\"邻近的梁深度\":\"300\"},\"约束\":{\"楔形左\":\"True\",\"楔形右\":\"True\"},\"标识数据\":{\"类型名称\":\"150 x 400\"}},\"150 x 500\":{\"其他\":{\"类别\":\"-2001320\"},\"尺寸标注\":{\"模板填充右\":\"75\",\"模板填充左\":\"75\",\"楔形左尺寸\":\"19\",\"楔形右尺寸\":\"19\",\"h\":\"500\",\"邻近的梁深度\":\"350\"},\"约束\":{\"楔形左\":\"True\",\"楔形右\":\"True\"},\"标识数据\":{\"类型名称\":\"150 x 500\"}},\"150 x 600\":{\"其他\":{\"类别\":\"-2001320\"},\"尺寸标注\":{\"模板填充右\":\"75\",\"模板填充左\":\"75\",\"楔形左尺寸\":\"23\",\"邻近的梁深度\":\"400\",\"h\":\"600\",\"楔形右尺寸\":\"23\"},\"约束\":{\"楔形左\":\"True\",\"楔形右\":\"True\"},\"标识数据\":{\"类型名称\":\"150 x 600\"}},\"150 x 350 边缘梁 1\":{\"其他\":{\"类别\":\"-2001320\"},\"尺寸标注\":{\"模板填充右\":\"75\",\"邻近的梁深度\":\"250\",\"h\":\"350\",\"楔形右尺寸\":\"0\",\"模板填充左\":\"0\",\"楔形左尺寸\":\"0\"},\"标识数据\":{\"类型名称\":\"150 x 350 边缘梁 1\"},\"约束\":{\"楔形右\":\"False\",\"楔形左\":\"False\"}},\"150 x 350 边缘梁 2\":{\"其他\":{\"类别\":\"-2001320\"},\"尺寸标注\":{\"邻近的梁深度\":\"250\",\"模板填充左\":\"75\",\"h\":\"350\",\"楔形右尺寸\":\"0\",\"楔形左尺寸\":\"0\",\"模板填充右\":\"0\"},\"约束\":{\"楔形右\":\"False\",\"楔形左\":\"False\"},\"标识数据\":{\"类型名称\":\"150 x 350 边缘梁 2\"}},\"150 x 400 边缘梁 1\":{\"其他\":{\"类别\":\"-2001320\"},\"尺寸标注\":{\"模板填充右\":\"75\",\"h\":\"400\",\"邻近的梁深度\":\"300\",\"楔形右尺寸\":\"0\",\"模板填充左\":\"0\",\"楔形左尺寸\":\"0\"},\"约束\":{\"楔形右\":\"False\",\"楔形左\":\"False\"},\"标识数据\":{\"类型名称\":\"150 x 400 边缘梁 1\"}},\"150 x 400 边缘梁 2\":{\"其他\":{\"类别\":\"-2001320\"},\"尺寸标注\":{\"模板填充左\":\"75\",\"h\":\"400\",\"邻近的梁深度\":\"300\",\"楔形右尺寸\":\"0\",\"楔形左尺寸\":\"0\",\"模板填充右\":\"0\"},\"约束\":{\"楔形右\":\"False\",\"楔形左\":\"False\"},\"标识数据\":{\"类型名称\":\"150 x 400 边缘梁 2\"}},\"150 x 500 边缘梁 1\":{\"其他\":{\"类别\":\"-2001320\"},\"尺寸标注\":{\"模板填充右\":\"75\",\"h\":\"500\",\"邻近的梁深度\":\"350\",\"楔形右尺寸\":\"0\",\"模板填充左\":\"0\",\"楔形左尺寸\":\"0\"},\"约束\":{\"楔形右\":\"False\",\"楔形左\":\"False\"},\"标识数据\":{\"类型名称\":\"150 x 500 边缘梁 1\"}},\"150 x 500 边缘梁 2\":{\"其他\":{\"类别\":\"-2001320\"},\"尺寸标注\":{\"模板填充左\":\"75\",\"h\":\"500\",\"邻近的梁深度\":\"350\",\"楔形右尺寸\":\"0\",\"楔形左尺寸\":\"0\",\"模板填充右\":\"0\"},\"约束\":{\"楔形右\":\"False\",\"楔形左\":\"False\"},\"标识数据\":{\"类型名称\":\"150 x 500 边缘梁 2\"}},\"150 x 600 边缘梁 1\":{\"其他\":{\"类别\":\"-2001320\"},\"尺寸标注\":{\"模板填充右\":\"75\",\"邻近的梁深度\":\"400\",\"h\":\"600\",\"楔形右尺寸\":\"0\",\"模板填充左\":\"0\",\"楔形左尺寸\":\"0\"},\"约束\":{\"楔形右\":\"False\",\"楔形左\":\"False\"},\"标识数据\":{\"类型名称\":\"150 x 600 边缘梁 1\"}},\"150 x 600 边缘梁 2\":{\"其他\":{\"类别\":\"-2001320\"},\"尺寸标注\":{\"模板填充左\":\"75\",\"邻近的梁深度\":\"400\",\"h\":\"600\",\"楔形右尺寸\":\"0\",\"楔形左尺寸\":\"0\",\"模板填充右\":\"0\"},\"约束\":{\"楔形右\":\"False\",\"楔形左\":\"False\"},\"标识数据\":{\"类型名称\":\"150 x 600 边缘梁 2\"}},\"150 x 350 T 形\":{\"其他\":{\"类别\":\"-2001320\"},\"尺寸标注\":{\"模板填充右\":\"75\",\"邻近的梁深度\":\"250\",\"模板填充左\":\"75\",\"h\":\"350\",\"楔形右尺寸\":\"0\",\"楔形左尺寸\":\"0\"},\"约束\":{\"楔形右\":\"False\",\"楔形左\":\"False\"},\"标识数据\":{\"类型名称\":\"150 x 350 T 形\"}},\"150 x 400 T 形\":{\"其他\":{\"类别\":\"-2001320\"},\"尺寸标注\":{\"模板填充右\":\"75\",\"模板填充左\":\"75\",\"h\":\"400\",\"邻近的梁深度\":\"300\",\"楔形右尺寸\":\"0\",\"楔形左尺寸\":\"0\"},\"约束\":{\"楔形右\":\"False\",\"楔形左\":\"False\"},\"标识数据\":{\"类型名称\":\"150 x 400 T 形\"}},\"150 x 500 T 形\":{\"其他\":{\"类别\":\"-2001320\"},\"尺寸标注\":{\"模板填充右\":\"75\",\"模板填充左\":\"75\",\"h\":\"500\",\"邻近的梁深度\":\"350\",\"楔形右尺寸\":\"0\",\"楔形左尺寸\":\"0\"},\"约束\":{\"楔形右\":\"False\",\"楔形左\":\"False\"},\"标识数据\":{\"类型名称\":\"150 x 500 T 形\"}},\"150 x 600 T 形\":{\"其他\":{\"类别\":\"-2001320\"},\"尺寸标注\":{\"模板填充右\":\"75\",\"模板填充左\":\"75\",\"邻近的梁深度\":\"400\",\"h\":\"600\",\"楔形右尺寸\":\"0\",\"楔形左尺寸\":\"0\"},\"约束\":{\"楔形右\":\"False\",\"楔形左\":\"False\"},\"标识数据\":{\"类型名称\":\"150 x 600 T 形\"}}}}', null, 'Autodesk Revit 2015', '-2001320');
INSERT INTO `file` VALUES ('39', 'bff7156d-bad2-472c-afbd-1f94d9f95158', '192.168.31.100/file/bff7156d-bad2-472c-afbd-1f94d9f95158/木结构2.rfa', '192.168.31.100/file/bff7156d-bad2-472c-afbd-1f94d9f95158/木结构2.bmp', '木结构2', '101', '17', null, '0', null, '1530582043', null, '{\"FamilyPropGroups\":{\"尺寸标注\":{\"肘深度\":\"203\",\"顶梁放置高度\":\"2134\",\"肘尺寸\":\"914\",\"肘宽度\":\"203\",\"木梁高度\":\"305\",\"木梁偏移\":\"305\",\"木材深度\":\"254\",\"宽度\":\"4267\"},\"标识数据\":{\"成本\":\"0.00\",\"类型名称\":\"标准\",\"设计选项\":\"-1\",\"类型图像\":\"-1\"},\"其他\":{\"族名称\":\"木结构2\"}},\"SymbolPropNodes\":{\"标准\":{\"其他\":{\"类别\":\"-2000151\"}}}}', null, 'Autodesk Revit 2015', '-2000151');
INSERT INTO `file` VALUES ('40', '7a75e713-46a2-40ef-a3a1-f5f9576626d8', '192.168.31.100/file/7a75e713-46a2-40ef-a3a1-f5f9576626d8/挡土墙_Par_族_搁板1_存水弯.rfa', '192.168.31.100/file/7a75e713-46a2-40ef-a3a1-f5f9576626d8/挡土墙_Par_族_搁板1_存水弯.bmp', '挡土墙_Par_族_搁板1_存水弯', '101', '17', null, '0', null, '1530582065', null, '{\"FamilyPropGroups\":{\"标识数据\":{\"设计选项\":\"-1\",\"类型图像\":\"-1\",\"类型名称\":\"标准\",\"成本\":\"0.00\"},\"尺寸标注\":{\"h7\":\"2837\",\"Gf1\":\"150\",\"Tmp2\":\"1146\",\"Gf2\":\"250\",\"Gf4\":\"400\",\"Gf3\":\"300\",\"Gw1\":\"300\",\"Beta\":\"7.00°\",\"B\":\"3200\",\"h4\":\"2827\",\"Alpha\":\"5.00°\",\"h2\":\"157\",\"h3\":\"2879\",\"Gw2\":\"600\",\"h6\":\"-10\",\"h1\":\"398\",\"Gamma\":\"13.03°\",\"Bw\":\"1200\",\"Bs1\":\"300\",\"H\":\"3000\",\"hdiff\":\"53\",\"Gamma2\":\"6.03°\",\"Tmp1\":\"1785\"},\"其他\":{\"族名称\":\"挡土墙_Par_族_搁板1_存水弯\"}},\"SymbolPropNodes\":{\"标准\":{\"其他\":{\"类别\":\"-2001300\"}}}}', null, 'Autodesk Revit 2015', '-2001300');
INSERT INTO `file` VALUES ('41', '851caac5-7f3d-420e-a4c3-424295657aff', '192.168.31.100/file/851caac5-7f3d-420e-a4c3-424295657aff/蒸汽锅炉-燃气-卧式-600-3500kW.rfa', '192.168.31.100/file/851caac5-7f3d-420e-a4c3-424295657aff/蒸汽锅炉-燃气-卧式-600-3500kW.bmp', '蒸汽锅炉-燃气-卧式-600-3500kW', '101', '17', null, '0', null, '1530582092', null, '{\"FamilyPropGroups\":{\"尺寸标注\":{\"蒸汽出口到尾板距离\":\"1655\",\"给水口直径\":\"25 mm\",\"安全阀半径\":\"20 mm\",\"锅壳直径\":\"1500\",\"基座高度\":\"200\",\"烟道半径\":\"175 mm\",\"锅炉宽度\":\"1960\",\"锅壳长度\":\"2545\",\"开门半径\":\"1655\",\"前板厚度\":\"240\",\"蒸汽出口直径\":\"65 mm\",\"燃气燃烧器长度\":\"1183\",\"排污口半径\":\"20 mm\",\"烟道高度\":\"1700\",\"熔炉长度\":\"2195\",\"蒸汽出口高度\":\"2098\",\"排污口直径\":\"40 mm\",\"蒸汽出口半径\":\"33 mm\",\"天燃气进口半径\":\"25 mm\",\"烟道直径\":\"350 mm\",\"换管距离\":\"2245\",\"安全阀到尾板距离\":\"455\",\"基座宽度\":\"1700\",\"天燃气进口直径\":\"50 mm\",\"安全阀直径\":\"40 mm\",\"给水口半径\":\"13 mm\",\"锅炉长度\":\"4940\"},\"其他\":{\"宽度 1\":\"260\",\"控制箱高度\":\"600\",\"泵半径 3\":\"25\",\"锅壳法兰半径\":\"923\",\"高度 2\":\"353\",\"高度 1\":\"118\",\"给水口法兰半径\":\"104\",\"高度 3\":\"710\",\"安全阀法兰半径\":\"69 mm\",\"锅壳半径\":\"750\",\"宽度 2\":\"503\",\"高度 4\":\"197\",\"燃气燃烧器长度 1\":\"394\",\"蒸汽出口法兰半径\":\"85 mm\",\"半径 1\":\"394\",\"半径 2\":\"335 mm\",\"锅壳高度 1\":\"525\",\"族名称\":\"蒸汽锅炉-燃气-卧式-600-3500kW\",\"泵半径 1\":\"89\",\"泵半径 2\":\"130\"},\"材质和装饰\":{\"锅炉材质\":\"-1\"},\"电气 - 负荷\":{\"名义载荷\":\"2600 VA\"},\"标识数据\":{\"成本\":\"0.00\",\"类型图像\":\"-1\",\"设计选项\":\"-1\",\"类型名称\":\"标准\"},\"机械\":{\"水容量\":\"1.55 m³\",\"最大工作压力\":\"1034000.0 Pa\",\"燃气压损\":\"6987.0 Pa\",\"天燃气消耗量\":\"200.0 L/s\",\"锅炉自重\":\"4.63t\",\"热功率\":\"600000 W\",\"蒸汽出量\":\"1000kg/h\"},\"电气\":{\"电压\":\"380 V\",\"极数\":\"3\"}},\"SymbolPropNodes\":{\"标准\":{\"其他\":{\"类别\":\"-2001140\"}}}}', null, 'Autodesk Revit 2015', '-2001140');
INSERT INTO `file` VALUES ('42', '4e77445a-2041-41cf-b8d2-366b69bbbdce', '192.168.31.100/file/4e77445a-2041-41cf-b8d2-366b69bbbdce/双扇平开-带贴面.rfa', '192.168.31.100/file/4e77445a-2041-41cf-b8d2-366b69bbbdce/双扇平开-带贴面.bmp', '双扇平开-带贴面', '101', '17', null, '0', null, '1530582112', null, '{\"FamilyPropGroups\":{\"材质和装饰\":{\"框架材质\":\"-1\",\"玻璃\":\"-1\",\"贴面材质\":\"-1\",\"窗台材质\":\"-1\"},\"分析属性\":{\"日光得热系数\":\"0.78\",\"热阻(R)\":\"0.2711 (m²·K)/W\",\"分析构造\":\"1/8 英寸 Pilkington 单层玻璃\",\"传热系数(U)\":\"3.6886 W/(m²·K)\",\"构造类型 ID\":\"GSP4R\",\"可见光透过率\":\"0.9\"},\"构造\":{\"墙闭合\":\"0\"},\"其他\":{\"贴面宽度\":\"90\",\"外贴面厚度\":\"15\",\"内贴面厚度\":\"20\",\"族名称\":\"双扇平开-带贴面\"},\"尺寸标注\":{\"粗略高度\":\"1200\",\"粗略宽度\":\"900\"},\"标识数据\":{\"设计选项\":\"-1\",\"成本\":\"0.00\",\"类型图像\":\"-1\"},\"模型属性\":{\"默认窗台高度\":\"900\"},\"约束\":{\"窗嵌入\":\"20\"}},\"SymbolPropNodes\":{\"900 x 1200mm\":{\"标识数据\":{\"类型名称\":\"900 x 1200mm\",\"类型标记\":\"1\"},\"尺寸标注\":{\"高度\":\"1200\",\"宽度\":\"900\"},\"其他\":{\"类别\":\"-2000014\"}},\"1200 x 1200mm\":{\"尺寸标注\":{\"高度\":\"1200\",\"宽度\":\"1200\"},\"其他\":{\"类别\":\"-2000014\"},\"标识数据\":{\"类型名称\":\"1200 x 1200mm\",\"类型标记\":\"2\"}},\"1800 x 900mm\":{\"其他\":{\"类别\":\"-2000014\"},\"标识数据\":{\"类型名称\":\"1800 x 900mm\",\"类型标记\":\"3\"},\"尺寸标注\":{\"高度\":\"900\",\"宽度\":\"1800\"}}}}', null, 'Autodesk Revit 2015', '-2000014');
INSERT INTO `file` VALUES ('43', 'fba0e49d-9849-44b2-ba99-fdfb24552865', '192.168.31.100/file/fba0e49d-9849-44b2-ba99-fdfb24552865/建筑起重机.rfa', '192.168.31.100/file/fba0e49d-9849-44b2-ba99-fdfb24552865/建筑起重机.bmp', '建筑起重机', '101', '17', null, '0', null, '1530582132', null, '{\"FamilyPropGroups\":{\"标识数据\":{\"设计选项\":\"-1\",\"类型图像\":\"-1\",\"成本\":\"0.00\"},\"其他\":{\"族名称\":\"建筑起重机\"}},\"SymbolPropNodes\":{\"22000mm @ 60 度\":{\"尺寸标注\":{\"旋转半径\":\"5805\",\"宽度\":\"4900\",\"驾驶室宽度\":\"3650\",\"吊杆长度\":\"22000\",\"吊杆角度\":\"60.00°\",\"平衡锤\":\"5500\"},\"其他\":{\"类别\":\"-2001260\",\"弯钩\":\"30.00°\",\"吊杆半部\":\"11000\"},\"标识数据\":{\"类型名称\":\"22000mm @ 60 度\"}},\"20000mm @ 45 度\":{\"其他\":{\"类别\":\"-2001260\",\"吊杆半部\":\"10000\",\"弯钩\":\"45.00°\"},\"尺寸标注\":{\"平衡锤\":\"4250\",\"吊杆长度\":\"20000\",\"吊杆角度\":\"45.00°\",\"旋转半径\":\"4555\",\"宽度\":\"4100\",\"驾驶室宽度\":\"3050\"},\"标识数据\":{\"类型名称\":\"20000mm @ 45 度\"}}}}', null, 'Autodesk Revit 2015', '-2001260');
INSERT INTO `file` VALUES ('44', 'fc588526-09a7-4669-aaff-e4190046abda', '192.168.31.100/file/fc588526-09a7-4669-aaff-e4190046abda/人防设施-电动手摇两用风机.rfa', '192.168.31.100/file/fc588526-09a7-4669-aaff-e4190046abda/人防设施-电动手摇两用风机.bmp', '人防设施-电动手摇两用风机', '101', '17', null, '0', null, '1530582152', null, '{\"FamilyPropGroups\":{\"标识数据\":{\"成本\":\"0.00\",\"类型图像\":\"-1\",\"设计选项\":\"-1\"},\"其他\":{\"摇把长度\":\"300\",\"半径 3\":\"195\",\"回转直径\":\"560\",\"长度 3\":\"57\",\"长度 1\":\"80\",\"高度 1\":\"113\",\"摇把中心高\":\"125\",\"回转半径\":\"280\",\"长度 2\":\"130\",\"族名称\":\"人防设施 - 电动手摇两用风机\",\"半径 1\":\"124\"},\"材质和装饰\":{\"通风机材质\":\"-1\"},\"电气 - 负荷\":{\"名义载荷\":\"750 VA\"},\"尺寸标注\":{\"通风机长度\":\"440\",\"通风机高度\":\"325\"},\"电气\":{\"电压\":\"380 V\",\"极数\":\"3\"},\"机械 - 流量\":{\"最大全压\":\"568.0 Pa\"}},\"SymbolPropNodes\":{\"F270-1\":{\"标识数据\":{\"重量\":\"38 kg\",\"类型名称\":\"F270-1\"},\"尺寸标注\":{\"风管直径\":\"150 mm\",\"通风机宽度\":\"822\",\"风管半径\":\"75 mm\"},\"其他\":{\"出口外部半径\":\"105\",\"类别\":\"-2001140\",\"距离\":\"95\",\"出口外部直径\":\"210\",\"半径 4\":\"218\",\"半径 2\":\"30\"},\"机械 - 流量\":{\"最大风量\":\"194.4 L/s\",\"最小风量\":\"83.3 L/s\",\"最小全压\":\"1117.0 Pa\"}},\"F270-2\":{\"其他\":{\"类别\":\"-2001140\",\"出口外部半径\":\"125\",\"距离\":\"104\",\"出口外部直径\":\"250\",\"半径 4\":\"230\",\"半径 2\":\"40\"},\"尺寸标注\":{\"风管直径\":\"200 mm\",\"风管半径\":\"100 mm\",\"通风机宽度\":\"831\"},\"机械 - 流量\":{\"最小风量\":\"138.9 L/s\",\"最小全压\":\"1225.0 Pa\",\"最大风量\":\"305.6 L/s\"},\"标识数据\":{\"重量\":\"40 kg\",\"类型名称\":\"F270-2\"}}}}', null, 'Autodesk Revit 2015', '-2001140');
INSERT INTO `file` VALUES ('45', '34a19c9e-bd23-49c9-866f-cce77c604492', '192.168.31.100/file/34a19c9e-bd23-49c9-866f-cce77c604492/箭头-排水符号.rfa', '192.168.31.100/file/34a19c9e-bd23-49c9-866f-cce77c604492/箭头-排水符号.bmp', '箭头-排水符号', '101', '17', null, '0', null, '1530582196', null, '{\"FamilyPropGroups\":{\"结构\":{\"横断面形状\":\"0\"},\"标识数据\":{\"成本\":\"0.00\",\"设计选项\":\"-1\",\"类型图像\":\"-1\"},\"其他\":{\"族名称\":\"箭头 - 排水符号\",\"角度\":\"10.00°\"}},\"SymbolPropNodes\":{\"坡道楼梯箭头符号\":{\"标识数据\":{\"类型名称\":\"坡道楼梯箭头符号\"},\"其他\":{\"类别\":\"-2002000\"}},\"坡道楼梯箭头符号 - 瓷砖方向\":{\"其他\":{\"类别\":\"-2002000\"},\"标识数据\":{\"类型名称\":\"坡道楼梯箭头符号 - 瓷砖方向\"}}}}', null, 'Autodesk Revit 2015', '-2002000');
INSERT INTO `file` VALUES ('47', '4c2bea20-ab9a-45c1-b671-c3d6d87387bc', '192.168.31.100/file/4c2bea20-ab9a-45c1-b671-c3d6d87387bc/带弧形上弦杆的瓦伦桁架-10嵌板.rfa', '192.168.31.100/file/4c2bea20-ab9a-45c1-b671-c3d6d87387bc/带弧形上弦杆的瓦伦桁架-10嵌板.bmp', '带弧形上弦杆的瓦伦桁架-10嵌板', '101', '17', null, '0', null, '1530582236', null, '{\"FamilyPropGroups\":{\"构造\":{\"腹杆方向\":\"0\",\"腹杆符号缩进\":\"True\"},\"下弦杆\":{\"角度\":\"0.00°\",\"终点约束释放\":\"1\",\"结构框架类型\":\"-1\",\"起点约束释放\":\"1\",\"分析垂直投影\":\"-3\"},\"上弦杆\":{\"分析垂直投影\":\"-3\",\"结构框架类型\":\"-1\",\"角度\":\"0.00°\",\"终点约束释放\":\"1\",\"起点约束释放\":\"1\"},\"标识数据\":{\"类型图像\":\"-1\",\"类型名称\":\"标准\",\"设计选项\":\"-1\",\"成本\":\"0.00\"},\"竖向腹杆\":{\"终点约束释放\":\"1\",\"结构框架类型\":\"-1\",\"角度\":\"0.00°\",\"起点约束释放\":\"1\"},\"其他\":{\"族名称\":\"带弧形上弦杆的瓦伦桁架-10嵌板\"},\"斜腹杆\":{\"结构框架类型\":\"-1\",\"角度\":\"0.00°\",\"起点约束释放\":\"1\",\"终点约束释放\":\"1\"}},\"SymbolPropNodes\":{\"标准\":{\"其他\":{\"类别\":\"-2009600\"}}}}', null, 'Autodesk Revit 2015', '-2009600');
INSERT INTO `file` VALUES ('48', '95ad1b12-36b7-4f7b-aff6-914dbacf17c6', '192.168.31.100/file/95ad1b12-36b7-4f7b-aff6-914dbacf17c6/独立基础-坡形截面.rfa', '192.168.31.100/file/95ad1b12-36b7-4f7b-aff6-914dbacf17c6/独立基础-坡形截面.bmp', '独立基础-坡形截面', '101', '17', null, '0', null, '1530582255', null, '{\"FamilyPropGroups\":{\"标识数据\":{\"成本\":\"0.00\",\"类型名称\":\"独立基础-坡形截面\",\"类型图像\":\"-1\",\"设计选项\":\"-1\"},\"尺寸标注\":{\"宽度\":\"1500\",\"d2\":\"50\",\"h1\":\"350\",\"d1\":\"50\",\"长度\":\"2000\",\"厚度\":\"650\",\"h2\":\"300\",\"Bc\":\"450\",\"Hc\":\"600\"},\"其他\":{\"族名称\":\"独立基础-坡形截面\"}},\"SymbolPropNodes\":{\"独立基础-坡形截面\":{\"其他\":{\"类别\":\"-2001300\"}}}}', null, 'Autodesk Revit 2015', '-2001300');
INSERT INTO `file` VALUES ('49', 'f532c6e4-dab4-4636-9cba-dc62e05ebfff', '192.168.31.100/file/f532c6e4-dab4-4636-9cba-dc62e05ebfff/双面嵌板木门3.rfa', '192.168.31.100/file/f532c6e4-dab4-4636-9cba-dc62e05ebfff/双面嵌板木门3.bmp', '双面嵌板木门3', '101', '17', null, '0', null, '1530582484', null, '{\"FamilyPropGroups\":{\"构造\":{\"功能\":\"0\",\"墙闭合\":\"0\"},\"材质和装饰\":{\"贴面材质\":\"-1\",\"嵌板材质\":\"-1\",\"把手材质\":\"-1\"},\"标识数据\":{\"设计选项\":\"-1\",\"成本\":\"0.00\",\"类型图像\":\"-1\"},\"其他\":{\"族名称\":\"双面嵌板木门3\",\"贴面厚度\":\"25\",\"贴面宽度\":\"75\"},\"尺寸标注\":{\"厚度\":\"50\",\"高度\":\"2100\",\"粗略宽度\":\"1800\",\"粗略高度\":\"2100\"},\"分析属性\":{\"可见光透过率\":\"0\",\"分析构造\":\"金属\",\"传热系数(U)\":\"3.7021 W/(m²·K)\",\"构造类型 ID\":\"M_门\",\"热阻(R)\":\"0.2701 (m²·K)/W\",\"日光得热系数\":\"0\"}},\"SymbolPropNodes\":{\"1800 x 2100mm\":{\"其他\":{\"门扇顶梁宽度\":\"175\",\"门扇底梁宽度\":\"275\",\"类别\":\"-2000023\",\"W\":\"900\"},\"标识数据\":{\"类型标记\":\"1\",\"类型名称\":\"1800 x 2100mm\"},\"尺寸标注\":{\"宽度\":\"1800\"}},\"1900 x 2100mm\":{\"其他\":{\"类别\":\"-2000023\",\"W\":\"950\",\"门扇底梁宽度\":\"175\",\"门扇顶梁宽度\":\"100\"},\"尺寸标注\":{\"宽度\":\"1900\"},\"标识数据\":{\"类型名称\":\"1900 x 2100mm\",\"类型标记\":\"2\"}},\"2000 x 2100mm\":{\"其他\":{\"类别\":\"-2000023\",\"门扇底梁宽度\":\"175\",\"门扇顶梁宽度\":\"100\",\"W\":\"1000\"},\"标识数据\":{\"类型名称\":\"2000 x 2100mm\",\"类型标记\":\"3\"},\"尺寸标注\":{\"宽度\":\"2000\"}}}}', null, 'Autodesk Revit 2015', '-2000023');
INSERT INTO `file` VALUES ('50', 'c1052d3b-ea8b-4dbe-9820-4a6bf6c7aeb8', '192.168.31.100/file/c1052d3b-ea8b-4dbe-9820-4a6bf6c7aeb8/建筑起重机.rfa', '192.168.31.100/file/c1052d3b-ea8b-4dbe-9820-4a6bf6c7aeb8/建筑起重机.bmp', '建筑起重机', '101', '17', null, '0', null, '1530582504', null, '{\"FamilyPropGroups\":{\"标识数据\":{\"设计选项\":\"-1\",\"成本\":\"0.00\",\"类型图像\":\"-1\"},\"其他\":{\"族名称\":\"建筑起重机\"}},\"SymbolPropNodes\":{\"22000mm @ 60 度\":{\"其他\":{\"吊杆半部\":\"11000\",\"弯钩\":\"30.00°\",\"类别\":\"-2001260\"},\"尺寸标注\":{\"吊杆角度\":\"60.00°\",\"宽度\":\"4900\",\"吊杆长度\":\"22000\",\"平衡锤\":\"5500\",\"旋转半径\":\"5805\",\"驾驶室宽度\":\"3650\"},\"标识数据\":{\"类型名称\":\"22000mm @ 60 度\"}},\"20000mm @ 45 度\":{\"其他\":{\"类别\":\"-2001260\",\"吊杆半部\":\"10000\",\"弯钩\":\"45.00°\"},\"尺寸标注\":{\"旋转半径\":\"4555\",\"吊杆角度\":\"45.00°\",\"平衡锤\":\"4250\",\"吊杆长度\":\"20000\",\"驾驶室宽度\":\"3050\",\"宽度\":\"4100\"},\"标识数据\":{\"类型名称\":\"20000mm @ 45 度\"}}}}', null, 'Autodesk Revit 2015', '-2001260');
INSERT INTO `file` VALUES ('51', '88157fed-d193-483d-98fa-5810a4d8ce8a', '192.168.31.100/file/88157fed-d193-483d-98fa-5810a4d8ce8a/十字扣件.rfa', '192.168.31.100/file/88157fed-d193-483d-98fa-5810a4d8ce8a/十字扣件.bmp', '十字扣件', '101', '17', null, '0', null, '1530582526', null, '{\"FamilyPropGroups\":{\"标识数据\":{\"设计选项\":\"-1\",\"成本\":\"0.00\",\"类型名称\":\"十字扣件\",\"类型图像\":\"-1\"},\"其他\":{\"族名称\":\"十字扣件\"}},\"SymbolPropNodes\":{\"十字扣件\":{\"其他\":{\"类别\":\"-2001350\"}}}}', null, 'Autodesk Revit 2013', '-2001350');
INSERT INTO `file` VALUES ('52', 'dd079a7a-0d13-4e3c-bb98-ee348006bb74', '192.168.31.100/file/dd079a7a-0d13-4e3c-bb98-ee348006bb74/窗帘盒.rfa', '192.168.31.100/file/dd079a7a-0d13-4e3c-bb98-ee348006bb74/窗帘盒.bmp', '窗帘盒', '101', '17', null, '0', null, '1530582546', null, '{\"FamilyPropGroups\":{\"尺寸标注\":{\"宽度\":\"1800\",\"底高度\":\"2100\",\"窗帘盒深度\":\"200\"},\"其他\":{\"族名称\":\"窗帘盒\",\"有中间连接\":\"True\"},\"标识数据\":{\"类型图像\":\"-1\",\"类型名称\":\"窗帘盒 1\",\"设计选项\":\"-1\",\"成本\":\"0.00\"}},\"SymbolPropNodes\":{\"窗帘盒 1\":{\"其他\":{\"类别\":\"-2000151\"}}}}', null, 'Autodesk Revit 2015', '-2000151');
INSERT INTO `file` VALUES ('53', '512b36df-2d11-4b94-a603-58f7f8c16115', '192.168.31.100/file/512b36df-2d11-4b94-a603-58f7f8c16115/04.rfa', '192.168.31.100/file/512b36df-2d11-4b94-a603-58f7f8c16115/04.bmp', '04', '101', '17', null, '0', null, '1530582576', null, '{\"FamilyPropGroups\":{\"标识数据\":{\"设计选项\":\"-1\",\"成本\":\"0.00\",\"类型名称\":\"04\"},\"其他\":{\"族名称\":\"04\"}},\"SymbolPropNodes\":{\"04\":{\"其他\":{\"类别\":\"-2009013\"}}}}', null, 'Autodesk Revit 2015', '-2009013');
INSERT INTO `file` VALUES ('54', 'f4a8cefd-c782-46b6-b656-b517ed126730', '192.168.31.100/file/f4a8cefd-c782-46b6-b656-b517ed126730/梯形钢屋顶-GWJ30.rfa', '192.168.31.100/file/f4a8cefd-c782-46b6-b656-b517ed126730/梯形钢屋顶-GWJ30.bmp', '梯形钢屋顶-GWJ30', '101', '17', null, '0', null, '1530582596', null, '{\"FamilyPropGroups\":{\"斜腹杆\":{\"起点约束释放\":\"1\",\"结构框架类型\":\"-1\",\"角度\":\"0.00°\",\"终点约束释放\":\"1\"},\"下弦杆\":{\"结构框架类型\":\"-1\",\"分析垂直投影\":\"-3\",\"起点约束释放\":\"1\",\"终点约束释放\":\"1\",\"角度\":\"0.00°\"},\"标识数据\":{\"OmniClass 编号\":\"23.25.30.21.14\",\"成本\":\"0.00\",\"OmniClass 标题\":\"Trussed Beams and Joists\",\"设计选项\":\"-1\",\"类型图像\":\"-1\"},\"上弦杆\":{\"起点约束释放\":\"1\",\"角度\":\"0.00°\",\"结构框架类型\":\"-1\",\"分析垂直投影\":\"-3\",\"终点约束释放\":\"1\"},\"尺寸标注\":{\"偏移\":\"150\"},\"竖向腹杆\":{\"起点约束释放\":\"1\",\"角度\":\"0.00°\",\"终点约束释放\":\"1\",\"结构框架类型\":\"-1\"},\"构造\":{\"腹杆符号缩进\":\"True\",\"腹杆方向\":\"0\"},\"其他\":{\"族名称\":\"梯形钢屋顶 - GWJ30\"}},\"SymbolPropNodes\":{\"标准\":{\"其他\":{\"类别\":\"-2009600\"},\"尺寸标注\":{\"桁架高度 1\":\"1990\"},\"标识数据\":{\"类型名称\":\"标准\"}},\"轻型\":{\"其他\":{\"类别\":\"-2009600\"},\"标识数据\":{\"类型名称\":\"轻型\"},\"尺寸标注\":{\"桁架高度 1\":\"1500\"}}}}', null, 'Autodesk Revit 2015', '-2009600');
INSERT INTO `file` VALUES ('55', '0cbe9bae-18d4-462b-8029-e612ee1db23d', '192.168.31.100/file/0cbe9bae-18d4-462b-8029-e612ee1db23d/T型钢柱.rfa', '192.168.31.100/file/0cbe9bae-18d4-462b-8029-e612ee1db23d/T型钢柱.bmp', 'T型钢柱', '101', '17', null, '0', null, '1530582618', null, '{\"FamilyPropGroups\":{\"尺寸标注\":{\"tw\":\"13\",\"bf\":\"400\",\"k\":\"43\",\"y\":\"32\",\"r\":\"22\",\"d\":\"200\",\"tf\":\"21\"},\"结构\":{\"W\":\"0.841411\",\"横断面形状\":\"0\",\"A\":\"0.01 m²\"},\"标识数据\":{\"成本\":\"0.00\",\"设计选项\":\"-1\",\"类型图像\":\"-1\",\"类型名称\":\"TW200X400X13X21\"},\"其他\":{\"族名称\":\"T 型钢柱\"}},\"SymbolPropNodes\":{\"TW200X400X13X21\":{\"其他\":{\"类别\":\"-2001330\"}}}}', null, 'Autodesk Revit 2015', '-2001330');
INSERT INTO `file` VALUES ('56', '9ff162e0-3327-405e-9a5a-067ce3fa945a', '192.168.31.100/file/9ff162e0-3327-405e-9a5a-067ce3fa945a/空气幕-热水-立式.rfa', '192.168.31.100/file/9ff162e0-3327-405e-9a5a-067ce3fa945a/空气幕-热水-立式.bmp', '空气幕-热水-立式', '101', '17', null, '0', null, '1530582639', null, '{\"FamilyPropGroups\":{\"其他\":{\"高度 1\":\"995\",\"半径 2\":\"28\",\"半径 1\":\"113\",\"高度 3\":\"436\",\"高度 2\":\"299\",\"高度 4\":\"175\",\"族名称\":\"空气幕-热水-立式\"},\"尺寸标注\":{\"风管高度\":\"100 mm\",\"管道距离 2\":\"256\",\"空气幕高度\":\"1247\",\"出口半径\":\"25 mm\",\"管道距离 1\":\"84\",\"进口直径\":\"50 mm\",\"出口直径\":\"50 mm\",\"进口半径\":\"25 mm\"},\"标识数据\":{\"成本\":\"0.00\",\"类型图像\":\"-1\",\"设计选项\":\"-1\"},\"电气\":{\"电压\":\"380 V\",\"极数\":\"3\"},\"材质和装饰\":{\"气幕材质\":\"-1\"}},\"SymbolPropNodes\":{\"5508 CMH\":{\"其他\":{\"宽度 2\":\"99\",\"长度 1\":\"437\",\"类别\":\"-2001140\"},\"电气 - 负荷\":{\"名义载荷\":\"1500 VA\"},\"尺寸标注\":{\"风管宽度\":\"1500 mm\",\"空气幕宽度\":\"495\",\"空气幕长度\":\"1660\"},\"标识数据\":{\"类型名称\":\"5508 CMH\"}},\"5170 CMH\":{\"其他\":{\"宽度 2\":\"99\",\"类别\":\"-2001140\",\"长度 1\":\"337\"},\"电气 - 负荷\":{\"名义载荷\":\"1500 VA\"},\"尺寸标注\":{\"空气幕宽度\":\"495\",\"风管宽度\":\"1200 mm\",\"空气幕长度\":\"1360\"},\"标识数据\":{\"类型名称\":\"5170 CMH\"}},\"5346 CMH\":{\"尺寸标注\":{\"风管宽度\":\"1500 mm\",\"空气幕长度\":\"1660\",\"空气幕宽度\":\"562\"},\"其他\":{\"类别\":\"-2001140\",\"长度 1\":\"428\",\"宽度 2\":\"112\"},\"标识数据\":{\"类型名称\":\"5346 CMH\"},\"电气 - 负荷\":{\"名义载荷\":\"1100 VA\"}},\"5060 CMH\":{\"其他\":{\"类别\":\"-2001140\",\"宽度 2\":\"112\",\"长度 1\":\"328\"},\"尺寸标注\":{\"风管宽度\":\"1200 mm\",\"空气幕长度\":\"1360\",\"空气幕宽度\":\"562\"},\"电气 - 负荷\":{\"名义载荷\":\"1100 VA\"},\"标识数据\":{\"类型名称\":\"5060 CMH\"}},\"2480 CMH\":{\"其他\":{\"类别\":\"-2001140\",\"宽度 2\":\"112\",\"长度 1\":\"262\"},\"尺寸标注\":{\"空气幕宽度\":\"562\",\"空气幕长度\":\"1160\",\"风管宽度\":\"1000 mm\"},\"电气 - 负荷\":{\"名义载荷\":\"550 VA\"},\"标识数据\":{\"类型名称\":\"2480 CMH\"}},\"2304 CMH\":{\"其他\":{\"类别\":\"-2001140\",\"宽度 2\":\"112\",\"长度 1\":\"195\"},\"尺寸标注\":{\"空气幕宽度\":\"562\",\"风管宽度\":\"800 mm\",\"空气幕长度\":\"960\"},\"电气 - 负荷\":{\"名义载荷\":\"550 VA\"},\"标识数据\":{\"类型名称\":\"2304 CMH\"}}}}', null, 'Autodesk Revit 2015', '-2001140');
INSERT INTO `file` VALUES ('57', '94550659-d66e-44e0-bf64-ca5996447ec4', '192.168.31.100/file/94550659-d66e-44e0-bf64-ca5996447ec4/檐底板通风孔-小圆-剖面.rfa', '192.168.31.100/file/94550659-d66e-44e0-bf64-ca5996447ec4/檐底板通风孔-小圆-剖面.bmp', '檐底板通风孔-小圆-剖面', '101', '17', null, '0', null, '1530582678', null, '{\"FamilyPropGroups\":{\"结构\":{\"横断面形状\":\"0\"},\"标识数据\":{\"成本\":\"0.00\",\"类型图像\":\"-1\",\"设计选项\":\"-1\"},\"其他\":{\"族名称\":\"檐底板通风孔 - 小圆 - 剖面\"}},\"SymbolPropNodes\":{\"40mm\":{\"尺寸标注\":{\"宽度\":\"40\",\"法兰\":\"7\"},\"其他\":{\"类别\":\"-2002000\"},\"标识数据\":{\"类型名称\":\"40mm\"}},\"50mm\":{\"其他\":{\"类别\":\"-2002000\"},\"尺寸标注\":{\"法兰\":\"7\",\"宽度\":\"50\"},\"标识数据\":{\"类型名称\":\"50mm\"}},\"20mm\":{\"其他\":{\"类别\":\"-2002000\"},\"尺寸标注\":{\"法兰\":\"3\",\"宽度\":\"20\"},\"标识数据\":{\"类型名称\":\"20mm\"}},\"25mm\":{\"其他\":{\"类别\":\"-2002000\"},\"尺寸标注\":{\"法兰\":\"3\",\"宽度\":\"25\"},\"标识数据\":{\"类型名称\":\"25mm\"}},\"75mm\":{\"其他\":{\"类别\":\"-2002000\"},\"尺寸标注\":{\"法兰\":\"7\",\"宽度\":\"75\"},\"标识数据\":{\"类型名称\":\"75mm\"}},\"100mm\":{\"其他\":{\"类别\":\"-2002000\"},\"尺寸标注\":{\"法兰\":\"7\",\"宽度\":\"100\"},\"标识数据\":{\"类型名称\":\"100mm\"}},\"150mm\":{\"其他\":{\"类别\":\"-2002000\"},\"尺寸标注\":{\"法兰\":\"8\",\"宽度\":\"150\"},\"标识数据\":{\"类型名称\":\"150mm\"}},\"65mm\":{\"其他\":{\"类别\":\"-2002000\"},\"尺寸标注\":{\"法兰\":\"7\",\"宽度\":\"65\"},\"标识数据\":{\"类型名称\":\"65mm\"}}}}', null, 'Autodesk Revit 2015', '-2002000');
INSERT INTO `file` VALUES ('58', 'a60966bc-19c8-4cab-a90e-c1f87987dac2', '192.168.31.100/file/a60966bc-19c8-4cab-a90e-c1f87987dac2/木包推拉门-固定边框-剖面.rfa', '192.168.31.100/file/a60966bc-19c8-4cab-a90e-c1f87987dac2/木包推拉门-固定边框-剖面.bmp', '木包推拉门-固定边框-剖面', '101', '17', null, '0', null, '1530582721', null, '{\"FamilyPropGroups\":{\"标识数据\":{\"成本\":\"0.00\",\"类型名称\":\"木包推拉门 - 固定边框 - 剖面\",\"类型图像\":\"-1\",\"设计选项\":\"-1\"},\"结构\":{\"横断面形状\":\"0\"},\"其他\":{\"族名称\":\"木包推拉门 - 固定边框 - 剖面\"}},\"SymbolPropNodes\":{\"木包推拉门 - 固定边框 - 剖面\":{\"其他\":{\"类别\":\"-2002000\"}}}}', null, 'Autodesk Revit 2015', '-2002000');
INSERT INTO `file` VALUES ('59', 'dd53df25-4539-4dee-b8a9-bd740476a6e6', '192.168.31.100/file/dd53df25-4539-4dee-b8a9-bd740476a6e6/挡土墙_Par_族_搁板3_关键.rfa', '192.168.31.100/file/dd53df25-4539-4dee-b8a9-bd740476a6e6/挡土墙_Par_族_搁板3_关键.bmp', '挡土墙_Par_族_搁板3_关键', '101', '17', null, '0', null, '1530582740', null, '{\"FamilyPropGroups\":{\"尺寸标注\":{\"h7\":\"3871\",\"Beta\":\"10.00°\",\"Gw2\":\"600\",\"Alpha\":\"6.00°\",\"Bs3\":\"900\",\"h2\":\"188\",\"Bs2\":\"650\",\"Gf3\":\"350\",\"h1\":\"398\",\"Tmp2\":\"1161\",\"Gs1\":\"200\",\"h4\":\"3836\",\"Hs3\":\"1960\",\"Gs3\":\"240\",\"h6\":\"-35\",\"Bk\":\"200\",\"H\":\"4000\",\"Tmp1\":\"1768\",\"Bs1\":\"450\",\"Gamma\":\"11.48°\",\"Gf1\":\"150\",\"Bw\":\"1200\",\"h3\":\"3899\",\"Hs2\":\"1100\",\"TmpBs2\":\"2907\",\"B\":\"3200\",\"Gk\":\"280\",\"Hs1\":\"360\",\"TmpBs1\":\"2843\",\"Gs2\":\"240\",\"Gw1\":\"500\",\"Gamma2\":\"1.48°\",\"Gf2\":\"300\",\"TmpBs3\":\"3008\",\"Gf4\":\"400\",\"Hk\":\"240\"},\"其他\":{\"族名称\":\"挡土墙_Par_族_搁板3_关键\"},\"标识数据\":{\"成本\":\"0.00\",\"类型图像\":\"-1\",\"设计选项\":\"-1\",\"类型名称\":\"标准\"}},\"SymbolPropNodes\":{\"标准\":{\"其他\":{\"类别\":\"-2001300\"}}}}', null, 'Autodesk Revit 2015', '-2001300');
INSERT INTO `file` VALUES ('60', '291fdb0f-bc6b-4529-a574-96208b890e92', '192.168.31.100/file/291fdb0f-bc6b-4529-a574-96208b890e92/豪威氏人字形桁架-10嵌板.rfa', '192.168.31.100/file/291fdb0f-bc6b-4529-a574-96208b890e92/豪威氏人字形桁架-10嵌板.bmp', '豪威氏人字形桁架-10嵌板', '101', '17', null, '0', null, '1530582768', null, '{\"FamilyPropGroups\":{\"下弦杆\":{\"角度\":\"0.00°\",\"终点约束释放\":\"1\",\"分析垂直投影\":\"-3\",\"起点约束释放\":\"1\",\"结构框架类型\":\"-1\"},\"斜腹杆\":{\"起点约束释放\":\"1\",\"结构框架类型\":\"-1\",\"角度\":\"0.00°\",\"终点约束释放\":\"1\"},\"上弦杆\":{\"角度\":\"0.00°\",\"结构框架类型\":\"-1\",\"终点约束释放\":\"1\",\"分析垂直投影\":\"-3\",\"起点约束释放\":\"1\"},\"其他\":{\"族名称\":\"豪威氏人字形桁架-10嵌板\"},\"构造\":{\"腹杆符号缩进\":\"True\",\"腹杆方向\":\"0\"},\"标识数据\":{\"设计选项\":\"-1\",\"类型名称\":\"标准\",\"类型图像\":\"-1\",\"成本\":\"0.00\"},\"竖向腹杆\":{\"角度\":\"0.00°\",\"结构框架类型\":\"-1\",\"起点约束释放\":\"1\",\"终点约束释放\":\"1\"}},\"SymbolPropNodes\":{\"标准\":{\"其他\":{\"类别\":\"-2009600\"}}}}', null, 'Autodesk Revit 2015', '-2009600');
INSERT INTO `file` VALUES ('61', 'ae8d3a17-26b9-41ce-8cca-9387aaa2ec11', '192.168.31.100/file/ae8d3a17-26b9-41ce-8cca-9387aaa2ec11/闭合环加强板-半圆边界.rfa', '192.168.31.100/file/ae8d3a17-26b9-41ce-8cca-9387aaa2ec11/闭合环加强板-半圆边界.bmp', '闭合环加强板-半圆边界', '101', '17', null, '0', null, '1530582788', null, '{\"FamilyPropGroups\":{\"标识数据\":{\"类型图像\":\"-1\",\"成本\":\"0.00\",\"设计选项\":\"-1\"},\"约束\":{\"默认高程\":\"7000\"},\"其他\":{\"族名称\":\"闭合环加强板-半圆边界\"}},\"SymbolPropNodes\":{\"300 X 75\":{\"其他\":{\"类别\":\"-2001354\"},\"标识数据\":{\"类型名称\":\"300 X 75\"}},\"600 X 125\":{\"其他\":{\"类别\":\"-2001354\"},\"标识数据\":{\"类型名称\":\"600 X 125\"}}}}', null, 'Autodesk Revit 2015', '-2001354');
INSERT INTO `file` VALUES ('62', 'aa777b03-b2c8-44f9-8856-c308db444293', '192.168.31.100/file/aa777b03-b2c8-44f9-8856-c308db444293/蒸汽锅炉-燃气-卧式-600-3500kW.rfa', '192.168.31.100/file/aa777b03-b2c8-44f9-8856-c308db444293/蒸汽锅炉-燃气-卧式-600-3500kW.bmp', '蒸汽锅炉-燃气-卧式-600-3500kW', '101', '17', null, '0', null, '1530582809', null, '{\"FamilyPropGroups\":{\"机械\":{\"锅炉自重\":\"4.63t\",\"最大工作压力\":\"1034000.0 Pa\",\"天燃气消耗量\":\"200.0 L/s\",\"燃气压损\":\"6987.0 Pa\",\"热功率\":\"600000 W\",\"蒸汽出量\":\"1000kg/h\",\"水容量\":\"1.55 m³\"},\"尺寸标注\":{\"锅炉长度\":\"4940\",\"天燃气进口直径\":\"50 mm\",\"锅壳直径\":\"1500\",\"给水口半径\":\"13 mm\",\"天燃气进口半径\":\"25 mm\",\"安全阀到尾板距离\":\"455\",\"换管距离\":\"2245\",\"前板厚度\":\"240\",\"锅炉宽度\":\"1960\",\"烟道直径\":\"350 mm\",\"基座高度\":\"200\",\"安全阀半径\":\"20 mm\",\"蒸汽出口直径\":\"65 mm\",\"蒸汽出口高度\":\"2098\",\"烟道半径\":\"175 mm\",\"安全阀直径\":\"40 mm\",\"给水口直径\":\"25 mm\",\"排污口直径\":\"40 mm\",\"烟道高度\":\"1700\",\"开门半径\":\"1655\",\"基座宽度\":\"1700\",\"蒸汽出口半径\":\"33 mm\",\"熔炉长度\":\"2195\",\"燃气燃烧器长度\":\"1183\",\"锅壳长度\":\"2545\",\"排污口半径\":\"20 mm\",\"蒸汽出口到尾板距离\":\"1655\"},\"电气\":{\"极数\":\"3\",\"电压\":\"380 V\"},\"其他\":{\"高度 4\":\"197\",\"泵半径 3\":\"25\",\"锅壳法兰半径\":\"923\",\"高度 2\":\"353\",\"控制箱高度\":\"600\",\"给水口法兰半径\":\"104\",\"燃气燃烧器长度 1\":\"394\",\"泵半径 1\":\"89\",\"宽度 1\":\"260\",\"族名称\":\"蒸汽锅炉 - 燃气 - 卧式 - 600 - 3500 kW\",\"高度 3\":\"710\",\"蒸汽出口法兰半径\":\"85 mm\",\"安全阀法兰半径\":\"69 mm\",\"半径 1\":\"394\",\"锅壳高度 1\":\"525\",\"泵半径 2\":\"130\",\"宽度 2\":\"503\",\"半径 2\":\"335 mm\",\"锅壳半径\":\"750\",\"高度 1\":\"118\"},\"标识数据\":{\"类型名称\":\"标准\",\"设计选项\":\"-1\",\"成本\":\"0.00\",\"类型图像\":\"-1\"},\"电气 - 负荷\":{\"名义载荷\":\"2600 VA\"},\"材质和装饰\":{\"锅炉材质\":\"-1\"}},\"SymbolPropNodes\":{\"标准\":{\"其他\":{\"类别\":\"-2001140\"}}}}', null, 'Autodesk Revit 2015', '-2001140');
INSERT INTO `file` VALUES ('63', 'af73e8f1-40a1-4ea1-a08a-048f2def618b', '192.168.31.100/file/af73e8f1-40a1-4ea1-a08a-048f2def618b/加热器-电-强制出风.rfa', '192.168.31.100/file/af73e8f1-40a1-4ea1-a08a-048f2def618b/加热器-电-强制出风.bmp', '加热器-电-强制出风', '101', '17', null, '0', null, '1530582829', null, '{\"FamilyPropGroups\":{\"其他\":{\"格栅高度 1\":\"159\",\"格栅宽度\":\"101\",\"四分之一高度\":\"32\",\"厚度\":\"132\",\"族名称\":\"加热器-电-强制出风\",\"格栅高度 2\":\"25\",\"格栅距离 3\":\"16\",\"开关半径\":\"6\",\"格栅距离 2\":\"64\",\"格栅半距离 2\":\"32\",\"格栅距离 1\":\"24\"},\"约束\":{\"默认高程\":\"100\"},\"尺寸标注\":{\"加热器宽度\":\"235\",\"面板厚度\":\"25\",\"面板高度\":\"318\",\"加热器高度\":\"279\",\"面板宽度\":\"270\",\"加热器厚度\":\"102\"},\"电气\":{\"电压\":\"220 V\",\"极数\":\"1\"},\"标识数据\":{\"类型图像\":\"-1\",\"成本\":\"0.00\",\"设计选项\":\"-1\"},\"材质和装饰\":{\"暖风机材质\":\"-1\"}},\"SymbolPropNodes\":{\"1000 W\":{\"电气\":{\"电流\":\"4 A\"},\"其他\":{\"类别\":\"-2001140\"},\"标识数据\":{\"类型名称\":\"1000 W\"},\"电气 - 负荷\":{\"名义载荷\":\"1000 VA\"}},\"2000 W\":{\"其他\":{\"类别\":\"-2001140\"},\"电气\":{\"电流\":\"8 A\"},\"电气 - 负荷\":{\"名义载荷\":\"2000 VA\"},\"标识数据\":{\"类型名称\":\"2000 W\"}}}}', null, 'Autodesk Revit 2014', '-2001140');
INSERT INTO `file` VALUES ('64', 'a31d6910-81e6-44ec-9b43-3b0e303cf3cd', '192.168.31.100/file/a31d6910-81e6-44ec-9b43-3b0e303cf3cd/水泵接合器-E型-地下式.rfa', '192.168.31.100/file/a31d6910-81e6-44ec-9b43-3b0e303cf3cd/水泵接合器-E型-地下式.bmp', '水泵接合器-E型-地下式', '101', '17', null, '0', null, '1530582869', null, '{\"FamilyPropGroups\":{\"材质和装饰\":{\"消防接合器主体材质\":\"-1\",\"阀体材质\":\"-1\",\"法兰管材质\":\"-1\"},\"标识数据\":{\"设计选项\":\"-1\",\"成本\":\"0.00\",\"类型图像\":\"-1\"},\"其他\":{\"半径 2\":\"15\",\"长度 3\":\"300\",\"半径 3\":\"20\",\"基座厚度\":\"10\",\"族名称\":\"水泵接合器 - E 型 - 地下式\",\"半径 1\":\"220\",\"长度 6\":\"66\",\"符号长度 1\":\"50\",\"法兰查找表\":\"CHS_Flange Flat Face - Integral - Steel - PN 16\"},\"机械\":{\"公称压力\":\"1600000.0 Pa\"}},\"SymbolPropNodes\":{\"100 mm\":{\"其他\":{\"基座宽度\":\"125\",\"长度 1\":\"50\",\"法兰直径\":\"220\",\"类别\":\"-2001140\",\"法兰半径\":\"110\",\"长度 4\":\"120\",\"法兰厚度\":\"22\",\"半径 4\":\"25\",\"长度 5\":\"15\",\"h\":\"162\"},\"尺寸标注\":{\"公称半径\":\"50 mm\",\"公称直径\":\"100 mm\"},\"机械\":{\"流量\":\"10.0 L/s\"},\"标识数据\":{\"类型名称\":\"100 mm\"}},\"150 mm\":{\"其他\":{\"类别\":\"-2001140\",\"半径 4\":\"38\",\"长度 5\":\"23\",\"长度 4\":\"145\",\"法兰直径\":\"285\",\"法兰半径\":\"143\",\"基座宽度\":\"188\",\"长度 1\":\"75\",\"法兰厚度\":\"24\",\"h\":\"180\"},\"尺寸标注\":{\"公称半径\":\"75 mm\",\"公称直径\":\"150 mm\"},\"标识数据\":{\"类型名称\":\"150 mm\"},\"机械\":{\"流量\":\"15.0 L/s\"}}}}', null, 'Autodesk Revit 2015', '-2001140');
INSERT INTO `file` VALUES ('65', 'a3b3d24d-28ea-419f-a2f4-6cc247311da2', '192.168.31.100/file/a3b3d24d-28ea-419f-a2f4-6cc247311da2/振动器.rfa', '192.168.31.100/file/a3b3d24d-28ea-419f-a2f4-6cc247311da2/振动器.bmp', '振动器', '101', '17', null, '0', null, '1530582898', null, '{\"FamilyPropGroups\":{\"标识数据\":{\"设计选项\":\"-1\",\"类型名称\":\"振动器\",\"成本\":\"0.00\",\"类型图像\":\"-1\"},\"其他\":{\"族名称\":\"振动器\"}},\"SymbolPropNodes\":{\"振动器\":{\"其他\":{\"类别\":\"-2001350\"}}}}', null, 'Autodesk Revit 2014', '-2001350');
INSERT INTO `file` VALUES ('66', '7b76509b-34f2-4b8b-a69b-6c97c2c7ed7f', '192.168.31.100/file/7b76509b-34f2-4b8b-a69b-6c97c2c7ed7f/布料机.rfa', '192.168.31.100/file/7b76509b-34f2-4b8b-a69b-6c97c2c7ed7f/布料机.bmp', '布料机', '101', '17', null, '0', null, '1530582992', null, '{\"FamilyPropGroups\":{\"标识数据\":{\"OmniClass 标题\":\"Climate Control (HVAC)\",\"产品类别\":\"施工机械\",\"OmniClass 编号\":\"23.75.00.00\",\"成本\":\"0.00\",\"设计选项\":\"-1\",\"版本号\":\"V1\",\"类型图像\":\"-1\",\"类型名称\":\"布料机\",\"制作\":\"BIMto\"},\"尺寸标注\":{\"旋转角度\":\"0.00°\",\"洞口半径\":\"70\",\"支撑脚圆柱半径\":\"40\",\"支撑脚圆柱高度\":\"100\",\"支撑脚板厚度\":\"10\",\"底座截面宽度\":\"160\",\"回转轴承宽度\":\"272\",\"底座支撑定位\":\"705\",\"支撑脚边长\":\"150\",\"底座截面高度\":\"160\"},\"其他\":{\"族名称\":\"布料机\"},\"机械\":{\"PH\":\"7.0\"},\"常规\":{\"布料机标准节宽度\":\"500\"}},\"SymbolPropNodes\":{\"布料机\":{\"其他\":{\"类别\":\"-2001140\"}}}}', null, 'Autodesk Revit 2014', '-2001140');
INSERT INTO `file` VALUES ('67', 'd2d88889-0fd7-4aca-adf8-6cf51a203aad', '192.168.31.100/file/d2d88889-0fd7-4aca-adf8-6cf51a203aad/蒸汽锅炉-燃气-立式-60-600kW.rfa', '192.168.31.100/file/d2d88889-0fd7-4aca-adf8-6cf51a203aad/蒸汽锅炉-燃气-立式-60-600kW.bmp', '蒸汽锅炉-燃气-立式-60-600kW', '101', '17', null, '0', null, '1530583017', null, '{\"FamilyPropGroups\":{\"机械\":{\"热功率\":\"60000 W\",\"蒸汽压力\":\"1034210.3 Pa\",\"锅炉付运重量\":\"0.77t\",\"水容量\":\"0.06 m³\",\"蒸汽出量\":\"94kg/h\"},\"尺寸标注\":{\"安全阀半径\":\"10 mm\",\"排污口高度\":\"380\",\"烟道直径\":\"152\",\"总深度\":\"1118\",\"燃烧器拆卸距离\":\"2083\",\"总宽度\":\"838\",\"蒸汽出口直径\":\"25 mm\",\"排污口半径\":\"13 mm\",\"烟道中心距离\":\"1320\",\"锅炉高度\":\"1461\",\"给水口半径\":\"10 mm\",\"燃气控制器长度\":\"572\",\"天燃气进口直径\":\"25 mm\",\"安全阀直径\":\"20 mm\",\"排污口直径\":\"25 mm\",\"手孔高度\":\"485\",\"锅炉直径\":\"660\",\"给水口高度\":\"840\",\"烟道半径\":\"76\",\"总高度\":\"1905\",\"蒸汽出口半径\":\"13 mm\",\"给水口直径\":\"20 mm\",\"天燃气进口半径\":\"13 mm\"},\"其他\":{\"燃烧器半径\":\"134\",\"燃气控制器长度 4\":\"143\",\"燃气控制器长度 3\":\"486\",\"燃气控制器长度 2\":\"90\",\"半径 2\":\"11\",\"燃气控制器长度 1\":\"902\",\"族名称\":\"蒸汽锅炉 - 燃气 - 立式 - 60 - 600 kW\",\"控制箱高度\":\"438\",\"二分之一锅炉半径\":\"165\",\"半径 1\":\"99\",\"手孔半径\":\"121\",\"锅炉半径\":\"330\",\"控制箱宽度\":\"307\"},\"电气\":{\"极数\":\"1\",\"电压\":\"220 V\"},\"标识数据\":{\"设计选项\":\"-1\",\"成本\":\"0.00\",\"类型名称\":\"标准\",\"类型图像\":\"-1\"},\"材质和装饰\":{\"锅炉材质\":\"-1\"},\"电气 - 负荷\":{\"名义载荷\":\"770 VA\"}},\"SymbolPropNodes\":{\"标准\":{\"其他\":{\"类别\":\"-2001140\"}}}}', null, 'Autodesk Revit 2015', '-2001140');
INSERT INTO `file` VALUES ('68', '1042dca9-d793-4e66-8b52-2c7bfef0561c', '192.168.31.100/file/1042dca9-d793-4e66-8b52-2c7bfef0561c/垂帘.rfa', '192.168.31.100/file/1042dca9-d793-4e66-8b52-2c7bfef0561c/垂帘.bmp', '垂帘', '101', '17', null, '0', null, '1530583038', null, '{\"FamilyPropGroups\":{\"标识数据\":{\"成本\":\"0.00\",\"类型图像\":\"-1\",\"设计选项\":\"-1\"},\"其他\":{\"族名称\":\"垂帘\"},\"尺寸标注\":{\"页片数\":\"14\",\"顶高度\":\"2500\",\"垂帘高度\":\"1800\",\"宽度\":\"1500\"}},\"SymbolPropNodes\":{\"1500宽半开\":{\"标识数据\":{\"类型名称\":\"1500宽半开\"},\"其他\":{\"类别\":\"-2000151\"},\"尺寸标注\":{\"页片角度\":\"45.00°\",\"开孔宽度\":\"1000\"}},\"1500全开\":{\"其他\":{\"类别\":\"-2000151\"},\"尺寸标注\":{\"页片角度\":\"85.00°\",\"开孔宽度\":\"100\"},\"标识数据\":{\"类型名称\":\"1500全开\"}},\"1500全关\":{\"其他\":{\"类别\":\"-2000151\"},\"尺寸标注\":{\"页片角度\":\"5.00°\",\"开孔宽度\":\"1370\"},\"标识数据\":{\"类型名称\":\"1500全关\"}}}}', null, 'Autodesk Revit 2015', '-2000151');
INSERT INTO `file` VALUES ('69', 'b76af67f-9658-46d4-b116-8d7fa1634a6a', '192.168.31.100/file/b76af67f-9658-46d4-b116-8d7fa1634a6a/屏风5.rfa', '192.168.31.100/file/b76af67f-9658-46d4-b116-8d7fa1634a6a/屏风5.bmp', '屏风5', '101', '17', null, '0', null, '1530583059', null, '{\"FamilyPropGroups\":{\"尺寸标注\":{\"高度\":\"1215\"},\"标识数据\":{\"类型图像\":\"-1\",\"设计选项\":\"-1\",\"成本\":\"0.00\"},\"其他\":{\"族名称\":\"屏风5\"}},\"SymbolPropNodes\":{\"W450*T60*H1215\":{\"标识数据\":{\"类型名称\":\"W450*T60*H1215\"},\"尺寸标注\":{\"宽度\":\"450\",\"1 隔断高度\":\"200\"},\"其他\":{\"类别\":\"-2000080\"}},\"W600*T60*H1215\":{\"其他\":{\"类别\":\"-2000080\"},\"尺寸标注\":{\"1 隔断高度\":\"300\",\"宽度\":\"600\"},\"标识数据\":{\"类型名称\":\"W600*T60*H1215\"}},\"W650*T60*H1215\":{\"其他\":{\"类别\":\"-2000080\"},\"尺寸标注\":{\"1 隔断高度\":\"300\",\"宽度\":\"650\"},\"标识数据\":{\"类型名称\":\"W650*T60*H1215\"}}}}', null, 'Autodesk Revit 2015', '-2000080');
INSERT INTO `file` VALUES ('70', '6bf3626d-ec6a-46e0-bc89-06f302409748', '192.168.31.100/file/6bf3626d-ec6a-46e0-bc89-06f302409748/梳妆台柜-双门四个抽屉.rfa', '192.168.31.100/file/6bf3626d-ec6a-46e0-bc89-06f302409748/梳妆台柜-双门四个抽屉.bmp', '梳妆台柜-双门四个抽屉', '101', '17', null, '0', null, '1530583079', null, '{\"FamilyPropGroups\":{\"标识数据\":{\"成本\":\"0.00\",\"类型名称\":\"1200 mm\",\"设计选项\":\"-1\",\"类型图像\":\"-1\"},\"尺寸标注\":{\"深度\":\"600\",\"宽度\":\"1200\",\"底座深度\":\"35\",\"高度\":\"710\",\"底座高度\":\"100\"},\"材质和装饰\":{\"门/抽屉材质\":\"-1\",\"箱材质\":\"-1\"},\"其他\":{\"族名称\":\"梳妆台柜-双门四个抽屉\"}},\"SymbolPropNodes\":{\"1200 mm\":{\"其他\":{\"类别\":\"-2001000\"}}}}', null, 'Autodesk Revit 2014', '-2001000');
INSERT INTO `file` VALUES ('71', '3d54705a-d0a3-4df1-b983-c14e543e5e7d', '192.168.31.100/file/3d54705a-d0a3-4df1-b983-c14e543e5e7d/梳妆台柜-双门四个抽屉.rfa', '192.168.31.100/file/3d54705a-d0a3-4df1-b983-c14e543e5e7d/梳妆台柜-双门四个抽屉.bmp', '梳妆台柜-双门四个抽屉', '101', '11', null, '0', null, '1530583156', null, '{\"FamilyPropGroups\":{\"尺寸标注\":{\"高度\":\"710\",\"底座深度\":\"35\",\"底座高度\":\"100\",\"深度\":\"600\",\"宽度\":\"1200\"},\"其他\":{\"族名称\":\"梳妆台柜-双门四个抽屉\"},\"材质和装饰\":{\"门/抽屉材质\":\"-1\",\"箱材质\":\"-1\"},\"标识数据\":{\"类型图像\":\"-1\",\"成本\":\"0.00\",\"类型名称\":\"1200 mm\",\"设计选项\":\"-1\"}},\"SymbolPropNodes\":{\"1200 mm\":{\"其他\":{\"类别\":\"-2001000\"}}}}', null, 'Autodesk Revit 2014', '-2001000');
INSERT INTO `file` VALUES ('72', '7a433c0c-4bd6-4bca-b288-217bd3a1b411', '192.168.31.100/file/7a433c0c-4bd6-4bca-b288-217bd3a1b411/屏风5.rfa', '192.168.31.100/file/7a433c0c-4bd6-4bca-b288-217bd3a1b411/屏风5.bmp', '屏风5', '101', '11', null, '0', null, '1530583173', null, '{\"FamilyPropGroups\":{\"尺寸标注\":{\"高度\":\"1215\"},\"其他\":{\"族名称\":\"屏风5\"},\"标识数据\":{\"成本\":\"0.00\",\"类型图像\":\"-1\",\"设计选项\":\"-1\"}},\"SymbolPropNodes\":{\"W450*T60*H1215\":{\"尺寸标注\":{\"1 隔断高度\":\"200\",\"宽度\":\"450\"},\"标识数据\":{\"类型名称\":\"W450*T60*H1215\"},\"其他\":{\"类别\":\"-2000080\"}},\"W600*T60*H1215\":{\"其他\":{\"类别\":\"-2000080\"},\"尺寸标注\":{\"宽度\":\"600\",\"1 隔断高度\":\"300\"},\"标识数据\":{\"类型名称\":\"W600*T60*H1215\"}},\"W650*T60*H1215\":{\"其他\":{\"类别\":\"-2000080\"},\"尺寸标注\":{\"1 隔断高度\":\"300\",\"宽度\":\"650\"},\"标识数据\":{\"类型名称\":\"W650*T60*H1215\"}}}}', null, 'Autodesk Revit 2015', '-2000080');
INSERT INTO `file` VALUES ('73', '0da3defc-c38c-4b35-8e61-a4a5aa11e22f', '192.168.31.100/file/0da3defc-c38c-4b35-8e61-a4a5aa11e22f/垂帘.rfa', '192.168.31.100/file/0da3defc-c38c-4b35-8e61-a4a5aa11e22f/垂帘.bmp', '垂帘', '101', '11', null, '0', null, '1530583197', null, '{\"FamilyPropGroups\":{\"尺寸标注\":{\"宽度\":\"1500\",\"页片数\":\"14\",\"垂帘高度\":\"1800\",\"顶高度\":\"2500\"},\"标识数据\":{\"类型图像\":\"-1\",\"设计选项\":\"-1\",\"成本\":\"0.00\"},\"其他\":{\"族名称\":\"垂帘\"}},\"SymbolPropNodes\":{\"1500宽半开\":{\"其他\":{\"类别\":\"-2000151\"},\"尺寸标注\":{\"页片角度\":\"45.00°\",\"开孔宽度\":\"1000\"},\"标识数据\":{\"类型名称\":\"1500宽半开\"}},\"1500全开\":{\"其他\":{\"类别\":\"-2000151\"},\"尺寸标注\":{\"页片角度\":\"85.00°\",\"开孔宽度\":\"100\"},\"标识数据\":{\"类型名称\":\"1500全开\"}},\"1500全关\":{\"其他\":{\"类别\":\"-2000151\"},\"尺寸标注\":{\"开孔宽度\":\"1370\",\"页片角度\":\"5.00°\"},\"标识数据\":{\"类型名称\":\"1500全关\"}}}}', null, 'Autodesk Revit 2015', '-2000151');
INSERT INTO `file` VALUES ('74', '5338143e-91b2-4c59-aef6-e3fb42023f67', '192.168.31.100/file/5338143e-91b2-4c59-aef6-e3fb42023f67/蒸汽锅炉-燃气-立式-60-600kW.rfa', '192.168.31.100/file/5338143e-91b2-4c59-aef6-e3fb42023f67/蒸汽锅炉-燃气-立式-60-600kW.bmp', '蒸汽锅炉-燃气-立式-60-600kW', '101', '11', null, '0', null, '1530583215', null, '{\"FamilyPropGroups\":{\"其他\":{\"手孔半径\":\"121\",\"燃气控制器长度 1\":\"902\",\"二分之一锅炉半径\":\"165\",\"族名称\":\"蒸汽锅炉 - 燃气 - 立式 - 60 - 600 kW\",\"控制箱高度\":\"438\",\"半径 1\":\"99\",\"燃烧器半径\":\"134\",\"燃气控制器长度 2\":\"90\",\"锅炉半径\":\"330\",\"燃气控制器长度 4\":\"143\",\"控制箱宽度\":\"307\",\"半径 2\":\"11\",\"燃气控制器长度 3\":\"486\"},\"尺寸标注\":{\"总高度\":\"1905\",\"烟道半径\":\"76\",\"排污口直径\":\"25 mm\",\"安全阀直径\":\"20 mm\",\"烟道直径\":\"152\",\"燃气控制器长度\":\"572\",\"手孔高度\":\"485\",\"安全阀半径\":\"10 mm\",\"给水口半径\":\"10 mm\",\"烟道中心距离\":\"1320\",\"燃烧器拆卸距离\":\"2083\",\"总宽度\":\"838\",\"总深度\":\"1118\",\"给水口高度\":\"840\",\"给水口直径\":\"20 mm\",\"锅炉高度\":\"1461\",\"排污口半径\":\"13 mm\",\"天燃气进口直径\":\"25 mm\",\"排污口高度\":\"380\",\"蒸汽出口直径\":\"25 mm\",\"蒸汽出口半径\":\"13 mm\",\"锅炉直径\":\"660\",\"天燃气进口半径\":\"13 mm\"},\"机械\":{\"热功率\":\"60000 W\",\"水容量\":\"0.06 m³\",\"锅炉付运重量\":\"0.77t\",\"蒸汽出量\":\"94kg/h\",\"蒸汽压力\":\"1034210.3 Pa\"},\"标识数据\":{\"类型图像\":\"-1\",\"成本\":\"0.00\",\"类型名称\":\"标准\",\"设计选项\":\"-1\"},\"材质和装饰\":{\"锅炉材质\":\"-1\"},\"电气\":{\"电压\":\"220 V\",\"极数\":\"1\"},\"电气 - 负荷\":{\"名义载荷\":\"770 VA\"}},\"SymbolPropNodes\":{\"标准\":{\"其他\":{\"类别\":\"-2001140\"}}}}', null, 'Autodesk Revit 2015', '-2001140');
INSERT INTO `file` VALUES ('75', 'b70b213e-6d83-4f37-a155-feb0976c6e42', '192.168.31.100/file/b70b213e-6d83-4f37-a155-feb0976c6e42/布料机.rfa', '192.168.31.100/file/b70b213e-6d83-4f37-a155-feb0976c6e42/布料机.bmp', '布料机', '101', '11', null, '0', null, '1530583308', null, '{\"FamilyPropGroups\":{\"标识数据\":{\"成本\":\"0.00\",\"产品类别\":\"施工机械\",\"OmniClass 标题\":\"Climate Control (HVAC)\",\"类型图像\":\"-1\",\"设计选项\":\"-1\",\"类型名称\":\"布料机\",\"OmniClass 编号\":\"23.75.00.00\",\"制作\":\"BIMto\",\"版本号\":\"V1\"},\"尺寸标注\":{\"底座支撑定位\":\"705\",\"支撑脚圆柱半径\":\"40\",\"支撑脚板厚度\":\"10\",\"旋转角度\":\"0.00°\",\"底座截面高度\":\"160\",\"洞口半径\":\"70\",\"支撑脚边长\":\"150\",\"支撑脚圆柱高度\":\"100\",\"回转轴承宽度\":\"272\",\"底座截面宽度\":\"160\"},\"常规\":{\"布料机标准节宽度\":\"500\"},\"机械\":{\"PH\":\"7.0\"},\"其他\":{\"族名称\":\"布料机\"}},\"SymbolPropNodes\":{\"布料机\":{\"其他\":{\"类别\":\"-2001140\"}}}}', null, 'Autodesk Revit 2014', '-2001140');
INSERT INTO `file` VALUES ('76', '75abac89-cf48-4592-b533-698472f96cba', '192.168.31.100/file/75abac89-cf48-4592-b533-698472f96cba/振动器.rfa', '192.168.31.100/file/75abac89-cf48-4592-b533-698472f96cba/振动器.bmp', '振动器', '101', '11', null, '0', null, '1530583343', null, '{\"FamilyPropGroups\":{\"标识数据\":{\"类型名称\":\"振动器\",\"设计选项\":\"-1\",\"成本\":\"0.00\",\"类型图像\":\"-1\"},\"其他\":{\"族名称\":\"振动器\"}},\"SymbolPropNodes\":{\"振动器\":{\"其他\":{\"类别\":\"-2001350\"}}}}', null, 'Autodesk Revit 2014', '-2001350');
INSERT INTO `file` VALUES ('77', '0d35502a-ca53-428e-be48-7b00bae0128b', '192.168.31.100/file/0d35502a-ca53-428e-be48-7b00bae0128b/水泵接合器-E型-地下式.rfa', '192.168.31.100/file/0d35502a-ca53-428e-be48-7b00bae0128b/水泵接合器-E型-地下式.bmp', '水泵接合器-E型-地下式', '101', '11', null, '0', null, '1530583368', null, '{\"FamilyPropGroups\":{\"机械\":{\"公称压力\":\"1600000.0 Pa\"},\"其他\":{\"半径 2\":\"15\",\"符号长度 1\":\"50\",\"基座厚度\":\"10\",\"长度 6\":\"66\",\"半径 1\":\"220\",\"半径 3\":\"20\",\"族名称\":\"水泵接合器 - E 型 - 地下式\",\"法兰查找表\":\"CHS_Flange Flat Face - Integral - Steel - PN 16\",\"长度 3\":\"300\"},\"标识数据\":{\"类型图像\":\"-1\",\"设计选项\":\"-1\",\"成本\":\"0.00\"},\"材质和装饰\":{\"消防接合器主体材质\":\"-1\",\"法兰管材质\":\"-1\",\"阀体材质\":\"-1\"}},\"SymbolPropNodes\":{\"100 mm\":{\"机械\":{\"流量\":\"10.0 L/s\"},\"尺寸标注\":{\"公称半径\":\"50 mm\",\"公称直径\":\"100 mm\"},\"其他\":{\"类别\":\"-2001140\",\"法兰厚度\":\"22\",\"长度 1\":\"50\",\"基座宽度\":\"125\",\"长度 4\":\"120\",\"长度 5\":\"15\",\"h\":\"162\",\"法兰直径\":\"220\",\"半径 4\":\"25\",\"法兰半径\":\"110\"},\"标识数据\":{\"类型名称\":\"100 mm\"}},\"150 mm\":{\"其他\":{\"类别\":\"-2001140\",\"法兰半径\":\"143\",\"长度 1\":\"75\",\"法兰直径\":\"285\",\"长度 5\":\"23\",\"基座宽度\":\"188\",\"长度 4\":\"145\",\"半径 4\":\"38\",\"法兰厚度\":\"24\",\"h\":\"180\"},\"标识数据\":{\"类型名称\":\"150 mm\"},\"机械\":{\"流量\":\"15.0 L/s\"},\"尺寸标注\":{\"公称直径\":\"150 mm\",\"公称半径\":\"75 mm\"}}}}', null, 'Autodesk Revit 2015', '-2001140');
INSERT INTO `file` VALUES ('78', '9e57fd3b-1379-452a-b675-c59f1c1f1a50', '192.168.31.100/file/9e57fd3b-1379-452a-b675-c59f1c1f1a50/加热器-电-强制出风.rfa', '192.168.31.100/file/9e57fd3b-1379-452a-b675-c59f1c1f1a50/加热器-电-强制出风.bmp', '加热器-电-强制出风', '101', '11', null, '0', null, '1530583386', null, '{\"FamilyPropGroups\":{\"其他\":{\"格栅宽度\":\"101\",\"格栅高度 2\":\"25\",\"格栅距离 1\":\"24\",\"开关半径\":\"6\",\"族名称\":\"加热器-电-强制出风\",\"四分之一高度\":\"32\",\"格栅半距离 2\":\"32\",\"格栅高度 1\":\"159\",\"格栅距离 2\":\"64\",\"厚度\":\"132\",\"格栅距离 3\":\"16\"},\"尺寸标注\":{\"加热器厚度\":\"102\",\"加热器宽度\":\"235\",\"加热器高度\":\"279\",\"面板高度\":\"318\",\"面板宽度\":\"270\",\"面板厚度\":\"25\"},\"约束\":{\"默认高程\":\"100\"},\"电气\":{\"电压\":\"220 V\",\"极数\":\"1\"},\"标识数据\":{\"成本\":\"0.00\",\"类型图像\":\"-1\",\"设计选项\":\"-1\"},\"材质和装饰\":{\"暖风机材质\":\"-1\"}},\"SymbolPropNodes\":{\"1000 W\":{\"其他\":{\"类别\":\"-2001140\"},\"标识数据\":{\"类型名称\":\"1000 W\"},\"电气\":{\"电流\":\"4 A\"},\"电气 - 负荷\":{\"名义载荷\":\"1000 VA\"}},\"2000 W\":{\"其他\":{\"类别\":\"-2001140\"},\"标识数据\":{\"类型名称\":\"2000 W\"},\"电气\":{\"电流\":\"8 A\"},\"电气 - 负荷\":{\"名义载荷\":\"2000 VA\"}}}}', null, 'Autodesk Revit 2014', '-2001140');
INSERT INTO `file` VALUES ('79', '6402c306-708e-47b5-b888-7e5d9181424a', '192.168.31.100/file/6402c306-708e-47b5-b888-7e5d9181424a/蒸汽锅炉-燃气-卧式-600-3500kW.rfa', '192.168.31.100/file/6402c306-708e-47b5-b888-7e5d9181424a/蒸汽锅炉-燃气-卧式-600-3500kW.bmp', '蒸汽锅炉-燃气-卧式-600-3500kW', '101', '11', null, '0', null, '1530583406', null, '{\"FamilyPropGroups\":{\"机械\":{\"最大工作压力\":\"1034000.0 Pa\",\"热功率\":\"600000 W\",\"燃气压损\":\"6987.0 Pa\",\"蒸汽出量\":\"1000kg/h\",\"水容量\":\"1.55 m³\",\"天燃气消耗量\":\"200.0 L/s\",\"锅炉自重\":\"4.63t\"},\"尺寸标注\":{\"熔炉长度\":\"2195\",\"排污口直径\":\"40 mm\",\"基座高度\":\"200\",\"蒸汽出口高度\":\"2098\",\"天燃气进口直径\":\"50 mm\",\"烟道高度\":\"1700\",\"安全阀半径\":\"20 mm\",\"换管距离\":\"2245\",\"安全阀到尾板距离\":\"455\",\"锅炉宽度\":\"1960\",\"蒸汽出口直径\":\"65 mm\",\"排污口半径\":\"20 mm\",\"基座宽度\":\"1700\",\"给水口直径\":\"25 mm\",\"蒸汽出口半径\":\"33 mm\",\"蒸汽出口到尾板距离\":\"1655\",\"锅壳直径\":\"1500\",\"开门半径\":\"1655\",\"安全阀直径\":\"40 mm\",\"锅壳长度\":\"2545\",\"前板厚度\":\"240\",\"烟道半径\":\"175 mm\",\"燃气燃烧器长度\":\"1183\",\"天燃气进口半径\":\"25 mm\",\"给水口半径\":\"13 mm\",\"锅炉长度\":\"4940\",\"烟道直径\":\"350 mm\"},\"标识数据\":{\"成本\":\"0.00\",\"类型图像\":\"-1\",\"设计选项\":\"-1\",\"类型名称\":\"标准\"},\"其他\":{\"锅壳半径\":\"750\",\"锅壳法兰半径\":\"923\",\"半径 2\":\"335 mm\",\"泵半径 3\":\"25\",\"安全阀法兰半径\":\"69 mm\",\"族名称\":\"蒸汽锅炉 - 燃气 - 卧式 - 600 - 3500 kW\",\"半径 1\":\"394\",\"泵半径 2\":\"130\",\"控制箱高度\":\"600\",\"高度 4\":\"197\",\"燃气燃烧器长度 1\":\"394\",\"蒸汽出口法兰半径\":\"85 mm\",\"宽度 1\":\"260\",\"高度 3\":\"710\",\"锅壳高度 1\":\"525\",\"高度 1\":\"118\",\"给水口法兰半径\":\"104\",\"宽度 2\":\"503\",\"泵半径 1\":\"89\",\"高度 2\":\"353\"},\"电气 - 负荷\":{\"名义载荷\":\"2600 VA\"},\"电气\":{\"极数\":\"3\",\"电压\":\"380 V\"},\"材质和装饰\":{\"锅炉材质\":\"-1\"}},\"SymbolPropNodes\":{\"标准\":{\"其他\":{\"类别\":\"-2001140\"}}}}', null, 'Autodesk Revit 2015', '-2001140');
INSERT INTO `file` VALUES ('80', 'f6fb85ae-f098-4102-aabb-fba4e965d52f', '192.168.31.100/file/f6fb85ae-f098-4102-aabb-fba4e965d52f/闭合环加强板-半圆边界.rfa', '192.168.31.100/file/f6fb85ae-f098-4102-aabb-fba4e965d52f/闭合环加强板-半圆边界.bmp', '闭合环加强板-半圆边界', '101', '11', null, '0', null, '1530583434', null, '{\"FamilyPropGroups\":{\"标识数据\":{\"成本\":\"0.00\",\"类型图像\":\"-1\",\"设计选项\":\"-1\"},\"约束\":{\"默认高程\":\"7000\"},\"其他\":{\"族名称\":\"闭合环加强板-半圆边界\"}},\"SymbolPropNodes\":{\"300 X 75\":{\"其他\":{\"类别\":\"-2001354\"},\"标识数据\":{\"类型名称\":\"300 X 75\"}},\"600 X 125\":{\"其他\":{\"类别\":\"-2001354\"},\"标识数据\":{\"类型名称\":\"600 X 125\"}}}}', null, 'Autodesk Revit 2015', '-2001354');
INSERT INTO `file` VALUES ('81', '586f35da-758a-430a-8965-3530ca49044c', '192.168.31.100/file/586f35da-758a-430a-8965-3530ca49044c/豪威氏人字形桁架-10嵌板.rfa', '192.168.31.100/file/586f35da-758a-430a-8965-3530ca49044c/豪威氏人字形桁架-10嵌板.bmp', '豪威氏人字形桁架-10嵌板', '101', '11', null, '0', null, '1530583453', null, '{\"FamilyPropGroups\":{\"竖向腹杆\":{\"结构框架类型\":\"-1\",\"起点约束释放\":\"1\",\"终点约束释放\":\"1\",\"角度\":\"0.00°\"},\"上弦杆\":{\"结构框架类型\":\"-1\",\"角度\":\"0.00°\",\"终点约束释放\":\"1\",\"分析垂直投影\":\"-3\",\"起点约束释放\":\"1\"},\"其他\":{\"族名称\":\"豪威氏人字形桁架-10嵌板\"},\"标识数据\":{\"成本\":\"0.00\",\"类型图像\":\"-1\",\"设计选项\":\"-1\",\"类型名称\":\"标准\"},\"下弦杆\":{\"终点约束释放\":\"1\",\"结构框架类型\":\"-1\",\"角度\":\"0.00°\",\"分析垂直投影\":\"-3\",\"起点约束释放\":\"1\"},\"构造\":{\"腹杆方向\":\"0\",\"腹杆符号缩进\":\"True\"},\"斜腹杆\":{\"结构框架类型\":\"-1\",\"终点约束释放\":\"1\",\"起点约束释放\":\"1\",\"角度\":\"0.00°\"}},\"SymbolPropNodes\":{\"标准\":{\"其他\":{\"类别\":\"-2009600\"}}}}', null, 'Autodesk Revit 2015', '-2009600');
INSERT INTO `file` VALUES ('82', '168bc036-0f26-4b77-af54-82dc1ebdfa75', '192.168.31.100/file/168bc036-0f26-4b77-af54-82dc1ebdfa75/挡土墙_Par_族_搁板3_关键.rfa', '192.168.31.100/file/168bc036-0f26-4b77-af54-82dc1ebdfa75/挡土墙_Par_族_搁板3_关键.bmp', '挡土墙_Par_族_搁板3_关键', '101', '11', null, '0', null, '1530583472', null, '{\"FamilyPropGroups\":{\"尺寸标注\":{\"TmpBs3\":\"3008\",\"Tmp1\":\"1768\",\"h4\":\"3836\",\"Gw1\":\"500\",\"Gs2\":\"240\",\"Gf2\":\"300\",\"Bw\":\"1200\",\"Gf3\":\"350\",\"Hs2\":\"1100\",\"Bs3\":\"900\",\"Beta\":\"10.00°\",\"Bs2\":\"650\",\"Gf4\":\"400\",\"Bk\":\"200\",\"TmpBs2\":\"2907\",\"Tmp2\":\"1161\",\"h6\":\"-35\",\"Alpha\":\"6.00°\",\"H\":\"4000\",\"h1\":\"398\",\"Hs3\":\"1960\",\"Gk\":\"280\",\"h3\":\"3899\",\"h7\":\"3871\",\"Gs3\":\"240\",\"B\":\"3200\",\"Hk\":\"240\",\"Gamma2\":\"1.48°\",\"Gw2\":\"600\",\"Gamma\":\"11.48°\",\"Bs1\":\"450\",\"TmpBs1\":\"2843\",\"h2\":\"188\",\"Gs1\":\"200\",\"Hs1\":\"360\",\"Gf1\":\"150\"},\"标识数据\":{\"成本\":\"0.00\",\"设计选项\":\"-1\",\"类型名称\":\"标准\",\"类型图像\":\"-1\"},\"其他\":{\"族名称\":\"挡土墙_Par_族_搁板3_关键\"}},\"SymbolPropNodes\":{\"标准\":{\"其他\":{\"类别\":\"-2001300\"}}}}', null, 'Autodesk Revit 2015', '-2001300');
INSERT INTO `file` VALUES ('83', 'bfe079db-0f72-437c-8839-d00fba2c9788', '192.168.31.100/file/bfe079db-0f72-437c-8839-d00fba2c9788/木包推拉门-固定边框-剖面.rfa', '192.168.31.100/file/bfe079db-0f72-437c-8839-d00fba2c9788/木包推拉门-固定边框-剖面.bmp', '木包推拉门-固定边框-剖面', '101', '11', null, '0', null, '1530583520', null, '{\"FamilyPropGroups\":{\"其他\":{\"族名称\":\"木包推拉门 - 固定边框 - 剖面\"},\"标识数据\":{\"成本\":\"0.00\",\"类型名称\":\"木包推拉门 - 固定边框 - 剖面\",\"设计选项\":\"-1\",\"类型图像\":\"-1\"},\"结构\":{\"横断面形状\":\"0\"}},\"SymbolPropNodes\":{\"木包推拉门 - 固定边框 - 剖面\":{\"其他\":{\"类别\":\"-2002000\"}}}}', null, 'Autodesk Revit 2015', '-2002000');
INSERT INTO `file` VALUES ('84', '470c02d9-20fd-4797-a724-a6f5cd4d0fd5', '192.168.31.100/file/470c02d9-20fd-4797-a724-a6f5cd4d0fd5/檐底板通风孔-小圆-剖面.rfa', '192.168.31.100/file/470c02d9-20fd-4797-a724-a6f5cd4d0fd5/檐底板通风孔-小圆-剖面.bmp', '檐底板通风孔-小圆-剖面', '101', '11', null, '0', null, '1530583568', null, '{\"FamilyPropGroups\":{\"标识数据\":{\"类型图像\":\"-1\",\"成本\":\"0.00\",\"设计选项\":\"-1\"},\"结构\":{\"横断面形状\":\"0\"},\"其他\":{\"族名称\":\"檐底板通风孔 - 小圆 - 剖面\"}},\"SymbolPropNodes\":{\"40mm\":{\"其他\":{\"类别\":\"-2002000\"},\"尺寸标注\":{\"宽度\":\"40\",\"法兰\":\"7\"},\"标识数据\":{\"类型名称\":\"40mm\"}},\"50mm\":{\"其他\":{\"类别\":\"-2002000\"},\"尺寸标注\":{\"法兰\":\"7\",\"宽度\":\"50\"},\"标识数据\":{\"类型名称\":\"50mm\"}},\"20mm\":{\"其他\":{\"类别\":\"-2002000\"},\"尺寸标注\":{\"宽度\":\"20\",\"法兰\":\"3\"},\"标识数据\":{\"类型名称\":\"20mm\"}},\"25mm\":{\"其他\":{\"类别\":\"-2002000\"},\"尺寸标注\":{\"法兰\":\"3\",\"宽度\":\"25\"},\"标识数据\":{\"类型名称\":\"25mm\"}},\"75mm\":{\"其他\":{\"类别\":\"-2002000\"},\"尺寸标注\":{\"法兰\":\"7\",\"宽度\":\"75\"},\"标识数据\":{\"类型名称\":\"75mm\"}},\"100mm\":{\"其他\":{\"类别\":\"-2002000\"},\"尺寸标注\":{\"法兰\":\"7\",\"宽度\":\"100\"},\"标识数据\":{\"类型名称\":\"100mm\"}},\"150mm\":{\"其他\":{\"类别\":\"-2002000\"},\"标识数据\":{\"类型名称\":\"150mm\"},\"尺寸标注\":{\"宽度\":\"150\",\"法兰\":\"8\"}},\"65mm\":{\"其他\":{\"类别\":\"-2002000\"},\"尺寸标注\":{\"法兰\":\"7\",\"宽度\":\"65\"},\"标识数据\":{\"类型名称\":\"65mm\"}}}}', null, 'Autodesk Revit 2015', '-2002000');
INSERT INTO `file` VALUES ('85', 'b637bf4e-2f69-4584-aa3b-127f3dddab6f', '192.168.31.100/file/b637bf4e-2f69-4584-aa3b-127f3dddab6f/空气幕-热水-立式.rfa', '192.168.31.100/file/b637bf4e-2f69-4584-aa3b-127f3dddab6f/空气幕-热水-立式.bmp', '空气幕-热水-立式', '101', '11', null, '0', null, '1530583587', null, '{\"FamilyPropGroups\":{\"电气\":{\"电压\":\"380 V\",\"极数\":\"3\"},\"标识数据\":{\"设计选项\":\"-1\",\"成本\":\"0.00\",\"类型图像\":\"-1\"},\"其他\":{\"半径 1\":\"113\",\"高度 1\":\"995\",\"族名称\":\"空气幕-热水-立式\",\"半径 2\":\"28\",\"高度 3\":\"436\",\"高度 2\":\"299\",\"高度 4\":\"175\"},\"尺寸标注\":{\"出口直径\":\"50 mm\",\"风管高度\":\"100 mm\",\"管道距离 2\":\"256\",\"出口半径\":\"25 mm\",\"进口直径\":\"50 mm\",\"空气幕高度\":\"1247\",\"管道距离 1\":\"84\",\"进口半径\":\"25 mm\"},\"材质和装饰\":{\"气幕材质\":\"-1\"}},\"SymbolPropNodes\":{\"5508 CMH\":{\"尺寸标注\":{\"空气幕宽度\":\"495\",\"空气幕长度\":\"1660\",\"风管宽度\":\"1500 mm\"},\"其他\":{\"宽度 2\":\"99\",\"类别\":\"-2001140\",\"长度 1\":\"437\"},\"电气 - 负荷\":{\"名义载荷\":\"1500 VA\"},\"标识数据\":{\"类型名称\":\"5508 CMH\"}},\"5170 CMH\":{\"尺寸标注\":{\"空气幕宽度\":\"495\",\"空气幕长度\":\"1360\",\"风管宽度\":\"1200 mm\"},\"其他\":{\"宽度 2\":\"99\",\"类别\":\"-2001140\",\"长度 1\":\"337\"},\"电气 - 负荷\":{\"名义载荷\":\"1500 VA\"},\"标识数据\":{\"类型名称\":\"5170 CMH\"}},\"5346 CMH\":{\"其他\":{\"类别\":\"-2001140\",\"长度 1\":\"428\",\"宽度 2\":\"112\"},\"尺寸标注\":{\"空气幕长度\":\"1660\",\"风管宽度\":\"1500 mm\",\"空气幕宽度\":\"562\"},\"电气 - 负荷\":{\"名义载荷\":\"1100 VA\"},\"标识数据\":{\"类型名称\":\"5346 CMH\"}},\"5060 CMH\":{\"其他\":{\"类别\":\"-2001140\",\"宽度 2\":\"112\",\"长度 1\":\"328\"},\"尺寸标注\":{\"空气幕长度\":\"1360\",\"风管宽度\":\"1200 mm\",\"空气幕宽度\":\"562\"},\"电气 - 负荷\":{\"名义载荷\":\"1100 VA\"},\"标识数据\":{\"类型名称\":\"5060 CMH\"}},\"2480 CMH\":{\"其他\":{\"类别\":\"-2001140\",\"宽度 2\":\"112\",\"长度 1\":\"262\"},\"尺寸标注\":{\"空气幕宽度\":\"562\",\"风管宽度\":\"1000 mm\",\"空气幕长度\":\"1160\"},\"标识数据\":{\"类型名称\":\"2480 CMH\"},\"电气 - 负荷\":{\"名义载荷\":\"550 VA\"}},\"2304 CMH\":{\"其他\":{\"类别\":\"-2001140\",\"宽度 2\":\"112\",\"长度 1\":\"195\"},\"尺寸标注\":{\"空气幕宽度\":\"562\",\"空气幕长度\":\"960\",\"风管宽度\":\"800 mm\"},\"电气 - 负荷\":{\"名义载荷\":\"550 VA\"},\"标识数据\":{\"类型名称\":\"2304 CMH\"}}}}', null, 'Autodesk Revit 2015', '-2001140');
INSERT INTO `file` VALUES ('86', 'ea326cfb-a943-49b4-ad5f-ff4aad4ec920', '192.168.31.100/file/ea326cfb-a943-49b4-ad5f-ff4aad4ec920/T型钢柱.rfa', '192.168.31.100/file/ea326cfb-a943-49b4-ad5f-ff4aad4ec920/T型钢柱.bmp', 'T型钢柱', '101', '11', null, '0', null, '1530583608', null, '{\"FamilyPropGroups\":{\"结构\":{\"横断面形状\":\"0\",\"W\":\"0.841411\",\"A\":\"0.01 m²\"},\"标识数据\":{\"类型名称\":\"TW200X400X13X21\",\"成本\":\"0.00\",\"设计选项\":\"-1\",\"类型图像\":\"-1\"},\"尺寸标注\":{\"bf\":\"400\",\"tf\":\"21\",\"tw\":\"13\",\"r\":\"22\",\"k\":\"43\",\"d\":\"200\",\"y\":\"32\"},\"其他\":{\"族名称\":\"T 型钢柱\"}},\"SymbolPropNodes\":{\"TW200X400X13X21\":{\"其他\":{\"类别\":\"-2001330\"}}}}', null, 'Autodesk Revit 2015', '-2001330');
INSERT INTO `file` VALUES ('87', 'e73a2e9f-b379-4730-a29e-215ca253430b', '192.168.31.100/file/e73a2e9f-b379-4730-a29e-215ca253430b/梯形钢屋顶-GWJ30.rfa', '192.168.31.100/file/e73a2e9f-b379-4730-a29e-215ca253430b/梯形钢屋顶-GWJ30.bmp', '梯形钢屋顶-GWJ30', '101', '11', null, '0', null, '1530583628', null, '{\"FamilyPropGroups\":{\"上弦杆\":{\"角度\":\"0.00°\",\"分析垂直投影\":\"-3\",\"起点约束释放\":\"1\",\"终点约束释放\":\"1\",\"结构框架类型\":\"-1\"},\"斜腹杆\":{\"起点约束释放\":\"1\",\"角度\":\"0.00°\",\"终点约束释放\":\"1\",\"结构框架类型\":\"-1\"},\"下弦杆\":{\"终点约束释放\":\"1\",\"起点约束释放\":\"1\",\"角度\":\"0.00°\",\"分析垂直投影\":\"-3\",\"结构框架类型\":\"-1\"},\"竖向腹杆\":{\"终点约束释放\":\"1\",\"起点约束释放\":\"1\",\"角度\":\"0.00°\",\"结构框架类型\":\"-1\"},\"构造\":{\"腹杆符号缩进\":\"True\",\"腹杆方向\":\"0\"},\"标识数据\":{\"设计选项\":\"-1\",\"OmniClass 标题\":\"Trussed Beams and Joists\",\"类型图像\":\"-1\",\"成本\":\"0.00\",\"OmniClass 编号\":\"23.25.30.21.14\"},\"其他\":{\"族名称\":\"梯形钢屋顶 - GWJ30\"},\"尺寸标注\":{\"偏移\":\"150\"}},\"SymbolPropNodes\":{\"标准\":{\"尺寸标注\":{\"桁架高度 1\":\"1990\"},\"其他\":{\"类别\":\"-2009600\"},\"标识数据\":{\"类型名称\":\"标准\"}},\"轻型\":{\"其他\":{\"类别\":\"-2009600\"},\"标识数据\":{\"类型名称\":\"轻型\"},\"尺寸标注\":{\"桁架高度 1\":\"1500\"}}}}', null, 'Autodesk Revit 2015', '-2009600');
INSERT INTO `file` VALUES ('88', '8e93284c-ba35-4266-b9f1-8d2deebf4092', '192.168.31.100/file/8e93284c-ba35-4266-b9f1-8d2deebf4092/04.rfa', '192.168.31.100/file/8e93284c-ba35-4266-b9f1-8d2deebf4092/04.bmp', '04', '101', '11', null, '0', null, '1530583677', null, '{\"FamilyPropGroups\":{\"标识数据\":{\"成本\":\"0.00\",\"设计选项\":\"-1\",\"类型名称\":\"04\"},\"其他\":{\"族名称\":\"04\"}},\"SymbolPropNodes\":{\"04\":{\"其他\":{\"类别\":\"-2009013\"}}}}', null, 'Autodesk Revit 2015', '-2009013');
INSERT INTO `file` VALUES ('89', '1ca44af6-1f92-4f0b-9a2b-c94996d3975c', '192.168.31.100/file/1ca44af6-1f92-4f0b-9a2b-c94996d3975c/窗帘盒.rfa', '192.168.31.100/file/1ca44af6-1f92-4f0b-9a2b-c94996d3975c/窗帘盒.bmp', '窗帘盒', '101', '11', null, '0', null, '1530583701', null, '{\"FamilyPropGroups\":{\"尺寸标注\":{\"窗帘盒深度\":\"200\",\"底高度\":\"2100\",\"宽度\":\"1800\"},\"标识数据\":{\"设计选项\":\"-1\",\"类型图像\":\"-1\",\"成本\":\"0.00\",\"类型名称\":\"窗帘盒 1\"},\"其他\":{\"有中间连接\":\"True\",\"族名称\":\"窗帘盒\"}},\"SymbolPropNodes\":{\"窗帘盒 1\":{\"其他\":{\"类别\":\"-2000151\"}}}}', null, 'Autodesk Revit 2015', '-2000151');
INSERT INTO `file` VALUES ('90', '4dda7d31-b721-4291-aca1-9682f42a2fda', '192.168.31.100/file/4dda7d31-b721-4291-aca1-9682f42a2fda/十字扣件.rfa', '192.168.31.100/file/4dda7d31-b721-4291-aca1-9682f42a2fda/十字扣件.bmp', '十字扣件', '101', '11', null, '0', null, '1530583722', null, '{\"FamilyPropGroups\":{\"标识数据\":{\"成本\":\"0.00\",\"类型名称\":\"十字扣件\",\"设计选项\":\"-1\",\"类型图像\":\"-1\"},\"其他\":{\"族名称\":\"十字扣件\"}},\"SymbolPropNodes\":{\"十字扣件\":{\"其他\":{\"类别\":\"-2001350\"}}}}', null, 'Autodesk Revit 2013', '-2001350');
INSERT INTO `file` VALUES ('91', 'b378151c-2a11-4be6-8fac-efb067e965e4', '192.168.31.100/file/b378151c-2a11-4be6-8fac-efb067e965e4/建筑起重机.rfa', '192.168.31.100/file/b378151c-2a11-4be6-8fac-efb067e965e4/建筑起重机.bmp', '建筑起重机', '101', '11', null, '0', null, '1530583740', null, '{\"FamilyPropGroups\":{\"标识数据\":{\"类型图像\":\"-1\",\"成本\":\"0.00\",\"设计选项\":\"-1\"},\"其他\":{\"族名称\":\"建筑起重机\"}},\"SymbolPropNodes\":{\"22000mm @ 60 度\":{\"标识数据\":{\"类型名称\":\"22000mm @ 60 度\"},\"其他\":{\"类别\":\"-2001260\",\"吊杆半部\":\"11000\",\"弯钩\":\"30.00°\"},\"尺寸标注\":{\"平衡锤\":\"5500\",\"吊杆角度\":\"60.00°\",\"驾驶室宽度\":\"3650\",\"旋转半径\":\"5805\",\"宽度\":\"4900\",\"吊杆长度\":\"22000\"}},\"20000mm @ 45 度\":{\"其他\":{\"类别\":\"-2001260\",\"吊杆半部\":\"10000\",\"弯钩\":\"45.00°\"},\"尺寸标注\":{\"吊杆角度\":\"45.00°\",\"驾驶室宽度\":\"3050\",\"吊杆长度\":\"20000\",\"平衡锤\":\"4250\",\"旋转半径\":\"4555\",\"宽度\":\"4100\"},\"标识数据\":{\"类型名称\":\"20000mm @ 45 度\"}}}}', null, 'Autodesk Revit 2015', '-2001260');
INSERT INTO `file` VALUES ('92', '599d6b28-cce8-4cfa-a59f-4534a9f20c32', '192.168.31.100/file/599d6b28-cce8-4cfa-a59f-4534a9f20c32/双面嵌板木门3.rfa', '192.168.31.100/file/599d6b28-cce8-4cfa-a59f-4534a9f20c32/双面嵌板木门3.bmp', '双面嵌板木门3', '101', '11', null, '0', null, '1530583761', null, '{\"FamilyPropGroups\":{\"其他\":{\"贴面宽度\":\"75\",\"贴面厚度\":\"25\",\"族名称\":\"双面嵌板木门3\"},\"材质和装饰\":{\"把手材质\":\"-1\",\"嵌板材质\":\"-1\",\"贴面材质\":\"-1\"},\"分析属性\":{\"日光得热系数\":\"0\",\"构造类型 ID\":\"M_门\",\"分析构造\":\"金属\",\"可见光透过率\":\"0\",\"传热系数(U)\":\"3.7021 W/(m²·K)\",\"热阻(R)\":\"0.2701 (m²·K)/W\"},\"尺寸标注\":{\"厚度\":\"50\",\"粗略宽度\":\"1800\",\"粗略高度\":\"2100\",\"高度\":\"2100\"},\"标识数据\":{\"设计选项\":\"-1\",\"类型图像\":\"-1\",\"成本\":\"0.00\"},\"构造\":{\"墙闭合\":\"0\",\"功能\":\"0\"}},\"SymbolPropNodes\":{\"1800 x 2100mm\":{\"尺寸标注\":{\"宽度\":\"1800\"},\"其他\":{\"门扇顶梁宽度\":\"175\",\"类别\":\"-2000023\",\"W\":\"900\",\"门扇底梁宽度\":\"275\"},\"标识数据\":{\"类型名称\":\"1800 x 2100mm\",\"类型标记\":\"1\"}},\"1900 x 2100mm\":{\"其他\":{\"类别\":\"-2000023\",\"W\":\"950\",\"门扇底梁宽度\":\"175\",\"门扇顶梁宽度\":\"100\"},\"标识数据\":{\"类型标记\":\"2\",\"类型名称\":\"1900 x 2100mm\"},\"尺寸标注\":{\"宽度\":\"1900\"}},\"2000 x 2100mm\":{\"其他\":{\"类别\":\"-2000023\",\"门扇底梁宽度\":\"175\",\"门扇顶梁宽度\":\"100\",\"W\":\"1000\"},\"尺寸标注\":{\"宽度\":\"2000\"},\"标识数据\":{\"类型名称\":\"2000 x 2100mm\",\"类型标记\":\"3\"}}}}', null, 'Autodesk Revit 2015', '-2000023');

-- ----------------------------
-- Table structure for groups
-- ----------------------------
DROP TABLE IF EXISTS `groups`;
CREATE TABLE `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(50) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='角色表';

-- ----------------------------
-- Records of groups
-- ----------------------------
INSERT INTO `groups` VALUES ('18', '超级管理员', '超级管理员');
INSERT INTO `groups` VALUES ('19', '普通管理员', '普通管理员');
INSERT INTO `groups` VALUES ('27', '海哥 ', '无敌');
INSERT INTO `groups` VALUES ('28', '测试群组', '测试');

-- ----------------------------
-- Table structure for ifcmysql
-- ----------------------------
DROP TABLE IF EXISTS `ifcmysql`;
CREATE TABLE `ifcmysql` (
  `ifcid` int(11) DEFAULT NULL,
  `individual` varchar(85) DEFAULT NULL,
  `type` varchar(85) DEFAULT NULL,
  `data-name` varchar(85) DEFAULT NULL,
  `data-value` varchar(85) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ifcmysql
-- ----------------------------

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `acl_id` int(11) DEFAULT NULL,
  `acl_url` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '消息管理', '0', '1', '');
INSERT INTO `menu` VALUES ('2', '已发送消息', '1', '0', 'sendMsg.php');
INSERT INTO `menu` VALUES ('3', '已接受消息', '1', '0', 'receMsg.php');
INSERT INTO `menu` VALUES ('4', '个人管理', '0', '2', null);
INSERT INTO `menu` VALUES ('5', '修改密码', '4', '0', 'changePassword.php');
INSERT INTO `menu` VALUES ('8', '我的上传', '0', '10', '');
INSERT INTO `menu` VALUES ('9', '我的下载', '0', '11', null);
INSERT INTO `menu` VALUES ('10', '用户管理', '0', '6', null);
INSERT INTO `menu` VALUES ('11', '组织机构管理', '10', '0', 'cpydptManage.php');
INSERT INTO `menu` VALUES ('12', '用户录入管理', '10', '0', 'usrManage.php');
INSERT INTO `menu` VALUES ('13', '审核管理', '0', '3', null);
INSERT INTO `menu` VALUES ('14', '上传审核', '13', '0', 'auditUploadFile.php');
INSERT INTO `menu` VALUES ('15', '下载审核', '-1', '0', 'auditDownloadFile.php');
INSERT INTO `menu` VALUES ('16', '更新审核', '-1', '0', 'auditUpdateFile.php');
INSERT INTO `menu` VALUES ('17', '系统权限', '0', '4', null);
INSERT INTO `menu` VALUES ('19', '后台权限', '17', '0', 'group.php');
INSERT INTO `menu` VALUES ('20', '系统备份', '0', '5', null);
INSERT INTO `menu` VALUES ('21', '系统统计', '0', '7', null);
INSERT INTO `menu` VALUES ('22', '公告管理', '0', '8', null);
INSERT INTO `menu` VALUES ('23', '下载列表', '9', '0', 'downloadlist.php');
INSERT INTO `menu` VALUES ('24', '数据库备份', '20', '0', 'backup4sql.php');
INSERT INTO `menu` VALUES ('25', '文件备份', '20', '0', 'backup4file.php');
INSERT INTO `menu` VALUES ('26', '编辑公告', '22', '0', 'noticemanage.php');
INSERT INTO `menu` VALUES ('27', '上传统计', '21', '0', 'fileuploadrank.php');
INSERT INTO `menu` VALUES ('28', '更多统计', '21', '0', 'moreaccessreport.php');
INSERT INTO `menu` VALUES ('29', '上传列表', '8', '0', 'fileManage.php');
INSERT INTO `menu` VALUES ('30', '文件上传', '-1', '0', 'upduplManage.php');
INSERT INTO `menu` VALUES ('31', '项目管理', '10', '0', 'projectManage.php');
INSERT INTO `menu` VALUES ('32', '积分管理', '0', '13', '');
INSERT INTO `menu` VALUES ('33', '添加积分', '32', '0', 'addPointManage.php');
INSERT INTO `menu` VALUES ('34', '积分策略', '32', '0', 'pointStrategy.php');
INSERT INTO `menu` VALUES ('35', '分类管理', '0', '14', '');
INSERT INTO `menu` VALUES ('36', '分类设置', '35', '0', 'categoryManage.php');
INSERT INTO `menu` VALUES ('37', '下载权限', '17', '0', 'downloadGroup.php');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `from_id` int(11) DEFAULT NULL COMMENT '发件人',
  `to_id` int(11) DEFAULT NULL COMMENT '收件人',
  `content` varchar(8000) DEFAULT NULL COMMENT '消息内容',
  `send_time` int(11) unsigned DEFAULT NULL COMMENT '发送时间',
  `status` int(11) DEFAULT NULL COMMENT '状态：已读（1），未读（0）',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=215 DEFAULT CHARSET=utf8 COMMENT='消息';

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('1', '101', '0', '', '1452852219', '0');
INSERT INTO `message` VALUES ('2', '101', '0', '', '1452852225', '0');
INSERT INTO `message` VALUES ('3', '101', '0', '', '1452922176', '0');
INSERT INTO `message` VALUES ('4', '101', '0', '', '1452922176', '0');
INSERT INTO `message` VALUES ('5', '101', '0', '', '1452922176', '0');
INSERT INTO `message` VALUES ('6', '101', '0', '', '1452922176', '0');
INSERT INTO `message` VALUES ('7', '101', '0', '', '1452922176', '0');
INSERT INTO `message` VALUES ('8', '101', '0', '', '1452922176', '0');
INSERT INTO `message` VALUES ('9', '101', '0', '', '1452922176', '0');
INSERT INTO `message` VALUES ('10', '101', '0', '', '1452922176', '0');
INSERT INTO `message` VALUES ('11', '101', '0', '', '1452922176', '0');
INSERT INTO `message` VALUES ('12', '101', '0', '', '1452922176', '0');
INSERT INTO `message` VALUES ('13', '101', '0', '', '1452922176', '0');
INSERT INTO `message` VALUES ('14', '101', '0', '', '1452922176', '0');
INSERT INTO `message` VALUES ('15', '101', '0', '', '1452922176', '0');
INSERT INTO `message` VALUES ('16', '101', '0', '', '1452922176', '0');
INSERT INTO `message` VALUES ('17', '101', '0', '', '1452922176', '0');
INSERT INTO `message` VALUES ('18', '101', '0', '', '1452922256', '0');
INSERT INTO `message` VALUES ('19', '101', '0', '', '1452922256', '0');
INSERT INTO `message` VALUES ('20', '101', '0', '', '1452922256', '0');
INSERT INTO `message` VALUES ('21', '101', '0', '', '1452922256', '0');
INSERT INTO `message` VALUES ('22', '101', '0', '', '1452922256', '0');
INSERT INTO `message` VALUES ('23', '101', '0', '', '1452922256', '0');
INSERT INTO `message` VALUES ('24', '101', '0', '', '1452922256', '0');
INSERT INTO `message` VALUES ('25', '101', '0', '', '1452922256', '0');
INSERT INTO `message` VALUES ('26', '101', '0', '', '1452922256', '0');
INSERT INTO `message` VALUES ('27', '101', '0', '', '1452922256', '0');
INSERT INTO `message` VALUES ('28', '101', '0', '', '1452922256', '0');
INSERT INTO `message` VALUES ('29', '101', '0', '', '1452922256', '0');
INSERT INTO `message` VALUES ('30', '101', '0', '', '1452922256', '0');
INSERT INTO `message` VALUES ('31', '101', '0', '', '1452922256', '0');
INSERT INTO `message` VALUES ('32', '101', '0', '', '1452922256', '0');
INSERT INTO `message` VALUES ('33', '101', '0', '', '1452922264', '0');
INSERT INTO `message` VALUES ('34', '101', '0', '', '1452922264', '0');
INSERT INTO `message` VALUES ('35', '101', '0', '', '1452922264', '0');
INSERT INTO `message` VALUES ('36', '101', '0', '', '1452922264', '0');
INSERT INTO `message` VALUES ('37', '101', '0', '', '1452922264', '0');
INSERT INTO `message` VALUES ('38', '101', '0', '', '1452922264', '0');
INSERT INTO `message` VALUES ('39', '101', '0', '', '1452922264', '0');
INSERT INTO `message` VALUES ('40', '101', '0', '', '1452922264', '0');
INSERT INTO `message` VALUES ('41', '101', '0', '', '1452922264', '0');
INSERT INTO `message` VALUES ('42', '101', '0', '', '1452922264', '0');
INSERT INTO `message` VALUES ('43', '101', '0', '', '1452922264', '0');
INSERT INTO `message` VALUES ('44', '101', '0', '', '1452922264', '0');
INSERT INTO `message` VALUES ('45', '101', '0', '', '1452922264', '0');
INSERT INTO `message` VALUES ('46', '101', '0', '', '1452922264', '0');
INSERT INTO `message` VALUES ('47', '101', '0', '', '1452922264', '0');
INSERT INTO `message` VALUES ('48', '101', '0', '', '1452922279', '0');
INSERT INTO `message` VALUES ('49', '101', '0', '', '1452922279', '0');
INSERT INTO `message` VALUES ('50', '101', '0', '', '1452922279', '0');
INSERT INTO `message` VALUES ('51', '101', '0', '', '1452922279', '0');
INSERT INTO `message` VALUES ('52', '101', '0', '', '1452922279', '0');
INSERT INTO `message` VALUES ('53', '101', '0', '', '1452922279', '0');
INSERT INTO `message` VALUES ('54', '101', '0', '', '1452922279', '0');
INSERT INTO `message` VALUES ('55', '101', '0', '', '1452922279', '0');
INSERT INTO `message` VALUES ('56', '101', '0', '', '1452922279', '0');
INSERT INTO `message` VALUES ('57', '101', '0', '', '1452922279', '0');
INSERT INTO `message` VALUES ('58', '101', '0', '', '1452922279', '0');
INSERT INTO `message` VALUES ('59', '101', '0', '', '1452922279', '0');
INSERT INTO `message` VALUES ('60', '101', '0', '', '1452922279', '0');
INSERT INTO `message` VALUES ('61', '101', '0', '', '1452922279', '0');
INSERT INTO `message` VALUES ('62', '101', '0', '', '1452922279', '0');
INSERT INTO `message` VALUES ('63', '101', '0', '', '1452922317', '0');
INSERT INTO `message` VALUES ('64', '101', '0', '', '1452922317', '0');
INSERT INTO `message` VALUES ('65', '101', '0', '', '1452922317', '0');
INSERT INTO `message` VALUES ('66', '101', '0', '', '1452922317', '0');
INSERT INTO `message` VALUES ('67', '101', '0', '', '1452922317', '0');
INSERT INTO `message` VALUES ('68', '101', '0', '', '1452922317', '0');
INSERT INTO `message` VALUES ('69', '101', '0', '', '1452922317', '0');
INSERT INTO `message` VALUES ('70', '101', '0', '', '1452922317', '0');
INSERT INTO `message` VALUES ('71', '101', '0', '', '1452922317', '0');
INSERT INTO `message` VALUES ('72', '101', '0', '', '1452922317', '0');
INSERT INTO `message` VALUES ('73', '101', '0', '', '1452922317', '0');
INSERT INTO `message` VALUES ('74', '101', '0', '', '1452922317', '0');
INSERT INTO `message` VALUES ('75', '101', '0', '', '1452922317', '0');
INSERT INTO `message` VALUES ('76', '101', '0', '', '1452922317', '0');
INSERT INTO `message` VALUES ('77', '101', '0', '', '1452922317', '0');
INSERT INTO `message` VALUES ('78', '101', '0', '', '1452922346', '0');
INSERT INTO `message` VALUES ('79', '101', '0', '', '1452922346', '0');
INSERT INTO `message` VALUES ('80', '101', '0', '', '1452922346', '0');
INSERT INTO `message` VALUES ('81', '101', '0', '', '1452922346', '0');
INSERT INTO `message` VALUES ('82', '101', '0', '', '1452922346', '0');
INSERT INTO `message` VALUES ('83', '101', '0', '', '1452922346', '0');
INSERT INTO `message` VALUES ('84', '101', '0', '', '1452922346', '0');
INSERT INTO `message` VALUES ('85', '101', '0', '', '1452922346', '0');
INSERT INTO `message` VALUES ('86', '101', '0', '', '1452922346', '0');
INSERT INTO `message` VALUES ('87', '101', '0', '', '1452922346', '0');
INSERT INTO `message` VALUES ('88', '101', '0', '', '1452922346', '0');
INSERT INTO `message` VALUES ('89', '101', '0', '', '1452922346', '0');
INSERT INTO `message` VALUES ('90', '101', '0', '', '1452922346', '0');
INSERT INTO `message` VALUES ('91', '101', '0', '', '1452922346', '0');
INSERT INTO `message` VALUES ('92', '101', '0', '', '1452922346', '0');
INSERT INTO `message` VALUES ('93', '101', '0', '', '1452922350', '0');
INSERT INTO `message` VALUES ('94', '101', '0', '', '1452922350', '0');
INSERT INTO `message` VALUES ('95', '101', '0', '', '1452922350', '0');
INSERT INTO `message` VALUES ('96', '101', '0', '', '1452922350', '0');
INSERT INTO `message` VALUES ('97', '101', '0', '', '1452922350', '0');
INSERT INTO `message` VALUES ('98', '101', '0', '', '1452922350', '0');
INSERT INTO `message` VALUES ('99', '101', '0', '', '1452922350', '0');
INSERT INTO `message` VALUES ('100', '101', '0', '', '1452922350', '0');
INSERT INTO `message` VALUES ('101', '101', '0', '', '1452922350', '0');
INSERT INTO `message` VALUES ('102', '101', '0', '', '1452922350', '0');
INSERT INTO `message` VALUES ('103', '101', '0', '', '1452922350', '0');
INSERT INTO `message` VALUES ('104', '101', '0', '', '1452922350', '0');
INSERT INTO `message` VALUES ('105', '101', '0', '', '1452922350', '0');
INSERT INTO `message` VALUES ('106', '101', '0', '', '1452922350', '0');
INSERT INTO `message` VALUES ('107', '101', '0', '', '1452922350', '0');
INSERT INTO `message` VALUES ('108', '101', '101', '同意', '1452922843', '0');
INSERT INTO `message` VALUES ('109', '101', '101', '同意', '1452922843', '0');
INSERT INTO `message` VALUES ('110', '101', '101', '同意', '1452922843', '0');
INSERT INTO `message` VALUES ('111', '101', '101', '同意', '1452922843', '0');
INSERT INTO `message` VALUES ('112', '101', '101', '同意', '1452922843', '0');
INSERT INTO `message` VALUES ('113', '101', '101', '同意', '1452922843', '0');
INSERT INTO `message` VALUES ('114', '101', '101', '同意', '1452922843', '0');
INSERT INTO `message` VALUES ('115', '101', '101', '同意', '1452922843', '0');
INSERT INTO `message` VALUES ('116', '101', '101', '同意', '1452922843', '0');
INSERT INTO `message` VALUES ('117', '101', '101', '同意', '1452922843', '0');
INSERT INTO `message` VALUES ('118', '101', '101', '同意', '1452922843', '0');
INSERT INTO `message` VALUES ('119', '101', '101', '同意', '1452922843', '0');
INSERT INTO `message` VALUES ('120', '101', '101', '同意', '1452922843', '0');
INSERT INTO `message` VALUES ('121', '101', '101', '同意', '1452922843', '0');
INSERT INTO `message` VALUES ('122', '101', '101', '同意', '1452922843', '0');
INSERT INTO `message` VALUES ('123', '101', '101', '', '1452922884', '0');
INSERT INTO `message` VALUES ('124', '101', '101', '', '1452922884', '0');
INSERT INTO `message` VALUES ('125', '101', '101', '', '1452922979', '0');
INSERT INTO `message` VALUES ('126', '101', '101', '', '1452922979', '0');
INSERT INTO `message` VALUES ('127', '101', '101', '', '1452923000', '0');
INSERT INTO `message` VALUES ('128', '101', '101', '', '1452923000', '0');
INSERT INTO `message` VALUES ('129', '101', '101', '', '1452923012', '0');
INSERT INTO `message` VALUES ('130', '101', '101', '', '1452923012', '0');
INSERT INTO `message` VALUES ('131', '101', '101', '', '1452923022', '0');
INSERT INTO `message` VALUES ('132', '101', '101', '', '1452923022', '0');
INSERT INTO `message` VALUES ('133', '101', '101', '', '1452923036', '0');
INSERT INTO `message` VALUES ('134', '101', '101', '', '1452923036', '0');
INSERT INTO `message` VALUES ('135', '101', '101', '', '1452923036', '0');
INSERT INTO `message` VALUES ('136', '101', '101', '', '1452923036', '0');
INSERT INTO `message` VALUES ('137', '101', '101', '', '1452923036', '0');
INSERT INTO `message` VALUES ('138', '101', '101', '', '1452923036', '0');
INSERT INTO `message` VALUES ('139', '101', '101', '', '1452923036', '0');
INSERT INTO `message` VALUES ('140', '101', '101', '', '1452923036', '0');
INSERT INTO `message` VALUES ('141', '101', '101', '', '1452923036', '0');
INSERT INTO `message` VALUES ('142', '101', '101', '', '1452923036', '0');
INSERT INTO `message` VALUES ('143', '101', '101', '', '1452923036', '0');
INSERT INTO `message` VALUES ('144', '101', '101', '', '1452923036', '0');
INSERT INTO `message` VALUES ('145', '101', '101', '', '1452923036', '0');
INSERT INTO `message` VALUES ('146', '101', '101', '', '1452923036', '0');
INSERT INTO `message` VALUES ('147', '101', '101', '', '1452923036', '0');
INSERT INTO `message` VALUES ('148', '101', '101', '', '1452923048', '0');
INSERT INTO `message` VALUES ('149', '101', '101', '', '1452923048', '0');
INSERT INTO `message` VALUES ('150', '101', '101', '', '1452923048', '0');
INSERT INTO `message` VALUES ('151', '101', '101', '', '1452923048', '0');
INSERT INTO `message` VALUES ('152', '101', '101', '', '1452923048', '0');
INSERT INTO `message` VALUES ('153', '101', '101', '', '1452923048', '0');
INSERT INTO `message` VALUES ('154', '101', '101', '', '1452923048', '0');
INSERT INTO `message` VALUES ('155', '101', '101', '', '1452923048', '0');
INSERT INTO `message` VALUES ('156', '101', '101', '', '1452923048', '0');
INSERT INTO `message` VALUES ('157', '101', '230', '', '1452923048', '0');
INSERT INTO `message` VALUES ('158', '101', '230', '', '1452923048', '0');
INSERT INTO `message` VALUES ('159', '101', '230', '', '1452923048', '0');
INSERT INTO `message` VALUES ('160', '101', '230', '', '1452923048', '0');
INSERT INTO `message` VALUES ('161', '101', '230', '', '1452923048', '0');
INSERT INTO `message` VALUES ('162', '101', '230', '', '1452923048', '0');
INSERT INTO `message` VALUES ('163', '101', '101', '', '1452923052', '0');
INSERT INTO `message` VALUES ('164', '101', '101', '', '1452923052', '0');
INSERT INTO `message` VALUES ('165', '101', '101', '', '1452923052', '0');
INSERT INTO `message` VALUES ('166', '101', '101', '', '1452923052', '0');
INSERT INTO `message` VALUES ('167', '101', '101', '', '1452923052', '0');
INSERT INTO `message` VALUES ('168', '101', '101', '', '1452923052', '0');
INSERT INTO `message` VALUES ('169', '101', '101', '', '1452923052', '0');
INSERT INTO `message` VALUES ('170', '101', '101', '', '1452923052', '0');
INSERT INTO `message` VALUES ('171', '101', '101', '', '1452923052', '0');
INSERT INTO `message` VALUES ('172', '101', '230', '', '1452923052', '0');
INSERT INTO `message` VALUES ('173', '101', '230', '', '1452923052', '0');
INSERT INTO `message` VALUES ('174', '101', '230', '', '1452923052', '0');
INSERT INTO `message` VALUES ('175', '101', '230', '', '1452923052', '0');
INSERT INTO `message` VALUES ('176', '101', '230', '', '1452923052', '0');
INSERT INTO `message` VALUES ('177', '101', '230', '', '1452923052', '0');
INSERT INTO `message` VALUES ('178', '101', '101', '', '1452923179', '0');
INSERT INTO `message` VALUES ('179', '101', '101', '', '1452923179', '0');
INSERT INTO `message` VALUES ('180', '101', '101', '', '1452923179', '0');
INSERT INTO `message` VALUES ('181', '101', '101', '', '1452923179', '0');
INSERT INTO `message` VALUES ('182', '101', '101', '', '1452923179', '0');
INSERT INTO `message` VALUES ('183', '101', '101', '', '1452923179', '0');
INSERT INTO `message` VALUES ('184', '101', '101', '', '1452923179', '0');
INSERT INTO `message` VALUES ('185', '101', '101', '', '1452923179', '0');
INSERT INTO `message` VALUES ('186', '101', '101', '', '1452923179', '0');
INSERT INTO `message` VALUES ('187', '101', '230', '', '1452923179', '0');
INSERT INTO `message` VALUES ('188', '101', '230', '', '1452923179', '0');
INSERT INTO `message` VALUES ('189', '101', '230', '', '1452923179', '0');
INSERT INTO `message` VALUES ('190', '101', '230', '', '1452923179', '0');
INSERT INTO `message` VALUES ('191', '101', '230', '', '1452923179', '0');
INSERT INTO `message` VALUES ('192', '101', '230', '', '1452923179', '0');
INSERT INTO `message` VALUES ('193', '101', '230', '', '1452923186', '0');
INSERT INTO `message` VALUES ('194', '101', '230', '', '1452923186', '0');
INSERT INTO `message` VALUES ('195', '101', '230', '', '1452923186', '0');
INSERT INTO `message` VALUES ('196', '101', '230', '', '1452923186', '0');
INSERT INTO `message` VALUES ('197', '101', '230', '', '1452923186', '0');
INSERT INTO `message` VALUES ('198', '101', '230', '', '1452923186', '0');
INSERT INTO `message` VALUES ('199', '101', '101', '', '1452923186', '0');
INSERT INTO `message` VALUES ('200', '101', '101', '', '1452923186', '0');
INSERT INTO `message` VALUES ('201', '101', '230', '', '1452923186', '0');
INSERT INTO `message` VALUES ('202', '101', '230', '', '1452923186', '0');
INSERT INTO `message` VALUES ('203', '101', '230', '', '1452923186', '0');
INSERT INTO `message` VALUES ('204', '101', '230', '', '1452923186', '0');
INSERT INTO `message` VALUES ('205', '101', '230', '', '1452923186', '0');
INSERT INTO `message` VALUES ('206', '101', '230', '', '1452923186', '0');
INSERT INTO `message` VALUES ('207', '101', '230', '', '1452923186', '0');
INSERT INTO `message` VALUES ('208', '101', '101', '', '1452923513', '0');
INSERT INTO `message` VALUES ('209', '101', '101', '', '1452923513', '0');
INSERT INTO `message` VALUES ('210', '101', '101', '564664665', '1452936000', '0');
INSERT INTO `message` VALUES ('211', '101', '101', '564664665', '1452936000', '0');
INSERT INTO `message` VALUES ('212', '101', '101', '', '1453256385', '0');
INSERT INTO `message` VALUES ('213', '101', '101', '', '1453256385', '0');
INSERT INTO `message` VALUES ('214', '101', '101', '', '1453256385', '0');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_content` varchar(200) DEFAULT NULL COMMENT '新闻内容',
  `publisher_id` int(11) DEFAULT NULL COMMENT '发布人',
  `publish_time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='新闻';

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '\r\n', '101', '1336142650');
INSERT INTO `news` VALUES ('2', '\r\n\r\n', '101', '1336142655');
INSERT INTO `news` VALUES ('3', '没有公告!', '101', '1336209055');
INSERT INTO `news` VALUES ('4', '暂无公告\r\n', '101', '1336221533');
INSERT INTO `news` VALUES ('5', '明天有一场重大会议，请大家准时参加!', '34', '23424');
INSERT INTO `news` VALUES ('6', '美国爆炸了！\r\n\r\n\r\n', '225', '1336620194');
INSERT INTO `news` VALUES ('7', '复仇者联盟\r\n\r\n\r\n', '101', '1336643694');
INSERT INTO `news` VALUES ('8', '<script>alert(\"猛力说：我错了!@@!\"</script>\r\n\r\n\r\n\r\n', '101', '1336737063');
INSERT INTO `news` VALUES ('9', '中国和菲律宾开战了！\r\n\r\n\r\n\r\n', '101', '1336737147');
INSERT INTO `news` VALUES ('10', '保卫黄岩岛！\r\n\r\n\r\n\r\n\r\n', '101', '1337135648');
INSERT INTO `news` VALUES ('11', '保卫黄岩岛123！\r\n', '101', '1337137806');
INSERT INTO `news` VALUES ('12', '保卫黄岩岛,达到菲律宾~！\r\n\r\n', '101', '1337179427');
INSERT INTO `news` VALUES ('13', '保卫黄岩岛, 打倒菲律宾~！\r\n\r\n\r\n', '101', '1337220745');
INSERT INTO `news` VALUES ('14', '保卫~\r\n\r\n\r\n\r\n', '101', '1337231468');
INSERT INTO `news` VALUES ('15', '欢迎访问中建地产绿色产品线研发数据平台！\r\n\r\n\r\n\r\n', '101', '1337734434');
INSERT INTO `news` VALUES ('16', '欢迎访问中建地产绿色产品线研发数据平台！（内部测试）\r\n\r\n\r\n\r\n\r\n', '101', '1337739930');
INSERT INTO `news` VALUES ('17', '欢迎访问中建七局族库系统，系统已经上线，欢迎测试！\r\n\r\n\r\n\r\n\r\n', '231', '1452829743');
INSERT INTO `news` VALUES ('18', '欢迎访问中建七局族库系统，系统已经上线，欢迎测试！！！！！！\r\n\r\n\r\n\r\n\r\n\r\n', '101', '1452936677');

-- ----------------------------
-- Table structure for owlentity
-- ----------------------------
DROP TABLE IF EXISTS `owlentity`;
CREATE TABLE `owlentity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity` varchar(100) NOT NULL,
  `file_id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `desc` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of owlentity
-- ----------------------------

-- ----------------------------
-- Table structure for owlres
-- ----------------------------
DROP TABLE IF EXISTS `owlres`;
CREATE TABLE `owlres` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fileid` int(11) DEFAULT NULL,
  `individual` varchar(100) DEFAULT NULL,
  `type` varchar(100) DEFAULT NULL,
  `data-name` varchar(100) DEFAULT NULL,
  `data-value` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of owlres
-- ----------------------------

-- ----------------------------
-- Table structure for package
-- ----------------------------
DROP TABLE IF EXISTS `package`;
CREATE TABLE `package` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL COMMENT '上传用户',
  `status` int(11) DEFAULT NULL COMMENT '审核状态：已通过(1),正在审核(0),拒绝(-1)',
  `upload_time` datetime DEFAULT NULL COMMENT '上传时间',
  `front_img` varchar(100) DEFAULT NULL COMMENT '封面图路径',
  `project_id` int(11) DEFAULT NULL COMMENT '所属项目',
  `excel_info` varchar(8000) DEFAULT NULL COMMENT '关于本文件包的介绍信息，使用三斜杠（///）将各部分信息串联起来，组成一个字符串',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='上传文件包、审核、统计、归档';

-- ----------------------------
-- Records of package
-- ----------------------------

-- ----------------------------
-- Table structure for pointconfig
-- ----------------------------
DROP TABLE IF EXISTS `pointconfig`;
CREATE TABLE `pointconfig` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `addUserPoint` int(11) DEFAULT NULL,
  `uploadPoint` int(11) DEFAULT NULL,
  `downloadPoint` int(11) DEFAULT NULL,
  `returnPoint` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pointconfig
-- ----------------------------
INSERT INTO `pointconfig` VALUES ('1', '200', '10', '10', '10');

-- ----------------------------
-- Table structure for project
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `project_name` varchar(100) DEFAULT NULL,
  `company_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='项目';

-- ----------------------------
-- Records of project
-- ----------------------------
INSERT INTO `project` VALUES ('1', '红杉溪谷', '1');
INSERT INTO `project` VALUES ('2', '大观天下', '1');
INSERT INTO `project` VALUES ('3', '滨海一号', '1');
INSERT INTO `project` VALUES ('4', '开元壹号', '10');
INSERT INTO `project` VALUES ('5', '麓山和苑', '1');
INSERT INTO `project` VALUES ('6', '汤逊湖一号', '1');
INSERT INTO `project` VALUES ('7', '中建项目', '14');
INSERT INTO `project` VALUES ('8', '红强项目', '15');
INSERT INTO `project` VALUES ('9', '哈哈123', '1');
INSERT INTO `project` VALUES ('11', '青年创业大厦', '15');

-- ----------------------------
-- Table structure for quota
-- ----------------------------
DROP TABLE IF EXISTS `quota`;
CREATE TABLE `quota` (
  `ID` int(11) NOT NULL DEFAULT '0',
  `BlockSeq` int(11) DEFAULT NULL,
  `BlockName` varchar(255) DEFAULT NULL,
  `SubSeq` int(11) DEFAULT NULL,
  `SubName` varchar(255) DEFAULT NULL,
  `DivisionSeq` varchar(50) DEFAULT NULL,
  `DivisionName` varchar(20) DEFAULT NULL,
  `QuotaSeq` varchar(20) DEFAULT NULL,
  `QuotaName` varchar(100) DEFAULT NULL,
  `unit` varchar(20) DEFAULT NULL,
  `OverallPrice` double DEFAULT NULL,
  `LaborPrice` double DEFAULT NULL,
  `MaterialPrice` double DEFAULT NULL,
  `MachinePrice` double DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of quota
-- ----------------------------

-- ----------------------------
-- Table structure for statistics
-- ----------------------------
DROP TABLE IF EXISTS `statistics`;
CREATE TABLE `statistics` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `access_time` int(11) unsigned DEFAULT NULL COMMENT '开始时间',
  `user_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=373053 DEFAULT CHARSET=utf8 COMMENT='访问量统计';

-- ----------------------------
-- Records of statistics
-- ----------------------------
INSERT INTO `statistics` VALUES ('372891', '1450403911', '101');
INSERT INTO `statistics` VALUES ('372892', '1450490112', '101');
INSERT INTO `statistics` VALUES ('372893', '1450501047', '101');
INSERT INTO `statistics` VALUES ('372894', '1450509974', '101');
INSERT INTO `statistics` VALUES ('372895', '1450578960', '101');
INSERT INTO `statistics` VALUES ('372896', '1450748121', '101');
INSERT INTO `statistics` VALUES ('372897', '1450937565', '101');
INSERT INTO `statistics` VALUES ('372898', '1451108178', '101');
INSERT INTO `statistics` VALUES ('372899', '1451185581', '101');
INSERT INTO `statistics` VALUES ('372900', '1451187044', '101');
INSERT INTO `statistics` VALUES ('372901', '1451187875', '101');
INSERT INTO `statistics` VALUES ('372902', '1451188003', '101');
INSERT INTO `statistics` VALUES ('372903', '1451191914', '101');
INSERT INTO `statistics` VALUES ('372904', '1451191932', '101');
INSERT INTO `statistics` VALUES ('372905', '1451191942', '101');
INSERT INTO `statistics` VALUES ('372906', '1451192006', '101');
INSERT INTO `statistics` VALUES ('372907', '1451192072', '101');
INSERT INTO `statistics` VALUES ('372908', '1451192141', '101');
INSERT INTO `statistics` VALUES ('372909', '1451192174', '101');
INSERT INTO `statistics` VALUES ('372910', '1451192178', '101');
INSERT INTO `statistics` VALUES ('372911', '1451192226', '101');
INSERT INTO `statistics` VALUES ('372912', '1451192233', '101');
INSERT INTO `statistics` VALUES ('372913', '1451204492', '101');
INSERT INTO `statistics` VALUES ('372914', '1451204594', '101');
INSERT INTO `statistics` VALUES ('372915', '1451204624', '101');
INSERT INTO `statistics` VALUES ('372916', '1451204653', '101');
INSERT INTO `statistics` VALUES ('372917', '1451204701', '101');
INSERT INTO `statistics` VALUES ('372918', '1451204772', '101');
INSERT INTO `statistics` VALUES ('372919', '1451204838', '101');
INSERT INTO `statistics` VALUES ('372920', '1451204948', '101');
INSERT INTO `statistics` VALUES ('372921', '1451205035', '101');
INSERT INTO `statistics` VALUES ('372922', '1451205042', '101');
INSERT INTO `statistics` VALUES ('372923', '1451205079', '101');
INSERT INTO `statistics` VALUES ('372924', '1451205117', '101');
INSERT INTO `statistics` VALUES ('372925', '1451205139', '101');
INSERT INTO `statistics` VALUES ('372926', '1451205289', '101');
INSERT INTO `statistics` VALUES ('372927', '1451205294', '101');
INSERT INTO `statistics` VALUES ('372928', '1451205351', '101');
INSERT INTO `statistics` VALUES ('372929', '1451205393', '101');
INSERT INTO `statistics` VALUES ('372930', '1451205445', '101');
INSERT INTO `statistics` VALUES ('372931', '1451205482', '101');
INSERT INTO `statistics` VALUES ('372932', '1451205489', '101');
INSERT INTO `statistics` VALUES ('372933', '1451205500', '101');
INSERT INTO `statistics` VALUES ('372934', '1451206752', '101');
INSERT INTO `statistics` VALUES ('372935', '1451207331', '101');
INSERT INTO `statistics` VALUES ('372936', '1451208230', '101');
INSERT INTO `statistics` VALUES ('372937', '1451208567', '101');
INSERT INTO `statistics` VALUES ('372938', '1451211536', '101');
INSERT INTO `statistics` VALUES ('372939', '1451212179', '101');
INSERT INTO `statistics` VALUES ('372940', '1451212500', '101');
INSERT INTO `statistics` VALUES ('372941', '1451217404', '101');
INSERT INTO `statistics` VALUES ('372942', '1451217465', '230');
INSERT INTO `statistics` VALUES ('372943', '1451217841', '230');
INSERT INTO `statistics` VALUES ('372944', '1451218202', '101');
INSERT INTO `statistics` VALUES ('372945', '1451218266', '101');
INSERT INTO `statistics` VALUES ('372946', '1451219058', '230');
INSERT INTO `statistics` VALUES ('372947', '1451220716', '101');
INSERT INTO `statistics` VALUES ('372948', '1451221477', '101');
INSERT INTO `statistics` VALUES ('372949', '1451221728', '101');
INSERT INTO `statistics` VALUES ('372950', '1451222700', '230');
INSERT INTO `statistics` VALUES ('372951', '1451441245', '230');
INSERT INTO `statistics` VALUES ('372952', '1451524825', '230');
INSERT INTO `statistics` VALUES ('372953', '1452563325', '101');
INSERT INTO `statistics` VALUES ('372954', '1452563502', '101');
INSERT INTO `statistics` VALUES ('372955', '1452564522', '230');
INSERT INTO `statistics` VALUES ('372956', '1452564731', '230');
INSERT INTO `statistics` VALUES ('372957', '1452565949', '230');
INSERT INTO `statistics` VALUES ('372958', '1452566101', '101');
INSERT INTO `statistics` VALUES ('372959', '1452567210', '101');
INSERT INTO `statistics` VALUES ('372960', '1452567239', '101');
INSERT INTO `statistics` VALUES ('372961', '1452567509', '101');
INSERT INTO `statistics` VALUES ('372962', '1452567522', '230');
INSERT INTO `statistics` VALUES ('372963', '1452579601', '230');
INSERT INTO `statistics` VALUES ('372964', '1452653639', '230');
INSERT INTO `statistics` VALUES ('372965', '1452654094', '101');
INSERT INTO `statistics` VALUES ('372966', '1452739030', '230');
INSERT INTO `statistics` VALUES ('372967', '1452739662', '230');
INSERT INTO `statistics` VALUES ('372968', '1452739876', '230');
INSERT INTO `statistics` VALUES ('372969', '1452739908', '230');
INSERT INTO `statistics` VALUES ('372970', '1452739923', '101');
INSERT INTO `statistics` VALUES ('372971', '1452739972', '101');
INSERT INTO `statistics` VALUES ('372972', '1452740799', '230');
INSERT INTO `statistics` VALUES ('372973', '1452742258', '101');
INSERT INTO `statistics` VALUES ('372974', '1452754609', '230');
INSERT INTO `statistics` VALUES ('372975', '1452755095', '230');
INSERT INTO `statistics` VALUES ('372976', '1452760816', '101');
INSERT INTO `statistics` VALUES ('372977', '1452762015', '101');
INSERT INTO `statistics` VALUES ('372978', '1452762158', '230');
INSERT INTO `statistics` VALUES ('372979', '1452762201', '101');
INSERT INTO `statistics` VALUES ('372980', '1452763335', '101');
INSERT INTO `statistics` VALUES ('372981', '1452765664', '101');
INSERT INTO `statistics` VALUES ('372982', '1452765846', '101');
INSERT INTO `statistics` VALUES ('372983', '1452774916', '101');
INSERT INTO `statistics` VALUES ('372984', '1452776178', '101');
INSERT INTO `statistics` VALUES ('372985', '1452779687', '101');
INSERT INTO `statistics` VALUES ('372986', '1452819717', '101');
INSERT INTO `statistics` VALUES ('372987', '1452822873', '101');
INSERT INTO `statistics` VALUES ('372988', '1452822919', '101');
INSERT INTO `statistics` VALUES ('372989', '1452822963', '101');
INSERT INTO `statistics` VALUES ('372990', '1452823003', '101');
INSERT INTO `statistics` VALUES ('372991', '1452823182', '101');
INSERT INTO `statistics` VALUES ('372992', '1452824996', '101');
INSERT INTO `statistics` VALUES ('372993', '1452825373', '101');
INSERT INTO `statistics` VALUES ('372994', '1452825427', '230');
INSERT INTO `statistics` VALUES ('372995', '1452825460', '101');
INSERT INTO `statistics` VALUES ('372996', '1452825817', '231');
INSERT INTO `statistics` VALUES ('372997', '1452825997', '231');
INSERT INTO `statistics` VALUES ('372998', '1452826269', '231');
INSERT INTO `statistics` VALUES ('372999', '1452843764', '101');
INSERT INTO `statistics` VALUES ('373000', '1452853979', '101');
INSERT INTO `statistics` VALUES ('373001', '1452906221', '231');
INSERT INTO `statistics` VALUES ('373002', '1452906400', '230');
INSERT INTO `statistics` VALUES ('373003', '1452906454', '101');
INSERT INTO `statistics` VALUES ('373004', '1452924116', '231');
INSERT INTO `statistics` VALUES ('373005', '1452934423', '101');
INSERT INTO `statistics` VALUES ('373006', '1452934605', '231');
INSERT INTO `statistics` VALUES ('373007', '1452934611', '231');
INSERT INTO `statistics` VALUES ('373008', '1452934785', '231');
INSERT INTO `statistics` VALUES ('373009', '1452934898', '232');
INSERT INTO `statistics` VALUES ('373010', '1452935039', '101');
INSERT INTO `statistics` VALUES ('373011', '1452935901', '101');
INSERT INTO `statistics` VALUES ('373012', '1452936102', '232');
INSERT INTO `statistics` VALUES ('373013', '1452936169', '231');
INSERT INTO `statistics` VALUES ('373014', '1452936360', '231');
INSERT INTO `statistics` VALUES ('373015', '1452936754', '231');
INSERT INTO `statistics` VALUES ('373016', '1452937026', '231');
INSERT INTO `statistics` VALUES ('373017', '1452937090', '231');
INSERT INTO `statistics` VALUES ('373018', '1453079335', '101');
INSERT INTO `statistics` VALUES ('373019', '1453085172', '101');
INSERT INTO `statistics` VALUES ('373020', '1453095773', '101');
INSERT INTO `statistics` VALUES ('373021', '1453256323', '101');
INSERT INTO `statistics` VALUES ('373022', '1453256831', '234');
INSERT INTO `statistics` VALUES ('373023', '1453598654', '101');
INSERT INTO `statistics` VALUES ('373024', '1453599285', '101');
INSERT INTO `statistics` VALUES ('373025', '1453599686', '101');
INSERT INTO `statistics` VALUES ('373026', '1453599843', '101');
INSERT INTO `statistics` VALUES ('373027', '1453599886', '101');
INSERT INTO `statistics` VALUES ('373028', '1453600702', '101');
INSERT INTO `statistics` VALUES ('373029', '1453600721', '101');
INSERT INTO `statistics` VALUES ('373030', '1453601066', '101');
INSERT INTO `statistics` VALUES ('373031', '1453602085', '101');
INSERT INTO `statistics` VALUES ('373032', '1453602096', '101');
INSERT INTO `statistics` VALUES ('373033', '1453602152', '101');
INSERT INTO `statistics` VALUES ('373034', '1453602199', '101');
INSERT INTO `statistics` VALUES ('373035', '1453602231', '101');
INSERT INTO `statistics` VALUES ('373036', '1453602247', '101');
INSERT INTO `statistics` VALUES ('373037', '1453602258', '101');
INSERT INTO `statistics` VALUES ('373038', '1453602459', '101');
INSERT INTO `statistics` VALUES ('373039', '1453602795', '101');
INSERT INTO `statistics` VALUES ('373040', '1453602859', '101');
INSERT INTO `statistics` VALUES ('373041', '1453603041', '101');
INSERT INTO `statistics` VALUES ('373042', '1453603092', '101');
INSERT INTO `statistics` VALUES ('373043', '1453603135', '101');
INSERT INTO `statistics` VALUES ('373044', '1453606215', '101');
INSERT INTO `statistics` VALUES ('373045', '1453606282', '101');
INSERT INTO `statistics` VALUES ('373046', '1453606377', '101');
INSERT INTO `statistics` VALUES ('373047', '1453606579', '101');
INSERT INTO `statistics` VALUES ('373048', '1453606995', '101');
INSERT INTO `statistics` VALUES ('373049', '1453607013', '101');
INSERT INTO `statistics` VALUES ('373050', '1453607472', '101');
INSERT INTO `statistics` VALUES ('373051', '1530167564', '101');
INSERT INTO `statistics` VALUES ('373052', '1530254488', '101');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) DEFAULT NULL COMMENT '角色',
  `com_id` int(11) DEFAULT NULL COMMENT '所在分公司',
  `project_id` int(11) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL COMMENT '所在部门',
  `username` varchar(30) DEFAULT NULL COMMENT '用户名，使用真实姓名',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `point` bigint(11) NOT NULL DEFAULT '100',
  `download_group_id` int(11) DEFAULT NULL,
  `display_name` varchar(30) DEFAULT NULL COMMENT '真实姓名',
  `upic` varchar(255) DEFAULT NULL COMMENT '头像',
  `auth` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=317 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('101', '18', '1', null, '1', 'whq123', 'e10adc3949ba59abbe56e057f20f883e', '18023', '7', 'whq123', '/header/20180706/57a6b027528b96a4236098345bd33bc4.jpg', '0');
INSERT INTO `user` VALUES ('202', '1', '3', null, '3', '曹顺明', '202cb962ac59075b964b07152d234b70', '100', '7', null, null, '0');
INSERT INTO `user` VALUES ('208', '1', '3', null, '2', '蔡淼', 'e10adc3949ba59abbe56e057f20f883e', '100', '8', null, null, '0');
INSERT INTO `user` VALUES ('219', '21', '14', null, '13', '中建上传人', 'e10adc3949ba59abbe56e057f20f883e', '200', '9', null, null, '0');
INSERT INTO `user` VALUES ('220', '20', '14', null, '13', '中建审核人', 'e10adc3949ba59abbe56e057f20f883e', '100', '9', null, null, '0');
INSERT INTO `user` VALUES ('221', '22', '15', null, '14', '测试审核', 'e10adc3949ba59abbe56e057f20f883e', '100', '9', null, null, '0');
INSERT INTO `user` VALUES ('224', '23', '15', null, '14', '红强审核人', 'e10adc3949ba59abbe56e057f20f883e', '200', '9', null, null, '0');
INSERT INTO `user` VALUES ('225', '25', '1', null, '9', '国标企标检测员', 'e10adc3949ba59abbe56e057f20f883e', '200', '9', null, null, '0');
INSERT INTO `user` VALUES ('227', '18', '1', null, '1', '数字方案提交员', 'e10adc3949ba59abbe56e057f20f883e', '200', '9', null, null, '0');
INSERT INTO `user` VALUES ('228', '18', '1', null, '1', '数字方案审批员', 'e10adc3949ba59abbe56e057f20f883e', '1200', '9', null, null, '0');
INSERT INTO `user` VALUES ('229', '19', '1', null, '1', 'revit', 'e10adc3949ba59abbe56e057f20f883e', '920', '7', null, null, '0');
INSERT INTO `user` VALUES ('233', '18', '1', null, '4', '任海', 'e10adc3949ba59abbe56e057f20f883e', '100', '7', null, null, '0');
INSERT INTO `user` VALUES ('235', null, '17', null, null, '18614236252', 'e10adc3949ba59abbe56e057f20f883e', '100', null, '王玉林', null, '0');
INSERT INTO `user` VALUES ('237', null, '19', null, null, '15732136925', 'e10adc3949ba59abbe56e057f20f883e', '100', null, '汪振旭', '/header/20180710/3371c7696c091b5315f22464539b440a.jpg', '0');
INSERT INTO `user` VALUES ('239', null, '1', null, null, 'root', 'e10adc3949ba59abbe56e057f20f883e', '100', null, '超级管理员', '/header/20180712/5c4f6c97d8c590d712769c8dc9d684a1.png', '1');
INSERT INTO `user` VALUES ('244', null, '25', null, null, '16619711936', 'e10adc3949ba59abbe56e057f20f883e', '100', null, '地方', null, '0');
INSERT INTO `user` VALUES ('245', null, '26', null, null, '15612312344', 'e10adc3949ba59abbe56e057f20f883e', '100', null, '山东', null, '0');
INSERT INTO `user` VALUES ('305', null, '86', null, null, null, 'e10adc3949ba59abbe56e057f20f883e', '100', null, null, null, '0');
INSERT INTO `user` VALUES ('308', null, '136', null, null, '15139552575', '96e79218965eb72c92a549dd5a330112', '100', null, '王玉林', '/header/20180711/ffcb39315273c303a0aa5fdfb10e9c01.png', '1');
INSERT INTO `user` VALUES ('309', null, '137', null, null, '15638959894', 'e10adc3949ba59abbe56e057f20f883e', '100', null, '哈哈哈', null, '0');
INSERT INTO `user` VALUES ('312', null, '140', null, null, null, 'e10adc3949ba59abbe56e057f20f883e', '100', null, null, null, '0');
INSERT INTO `user` VALUES ('313', null, '141', null, null, '15638911111', 'e10adc3949ba59abbe56e057f20f883e', '100', null, '风管', null, '0');
INSERT INTO `user` VALUES ('314', null, '142', null, null, '16619729936', 'e10adc3949ba59abbe56e057f20f883e', '100', null, '哈哈啊哈', '/header/20180711/3cb0461e769c1f852f33735f6a53c88b.png', '0');
INSERT INTO `user` VALUES ('315', null, '143', null, null, '15652621909', 'fcea920f7412b5da7be0cf42b8c93759', '100', null, '达利园宝宝', '/header/20180712/882241fe1e03cdde9f55ac3efb8715fe.png', '0');
INSERT INTO `user` VALUES ('316', null, '144', null, null, '15652621909', 'e10adc3949ba59abbe56e057f20f883e', '100', null, '达利园宝宝', null, '0');

-- ----------------------------
-- Function structure for getChildLst
-- ----------------------------
DROP FUNCTION IF EXISTS `getChildLst`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `getChildLst`(rootId INT) RETURNS varchar(1000) CHARSET utf8
BEGIN DECLARE sTemp VARCHAR (1000); DECLARE sTempChd VARCHAR (1000); SET sTemp = '$'; SET sTempChd = cast(rootId AS CHAR); WHILE sTempChd IS NOT NULL DO SET sTemp = concat(sTemp, ',', sTempChd); SELECT group_concat(id) INTO sTempChd FROM category_test WHERE FIND_IN_SET(ParentId, sTempChd) > 0; END WHILE; RETURN sTemp; END
;;
DELIMITER ;
