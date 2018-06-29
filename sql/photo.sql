/*
 Navicat Premium Data Transfer

 Source Server         : photo
 Source Server Type    : MySQL
 Source Server Version : 50720
 Source Host           : localhost:3306
 Source Schema         : photo

 Target Server Type    : MySQL
 Target Server Version : 50720
 File Encoding         : 65001

 Date: 20/06/2018 19:21:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createTime` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES (1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2018-06-10');

-- ----------------------------
-- Table structure for t_attachment
-- ----------------------------
DROP TABLE IF EXISTS `t_attachment`;
CREATE TABLE `t_attachment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `worksId` int(11) NOT NULL,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createTime` date NULL DEFAULT NULL,
  `status` tinyint(4) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `worksId`(`worksId`) USING BTREE,
  CONSTRAINT `t_attachment_ibfk_1` FOREIGN KEY (`worksId`) REFERENCES `t_works` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_attachment
-- ----------------------------
INSERT INTO `t_attachment` VALUES (6, 5, '/uploads/images/work (1).jpg', '2018-06-07', 0);
INSERT INTO `t_attachment` VALUES (10, 6, '/uploads/images/work (1).jpg', '2018-06-07', 0);
INSERT INTO `t_attachment` VALUES (11, 7, '/uploads/images/work (5).jpg', '2018-06-07', 0);
INSERT INTO `t_attachment` VALUES (12, 8, '/uploads/images/work (6).jpg', '2018-06-07', 0);
INSERT INTO `t_attachment` VALUES (13, 9, '/uploads/images/work (4).jpg', '2018-06-07', 0);
INSERT INTO `t_attachment` VALUES (14, 10, '/uploads/images/work (3).jpg', '2018-06-07', 0);
INSERT INTO `t_attachment` VALUES (15, 11, '/uploads/images/work (2).jpg', '2018-06-07', 0);
INSERT INTO `t_attachment` VALUES (16, 12, '/uploads/images/work (1).jpg', '2018-06-07', 0);

-- ----------------------------
-- Table structure for t_banner
-- ----------------------------
DROP TABLE IF EXISTS `t_banner`;
CREATE TABLE `t_banner`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createTime` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_banner
-- ----------------------------
INSERT INTO `t_banner` VALUES (14, '首页图1', '/uploads/banner/banner1.jpg', '2018-06-08');
INSERT INTO `t_banner` VALUES (15, '首页图2', '/uploads/banner/banner2.jpg', '2018-06-08');
INSERT INTO `t_banner` VALUES (16, '首页图3', '/uploads/banner/banner3.jpg', '2018-06-08');

-- ----------------------------
-- Table structure for t_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `photographerId` int(11) NOT NULL,
  `comment` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `createTime` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `userId`(`userId`) USING BTREE,
  INDEX `photographerId`(`photographerId`) USING BTREE,
  CONSTRAINT `t_comment_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `t_user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `t_comment_ibfk_2` FOREIGN KEY (`photographerId`) REFERENCES `t_photographer` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_comment
-- ----------------------------
INSERT INTO `t_comment` VALUES (8, 15, 13, '摄影师非常热情，很满意的服务。', '2018-06-12');

-- ----------------------------
-- Table structure for t_infomation
-- ----------------------------
DROP TABLE IF EXISTS `t_infomation`;
CREATE TABLE `t_infomation`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createTime` date NULL DEFAULT NULL,
  `status` tinyint(4) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_infomation
-- ----------------------------
INSERT INTO `t_infomation` VALUES (12, '多彩的童年', '春光灿烂的日子', '/uploads/info/info1.jpg', '2018-06-06', 0);
INSERT INTO `t_infomation` VALUES (13, '麦田', '麦田与朝阳', '/uploads/info/info2.jpg', '2018-06-06', 0);
INSERT INTO `t_infomation` VALUES (14, '玩偶', '我家的玩偶与我相伴', '/uploads/info/info3.jpg', '2018-06-06', 0);
INSERT INTO `t_infomation` VALUES (15, '海边', '北戴河的沙滩', '/uploads/info/info4.jpg', '2018-06-06', 0);
INSERT INTO `t_infomation` VALUES (16, '夕阳下朋友', '美好的晚霞与真挚的友谊', '/uploads/info/info5.jpg', '2018-06-06', 0);
INSERT INTO `t_infomation` VALUES (17, '快乐的夏天', '难以忘怀童年的夏天', '/uploads/info/info6.jpg', '2018-06-06', 0);

-- ----------------------------
-- Table structure for t_label
-- ----------------------------
DROP TABLE IF EXISTS `t_label`;
CREATE TABLE `t_label`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createTime` date NULL DEFAULT NULL,
  `status` tinyint(4) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_label
-- ----------------------------
INSERT INTO `t_label` VALUES (10, '户外', '2018-06-10', 0);
INSERT INTO `t_label` VALUES (11, '室内', '2018-06-10', 0);
INSERT INTO `t_label` VALUES (12, '远景', '2018-06-10', 0);
INSERT INTO `t_label` VALUES (13, '近景', '2018-06-10', 0);

-- ----------------------------
-- Table structure for t_level
-- ----------------------------
DROP TABLE IF EXISTS `t_level`;
CREATE TABLE `t_level`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createTime` date NULL DEFAULT NULL,
  `status` tinyint(4) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_level
-- ----------------------------
INSERT INTO `t_level` VALUES (8, '总监级', '2018-06-10', 0);
INSERT INTO `t_level` VALUES (9, '名师级', '2018-06-10', 0);
INSERT INTO `t_level` VALUES (10, '首席级', '2018-06-10', 0);

-- ----------------------------
-- Table structure for t_photographer
-- ----------------------------
DROP TABLE IF EXISTS `t_photographer`;
CREATE TABLE `t_photographer`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `head` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `summary` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `createTime` date NULL DEFAULT NULL,
  `status` tinyint(4) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_photographer
-- ----------------------------
INSERT INTO `t_photographer` VALUES (10, '/uploads/photographer/phog1.jpg', 'tom', '经验丰富', '2018-06-07', 0);
INSERT INTO `t_photographer` VALUES (11, '/uploads/photographer/phog2.jpg', 'jack', '善于尝试', '2018-06-07', 0);
INSERT INTO `t_photographer` VALUES (12, '/uploads/photographer/phog3.jpg', 'rose', '美丽大方', '2018-06-07', 0);
INSERT INTO `t_photographer` VALUES (13, '/uploads/photographer/phog4.jpg', 'snow', '青春靓丽', '2018-06-07', 0);

-- ----------------------------
-- Table structure for t_photographer_label
-- ----------------------------
DROP TABLE IF EXISTS `t_photographer_label`;
CREATE TABLE `t_photographer_label`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `labelId` int(11) NOT NULL,
  `photographerId` int(11) NOT NULL,
  `createTime` date NULL DEFAULT NULL,
  `status` tinyint(4) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `labelId`(`labelId`) USING BTREE,
  INDEX `photographerId`(`photographerId`) USING BTREE,
  CONSTRAINT `t_photographer_label_ibfk_1` FOREIGN KEY (`labelId`) REFERENCES `t_label` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `t_photographer_label_ibfk_2` FOREIGN KEY (`photographerId`) REFERENCES `t_photographer` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_photographer_label
-- ----------------------------
INSERT INTO `t_photographer_label` VALUES (7, 10, 10, '2018-06-10', 0);
INSERT INTO `t_photographer_label` VALUES (8, 11, 11, '2018-06-10', 0);
INSERT INTO `t_photographer_label` VALUES (9, 12, 12, '2018-06-10', 0);
INSERT INTO `t_photographer_label` VALUES (10, 11, 13, '2018-06-10', 0);

-- ----------------------------
-- Table structure for t_photographer_level
-- ----------------------------
DROP TABLE IF EXISTS `t_photographer_level`;
CREATE TABLE `t_photographer_level`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `levelId` int(11) NOT NULL,
  `photographer` int(11) NOT NULL,
  `createTime` date NULL DEFAULT NULL,
  `status` tinyint(4) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `levelId`(`levelId`) USING BTREE,
  INDEX `photographer`(`photographer`) USING BTREE,
  CONSTRAINT `t_photographer_level_ibfk_1` FOREIGN KEY (`levelId`) REFERENCES `t_level` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `t_photographer_level_ibfk_2` FOREIGN KEY (`photographer`) REFERENCES `t_photographer` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_photographer_level
-- ----------------------------
INSERT INTO `t_photographer_level` VALUES (7, 8, 10, '2018-06-10', 0);
INSERT INTO `t_photographer_level` VALUES (8, 9, 11, '2018-06-10', 0);
INSERT INTO `t_photographer_level` VALUES (9, 10, 12, '2018-06-10', 0);
INSERT INTO `t_photographer_level` VALUES (10, 9, 13, '2018-06-10', 0);

-- ----------------------------
-- Table structure for t_photographer_spots
-- ----------------------------
DROP TABLE IF EXISTS `t_photographer_spots`;
CREATE TABLE `t_photographer_spots`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `spotsId` int(11) NOT NULL,
  `photographerId` int(11) NOT NULL,
  `createTime` date NULL DEFAULT NULL,
  `status` tinyint(4) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `spotsId`(`spotsId`) USING BTREE,
  INDEX `photographerId`(`photographerId`) USING BTREE,
  CONSTRAINT `t_photographer_spots_ibfk_1` FOREIGN KEY (`spotsId`) REFERENCES `t_spots` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `t_photographer_spots_ibfk_2` FOREIGN KEY (`photographerId`) REFERENCES `t_photographer` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_photographer_spots
-- ----------------------------
INSERT INTO `t_photographer_spots` VALUES (7, 20, 10, '2018-06-10', 0);
INSERT INTO `t_photographer_spots` VALUES (8, 21, 11, '2018-06-10', 0);
INSERT INTO `t_photographer_spots` VALUES (9, 22, 12, '2018-06-10', 0);
INSERT INTO `t_photographer_spots` VALUES (10, 20, 13, '2018-06-10', 0);

-- ----------------------------
-- Table structure for t_schedule
-- ----------------------------
DROP TABLE IF EXISTS `t_schedule`;
CREATE TABLE `t_schedule`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NULL DEFAULT NULL,
  `photographerId` int(11) NOT NULL,
  `start` date NULL DEFAULT NULL,
  `end` date NULL DEFAULT NULL,
  `createTime` date NULL DEFAULT NULL,
  `status` tinyint(4) NULL DEFAULT 0 COMMENT '0有空 1有预约 2无档期3过期',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `qq` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `remarks` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `photographerId`(`photographerId`) USING BTREE,
  CONSTRAINT `t_schedule_ibfk_2` FOREIGN KEY (`photographerId`) REFERENCES `t_photographer` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_schedule
-- ----------------------------
INSERT INTO `t_schedule` VALUES (25, 13, 10, '2018-06-07', '2018-06-08', '2018-06-07', 1, '章', '男', '13000000001', '', '尽快联系我');
INSERT INTO `t_schedule` VALUES (26, 14, 13, '2018-06-11', '2018-06-11', '2018-06-11', 1, 'jsdaljf', '男', '13000000001', '32442352', '');
INSERT INTO `t_schedule` VALUES (27, 14, 12, '2018-06-11', '2018-06-11', '2018-06-11', 1, '78923874', '男', '13000000001', '242525', '');
INSERT INTO `t_schedule` VALUES (29, 1, 10, '2018-06-13', '2018-06-14', '2018-06-12', 2, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `t_schedule` VALUES (30, 15, 13, '2018-06-12', '2018-06-13', '2018-06-12', 1, '李明', '男', '13088888888', '', '');
INSERT INTO `t_schedule` VALUES (31, 16, 12, '2018-06-12', '2018-06-12', '2018-06-12', 3, 'test', '男', '13088888888', '', '');
INSERT INTO `t_schedule` VALUES (32, 17, 13, '2018-06-15', '2018-06-15', '2018-06-15', NULL, 'curd', '男', '13000000001', '10001', '一个小孩和一只猫');

-- ----------------------------
-- Table structure for t_spots
-- ----------------------------
DROP TABLE IF EXISTS `t_spots`;
CREATE TABLE `t_spots`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createTime` date NULL DEFAULT NULL,
  `status` tinyint(4) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_spots
-- ----------------------------
INSERT INTO `t_spots` VALUES (20, '蓝岭风景大道', '美景当然不能与汽车无缘\r\n一条全长700多公里的车行道沿山修建\r\n它名为蓝岭风景大道（Blue Ridge Parkway）', '/uploads/spots/spots1.jpg', '2018-06-12', 0);
INSERT INTO `t_spots` VALUES (21, '冰川国家公园', '曾拥有超过150条冰川\r\n冰川退缩后留下许许多多美丽的山川、湖泊、瀑布\r\n风景从大到小变化万千、非常精致\r\n日出时太阳的光芒和山峰红褐色的岩石\r\n把山体“烧红”\r\n倒映在湖水之中', '/uploads/spots/spots2.jpg', '2018-06-12', 0);
INSERT INTO `t_spots` VALUES (22, '1号公路', '西侧的海岸山岭\r\n与太平洋海岸平行\r\n1号公路在山与海之间穿行\r\n形成了一条全球闻名的景观大道', '/uploads/spots/spots3.jpg', '2018-06-12', 0);
INSERT INTO `t_spots` VALUES (23, '科罗拉多大峡谷', '被群山围合的科罗拉多高原也干旱得要命\r\n但幸运的是一条大河贯穿其间\r\n科罗拉多河（Colorado River）\r\n浇灌了高原90%的土地\r\n它切割出世界上最宏伟的大峡谷\r\n科罗拉多大峡谷', '/uploads/spots/spots4.jpg', '2018-06-12', 0);
INSERT INTO `t_spots` VALUES (24, '大盆地', '大盆地（Great Basin）\r\n\r\n它属于高原内陆盆地\r\n\r\n有着大量的沙漠、盐带平原和山谷\r\n\r\n其间的沙漠也称为大盆地沙漠', '/uploads/spots/spots5.jpg', '2018-06-12', 1);
INSERT INTO `t_spots` VALUES (25, '大平原', '大平原（Great Plains）\r\n\r\n其实是一片大草原和天然牧场\r\n\r\n总面积高达130万平方公里\r\n\r\n美国的自然分区中\"Great\"一词使用的极多\r\n\r\n与其它国家局促的地理条件相比\r\n\r\n美国确实符合“Great\"\r\n\r\n大平原也是美国野牛的主要活动区域', '/uploads/spots/spots6.jpg', '2018-06-12', 0);

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tel` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createTime` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (15, 'nmcurd', '912ec803b2ce49e4a541068d495ab570', '13088888888', NULL, '2018-06-12');
INSERT INTO `t_user` VALUES (16, 'test', '098f6bcd4621d373cade4e832627b4f6', '13088888888', NULL, '2018-06-12');
INSERT INTO `t_user` VALUES (17, 'curd', '912ec803b2ce49e4a541068d495ab570', '13000000001', NULL, '2018-06-15');

-- ----------------------------
-- Table structure for t_works
-- ----------------------------
DROP TABLE IF EXISTS `t_works`;
CREATE TABLE `t_works`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `spotsId` int(11) NOT NULL,
  `photographerId` int(11) NOT NULL,
  `createTime` date NULL DEFAULT NULL,
  `status` tinyint(4) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `photographerId`(`photographerId`) USING BTREE,
  INDEX `spotsId`(`spotsId`) USING BTREE,
  CONSTRAINT `t_works_ibfk_1` FOREIGN KEY (`photographerId`) REFERENCES `t_photographer` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `t_works_ibfk_2` FOREIGN KEY (`spotsId`) REFERENCES `t_spots` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_works
-- ----------------------------
INSERT INTO `t_works` VALUES (5, '测试作品A', '/uploads/images/work (1).jpg', '测试使用', 11, 12, '2018-04-26', 1);
INSERT INTO `t_works` VALUES (6, '宫殿拍摄图片1', '/uploads/images/work (1).jpg', '宫殿拍摄图片1', 14, 10, '2018-06-08', 1);
INSERT INTO `t_works` VALUES (7, '滑板少年', '/uploads/images/work (2).jpg', '滑板少年', 20, 10, '2018-06-08', 0);
INSERT INTO `t_works` VALUES (8, '亲情', '/uploads/images/work (6).jpg', '亲情', 21, 11, '2018-06-08', 0);
INSERT INTO `t_works` VALUES (9, '单车', '/uploads/images/work (4).jpg', '单车', 22, 12, '2018-06-08', 0);
INSERT INTO `t_works` VALUES (10, '读书', '/uploads/images/work (3).jpg', '读书', 23, 13, '2018-06-08', 0);
INSERT INTO `t_works` VALUES (11, '森林公主', '/uploads/images/work (5).jpg\r\n', '森林公主', 24, 10, '2018-06-08', 0);
INSERT INTO `t_works` VALUES (12, '呵护', '/uploads/images/work (1).jpg', '呵护', 25, 11, '2018-06-08', 0);

SET FOREIGN_KEY_CHECKS = 1;
