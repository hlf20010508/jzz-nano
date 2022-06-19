/*
 Navicat Premium Data Transfer

 Source Server         : hlf01.site
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : 124.223.224.49:3306
 Source Schema         : jzz-nano

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 19/06/2022 17:16:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for culturalcreativel
-- ----------------------------
DROP TABLE IF EXISTS `culturalcreativel`;
CREATE TABLE `culturalcreativel` (
  `name` varchar(255) NOT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `imgs` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of culturalcreativel
-- ----------------------------
BEGIN;
INSERT INTO `culturalcreativel` VALUES ('安康市畅想网络科技有限公司', 'static/img/CulturalCreative/itemL/4/icon.jpg', 'static/img/CulturalCreative/itemL/4/1.jpg, static/img/CulturalCreative/itemL/4/2.jpg, static/img/CulturalCreative/itemL/4/3.jpg, static/img/CulturalCreative/itemL/4/4.jpg');
INSERT INTO `culturalcreativel` VALUES ('河北匠心文化传媒有限公司', 'static/img/CulturalCreative/itemL/2/icon.jpg', 'static/img/CulturalCreative/itemL/2/1.jpg, static/img/CulturalCreative/itemL/2/2.jpg, static/img/CulturalCreative/itemL/2/3.jpg, static/img/CulturalCreative/itemL/2/4.jpg');
INSERT INTO `culturalcreativel` VALUES ('环辰映像文化传媒有限公司', 'static/img/CulturalCreative/itemL/3/icon.jpg', 'static/img/CulturalCreative/itemL/3/1.jpg, static/img/CulturalCreative/itemL/3/2.jpg, static/img/CulturalCreative/itemL/3/3.jpg, static/img/CulturalCreative/itemL/3/4.jpg');
INSERT INTO `culturalcreativel` VALUES ('赣州福雷斯文化产业发展有限公司', 'static/img/CulturalCreative/itemL/1/icon.jpg', 'static/img/CulturalCreative/itemL/1/1.jpeg, static/img/CulturalCreative/itemL/1/2.png, static/img/CulturalCreative/itemL/1/3.jpeg, static/img/CulturalCreative/itemL/1/4.png');
COMMIT;

-- ----------------------------
-- Table structure for culturalcreativer
-- ----------------------------
DROP TABLE IF EXISTS `culturalcreativer`;
CREATE TABLE `culturalcreativer` (
  `name` varchar(255) NOT NULL,
  `authorName` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`name`,`authorName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of culturalcreativer
-- ----------------------------
BEGIN;
INSERT INTO `culturalcreativer` VALUES ('《图画展览会》钢琴演奏三维动画全流程', '广州维度动漫制作有限公司', 'static/img/CulturalCreative/itemR/3.jpg', '');
INSERT INTO `culturalcreativer` VALUES ('「久栖设计」三个孩子的阅读习惯从娃娃抓起，他们竟然把图书馆搬回了家', '北京久栖室内设计有限责任公司', 'static/img/CulturalCreative/itemR/1.jpg', '');
INSERT INTO `culturalcreativer` VALUES ('2018年度部分作品', '44719510', 'static/img/CulturalCreative/itemR/7.jpg', '');
INSERT INTO `culturalcreativer` VALUES ('仿实拍', '84561090', 'static/img/CulturalCreative/itemR/6.jpg', '');
INSERT INTO `culturalcreativer` VALUES ('天起世纪', '张耀宗--众信装饰', 'static/img/CulturalCreative/itemR/5.jpg', '');
INSERT INTO `culturalcreativer` VALUES ('效果图', '23521719', 'static/img/CulturalCreative/itemR/2.jpg', '');
INSERT INTO `culturalcreativer` VALUES ('风车 SU模型', '秦 သုံးအရောင်', 'static/img/CulturalCreative/itemR/4.jpg', '');
INSERT INTO `culturalcreativer` VALUES ('香守', '北京视野云科技发展有限公司', 'static/img/CulturalCreative/itemR/8.jpg', '');
COMMIT;

-- ----------------------------
-- Table structure for market2b
-- ----------------------------
DROP TABLE IF EXISTS `market2b`;
CREATE TABLE `market2b` (
  `name` varchar(255) NOT NULL,
  `time` varchar(20) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `contact` varchar(255) DEFAULT NULL,
  `unitPrice` float(15,2) DEFAULT NULL,
  `unit` varchar(20) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `company` varchar(255) NOT NULL,
  PRIMARY KEY (`name`,`company`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of market2b
-- ----------------------------
BEGIN;
INSERT INTO `market2b` VALUES ('寄予竹材 A2防火复合竹木饰面型材', '2022-02-18 19:34:24', 'static/img/market2b_images/recommend/1.jpg', '联系400-630-1551', '400-630-1551', 55.00, '吨', '中国上海黄浦区瑞金一路8号中城大楼7层', '寄予竹材');
INSERT INTO `market2b` VALUES ('寄予竹材 平面集成竹编', '2022-02-18 19:34:22', 'static/img/market2b_images/recommend/2.jpg', '联系400-630-1551', '400-630-1551', 15.00, '个', '中国上海黄浦区瑞金一路8号中城大楼7层', '寄予竹材');
INSERT INTO `market2b` VALUES ('摩索  方料，板材&刨切片，单板', '2022-02-18 19:34:24', 'static/img/market2b_images/recommend/4.jpg', 'MOSO® 单板主要用作板材贴面，将竹材压制贴在板材（比如 MDF 或刨花板）的两面。', '400-005-5503', 63.00, '平方米', '上海市闵行区联航路1818号红星国际大厦', '摩索');
INSERT INTO `market2b` VALUES ('摩索  方料，板材&刨切片，竹皮', '2022-02-18 19:34:24', 'static/img/market2b_images/recommend/3.jpg', 'MOSO® 竹皮具有各种尺寸,颜色和风格,可用不含甲醛的胶粘剂（E0 标准）,并经 FSC® 认证。MOSO® 竹皮主要供应 A 类产品（常规颜色）,并可在处理上尽量减少尺寸裁切的浪费。', '400-005-5503', 25.00, '平方米', '上海市闵行区联航路1818号红星国际大厦', '摩索');
COMMIT;

-- ----------------------------
-- Table structure for market2c
-- ----------------------------
DROP TABLE IF EXISTS `market2c`;
CREATE TABLE `market2c` (
  `name` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `price` float(15,2) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of market2c
-- ----------------------------
BEGIN;
INSERT INTO `market2c` VALUES ('便携式车载牙签筒', '/static/img/market2c_images/recommend/1/1.jpg', 168.00, NULL);
INSERT INTO `market2c` VALUES ('便携式随身茶叶筒', '/static/img/market2c_images/recommend/6/6.jpg', 268.00, NULL);
INSERT INTO `market2c` VALUES ('多功能托盘', '/static/img/market2c_images/recommend/4/4.jpg', 368.00, NULL);
INSERT INTO `market2c` VALUES ('实心竹戒尺', '/static/img/market2c_images/recommend/8/8.jpg', 599.00, NULL);
INSERT INTO `market2c` VALUES ('实心竹打火机', '/static/img/market2c_images/recommend/2/2.jpg', 128.00, NULL);
INSERT INTO `market2c` VALUES ('实心竹裁纸刀', '/static/img/market2c_images/recommend/5/5.jpg', 688.00, NULL);
INSERT INTO `market2c` VALUES ('简约笔筒', '/static/img/market2c_images/recommend/3/3.jpg', 1088.00, NULL);
INSERT INTO `market2c` VALUES ('老型珠手串', '/static/img/market2c_images/recommend/7/7.jpg', 48.00, NULL);
COMMIT;

-- ----------------------------
-- Table structure for market2c_pro
-- ----------------------------
DROP TABLE IF EXISTS `market2c_pro`;
CREATE TABLE `market2c_pro` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` float(15,2) DEFAULT NULL,
  `id_shop` int DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `imgs` text,
  `parameter` text,
  `description` text,
  `detailPicture` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of market2c_pro
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for marketnavi2b
-- ----------------------------
DROP TABLE IF EXISTS `marketnavi2b`;
CREATE TABLE `marketnavi2b` (
  `name` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `class` varchar(255) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of marketnavi2b
-- ----------------------------
BEGIN;
INSERT INTO `marketnavi2b` VALUES ('A2防火复合竹木饰面型材', '', '复合竹材');
INSERT INTO `marketnavi2b` VALUES ('A2防火复合竹木饰面板', '', '复合竹材');
INSERT INTO `marketnavi2b` VALUES ('侧压-本色', '', '竹皮');
INSERT INTO `marketnavi2b` VALUES ('侧压-碳化', '', '竹皮');
INSERT INTO `marketnavi2b` VALUES ('平压-本色', '', '竹皮');
INSERT INTO `marketnavi2b` VALUES ('平压-碳化', '', '竹皮');
INSERT INTO `marketnavi2b` VALUES ('平面集成竹编', '', '竹编');
INSERT INTO `marketnavi2b` VALUES ('曲面集成竹编', '', '竹编');
INSERT INTO `marketnavi2b` VALUES ('片炭', '', '竹炭');
INSERT INTO `marketnavi2b` VALUES ('碎炭', '', '竹炭');
INSERT INTO `marketnavi2b` VALUES ('筒炭', '', '竹炭');
INSERT INTO `marketnavi2b` VALUES ('粉末炭', '', '竹炭');
INSERT INTO `marketnavi2b` VALUES ('耐候重竹', '', '重竹');
INSERT INTO `marketnavi2b` VALUES ('耐候集成竹饰面', '', '复合竹材');
INSERT INTO `marketnavi2b` VALUES ('集成竹编条单元', '', '竹编');
INSERT INTO `marketnavi2b` VALUES ('颗粒炭', '', '竹炭');
INSERT INTO `marketnavi2b` VALUES ('高密度重竹-巧克力色', '', '重竹');
INSERT INTO `marketnavi2b` VALUES ('高密度重竹-本色', '', '重竹');
INSERT INTO `marketnavi2b` VALUES ('高密度重竹-碳化', '', '重竹');
INSERT INTO `marketnavi2b` VALUES ('高密度重竹-虎纹', '', '重竹');
COMMIT;

-- ----------------------------
-- Table structure for marketnavi2c
-- ----------------------------
DROP TABLE IF EXISTS `marketnavi2c`;
CREATE TABLE `marketnavi2c` (
  `name` varchar(255) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `class` varchar(255) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of marketnavi2c
-- ----------------------------
BEGIN;
INSERT INTO `marketnavi2c` VALUES ('宣纸刀', '', '居家日用');
INSERT INTO `marketnavi2c` VALUES ('小竹珠手串', '', '手串');
INSERT INTO `marketnavi2c` VALUES ('打火机', '', '居家日用');
INSERT INTO `marketnavi2c` VALUES ('指尖陀螺', '', '扳指');
INSERT INTO `marketnavi2c` VALUES ('文扳指', '', '扳指');
INSERT INTO `marketnavi2c` VALUES ('牙签盒', '', '居家日用');
INSERT INTO `marketnavi2c` VALUES ('直切手串', '', '手串');
INSERT INTO `marketnavi2c` VALUES ('竹扇', '', '竹根雕工艺');
INSERT INTO `marketnavi2c` VALUES ('竹根手串', '', '手串');
INSERT INTO `marketnavi2c` VALUES ('竹梳', '', '竹根雕工艺');
INSERT INTO `marketnavi2c` VALUES ('竹筒珠手串', '', '手串');
INSERT INTO `marketnavi2c` VALUES ('竹箫', '', '竹根雕工艺');
INSERT INTO `marketnavi2c` VALUES ('笔筒', '', '居家日用');
INSERT INTO `marketnavi2c` VALUES ('紫竹手串', '', '手串');
INSERT INTO `marketnavi2c` VALUES ('老型珠手串', '', '手串');
INSERT INTO `marketnavi2c` VALUES ('茶具', '', '茶具');
INSERT INTO `marketnavi2c` VALUES ('茶叶罐', '', '茶具');
INSERT INTO `marketnavi2c` VALUES ('茶饼刀', '', '茶具');
INSERT INTO `marketnavi2c` VALUES ('转运珠手串', '', '手串');
INSERT INTO `marketnavi2c` VALUES ('雅竹扳指', '', '扳指');
INSERT INTO `marketnavi2c` VALUES ('香薰', '', '居家日用');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
