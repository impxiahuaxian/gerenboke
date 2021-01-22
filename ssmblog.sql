/*
 Navicat Premium Data Transfer

 Source Server         : r
 Source Server Type    : MySQL
 Source Server Version : 50525
 Source Host           : localhost:3306
 Source Schema         : ssmblog

 Target Server Type    : MySQL
 Target Server Version : 50525
 File Encoding         : 65001

 Date: 29/05/2020 14:46:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `realname` varchar(50) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `sex` varchar(50) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `age` varchar(50) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `tel` varchar(50) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `address` varchar(50) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `addtime` varchar(50) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `sf` varchar(50) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT '工作人员',
  `tx` varchar(300) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT 'pic/nobody.jpg',
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES (13, '毕设', '111', '孔翔', '男', '25', '13533333333', '毕业设计', '2020-04-25', '管理员', 'pic/20200528145029.jpg');

-- ----------------------------
-- Table structure for bk
-- ----------------------------
DROP TABLE IF EXISTS `bk`;
CREATE TABLE `bk`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `bt` varchar(500) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `fl` varchar(500) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `url` varchar(500) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `nr` text CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL,
  `sj` varchar(500) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `dj` int(4) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bk
-- ----------------------------
INSERT INTO `bk` VALUES (10, '11221', '心情日志', 'pic/20200528151033.jpg', '<h1>\r\n	asfsfdsssssssssssdf<span style=\"background-color:#FF9900;\">afffffffffffffffffffffff faaaaaaaaaaaaasdfa<strong><span style=\"background-color:#FFFFFF;\"></span>asdddddddddddddd<span style=\"background-color:#FFFFFF;\"><span style=\"background-color:#000000;\"><span style=\"color:#003399;\">asddd<span style=\"background-color:#CCCCCC;\">adsaaaaaaaaaaaasdfaggadsga<span style=\"font-size:32px;\"><span style=\"font-family:NSimSun;\"></span></span></span></span></span></span></strong></span>\r\n</h1>', '2020-05-28', 2);
INSERT INTO `bk` VALUES (11, 'ceshi q', '旅游分享', 'pic/20200528151322.jpg', '<h3>\r\n	fwesdasdasdfasdf&nbsp; &nbsp;asdsadasdadadawretr<span style=\"font-family:SimHei;\">qeqeqweq asdadasdweqweq<em></em>q</span> \r\n</h3>\r\n<p>\r\n	<span style=\"font-family:SimHei;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimHei;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimHei;\"><br />\r\n</span> \r\n</p>\r\n<p>\r\n	<span style=\"font-family:SimHei;\">sfsasfas<img src=\"http://localhost:8080/ssmblog/editor/plugins/emoticons/images/13.gif\" border=\"0\" alt=\"\" /></span> \r\n</p>', '2020-05-28', 1);
INSERT INTO `bk` VALUES (12, 'saFSFWEF', '学习交流', 'pic/20200528151715.jpg', '<p>\r\n	aFSsdxvz&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;a\r\n</p>\r\n<p>\r\n	f\r\n</p>\r\n<p>\r\n	asdf\r\n</p>\r\n<p>\r\n	as\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	g\r\n</p>\r\n<p>\r\n	rha\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	fdh\r\n</p>', '2020-05-28', 2);
INSERT INTO `bk` VALUES (13, 'okjbn', '学习交流', 'pic/20200528151842.jpg', '<p>\r\n	gasdgasdf&nbsp;\r\n</p>\r\n<p>\r\n	hg\r\n</p>\r\n<p>\r\n	hs\r\n</p>\r\n<p>\r\n	h\r\n</p>\r\n<p>\r\n	trh\r\n</p>\r\n<p>\r\n	<br />\r\n</p>\r\n<p>\r\n	s\r\n</p>\r\n<p>\r\n	rthrt<img src=\"/ssmblog/attached/image/20200528/20200528151833_617.jpg\" alt=\"\" />\r\n</p>', '2020-05-28', 2);

-- ----------------------------
-- Table structure for fl
-- ----------------------------
DROP TABLE IF EXISTS `fl`;
CREATE TABLE `fl`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `mc` varchar(200) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `unique_name`(`mc`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of fl
-- ----------------------------
INSERT INTO `fl` VALUES (7, '毕业设计');
INSERT INTO `fl` VALUES (4, '旅游分享');
INSERT INTO `fl` VALUES (5, '心情日志');
INSERT INTO `fl` VALUES (3, '学习交流');

-- ----------------------------
-- Table structure for lj
-- ----------------------------
DROP TABLE IF EXISTS `lj`;
CREATE TABLE `lj`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `mc` varchar(200) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `dz` varchar(200) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of lj
-- ----------------------------
INSERT INTO `lj` VALUES (1, '百度', 'http://www.baidu.com');
INSERT INTO `lj` VALUES (2, '淘宝', 'http://www.taobao.com');

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `password` varchar(50) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `realname` varchar(50) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `sf` varchar(50) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `sfz` varchar(50) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `tel` varchar(50) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `email` varchar(50) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `regtime` varchar(50) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `ifuse` varchar(50) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT '在用',
  `hy` varchar(50) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT '否',
  `tx` varchar(500) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT 'pic/nobody.jpg',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `id`(`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES (7, '111', '111', '张同学', '男', '211220199609091234', '13800000001', '112@163.com', '2020-03-15', '在用', '否', 'pic/nobody.jpg');
INSERT INTO `member` VALUES (8, '222', '111', '张老三', '男', '211220199709091234', '13598598867', '11@163.com', '2020-03-15', '在用', '否', 'pic/nobody.jpg');

-- ----------------------------
-- Table structure for pl
-- ----------------------------
DROP TABLE IF EXISTS `pl`;
CREATE TABLE `pl`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `member` varchar(200) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `nr` varchar(200) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `sj` varchar(200) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `hf` varchar(200) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT '暂无',
  `bkid` varchar(200) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `bt` varchar(200) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `sh` varchar(200) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT '未审核',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of pl
-- ----------------------------
INSERT INTO `pl` VALUES (6, '111', 'qqqqq', '2020-05-28', '暂无', '13', 'okjbn', '未审核');
INSERT INTO `pl` VALUES (7, '111', 'dgsga', '2020-05-28', '暂无', '12', 'saFSFWEF', '未审核');
INSERT INTO `pl` VALUES (8, '111', 'safsafgfg', '2020-05-28', '', '10', '11221', '已通过');

-- ----------------------------
-- Table structure for xw
-- ----------------------------
DROP TABLE IF EXISTS `xw`;
CREATE TABLE `xw`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `bt` varchar(500) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `fl` varchar(500) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `jj` varchar(500) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `url` varchar(500) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `nr` text CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL,
  `sj` varchar(500) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `fbr` varchar(500) CHARACTER SET gb2312 COLLATE gb2312_chinese_ci NULL DEFAULT NULL,
  `dj` int(4) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = gb2312 COLLATE = gb2312_chinese_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of xw
-- ----------------------------
INSERT INTO `xw` VALUES (31, '美海军驱逐舰非法闯入西沙领海 南部战区回应', '南部强军号', '南部战区回应', 'pic/20200528145855.jpg', '<p style=\"font-size:18px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;background-color:#FFFFFF;\">\r\n	中国人民解放军南部战区新闻发言人李华敏大校表示，5月28日，美海军“马斯廷”号驱逐舰未经中国政府允许，非法闯入我西沙领海。中国人民解放军南部战区海空兵力全程对美舰进行监视查证、警告驱离。美方挑衅行为严重侵犯中国主权和安全利益，严重违反有关国际法准则，严重破坏南海地区和平稳定，是赤裸裸的航行霸权行径。当前新冠肺炎疫情仍在全球蔓延，美方罔顾国内民众生命安全，不把精力放在本国疫情防控上，不为国际抗疫做有益的事，却万里迢迢派军舰到南海来耀武扬威、挑衅滋事，充分暴露美方说一套做一套的虚伪本质，充分证明美军是破坏南海地区和平稳定的祸乱之源。中国对南海诸岛及其附近海域拥有无可争辩的主权。战区部队将时刻保持高度戒备，采取一切必要措施，坚决履行职责使命，坚决捍卫国家主权安全，坚定维护南海地区和平稳定。\r\n</p>', '2020-05-28', 'admin', 1);
INSERT INTO `xw` VALUES (32, '海口\"黑老大\"林声新一审获刑22年 当庭表示将上诉', '南海网', '海口\"黑老大\"林声新一审获刑22年 当庭表示将上诉', 'pic/20200528150108.jpg', '<p style=\"font-size:18px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;background-color:#FFFFFF;\">\r\n	5月25日\r\n</p>\r\n<p style=\"font-size:18px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;background-color:#FFFFFF;\">\r\n	海口中院依法公开开庭审理\r\n</p>\r\n<p style=\"font-size:18px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;background-color:#FFFFFF;\">\r\n	由海口市人民检察院提起公诉的被告人\r\n</p>\r\n<p style=\"font-size:18px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;background-color:#FFFFFF;\">\r\n	林某新等15人涉黑犯罪一案\r\n</p>\r\n<p class=\"f_center\" style=\"font-size:18px;font-family:&quot;color:#404040;text-align:center;background-color:#FFFFFF;\">\r\n	<img alt=\"\" src=\"https://cms-bucket.ws.126.net/2020/0528/8cb20d83j00qb139n001bc000fa00bgc.jpg\" />\r\n</p>\r\n<p style=\"font-size:18px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;background-color:#FFFFFF;\">\r\n	经过审理\r\n</p>\r\n<p style=\"font-size:18px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;background-color:#FFFFFF;\">\r\n	该案件于5月28日上午进行了一审公开宣判\r\n</p>\r\n<p style=\"font-size:18px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;background-color:#FFFFFF;\">\r\n	主犯林某新犯组织、领导黑社会性质组织罪\r\n</p>\r\n<p style=\"font-size:18px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;background-color:#FFFFFF;\">\r\n	犯聚众斗殴罪，犯寻衅滋事罪等多项罪名\r\n</p>\r\n<p style=\"font-size:18px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;background-color:#FFFFFF;\">\r\n	决定执行有期徒刑22年，剥夺政治权利5年\r\n</p>\r\n<p style=\"font-size:18px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;background-color:#FFFFFF;\">\r\n	并处没收个人全部财产\r\n</p>\r\n<p style=\"font-size:18px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;background-color:#FFFFFF;\">\r\n	而该组织其余成员被判3至18年不等刑期\r\n</p>\r\n<p class=\"f_center\" style=\"font-size:18px;font-family:&quot;color:#404040;text-align:center;background-color:#FFFFFF;\">\r\n	<img alt=\"\" src=\"https://cms-bucket.ws.126.net/2020/0528/a70449dfj00qb139n0015c000fa00bgc.jpg\" />\r\n</p>\r\n<p style=\"font-size:18px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;background-color:#FFFFFF;\">\r\n	据悉，2013年以来，被告人林某新以同族、亲戚关系为纽带，陆续网罗被告人林某才、林某籽、林某在、林某强、林某释、林某康、林某魁、林某保、林某全、林某喜、林某照、林某顺等人，形成骨干成员基本固定的较为稳定的犯罪组织；该组织以暴力、威胁等手段，有组织地实施寻衅滋事、强迫交易、敲诈勒索、故意毁坏财物等一系列违法犯罪活动。\r\n</p>\r\n<p style=\"font-size:18px;font-family:&quot;text-indent:2em;color:#404040;text-align:justify;background-color:#FFFFFF;\">\r\n	该犯罪组织内部分工明确，层级分明。在林某新的组织、领导下，以暴力手段为依托，非法控制桂林洋高山村一带的土方、地材等供应工程，通过寻衅滋事、强迫交易、敲诈勒索等行为攫取1000余万元的非法经济利益用于供养组织成员，获得的收益由组织成员参与分红。为排除异己、聚敛钱财，以桂林洋高山村为据点，使用暴力、威胁和其他手段，或者利用组织的强势地位，有组织、有预谋地大肆实施违法犯罪活动。其中，聚众斗殴案1宗；故意毁坏财物案1宗，烧毁价值407072元的挖机一台；强迫交易案9宗，强迫交易金额共计12392143元；寻衅滋事案5宗；敲诈勒索案4宗。\r\n</p>\r\n<p class=\"f_center\" style=\"font-size:18px;font-family:&quot;color:#404040;text-align:center;background-color:#FFFFFF;\">\r\n	<img alt=\"\" src=\"https://cms-bucket.ws.126.net/2020/0528/d8cce2f6j00qb139n001bc000fa00bgc.jpg\" />\r\n</p>', '2020-05-28', 'admin', 1);

SET FOREIGN_KEY_CHECKS = 1;
