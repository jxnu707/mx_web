/*
Navicat MySQL Data Transfer

Source Server         : mysql551
Source Server Version : 50523
Source Host           : localhost:3307
Source Database       : sportcollege

Target Server Type    : MYSQL
Target Server Version : 50099
File Encoding         : 65001

Date: 2012-11-28 23:40:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`passWord`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`power`  char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
/*!50003 AUTO_INCREMENT=3 */

;

-- ----------------------------
-- Records of admin
-- ----------------------------
BEGIN;
INSERT INTO `admin` VALUES ('1', 'mao', '1', '1111111111111'), ('2', 'tang', '1', '1000000001111');
COMMIT;

-- ----------------------------
-- Table structure for `file`
-- ----------------------------
DROP TABLE IF EXISTS `file`;
CREATE TABLE `file` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`fileName`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`name`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`time`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`type`  int(11) NOT NULL ,
`message_id`  int(11) NULL DEFAULT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`message_id`) REFERENCES `message` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `FK21699CD4A02924` USING BTREE (`message_id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
/*!50003 AUTO_INCREMENT=36 */

;

-- ----------------------------
-- Records of file
-- ----------------------------
BEGIN;
INSERT INTO `file` VALUES ('2', '2.jpg', '.jpg', '123', '0', '2'), ('3', '3.jpg', '.jpg', '123', '0', '3'), ('4', '4.jpg', '.jpg', '123', '0', '4'), ('6', '1.jpg', '.jpg', '2012-11-21', '0', '12'), ('7', '2.jpg', '.jpg', '2012-11-21', '0', '12'), ('8', '新建 WPS文字 文档.wps', '.wps', '2012-11-21', '1', '12'), ('9', '版式设计 (1).doc', '.doc', '2012-11-21', '1', '12'), ('10', '版式设计 (1).doc', '.doc', '2012-11-21', '1', '13'), ('11', '新建 WPS文字 文档.wps', '.wps', '2012-11-21', '1', '14'), ('12', '版式设计 (1).doc', '.doc', '2012-11-21', '1', '14'), ('13', '版式设计 (1).doc', '.doc', '2012-11-21', '1', '15'), ('14', '201107242.rar', '.rar', '2012-11-21', '1', '16'), ('15', '版式设计 (1).doc', '.doc', '2012-11-21', '1', '17'), ('16', '2008111517517317.zip', '.zip', '2012-11-21', '1', '18'), ('17', '新建文件夹 (3).zip', '.zip', '2012-11-21', '1', '19'), ('18', '准考证号.zip', '.zip', '2012-11-21', '1', '20'), ('19', '4dc5b171-646f-4800-95a5-052764734bc8.jpg', '.jpg', '2012-11-21', '0', '21'), ('20', '017e399e-0b76-470a-ad10-aee1acb985d9.jpg', '.jpg', '2012-11-21', '0', '21'), ('21', '56541fdd-ce4c-42d3-8547-019d583a5b34.jpg', '.jpg', '2012-11-21', '0', '21'), ('22', '3a997205-0f8e-488e-a6c4-9f728c60f1d7.jpg', '.jpg', '2012-11-21', '0', '25'), ('23', '123.jpg', '.jpg', '2012-11-21', '0', '26'), ('24', '017e399e-0b76-470a-ad10-aee1acb985d9.jpg', '.jpg', '2012-11-21', '1', '28'), ('25', '56541fdd-ce4c-42d3-8547-019d583a5b34.jpg', '.jpg', '2012-11-21', '1', '28'), ('26', '4dc5b171-646f-4800-95a5-052764734bc8.jpg', '.jpg', '2012-11-21', '1', '29'), ('27', 'a39f2253-59ae-42bd-bc5b-5aa0b2a0186b.gif', '.gif', '2012-11-21', '0', '30'), ('28', '0d0986f2-5cac-460f-8a61-31078a440033.gif', '.gif', '2012-11-21', '0', '30'), ('29', 'u=2861922421,2991201267&fm=23&gp=0.jpg', '.jpg', '2012-11-21', '0', '31'), ('30', '2.jpg', '.jpg', '2012-11-21', '0', '33'), ('31', '201107242.rar', '.rar', '2012-11-21', '1', '34'), ('32', '017e399e-0b76-470a-ad10-aee1acb985d9.jpg', '.jpg', '2012-11-21', '0', '35'), ('33', '201107242.rar', '.rar', '2012-11-21', '1', '35'), ('34', '2.jpg', '.jpg', '2012-11-28', '0', '36'), ('35', '版式设计 (1).doc', '.doc', '2012-11-28', '1', '36');
COMMIT;

-- ----------------------------
-- Table structure for `mainpicture`
-- ----------------------------
DROP TABLE IF EXISTS `mainpicture`;
CREATE TABLE `mainpicture` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`file_id`  int(11) NULL DEFAULT NULL ,
`message_id`  int(11) NULL DEFAULT NULL ,
PRIMARY KEY (`id`),
FOREIGN KEY (`message_id`) REFERENCES `message` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
FOREIGN KEY (`file_id`) REFERENCES `file` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
INDEX `FKC3964E5FC45EBB0` USING BTREE (`file_id`),
INDEX `FKC3964E5D4A02924` USING BTREE (`message_id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
/*!50003 AUTO_INCREMENT=5 */

;

-- ----------------------------
-- Records of mainpicture
-- ----------------------------
BEGIN;
INSERT INTO `mainpicture` VALUES ('1', '34', '36'), ('2', '26', '29'), ('3', '27', '30'), ('4', '29', '31');
COMMIT;

-- ----------------------------
-- Table structure for `message`
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
`id`  int(11) NOT NULL AUTO_INCREMENT ,
`admin`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`childType`  int(11) NULL DEFAULT NULL ,
`content`  text CHARACTER SET utf8 COLLATE utf8_general_ci NULL ,
`count`  int(11) NULL DEFAULT 1 ,
`isFile`  int(11) NULL DEFAULT NULL ,
`isPicture`  int(11) NULL DEFAULT NULL ,
`mainType`  int(11) NULL DEFAULT NULL ,
`time`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
`title`  varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL ,
PRIMARY KEY (`id`)
)
ENGINE=InnoDB
DEFAULT CHARACTER SET=utf8 COLLATE=utf8_general_ci
/*!50003 AUTO_INCREMENT=37 */

;

-- ----------------------------
-- Records of message
-- ----------------------------
BEGIN;
INSERT INTO `message` VALUES ('2', null, '2', '123123', '0', '0', '0', '3', '2012-11-21', '12312312'), ('3', null, '2', '123123', '0', '0', '0', '3', '2012-11-21', '12312312'), ('4', null, '2', '123123', '0', '0', '0', '3', '2012-11-21', '12312312'), ('5', null, '2', '123123', '0', '0', '0', '3', '2012-11-21', '12312312'), ('6', null, '2', '123123', '0', '0', '0', '3', '2012-11-21', '12312312'), ('7', null, '2', '123123', '0', '0', '0', '3', '2012-11-21', '12312312'), ('8', null, '2', '123123', '0', '0', '0', '3', '2012-11-21', '12312312'), ('9', null, '2', '123123', '0', '0', '0', '3', '2012-11-21', '12312312'), ('10', null, '2', 'fuytrftyrut', '4', '0', '0', '3', '2012-11-21', '2012-11-21'), ('12', null, '1', '<h3 style=\"color: red; text-align: center; \">\r\n	江西师范大学体育学院网站上线了~！</h3>\r\n<p>\r\n	&nbsp; &nbsp; &nbsp; &nbsp; 江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！</p>\r\n', '3', '0', '0', '1', '2012-11-21', '江西师范大学体育学院网站上线了~！'), ('13', null, '1', '<p>\r\n	江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！</p>\r\n', '1', '0', '0', '1', '2012-11-21', '江西师范大学体育学院网站上线了~！'), ('14', null, '1', '<p>\r\n	江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！</p>\r\n', '1', '0', '0', '1', '2012-11-21', '江西师范大学体育学院网站上线了~！'), ('15', null, '1', '<p>\r\n	江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！江西师范大学体育学院网站上线了~！</p>\r\n', '1', '0', '0', '3', '2012-11-21', '31江西师范大学体育学院网站上线了~！'), ('16', null, '1', '<p>\r\n	123123123</p>\r\n', '10', '0', '0', '3', '2012-11-21', '123123'), ('17', null, '1', '<p>\r\n	222</p>\r\n', '1', '0', '0', '3', '2012-11-21', '222'), ('18', null, '1', '<p>\r\n	333</p>\r\n', '2', '0', '0', '3', '2012-11-21', '333'), ('19', null, '1', '<p>\r\n	qqqq</p>\r\n', '1', '0', '0', '3', '2012-11-21', 'qqqq'), ('20', null, '1', '<p>\r\n	qweqwe</p>\r\n', '1', '0', '0', '3', '2012-11-21', 'qweqwe'), ('21', null, '1', '<p>\r\n	&nbsp;</p>\r\n<div style=\"color: rgb(0, 0, 0); font-family: Simsun; font-size: 14px; background-color: rgb(249, 247, 253); \">\r\n	<font size=\"5\"><strong><font size=\"4\">&nbsp; &nbsp; 为搞好学院综治&ldquo;宣传月&rdquo;活动，进一步做好消防安全工作，创建平安和谐校园，广泛普及灾害自救互救知识。3月13日，由我院举办的消防安全知识讲座在老校区体育大楼举行。我院分管综治工作的雷国华副院长主持了此次讲座，南昌市安居防火服务中心张业茂教官应邀为我院教工开设了以&ldquo;珍惜生命，远离火灾&rdquo;为主题的讲座，下午两点，全院教工齐聚一堂，共学消防知识。在讲座中，张教官列举了近年来全国发生的几起重大火灾，对引发火灾的原因进行了剖析，并明确指出消防意识的淡薄和消防知识的匮乏是导致火灾发生的主要原因。随后张教官深入浅出地向老师们讲解了<font color=\"#ff0000\">火灾预防、</font></font></strong></font><font size=\"4\"><font color=\"#ff0000\"><strong>火灾报警</strong><strong>、消防器材使用、逃生自救等消防知识。</strong></font></font></div>\r\n<div style=\"color: rgb(0, 0, 0); font-family: Simsun; font-size: 14px; background-color: rgb(249, 247, 253); \">\r\n	<strong><font size=\"4\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 通过此次消防知识讲座的开展增强了广大教职工的防火意识，很多老师觉得学院此次讲座开设非常及时，对引导自己走出生活的消防误区有很大的帮助。学院领导也表示，在今后的工作中，将进一步加强学院师生的消防安全</font></strong><font size=\"4\"><strong>教育</strong><strong>，同时希望老师们能将消防知识渗透到日常教学中。</strong></font></div>\r\n<div style=\"color: rgb(0, 0, 0); font-family: Simsun; font-size: 14px; background-color: rgb(249, 247, 253); \">\r\n	<font size=\"5\"><strong>&nbsp;</strong></font></div>\r\n<div style=\"color: rgb(0, 0, 0); font-family: Simsun; font-size: 14px; background-color: rgb(249, 247, 253); text-align: right; \">\r\n	<span style=\"font-size:16px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 体育学院</span></div>\r\n<div style=\"color: rgb(0, 0, 0); font-family: Simsun; font-size: 14px; background-color: rgb(249, 247, 253); \">\r\n	<p style=\"text-align: right; \">\r\n		<span style=\"font-size:16px;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2012-3-13</span></p>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', '6', '0', '0', '3', '2012-11-21', '体育学院组织全体教师听取消防安全知识讲座'), ('22', null, '1', '<p>\r\n	<span style=\"font-size:16px;\"><span style=\"color: rgb(0, 0, 0); font-family: Arial, \'Microsoft Yahei\', Simsun, sans-serif; background-color: rgb(249, 247, 253); \">&nbsp; &nbsp; &nbsp; &nbsp; 江西师范大学体育学院是国内办学历较早、办学规模较大、办学条件较好的体育院（系）。其前身江西国立体育专科学校创办于1936年，历经国立南昌大学体育专修科、江西体育学院、江西师范学院体育系和江西师范大学体育系等历史沿革，迄今已有69年的办学历史。&nbsp;</span><br style=\"color: rgb(0, 0, 0); font-family: Arial, \'Microsoft Yahei\', Simsun, sans-serif; background-color: rgb(249, 247, 253); \" />\r\n	<span style=\"color: rgb(0, 0, 0); font-family: Arial, \'Microsoft Yahei\', Simsun, sans-serif; background-color: rgb(249, 247, 253); \">&nbsp;&nbsp;&nbsp; 学院现设四系一部，拥有体育教育、社会体育、运动训练学和公共事业管理(体育经营与管理方向)四个本科专业，同时承担全校公共体育教学，体育教育专业为省级品牌专业，运动训练专业学校特色专业，学校体育连续多年被教育部评为先进单位。学院是全国为数不多、全省唯一的拥有《体育教育训练学》、《运动人体科学》和体育学科教育硕士授予点的单位，其中《体育教育训练学》专业为&ldquo;十五&rdquo;期间江西省高校重点学科。现在校全日制本科学生1174人，硕士研究生57人，成人教育本科函授生1000余人。学院师资力量雄厚、教学科研成果卓著。现有教职工128人，其中教授6人，副教授45人，硕士生导师19人。教师中有博士和在读博士5人，硕士和在读硕士20余人，拥有一批学术带头人和相当数量的优秀中青年教学骨干。近五年来，主持和参与完成一批国家教育部、国家体育总局&ldquo;九五&rdquo;、&ldquo;十五&rdquo;规划课题，省教科规划等省级课题。主编、副主编教材、专著30余部，参编40余部，在国内外重要学术会议和国家级、省级核心刊物发表论文400余篇。研究成果多次获省、部级科研成果奖，其中3项已达到国内先进水平。</span><br style=\"color: rgb(0, 0, 0); font-family: Arial, \'Microsoft Yahei\', Simsun, sans-serif; background-color: rgb(249, 247, 253); \" />\r\n	<span style=\"color: rgb(0, 0, 0); font-family: Arial, \'Microsoft Yahei\', Simsun, sans-serif; background-color: rgb(249, 247, 253); \">&nbsp;&nbsp;&nbsp; 学院还设青少年体育俱乐部、职业技能培训中心和国家职业技能鉴定所等。能为各类学生提供专业技能培训、颁发国家认定职业技能证书。</span><br style=\"color: rgb(0, 0, 0); font-family: Arial, \'Microsoft Yahei\', Simsun, sans-serif; background-color: rgb(249, 247, 253); \" />\r\n	<span style=\"color: rgb(0, 0, 0); font-family: Arial, \'Microsoft Yahei\', Simsun, sans-serif; background-color: rgb(249, 247, 253); \">&nbsp;&nbsp;&nbsp; 近年来，学院坚持本科教育和研究生教育并重的办学方针，以培养复合型体育专业人才为宗旨，突出办学特色和优势，努力实现2010年进入全国体育院（系）的先进行列的目标。</span></span></p>\r\n', '3', '0', '0', '2', '2012-11-21', '学院简介'), ('23', null, '2', '<p>\r\n	<span style=\"color: rgb(0, 0, 0); font-family: 宋体; background-color: rgb(249, 247, 253); \">罗林： 常务副院长&nbsp;&nbsp;</span></p>\r\n<p align=\"left\" style=\"color: rgb(0, 0, 0); font-family: 宋体; background-color: rgb(249, 247, 253); \">\r\n	&nbsp;</p>\r\n<div style=\"color: rgb(0, 0, 0); font-family: 宋体; background-color: rgb(249, 247, 253); \">\r\n	男，1972年9月生，中共党员，教授，博士，硕士生导师，江西省学生体育协会副主席、江西省体育科学学会副理事长、全国高等院校运动训练专业学会理事。2009年3月起任江西师范大学体育学院常务副院长，主持工作。</div>\r\n<div style=\"color: rgb(0, 0, 0); font-family: 宋体; background-color: rgb(249, 247, 253); \">\r\n	1991年~1995年就读于江西师范大学体育学院体育教育专业，本科生，获学士学位；1995年~1998年就读于首都体育学院体育教育训练学专业，研究生，硕士学位；1998年~2002年工作于江西师范大学体育学院，历任助教、讲师；2002年~2005年就读于苏州大学体育学院体育教育训练学专业，研究生、获博士学位；2005年~2009年2月工作于江西财经大学体育学院，历任副教授、副院长、院长。</div>\r\n<div align=\"left\" style=\"color: rgb(0, 0, 0); font-family: 宋体; background-color: rgb(249, 247, 253); \">\r\n	近些年来主持与参与完成省级课题10余项；出版《休闲体育概说》、《体育教学新论》、《大学体育选项教学指导教程》等多部专著、教材，在体育类核心期刊发表论文20余篇，2007年获省级社会科学优秀成果三等奖。</div>\r\n<div align=\"left\" style=\"color: rgb(0, 0, 0); font-family: 宋体; background-color: rgb(249, 247, 253); \">\r\n	&nbsp;</div>\r\n<div align=\"left\" style=\"color: rgb(0, 0, 0); font-family: 宋体; background-color: rgb(249, 247, 253); \">\r\n	&nbsp;</div>\r\n<div align=\"left\" style=\"color: rgb(0, 0, 0); font-family: 宋体; background-color: rgb(249, 247, 253); \">\r\n	<span style=\"font-family: Simsun; \">程其练：书记&nbsp;&nbsp;&nbsp;</span>\r\n	<p align=\"left\" style=\"font-family: Simsun; \">\r\n		<span style=\"font-family: 宋体; \">汉族，<span lang=\"EN-US\">1957年3月出生于江西新建，中共党员。<o:p>&nbsp;</o:p></span>现从事专业为体育教育训练学。<span lang=\"EN-US\">1981年1月毕业于江西师范大学体育学院，2004年11月晋升为教授。现任江西师范大学体育学院院长，为中国体育科学学会会员，国家级田径裁判员 。<o:p>&nbsp;</o:p></span></span><span lang=\"EN-US\" style=\"font-family: 宋体; font-size: 10.5pt; \">2001年起任体育教育训练学专业硕士生导师， 已指导硕士生3名。</span></p>\r\n	<p align=\"left\" style=\"font-family: Simsun; \">\r\n		&nbsp;</p>\r\n	<p align=\"left\" style=\"font-family: Simsun; \">\r\n		刘建平 副院长</p>\r\n	<p align=\"left\" style=\"font-family: Simsun; \">\r\n		&nbsp;</p>\r\n	<p align=\"left\" style=\"font-family: Simsun; \">\r\n		雷国华 副院长</p>\r\n	<p align=\"left\" style=\"font-family: Simsun; \">\r\n		&nbsp;</p>\r\n	<p align=\"left\" style=\"font-family: Simsun; \">\r\n		罗红雁 副院长</p>\r\n	<p align=\"left\" style=\"font-family: Simsun; \">\r\n		&nbsp;</p>\r\n	<p align=\"left\" style=\"font-family: Simsun; \">\r\n		尹国昌 副院长</p>\r\n	<p align=\"left\" style=\"font-family: Simsun; \">\r\n		&nbsp;</p>\r\n	<p align=\"left\" style=\"font-family: Simsun; \">\r\n		朱桂林 &nbsp;副院长</p>\r\n	<p align=\"left\" style=\"font-family: Simsun; \">\r\n		&nbsp;</p>\r\n	<p align=\"left\" style=\"font-family: Simsun; \">\r\n		肖勇&nbsp;党委书记</p>\r\n	<p align=\"left\" style=\"font-family: Simsun; \">\r\n		&nbsp;</p>\r\n	<p align=\"left\" style=\"font-family: Simsun; \">\r\n		王勇 院长助理</p>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', '0', '0', '0', '2', '2012-11-21', '现任领导'), ('24', null, '3', '<p>\r\n	&nbsp;</p>\r\n<table border=\"1\" bordercolor=\"#111111\" cellpadding=\"0\" cellspacing=\"0\" height=\"25\" id=\"AutoNumber1\" style=\"font-size: 9pt; border-collapse: collapse; \" width=\"100%\">\r\n	<tbody>\r\n		<tr>\r\n			<td height=\"12\" style=\"font-size: 9pt; \" width=\"27%\">\r\n				<p align=\"center\">\r\n					<font color=\"#0000ff\" size=\"3\">专业设置</font></p>\r\n			</td>\r\n			<td height=\"12\" style=\"font-size: 9pt; \" width=\"30%\">\r\n				<p align=\"center\">\r\n					<font color=\"#0000ff\" size=\"3\">开设课程</font></p>\r\n			</td>\r\n			<td height=\"12\" style=\"font-size: 9pt; \" width=\"43%\">\r\n				<p align=\"center\">\r\n					<font color=\"#0000ff\" size=\"3\">培养方向</font></p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td height=\"5\" style=\"font-size: 9pt; \" width=\"27%\">\r\n				体育教育<br />\r\n				（含师范专业）本科</td>\r\n			<td height=\"5\" style=\"font-size: 9pt; \" width=\"30%\">\r\n				<br />\r\n				人体解剖学 人体生理学（含运动生理）&nbsp;<br />\r\n				体育心理学 体育学概论&nbsp;<br />\r\n				体育保健学 学校体育学&nbsp;<br />\r\n				体育管理学 体育社会学&nbsp;<br />\r\n				体育产业 体育法学&nbsp;<br />\r\n				体育市场营销 田径&nbsp;<br />\r\n				球类 体操&nbsp;<br />\r\n				武术 健美操、游泳等&nbsp;<br />\r\n				<br />\r\n				　</td>\r\n			<td height=\"11\" style=\"font-size: 9pt; \" width=\"43%\">\r\n				&nbsp;&nbsp;&nbsp; 为社会培养德才兼备的高级体育人才。通过本专业学习能系统掌握体育教育的基本理论、基本知识和基本技能，掌握学校体育与健康教育工作规律，具有较强体育实践能力和在全面发展的基础上有所专长，毕业后能够担任大、中专院校、中学和各类职业技术学校的体育教学与科研工作，少年体校的运动训练工作，以及政府机关、企事业单位、社区体育俱乐部的体育管理和社会体育指导工作等。</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\" height=\"5\" style=\"font-size: 9pt; \" width=\"100%\">\r\n				<hr />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td height=\"4\" style=\"font-size: 9pt; \" width=\"27%\">\r\n				社会体育<br />\r\n				（体育康复方向）本科</td>\r\n			<td height=\"4\" style=\"font-size: 9pt; \" width=\"30%\">\r\n				生物化学 解剖学 生理学&nbsp;<br />\r\n				学校体育学 心理学 急救学&nbsp;<br />\r\n				体育学概论 方剂学 伤科学&nbsp;<br />\r\n				体育康复学 推拿手法 针灸&nbsp;<br />\r\n				体育市场营销 推拿功法 体操&nbsp;<br />\r\n				中医基础理论 导引与养生 武术&nbsp;<br />\r\n				保健营养学 球类 田径、游泳等</td>\r\n			<td height=\"4\" style=\"font-size: 9pt; \" width=\"43%\">\r\n				&nbsp;&nbsp;&nbsp; 为社会培养体育康复技能人才。在完成体育类培养目标基础上，突出体育康复基本理论和技能培养，具备从事体育与健康教学、训练基本能力，以及社区保健护理、治疗等能力。毕业后可从事大、中专院校、中学和各职业技术学校的体育、训练、保健工作，社区保健服务网、体育医闻所、康复疗养院的保健护理、治疗，以及企事业单位、社区体育俱乐部从事体育保健康复工作。</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\" height=\"5\" style=\"font-size: 9pt; \" width=\"100%\">\r\n				<hr />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td height=\"5\" style=\"font-size: 9pt; \" width=\"27%\">\r\n				社会体育<br />\r\n				（体育经营与管理方向）本科</td>\r\n			<td height=\"5\" style=\"font-size: 9pt; \" width=\"30%\">\r\n				体育社会学 体育管理学&nbsp;<br />\r\n				体育心理学 体育市场与营销&nbsp;<br />\r\n				体育法规 体育经济学&nbsp;<br />\r\n				大众健身娱乐体育基础上理论与方法<br />\r\n				包括：<br />\r\n				大众健身操、体育舞蹈、球类运动、<br />\r\n				太极拳、推拿导引、休闲体育等</td>\r\n			<td height=\"5\" style=\"font-size: 9pt; \" width=\"43%\">\r\n				&nbsp;&nbsp;&nbsp; 培养适应我国现代化建设需要的，具有社会体育的基本理论、知识与技能，能在社会体育领域中人事体育活动组织管理、咨询指导、经营开发，以及教学与科研等方面工作的专门人才。毕业后可从事大、中专院校、中学和各类职业技术学校体育教学工作，到各级政府体委、行业体协、各类体育俱乐部、社区社会体育活动中心，以及各大公司、企事业单位人事社会体育指导、体育经纪人、组织管理、市场经营与开发等工作。</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\" height=\"4\" style=\"font-size: 9pt; \" width=\"100%\">\r\n				<hr />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td height=\"4\" style=\"font-size: 9pt; \" width=\"27%\">\r\n				运动训练<br />\r\n				（只招收高水平运动员）</td>\r\n			<td height=\"4\" style=\"font-size: 9pt; \" width=\"30%\">\r\n				人体生理学（含运动生理）<br />\r\n				人体解剖学 体育心理学&nbsp;<br />\r\n				体育学概论 体育保健学&nbsp;<br />\r\n				学校体育学 体育管理学&nbsp;<br />\r\n				体育社会学 体育产业&nbsp;<br />\r\n				体育法学 体育市场营销&nbsp;<br />\r\n				身体训练 田径&nbsp;<br />\r\n				球烊 体操&nbsp;<br />\r\n				武术 健美操、游泳等</td>\r\n			<td height=\"4\" style=\"font-size: 9pt; \" width=\"43%\">\r\n				&nbsp;&nbsp;&nbsp; 培养德才兼备、具有较高专业技能的体育高级人才。通过本专业的学习，能较好掌握教育学、心理学和体育人文、人体、经济、管理等多学科的基本理论与原理，具有较高的专业技能，运动成绩达到一级运动员以上，交具有较强的组织体育教学与训练能力和从事体育科学研究的基本素质，毕业后能胜任青少年体育运动学校、体育训练中心教练员，大、中学体育都是体育经纪人、体育营销与管理员、社会体育指导员等工作。</td>\r\n		</tr>\r\n		<tr>\r\n			<td colspan=\"3\" height=\"3\" style=\"font-size: 9pt; \" width=\"100%\">\r\n				<hr />\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td height=\"6\" style=\"font-size: 9pt; \" width=\"27%\">\r\n				　\r\n				<p>\r\n					大学体育部</p>\r\n				<p>\r\n					　</p>\r\n			</td>\r\n			<td height=\"6\" style=\"font-size: 9pt; \" width=\"30%\">\r\n				&nbsp;</td>\r\n			<td height=\"10\" style=\"font-size: 9pt; \" width=\"43%\">\r\n				　　大学体育是大学教育的重要组成部分，是培养德、智、体全面发展人才的重要手段，大学体育部是学校体育工作的职能部门，直属学校与体育学院领导。承担学校体育教学和课外体育活动等工作。现组织机构设置为：部主任 1名，副主任2名，教务秘书1名(专职)，教务员1名(兼职)：下设4个教研室。</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n<p>\r\n	&nbsp;</p>\r\n', '1', '0', '0', '2', '2012-11-21', '机构设置'), ('25', null, '3', '', '1', '0', '0', '2', '2012-11-21', '院教务办'), ('26', null, '3', '', '2', '0', '0', '2', '2012-11-21', '院行政办'), ('27', null, '1', '<p>\r\n	&nbsp;</p>\r\n<div style=\"color: rgb(0, 0, 0); font-family: Simsun; background-color: rgb(249, 247, 253); \">\r\n	<div style=\"font-size: 14px; text-align: center; \">\r\n		<font size=\"3\">&mdash;&mdash;体院工会组织教职工前往奉新萝卜潭秋游</font></div>\r\n	<div style=\"font-size: 14px; \">\r\n		<font size=\"3\">&nbsp; &nbsp; 10月21日，天高云淡，秋高气爽。体院工会组织学院40岁以下教职工前往奉新萝卜潭、百丈寺秋游赏景。</font></div>\r\n	<div style=\"font-size: 14px; \">\r\n		<font size=\"3\">&nbsp; &nbsp; 秋天的萝卜潭，摇曳的芦苇在暖阳的照射下，染得艳丽多采；素有&ldquo;江南第一瀑布群&rdquo;的&ldquo;萝卜潭&rdquo;，八潭八瀑，它们似玉带飘舞，珠玉垂帘，叠飞而下，蔚为壮观。老师们在青山绿水中陶醉留影，流连忘返&hellip;&hellip;</font></div>\r\n	<div style=\"font-size: 14px; \">\r\n		<p>\r\n			<font size=\"3\">&nbsp; &nbsp; 下午，老师们来到奉新的弥猴桃基地。放眼望去，满园桃色，挂果累累。大家欣喜不已，在茂密的果园里忙乎开来了，体验着采摘的乐趣。在欢歌笑语声中，收获了劳动的果实，也收获了一份走近大自然的喜悦，同时也加强了青年教职工之间的友谊，丰富了大家的业余生活。（体院斯熙）</font></p>\r\n	</div>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', '1', '0', '0', '3', '2012-11-21', '陶冶山水 拾趣果林'), ('28', null, '1', '<p>\r\n	&nbsp; &nbsp; &nbsp; &nbsp; 江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试江西师大体育学院网站测试</p>\r\n', '2', '0', '0', '1', '2012-11-21', '江西师大体育学院网站测试'), ('29', null, '1', '<p>\r\n	&nbsp;</p>\r\n<div style=\"color: rgb(0, 0, 0); font-family: Simsun; font-size: 14px; background-color: rgb(249, 247, 253); \">\r\n	<font size=\"4\"><strong>&nbsp; &nbsp; 九月二十五日，军训的号角刚刚停下，可是有这样一群平凡的新生却没有停下他们步伐。</strong></font></div>\r\n<div style=\"color: rgb(0, 0, 0); font-family: Simsun; font-size: 14px; background-color: rgb(249, 247, 253); \">\r\n	<font size=\"4\"><strong>&nbsp; &nbsp; 新学期，图文信息中心为了更好地服务同学，对图文信息中心三楼和四楼自习室进行了改动，大量桌椅需要搬动，就是这样一件平凡的小事，却牵动了2012级体育学院体育教育专业新生的心。没有命令，没有要求，在下午三点，体育学院2012级体育教育专业的新生自发地来到了图文信息中心帮忙。时逢南昌刚刚夏秋交替之际，天气微凉，可是在场的同学们没有一个不是汗流浃背，没有一个不是衣衫尽湿，同学们热情洋溢的气氛充斥了整个图文信息中心。</strong></font></div>\r\n<div style=\"color: rgb(0, 0, 0); font-family: Simsun; font-size: 14px; background-color: rgb(249, 247, 253); \">\r\n	<font size=\"4\"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 在同学们一张张依旧略显稚气的脸上洋溢的不是疲惫，不是无耐，而是一种发自内心的快乐，身上散发的是一个新时代青年的蓬勃朝气。他们，2012级体育学院体育教育专业的新生们，用他们平凡的身躯、平凡的双手做着最平凡不过的事情，却演绎了一段不平凡的成长，一次不平凡的雷锋精神的传承。</strong></font></div>\r\n<div style=\"color: rgb(0, 0, 0); font-family: Simsun; font-size: 14px; background-color: rgb(249, 247, 253); \">\r\n	<p>\r\n		<font size=\"4\"><strong>&nbsp; &nbsp; 三月已去，十月迫眉，2012级体育学院体育教育系的同学们用他们的行动，诠释了新时代的雷锋精神，任何时间任何地点任何事件，如果需要如果有能力去完成，他们在这！</strong></font></p>\r\n</div>\r\n<p>\r\n	&nbsp;</p>\r\n', '3', '0', '0', '3', '2012-11-21', '新时代新青年 平凡中的不平凡'), ('30', null, '4', '', '1', '0', '0', '5', '2012-11-21', '科研成果'), ('31', null, '1', '<p>\r\n	&nbsp;</p>\r\n<div style=\"color: rgb(0, 0, 0); font-family: Simsun; font-size: 14px; background-color: rgb(249, 247, 253); \">\r\n	<font size=\"4\">&nbsp; &nbsp; 近日，国家体育总局下文正式通知，我校获批体育总局重点实验室。</font></div>\r\n<div style=\"color: rgb(0, 0, 0); font-family: Simsun; font-size: 14px; background-color: rgb(249, 247, 253); \">\r\n	<font size=\"4\">&nbsp; &nbsp; 2011年上半年，我校与江西省体育局联合申报国家体育总局水上项目训练监控与干预重点实验室。经过申报材料初审与专家实地考察两个环节，现我校正式获批总局重点实验室。</font></div>\r\n<div style=\"color: rgb(0, 0, 0); font-family: Simsun; font-size: 14px; background-color: rgb(249, 247, 253); \">\r\n	<font size=\"4\">&nbsp; &nbsp; 国家体育总局重点实验室建设项目启动于2006年，是国家体育总局的一项重要体育科技工程。该项目旨在充分发挥举国体制的优势，调动各方面的体育科技力量，为备战奥运会进行的一项具体的科研攻关与科技服务工作。</font></div>\r\n<div style=\"color: rgb(0, 0, 0); font-family: Simsun; font-size: 14px; background-color: rgb(249, 247, 253); \">\r\n	<font size=\"4\">&nbsp; &nbsp; 我校与江西省体育局合作申报国家体育总局重点实验室，是国家体育总局的首次尝试。这意味着我校成为全国第一家获批国家体育总局重点实验室的高校。</font></div>\r\n<div style=\"color: rgb(0, 0, 0); font-family: Simsun; font-size: 14px; background-color: rgb(249, 247, 253); \">\r\n	<font size=\"4\">重点实验室申报过程中得到了学校主要领导、分管科研与设备的校领导及相关职能部门的大力支持，体现了我校协同攻关的能力与精神。</font></div>\r\n<p>\r\n	&nbsp;</p>\r\n', '1', '0', '0', '5', '2012-11-21', '我校获批国家体育总局重点实验室'), ('32', null, '0', '', '0', '0', '0', '0', '2012-11-21', '123123'), ('33', null, '0', '', '0', '0', '0', '0', '2012-11-21', '123123'), ('34', null, '0', '', '0', '0', '0', '0', '2012-11-21', '123123'), ('35', null, '1', '<h3 style=\"color: red; text-align: center; \">\r\n	<span style=\"font-size:14px;\">体育学院展开全面学习十八大精神</span></h3>\r\n<p>\r\n	&nbsp; &nbsp; &nbsp; 体育学院展开全面学习十八大精神体育学院展开全面学习十八大精神体育学院展开全面学习十八大精神体育学院展开全面学习十八大精神体育学院展开全面学习十八大精神体育学院展开全面学习十八大精神体育学院展开全面学习十八大精神体育学院展开全面学习十八大精神体育学院展开全面学习十八大精神体育学院展开全面学习十八大精神体育学院展开全面学习十八大精神体育学院展开全面学习十八大精神体育学院展开全面学习十八大精神体育学院展开全面学习十八大精神体育学院展开全面学习十八大精神体育学院展开全面学习十八大精神体育学院展开全面学习十八大精神体育学院展开全面学习十八大精神体育学院展开全面学习十八大精神体育学院展开全面学习十八大精神体育学院展开全面学习十八大精神体育学院展开全面学习十八大精神体育学院展开全面学习十八大精神体育学院展开全面学习十八大精神体育学院展开全面学习十八大精神体育学院展开全面学习十八大精神体育学院展开全面学习十八大精神体育学院展开全面学习十八大精神体育学院展开全面学习十八大精神体育学院展开全面学习十八大精神体育学院展开全面学习十八大精神</p>\r\n', '10', '0', '0', '3', '2012-11-21', '体育学院展开全面学习十八大精神'), ('36', null, '1', '<p>\r\n	<span style=\"font-size:16px;\">&nbsp; &nbsp; &nbsp; &nbsp;江西师大计算机信息工程学院对体育学院网站支持江西师大计算机信息工程学院对体育学院网站支持江西师大计算机信息工程学院对体育学院网站支持江西师大计算机信息工程学院对体育学院网站支持江西师大计算机信息工程学院对体育学院网站支持江西师大计算机信息工程学院对体育学院网站支持江西师大计算机信息工程学院对体育学院网站支持江西师大计算机信息工程学院对体育学院网站支持江西师大计算机信息工程学院对体育学院网站支持江西师大计算机信息工程学院对体育学院网站支持江西师大计算机信息工程学院对体育学院网站支持江西师大计算机信息工程学院对体育学院网站支持江西师大计算机信息工程学院对体育学院网站支持江西师大计算机信息工程学院对体育学院网站支持江西师大计算机信息工程学院对体育学院网站支持江西师大计算机信息工程学院对体育学院网站支持江西师大计算机信息工程学院对体育学院网站支持江西师大计算机信息工程学院对体育学院网站支持</span></p>\r\n', '2', '0', '0', '1', '2012-11-28', '江西师大计算机信息工程学院对体育学院网站支持');
COMMIT;

-- ----------------------------
-- Auto increment value for `admin`
-- ----------------------------
ALTER TABLE `admin` AUTO_INCREMENT=3;

-- ----------------------------
-- Auto increment value for `file`
-- ----------------------------
ALTER TABLE `file` AUTO_INCREMENT=36;

-- ----------------------------
-- Auto increment value for `mainpicture`
-- ----------------------------
ALTER TABLE `mainpicture` AUTO_INCREMENT=5;

-- ----------------------------
-- Auto increment value for `message`
-- ----------------------------
ALTER TABLE `message` AUTO_INCREMENT=37;
