/*
 Navicat Premium Data Transfer

 Source Server         : project
 Source Server Type    : MySQL
 Source Server Version : 50527
 Source Host           : localhost:3306
 Source Schema         : meizu

 Target Server Type    : MySQL
 Target Server Version : 50527
 File Encoding         : 65001

 Date: 05/09/2020 10:59:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city`  (
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '城市名称',
  `rid` int(11) NULL DEFAULT NULL COMMENT '城市编号',
  `provonceRid` int(255) NULL DEFAULT NULL COMMENT '所在省份编号'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES ('北京市', 110100, 110000);
INSERT INTO `city` VALUES ('天津市', 120100, 120000);
INSERT INTO `city` VALUES ('石家庄市', 130100, 130000);
INSERT INTO `city` VALUES ('唐山市', 130200, 130000);
INSERT INTO `city` VALUES ('邯郸市', 130400, 130000);
INSERT INTO `city` VALUES ('太原市', 140100, 140000);
INSERT INTO `city` VALUES ('大同市', 140200, 140000);
INSERT INTO `city` VALUES ('晋城市', 140500, 140000);
INSERT INTO `city` VALUES ('运城市', 140800, 140000);
INSERT INTO `city` VALUES ('忻州市', 140900, 140000);
INSERT INTO `city` VALUES ('临汾市', 141000, 140000);
INSERT INTO `city` VALUES ('赤峰市', 150400, 150000);
INSERT INTO `city` VALUES ('巴彦淖尔市', 150800, 150000);
INSERT INTO `city` VALUES ('兴安盟', 152200, 150000);
INSERT INTO `city` VALUES ('锦州市', 210700, 210000);
INSERT INTO `city` VALUES ('朝阳市', 211300, 210000);
INSERT INTO `city` VALUES ('哈尔滨市', 230100, 230000);
INSERT INTO `city` VALUES ('黑河市', 231100, 230000);
INSERT INTO `city` VALUES ('上海市', 310100, 310000);
INSERT INTO `city` VALUES ('南京市', 320100, 320000);
INSERT INTO `city` VALUES ('徐州市', 320300, 320000);
INSERT INTO `city` VALUES ('常州市', 320400, 320000);
INSERT INTO `city` VALUES ('南通市', 320600, 320000);
INSERT INTO `city` VALUES ('连云港市', 320700, 320000);
INSERT INTO `city` VALUES ('淮安市', 320800, 320000);
INSERT INTO `city` VALUES ('盐城市', 320900, 320000);
INSERT INTO `city` VALUES ('扬州市', 321000, 320000);
INSERT INTO `city` VALUES ('泰州市', 321200, 320000);
INSERT INTO `city` VALUES ('宿迁市', 321300, 320000);
INSERT INTO `city` VALUES ('杭州市', 330100, 330000);
INSERT INTO `city` VALUES ('宁波市', 330200, 330000);
INSERT INTO `city` VALUES ('温州市', 330300, 330000);
INSERT INTO `city` VALUES ('湖州市', 330500, 330000);
INSERT INTO `city` VALUES ('台州市', 331000, 330000);
INSERT INTO `city` VALUES ('合肥市', 340100, 340000);
INSERT INTO `city` VALUES ('芜湖市', 340200, 340000);
INSERT INTO `city` VALUES ('蚌埠市', 340300, 340000);
INSERT INTO `city` VALUES ('马鞍山市', 340500, 340000);
INSERT INTO `city` VALUES ('安庆市', 340800, 340000);
INSERT INTO `city` VALUES ('阜阳市', 341200, 340000);
INSERT INTO `city` VALUES ('宿州市', 341300, 340000);
INSERT INTO `city` VALUES ('六安市', 341500, 340000);
INSERT INTO `city` VALUES ('亳州市', 341600, 340000);
INSERT INTO `city` VALUES ('福州市', 350100, 350000);
INSERT INTO `city` VALUES ('厦门市', 350200, 350000);
INSERT INTO `city` VALUES ('莆田市', 350300, 350000);
INSERT INTO `city` VALUES ('泉州市', 350500, 350000);
INSERT INTO `city` VALUES ('九江市', 360400, 360000);
INSERT INTO `city` VALUES ('赣州市', 360700, 360000);
INSERT INTO `city` VALUES ('青岛市', 370200, 370000);
INSERT INTO `city` VALUES ('东营市', 370500, 370000);
INSERT INTO `city` VALUES ('济宁市', 370800, 370000);
INSERT INTO `city` VALUES ('临沂市', 371300, 370000);
INSERT INTO `city` VALUES ('德州市', 371400, 370000);
INSERT INTO `city` VALUES ('菏泽市', 371700, 370000);
INSERT INTO `city` VALUES ('新乡市', 410700, 410000);
INSERT INTO `city` VALUES ('商丘市', 411400, 410000);
INSERT INTO `city` VALUES ('武汉市', 420100, 420000);
INSERT INTO `city` VALUES ('十堰市', 420300, 420000);
INSERT INTO `city` VALUES ('宜昌市', 420500, 420000);
INSERT INTO `city` VALUES ('襄阳市', 420600, 420000);
INSERT INTO `city` VALUES ('长沙市', 430100, 430000);
INSERT INTO `city` VALUES ('株洲市', 430200, 430000);
INSERT INTO `city` VALUES ('衡阳市', 430400, 430000);
INSERT INTO `city` VALUES ('韶关市', 440200, 440000);
INSERT INTO `city` VALUES ('深圳市', 440300, 440000);
INSERT INTO `city` VALUES ('珠海市', 440400, 440000);
INSERT INTO `city` VALUES ('佛山市', 440600, 440000);
INSERT INTO `city` VALUES ('江门市', 440700, 440000);
INSERT INTO `city` VALUES ('惠州市', 441300, 440000);
INSERT INTO `city` VALUES ('东莞市', 441900, 440000);
INSERT INTO `city` VALUES ('潮州市', 445100, 440000);
INSERT INTO `city` VALUES ('揭阳市', 445200, 440000);
INSERT INTO `city` VALUES ('南宁市', 450100, 450000);
INSERT INTO `city` VALUES ('桂林市', 450300, 450000);
INSERT INTO `city` VALUES ('重庆市', 500100, 500000);
INSERT INTO `city` VALUES ('成都市', 510100, 510000);
INSERT INTO `city` VALUES ('德阳市', 510600, 510000);
INSERT INTO `city` VALUES ('遂宁市', 510900, 510000);
INSERT INTO `city` VALUES ('南充市', 511300, 510000);
INSERT INTO `city` VALUES ('广安市', 511600, 510000);
INSERT INTO `city` VALUES ('资阳市', 512000, 510000);
INSERT INTO `city` VALUES ('贵阳市', 520100, 520000);
INSERT INTO `city` VALUES ('铜仁市', 522200, 520000);
INSERT INTO `city` VALUES ('毕节市', 522400, 520000);
INSERT INTO `city` VALUES ('昆明市', 530100, 530000);
INSERT INTO `city` VALUES ('曲靖市', 530300, 530000);
INSERT INTO `city` VALUES ('保山市', 530500, 530000);
INSERT INTO `city` VALUES ('红河哈尼族彝族自治州', 532500, 530000);
INSERT INTO `city` VALUES ('西安市', 610100, 610000);
INSERT INTO `city` VALUES ('咸阳市', 610400, 610000);
INSERT INTO `city` VALUES ('渭南市', 610500, 610000);
INSERT INTO `city` VALUES ('汉中市', 610700, 610000);
INSERT INTO `city` VALUES ('榆林市', 610800, 610000);
INSERT INTO `city` VALUES ('兰州市', 620100, 620000);
INSERT INTO `city` VALUES ('嘉峪关市', 620200, 620000);
INSERT INTO `city` VALUES ('白银市', 620400, 620000);
INSERT INTO `city` VALUES ('武威市', 620600, 620000);
INSERT INTO `city` VALUES ('张掖市', 620700, 620000);
INSERT INTO `city` VALUES ('平凉市', 620800, 620000);
INSERT INTO `city` VALUES ('酒泉市', 620900, 620000);
INSERT INTO `city` VALUES ('陇南市', 621200, 620000);
INSERT INTO `city` VALUES ('西宁市', 630100, 630000);
INSERT INTO `city` VALUES ('海西蒙古族藏族自治州', 632800, 630000);
INSERT INTO `city` VALUES ('银川市', 640100, 640000);
INSERT INTO `city` VALUES ('中卫市', 640500, 640000);
INSERT INTO `city` VALUES ('香港岛', 810100, 810000);

-- ----------------------------
-- Table structure for discuss
-- ----------------------------
DROP TABLE IF EXISTS `discuss`;
CREATE TABLE `discuss`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容',
  `imgurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像地址',
  `time` datetime NULL DEFAULT NULL COMMENT '发帖时间',
  `posts` decimal(10, 0) NULL DEFAULT NULL COMMENT '帖子数量',
  `listen` decimal(10, 0) NULL DEFAULT NULL COMMENT '收听',
  `audience` decimal(10, 0) NULL DEFAULT NULL COMMENT '听众',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 121 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of discuss
-- ----------------------------
INSERT INTO `discuss` VALUES (1, '捏胸王', '寻思自己拍当壁纸', 'https://image-res.mzres.com/img/download/uc/16/78/84/91/70/167884917/w50h50?t=1598876145', '2020-08-26 17:19:20', 123, 0, 10);
INSERT INTO `discuss` VALUES (2, '蔡世伟大王', '及时行乐-「魅族超充USB-C移动电源」', 'https://image-res.mzres.com/img/download/uc/75/73/93/10/00/7573931/w50h50?t=1598876145', '2020-08-25 17:19:59', 154, 1, 45);
INSERT INTO `discuss` VALUES (3, '我真心没钱', 'MX2的用户还有有活跃的吗？', 'https://image-res.mzres.com/img/download/uc/46/11/66/30/00/4611663/w50h50?t=1598876145', '2020-08-26 13:20:55', 285, 2, 24);
INSERT INTO `discuss` VALUES (4, '营养丶不良', 'tb上有卖17清水壳吗？', 'https://image-res.mzres.com/img/download/uc/24/26/02/10/00/2426021/w50h50?t=1598876145', '2020-08-26 16:20:14', 167, 3, 23);
INSERT INTO `discuss` VALUES (5, '六莲', 'NFC 所谓的无电刷卡等 公交刷卡使用交流', 'https://image-res.mzres.com/img/download/uc/13/41/41/88/20/134141882/w50h50?t=1598876145', '2020-08-26 17:23:33', 821, 4, 72);
INSERT INTO `discuss` VALUES (6, '九尾波斯猫v', '「魅族 17Pro」老朋友，在路上', 'https://image-res.mzres.com/img/download/uc/37/23/20/00/00/37232/w50h50?t=1598876145', '2020-08-26 17:29:52', 263, 5, 96);
INSERT INTO `discuss` VALUES (7, '鬼儿子6', '快手那个识别音乐什么时候来啊', 'https://image-res.mzres.com/img/download/uc/15/26/94/34/20/152694342/w50h50?t=1598876145', '2020-08-26 17:19:20', 123, 0, 10);
INSERT INTO `discuss` VALUES (8, 'z小马猴', '有什么办法把里面的资料导出来', 'https://image-res.mzres.com/img/download/uc/12/70/19/17/50/127019175/w50h50?t=1598876145', '2020-08-25 17:19:59', 154, 1, 45);
INSERT INTO `discuss` VALUES (9, '在路上3010', '魅族17', 'https://image-res.mzres.com/img/download/uc/15/15/05/11/10/151505111/w50h50?t=1598876145', '2020-08-26 13:20:55', 285, 2, 24);
INSERT INTO `discuss` VALUES (10, '莫名其妙天亮了', '需要买手机有没有什么推荐', 'https://image-res.mzres.com/img/download/uc/10/89/78/57/00/10897857/w50h50?t=1598876145', '2020-08-26 16:20:14', 167, 3, 23);
INSERT INTO `discuss` VALUES (11, 'Dearm.', '第一次自己开车去上学～', 'https://image-res.mzres.com/img/download/uc/13/06/60/38/30/130660383/w50h50?t=1598876145', '2020-08-26 17:23:33', 821, 4, 72);
INSERT INTO `discuss` VALUES (12, '是你手机壳', '这电脑怎么样', 'https://image-res.mzres.com/img/download/uc/15/05/42/07/20/150542072/w50h50?t=1598876145', '2020-08-26 17:29:52', 263, 5, 96);
INSERT INTO `discuss` VALUES (13, '济南魅友家俱乐部', '济南魅友家六周年活动回顾', 'https://image-res.mzres.com/img/download/uc/77/49/40/60/00/7749406/w50h50?t=1598876145', '2020-08-26 17:19:20', 123, 0, 10);
INSERT INTO `discuss` VALUES (14, '征南', '摄像头进灰', 'https://image-res.mzres.com/img/download/uc/11/63/22/73/10/116322731/w50h50?t=1598876145', '2020-08-25 17:19:59', 154, 1, 45);
INSERT INTO `discuss` VALUES (15, 'Lock12', '提前暴露了18？', 'https://image-res.mzres.com/img/download/uc/15/61/16/71/10/156116711/w50h50?t=1598876145', '2020-08-26 13:20:55', 285, 2, 24);
INSERT INTO `discuss` VALUES (16, '水中玥', '小六支持PD快充吗？', 'https://image-res.mzres.com/img/download/uc/13/90/08/15/00/13900815/w50h50?t=1598876145', '2020-08-26 16:20:14', 167, 3, 23);
INSERT INTO `discuss` VALUES (17, '_少少', '魅族音乐没有本地搜索功能吗？', 'https://image-res.mzres.com/img/download/uc/12/76/53/35/70/127653357/w50h50?t=1598876145', '2020-08-26 17:23:33', 821, 4, 72);
INSERT INTO `discuss` VALUES (18, '还不是时辰', '快充看得见？！魅族超充USB-C移动电源上手', 'https://image-res.mzres.com/img/download/uc/11/98/62/10/00/119862100/w50h50?t=1598876145', '2020-08-26 17:29:52', 263, 5, 96);
INSERT INTO `discuss` VALUES (19, '梦无际淡', 'p7更新来了', 'https://image-res.mzres.com/img/download/uc/13/07/20/93/00/130720930/w50h50?t=1598876145', '2020-08-26 17:19:20', 123, 0, 10);
INSERT INTO `discuss` VALUES (20, '挚情忠仁', '各位大神，想换17pro，问个关于换机助手的问题', 'https://image-res.mzres.com/img/download/uc/13/04/65/00/00/13046500/w50h50?t=1598876145', '2020-08-25 17:19:59', 154, 1, 45);
INSERT INTO `discuss` VALUES (21, '噜噜噜结', '这个音乐自启动到底能不能解决了？', 'https://image-res.mzres.com/img/download/uc/14/84/34/94/30/148434943/w50h50?t=1598876145', '2020-08-26 13:20:55', 285, 2, 24);
INSERT INTO `discuss` VALUES (22, 'Diwen_g', '用网易云音乐的魅友有哪些？', 'https://image-res.mzres.com/img/download/uc/83/33/88/40/00/8333884/w50h50?t=1598876145', '2020-08-26 16:20:14', 167, 3, 23);
INSERT INTO `discuss` VALUES (23, '皇城高尔夫', '魅族今年就一款17吗', 'https://image-res.mzres.com/img/download/uc/14/56/38/45/10/145638451/w50h50?t=1598876145', '2020-08-26 17:23:33', 821, 4, 72);
INSERT INTO `discuss` VALUES (24, 'Fubuki丶', '有没有17用户开120刷新率啊', 'https://image-res.mzres.com/img/download/uc/14/60/13/12/50/146013125/w50h50?t=1598876145', '2020-08-26 17:29:52', 263, 5, 96);
INSERT INTO `discuss` VALUES (25, 'ThinQ', '关于曲面屏的讨论', 'https://image-res.mzres.com/img/download/uc/13/99/81/85/50/139981855/w50h50?t=1598876145', '2020-08-26 17:19:20', 123, 0, 10);
INSERT INTO `discuss` VALUES (26, '壹道成長', '16thp集合', 'https://image-res.mzres.com/img/download/uc/25/52/78/00/00/2552780/w50h50?t=1598876145', '2020-08-25 17:19:59', 154, 1, 45);
INSERT INTO `discuss` VALUES (27, 'c小哥', '魅族手表', 'https://image-res.mzres.com/img/download/uc/19/33/72/65/00/19337265/w50h50?t=1598876145', '2020-08-26 13:20:55', 285, 2, 24);
INSERT INTO `discuss` VALUES (28, '瞎扯淡嘿嘿', '魅族16x', 'https://image-res.mzres.com/img/download/uc/15/20/87/85/20/152087852/w50h50?t=1598876145', '2020-08-26 16:20:14', 167, 3, 23);
INSERT INTO `discuss` VALUES (29, '疯子J', '求助大佬', 'https://image-res.mzres.com/img/download/uc/13/14/89/78/30/131489783/w50h50?t=1598876145', '2020-08-26 17:23:33', 821, 4, 72);
INSERT INTO `discuss` VALUES (30, '用户638179264', '铁子们。这跑分什么水平？', 'https://image-res.mzres.com/img/download/uc/15/95/44/81/60/159544816/w50h50?t=1598876145', '2020-08-26 17:29:52', 263, 5, 96);
INSERT INTO `discuss` VALUES (31, '绪宏呐', '安卓10稳定版来了', 'https://image-res.mzres.com/img/download/uc/16/84/15/65/30/168415653/w50h50?t=1598876145', '2020-08-26 17:19:20', 123, 0, 10);
INSERT INTO `discuss` VALUES (32, '潇湘白离', '关于无线充支架3D打印免费', 'https://image-res.mzres.com/img/download/uc/14/44/48/82/10/144448821/w50h50?t=1598876145', '2020-08-25 17:19:59', 154, 1, 45);
INSERT INTO `discuss` VALUES (33, '择木知幽鸟', '魅族17P 安装 超级壁纸', 'https://image-res.mzres.com/img/download/uc/42/38/14/70/00/4238147/w50h50?t=1598876145', '2020-08-26 13:20:55', 285, 2, 24);
INSERT INTO `discuss` VALUES (34, 'l浮生l', '双双换新机，16th进化到16spro，爱了', 'https://image-res.mzres.com/img/download/uc/12/05/14/91/70/120514917/w50h50?t=1598876145', '2020-08-26 16:20:14', 167, 3, 23);
INSERT INTO `discuss` VALUES (35, '易羞歌', '9月来了17热度已过，OTA还有惊喜吗？', 'https://image-res.mzres.com/img/download/uc/55/51/05/70/00/5551057/w50h50?t=1598876145', '2020-08-26 17:23:33', 821, 4, 72);
INSERT INTO `discuss` VALUES (36, '大耳朵画画', '清除了one mind数据怎么手机振动没了', 'https://image-res.mzres.com/img/download/uc/13/86/74/42/30/138674423/w50h50?t=1598876145', '2020-08-26 17:29:52', 263, 5, 96);
INSERT INTO `discuss` VALUES (37, '风雪凝冰', '16s pro支持哪些充电协议', 'https://image-res.mzres.com/img/download/uc/16/80/50/37/20/168050372/w50h50?t=1598876145', '2020-08-26 17:19:20', 123, 0, 10);
INSERT INTO `discuss` VALUES (38, '随指尖而舞', '去年，今年', 'https://image-res.mzres.com/img/download/uc/13/83/18/57/60/138318576/w50h50?t=1598876145', '2020-08-25 17:19:59', 154, 1, 45);
INSERT INTO `discuss` VALUES (39, 'beyond丶家駒', '今日随手', 'https://image-res.mzres.com/img/download/uc/13/15/03/54/70/131503547/w50h50?t=1598876145', '2020-08-26 13:20:55', 285, 2, 24);
INSERT INTO `discuss` VALUES (40, '木兰花丶开', '太空杯收到', 'https://image-res.mzres.com/img/download/uc/12/54/90/45/00/12549045/w50h50?t=1598876145', '2020-08-26 16:20:14', 167, 3, 23);
INSERT INTO `discuss` VALUES (41, '用户678117532', '魅友们梦寐以求的APP来了！', 'https://image-res.mzres.com/img/download/uc/16/95/29/38/30/169529383/w50h50?t=1598876145', '2020-08-26 17:23:33', 821, 4, 72);
INSERT INTO `discuss` VALUES (42, '张同学某某', '明年屏下摄像头的真全面屏就会普及了', 'https://image-res.mzres.com/img/download/uc/76/75/57/40/00/7675574/w50h50?t=1598876145', '2020-08-26 17:29:52', 263, 5, 96);
INSERT INTO `discuss` VALUES (44, '6到飞起的MX', '扎心了，铁子  hh不会套路的某族', 'https://image-res.mzres.com/img/download/uc/14/18/31/89/80/141831898/w50h50?t=1598876145', '2020-08-26 17:19:20', 123, 0, 10);
INSERT INTO `discuss` VALUES (45, 'Id单', '贴了老爆的膜', 'https://image-res.mzres.com/img/download/uc/16/93/40/65/40/169340654/w50h50?t=1598876145', '2020-08-25 17:19:59', 154, 1, 45);
INSERT INTO `discuss` VALUES (46, '雾里的猫', '魅族16spro老是卡顿', 'https://image-res.mzres.com/img/download/uc/16/70/61/59/30/167061593/w50h50?t=1598876145', '2020-08-26 13:20:55', 285, 2, 24);
INSERT INTO `discuss` VALUES (47, 'HL梦荡', '光遇马赛克和画质问题', 'https://image-res.mzres.com/img/download/uc/16/33/79/26/60/163379266/w50h50?t=1598876145', '2020-08-26 16:20:14', 167, 3, 23);
INSERT INTO `discuss` VALUES (48, 'ThinQ', '魅族为啥不考虑出个曲面屏手机呢', 'https://image-res.mzres.com/img/download/uc/13/99/81/85/50/139981855/w50h50?t=1598876145', '2020-08-26 17:23:33', 821, 4, 72);
INSERT INTO `discuss` VALUES (49, '龙卷风极速', '魅族Pro7画屏没有音乐了', 'https://image-res.mzres.com/img/download/uc/24/72/31/24/00/24723124/w50h50?t=1598876145', '2020-08-26 17:29:52', 263, 5, 96);
INSERT INTO `discuss` VALUES (50, '就叫白茶', '最近手机发热的有点严重啊', 'https://image-res.mzres.com/img/download/uc/11/65/20/40/50/116520405/w50h50?t=1598876145', '2020-08-26 17:19:20', 123, 0, 10);
INSERT INTO `discuss` VALUES (51, '捏胸王', '寻思自己拍当壁纸', 'https://image-res.mzres.com/img/download/uc/16/78/84/91/70/167884917/w50h50?t=1598876145', '2020-08-25 17:19:59', 154, 1, 45);
INSERT INTO `discuss` VALUES (52, '蔡世伟大王', '及时行乐-「魅族超充USB-C移动电源」', 'https://image-res.mzres.com/img/download/uc/75/73/93/10/00/7573931/w50h50?t=1598876145', '2020-08-26 13:20:55', 285, 2, 24);
INSERT INTO `discuss` VALUES (53, '我真心没钱', 'MX2的用户还有有活跃的吗？', 'https://image-res.mzres.com/img/download/uc/46/11/66/30/00/4611663/w50h50?t=1598876145', '2020-08-26 16:20:14', 167, 3, 23);
INSERT INTO `discuss` VALUES (54, '营养丶不良', 'tb上有卖17清水壳吗？', 'https://image-res.mzres.com/img/download/uc/24/26/02/10/00/2426021/w50h50?t=1598876145', '2020-08-26 17:23:33', 821, 4, 72);
INSERT INTO `discuss` VALUES (55, '六莲', 'NFC 所谓的无电刷卡等 公交刷卡使用交流', 'https://image-res.mzres.com/img/download/uc/13/41/41/88/20/134141882/w50h50?t=1598876145', '2020-08-26 17:29:52', 263, 5, 96);
INSERT INTO `discuss` VALUES (56, '九尾波斯猫v', '「魅族 17Pro」老朋友，在路上', 'https://image-res.mzres.com/img/download/uc/37/23/20/00/00/37232/w50h50?t=1598876145', '2020-08-26 17:19:20', 123, 0, 10);
INSERT INTO `discuss` VALUES (57, '鬼儿子6', '快手那个识别音乐什么时候来啊', 'https://image-res.mzres.com/img/download/uc/15/26/94/34/20/152694342/w50h50?t=1598876145', '2020-08-25 17:19:59', 154, 1, 45);
INSERT INTO `discuss` VALUES (58, 'z小马猴', '有什么办法把里面的资料导出来', 'https://image-res.mzres.com/img/download/uc/12/70/19/17/50/127019175/w50h50?t=1598876145', '2020-08-26 13:20:55', 285, 2, 24);
INSERT INTO `discuss` VALUES (59, '在路上3010', '魅族17', 'https://image-res.mzres.com/img/download/uc/15/15/05/11/10/151505111/w50h50?t=1598876145', '2020-08-26 16:20:14', 167, 3, 23);
INSERT INTO `discuss` VALUES (60, '莫名其妙天亮了', '需要买手机有没有什么推荐', 'https://image-res.mzres.com/img/download/uc/10/89/78/57/00/10897857/w50h50?t=1598876145', '2020-08-26 17:23:33', 821, 4, 72);
INSERT INTO `discuss` VALUES (61, 'Dearm.', '第一次自己开车去上学～', 'https://image-res.mzres.com/img/download/uc/13/06/60/38/30/130660383/w50h50?t=1598876145', '2020-08-26 17:29:52', 263, 5, 96);
INSERT INTO `discuss` VALUES (62, '是你手机壳', '这电脑怎么样', 'https://image-res.mzres.com/img/download/uc/15/05/42/07/20/150542072/w50h50?t=1598876145', '2020-08-26 17:19:20', 123, 0, 10);
INSERT INTO `discuss` VALUES (63, '济南魅友家俱乐部', '济南魅友家六周年活动回顾', 'https://image-res.mzres.com/img/download/uc/77/49/40/60/00/7749406/w50h50?t=1598876145', '2020-08-25 17:19:59', 154, 1, 45);
INSERT INTO `discuss` VALUES (64, '征南', '摄像头进灰', 'https://image-res.mzres.com/img/download/uc/11/63/22/73/10/116322731/w50h50?t=1598876145', '2020-08-26 13:20:55', 285, 2, 24);
INSERT INTO `discuss` VALUES (65, 'Lock12', '提前暴露了18？', 'https://image-res.mzres.com/img/download/uc/15/61/16/71/10/156116711/w50h50?t=1598876145', '2020-08-26 16:20:14', 167, 3, 23);
INSERT INTO `discuss` VALUES (66, '水中玥', '小六支持PD快充吗？', 'https://image-res.mzres.com/img/download/uc/13/90/08/15/00/13900815/w50h50?t=1598876145', '2020-08-26 17:23:33', 821, 4, 72);
INSERT INTO `discuss` VALUES (67, '_少少', '魅族音乐没有本地搜索功能吗？', 'https://image-res.mzres.com/img/download/uc/12/76/53/35/70/127653357/w50h50?t=1598876145', '2020-08-26 17:29:52', 263, 5, 96);
INSERT INTO `discuss` VALUES (68, '还不是时辰', '快充看得见？！魅族超充USB-C移动电源上手', 'https://image-res.mzres.com/img/download/uc/11/98/62/10/00/119862100/w50h50?t=1598876145', '2020-08-26 17:19:20', 123, 0, 10);
INSERT INTO `discuss` VALUES (69, '梦无际淡', 'p7更新来了', 'https://image-res.mzres.com/img/download/uc/13/07/20/93/00/130720930/w50h50?t=1598876145', '2020-08-25 17:19:59', 154, 1, 45);
INSERT INTO `discuss` VALUES (70, '挚情忠仁', '各位大神，想换17pro，问个关于换机助手的问题', 'https://image-res.mzres.com/img/download/uc/13/04/65/00/00/13046500/w50h50?t=1598876145', '2020-08-26 13:20:55', 285, 2, 24);
INSERT INTO `discuss` VALUES (71, '噜噜噜结', '这个音乐自启动到底能不能解决了？', 'https://image-res.mzres.com/img/download/uc/14/84/34/94/30/148434943/w50h50?t=1598876145', '2020-08-26 16:20:14', 167, 3, 23);
INSERT INTO `discuss` VALUES (72, 'Diwen_g', '用网易云音乐的魅友有哪些？', 'https://image-res.mzres.com/img/download/uc/83/33/88/40/00/8333884/w50h50?t=1598876145', '2020-08-26 17:23:33', 821, 4, 72);
INSERT INTO `discuss` VALUES (73, '皇城高尔夫', '魅族今年就一款17吗', 'https://image-res.mzres.com/img/download/uc/14/56/38/45/10/145638451/w50h50?t=1598876145', '2020-08-26 17:29:52', 263, 5, 96);
INSERT INTO `discuss` VALUES (74, 'Fubuki丶', '有没有17用户开120刷新率啊', 'https://image-res.mzres.com/img/download/uc/14/60/13/12/50/146013125/w50h50?t=1598876145', '2020-08-26 17:19:20', 123, 0, 10);
INSERT INTO `discuss` VALUES (75, 'ThinQ', '关于曲面屏的讨论', 'https://image-res.mzres.com/img/download/uc/13/99/81/85/50/139981855/w50h50?t=1598876145', '2020-08-25 17:19:59', 154, 1, 45);
INSERT INTO `discuss` VALUES (76, '壹道成長', '16thp集合', 'https://image-res.mzres.com/img/download/uc/25/52/78/00/00/2552780/w50h50?t=1598876145', '2020-08-26 13:20:55', 285, 2, 24);
INSERT INTO `discuss` VALUES (77, 'c小哥', '魅族手表', 'https://image-res.mzres.com/img/download/uc/19/33/72/65/00/19337265/w50h50?t=1598876145', '2020-08-26 16:20:14', 167, 3, 23);
INSERT INTO `discuss` VALUES (78, '瞎扯淡嘿嘿', '魅族16x', 'https://image-res.mzres.com/img/download/uc/15/20/87/85/20/152087852/w50h50?t=1598876145', '2020-08-26 17:23:33', 821, 4, 72);
INSERT INTO `discuss` VALUES (79, '疯子J', '求助大佬', 'https://image-res.mzres.com/img/download/uc/13/14/89/78/30/131489783/w50h50?t=1598876145', '2020-08-26 17:29:52', 263, 5, 96);
INSERT INTO `discuss` VALUES (80, '用户638179264', '铁子们。这跑分什么水平？', 'https://image-res.mzres.com/img/download/uc/15/95/44/81/60/159544816/w50h50?t=1598876145', '2020-08-26 17:19:20', 123, 0, 10);
INSERT INTO `discuss` VALUES (81, '绪宏呐', '安卓10稳定版来了', 'https://image-res.mzres.com/img/download/uc/16/84/15/65/30/168415653/w50h50?t=1598876145', '2020-08-25 17:19:59', 154, 1, 45);
INSERT INTO `discuss` VALUES (82, '潇湘白离', '关于无线充支架3D打印免费', 'https://image-res.mzres.com/img/download/uc/14/44/48/82/10/144448821/w50h50?t=1598876145', '2020-08-26 13:20:55', 285, 2, 24);
INSERT INTO `discuss` VALUES (83, '择木知幽鸟', '魅族17P 安装 超级壁纸', 'https://image-res.mzres.com/img/download/uc/42/38/14/70/00/4238147/w50h50?t=1598876145', '2020-08-26 16:20:14', 167, 3, 23);
INSERT INTO `discuss` VALUES (84, 'l浮生l', '双双换新机，16th进化到16spro，爱了', 'https://image-res.mzres.com/img/download/uc/12/05/14/91/70/120514917/w50h50?t=1598876145', '2020-08-26 17:23:33', 821, 4, 72);
INSERT INTO `discuss` VALUES (85, '易羞歌', '9月来了17热度已过，OTA还有惊喜吗？', 'https://image-res.mzres.com/img/download/uc/55/51/05/70/00/5551057/w50h50?t=1598876145', '2020-08-26 17:29:52', 263, 5, 96);
INSERT INTO `discuss` VALUES (86, '大耳朵画画', '清除了one mind数据怎么手机振动没了', 'https://image-res.mzres.com/img/download/uc/13/86/74/42/30/138674423/w50h50?t=1598876145', '2020-08-26 17:19:20', 123, 0, 10);
INSERT INTO `discuss` VALUES (87, '风雪凝冰', '16s pro支持哪些充电协议', 'https://image-res.mzres.com/img/download/uc/16/80/50/37/20/168050372/w50h50?t=1598876145', '2020-08-25 17:19:59', 154, 1, 45);
INSERT INTO `discuss` VALUES (88, '随指尖而舞', '去年，今年', 'https://image-res.mzres.com/img/download/uc/13/83/18/57/60/138318576/w50h50?t=1598876145', '2020-08-26 13:20:55', 285, 2, 24);
INSERT INTO `discuss` VALUES (89, 'beyond丶家駒', '今日随手', 'https://image-res.mzres.com/img/download/uc/13/15/03/54/70/131503547/w50h50?t=1598876145', '2020-08-26 16:20:14', 167, 3, 23);
INSERT INTO `discuss` VALUES (90, '木兰花丶开', '太空杯收到', 'https://image-res.mzres.com/img/download/uc/12/54/90/45/00/12549045/w50h50?t=1598876145', '2020-08-26 17:23:33', 821, 4, 72);
INSERT INTO `discuss` VALUES (91, '用户678117532', '魅友们梦寐以求的APP来了！', 'https://image-res.mzres.com/img/download/uc/16/95/29/38/30/169529383/w50h50?t=1598876145', '2020-08-26 17:29:52', 263, 5, 96);
INSERT INTO `discuss` VALUES (92, '张同学某某', '明年屏下摄像头的真全面屏就会普及了', 'https://image-res.mzres.com/img/download/uc/76/75/57/40/00/7675574/w50h50?t=1598876145', '2020-08-26 17:19:20', 123, 0, 10);
INSERT INTO `discuss` VALUES (93, '6到飞起的MX', '扎心了，铁子  hh不会套路的某族', 'https://image-res.mzres.com/img/download/uc/14/18/31/89/80/141831898/w50h50?t=1598876145', '2020-08-25 17:19:59', 154, 1, 45);
INSERT INTO `discuss` VALUES (94, 'Id单', '贴了老爆的膜', 'https://image-res.mzres.com/img/download/uc/16/93/40/65/40/169340654/w50h50?t=1598876145', '2020-08-26 13:20:55', 285, 2, 24);
INSERT INTO `discuss` VALUES (95, '雾里的猫', '魅族16spro老是卡顿', 'https://image-res.mzres.com/img/download/uc/16/70/61/59/30/167061593/w50h50?t=1598876145', '2020-08-26 16:20:14', 167, 3, 23);
INSERT INTO `discuss` VALUES (96, 'HL梦荡', '光遇马赛克和画质问题', 'https://image-res.mzres.com/img/download/uc/16/33/79/26/60/163379266/w50h50?t=1598876145', '2020-08-26 17:23:33', 821, 4, 72);
INSERT INTO `discuss` VALUES (97, 'ThinQ', '魅族为啥不考虑出个曲面屏手机呢', 'https://image-res.mzres.com/img/download/uc/13/99/81/85/50/139981855/w50h50?t=1598876145', '2020-08-26 17:29:52', 263, 5, 96);
INSERT INTO `discuss` VALUES (98, '龙卷风极速', '魅族Pro7画屏没有音乐了', 'https://image-res.mzres.com/img/download/uc/24/72/31/24/00/24723124/w50h50?t=1598876145', '2020-08-26 17:19:20', 123, 0, 10);
INSERT INTO `discuss` VALUES (99, '就叫白茶', '最近手机发热的有点严重啊', 'https://image-res.mzres.com/img/download/uc/11/65/20/40/50/116520405/w50h50?t=1598876145', '2020-08-25 17:19:59', 154, 1, 45);
INSERT INTO `discuss` VALUES (100, '捏胸王', '寻思自己拍当壁纸', 'https://image-res.mzres.com/img/download/uc/16/78/84/91/70/167884917/w50h50?t=1598876145', '2020-08-26 13:20:55', 285, 2, 24);
INSERT INTO `discuss` VALUES (101, '蔡世伟大王', '及时行乐-「魅族超充USB-C移动电源」', 'https://image-res.mzres.com/img/download/uc/75/73/93/10/00/7573931/w50h50?t=1598876145', '2020-08-26 16:20:14', 167, 3, 23);
INSERT INTO `discuss` VALUES (102, '我真心没钱', 'MX2的用户还有有活跃的吗？', 'https://image-res.mzres.com/img/download/uc/46/11/66/30/00/4611663/w50h50?t=1598876145', '2020-08-26 17:23:33', 821, 4, 72);
INSERT INTO `discuss` VALUES (103, '营养丶不良', 'tb上有卖17清水壳吗？', 'https://image-res.mzres.com/img/download/uc/24/26/02/10/00/2426021/w50h50?t=1598876145', '2020-08-26 17:29:52', 263, 5, 96);
INSERT INTO `discuss` VALUES (104, '六莲', 'NFC 所谓的无电刷卡等 公交刷卡使用交流', 'https://image-res.mzres.com/img/download/uc/13/41/41/88/20/134141882/w50h50?t=1598876145', '2020-08-26 17:19:20', 123, 0, 10);
INSERT INTO `discuss` VALUES (105, '九尾波斯猫v', '「魅族 17Pro」老朋友，在路上', 'https://image-res.mzres.com/img/download/uc/37/23/20/00/00/37232/w50h50?t=1598876145', '2020-08-25 17:19:59', 154, 1, 45);
INSERT INTO `discuss` VALUES (106, '鬼儿子6', '快手那个识别音乐什么时候来啊', 'https://image-res.mzres.com/img/download/uc/15/26/94/34/20/152694342/w50h50?t=1598876145', '2020-08-26 13:20:55', 285, 2, 24);
INSERT INTO `discuss` VALUES (107, 'z小马猴', '有什么办法把里面的资料导出来', 'https://image-res.mzres.com/img/download/uc/12/70/19/17/50/127019175/w50h50?t=1598876145', '2020-08-26 16:20:14', 167, 3, 23);
INSERT INTO `discuss` VALUES (108, '在路上3010', '魅族17', 'https://image-res.mzres.com/img/download/uc/15/15/05/11/10/151505111/w50h50?t=1598876145', '2020-08-26 17:23:33', 821, 4, 72);
INSERT INTO `discuss` VALUES (109, '莫名其妙天亮了', '需要买手机有没有什么推荐', 'https://image-res.mzres.com/img/download/uc/10/89/78/57/00/10897857/w50h50?t=1598876145', '2020-08-26 17:29:52', 263, 5, 96);
INSERT INTO `discuss` VALUES (110, 'Dearm.', '第一次自己开车去上学～', 'https://image-res.mzres.com/img/download/uc/13/06/60/38/30/130660383/w50h50?t=1598876145', '2020-08-26 17:19:20', 123, 0, 10);
INSERT INTO `discuss` VALUES (111, '是你手机壳', '这电脑怎么样', 'https://image-res.mzres.com/img/download/uc/15/05/42/07/20/150542072/w50h50?t=1598876145', '2020-08-25 17:19:59', 154, 1, 45);
INSERT INTO `discuss` VALUES (112, '济南魅友家俱乐部', '济南魅友家六周年活动回顾', 'https://image-res.mzres.com/img/download/uc/77/49/40/60/00/7749406/w50h50?t=1598876145', '2020-08-26 13:20:55', 285, 2, 24);
INSERT INTO `discuss` VALUES (113, '征南', '摄像头进灰', 'https://image-res.mzres.com/img/download/uc/11/63/22/73/10/116322731/w50h50?t=1598876145', '2020-08-26 16:20:14', 167, 3, 23);
INSERT INTO `discuss` VALUES (114, 'Lock12', '提前暴露了18？', 'https://image-res.mzres.com/img/download/uc/15/61/16/71/10/156116711/w50h50?t=1598876145', '2020-08-26 17:23:33', 821, 4, 72);
INSERT INTO `discuss` VALUES (115, '水中玥', '小六支持PD快充吗？', 'https://image-res.mzres.com/img/download/uc/13/90/08/15/00/13900815/w50h50?t=1598876145', '2020-08-26 17:29:52', 263, 5, 96);
INSERT INTO `discuss` VALUES (116, '_少少', '魅族音乐没有本地搜索功能吗？', 'https://image-res.mzres.com/img/download/uc/12/76/53/35/70/127653357/w50h50?t=1598876145', '2020-08-26 17:19:20', 123, 0, 10);
INSERT INTO `discuss` VALUES (117, '还不是时辰', '快充看得见？！魅族超充USB-C移动电源上手', 'https://image-res.mzres.com/img/download/uc/11/98/62/10/00/119862100/w50h50?t=1598876145', '2020-08-25 17:19:59', 154, 1, 45);
INSERT INTO `discuss` VALUES (118, '梦无际淡', 'p7更新来了', 'https://image-res.mzres.com/img/download/uc/13/07/20/93/00/130720930/w50h50?t=1598876145', '2020-08-26 13:20:55', 285, 2, 24);
INSERT INTO `discuss` VALUES (119, '挚情忠仁', '各位大神，想换17pro，问个关于换机助手的问题', 'https://image-res.mzres.com/img/download/uc/13/04/65/00/00/13046500/w50h50?t=1598876145', '2020-08-26 16:20:14', 167, 3, 23);
INSERT INTO `discuss` VALUES (120, '噜噜噜结', '这个音乐自启动到底能不能解决了？', 'https://image-res.mzres.com/img/download/uc/14/84/34/94/30/148434943/w50h50?t=1598876145', '2020-08-26 17:23:33', 821, 4, 72);

-- ----------------------------
-- Table structure for essay
-- ----------------------------
DROP TABLE IF EXISTS `essay`;
CREATE TABLE `essay`  (
  `articlename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `coverImg` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `views` int(255) NULL DEFAULT NULL,
  `discuss` int(255) NULL DEFAULT NULL,
  `writer` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `deta` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `leadWord` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of essay
-- ----------------------------
INSERT INTO `essay` VALUES ('做生活的主角，将生活一按成诗', '综合讨论', 'https://bbsimage.res.meizu.com/recommend/2020/08/24/171310x394iii1m1z8p5uh.png', 2969, 132, 'SJQ10', '昨天17:08', 'One Moment Awards 2020 魅族年度影像大赛，一起参赛吧');
INSERT INTO `essay` VALUES ('魅族 17Pro拍摄-天博古琴展', '摄影天地', 'https://bbsimage.res.meizu.com/recommend/2020/08/11/112237ddr915erure9w1dc.jpg', 6288, 181, 'xrx33', '8月6日', '天博的一个新展，也是我疫情以来第一次去天博。这次展览是古琴主题，展品都是围绕古琴展开。不看不知道，没');
INSERT INTO `essay` VALUES ('魅族16th 拍摄', '摄影天地', 'https://bbsimage.res.meizu.com/recommend/2020/08/11/112132nlssvvaa4p8mo3wa.jpg', 7235, 151, '全真人的希望', '8月7日', NULL);
INSERT INTO `essay` VALUES ('「Meizu Pay ✖️ 深圳通」魅族 17 系列用户率先体验', '综合讨论', 'https://bbsimage.res.meizu.com/recommend/2020/08/12/102657gc4d6icc54i6pqr7.jpg', 19084, 567, 'Flyme', '8月12日', '来了就是深圳人。 8 月 13 日， Meizu Pay 将正式解锁「深圳通」。魅族 17 系列用户');
INSERT INTO `essay` VALUES ('全局振感，指尖回响', 'Flyme', 'https://bbsimage.res.meizu.com/recommend/2020/08/18/100837oycsr8aarvpccxaf.jpg', 29877, 366, 'Flyme', '7天前', '智能机伊始，大部分用户热衷于自定义铃声，以此来彰显个性和品味。渐渐地发现，自带铃声反而更耐听。然而伴');
INSERT INTO `essay` VALUES ('2020 魅族年度影像大赛 邀请函抢先看', '综合讨论', 'https://bbsimage.res.meizu.com/recommend/2020/08/20/205521epo53q3oo7ulz1zp.png', 11124, 370, 'JIE2015', '5天前', '今年的「One Moment Awards」—— 2020 魅族年度影像大赛已经拉开了序幕，在短视频');

-- ----------------------------
-- Table structure for flyme
-- ----------------------------
DROP TABLE IF EXISTS `flyme`;
CREATE TABLE `flyme`  (
  `index-img-url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `index-title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of flyme
-- ----------------------------
INSERT INTO `flyme` VALUES ('https://fms.res.meizu.com/dms/2020/05/27/2432d698-30a2-44ab-9ad7-e2a8d7fed254.png', NULL);
INSERT INTO `flyme` VALUES ('https://fms.res.meizu.com/dms/2020/08/31/32e963d3-61a2-44ca-94fe-bb314e93c017.jpg', '跨越使用小障碍');
INSERT INTO `flyme` VALUES ('https://fms.res.meizu.com/dms/2020/08/25/b93b2b7a-227c-4db7-86f6-e7439c8dd8d6.jpg', '全局振感，指尖回响');
INSERT INTO `flyme` VALUES ('https://fms.res.meizu.com/dms/2020/05/27/9195db7f-9958-4ae0-90ea-740e8d024989.png', '全面提升续航能力');
INSERT INTO `flyme` VALUES ('https://fms.res.meizu.com/dms/2020/07/27/9e3ff75a-cc9c-441b-951f-4f01c0ca0237.png', '全新导入滤镜');
INSERT INTO `flyme` VALUES ('https://fms.res.meizu.com/dms/2020/07/29/c78851c5-96e9-44c2-b617-f9b15f916178.jpg', '快速挽救手机数据');
INSERT INTO `flyme` VALUES ('https://fms.res.meizu.com/dms/2020/05/29/9b7b5115-0377-4847-a5d3-af72ffed96e3.jpg', '产品建议解答');

-- ----------------------------
-- Table structure for handset
-- ----------------------------
DROP TABLE IF EXISTS `handset`;
CREATE TABLE `handset`  (
  `src` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `coin` decimal(10, 2) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of handset
-- ----------------------------
INSERT INTO `handset` VALUES ('ada', 0.00);

-- ----------------------------
-- Table structure for hot
-- ----------------------------
DROP TABLE IF EXISTS `hot`;
CREATE TABLE `hot`  (
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `userurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户头像',
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题',
  `titleurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '标题图片',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户手机类型'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of hot
-- ----------------------------
INSERT INTO `hot` VALUES ('frankm8fans', 'https://img-res.mzres.com/img/download/uc/12/46/00/30/00/1246003/w100h100?t=1599126037', '魅族 17Pro 定白率先上手体验，第一感觉就是，这很魅族！', 'https://fms.res.meizu.com/dms/2020/05/28/fda8c8cb-6dd5-4fca-8c64-fdc6a07123a8.png', '魅族 17Pro');
INSERT INTO `hot` VALUES ('小宇先森08', 'https://img-res.mzres.com/img/download/uc/13/28/97/03/00/13289703/w100h100?t=1599126037', '不只是颜值出众，可谓是秀外慧中。', 'https://fms.res.meizu.com/dms/2020/05/28/42b2c0bf-f5b0-4f0f-9023-3df3d10a0662.png', '魅族 17');
INSERT INTO `hot` VALUES ('grayfox77', 'https://img-res.mzres.com/img/download/uc/58/35/18/00/00/583518/w100h100?t=1599126037', '现在大家对手机拍照质量的需求越来越高，最受关注的就是焦段与画质。', 'https://fms.res.meizu.com/dms/2020/05/28/40f14166-72e1-40c3-a816-1b44a05ca270.png', '魅族 17Pro 摄影作品');
INSERT INTO `hot` VALUES ('明日之新', 'https://img-res.mzres.com/img/download/uc/14/52/97/69/00/14529769/w100h100?t=1599126037', '魅族 17 Pro 6400W 全场景 AR 专业影像系统体验。', 'https://fms.res.meizu.com/dms/2020/05/28/97540b0b-9fb2-45e1-bbec-2a250c64a696.png', '魅族 17 Pro 摄影作品');
INSERT INTO `hot` VALUES ('一叶一会', 'https://img-res.mzres.com/img/download/uc/96/59/85/50/00/9659855/w100h100?t=1599126037', '魅族 17 微距摄影，灵动绚烂。', 'https://fms.res.meizu.com/dms/2020/05/28/444b1da7-072a-4a3a-9fc5-8bafb630ccfd.png', '魅族 17 摄影作品');
INSERT INTO `hot` VALUES ('明日之新', 'https://img-res.mzres.com/img/download/uc/14/52/97/69/00/14529769/w100h100?t=1599126037', '多一点耐心，多一点发现，多一点想象，去留意身边风景。', 'https://fms.res.meizu.com/dms/2020/05/28/d5ad3a0d-ead8-4c65-a517-84de313c1b4e.png', '魅族 17 Pro 摄影作品');
INSERT INTO `hot` VALUES ('我是魅之神', 'https://img-res.mzres.com/img/download/uc/11/90/25/05/60/119025056/w100h100?t=1599126037', '魅族 17 Pro手持超级夜景实拍，镜头里的夜色如此美妙。', 'https://fms.res.meizu.com/dms/2020/05/28/ab66ca73-8431-4ba4-9189-e4708f88eda3.png', '魅族 17Pro 摄影作品');
INSERT INTO `hot` VALUES ('frankm8fans', 'https://img-res.mzres.com/img/download/uc/12/46/00/30/00/1246003/w100h100?t=1599126037', '陪你一路风光 陪你一起风光！', 'https://fms.res.meizu.com/dms/2020/05/28/17ce9018-4516-494c-a112-cd0529249396.png', '魅族情怀');

-- ----------------------------
-- Table structure for invitations
-- ----------------------------
DROP TABLE IF EXISTS `invitations`;
CREATE TABLE `invitations`  (
  `serialNumber` int(10) NOT NULL AUTO_INCREMENT,
  `headPortrait` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `headline` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `pageView` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `discussion` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  PRIMARY KEY (`serialNumber`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of invitations
-- ----------------------------
INSERT INTO `invitations` VALUES (1, 'https://image-res.mzres.com/img/download/uc/12/82/47/52/70/128247527/w100h100?t=1598236801', '啊这', '似梦·非梦', '3009', '140');
INSERT INTO `invitations` VALUES (2, 'https://image-res.mzres.com/img/download/uc/25/17/50/73/00/25175073/w100h100?t=1598236801', '亲爱的p6p', '铭时sama', '2482', '160');
INSERT INTO `invitations` VALUES (3, 'https://image-res.mzres.com/img/download/uc/20/55/01/03/00/20550103/w100h100?t=1598236801', '17PR0~超广角带来的惊喜', '天地人和1978', '2054', '143');
INSERT INTO `invitations` VALUES (4, 'https://image-res.mzres.com/img/download/uc/12/69/63/59/00/12696359/w100h100?t=1598236801', '17pro', '木林森', '2069', '96');
INSERT INTO `invitations` VALUES (5, 'https://image-res.mzres.com/img/download/uc/42/62/31/20/00/4262312/w100h100?t=1598236801', '一个方法让手机不卡', 'misswell', '2773', '57');
INSERT INTO `invitations` VALUES (6, 'https://image-res.mzres.com/img/download/uc/14/40/04/57/40/144004574/w100h100?t=1598236801', 'Aicy识曲，流弊了！', '奔跑吧奶瓶', '2594', '52');
INSERT INTO `invitations` VALUES (7, 'https://image-res.mzres.com/img/download/uc/15/83/36/37/00/158336370/w100h100?t=1598236801', '不懂就问，来看看至尊。', '阿甘乐金口', '2148', '53');
INSERT INTO `invitations` VALUES (8, 'https://image-res.mzres.com/img/download/uc/11/86/92/89/60/118692896/w100h100?t=1598236801', '生日提早过', '老王当自强', '1158', '92');
INSERT INTO `invitations` VALUES (9, 'https://image-res.mzres.com/img/download/uc/12/21/62/30/30/122162303/w100h100?t=1598236801', 'mi10至尊版怎么有这么大的缝隙？', '侯十一', '1885', '61');
INSERT INTO `invitations` VALUES (10, 'https://image-res.mzres.com/img/download/uc/14/40/04/57/40/144004574/w100h100?t=1598236801', '刚发现一个小功能', '奔跑吧奶瓶', '1771', '54');
INSERT INTO `invitations` VALUES (11, 'https://image-res.mzres.com/img/download/uc/14/34/35/40/40/143435404/w100h100?t=1598236801', '稳定版推送了', '初见落霞', '2296', '22');
INSERT INTO `invitations` VALUES (12, 'https://image-res.mzres.com/img/download/uc/21/75/93/80/00/2175938/w100h100?t=1598236801', '17，你让我错过了升职加薪的机会', '爱情傻气', '1802', '34');

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '型号',
  `versions` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '版本',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '简介',
  `color` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '颜色',
  `capatity` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '容量',
  `imgurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片路径',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型',
  `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '价格',
  `tabImg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '切换图片路径',
  `indexdesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '首页简介',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 105 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, 'banner', '', NULL, NULL, '', '[\'./images/han1.jpg\']', 'handset', NULL, NULL, '');
INSERT INTO `products` VALUES (2, '魅族 17 Pro', '全网通公开版 ', '【限时领券至高立省200】【购17Pro赠全新壳膜套装】【学生购机享精美礼品】高通骁龙 865 + UFS 3.1 + LPDDR5 | 6400W 全场景 AR 专业影像系统 ', '[\'乌金\',\'定白\',\'天青\',\'月白天青\']', '[\'8 + 128GB\',\'12 + 256GB\']', '[\'./images/hand1-1.png@480x480.jpg\',\'./images/hand1-2.png@480x480.jpg\',\'./images/hand1-3.png@480x480.jpg\',\'./images/hand1-4.png@480x480.jpg\']', 'handset', '[\'4299.00\',\'4699.00\']', '[\'./images/wujin.png\',\'./images/bai.png\',\'./images/tianqing.png\',\'./images/yuebaitianqing.png\']', '赠全新壳膜套装');
INSERT INTO `products` VALUES (3, '魅族 17', '全网通公开版', '【限时领券立省200】【购魅族17赠全新壳膜套装】【学生购机享精美礼品】高通骁龙 865 + UFS 3.1 高速闪存', '[\'AG梦幻独角兽\',\'松深入墨\',\'十七度灰\',\'AG星际灰\',\'AG原野绿\',]', '[\'8 + 128GB\',\'12 + 256GB\']', '[\'./images/hand2-1.png@480x480.jpg\',\'./images/hand2-2.png@480x480.jpg\',\'./images/hand2-3.png@480x480.jpg\',\'./images/hand2-4.png@480x480.jpg\',\'./images/hand2-5.png@480x480.jpg\']', 'handset', '[\'3699.00\',\'3999.00\']', '[\'./images/menghuan.png\',\'./images/songlan.png\',\'./images/17duhei.png\',\'./images/aghui.png\',\'./images/aglv.png\']', '赠全新壳膜套装');
INSERT INTO `products` VALUES (4, '魅族 17 Pro 晓芳窑艺术典藏版', '全网通公开版', '这艺术 科技极了', '[\'天青\']', '[\'12 + 256GB\']', '[\'./images/hand3-1.png@480x480.jpg\']', 'handset', '[\'9999.00\']', '[\'./images/tianqing.png\']', '这艺术 科技极了');
INSERT INTO `products` VALUES (5, '魅族 16T', '全网通公开版', '6.5英寸极边全面屏 | 骁龙855旗舰处理器 | 4500mAh续航怪兽 | UFS 3.0 高速闪存 | 「双」·立体声扬声器 | 超广角 AI 三摄 | 线性振动马达 | 全球频段', '[\'鲸跃蓝\',\'湖光绿\',\'日光橙\']', '[\'6 + 128GB\',\'8 + 128GB\',\'8 + 256GB\']', '[\'./images/hand4-1.png@480x480.jpg\',\'./images/hand4-2.png@480x480.jpg\',\'./images/hand4-3.png@480x480.jpg\']', 'handset', '[\'1999.00\',\'2299.00\',\'2499.00\']', '[\'./images/yatelan.png\',\'./images/huguanglv.png\',\'./images/riguangcheng.png\']', '6.5英寸极边全面屏 | 骁龙855旗舰处理器');
INSERT INTO `products` VALUES (6, '魅族 16s Pro', '全网通公开版', '高通骁龙 855 Plus  | 索尼 4800W 像素超广角 AI 三摄 | 极边全面屏 | Flyme8 尝鲜体验 | 极速屏下指纹 | 全功能NFC', '[\'黑之谧镜\',\'梦幻独角兽\',\'暮光森林\',\'白色物语\']', '[\'6 + 128GB\',\'8 + 128GB\',\'8 + 256GB\']', '[\'./images/hand5-1.png@480x480.jpg\',\'./images/hand5-2.png@480x480.jpg\',\'./images/hand5-3.png@480x480.jpg\',\'./images/hand5-4.png@480x480.jpg\']', 'handset', '[\'2699.00\',\'2999.00\',\'3299.00\']', '[\'./images/heizhijing.png\',\'./images/menghuan.png\',\'./images/muguangshenlin.png\',\'./images/bai.png\']', '高通骁龙 855 Plus  | 索尼 4800W AI 三摄');
INSERT INTO `products` VALUES (7, '魅族 16Xs', '全网通公开版', '极边全面屏 | 4800W AI三摄 | 疾速屏下指纹 | 4000mAh大电池 | 高通骁龙675 | Onemind 3.0 | 绚丽多彩新色系', '[\'骑士黑\',\'亚特兰蒂斯\',\'珊瑚橙\',\'冰丝白\']', '[\'6 + 64GB\',\'8 + 128GB\']', '[\'./images/hand6-1.png@480x480.jpg\',\'./images/hand6-2.png@480x480.jpg\',\'./images/hand6-3.png@480x480.jpg\',\'./images/hand6-4.png@480x480.jpg\']', 'handset', '[\'1499.00\',\'1699.00\']', '[\'./images/qishihei.png\',\'./images/yatelan.png\',\'./images/shanhucheng.png@50x50.png\',\'./images/bai.png\']', '极边全面屏 | 4800W AI三摄 | 疾速屏下指纹');
INSERT INTO `products` VALUES (8, '魅族 17 航母限定版', '全网通公开版', '高通骁龙 865 + UFS 3.1 高速闪存 | 6400W 全场景影像系统 | 定制三星 Super AMOLED 90 帧直屏 | 4500mAh 超大电池 + 30W 快充 | 智能全功能 NFC', '[\'舰灰\']', '[\'8 + 256GB\']', '[\'./images/hand8-1.png@480x480.jpg\']', 'handset', '[\'4299.00\']', '[\'./images/jianhei.png\']', NULL);
INSERT INTO `products` VALUES (9, '魅族 16s 白夜童话限量礼盒', '全网通公开版', '以梦为马 乘风破浪', '[\'凝光白\']', '[\'6 + 128GB\']', '[\'./images/hand9-1.png@480x480.jpg\']', 'handset', '[\'3099.00\']', '[\'./images/haobai.png\']', NULL);
INSERT INTO `products` VALUES (10, '魅族 16s', '全网通公开版', '高通骁龙855 | 4800W光学防抖 | 对称式AMOLED全面屏 | 极速屏下指纹 | 全功能NFC ', '[\'碳纤黑\',\'凝光白\',\'幻影蓝\']', '[\'6 + 128GB\',\'8 + 128GB\',\'8 + 256GB\']', '[\'./images/hand7-1.png@480x480.jpg\',\'./images/hand7-2.png@480x480.jpg\',\'./images/hand7-3.png@480x480.jpg\']', 'handset', '[\'2699.00\',\'2999.00\',\'3299.00\']', '[\'./images/ninghei.png\',\'./images/haobai.png\',\'./images/huanyinglan.png\']', NULL);
INSERT INTO `products` VALUES (11, '魅族 Note9', '全网通公开版', '骁龙675 | 后置4800万 | 前置2000万 | 独家定制水滴设计全面屏 | 4000mAh大容量电池 | 18W mCharge快充 ', '[\'幻黑\',\'皓白\',\'星耀蓝\']', '[\'4 + 64GB\',\'6 + 64GB\',\'4 + 128GB\']', '[\'./images/hand10-1.png@480x480.jpg\',\'./images/hand10-2.png@480x480.jpg\',\'./images/hand10-3.png@480x480.jpg\']', 'handset', '[\'1199.00\',\'1299.00\',\'1299.00\']', '[\'./images/huanhei.png\',\'./images/haobai.png\',\'./images/xingyaolan.png\']', NULL);
INSERT INTO `products` VALUES (12, '魅族 Note8', '全网通公开版', '骁龙632 | 6.0 英寸全面屏 | 3600mAh 大电池 | mCharge 快充加持 | Dual PD 全像素双核对焦 |人脸指纹双解锁', '[\'曜黑\',\'灰蓝\',\'烟紫\',\'焰红\']', '[\'4 + 32GB\',\'4 + 64GB\']', '[\'./images/hand11-1.png@480x480.jpg\',\'./images/hand11-2.png@480x480.jpg\',\'./images/hand11-3.png@480x480.jpg\',\'./images/hand11-4.png@480x480.jpg\']', 'handset', '[\'899.00\',\'1198.00\']', '[\'./images/ninghei.png\',\'./images/jiguanglan.png\',\'./images/yanzi.png\',\'./images/yanhong.png\']', NULL);
INSERT INTO `products` VALUES (13, '魅族 X8', '全网通公开版', '骁龙710 | 6.2寸定制浅刘海屏 | 89.6%屏占比 | 旗舰双摄 | 人脸+指纹双解锁', '[\'亮黑\',\'玉白\',\'幻蓝\']', '[\'4 + 64GB\',\'6 + 64GB\',\'6 + 128GB\']', '[\'./images/hand12-1.png@480x480.jpg\',\'./images/hand12-2.png@480x480.jpg\',\'./images/hand12-3.png@480x480.jpg\']', 'handset', '[\'1298.00\',\'1498.00\',\'1698.00\']', '[\'./images/ninghei.png\',\'./images/haobai.png\',\'./images/jiguanglan.png\']', NULL);
INSERT INTO `products` VALUES (14, '魅族 V8 标配版', '全网通公开版', '5.7英寸HD+全面屏 智能美颜', '[\'磨砂黑\',\'纯白\']', '[\'3 + 32GB\']', '[\'./images/hand13-1.png@480x480.jpg\',\'./images/hand13-2.png@480x480.jpg\']', 'handset', '[\'799.00\']', '[\'./images/ninghei.png\',\'./images/bai.png\']', NULL);
INSERT INTO `products` VALUES (15, '魅族 V8 高配版', '全网通公开版', 'Helio P22 处理器 | 5.7 英寸全面屏 | 后置双摄组合 | 双色温双闪光灯 | 人脸+指纹双解锁', '[\'雅金\',\'曜黑\',\'灰蓝\',\'烟紫\']', '[\'4 + 64GB\']', '[\'./images/hand14-1.png@480x480.jpg\',\'./images/hand14-2.png@480x480.jpg\',\'./images/hand14-3.png@480x480.jpg\',\'./images/hand14-4.png@480x480.jpg\']', 'handset', '[\'898.00\']', '[\'./images/yajin.png\',\'./images/ninghei.png\',\'./images/xingyaolan.png\',\'./images/yanzi.png\']', NULL);
INSERT INTO `products` VALUES (16, '魅族 16 X', '全网通公开版', '骁龙710 | 屏幕下指纹 | 对称式全面屏 | 前置2000万像素 + AI人脸识别 | 后置索尼2000万像素双摄 + 光学防抖', '[\'汝窑白\',\'晨曦金\',\'砚墨黑\',\'云山蓝\',\'烟晶紫\']', '[\'6 + 64GB\',\'6 + 128GB\']', '[\'./images/hand15-1.png@480x480.jpg\',\'./images/hand15-2.png@480x480.jpg\',\'./images/hand15-3.png@480x480.jpg\',\'./images/hand15-4.png@480x480.jpg\',\'./images/hand15-5.png@480x480.jpg\']', 'handset', '[\'1598.00\',\'1898.00\']', '[\'./images/haobai.png\',\'./images/yajin.png\',\'./images/ninghei.png\',\'./images/xingyaolan.png\',\'./images/yanzi.png\']', NULL);
INSERT INTO `products` VALUES (17, '魅族 16th Plus', '全网通公开版', '骁龙845 | 屏幕下指纹 | 前后2000万像素摄像头 | 6.5英寸屏幕 | 4×4 MIMO 天线 | mEngine | 超线性双扬声器', '[\'静夜黑\',\'远山白\',\'极光蓝\']', '[\'6 + 128GB\',\'8 + 128GB\',\'8 + 256GB\']', '[\'./images/hand16-1.png@480x480.jpg\',\'./images/hand16-2.png@480x480.jpg\',\'./images/hand16-3.png@480x480.jpg\']', 'handset', '[\'2098.00\',\'2198.00\',\'2298.00\']', '[\'./images/ninghei.png\',\'./images/bai.png\',\'./images/jiguanglan.png\']', NULL);
INSERT INTO `products` VALUES (18, '魅族 16th', '全网通公开版', '骁龙845 | 屏幕下指纹 | 前后2000万像素摄像头 | 6.0英寸屏幕 | mEngine | 超线性双扬声器 |  铜管散热', '[\'静夜黑\',\'远山白\',\'极光蓝\']', '[\'6 + 64GB\',\'6 + 128GB\',\'8 + 128GB\']', '[\'./images/hand17-1.png@480x480.jpg\',\'./images/hand17-2.png@480x480.jpg\',\'./images/hand17-3.png@480x480.jpg\']', 'handset', '[\'1898.00\',\'1998.00\',\'2098.00\']', '[\'./images/ninghei.png\',\'./images/bai.png\',\'./images/jiguanglan.png\']', NULL);
INSERT INTO `products` VALUES (19, '魅蓝 6T', '全网通公开版', '双摄全面屏，游戏长续航', '[\'香槟金\',\'曜石黑\',\'珊瑚红\']', '[\'3 + 32GB\',\'4 + 32GB\',4 + 64GB\']', '[\'./images/hand18-1.png@480x480.jpg\',\'./images/hand18-2.png@480x480.jpg\',\'./images/hand18-3.png@480x480.jpg\']', 'handset', '[\'799.00\',\'999.00\',\'1099.00\']', '[\'./images/yajin.png\',\'./images/ninghei.png\',\'./images/yanhong.png\']', NULL);
INSERT INTO `products` VALUES (20, '魅族 15 Plus', '全网通公开版', '三星8895处理器 2000万暗光双摄', '[\'雅金\',\'砚墨\',\'玄武灰\']', '[\'6 + 64GB\',\'6 + 128GB\']', '[\'./images/hand19-1.png@480x480.jpg\',\'./images/hand19-2.png@480x480.jpg\',\'./images/hand19-3.png@480x480.jpg\']', 'handset', '[\'1798.00\',\'1998.00\']', '[\'./images/yajin.png\',\'./images/ninghei.png\',\'./images/aghui.png\']', NULL);
INSERT INTO `products` VALUES (21, '魅族 M15', '全网通公开版', '骁龙626 前置2000万AI智能美颜', '[\'曜岩黑\',\'砂砾金\',\'朱雀红\']', '[\'4 + 64GB\']', '[\'./images/hand20-1.png@480x480.jpg\',\'./images/hand20-2.png@480x480.jpg\',\'./images/hand20-3.png@480x480.jpg\']', 'handset', '[\'1398.00\']', '[\'./images/ninghei.png\',\'./images/yajin.png\',\'./images/yanhong.png\']', NULL);
INSERT INTO `products` VALUES (22, '魅族 15', '全网通公开版', '骁龙660 | 2000万暗光双摄 | 3倍无损变焦 | mEngine触感引擎 | 立体声扬声器', '[\'雅金\',\'砚墨\',\'黛蓝\',\'汝窑白\']', '[\'4 + 64GB\',\'4 + 128GB\']', '[\'./images/hand21-1.png@480x480.jpg\',\'./images/hand21-2.png@480x480.jpg\',\'./images/hand21-3.png@480x480.jpg\',\'./images/hand21-4.png@480x480.jpg\']', 'handset', '[\'1498.00\',\'1698.00\']', '[\'./images/yajin.png\',\'./images/ninghei.png\',\'./images/xingyaolan.png\',\'./images/bai.png\']', NULL);
INSERT INTO `products` VALUES (23, '魅蓝 E3', '全网通公开版', '骁龙636处理器 全系6G大运存', '[\'香槟金\',\'曜石黑\',\'丹青\']', '[\'6 + 64GB\',\'6 + 128GB\']', '[\'./images/hand22-1.png@480x480.jpg\',\'./images/hand22-2.png@480x480.jpg\',\'./images/hand22-3.png@480x480.jpg\']', 'handset', '[\'1799.00\',\'1999.00\']', '[\'./images/yajin.png\',\'./images/ninghei.png\',\'./images/tianqing.png\']', NULL);
INSERT INTO `products` VALUES (24, '魅蓝 S6', '全网通公开版', 'Exynos 7872疾速游戏芯片 侧面指纹解锁', '[\'香槟金\',\'磨砂黑\',\'月光银\',\'淡钴蓝\']', '[\'3 + 32GB\',\'3 + 64GB\']', '[\'./images/hand23-1.png@480x480.jpg\',\'./images/hand23-2.png@480x480.jpg\',\'./images/hand23-3.png@480x480.jpg\',\'./images/hand23-4.png@480x480.jpg\']', 'handset', '[\'999.00\',\'1199.00\']', '[\'./images/yajin.png\',\'./images/ninghei.png\',\'./images/yin.png\',\'./images/xingyaolan.png\']', NULL);
INSERT INTO `products` VALUES (25, '魅族 17 Pro【限时福利】', '全网通公开版', '【魅族17Pro指定版本专享6期免息+领券立省150】高通骁龙 865 + UFS 3.1 + LPDDR5 | 6400W 全场景 AR 专业影像系统 ', '[\'乌金\']', '[\'8 + 128GB\',\'12 + 256GB\']', '[\'./images/hand24-1.png@480x480.jpg\']', 'handset', '[\'4299.00\',\'4699.00\']', '[\'./images/wujin.png\']', NULL);
INSERT INTO `products` VALUES (26, 'banner02', '', NULL, NULL, NULL, '[\'./images/handbg2.jpg\']', 'commend', NULL, NULL, NULL);
INSERT INTO `products` VALUES (27, '魅族 17', NULL, NULL, NULL, NULL, '[\'./images/hand2-1.png@480x480.jpg\',\'./images/hand2-2.png@480x480.jpg\',\'./images/hand2-3.png@480x480.jpg\']', 'commend', '3699.00', NULL, NULL);
INSERT INTO `products` VALUES (28, '魅族 17 Pro', NULL, NULL, NULL, NULL, '[\'./images/hand1-4.png@480x480.jpg\']', 'commend', '4299.00', NULL, NULL);
INSERT INTO `products` VALUES (29, '魅族 16T', NULL, NULL, NULL, NULL, '[\'./images/hand4-1.png@480x480.jpg\',\'./images/hand4-2.png@480x480.jpg\',\'./images/hand4-3.png@480x480.jpg\']', 'commend', '1999.00', NULL, NULL);
INSERT INTO `products` VALUES (30, '魅族 POP2 真无线蓝牙耳机', NULL, NULL, NULL, NULL, '[\'./images/muc2-1.png@480x480.jpg\']', 'commend', '399.00', NULL, NULL);
INSERT INTO `products` VALUES (31, '魅族中国红 Type-C 金属编织线', NULL, NULL, NULL, NULL, '[\'./images/par5-1.png@480x480.jpg\']', 'commend', '39.00', NULL, NULL);
INSERT INTO `products` VALUES (32, '魅族移动电源3', NULL, NULL, NULL, NULL, '[\'./images/handlb6.png@480x480.jpg\']', 'commend', '79.00', NULL, NULL);
INSERT INTO `products` VALUES (33, '魅族 EP3C 耳机', NULL, NULL, NULL, NULL, '[\'./images/handlb7.png@480x480.jpg\']', 'commend', '129.00', NULL, NULL);
INSERT INTO `products` VALUES (34, '魅族 HIFI 解码耳放', NULL, NULL, NULL, NULL, '[\'./images/handlb8.png@480x480.jpg\']', 'commend', '169.00', NULL, NULL);
INSERT INTO `products` VALUES (35, '魅族 HD60 降噪耳机', NULL, '【开学聚惠限时999元】索尼主动降噪芯片 | 40mm镀铍振膜 | 触控操作 | USB - C 快充 | 轻奢品质', '[\'雾银黑\']', NULL, '[\'./images/muc1-1.png@480x480.jpg\']', 'music', '1099.00', '[\'./images/huanyezi.png\']', '【开学聚惠限时999元】索尼主动降噪芯片');
INSERT INTO `products` VALUES (36, '魅族 POP2 真无线蓝牙耳机', NULL, '蓝牙5.0 | 单次8H续航 | 石墨烯振膜 | 双耳通话 | 轻触操作 | 轻盈舒适', '[\'亮白\']', NULL, '[\'./images/muc2-1.png@480x480.jpg\']', 'music', '399.00', '[\'./images/bai.png\']', '蓝牙5.0 | 单次8H续航 | 石墨烯振膜 ');
INSERT INTO `products` VALUES (37, '魅族 HIFI 解码耳放', NULL, '【开学聚惠限时119元】高性能DAC芯片 | 纯净HiFi音质 | 600Ω高阻抗推力 | Type-C 转接线 | 音乐发烧友必备', '[\'黑色\']', NULL, '[\'./images/muc3-1.png@480x480.jpg\']', 'music', '169.00', '[\'./images/huanhei.png\']', '【开学聚惠限时119元】高性能DAC芯片 ');
INSERT INTO `products` VALUES (38, '魅族 EP3C 耳机', NULL, '【开学聚惠限时99元】Hi-Res 认证高解析音质 | Type-C数字接口 | 高保真生物纤维振膜', '[\'白色\']', NULL, '[\'./images/muc4-1.png@480x480.jpg\']', 'music', '129.00', '[\'./images/bai.png\']', '【开学聚惠限时99元】Hi-Res 认证高解析音质 ');
INSERT INTO `products` VALUES (39, '魅族 EP63NC 无线降噪耳机', NULL, '【开学聚惠限时299元】AMS 芯片智能降噪 | Qualcomm apt-X™ 高清音质 | 蓝牙一拖二连接 | 11小时超长续航 | 快充15分钟畅听3小时', '[\'玄武灰\']', NULL, '[\'./images/muc5-1.png@480x480.jpg\']', 'music', '399.00', '[\'./images/jianhei.png\']', '【开学聚惠限时299元】AMS 芯片智能降噪');
INSERT INTO `products` VALUES (40, '魅族 HD60 头戴式蓝牙耳机', NULL, '【开学聚惠限时429元】40mm生物振膜  | Type-C充电 | 触控操作 | 蓝牙5.0 | 轻奢品质', '[\'热带橙色\',\'雾银黑色\']', NULL, '[\'./images/muc6-1.png@480x480.jpg\',\'./images/muc6-2.png@480x480.jpg\']', 'music', '499.00', '[\'./images/huanyezi.png\',\'./images/riguangcheng.png\']', '【开学聚惠限时429元】40mm生物振膜');
INSERT INTO `products` VALUES (41, '魅族 EP21耳机', NULL, '三键一体式线控 | 3.5mm接口 ', '[\'白色\']', NULL, '[\'./images/muc7-1.png@480x480.jpg\']', 'music', '89.00', '[\'./images/bai.png\']', '三键一体式线控 | 3.5mm接口 ');
INSERT INTO `products` VALUES (42, '魅族 HALO 激光蓝牙耳机', NULL, '炫酷夜跑神器 随性张扬', '[\'蓝色\',\'红色\']', NULL, '[\'./images/muc8-1.png@480x480.jpg\',\'./images/muc8-2.png@480x480.jpg\']', 'music', '499.00', '[\'./imsges/yatelan.png\',\'./images/yanhong.png\']', '炫酷夜跑神器 随性张扬');
INSERT INTO `products` VALUES (43, '魅族 EP52 Lite 蓝牙耳机', NULL, '【开学聚惠限时109元】轻巧亲肤 | 生物纤维振膜 | 8小时续航 | IPX5级防水', '[\'月白\',\'深蓝\',\'云灰\']', NULL, '[\'./images/muc9-1.png@480x480.jpg\',\'./images/muc9-2.png@480x480.jpg\',\'./images/muc9-3.png@480x480.jpg\']', 'music', '129.00', '[\'./images/bai.png\',\'./images/xingyaolan.png\',\'./images/jianhei.png\']', '【开学聚惠限时109元】轻巧亲肤');
INSERT INTO `products` VALUES (44, '魅族 HiFi 解码耳放 PRO', NULL, '性能DAC芯片 | 超强二级运放 | Hi-Res 认证高解析音质 | 高阻抗推力 | Type-C转接线', '[\'黑色\']', NULL, '[\'./images/muc10-1.png@480x480.jpg\']', 'music', '269.00', '[\'./images/huanhei.png\']', '性能DAC芯片 | 超强二级运放');
INSERT INTO `products` VALUES (45, '魅族 LIVE 四单元动铁耳机', NULL, '【开学聚惠限时999元】Knowles四动铁 双通道导音系统 现场级音乐表现', '[\'灰色\']', NULL, '[\'./images/muc11-1.png@480x480.jpg\']', 'music', '1099.00', '[\'./images/yin.png\']', NULL);
INSERT INTO `products` VALUES (46, 'MEIZU UR 高端定制耳机  预约', NULL, '【预约专用】私人定制，为你而声', '[\'定制\']', NULL, '[\'./images/muc12-1.png@480x480.jpg\']', 'music', '200.00', '[]', NULL);
INSERT INTO `products` VALUES (47, '魅族 EP2X 耳机', NULL, '一体式线控 | 3.5mm接口 | 流线设计', '[\'珍珠黑\',\'皓月白\']', NULL, '[\'./images/muc13-1.png@480x480.jpg\',\'./images/muc13-2.png@480x480.jpg\']', 'music', '69.00', '[\'./images/huanhei.png\',\'./images/bai.png\']', NULL);
INSERT INTO `products` VALUES (48, '【老用户专享】魅族 HD60 头戴式蓝牙耳机', NULL, '【1元换购价值69元数据线】40mm生物振膜  | Type-C充电 | 触控操作 | 蓝牙5.0 | 轻奢品质', '[\'热带橙色\',\'雾银黑色\']', NULL, '[\'./images/muc14-1.png@480x480.jpg\',\'./images/muc14-2.png@480x480.jpg\']', 'music', '429.00', '[\'./images/riguangcheng.png\',\'./images/huanyezi.png\']', NULL);
INSERT INTO `products` VALUES (49, '【老用户专享】-魅族 HD60 降噪耳机', NULL, '【129元换购价值299元电动牙刷】索尼主动降噪芯片 | 40mm镀铍振膜 | 触控操作 | USB - C 快充 | 轻奢品质', '[\'雾银黑\']', NULL, '[\'./images/muc15-1.png@480x480.jpg\']', 'music', '999.00', '[\'./images/huanyezi.png\']', NULL);
INSERT INTO `products` VALUES (50, '【老用户专享】-魅族 HIFI 解码耳放', NULL, '【1元换购价值39元数据线】高性能DAC芯片 | 纯净HiFi音质 | 600Ω高阻抗推力 | Type-C 转接线 | 音乐发烧友必备', '[\'黑色\']', NULL, '[\'./images/muc16-1.png@480x480.jpg\']', 'music', '119.00', '[\'./images/wujin.png\']', NULL);
INSERT INTO `products` VALUES (51, '【开学聚惠】魅族 LIVE 四单元动铁耳机', NULL, 'Knowles四动铁 双通道导音系统 现场级音乐表现', '[\'银色\']', NULL, '[\'./images/muc17-1.png@480x480.jpg\']', 'music', '1299.00', '[\'./images/yin.png\']', NULL);
INSERT INTO `products` VALUES (52, '【开学聚惠】-魅族 EP52 Lite 蓝牙耳机', NULL, '轻巧亲肤 | 生物纤维振膜 | 8小时续航 | IPX5级防水', '[\'月白\',\'深蓝\',\'云灰\']', NULL, '[\'./images/muc18-1.png@480x480.jpg\',\'./images/muc18-2.png@480x480.jpg\',\'./images/muc18-3.png@480x480.jpg\']', 'music', '109.00', '[\'./images/bai.png\',\'./images/xingyaolan.png\',\'./images/jianhei.png\']', NULL);
INSERT INTO `products` VALUES (53, '【开学聚惠】魅族 HD60 头戴式蓝牙耳机', NULL, '【限时12期免息】40mm生物振膜  | Type-C充电 | 触控操作 | 蓝牙5.0 | 轻奢品质', '[\'热带橙色\',\'雾银黑色\']', NULL, '[\'./images/muc20-1.png@480x480.jpg\',\'./images/muc19-2.png@480x480.jpg\']', 'music', '429.00', '[\'./images/riguangcheng.png\',\'./images/huanyezi.png\']', NULL);
INSERT INTO `products` VALUES (54, '【开学聚惠】-魅族 EP3C 耳机', NULL, 'Hi-Res 认证高解析音质 | Type-C数字接口 | 高保真生物纤维振膜', '[\'白色\']', NULL, '[\'./images/muc19-1.png@480x480.jpg\',\'./images/muc19-2.png@480x480.jpg\']', 'music', '99.00', '[\'./images/bai.png\']', NULL);
INSERT INTO `products` VALUES (55, '【开学聚惠】-魅族 HIFI 解码耳放', NULL, '高性能DAC芯片 | 纯净HiFi音质 | 600Ω高阻抗推力 | Type-C 转接线 | 音乐发烧友必备', '[\'黑色\']', NULL, '[\'./images/muc21-1.png@480x480.jpg\']', 'music', '119.00', '[\'./images/wujin.png\']', NULL);
INSERT INTO `products` VALUES (56, '【开学聚惠】魅族 EP63NC 无线降噪耳机', NULL, 'AMS 芯片智能降噪 | Qualcomm apt-X™ 高清音质 | 蓝牙一拖二连接 | 11小时超长续航 | 快充15分钟畅听3小时', '[\'玄武灰\']', NULL, '[\'./images/muc22-1.png@480x480.jpg\']', 'music', '299.00', '[\'./images/jianhei.png\']', NULL);
INSERT INTO `products` VALUES (57, '【开学聚惠】-魅族 HD60 降噪耳机', NULL, '【限时12期免息】索尼主动降噪芯片 | 40mm镀铍振膜 | 触控操作 | USB - C 快充 | 轻奢品质', '[\'雾银黑\']', NULL, '[\'./images/muc23-1.png@480x480.jpg\']', 'music', '999.00', '[\'./images/huanyezi.png\']', NULL);
INSERT INTO `products` VALUES (58, '魅族 POP2 真无线蓝牙耳机', NULL, '蓝牙5.0 | 单次8H续航 | 石墨烯振膜 | 双耳通话 | 轻触操作 | 轻盈舒适', '[\'皓月白\']', NULL, '[\'./images/muc2-1.png@480x480.jpg\']', 'music', '399.00', '[\'./images/bai.png\']', NULL);
INSERT INTO `products` VALUES (59, 'POP 真无线蓝牙耳机', NULL, '双无线 零设限', '[\'皓月白\']', NULL, '[\'./images/muc2-1.png@480x480.jpg\']', 'music', '499.00', '[\'./images/bai.png\']', NULL);
INSERT INTO `products` VALUES (60, '魅族蓝牙音频接收器', NULL, '独立音频芯片 | 一键控制 | 6小时续航 | 轻巧设计', '[\'皓月白\']', NULL, '[\'./images/muc25-1.png@480x480.jpg\']', 'music', '89.00', '[\'./images/bai.png\']', NULL);
INSERT INTO `products` VALUES (61, '魅族无线超充板', NULL, '【8.31 APP限时抢购149元 | 前往魅族商城APP抢购专区选购】魅族 17 Pro 适用 | 27W 无线快充 | 主动散热 | 智能静音 | 玉润设计', '[\'白色\']', NULL, '[\'./images/par1-1.png@480x480.jpg\']', 'parts', '169.00', '[\'./images/bai.png\']', '魅族 17 Pro 适用 | 27W 无线快充');
INSERT INTO `products` VALUES (62, 'Pandaer 「17」系列 手机壳', NULL, '【APP积分兑换10元优惠券】魅族 17 / 魅族 17 Pro 适用 | Pandaer 家族 | 潮趣个性 | 官方适配', '[\'一只熊\',\'太空漫游\',\'赛博熊\',\'黑色引力\']', NULL, '[\'./images/par2-1.png@480x480.jpg\',\'./images/par2-2.png@480x480.jpg\',\'./images/par2-3.png@480x480.jpg\',\'./images/par2-4.png@480x480.jpg\']', 'parts', '49.00', '[\'./images/par2-1.png@480x480.jpg\',\'./images/par2-2.png@480x480.jpg\',\'./images/par2-3.png@480x480.jpg\',\'./images/par2-4.png@480x480.jpg\']', '魅族 17 / 魅族 17 Pro 适用');
INSERT INTO `products` VALUES (63, '魅族 17 系列 液态硅胶壳', NULL, '魅族 17 / 魅族 17 Pro 适用 | 官方适配 | 魅族手感 | 柔韧保护', '[\'象牙白\',\'刷新绿\']', NULL, '[\'./images/par3-1.png@480x480.jpg\',\'./images/par3-2.png@480x480.jpg\']', 'parts', '89.00', '[\'./images/bai.png\',\'./images/wujin.png\']', '魅族 17 / 魅族 17 Pro 适用');
INSERT INTO `products` VALUES (64, '魅族 Type-C 数据线', NULL, '5A 大电流 | Type-C 接口 | 更快更方便', '[\'白色\']', NULL, '[\'./images/par4-1.png@480x480.jpg\']', 'parts', '49.00', '[\'./images/bai.png\']', '5A 大电流 | Type-C 接口 | 更快更方便');
INSERT INTO `products` VALUES (65, '魅族 Type-C 游戏专用线', NULL, 'Type-C 接口 | 5A大电流 | 弯头专为游戏设计 | 耐磨编织材料', '[\'红色\']', NULL, '[\'./images/par5-1.png@480x480.jpg\']', 'parts', '49.00', '[\'./images/yanhong.png\']', 'Type-C 接口 | 5A大电流 | 弯头专为游戏设计');
INSERT INTO `products` VALUES (66, '魅族中国红 Type-C 金属编织线', NULL, 'Type-C 接口 | 3A大电流 | 耐磨编织材料', '[\'红色\']', NULL, '[\'./images/par6-1.png@480x480.jpg\']', 'parts', '39.00', '[\'./images/yanhong.png\']', 'Type-C 接口 | 3A大电流 | 耐磨编织材料');
INSERT INTO `products` VALUES (67, '魅族移动电源3', NULL, '10000mAh | 18W双向快充 | 12重安全防护', '[\'大气灰\',\'简约白\']', NULL, '[\'./images/par7-1.png@480x480.jpg\',\'./images/par7-2.png@480x480.jpg\']', 'parts', '79.00', '[\'./images/wujin.png\',\'./images/bai.png\']', '10000mAh | 18W双向快充 | 12重安全防护');
INSERT INTO `products` VALUES (68, '快充电源适配器（UP0830S）', NULL, '快速充电 安全无忧', '[\'白色\']', NULL, '[\'./images/par8-1.png@480x480.jpg\']', 'parts', '89.00', '[\'./images/bai.png\']', '快速充电 安全无忧');
INSERT INTO `products` VALUES (69, '魅族无线充电器', NULL, '10W快速充电 无线即放即充', '[\'白色\']', NULL, '[\'./images/par9-1.png@480x480.jpg\']', 'parts', '99.00', '[\'./images/bai.png\']', '10W快速充电 无线即放即充');
INSERT INTO `products` VALUES (70, '魅族 Micro USB 数据线', NULL, '广泛兼容各大品牌Micro USB接口手机 | 经久耐用 ', '[\'白色\']', NULL, '[\'./images/par10-1.png@480x480.jpg\']', 'parts', '29.00', '[\'./images/bai.png\']', NULL);
INSERT INTO `products` VALUES (71, '【老用户专享】魅族无线超充板', NULL, '【1元换购价值39元数据线】魅族 17 Pro 适用 | 27W 无线快充 | 主动散热 | 智能静音 | 玉润设计', '[\'白色\']', NULL, '[\'./images/par11-1.png@480x480.jpg\']', 'parts', '169.00', '[\'./images/bai.png\']', NULL);
INSERT INTO `products` VALUES (72, '【老用户专享】-魅族超充 GaN 三口充电器', NULL, '【1元换购价值39元数据线】65W MAX功率输出 | GaN 芯片 | 安全小巧 | 三口输出', '[\'白色\']', NULL, '[\'./images/par12-1.png@480x480.jpg\']', 'parts', '199.00', '[\'./images/bai.png\']', NULL);
INSERT INTO `products` VALUES (73, 'Pandaer 「17」夏日系列 壳膜套装', NULL, '【咨询客服 | 老用户尊享价49元】魅族 17 / 魅族 17 Pro 适用 | 手机壳 + PET 高透膜', '[\'宇航熊\',\'玩具熊\',\'波普熊\',\'煎蛋熊\']', NULL, '[\'./images/par13-1.png@480x480.jpg\',\'./images/par13-2.png@480x480.jpg\',\'./images/par13-3.png@480x480.jpg\',\'./images/par13-4.png@480x480.jpg\']', 'parts', '69.00', '[\'./images/par13-1.png@480x480.jpg\',\'./images/par13-2.png@480x480.jpg\',\'./images/par13-3.png@480x480.jpg\',\'./images/par13-4.png@480x480.jpg\']', NULL);
INSERT INTO `products` VALUES (74, '魅族双 USB-C 快充线', NULL, '双 USB-C 接口 | 5A 大电流 | 耐磨编织材料 | E-Marker 芯片', '[\'红色\']', NULL, '[\'./images/par14-1.png@480x480.jpg\']', 'parts', '49.00', '[\'./images/yanhong.png\']', NULL);
INSERT INTO `products` VALUES (75, 'Lifeme PD 快充线', NULL, 'USB-C 转 Lightning | MFi 认证 | 3A 大电流 | PD 快充 | 兼容大部分苹果设备', '[\'白色\']', NULL, '[\'./images/par15-1.png@480x480.jpg\']', 'parts', '69.00', '[\'./images/bai.png\']', NULL);
INSERT INTO `products` VALUES (76, '魅族超充 USB-C 移动电源', NULL, '【新品上市 | 现货发售】USB-C 双向快充 | 22.5W 大功率 | 数字电量显示 | 多快充协议支持', '[\'白色\']', NULL, '[\'./images/par16-1.png@480x480.jpg\']', 'parts', '169.00', '[\'./images/bai.png\']', NULL);
INSERT INTO `products` VALUES (77, '魅族超充 GaN 三口充电器', NULL, '【8.31 开学聚惠限时领30元券】65W MAX功率输出 | GaN 芯片 | 安全小巧 | 三口输出', '[\'白色\']', NULL, '[\'./images/par17-1.png@480x480.jpg\']', 'parts', '199.00', '[\'./images/bai.png\']', NULL);
INSERT INTO `products` VALUES (78, '【秒杀】Pandaer「17」夏日系列壳膜套装', NULL, '魅族 17 / 魅族 17 Pro 适用 | 手机壳 + PET 高透膜', '[\'夏日\']', NULL, '[\'./images/par18-1.png@480x480.jpg\']', 'parts', '34.5.00', '[\'./images/par18-1.png@480x480.jpg\']', NULL);
INSERT INTO `products` VALUES (79, '【砍价】-Lifeme PD 快充线', NULL, 'USB-C 转 Lightning | MFi 认证 | 3A 大电流 | PD 快充 | 兼容大部分苹果设备', '[\'白色\']', NULL, '[\'./images/par19-1.png@480x480.jpg\']', 'parts', '69.00', '[\'./images/bai.png\']', NULL);
INSERT INTO `products` VALUES (80, '魅族 V8 高配版高透保护膜', NULL, '高透光率 助双眼捕捉每一颗像素的色彩', '[\'透明\']', NULL, '[\'./images/par20-1.png@480x480.jpg\']', 'parts', '19.00', '[\'./images/bai.png\']', NULL);
INSERT INTO `products` VALUES (81, 'Lifeme 双肩包', NULL, '【开学聚惠限时239元】创新外观设计 | 扩容超大容量 | 人体工学背负 | 轻盈减负重量 | 颜值安全插扣 | 相机包新搭配', '[\'灰色\']', NULL, '[\'./images/life1-1.png@480x480.jpg\']', 'life', '299.00', '[]', '【开学聚惠限时239元】创新外观设计');
INSERT INTO `products` VALUES (82, 'Pandaer 「17」系列 T恤', NULL, '【开学限时特惠149元 | 前200名限量赠果冻包】潮酷印花 | 丝绸手感 | 100％长绒棉', '[\'黑色\',\'赛博熊\',\'白色\',\'太空漫游\',\'黑色宇航员\']', NULL, '[\'./images/life2-1.png@480x480.jpg\',\'./images/life2-2.png@480x480.jpg\',\'./images/life2-3.png@480x480.jpg\']', 'life', '269.00', '[\'./images/life2-1.png@480x480.jpg\',\'./images/life2-2.png@480x480.jpg\',\'./images/life2-3.png@480x480.jpg\']', '【开学限时特惠149元 | 前200名限量赠果冻包】');
INSERT INTO `products` VALUES (83, 'Pandaer 「17」系列 果冻包', NULL, '【开学聚惠限时领40元券】潮酷印花 | 超大容量 | 透亮设计', '[\'蓝色\']', NULL, '[\'./images/life3-1.png@480x480.jpg\',\'./images/life3-2.png@480x480.jpg\']', 'life', '99.00', '[\'./images/jiguanglan.png\',\'./images/bai.png\']', '【开学聚惠限时领40元券】潮酷印花 ');
INSERT INTO `products` VALUES (84, 'Lifeme 相机包', NULL, '【开学聚惠限时119元】相机包新搭配 | 一机两镜超大容量 | 加厚防冲击材料', '[\'灰黑\']', NULL, '[\'./images/life4-1.png@480x480.jpg\']', 'life', '129.00', '[\'./images/ninghei.png\']', '【开学聚惠限时119元】相机包新搭配');
INSERT INTO `products` VALUES (85, '魅族防飞溅声波电动牙刷', NULL, '【开学限时特惠229元 | 前200名限量赠刷头】智能压感防飞溅 | 超强震动清洁 | FDA 杜邦软毛 | 30天超长续航  | IPX7 级防水全身防霉防污垢 | 四种模式全面呵护', '[\'白色\']', NULL, '[\'./images/life5-1.png@480x480.jpg\']', 'life', '299.00', '[\'./images/bai.png\']', '【开学限时特惠229元 | 前200名限量赠刷头】');
INSERT INTO `products` VALUES (86, '魅族极简都市双肩包', NULL, '【开学聚惠限时129元】650D高耐磨牛津布 | 人体工学减负设计 | 大容量多功能收纳 | 生活防泼溅', '[\'黑色\']', NULL, '[\'./images/life6-1.png@480x480.jpg\']', 'life', '179.00', '[]', '【开学聚惠限时129元】650D高耐磨牛津布');
INSERT INTO `products` VALUES (87, 'Pandaer readnap T恤', NULL, '潮趣设计 | 100％精织纯棉 | 多重潮流工艺 | Mixcolor混色搭配 | 情侣装', '[\'黑色\']', NULL, '[\'./images/life7-1.png@480x480.jpg\']', 'life', '199.00', '[\'./images/ninghei.png\']', '潮趣设计 | 100％精织纯棉 | 多重潮流工艺');
INSERT INTO `products` VALUES (88, 'Pandaer 魔术师帽衫', NULL, 'Magic Pandaer前卫设计 | 100％精梳棉纱 | 潮流款式 挺括有型 | 亲肤内衬 柔顺舒适 | 情侣装', '[\'藏青色\']', NULL, '[\'./images/life8-1.png@480x480.jpg\']', 'life', '399.00', '[\'./images/huanyezi.png\']', 'Magic Pandaer前卫设计 | 100％精梳棉纱');
INSERT INTO `products` VALUES (89, 'Flyme 8 暗夜流光卫衣', NULL, 'Flyme原创 | 镭射材料 | 随光而动 | 暗夜微光 | 点亮梦想 |  情侣装', '[\'黑色\']', NULL, '[\'./images/life9-1.png@480x480.jpg\']', 'life', '269.00', '[\'./images/ninghei.png\']', 'Flyme原创 | 镭射材料 | 随光而动');
INSERT INTO `products` VALUES (90, 'Lifeme 梨木伞', NULL, '【夏日限时特惠449元】高定时装压花伞布 | 隔绝99% UV | 进口环保拒水涂层 | 8骨静音防风伞架 | 千足纯银徽章 | 优质花梨木伞柄', '[\'黑色\']', NULL, '[\'./images/life10-1.png@480x480.jpg\']', 'life', '499.00', '[\'./images/ninghei.png\']', NULL);
INSERT INTO `products` VALUES (91, '【秒杀】-Lifeme 相机包', NULL, '相机包新搭配 | 一机两镜超大容量 | 加厚防冲击材料', '[\'黑色\']', NULL, '[\'./images/life4-1.png@480x480.jpg\']', 'life', '129.00', '[\'./images/ninghei.png\']', NULL);
INSERT INTO `products` VALUES (92, '【开学聚惠】-Lifeme 梨木伞', NULL, '高定时装压花伞布 | 隔绝99% UV | 进口环保拒水涂层 | 8骨静音防风伞架 | 千足纯银徽章 | 优质花梨木伞柄', '[\'黑色\',\'赛博熊\',\'黑色宇航员\']', NULL, '[\'./images/life12-1.png@480x480.jpg\']', 'life', '449.00', '[\'./images/ninghei.png\']', NULL);
INSERT INTO `products` VALUES (93, '【开学聚惠】-魅族极简都市双肩包', NULL, '650D高耐磨牛津布 | 人体工学减负设计 | 大容量多功能收纳 | 生活防泼溅', '[\'灰色\']', NULL, '[\'./images/life13-1.png@480x480.jpg\']', 'life', '129.00', '[]', NULL);
INSERT INTO `products` VALUES (94, '【开学聚惠】魅族防飞溅声波电动牙刷', NULL, '【开学限时特惠229元 | 前200名限量赠刷头】智能压感防飞溅 | 超强震动清洁 | FDA 杜邦软毛 | 30天超长续航  | IPX7 级防水全身防霉防污垢 | 四种模式全面呵护 ', '[\'黑色\']', NULL, '[\'./images/life14-1.png@480x480.jpg\']', 'life', '229.00', '[\'./images/bai.png\']', NULL);
INSERT INTO `products` VALUES (95, '【开学聚惠】-Lifeme 双肩包', NULL, '创新外观设计 | 扩容超大容量 | 人体工学背负 | 轻盈减负重量 | 颜值安全插扣 | 相机包新搭配', '[\'黑色\']', NULL, '[\'./images/life16-1.png@480x480.jpg\']', 'life', '239.00', '[]', NULL);
INSERT INTO `products` VALUES (96, '【开学聚惠】-Pandaer 「17」系列 T恤', NULL, '【开学限时特惠149元 | 前200名限量赠果冻包】潮酷印花 | 丝绸手感 | 100％长绒棉', '[\'白色\']', NULL, '[\'./images/life17-1.png@480x480.jpg\',\'./images/life17-2.png@480x480.jpg\',\'./images/life17-3.png@480x480.jpg\']', 'life', '149.00', '[\'./images/life17-1.png@480x480.jpg\',\'./images/life17-2.png@480x480.jpg\',\'./images/life17-3.png@480x480.jpg\']', NULL);
INSERT INTO `products` VALUES (97, 'Pandaer 鼠年圆领卫衣', NULL, '【珍稀现货】金鼠限定/ 优质棉料 / 挺括亲肤 / 保暖舒适 / 情侣装', '[\'白色\']', NULL, '[\'./images/life19-1.png@480x480.jpg\',\'./images/life19-2.png@480x480.jpg\']', 'life', '199.00', '[\'./images/yanhong.png\',\'./images/huanyezi.png\']', NULL);
INSERT INTO `products` VALUES (98, '2020福来我发新春大礼盒', NULL, 'Flyme 原创设计/ 鼠年春节套装 / 复古潮流 / 棒球衫 / 怀旧礼包 / 情侣装', '[\'灰色\']', NULL, '[\'./images/life20-2.png@480x480.jpg\']', 'life', '399.00', '[\'./images/ninghei.png\']', NULL);
INSERT INTO `products` VALUES (99, '【砍价】-Lifeme 双肩包', NULL, '创新外观设计 | 扩容超大容量 | 人体工学背负 | 轻盈减负重量 | 颜值安全插扣 | 相机包新搭配', '[\'黑色\',\'赛博熊\',\'白色\',\'太空漫游\',\'黑色宇航员\']', NULL, '[\'./images/life18-1.png@480x480.jpg\']', 'life', '299.00', '[]', NULL);
INSERT INTO `products` VALUES (100, '魅族星球探索 帆布袋', NULL, '星球无限 追求不止', '[\'红色\',\'藏青色\']', NULL, '[\'./images/life21-1.png@480x480.jpg\']', 'life', '69.00', '[\'./images/ninghei.png\',\'./images/bai.png\']', NULL);
INSERT INTO `products` VALUES (101, '魅族 Mini 线控自拍杆', NULL, '轻巧迷你 自在随心', '[\'黑色\']', NULL, '[\'./images/life23-1.png@480x480.jpg\']', 'life', '59.00', '[\'./images/yanhong.png\']', NULL);
INSERT INTO `products` VALUES (102, '魅族路由器 极速版', NULL, '天生不凡 快狠稳', '[\'幻夜黑\',\'光年白\']', NULL, '[\'./images/life24-1.png@480x480.jpg\']', 'life', '199.00', '[\'./images/bai.png\']', NULL);
INSERT INTO `products` VALUES (103, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL);
INSERT INTO `products` VALUES (104, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for province
-- ----------------------------
DROP TABLE IF EXISTS `province`;
CREATE TABLE `province`  (
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '省份名称',
  `rid` int(11) NULL DEFAULT NULL COMMENT '省份编码'
) ENGINE = InnoDB CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of province
-- ----------------------------
INSERT INTO `province` VALUES ('北京', 110000);
INSERT INTO `province` VALUES ('天津', 120000);
INSERT INTO `province` VALUES ('河北省', 130000);
INSERT INTO `province` VALUES ('山西省', 140000);
INSERT INTO `province` VALUES ('内蒙古自治区', 150000);
INSERT INTO `province` VALUES ('辽宁省', 210000);
INSERT INTO `province` VALUES ('黑龙江省', 230000);
INSERT INTO `province` VALUES ('上海', 310000);
INSERT INTO `province` VALUES ('江苏省', 320000);
INSERT INTO `province` VALUES ('浙江省', 330000);
INSERT INTO `province` VALUES ('安徽省', 340000);
INSERT INTO `province` VALUES ('福建省', 350000);
INSERT INTO `province` VALUES ('江西省', 360000);
INSERT INTO `province` VALUES ('山东省', 370000);
INSERT INTO `province` VALUES ('河南省', 410000);
INSERT INTO `province` VALUES ('湖北省', 420000);
INSERT INTO `province` VALUES ('湖南省', 430000);
INSERT INTO `province` VALUES ('广东省', 440000);
INSERT INTO `province` VALUES ('广西壮族自治区', 450000);
INSERT INTO `province` VALUES ('重庆', 500000);
INSERT INTO `province` VALUES ('四川省', 510000);
INSERT INTO `province` VALUES ('贵州省', 520000);
INSERT INTO `province` VALUES ('云南省', 530000);
INSERT INTO `province` VALUES ('陕西省', 610000);
INSERT INTO `province` VALUES ('甘肃省', 620000);
INSERT INTO `province` VALUES ('青海省', 630000);
INSERT INTO `province` VALUES ('宁夏回族自治区', 640000);
INSERT INTO `province` VALUES ('香港特别行政区', 810000);

-- ----------------------------
-- Table structure for store
-- ----------------------------
DROP TABLE IF EXISTS `store`;
CREATE TABLE `store`  (
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专卖店名称',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专卖店地址',
  `addRemark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专卖店详细地址',
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '专卖店电话',
  `cityRid` int(11) NULL DEFAULT NULL COMMENT '专卖店所在城市编码'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of store
-- ----------------------------
INSERT INTO `store` VALUES ('北京市东城区磁器口授权专卖店', '北京市东城区珠市口东大街万商汇赛格数码城底商2-13号', '磁器口地铁站D出口向西200米', '15011311669', 110100);
INSERT INTO `store` VALUES ('北京市通州区万达广场授权专卖店', '北京市通州区万达广场金街B3-111', '', '13718164387', 110100);
INSERT INTO `store` VALUES ('天津市南开鞍山西道授权专卖店', '天津市南开区鞍山西道时代数码广场2楼J09室', '', '13370379008', 120100);
INSERT INTO `store` VALUES ('石家庄市中山东路图书大厦授权专卖店', '石家庄市长安区中山东路199号图书大厦一楼', '北国商城斜对面', '13730122597', 130100);
INSERT INTO `store` VALUES ('石家庄元氏县商贸城认证店', '石家庄市元氏县人民路106号', '万家福对面原小白数码', '18733122039', 130100);
INSERT INTO `store` VALUES ('石家庄市赵县自强路授权专卖店', '石家庄市赵县自强路信誉楼东临', '', '18531124158', 130100);
INSERT INTO `store` VALUES ('石家庄无极光明南街认证店', '石家庄市无极县光明南街26号', '（光明街与红绿灯交叉口南行200米路东）', '15830691748', 130100);
INSERT INTO `store` VALUES ('石家庄晋州市中兴路认证店', '石家庄市晋州市中兴路386号', '', '15076400003', 130100);
INSERT INTO `store` VALUES ('石家庄市华强电子通讯城授权专卖店', '石家庄市新华区民族路华强电子通讯城西南角1F-36号', '', '0311-85335628', 130100);
INSERT INTO `store` VALUES ('唐山市路北裕华道51号授权专卖店', '唐山市路北区裕华道51号底商', '', '18733333071', 130200);
INSERT INTO `store` VALUES ('邯郸市光明大街授权专卖店', '邯郸市邯山区光明南大街92号', '移动大厦十字路口北10米路东', '15033005156', 130400);
INSERT INTO `store` VALUES ('邯郸临漳县建安路认证店', '邯郸市临漳县建安路中段', '联通西则', '13754400918', 130400);
INSERT INTO `store` VALUES ('邯郸市大名县大名府路授权专卖店', '邯郸市大名县大名府路288号', '', '15031025525', 130400);
INSERT INTO `store` VALUES ('邯郸成安寇公路新认证店', '邯郸市成安县城青云街与寇公路交叉口(西关口)西南角', '', '15033858596', 130400);
INSERT INTO `store` VALUES ('邯郸馆陶县新华街认证店', '邯郸市馆陶县新华街华都酒店北100米路西', '', '15188908111 ，0310-2811268', 130400);
INSERT INTO `store` VALUES ('邢台市中兴西大街授权专卖店', '邢台市中兴西大街30号', '中兴路地道桥西口，中桥商场对过', '18730995252', 130500);
INSERT INTO `store` VALUES ('邢台市南宫青年街授权专卖店', '邢台市南宫市青年街泰隆广场', '', '0319-5189985', 130500);
INSERT INTO `store` VALUES ('邢台临西玉兰西路认证店', '邢台市临西县玉兰西路联通公司楼下', '', '15630916696', 130500);
INSERT INTO `store` VALUES ('邢台巨鹿县新华北街认证店', '邢台巨鹿县新华北街81号北斗通讯', '', '15373199966', 130500);
INSERT INTO `store` VALUES ('邢台新河县振堂路认证店', '邢台市新河县振堂路移动公司东临魅族专卖店', '', '13930934999', 130500);
INSERT INTO `store` VALUES ('保定雄县温泉路水利局认证店', '保定市雄县温泉路水利局楼下', '万信通通讯', '13722271877', 130600);
INSERT INTO `store` VALUES ('保定市裕华路授权专卖店', '保定市裕华西路285号', '直隶总督署东侧10米，颐高数码广场正对面', '15903326080', 130600);
INSERT INTO `store` VALUES ('保定市十方商贸城二店授权专卖店', '保定市十方商贸城十方路与西下关街交口西行10米路南魅族专卖店', '', '13091220176', 130600);
INSERT INTO `store` VALUES ('太原市南内环阳光科技大厦认证店', '太原市南内环阳光科技大厦4层4098', '', '15698575559', 140100);
INSERT INTO `store` VALUES ('大同恒安区认证店', '大同矿务局富卓商城7号', '', '15735255588', 140200);
INSERT INTO `store` VALUES ('晋城阳城县凤凰西街认证店', '晋城市阳城县凤凰东街11号', '', '17735674888', 140500);
INSERT INTO `store` VALUES ('运城临猗县双塔南路认证店', '运城市临猗县双塔南路汽车站对面魅族专卖店', '', '15303599808', 140800);
INSERT INTO `store` VALUES ('运城市红旗东街授权专卖店', '运城市红旗东街红旗中学对面东20米魅族专卖店', '', '0359-8763966', 140800);
INSERT INTO `store` VALUES ('原平市前进西街文化馆一楼魅族认证店', '原平市前进西街文化馆一楼魅族专卖店', '', '13546119986', 140900);
INSERT INTO `store` VALUES ('临汾尧都区平阳中街认证店', '平阳中街11号', '', '0357-3928288/15735705666', 141000);
INSERT INTO `store` VALUES ('吕梁市离石区永宁中路认证店', '吕梁市离石区永宁中路114号(联通公司对面)', '', '13994820610', 141100);
INSERT INTO `store` VALUES ('赤峰林东镇认证店', '赤峰市巴林左旗林东镇城建小区楼下', '', '15049680202', 150400);
INSERT INTO `store` VALUES ('巴彦淖尔市临河区胜利北路授权专卖店', '巴彦淖尔市临河区胜利北路东方珀丽南门底店A17号', '', '13948391797', 150800);
INSERT INTO `store` VALUES ('乌兰浩特兴安南大路认证店', '兴安盟乌兰浩特市兴安南大路2号长丰宾馆楼下西侧门市东数第三家门市', '', '18748218883', 152200);
INSERT INTO `store` VALUES ('锦州市和平路授权专卖店', '锦州市古塔区和平路35-3号', '和平路联通营业大厅东侧爱博通讯隔壁', '15694161101', 210700);
INSERT INTO `store` VALUES ('凌源东街认证店', '凌源市市府路东段', '移动公司对面', '0421-6760777', 211300);
INSERT INTO `store` VALUES ('哈尔滨市道里区魅族授权专卖店', '黑龙江省哈尔滨市道里区顾乡大街114号', '', '15104517669', 230100);
INSERT INTO `store` VALUES ('北安龙江路认证店', '北安市龙江路凤凰尊品115号', '', '13942188808', 231100);
INSERT INTO `store` VALUES ('上海虹口区宝山路授权专卖店', '上海市虹口区宝山路778号海伦国际2楼205室', '', '56356051/18621313802', 310100);
INSERT INTO `store` VALUES ('南京市新街口授权专卖店', '南京市新街口中山东路9号天时国际大厦一楼新街口地铁站7号出口向东50米', '南京市新街口中山东路9号天时国际大厦一楼新街口地铁站7号出口向东50米', '025-86883220', 320100);
INSERT INTO `store` VALUES ('南京市仙林东城汇授权专卖店', '南京市仙林文苑路8号东城汇一楼153席东城汇东北角', '东城汇东北角', '025-82224429', 320100);
INSERT INTO `store` VALUES ('徐州市中山南路授权专卖店', '徐州市中山南路101-4中山饭店对面魅族手机专卖店', '中山饭店-巴西烤肉对面', '13913479120', 320300);
INSERT INTO `store` VALUES ('常州市新北万达太湖路授权专卖店', '常州市通江中路府西花园2-103号', '新区万达广场喜来登酒店十字路口往东20米', '0519-69815100', 320400);
INSERT INTO `store` VALUES ('常州市湖塘吾悦广场授权专卖店', '常州市武进区武宜北路218号', '吾悦广场东门对面，BRT站台侧面', '0519-85616779', 320400);
INSERT INTO `store` VALUES ('南通市如东华荣上海城授权专卖店', '南通市如东县掘港镇幸福路2号华荣上海城1-2号', '', '18362130147', 320600);
INSERT INTO `store` VALUES ('连云港灌云胜利中路认证店', '连云港灌云县胜利中路345号', '', '13225208999', 320700);
INSERT INTO `store` VALUES ('淮安市承德北路认证店', '淮安市清江浦区承德北路81-24号', '', '0517-83558578/15061219689', 320800);
INSERT INTO `store` VALUES ('大丰市幸福东大街授权专卖店', '大丰市幸福东大街52号', '大润发超市对面', '0515-83993789', 320900);
INSERT INTO `store` VALUES ('盐城市射阳朝阳街授权专卖店', '盐城市射阳县朝阳街81号', '邮电巷对面', '0515-82311800', 320900);
INSERT INTO `store` VALUES ('扬州市四望亭授权专卖店', '扬州市四望亭路68号', '苏宁电器西侧邮政储蓄对面', '13013735588', 321000);
INSERT INTO `store` VALUES ('泰兴市鼓楼南路授权专卖店', '泰兴市鼓楼南路143号', '', '13236173308', 321200);
INSERT INTO `store` VALUES ('泰州市东进西路授权认证店', '泰州市海陵区东进西路9-8号', '', '0523-86225557/18651177717', 321200);
INSERT INTO `store` VALUES ('宿迁市宿城区楚街南门授权专卖店', '宿迁市宿城区楚街三区101号', '', '13913479120', 321300);
INSERT INTO `store` VALUES ('沭阳南京东路授权专卖店', '江苏省宿迁市沭阳县南街东路186号', '', '15371383336/0527-89997663', 321300);
INSERT INTO `store` VALUES ('杭州市文三路授权专卖店', '杭州市西湖区文三路348－12号', '高新数码城对面', '0571-56889708', 330100);
INSERT INTO `store` VALUES ('魅族杭州市颐高旗舰广场授权专卖店', '浙江省杭州市西湖区黄姑山路29号颐高数码旗舰店A座J1002 号', '', '0571-56769766', 330100);
INSERT INTO `store` VALUES ('杭州市富阳玉长城商业广场授权专卖店', '富阳市春秋北路271号玉长城商业广场步行街N1002铺位', '', '18057177907', 330100);
INSERT INTO `store` VALUES ('温州市人民东路江南大厦授权专卖店', '温州市人民东路33-35号', '', '0577-88658333', 330300);
INSERT INTO `store` VALUES ('温州市苍南灵溪塘南一街授权专卖店', '温州市苍南县灵溪镇塘南一街31号', '', '0577-68756688', 330300);
INSERT INTO `store` VALUES ('湖州市颐高数码广场授权专卖店', '湖州市吴兴区北街颐高数码广场A126号', '苏宁电器旁，颐高数码广场正大门旁', '13957281608', 330500);
INSERT INTO `store` VALUES ('台州市温岭北门街授权专卖店', '台州市温岭北门街8号', '', '0576-89787771', 331000);
INSERT INTO `store` VALUES ('台州市椒江区白云街授权店', '台州市椒江区中山西路140号', '', '0576-88808006/13088636677', 331000);
INSERT INTO `store` VALUES ('合肥市新银河通讯授权专卖店', '合肥市包河区徽州大道218号', '和平国际大酒店对面、一千零一夜旁', '0551-65529385 18919604745', 340100);
INSERT INTO `store` VALUES ('芜湖市北京西路授权专卖店', '芜湖市北京西路路口鸠江饭店门面房', '', '0553-3820669 / 15385877092', 340200);
INSERT INTO `store` VALUES ('魅族蚌埠市宝龙广场授权专卖店', '安徽省蚌埠市经开区宝龙城市广场B座B3号门(横店影视城一楼)宝龙电脑城一楼1100号', '', '0552-3713208', 340300);
INSERT INTO `store` VALUES ('马鞍山市湖东中路授权专卖店', '马鞍山市花山区湖东中路173号', '中国电信大楼对面，湖东中路第三小学隔壁', '0555-2343531', 340500);
INSERT INTO `store` VALUES ('安庆市龙门口街授权专卖店', '安庆市大观区龙门口路25号', '安庆一中对面，优美滋食品隔壁', '05565527127', 340800);
INSERT INTO `store` VALUES ('安庆龙山路认证店', '安庆市迎江区龙山路176号', '（招商银行正对面）', '15055478886', 340800);
INSERT INTO `store` VALUES ('阜阳临泉县光明北路认证店', '阜阳市临泉县光明北路42号', '', '15255810036', 341200);
INSERT INTO `store` VALUES ('魅族阜阳巨川广场授权专卖店', '安徽省阜阳市颍泉区颍州路8号巨川广场A座1405室', '', '0558-2282258 18009689007', 341200);
INSERT INTO `store` VALUES ('宿州市胜利路授权专卖店', '宿州市埇桥区胜利路496号', '宿州市百货大楼对面', '15105577205', 341300);
INSERT INTO `store` VALUES ('六安市皖西路授权专卖店', '六安市金安区皖西路111/112/113号商铺', '', '0564-3686520', 341500);
INSERT INTO `store` VALUES ('亳州市谯城新华南路授权专卖店', '亳州市谯城区新华南路15号', '', '18119988690', 341600);
INSERT INTO `store` VALUES ('魅族福州中央第五街授权专卖店', '福建省福州市台江区中央第五街一号楼19层1906', '', '0591-83943558/83700336', 350100);
INSERT INTO `store` VALUES ('厦门市文化宫授权专卖店', '厦门市思明区仙岳路425号之21（文化宫或公交大厦站）', '', '0592-5075019 / 18205961665', 350200);
INSERT INTO `store` VALUES ('莆田仙游世纪星通信认证店', '莆田市仙游县龙宫娱乐城底楼世纪星通', '', '13850226577', 350300);
INSERT INTO `store` VALUES ('泉州市宝洲路万达广场魅族专卖店', '泉州市浦西万达广场金街S122号（宝星路27号）', '', '0595-22999976', 350500);
INSERT INTO `store` VALUES ('泉州市九一街授权专卖店', '泉州市鲤城区九一街中段177号', '鲤城交警大队对面', '0595-22910222', 350500);
INSERT INTO `store` VALUES ('瑞昌赤乌大道认证店', '瑞昌市赤乌东路58号', '', '13755220266', 360400);
INSERT INTO `store` VALUES ('赣州市环城路新授权专卖店', '赣州市章贡区环城路7-1号', '', '0797-8458888', 360700);
INSERT INTO `store` VALUES ('赣州市定南县建设东路认证店', '赣州市定南县建设东路41-1魅族手机专卖店（城乡建设局旁）', '', '18370976656', 360700);
INSERT INTO `store` VALUES ('青岛市辽宁路颐高数码广场授权专卖店', '青岛市市北区辽宁路167号颐高数码广场一楼A1010号', '', '0532-80918593', 370200);
INSERT INTO `store` VALUES ('东营市天成恒信授权专卖店', '东营市西三路17号奥达商务入口南邻', '招商银行北200米路西', '0546-8788928', 370500);
INSERT INTO `store` VALUES ('济宁市建设南路授权专卖店', '济宁市建设南路63号', '世纪联华东门正对面，济宁饭店向南50米', '0537--2086887 / 13258001011', 370800);
INSERT INTO `store` VALUES ('临沂沂蒙路认证店', '临沂市沂蒙路155号', '', '0539-8183999', 371300);
INSERT INTO `store` VALUES ('德州市东风路新远大厦授权专卖店', '德州市德城区东风路新远大厦1号楼13-14号', '', '0534-2608308', 371400);
INSERT INTO `store` VALUES ('菏泽郓城金河路认证店', '菏泽市郓城县金河路中段汽车站南门对过8号门市', '', '17806051858', 371700);
INSERT INTO `store` VALUES ('新乡市红旗平原路授权专卖店', '新乡市红旗区平原路162号', '平原路大商百货对面小北街口', '0373-2039278', 410700);
INSERT INTO `store` VALUES ('商丘市凯旋路凯旋商城授权专卖店', '商丘市梁园区凯旋商城南一百米（魅族专卖店）', '', '13353627535', 411400);
INSERT INTO `store` VALUES ('武汉市珞瑜路授权专卖店', '武汉市洪山区珞瑜路131号', '广八路口、地铁二号线广埠屯站K出口', '027-87870176', 420100);
INSERT INTO `store` VALUES ('十堰市邮电街授权专卖店', '十堰市邮电街3-6号', '邮电街和信销品贸对面索尼专卖店旁', '0719-8683048 / 13477988992', 420300);
INSERT INTO `store` VALUES ('宜昌市东山大道授权专卖店', '宜昌市西陵区东山大道113号', '宜昌饭店旁', '0717-6456648', 420500);
INSERT INTO `store` VALUES ('宜昌市卓悦通信广场授权专卖店', '宜昌市东山大道109号卓悦广场一楼', '', '0717-6975975', 420500);
INSERT INTO `store` VALUES ('襄阳市长虹路授权专卖店', '襄阳市樊城区长虹路再尔广场南139号', '', '07103253955、13972235588', 420600);
INSERT INTO `store` VALUES ('长沙市韶山南路林科大授权专卖店', '湖南省长沙市天心区韶山南路456号魅族专卖店', '', '0731-82258848', 430100);
INSERT INTO `store` VALUES ('长沙市韶山北路东塘授权专卖店', '长沙市韶山北路418号东上一品前1号门面', '中国电信东塘营业厅正对面，东塘北下车即可', '0731-85221812 / 13973122055', 430100);
INSERT INTO `store` VALUES ('长沙市解放东路华海3C广场授权专卖店', '长沙市芙蓉区解放东路89号华海3C广场一楼58号铺面', '', '0731-85785016、18627581116', 430100);
INSERT INTO `store` VALUES ('株洲市芦淞区金三角授权专卖店', '株洲市芦淞区芦淞路1053号中国联通旁', '金三角智成合赢营业厅旁', '18692606669/18673318881', 430200);
INSERT INTO `store` VALUES ('株洲市芦淞区家润多广场授权专卖店', '株洲市芦淞区建设中路108号（中心广场）家润多一楼2号通道', '', '0731-28600169 / 18627330009', 430200);
INSERT INTO `store` VALUES ('衡阳市解放路授权专卖店', '衡阳市解放路', '大洋百货肯德基斜对面,明雅通讯隔壁', '0734-8239239 / 13575281699', 430400);
INSERT INTO `store` VALUES ('衡阳市鸿运数码广场授权专卖店', '衡阳市蒸湘区解放路306号鸿运数码广场1楼170号', '裕鑫假日酒店正对面', '0734-8126670/18674798040', 430400);
INSERT INTO `store` VALUES ('韶关市浈江风采授权专卖店', '韶关市浈江区风采路14号风采广场', '', '13713797122', 440200);
INSERT INTO `store` VALUES ('深圳市宝安金龙华广场授权专卖店', '深圳市宝安区龙华街道龙观大道金龙华广场009号', '龙华天虹斜对面，苏宁电器旁', '0755-28062706', 440300);
INSERT INTO `store` VALUES ('深圳市华强电子世界授权专卖店', '深圳市福田区华强北路华强电子世界3号楼E3-06号', '赛格广场正对面，大运会服务U站旁', '0755-83170611', 440300);
INSERT INTO `store` VALUES ('深圳市宝安沙井上南大街授权专卖店', '深圳市宝安区广深路沙井段114号102-2（上南人行天桥旁边）', '上南大街', '17301936663/17301938096', 440300);
INSERT INTO `store` VALUES ('深圳市南山区蛇口授权专卖店', '深圳市南山区蛇口公园南路17号', '蛇口线水湾地铁站C，公园南路站台对面', '0755-26690996', 440300);
INSERT INTO `store` VALUES ('深圳市龙岗区天虹授权专卖店', '深圳市龙岗区天虹商场1楼143号双龙地铁站B出口面点王左侧', '', '0755-89386656', 440300);
INSERT INTO `store` VALUES ('深圳市宝安西乡授权专卖店', '西乡街道西乡大门富成路98号（肯德基斜对面）', '', '18664988771 /15217069743', 440300);
INSERT INTO `store` VALUES ('深圳市坪山新区坪山授权专卖店', '深圳市坪山新区坪山镇深汕路121-4号', '坪山围公交车站旁', '0755-23999535', 440300);
INSERT INTO `store` VALUES ('珠海魅族科技直营店', '广东省珠海市科技创新海岸魅族科技楼', '珠海魅族科技大楼一楼', '0756-6121446/13302874844', 440400);
INSERT INTO `store` VALUES ('珠海香洲唐家湾高新区认证店', '珠海市唐家湾高新区留诗路2号厂房1楼魅力科技有限公司前台', '', '0756-6120728 / 0756-6120519', 440400);
INSERT INTO `store` VALUES ('佛山市顺德振华大道千禧授权专卖店', '佛山市顺德区容桂镇振华路81号', '千禧广场斜对面', '0757-22136555/18666557755', 440600);
INSERT INTO `store` VALUES ('江门蓬江区蓬莱路授权专卖店', '江门市蓬江区蓬莱路1号15-17轴', '', '0750-3093351', 440700);
INSERT INTO `store` VALUES ('惠州市麦地路授权专卖店', '惠州市惠城区麦地路75号龙珠楼9号魅族手机专卖店', '女人世界斜对面，苏宁电器正对面', '0752-2081802/13360889955', 441300);
INSERT INTO `store` VALUES ('东莞市向阳路授权专卖店', '东莞市莞城区西城楼大街209号铺', '（向阳路公交站斜对面，沟通100营业厅旁边）', '18938165705', 441900);
INSERT INTO `store` VALUES ('东莞市黄江江南路授权专卖店', '东莞市黄江镇江南路104号', '港华门诊部对面，南康百货往公明方向直走大约300米左右合路路口旁边', '0769-82118503/ 18316834605', 441900);
INSERT INTO `store` VALUES ('潮州彩塘潮汕公路认证店', '潮州市潮安县彩塘镇潮汕公路374号（彩塘车站旁）', '', '0768-6756373', 445100);
INSERT INTO `store` VALUES ('揭阳市普宁流沙大道授权专卖店', '揭阳市普宁市流沙大道西79号（市公安局旁）', '中华新城斜对面', '0663-2253636/18922840442', 445200);
INSERT INTO `store` VALUES ('南宁市共和路授权专卖店', '南宁市共和路124-3号', '万达电影院斜对面，中国电信正面旁', '0771-2639126', 450100);
INSERT INTO `store` VALUES ('桂林市中山中路授权专卖店', '桂林市中山中路大世界智能大厦一楼9号', '盛业大夏对面，大世界智能广场内', '0773 2862028', 450300);
INSERT INTO `store` VALUES ('重庆市歇台子授权专卖店', '重庆市九龙坡区渝州路156号1-7号（地铁一号线歇台子站3B出口直行100米）', '重庆市九龙坡区渝州路156号1-7号（地铁一号线歇台子站3B出口直行100米）', '023-68180916', 500100);
INSERT INTO `store` VALUES ('成都市太升南路51号授权专卖店', '成都市青羊区太升南路51号认证店', '', '13881790458', 510100);
INSERT INTO `store` VALUES ('德阳市长江西路授权专卖店', '德阳市长江西路156号', '', '0838-2220778', 510600);
INSERT INTO `store` VALUES ('遂宁市德胜路授权专卖店', '遂宁市船山区德胜东路299号', '邮政储蓄银行正对面', '0825- 2226493', 510900);
INSERT INTO `store` VALUES ('南充市顺庆区涪江路授权专卖店', '南充市涪江路53-57号', '涪江路小学正对面', '0817-2237333', 511300);
INSERT INTO `store` VALUES ('广安市金安大道市粮食局授权专卖店', '广安市金安大道1段51号重百商场往天府饭店上行150米', '市粮食局正对面，广宁市场站台旁', '0826-2222499', 511600);
INSERT INTO `store` VALUES ('资阳市建设北路授权专卖店', '资阳市雁江区建设北路二段72号', '家乐福公交站正对面', '13547277027', 512000);
INSERT INTO `store` VALUES ('贵阳市中华南路授权专卖店', '贵阳市南明区中华南路67号（农业银行左侧，台湾大厦对面）', '', '85868820、18188114421', 520100);
INSERT INTO `store` VALUES ('铜仁清水大道北门认证店', '铜仁市碧江区清水大道环北街道办事处对面', '', '15329062963', 522200);
INSERT INTO `store` VALUES ('毕节黔西县莲城大道认证店', '毕节市黔西县莲城大道起至崇文路第三间门店', '', '0857-4847789', 522400);
INSERT INTO `store` VALUES ('毕节织金县大斧头广场认证店', '毕节市织金县大斧头广场金源街爱家超市门口', '', '0857-7631299', 522400);
INSERT INTO `store` VALUES ('毕节清毕路认证店', '毕节市清毕路北路邮政银行旁边', '', '0857-8236656', 522400);
INSERT INTO `store` VALUES ('毕节金沙长安街认证店', '毕节市金沙县长安街转盘处', '(中国建设银行对面)', '15685476110', 522400);
INSERT INTO `store` VALUES ('昆明晋城晋东路认证店', '昆明市晋宁县晋城镇进江路公路五处8号铺面', '', '15912576189', 530100);
INSERT INTO `store` VALUES ('昆明宜良环城西路认证店', '昆明市宜良县环城西路妇幼保健院斜对面', '（广福苑小区商铺正对面）', '0871-67519118', 530100);
INSERT INTO `store` VALUES ('曲靖师宗县认证店', '曲靖市师宗县漾月西路十佳快捷酒店1楼', '', '0874-6206666', 530300);
INSERT INTO `store` VALUES ('曲靖罗平县认证店', '曲靖市罗平县振兴街42号', '', '0874-6137666', 530300);
INSERT INTO `store` VALUES ('保山隆阳区认证店', '保山市隆阳区九龙路75号', '九龙路与下巷街T字路口，女人大世界旁', '13888515232', 530500);
INSERT INTO `store` VALUES ('红河州蒙自人民中路授权专卖店', '红河州蒙自市人民中路78号', '', '0873-8888858', 532500);
INSERT INTO `store` VALUES ('西安市雁塔路授权专卖店', '西安市雁塔路中段天成大厦1层55号', '西安科技大学对面，雁塔路鲁家村车站', '18591937275', 610100);
INSERT INTO `store` VALUES ('西安西北大学认证店', '西安市碑林区太白北路316号', '西北大学西门对面', '13519197691', 610100);
INSERT INTO `store` VALUES ('咸阳市人民东路认证店', '咸阳市人民东路41号 （国棉一厂正门建行东侧）', '', '029-33214629/18609201100', 610400);
INSERT INTO `store` VALUES ('渭南白水白港认证店', '渭南市白水县白港大厦南100米路东', '', '15291938355', 610500);
INSERT INTO `store` VALUES ('渭南市中心广场南路授权专卖店', '渭南市临渭区广场南路6号渭南市政协附近', '', '0913-202331118049595888', 610500);
INSERT INTO `store` VALUES ('汉中市人民路授权专卖店', '汉中市汉台区人民路18号', '人民路鸿宾楼下', '0916—2611234 / 18909161234', 610700);
INSERT INTO `store` VALUES ('靖边县北大街认证店', '榆林市靖边县北大街店与新西街十字', '', '18681901988', 610800);
INSERT INTO `store` VALUES ('兰州榆中和平镇认证店', '兰州市榆中县和平镇和平大道193号', '', '18609355222', 620100);
INSERT INTO `store` VALUES ('兰州市城关区金昌路华洋授权专卖店', '兰州市金昌北路92-94号', '', '0931-8721600', 620100);
INSERT INTO `store` VALUES ('嘉峪关新华南路认证店', '嘉峪关市新华南路11号楼房一层', '', '15009471699', 620200);
INSERT INTO `store` VALUES ('白银白银区人民路认证店', '白银市白银区人民路138号1-06铺', '人民路与五一街交界处，铜城商厦公交站50米', '18516123197', 620400);
INSERT INTO `store` VALUES ('武威凉州区共和街认证店', '武威市凉州区翔达房地产1-1号商铺', '', '18298766532', 620600);
INSERT INTO `store` VALUES ('张掖山丹浙宁商厦认证店', '张掖市山丹县艾黎大道与仁和大道十字浙宁福润购物广场', '', '15379719989', 620700);
INSERT INTO `store` VALUES ('平凉崆峒区西大街南门什字认证店', '平凉市崆峒区西大街南门什字沿街2号', '博爱商场门口西侧', '13830307788', 620800);
INSERT INTO `store` VALUES ('平凉庄浪移动公司认证店', '平凉市庄浪县东关街56号移动公司楼下', '', '15193323839', 620800);
INSERT INTO `store` VALUES ('酒泉肃州区大明步行街认证店', '酒泉市肃州区大明步行街', '', '0937-5929268', 620900);
INSERT INTO `store` VALUES ('陇南宕昌人民街认证店', '甘肃省陇南市宕昌县人民街17号（民生广场对面）', '', '15349398753', 621200);
INSERT INTO `store` VALUES ('西宁海湖新华联购物中心授权专卖店', '西宁市海湖新区新华联购物中心一楼', '(五号门口)', '15500553300', 630100);
INSERT INTO `store` VALUES ('格尔木昆仑广场认证店', '格尔木市八一中路昆仑南广场', '（邮政储蓄银行隔壁）', '18697891888', 632800);
INSERT INTO `store` VALUES ('银川市新华东街授权专卖店', '银川市兴庆区新华东街214号', '新华东街和中山南街十字东南角', '0951-6025766', 640100);
INSERT INTO `store` VALUES ('中卫沙坡头鼓楼西街认证店', '中卫市沙坡头区鼓楼西街41号', '（宁夏银行对面）', '0955-6553665', 640500);
INSERT INTO `store` VALUES ('魅族香港九龍旺角專門店', '九龍旺角彌敦道610號 ,荷李活商業中心1901室', '', '(852) 2388 2033', 810100);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cart` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'lifeng', '123456', '[\"id\":1]');

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video`  (
  `video-url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `video-title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of video
-- ----------------------------
INSERT INTO `video` VALUES ('https://fms.res.meizu.com/dms/2020/05/08/cfbb2d92-8c02-43ca-b91e-fb90d8c2b57d.jpg', '以梦为舰，热爱起航：魅族 17 航母限定版重构热血旗舰');
INSERT INTO `video` VALUES ('https://fms.res.meizu.com/dms/2020/05/08/726e64a2-e5ea-4102-92c7-2f11b0d0176a.jpg', '这艺术，科技极了：魅族 17 Pro 晓芳窑艺术典藏版');
INSERT INTO `video` VALUES ('https://fms.res.meizu.com/dms/2020/05/08/21f8c68f-63b4-4b6a-99cc-218ab3462fbb.jpg', '去噪，去躁：魅族 HD60降噪耳机');
INSERT INTO `video` VALUES ('https://fms.res.meizu.com/dms/2019/10/23/e598a95b-42e4-48ed-a48a-2e57c1127812.jpg', '玩出我的热爱：魅族 16T 大屏娱乐旗舰');
INSERT INTO `video` VALUES ('https://fms.res.meizu.com/dms/2019/10/22/cfe6f26c-f28e-4aa3-93bf-18f06977ad44.jpg', 'Flyme 8 概念视频');
INSERT INTO `video` VALUES ('https://fms.res.meizu.com/dms/2019/10/22/c25ae0b3-95ab-4ed1-99b7-9e269f4876af.jpg', 'Flyme 8 功能视频');
INSERT INTO `video` VALUES ('https://fms.res.meizu.com/dms/2019/10/22/51368a34-9aed-4b7b-b5e8-0ac7a665de35.jpg', 'Aicy');
INSERT INTO `video` VALUES ('https://fms.res.meizu.com/dms/2018/11/27/3b75dc9f-7af7-4104-94fa-a384252ef78c.jpg', '安全家庭');

SET FOREIGN_KEY_CHECKS = 1;
