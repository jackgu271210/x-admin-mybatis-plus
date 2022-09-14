/*
 Navicat Premium Data Transfer

 Source Server         : laydb
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : localhost:3306
 Source Schema         : laydb

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 14/09/2022 23:09:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept`  (
  `dept_id` int(0) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 300 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

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
  `emp_id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sex` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `age` int(0) NULL DEFAULT NULL,
  `sal` decimal(10, 0) NULL DEFAULT NULL,
  `birthday` date NOT NULL,
  `address` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dept_id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`emp_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

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
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL,
  `counter` int(0) NULL DEFAULT NULL,
  `img_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `elite` tinyint(0) NULL DEFAULT NULL,
  `create_time` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0),
  `update_time` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (1, 'post请求方式的接口测试', '注意：因为我使用的是vo来将页面的参数传向变量中，所以在测试体body中，这里面的前面的参数与Vo文件中（VoProjectAdd）的参数名相同。', NULL, NULL, NULL, '2022-09-12 18:39:43', '2022-09-12 18:39:43');
INSERT INTO `news` VALUES (2, '喜欢美女的大屁股', '<p id=\"132FHS6R\" style=\"text-align: justify;\">大屁股美女可以说有很多优点。屁股大显得很有女人魅力可以吸引男人，比较有福气；屁股大的相对的智力也会高一些，眼观也会好一些，还有就是屁股大就很有曲线，穿衣服更显得美。</p><p id=\"132FHS6S\" style=\"text-align: justify;\"><strong>迈克尔斯·鲁菲内利成为大屁股美女</strong></p><p class=\"f_center\" style=\"text-align: center;\"><img src=\"https://nimg.ws.126.net/?url=http%3A%2F%2Fdingyue.ws.126.net%2F2022%2F0806%2F86bcef90j00rg6bub001fd000fa00ljp.jpg&amp;thumbnail=660x2147483647&amp;quality=80&amp;type=jpg\"><br><br></p><p id=\"132FHS6U\" style=\"text-align: justify;\">来自美国洛杉矶的女人拥有世界上最大的臀部，这个大屁股美女已经40岁了，是四个孩子的母亲，臀围为2.4米。它被授予吉尼斯世界纪录“世界上最大的臀部”。据报道，鲁菲内利身高1.6米，体重190公斤。据报道，鲁菲内利有这么大的臀部，主要是因为他怀孕了四次并生了四个孩子。</p><p class=\"f_center\" style=\"text-align: center;\"><img src=\"https://nimg.ws.126.net/?url=http%3A%2F%2Fdingyue.ws.126.net%2F2022%2F0806%2F88616b6aj00rg6bup000nd000eu008cp.jpg&amp;thumbnail=660x2147483647&amp;quality=80&amp;type=jpg\"><br><br></p><p id=\"132FHS70\" style=\"text-align: justify;\">鲁菲内利也试图减肥，但现在她说她对自己的身体非常满意，因为她的丈夫雷吉·布鲁克斯认为她很漂亮和性感。因此为了保持她的“饱腹感”，鲁菲内利每天要吃3000卡路里的热量，墨西哥食物、鸡肉、海鲜和奶酪是她最喜欢的，和两餐之间的零食。</p><p class=\"f_center\" style=\"text-align: center;\"><img src=\"https://nimg.ws.126.net/?url=http%3A%2F%2Fdingyue.ws.126.net%2F2022%2F0806%2Fb3abcb05j00rg6bv80010d000bp00a2p.jpg&amp;thumbnail=660x2147483647&amp;quality=80&amp;type=jpg\"><br><br></p><p id=\"132FHS72\" style=\"text-align: justify;\">虽然鲁菲内利对她的身体非常满意，但仍有时候她会担心生活。例如，在乘坐公共交通工具时，她必须为她的大屁股购买两张票，一个座位是不可能坐下的。因此，鲁菲内利不允许尽可能多地乘坐飞机、列车。</p><p id=\"132FHS73\" style=\"text-align: justify;\"><strong>生活中因为大屁股而带来众多的不便</strong></p><p class=\"f_center\" style=\"text-align: center;\"><img src=\"https://nimg.ws.126.net/?url=http%3A%2F%2Fdingyue.ws.126.net%2F2022%2F0806%2F707e69daj00rg6bvj000pd000bs00a3p.jpg&amp;thumbnail=660x2147483647&amp;quality=80&amp;type=jpg\"><br><br></p><p id=\"132FHS75\" style=\"text-align: justify;\">大屁股美女鲁菲内利的女儿德斯蒂妮透露，其实在生活中，母亲的巨臀给她带来许多不便。她不能久站，且洗澡也很麻烦。此外，路人还会对她指指点点，甚至用手机拍她。好在鲁菲内利的家人都尊重她的选择，关心爱护她，其丈夫有时会幽默地调侃道：“我会跟别人说我可是拥有重型机械操作执照的人。</p><p class=\"f_center\" style=\"text-align: center;\"><img src=\"https://nimg.ws.126.net/?url=http%3A%2F%2Fdingyue.ws.126.net%2F2022%2F0806%2F4978cf8fj00rg6bvv000vd000bm00a4p.jpg&amp;thumbnail=660x2147483647&amp;quality=80&amp;type=jpg\"><br><br></p><p id=\"132FHS77\" style=\"text-align: justify;\">在这个以瘦为美的社会，其实也有很多自信的胖子。56岁的丹尼斯·索德也拥有肥胖的巨臀，她在拉斯维加斯跳脱衣舞，而且她的女儿也加入了妈妈的视频业务。”</p><p class=\"f_center\" style=\"text-align: center;\"><img src=\"https://nimg.ws.126.net/?url=http%3A%2F%2Fdingyue.ws.126.net%2F2022%2F0806%2F3032220cj00rg6bw5000zd000f400gzp.jpg&amp;thumbnail=660x2147483647&amp;quality=80&amp;type=jpg\"><br><br></p><p id=\"132FHS79\" style=\"text-align: justify;\">鲁菲内利现在有一个幸福的家庭，尽管自己拥有世界上最大的臀部，在生活中还是存在一些不方便。但是鲁菲内利很喜欢现在的自己，和丈夫一直很恩爱的生活，一家人很开心。鲁菲内利全家人经常一起去旅游，享受美好的生活，甚至和丈夫常常过着二人世界，十分幸福。</p><p id=\"132FHS7A\" style=\"text-align: justify;\"><strong>大屁股美女迈克尔斯·鲁菲内利如今兼职模特</strong></p><p class=\"f_center\" style=\"text-align: center;\"><img src=\"https://nimg.ws.126.net/?url=http%3A%2F%2Fdingyue.ws.126.net%2F2022%2F0806%2F4c787499j00rg6bwf000yd000fa008lp.jpg&amp;thumbnail=660x2147483647&amp;quality=80&amp;type=jpg\"><br><br></p><p id=\"132FHS7C\" style=\"text-align: justify;\">迈克尔斯·鲁菲内利现在还在某网站兼职做模特，赚了很多外快，她对自己的身材很自豪。看看这如此庞大的臀围，你举得美吗？反正小编是没看到美感勒。外国人的审美就是重，这要是在中国，是不是早就被唾弃到自杀咯！</p>', NULL, 'http://localhost:8080/upload/eb96f81460d34caba24c6b4bc10f61d5-e3ef-fymmiwm3033702.jpg', 1, '2022-09-14 21:01:33', '2022-09-14 22:54:16');
INSERT INTO `news` VALUES (3, '职业装黑丝袜美女气场太强大, 一般人受不了', '<p><img src=\"http://localhost:8080/upload/78cd15c0b3484184bae525a3c0912b30-e3ef-fymmiwm3033702.jpg\" alt=\"undefined\"></p><p>女士穿裙子应当搭配长筒丝袜或者连裤袜，光腿穿西装套裙是大忌。不要穿带图案的袜子，因为它们会让人注意你的腿部。女士袜子一定要大小相宜，太大时就会往下掉，或者显得一高一低。尤其要注意，女士不能在公众场合整理自己的长筒袜，而且袜口不能露在裙摆外边。不要穿带图案的袜子，因为它们会惹人注意你的腿部。应随身携带一双备用的透明丝袜，以防袜子拉丝或跳丝。</p><p>　　<img src=\"http://n.sinaimg.cn/sinacn/20171001/2ae0-fymmiwm3033729.jpg\" w=\"699\" h=\"974\" wh=\"0.72\" alt=\"职业装黑丝袜美女气场太强大, 一般人受不了\"></p><div id=\"ad_44086\" class=\"otherContent_01\"><ins class=\"sinaads sinaads-done\" id=\"Sinads49447\" data-ad-pdps=\"PDPS000000044086\" data-ad-status=\"done\"><ins><iframe adtypeturning=\"false\" width=\"300px\" height=\"250px\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" vspace=\"0\" hspace=\"0\" allowtransparency=\"true\" scrolling=\"no\" sandbox=\"allow-popups allow-same-origin allow-scripts allow-top-navigation-by-user-activation\" id=\"sinaadtk_sandbox_id_8\" name=\"sinaadtk_sandbox_id_8\"></iframe></ins></ins></div><p>　　职业装颜色的选择：尽量是那种不是太显眼的颜色，显得稳重大方得体就好。职业套裙的最佳颜色是黑色、藏青色、灰褐色、灰色和暗红色。精致的方格、印花和条纹也可以接受。买红色、黄色或淡紫色的两件套裙要小心，因为它们的颜色过于抢眼。</p>', NULL, 'http://localhost:8080/upload/fa4119ae4f934b52aa721e327e483b48-e3ef-fymmiwm3033702.jpg', 1, '2022-09-14 21:03:24', '2022-09-14 21:03:24');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ch_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', '$2a$10$RmvfVfZEiabdH3x.opzgaOf37/NsrPTyXKk5tPcIwJBcwg0nU30L.', '管理员');
INSERT INTO `user` VALUES (2, 'zhangsan', '$2a$10$RmvfVfZEiabdH3x.opzgaOf37/NsrPTyXKk5tPcIwJBcwg0nU30L.', '张三');

SET FOREIGN_KEY_CHECKS = 1;
