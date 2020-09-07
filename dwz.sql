/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1_3306
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : 127.0.0.1:3306
 Source Schema         : url_dwz

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 06/09/2020 22:47:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dwz
-- ----------------------------
DROP TABLE IF EXISTS `dwz`;
CREATE TABLE `dwz`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `crc32` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `md5` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `type` enum('url') CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT 'url',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `expiration_time` bigint(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `crc32_expiration`(`crc32`, `expiration_time`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dwz
-- ----------------------------
INSERT INTO `dwz` VALUES (6, '4bo3W3', '9026a0130f98100ead8adb2f1f553014', 'url', 'https://blog.thinkphp.cn/1785805', 1599099861);
INSERT INTO `dwz` VALUES (7, 'eJE2M2', 'a87ff679a2f3e71d9181a67b7542122c', 'url', '4', 1599100964);
INSERT INTO `dwz` VALUES (8, 'Zo0Nq1', 'd81f9c1be2e08964bf9f24b15f0e4900', 'url', '345', 1599101074);
INSERT INTO `dwz` VALUES (9, 'RbDtQ2', '9fe8593a8a330607d76796b35c64c600', 'url', '678', 1599101200);
INSERT INTO `dwz` VALUES (10, 'eFxBX1', 'ebb33f3262ea6114cb2f55e33685d25e', 'url', '78978', 1599101235);
INSERT INTO `dwz` VALUES (11, '6a5SK1', 'a7ea4a1d6cbcabd43c2e7b872df504d4', 'url', 'vbnvbn', 1599101240);
INSERT INTO `dwz` VALUES (12, 'fAWm64', '9955f53c0e3482e312dab1349f8533a1', 'url', 'vbnvbnggg', 1599101242);
INSERT INTO `dwz` VALUES (13, 'JugR1', '1ac0a69d3f8a132230ddc1ef011e4a85', 'url', 'vbnvbngggddd', 1599101243);
INSERT INTO `dwz` VALUES (14, 'NtQfL3', '5c330b6e1f2bac2d2d559e035c680f2e', 'url', 'vbnvbngggddddffffffffffffffffffffff', 1599101245);
INSERT INTO `dwz` VALUES (15, 'K5iyI2', 'f2e0e16f432d3797e2d5b9c615b1720f', 'url', 'vbnvbngggddddffffffffffffffffffffffgggggggggggggggg', 1599101247);
INSERT INTO `dwz` VALUES (16, 'K5ZrX4', '93f63e9d1619bae75c663a99a6267f1f', 'url', 'vbnvbngggddddffffffffffffffffffffffgggggggggggggggggggggggggggggggggggg', 1599101249);
INSERT INTO `dwz` VALUES (17, 'ZI36u', '32260f4caa7160dbc38a6c964207cf3b', 'url', 'vbnvbngggddddffffffffffffffffffffffggggggggggggggggggffffffffffffffffffffgggggggggggggggggg', 1599101251);
INSERT INTO `dwz` VALUES (18, 'cmNmV', 'e3429c3efc7a44d2f59eee1a541b0597', 'url', 'vbnvbngggddddffffffffffffffffffffffggggggggggggggggggffffffffddfgdfgffffffffffffgggggggggggggggggg', 1599101253);
INSERT INTO `dwz` VALUES (19, 'nadaQ2', '8eacf555f081e7fbda664fb5f3191f61', 'url', 'vbnvbngggddddffffffffffffffffffffffggggggggggggggggggffffffffdfgdfgddfgdfgffffffffffffgggggggggggggggggg', 1599101254);
INSERT INTO `dwz` VALUES (20, '29l2C', 'dfef1f49c06c4dadd6b9a183a63fb980', 'url', 'vbnvbngggddddffffffffffffffffffffffggggggggggggggggggffffffffdfgfdgdfgdfgddfgdfgffffffffffffgggggggggggggggggg', 1599101255);
INSERT INTO `dwz` VALUES (21, 'A6SLG3', 'f408a6d2a61db2495af6b4161864b2d3', 'url', 'vbnvbngggddddffffffffffffffffffffffggggggggggggggggggffffffffdfgdfgdfgfdgdfgdfgddfgdfgffffffffffffgggggggggggggggggg', 1599101256);
INSERT INTO `dwz` VALUES (22, 'BKoRw2', 'b98e3418cd370de523dcd59ba23fa672', 'url', 'vbnvbngggddddffffffffffffffffffffffggggggggggggggggggffdfgfgffffffdfgdfgdfgfdgdfgdfgddfgdfgffffffffffffgggggggggggggggggg', 1599101257);
INSERT INTO `dwz` VALUES (23, 'wcZ4E', '0838873eca75491391dcb9f21dfa526f', 'url', 'vbnvbngggddddffffffffffffffffffffffggggggggggggggggggffdfgfgffdgdfgfffffdfgdfgdfgfdgdfgdfgddfgdfgffffffffffffgggggggggggggggggg', 1599101258);
INSERT INTO `dwz` VALUES (24, 'KOBEK2', '0c153fabae7c79aed891e18bee25d472', 'url', 'vbnvbngggddddffffffffffffffffffffffggggggggggggggggggffdfgfgffddfgdfgdfgfffffdfgdfgdfgfdgdfgdfgddfgdfgffffffffffffgggggggggggggggggg', 1599101260);
INSERT INTO `dwz` VALUES (25, '1aGbY2', 'e83a58f72e6b6b8efdb321ac9f4ae5e9', 'url', 'vbnvbngggddddffffffffffffffffffffffggggggggggggggggggffdfgfgffdfgfdgddfgdfgdfgfffffdfgdfgdfgfdgdfgdfgddfgdfgffffffffffffgggggggggggggggggg', 1599101261);
INSERT INTO `dwz` VALUES (26, '8crq82', '4f469b04d5f49fd31f681fc1647a52bc', 'url', 'vbnvbngggddddffffffffffffffffffffffggggggggggggggggggffdfgfgffdfdfgdfggfdgddfgdfgdfgfffffdfgdfgdfgfdgdfgdfgddfgdfgffffffffffffgggggggggggggggggg', 1599101262);
INSERT INTO `dwz` VALUES (27, 'en35k1', '77bce0e525e00a47f664f9c8bb25d59e', 'url', 'vbnvbngggddddffffffffffffffffffffffggggggggggggggggggffdfgfgffdfdfgfddfgdfggfdgddfgdfgdfgfffffdfgdfgdfgfdgdfgdfgddfgdfgffffffffffffgggggggggggggggggg', 1599101263);
INSERT INTO `dwz` VALUES (28, 'NGqm7', '57a05b482376d66021aca066c9a3750c', 'url', 'vbnvbngggddddffffffffffffffffffffffggggggggggggggggggffdfgfgffdfdfdfgfddfgdfggfdgddfgdfgdfgfffffdfgdfgdfgfdgdfgdfgddfgdfgffffffffffffgggggggggggggggggg', 1599101264);
INSERT INTO `dwz` VALUES (29, 'YxlLs', '8113b58393a396d87decbf8325129742', 'url', 'vbnvbngggddddffffffffffffffffffffffggggggggggggggggggffdfgfgfffdfdfdfgfddfgdfggfdgddfgdfgdfgfffffdfgdfgdfgfdgdfgdfgddfgdfgffffffffffffgggggggggggggggggg', 1599101265);
INSERT INTO `dwz` VALUES (30, 'NeaWE', '8464c39f9b3fa2d6656d06d5f91a9652', 'url', 'vbnvbngggddddffffffffffffffffffffffggggggggggggggggggffdfgfgfffffdfdfdfgfddfgdfggfdgddfgdfgdfgfffffdfgdfgdfgfdgdfgdfgddfgdfgffffffffffffgggggggggggggggggg', 1599101267);
INSERT INTO `dwz` VALUES (31, 'f1hRo3', 'da404004f9748200947727efe905bccd', 'url', 'vbnvbngggddddffffffffffffffffffffffggggggggggggggggggffdfgffffgfffffdfdfdfgfddfgdfggfdgddfgdfgdfgfffffdfgdfgdfgfdgdfgdfgddfgdfgffffffffffffgggggggggggggggggg', 1599101268);
INSERT INTO `dwz` VALUES (32, 'LMStt1', 'eacf2016b9c7ff5b1c240ea5a7f12094', 'url', 'vbnvbngggddddffffffffffffffffffffffggggggggggggggggggffdfgfffffffgfffffdfdfdfgfddfgdfggfdgddfgdfgdfgfffffdfgdfgdfgfdgdfgdfgddfgdfgffffffffffffgggggggggggggggggg', 1599101269);
INSERT INTO `dwz` VALUES (33, 'n0Oqe3', '01df239a685271fc80aa7e8155e1e9be', 'url', 'vbnvbngggddddffffffffffffffffffffffggggggggggggggggggffdfgfdddffffffgfffffdfdfdfgfddfgdfggfdgddfgdfgdfgfffffdfgdfgdfgfdgdfgdfgddfgdfgffffffffffffgggggggggggggggggg', 1599101270);
INSERT INTO `dwz` VALUES (34, 'cpzrL4', '219a7515841daec1137a1d7022c34ce7', 'url', 'https://127.0.0.1/', 1599101283);
INSERT INTO `dwz` VALUES (35, 'vdswb', '7cc532d783a7461f227a5da8ea80bfe1', 'url', '2343', 1599101397);
INSERT INTO `dwz` VALUES (36, 'USvcR1', '99c5e07b4d5de9d18c350cdf64c5aa3d', 'url', '567', 1599102174);
INSERT INTO `dwz` VALUES (37, 'ZNNBp3', '68053af2923e00204c3ca7c6a3150cf7', 'url', '789', 1599102236);
INSERT INTO `dwz` VALUES (38, 'eb5wI', '8277e0910d750195b448797616e091ad', 'url', 'd', 1599102293);
INSERT INTO `dwz` VALUES (39, 'uRxTU3', '2f824581301742f19ccd7ecca7588f36', 'url', 'https://www.runoob.com/cssref/css3-pr-transform.html', 1599620033);
INSERT INTO `dwz` VALUES (40, 'USvcR1', '99c5e07b4d5de9d18c350cdf64c5aa3d', 'url', '567', 1599621951);
INSERT INTO `dwz` VALUES (41, 'HvFgu', '49f0bad299687c62334182178bfd75d8', 'url', 'sad', 1599622439);
INSERT INTO `dwz` VALUES (42, 'yXKyZ', 'a8f5f167f44f4964e6c998dee827110c', 'url', 'asdasd', 1599622442);
INSERT INTO `dwz` VALUES (43, 'qpmk14', 'e4da3b7fbbce2345d7772b0674a318d5', 'url', '5', 1599662962);
INSERT INTO `dwz` VALUES (44, 'UB30q3', 'a3aca2964e72000eea4c56cb341002a4', 'url', 'hhh', 1599663224);
INSERT INTO `dwz` VALUES (45, 'ywDSe4', '10a279e97f78cca7271471a29acf1af6', 'url', 'yggg', 1599663320);
INSERT INTO `dwz` VALUES (46, 'Rzwhq2', '202cb962ac59075b964b07152d234b70', 'url', '123', 1599663356);
INSERT INTO `dwz` VALUES (47, 'ZNNBp3', '68053af2923e00204c3ca7c6a3150cf7', 'url', '789', 1599663390);
INSERT INTO `dwz` VALUES (48, 'K9ORl3', 'd74b7956dd96683d8dd4f35ce86ce32f', 'url', '咀嚼肌', 1599663405);
INSERT INTO `dwz` VALUES (49, 'w3J651', 'dbc4d84bfcfe2284ba11beffb853a8c4', 'url', '4444', 1599399688);
INSERT INTO `dwz` VALUES (50, 'ReTUg1', '1f6419b1cbe79c71410cb320fc094775', 'url', '4545', 1599702084);
INSERT INTO `dwz` VALUES (51, '8wSxw', '8c33da8906a3bd81f9a2c00becc09883', 'url', '567567', 1599702192);
INSERT INTO `dwz` VALUES (52, 'mvAOl2', '161fd33f67dbfd29138ce3f165d5e5dd', 'url', '8908', 1599702235);
INSERT INTO `dwz` VALUES (53, 'ry1B84', 'b4238aece7397c6651a5193c3baf4055', 'url', 'ghh', 1599702562);
INSERT INTO `dwz` VALUES (54, 'Zo0Nq1', 'd81f9c1be2e08964bf9f24b15f0e4900', 'url', '345', 1599702608);

SET FOREIGN_KEY_CHECKS = 1;
