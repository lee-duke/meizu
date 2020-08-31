/*
 Navicat Premium Data Transfer

 Source Server         : meizu
 Source Server Type    : MySQL
 Source Server Version : 50527
 Source Host           : localhost:6666
 Source Schema         : meizu

 Target Server Type    : MySQL
 Target Server Version : 50527
 File Encoding         : 65001

 Date: 31/08/2020 17:55:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 88 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, 'banner', '', NULL, NULL, '', '[\'./images/han1.jpg\']', 'handset', NULL, NULL);
INSERT INTO `products` VALUES (2, '魅族 17 Pro', '全网通公开版 ', '【限时领券至高立省200】【购17Pro赠全新壳膜套装】【学生购机享精美礼品】高通骁龙 865 + UFS 3.1 + LPDDR5 | 6400W 全场景 AR 专业影像系统 ', '[\'乌金\',\'定白\',\'天青\',\'月白天青\']', '[\'8 + 128GB\',\'12 + 256GB\']', '[\'./images/hand1-1.png@480x480.jpg\',\'./images/hand1-2.png@480x480.jpg\',\'./images/hand1-3.png@480x480.jpg\',\'./images/hand1-4.png@480x480.jpg\']', 'handset', '[\'4299.00\',4699.00\']', NULL);
INSERT INTO `products` VALUES (3, '魅族 17', '全网通公开版', '【限时领券立省200】【购魅族17赠全新壳膜套装】【学生购机享精美礼品】高通骁龙 865 + UFS 3.1 高速闪存', '[\'AG梦幻独角兽\',\'松深入墨\',\'十七度灰\',\'AG星际灰\',\'AG原野绿\',]', '[\'8 + 128GB\',\'12 + 256GB\']', '[\'./images/hand2-1.png@480x480.jpg\',\'./images/hand2-2.png@480x480.jpg\',\'./images/hand2-3.png@480x480.jpg\',\'./images/hand2-4.png@480x480.jpg\',\'./images/hand2-5.png@480x480.jpg\']', 'handset', '[\'3699.00\',\'3999.00\']', NULL);
INSERT INTO `products` VALUES (4, '魅族 17 Pro 晓芳窑艺术典藏版', '全网通公开版', '这艺术 科技极了', '[\'天青\']', '[\'12 + 256GB\']', '[\'/images/hand3-1.png@480x480.jpg\']', 'handset', '[\'9999.00\']', NULL);
INSERT INTO `products` VALUES (5, '魅族 16T', '全网通公开版', '6.5英寸极边全面屏 | 骁龙855旗舰处理器 | 4500mAh续航怪兽 | UFS 3.0 高速闪存 | 「双」·立体声扬声器 | 超广角 AI 三摄 | 线性振动马达 | 全球频段', '[\'鲸跃蓝\',\'湖光绿\',\'日光橙\']', '[\'6 + 128GB\',\'8 + 128GB\',\'8 + 256GB\']', '[\'./images/hand4-1.png@480x480.jpg\',\'./images/hand4-2.png@480x480.jpg\',\'./images/hand4-3.png@480x480.jpg\']', 'handset', '[\'1999.00\',\'2299.00\',\'2499.00\']', NULL);
INSERT INTO `products` VALUES (6, '魅族 16s Pro', '全网通公开版', '高通骁龙 855 Plus  | 索尼 4800W 像素超广角 AI 三摄 | 极边全面屏 | Flyme8 尝鲜体验 | 极速屏下指纹 | 全功能NFC', '[\'黑之谧镜\',\'梦幻独角兽\',\'暮光森林\',\'白色物语\']', '[\'6 + 128GB\',\'8 + 128GB\',\'8 + 256GB\']', '[\'./images/hand5-1.png@480x480.jpg\',\'./images/hand5-2.png@480x480.jpg\',\'./images/hand5-3.png@480x480.jpg\',\'./images/hand5-4.png@480x480.jpg\']', 'handset', '[\'2699.00\',\'2999.00\',\'3299.00\']', NULL);
INSERT INTO `products` VALUES (7, '魅族 16Xs', '全网通公开版', '极边全面屏 | 4800W AI三摄 | 疾速屏下指纹 | 4000mAh大电池 | 高通骁龙675 | Onemind 3.0 | 绚丽多彩新色系', '[\'骑士黑\',\'亚特兰蒂斯\',\'珊瑚橙\',\'冰丝白\']', '[\'6 + 64GB\',\'8 + 128GB\']', '[\'./images/hand6-1.png@480x480.jpg\',\'./images/hand6-2.png@480x480.jpg\',\'./images/hand6-3.png@480x480.jpg\',\'./images/hand6-4.png@480x480.jpg\']', 'handset', '[\'1499.00\',1699.00\']', NULL);
INSERT INTO `products` VALUES (8, '魅族 17 航母限定版', '全网通公开版', '高通骁龙 865 + UFS 3.1 高速闪存 | 6400W 全场景影像系统 | 定制三星 Super AMOLED 90 帧直屏 | 4500mAh 超大电池 + 30W 快充 | 智能全功能 NFC', '[\'舰灰\']', '[\'8 + 256GB\']', '[\'./images/hand8-1.png@480x480.jpg\']', 'handset', '[\'4299.00\']', NULL);
INSERT INTO `products` VALUES (9, '魅族 16s 白夜童话限量礼盒', '全网通公开版', '以梦为马 乘风破浪', '[\'凝光白\']', '[\'6 + 128GB\']', '[\'./images/hand9-1.png@480x480.jpg\']', 'handset', '[\'3099.00\']', NULL);
INSERT INTO `products` VALUES (10, '魅族 16s', '全网通公开版', '高通骁龙855 | 4800W光学防抖 | 对称式AMOLED全面屏 | 极速屏下指纹 | 全功能NFC ', '[\'碳纤黑\',\'凝光白\',\'幻影蓝\']', '[\'6 + 128GB\',\'8 + 128GB\',\'8 + 256GB\']', '[\'./images/hand7-1.png@480x480.jpg\',\'./images/hand7-2.png@480x480.jpg\',\'./images/hand7-3.png@480x480.jpg\']', 'handset', '[\'2699.00\',\'2999.00\',\'3299.00\']', NULL);
INSERT INTO `products` VALUES (11, '魅族 Note9', '全网通公开版', '骁龙675 | 后置4800万 | 前置2000万 | 独家定制水滴设计全面屏 | 4000mAh大容量电池 | 18W mCharge快充 ', '[\'幻黑\',\'皓白\',\'星耀蓝\']', '[\'4 + 64GB\',\'6 + 64GB\',\'4 + 128GB\']', '[\'./images/hand10-1.png@480x480.jpg\',\'./images/hand10-2.png@480x480.jpg\',\'./images/hand10-3.png@480x480.jpg\']', 'handset', '[\'1199.00\',\'1299.00\',\'1299.00\']', NULL);
INSERT INTO `products` VALUES (12, '魅族 Note8', '全网通公开版', '骁龙632 | 6.0 英寸全面屏 | 3600mAh 大电池 | mCharge 快充加持 | Dual PD 全像素双核对焦 |人脸指纹双解锁', '[\'曜黑\',\'灰蓝\',\'烟紫\',\'焰红\']', '[\'4 + 32GB\',\'4 + 64GB\']', '[\'./images/hand11-1.png@480x480.jpg\',\'./images/hand11-2.png@480x480.jpg\',\'./images/hand11-3.png@480x480.jpg\',\'./images/hand11-4.png@480x480.jpg\']', 'handset', '[\'899.00\',\'1198.00\']', NULL);
INSERT INTO `products` VALUES (13, '魅族 X8', '全网通公开版', '骁龙710 | 6.2寸定制浅刘海屏 | 89.6%屏占比 | 旗舰双摄 | 人脸+指纹双解锁', '[\'亮黑\',\'玉白\',\'幻蓝\']', '[\'4 + 64GB\',\'6 + 64GB\',\'6 + 128GB\']', '[\'./images/hand12-1.png@480x480.jpg\',\'./images/hand12-2.png@480x480.jpg\',\'./images/hand12-3.png@480x480.jpg\']', 'handset', '[\'1298.00\',\'1498.00\',\'1698.00\']', NULL);
INSERT INTO `products` VALUES (14, '魅族 V8 标配版', '全网通公开版', '5.7英寸HD+全面屏 智能美颜', '[\'磨砂黑\',\'纯白\']', '[\'3 + 32GB\']', '[\'./images/hand13-1.png@480x480.jpg\',\'./images/hand13-2.png@480x480.jpg\']', 'handset', '[\'799.00\']', NULL);
INSERT INTO `products` VALUES (15, '魅族 V8 高配版', '全网通公开版', 'Helio P22 处理器 | 5.7 英寸全面屏 | 后置双摄组合 | 双色温双闪光灯 | 人脸+指纹双解锁', '[\'雅金\',\'曜黑\',\'灰蓝\',\'烟紫\']', '[\'4 + 64GB\']', '[\'./images/hand14-1.png@480x480.jpg\',\'./images/hand14-2.png@480x480.jpg\',\'./images/hand14-3.png@480x480.jpg\',\'./images/hand14-4.png@480x480.jpg\']', 'handset', '[\'898.00\']', NULL);
INSERT INTO `products` VALUES (16, '魅族 16 X', '全网通公开版', '骁龙710 | 屏幕下指纹 | 对称式全面屏 | 前置2000万像素 + AI人脸识别 | 后置索尼2000万像素双摄 + 光学防抖', '[\'汝窑白\',\'晨曦金\',\'砚墨黑\',\'云山蓝\',\'烟晶紫\']', '[\'6 + 64GB\',\'6 + 128GB\']', '[\'./images/hand15-1.png@480x480.jpg\',\'./images/hand15-2.png@480x480.jpg\',\'./images/hand15-3.png@480x480.jpg\',\'./images/hand15-4.png@480x480.jpg\',\'./images/hand15-5.png@480x480.jpg\']', 'handset', '[\'1598.00\',1898.00\']', NULL);
INSERT INTO `products` VALUES (17, '魅族 16th Plus', '全网通公开版', '骁龙845 | 屏幕下指纹 | 前后2000万像素摄像头 | 6.5英寸屏幕 | 4×4 MIMO 天线 | mEngine | 超线性双扬声器', '[\'静夜黑\',\'远山白\',\'极光蓝\']', '[\'6 + 128GB\',\'8 + 128GB\',\'8 + 256GB\']', '[\'./images/hand16-1.png@480x480.jpg\',\'./images/hand16-2.png@480x480.jpg\',\'./images/hand16-3.png@480x480.jpg\']', 'handset', '[\'2098.00\',\'2198.00\',\'2298.00\']', NULL);
INSERT INTO `products` VALUES (18, '魅族 16th', '全网通公开版', '骁龙845 | 屏幕下指纹 | 前后2000万像素摄像头 | 6.0英寸屏幕 | mEngine | 超线性双扬声器 |  铜管散热', '[\'静夜黑\',\'远山白\',\'极光蓝\']', '[\'6 + 64GB\',\'6 + 128GB\',\'8 + 128GB\']', '[\'./images/hand17-1.png@480x480.jpg\',\'./images/hand17-2.png@480x480.jpg\',\'./images/hand17-3.png@480x480.jpg\']', 'handset', '[\'1898.00\',\'1998.00\',\'2098.00\']', NULL);
INSERT INTO `products` VALUES (19, '魅蓝 6T', '全网通公开版', '双摄全面屏，游戏长续航', '[\'香槟金\',\'曜石黑\',\'珊瑚红\']', '[\'3 + 32GB\',\'4 + 32GB\',4 + 64GB\']', '[\'./images/hand18-1.png@480x480.jpg\',\'./images/hand18-2.png@480x480.jpg\',\'./images/hand18-3.png@480x480.jpg\']', 'handset', '[\'799.00\',\'999.00\',\'1099.00\']', NULL);
INSERT INTO `products` VALUES (20, '魅族 15 Plus', '全网通公开版', '三星8895处理器 2000万暗光双摄', '[\'雅金\',\'砚墨\',\'玄武灰\']', '[\'6 + 64GB\',\'6 + 128GB\']', '[\'./images/hand19-1.png@480x480.jpg\',\'./images/hand19-2.png@480x480.jpg\',\'./images/hand19-3.png@480x480.jpg\']', 'handset', '[\'1798.00\',\'1998.00\']', NULL);
INSERT INTO `products` VALUES (21, '魅族 M15', '全网通公开版', '骁龙626 前置2000万AI智能美颜', '[\'曜岩黑\',\'砂砾金\',\'朱雀红\']', '[\'4 + 64GB\']', '[\'./images/hand20-1.png@480x480.jpg\',\'./images/hand20-2.png@480x480.jpg\',\'./images/hand20-3.png@480x480.jpg\']', 'handset', '[\'1398.00\']', NULL);
INSERT INTO `products` VALUES (22, '魅族 15', '全网通公开版', '骁龙660 | 2000万暗光双摄 | 3倍无损变焦 | mEngine触感引擎 | 立体声扬声器', '[\'雅金\',\'砚墨\',\'黛蓝\',\'汝窑白\']', '[\'4 + 64GB\',\'4 + 128GB\']', '[\'./images/hand21-1.png@480x480.jpg\',\'./images/hand21-2.png@480x480.jpg\',\'./images/hand21-3.png@480x480.jpg\',\'./images/hand21-4.png@480x480.jpg\']', 'handset', '[\'1498.00\',\'1698.00\']', NULL);
INSERT INTO `products` VALUES (23, '魅蓝 E3', '全网通公开版', '骁龙636处理器 全系6G大运存', '[\'香槟金\',\'曜石黑\',\'丹青\']', '[\'6 + 64GB\',\'6 + 128GB\']', '[\'./images/hand22-1.png@480x480.jpg\',\'./images/hand22-2.png@480x480.jpg\',\'./images/hand22-3.png@480x480.jpg\']', 'handset', '[\'1799.00\',\'1999.00\']', NULL);
INSERT INTO `products` VALUES (24, '魅蓝 S6', '全网通公开版', 'Exynos 7872疾速游戏芯片 侧面指纹解锁', '[\'香槟金\',\'磨砂黑\',\'月光银\',\'淡钴蓝\']', '[\'3 + 32GB\',\'3 + 64GB\']', '[\'./images/hand23-1.png@480x480.jpg\',\'./images/hand23-2.png@480x480.jpg\',\'./images/hand23-3.png@480x480.jpg\',\'./images/hand23-4.png@480x480.jpg\']', 'handset', '[\'999.00\',\'1199.00\']', NULL);
INSERT INTO `products` VALUES (25, '魅族 17 Pro【限时福利】', '全网通公开版', '【魅族17Pro指定版本专享6期免息+领券立省150】高通骁龙 865 + UFS 3.1 + LPDDR5 | 6400W 全场景 AR 专业影像系统 ', '[\'乌金\']', '[\'8 + 128GB\',\'12 + 256GB\']', '[\'./images/hand24-1.png@480x480.jpg\']', 'handset', '[\'4299.00\',\'4699.00\']', NULL);
INSERT INTO `products` VALUES (26, 'banner02', '', NULL, NULL, NULL, '[\'./images/handbg2.jpg\']', 'commend', NULL, NULL);
INSERT INTO `products` VALUES (27, '魅族 17', NULL, NULL, NULL, NULL, '[\'./images/hand2-1.png@480x480.jpg\',\'./images/hand2-2.png@480x480.jpg\',\'./images/hand2-3.png@480x480.jpg\']', 'commend', '3699.00', NULL);
INSERT INTO `products` VALUES (28, '魅族 17 Pro', NULL, NULL, NULL, NULL, '[\'./images/hand1-4.png@480x480.jpg\']', 'commend', '4299.00', NULL);
INSERT INTO `products` VALUES (29, '魅族 16T', NULL, NULL, NULL, NULL, '[\'./images/hand4-1.png@480x480.jpg\',\'./images/hand4-2.png@480x480.jpg\',\'./images/hand4-3.png@480x480.jpg\']', 'commend', '1999.00', NULL);
INSERT INTO `products` VALUES (30, '魅族 POP2 真无线蓝牙耳机', NULL, NULL, NULL, NULL, '[\'./imges/muc2-1.png@480x480.jpg\']', 'commend', '399.00', NULL);
INSERT INTO `products` VALUES (31, '魅族中国红 Type-C 金属编织线', NULL, NULL, NULL, NULL, '[\'./imges/par5-1.png@480x480.jpg\']', 'commend', '39.00', NULL);
INSERT INTO `products` VALUES (32, '魅族移动电源3', NULL, NULL, NULL, NULL, '[\'./imges/handlb6.png@480x480.jpg\']', 'commend', '79.00', NULL);
INSERT INTO `products` VALUES (33, '魅族 EP3C 耳机', NULL, NULL, NULL, NULL, '[\'./imges/handlb7.png@480x480.jpg\']', 'commend', '129.00', NULL);
INSERT INTO `products` VALUES (34, '魅族 HIFI 解码耳放', NULL, NULL, NULL, NULL, '[\'./imges/handlb8.png@480x480.jpg\']', 'commend', '169.00', NULL);
INSERT INTO `products` VALUES (35, '魅族 HD60 降噪耳机', NULL, '【开学聚惠限时999元】索尼主动降噪芯片 | 40mm镀铍振膜 | 触控操作 | USB - C 快充 | 轻奢品质', '[\'雾银黑\']', NULL, '[\'./imges/muc1-1.png@480x480.jpg\']', 'music', '1099.00', '[\'./imges/huanyezi.png\']');
INSERT INTO `products` VALUES (36, '魅族 POP2 真无线蓝牙耳机', NULL, '蓝牙5.0 | 单次8H续航 | 石墨烯振膜 | 双耳通话 | 轻触操作 | 轻盈舒适', '[\'亮白\']', NULL, '[\'./imges/muc2-1.png@480x480.jpg\']', 'music', '399.00', '[\'./imges/bai.png\']');
INSERT INTO `products` VALUES (37, '魅族 HIFI 解码耳放', NULL, '【开学聚惠限时119元】高性能DAC芯片 | 纯净HiFi音质 | 600Ω高阻抗推力 | Type-C 转接线 | 音乐发烧友必备', '[\'黑色\']', NULL, '[\'./imges/muc3-1.png@480x480.jpg\']', 'music', '169.00', '[\'./imges/huanhei.png\']');
INSERT INTO `products` VALUES (38, '魅族 EP3C 耳机', NULL, '【开学聚惠限时99元】Hi-Res 认证高解析音质 | Type-C数字接口 | 高保真生物纤维振膜', '[\'白色\']', NULL, '[\'./imges/muc4-1.png@480x480.jpg\']', 'music', '129.00', '[\'./imges/bai.png\']');
INSERT INTO `products` VALUES (39, '魅族 EP63NC 无线降噪耳机', NULL, '【开学聚惠限时299元】AMS 芯片智能降噪 | Qualcomm apt-X™ 高清音质 | 蓝牙一拖二连接 | 11小时超长续航 | 快充15分钟畅听3小时', '[\'玄武灰\']', NULL, '[\'./imges/muc5-1.png@480x480.jpg\']', 'music', '399.00', '[\'./imges/jianhei.png\']');
INSERT INTO `products` VALUES (40, '魅族 HD60 头戴式蓝牙耳机', NULL, '【开学聚惠限时429元】40mm生物振膜  | Type-C充电 | 触控操作 | 蓝牙5.0 | 轻奢品质', '[\'热带橙色\',\'雾银黑色\']', NULL, '[\'./imges/muc6-1.png@480x480.jpg\',\'./imges/muc6-2.png@480x480.jpg\']', 'music', '499.00', '[\'./imges/riguangcheng.png\',\'./imges/huanyezi.png\']');
INSERT INTO `products` VALUES (41, '魅族 EP21耳机', NULL, '三键一体式线控 | 3.5mm接口 ', '[\'白色\']', NULL, '[\'./imges/muc7-1.png@480x480.jpg\']', 'music', '89.00', '[\'./imges/bai.png\']');
INSERT INTO `products` VALUES (42, '魅族 HALO 激光蓝牙耳机', NULL, '炫酷夜跑神器 随性张扬', '[\'蓝色\',\'红色\']', NULL, '[\'./imges/muc8-1.png@480x480.jpg\',\'./imges/muc8-2.png@480x480.jpg\']', 'music', '499.00', '[\'./imges/yatelan.png\',\'./imges/yanhong.png\']');
INSERT INTO `products` VALUES (43, '魅族 EP52 Lite 蓝牙耳机', NULL, '【开学聚惠限时109元】轻巧亲肤 | 生物纤维振膜 | 8小时续航 | IPX5级防水', '[\'月白\',\'深蓝\',\'云灰\']', NULL, '[\'./imges/muc9-1.png@480x480.jpg\',\'./imges/muc9-2.png@480x480.jpg\',\'./imges/muc9-3.png@480x480.jpg\']', 'music', '129.00', '[\'./imges/bai.png\',\'./imges/xingyaolan.png\',\'./imges/jianhei.png\']');
INSERT INTO `products` VALUES (44, '魅族 HiFi 解码耳放 PRO', NULL, '性能DAC芯片 | 超强二级运放 | Hi-Res 认证高解析音质 | 高阻抗推力 | Type-C转接线', '[\'黑色\']', NULL, '[\'./imges/muc10-1.png@480x480.jpg\']', 'music', '269.00', '[\'./imges/huanhei.png\']');
INSERT INTO `products` VALUES (45, '魅族 LIVE 四单元动铁耳机', NULL, '【开学聚惠限时999元】Knowles四动铁 双通道导音系统 现场级音乐表现', '[\'灰色\']', NULL, '[\'./imges/muc11-1.png@480x480.jpg\']', 'music', '1099.00', '[\'./imges/yin.png\']');
INSERT INTO `products` VALUES (46, 'MEIZU UR 高端定制耳机  预约', NULL, '【预约专用】私人定制，为你而声', '[\'定制\']', NULL, '[\'./imges/muc12-1.png@480x480.jpg\']', 'music', '200.00', '[]');
INSERT INTO `products` VALUES (47, '魅族 EP2X 耳机', NULL, '一体式线控 | 3.5mm接口 | 流线设计', '[\'珍珠黑\',\'皓月白\']', NULL, '[\'./imges/muc13-1.png@480x480.jpg\',\'./imges/muc13-2.png@480x480.jpg\']', 'music', '69.00', '[\'./imges/huanhei.png\',\'./imges/bai.png\']');
INSERT INTO `products` VALUES (48, '【老用户专享】魅族 HD60 头戴式蓝牙耳机', NULL, '【1元换购价值69元数据线】40mm生物振膜  | Type-C充电 | 触控操作 | 蓝牙5.0 | 轻奢品质', '[\'热带橙色\',\'雾银黑色\']', NULL, '[\'./imges/muc14-1.png@480x480.jpg\',\'./imges/muc14-2.png@480x480.jpg\']', 'music', '429.00', '[\'./imges/riguangcheng.png\',\'./imges/huanyezi.png\']');
INSERT INTO `products` VALUES (49, '【老用户专享】-魅族 HD60 降噪耳机', NULL, '【129元换购价值299元电动牙刷】索尼主动降噪芯片 | 40mm镀铍振膜 | 触控操作 | USB - C 快充 | 轻奢品质', '[\'雾银黑\']', NULL, '[\'./imges/muc15-1.png@480x480.jpg\']', 'music', '999.00', '[\'./imges/huanyezi.png\']');
INSERT INTO `products` VALUES (50, '【老用户专享】-魅族 HIFI 解码耳放', NULL, '【1元换购价值39元数据线】高性能DAC芯片 | 纯净HiFi音质 | 600Ω高阻抗推力 | Type-C 转接线 | 音乐发烧友必备', '[\'黑色\']', NULL, '[\'./imges/muc16-1.png@480x480.jpg\']', 'music', '119.00', '[\'./imges/wujin.png\']');
INSERT INTO `products` VALUES (51, '【开学聚惠】魅族 LIVE 四单元动铁耳机', NULL, 'Knowles四动铁 双通道导音系统 现场级音乐表现', '[\'银色\']', NULL, '[\'./imges/muc17-1.png@480x480.jpg\']', 'music', '1299.00', '[\'./imges/yin.png\']');
INSERT INTO `products` VALUES (52, '【开学聚惠】-魅族 EP52 Lite 蓝牙耳机', NULL, '轻巧亲肤 | 生物纤维振膜 | 8小时续航 | IPX5级防水', '[\'月白\',\'深蓝\',\'云灰\']', NULL, '[\'./imges/muc18-1.png@480x480.jpg\',\'./imges/muc18-2.png@480x480.jpg\',\'./imges/muc18-3.png@480x480.jpg\']', 'music', '109.00', '[\'./imges/bai.png\',\'./imges/xingyaolan.png\',\'./imges/jianhei.png\']');
INSERT INTO `products` VALUES (53, '【开学聚惠】魅族 HD60 头戴式蓝牙耳机', NULL, '【限时12期免息】40mm生物振膜  | Type-C充电 | 触控操作 | 蓝牙5.0 | 轻奢品质', '[\'热带橙色\',\'雾银黑色\']', NULL, '[\'./imges/muc19-1.png@480x480.jpg\',\'./imges/muc19-2.png@480x480.jpg\']', 'music', '429.00', '[\'./imges/riguangcheng.png\',\'./imges/huanyezi.png\']');
INSERT INTO `products` VALUES (54, '【开学聚惠】-魅族 EP3C 耳机', NULL, 'Hi-Res 认证高解析音质 | Type-C数字接口 | 高保真生物纤维振膜', '[\'白色\']', NULL, '[\'./imges/muc20-1.png@480x480.jpg\']', 'music', '99.00', '[\'./imges/bai.png\']');
INSERT INTO `products` VALUES (55, '【开学聚惠】-魅族 HIFI 解码耳放', NULL, '高性能DAC芯片 | 纯净HiFi音质 | 600Ω高阻抗推力 | Type-C 转接线 | 音乐发烧友必备', '[\'黑色\']', NULL, '[\'./imges/muc21-1.png@480x480.jpg\']', 'music', '119.00', '[\'./imges/wujin.png\']');
INSERT INTO `products` VALUES (56, '【开学聚惠】魅族 EP63NC 无线降噪耳机', NULL, 'AMS 芯片智能降噪 | Qualcomm apt-X™ 高清音质 | 蓝牙一拖二连接 | 11小时超长续航 | 快充15分钟畅听3小时', '[\'玄武灰\']', NULL, '[\'./imges/muc22-1.png@480x480.jpg\']', 'music', '299.00', '[\'./imges/jianhei.png\']');
INSERT INTO `products` VALUES (57, '【开学聚惠】-魅族 HD60 降噪耳机', NULL, '【限时12期免息】索尼主动降噪芯片 | 40mm镀铍振膜 | 触控操作 | USB - C 快充 | 轻奢品质', '[\'雾银黑\']', NULL, '[\'./imges/muc23-1.png@480x480.jpg\']', 'music', '999.00', '[\'./imges/huanyezi.png\']');
INSERT INTO `products` VALUES (58, '魅族 POP2 真无线蓝牙耳机', NULL, '蓝牙5.0 | 单次8H续航 | 石墨烯振膜 | 双耳通话 | 轻触操作 | 轻盈舒适', '[\'皓月白\']', NULL, '[\'./imges/muc24-1.png@480x480.jpg\']', 'music', '399.00', '[\'./imges/bai.png\']');
INSERT INTO `products` VALUES (59, 'POP 真无线蓝牙耳机', NULL, '双无线 零设限', '[\'皓月白\']', NULL, '[\'./imges/muc25-1.png@480x480.jpg\']', 'music', '499.00', '[\'./imges/bai.png\']');
INSERT INTO `products` VALUES (60, '魅族蓝牙音频接收器', NULL, '独立音频芯片 | 一键控制 | 6小时续航 | 轻巧设计', '[\'钢琴黑\']', NULL, '[\'./imges/muc26-1.png@480x480.jpg\']', 'music', '89.00', '[\'./imges/bai.png\']');
INSERT INTO `products` VALUES (61, '魅族无线超充板', NULL, '【8.31 APP限时抢购149元 | 前往魅族商城APP抢购专区选购】魅族 17 Pro 适用 | 27W 无线快充 | 主动散热 | 智能静音 | 玉润设计', NULL, NULL, '[\'./imges/par1-1.png@480x480.jpg\']', 'parts', '169.00', '[\'./imges/bai.png\']');
INSERT INTO `products` VALUES (62, 'Pandaer 「17」系列 手机壳', NULL, '【APP积分兑换10元优惠券】魅族 17 / 魅族 17 Pro 适用 | Pandaer 家族 | 潮趣个性 | 官方适配', NULL, NULL, '[\'./imges/par2-1.png@480x480.jpg\',\'./imges/par2-2.png@480x480.jpg\',\'./imges/par2-3.png@480x480.jpg\',\'./imges/par2-4.png@480x480.jpg\']', 'parts', '49.00', '[\'./imges/par2-1.png@480x480.jpg\',\'./imges/par2-2.png@480x480.jpg\',\'./imges/par2-3.png@480x480.jpg\',\'./imges/par2-4.png@480x480.jpg\']');
INSERT INTO `products` VALUES (63, '魅族 17 系列 液态硅胶壳', NULL, '魅族 17 / 魅族 17 Pro 适用 | 官方适配 | 魅族手感 | 柔韧保护', NULL, NULL, '[\'./imges/par3-1.png@480x480.jpg\',\'./imges/par3-2.png@480x480.jpg\']', 'parts', '89.00', '[\'./imges/bai.png\',\'./imges/wujin.png\']');
INSERT INTO `products` VALUES (64, '魅族 Type-C 数据线', NULL, '5A 大电流 | Type-C 接口 | 更快更方便', NULL, NULL, '[\'./imges/par4-1.png@480x480.jpg\']', 'parts', '49.00', '[\'./imges/bai.png\']');
INSERT INTO `products` VALUES (65, '魅族 Type-C 游戏专用线', NULL, 'Type-C 接口 | 5A大电流 | 弯头专为游戏设计 | 耐磨编织材料', NULL, NULL, '[\'./imges/par5-1.png@480x480.jpg\']', 'parts', '49.00', '[\'./imges/yanhong.png\']');
INSERT INTO `products` VALUES (66, '魅族中国红 Type-C 金属编织线', NULL, 'Type-C 接口 | 3A大电流 | 耐磨编织材料', NULL, NULL, '[\'./imges/par6-1.png@480x480.jpg\']', 'parts', '39.00', '[\'./imges/yanhong.png\']');
INSERT INTO `products` VALUES (67, '魅族移动电源3', NULL, '10000mAh | 18W双向快充 | 12重安全防护', NULL, NULL, '[\'./imges/par7-1.png@480x480.jpg\',\'./imges/par7-2.png@480x480.jpg\']', 'parts', '79.00', '[\'./imges/wujin.png\',\'./imges/bai.png\']');
INSERT INTO `products` VALUES (68, '快充电源适配器（UP0830S）', NULL, '快速充电 安全无忧', NULL, NULL, '[\'./imges/par8-1.png@480x480.jpg\']', 'parts', '89.00', '[\'./imges/bai.png\']');
INSERT INTO `products` VALUES (69, '魅族无线充电器', NULL, '10W快速充电 无线即放即充', NULL, NULL, '[\'./imges/par9-1.png@480x480.jpg\']', 'parts', '99.00', '[\'./imges/bai.png\']');
INSERT INTO `products` VALUES (70, '魅族 Micro USB 数据线', NULL, '广泛兼容各大品牌Micro USB接口手机 | 经久耐用 ', NULL, NULL, '[\'./imges/par10-1.png@480x480.jpg\']', 'parts', '29.00', '[\'./imges/bai.png\']');
INSERT INTO `products` VALUES (71, '【老用户专享】魅族无线超充板', NULL, '【1元换购价值39元数据线】魅族 17 Pro 适用 | 27W 无线快充 | 主动散热 | 智能静音 | 玉润设计', NULL, NULL, '[\'./imges/par11-1.png@480x480.jpg\']', 'parts', '169.00', '[\'./imges/bai.png\']');
INSERT INTO `products` VALUES (72, '【老用户专享】-魅族超充 GaN 三口充电器', NULL, '【1元换购价值39元数据线】65W MAX功率输出 | GaN 芯片 | 安全小巧 | 三口输出', NULL, NULL, '[\'./imges/par12-1.png@480x480.jpg\']', 'parts', '199.00', '[\'./imges/bai.png\']');
INSERT INTO `products` VALUES (73, 'Pandaer 「17」夏日系列 壳膜套装', NULL, '【咨询客服 | 老用户尊享价49元】魅族 17 / 魅族 17 Pro 适用 | 手机壳 + PET 高透膜', NULL, NULL, '[\'./imges/par13-1.png@480x480.jpg\',\'./imges/par13-2.png@480x480.jpg\',\'./imges/par13-3.png@480x480.jpg\',\'./imges/par13-4.png@480x480.jpg\']', 'parts', '69.00', '[\'./imges/par13-1.png@480x480.jpg\',\'./imges/par13-2.png@480x480.jpg\',\'./imges/par13-3.png@480x480.jpg\',\'./imges/par13-4.png@480x480.jpg\']');
INSERT INTO `products` VALUES (74, '魅族双 USB-C 快充线', NULL, '双 USB-C 接口 | 5A 大电流 | 耐磨编织材料 | E-Marker 芯片', NULL, NULL, '[\'./imges/par14-1.png@480x480.jpg\']', 'parts', '49.00', '[\'./imges/yanhong.png\']');
INSERT INTO `products` VALUES (75, 'Lifeme PD 快充线', NULL, 'USB-C 转 Lightning | MFi 认证 | 3A 大电流 | PD 快充 | 兼容大部分苹果设备', NULL, NULL, '[\'./imges/par15-1.png@480x480.jpg\']', 'parts', '69.00', '[\'./imges/bai.png\']');
INSERT INTO `products` VALUES (76, '魅族超充 USB-C 移动电源', NULL, '【新品上市 | 现货发售】USB-C 双向快充 | 22.5W 大功率 | 数字电量显示 | 多快充协议支持', NULL, NULL, '[\'./imges/par16-1.png@480x480.jpg\']', 'parts', '169.00', '[\'./imges/bai.png\']');
INSERT INTO `products` VALUES (77, '魅族超充 GaN 三口充电器', NULL, '【8.31 开学聚惠限时领30元券】65W MAX功率输出 | GaN 芯片 | 安全小巧 | 三口输出', NULL, NULL, '[\'./imges/par17-1.png@480x480.jpg\']', 'parts', '199.00', '[\'./imges/bai.png\']');
INSERT INTO `products` VALUES (78, '【秒杀】Pandaer「17」夏日系列壳膜套装', NULL, '魅族 17 / 魅族 17 Pro 适用 | 手机壳 + PET 高透膜', NULL, NULL, '[\'./imges/par18-1.png@480x480.jpg\']', 'parts', '34.5.00', '[\'./imges/par18-1.png@480x480.jpg\']');
INSERT INTO `products` VALUES (79, '【砍价】-Lifeme PD 快充线', NULL, 'USB-C 转 Lightning | MFi 认证 | 3A 大电流 | PD 快充 | 兼容大部分苹果设备', NULL, NULL, '[\'./imges/par19-1.png@480x480.jpg\']', 'parts', '69.00', '[\'./imges/bai.png\']');
INSERT INTO `products` VALUES (80, '魅族 V8 高配版高透保护膜', NULL, '高透光率 助双眼捕捉每一颗像素的色彩', NULL, NULL, '[\'./imges/par20-1.png@480x480.jpg\']', 'parts', '19.00', '[\'./imges/bai.png\']');
INSERT INTO `products` VALUES (81, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL);
INSERT INTO `products` VALUES (82, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL);
INSERT INTO `products` VALUES (83, NULL, NULL, NULL, NULL, NULL, '', '', NULL, NULL);
INSERT INTO `products` VALUES (84, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL);
INSERT INTO `products` VALUES (85, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL);
INSERT INTO `products` VALUES (86, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL);
INSERT INTO `products` VALUES (87, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL);

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

SET FOREIGN_KEY_CHECKS = 1;
