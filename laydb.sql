/*
 Navicat MySQL Data Transfer

 Source Server         : laydb
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : localhost:3306
 Source Schema         : laydb

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 09/09/2022 17:16:14
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept`  (
  `dept_id` int NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 301 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES (100, '开发一部');
INSERT INTO `dept` VALUES (200, '开发二部');
INSERT INTO `dept` VALUES (300, '运营一部');

-- ----------------------------
-- Table structure for emp
-- ----------------------------
DROP TABLE IF EXISTS `emp`;
CREATE TABLE `emp`  (
  `emp_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sex` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `age` int NULL DEFAULT NULL,
  `sal` decimal(10, 0) NULL DEFAULT NULL,
  `birthday` date NOT NULL,
  `address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dept_id` int NULL DEFAULT NULL,
  PRIMARY KEY (`emp_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of emp
-- ----------------------------
INSERT INTO `emp` VALUES (1, '黄飞鸿', 'M', 35, 15000, '1900-02-14', '广东省佛山市', 100);
INSERT INTO `emp` VALUES (2, '方世玉', 'M', 40, 12000, '1868-11-03', '江苏省扬州市', 200);
INSERT INTO `emp` VALUES (3, '秋香', 'F', 35, 15000, '1900-02-03', '广东省佛山市', 200);
INSERT INTO `emp` VALUES (4, '西门庆', 'M', 35, 15000, '1900-02-03', '广东省佛山市', 100);
INSERT INTO `emp` VALUES (5, '潘金莲', 'F', 35, 15000, '1900-02-03', '广东省佛山市', 300);
INSERT INTO `emp` VALUES (6, '武松', 'M', 35, 15000, '1900-02-03', '广东省佛山市', 100);
INSERT INTO `emp` VALUES (7, '孙悟空', 'M', 35, 15000, '1900-02-03', '广东省佛山市', 300);
INSERT INTO `emp` VALUES (9, '赵云', 'M', 35, 15000, '1900-02-03', '广东省佛山市', 200);
INSERT INTO `emp` VALUES (11, '葫芦娃', '男', 7, 2000, '2022-08-29', '山东蓬莱市葫芦岛', 100);
INSERT INTO `emp` VALUES (13, '奶大丽', 'F', 19, 2500, '2019-04-03', '瓦洛兰大陆扭曲丛林', 200);

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `counter` int NULL DEFAULT NULL,
  `img_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `elite` tinyint NULL DEFAULT NULL,
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of news
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ch_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '$2a$10$RmvfVfZEiabdH3x.opzgaOf37/NsrPTyXKk5tPcIwJBcwg0nU30L.', '管理员');
INSERT INTO `user` VALUES (2, 'zhangsan', '$2a$10$RmvfVfZEiabdH3x.opzgaOf37/NsrPTyXKk5tPcIwJBcwg0nU30L.', '张三');

SET FOREIGN_KEY_CHECKS = 1;
