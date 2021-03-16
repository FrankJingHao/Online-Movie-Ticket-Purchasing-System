/*
 Navicat Premium Data Transfer

 Source Server         : Local instance MySQL
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : db_boot_movie

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 31/12/2020 18:21:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;
USE db_boot_movie;
-- ----------------------------
-- Table structure for movie_account
-- ----------------------------
DROP TABLE IF EXISTS `movie_account`;
CREATE TABLE `movie_account` (
                                 `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                 `create_time` datetime NOT NULL,
                                 `update_time` datetime NOT NULL,
                                 `balance` decimal(19,2) NOT NULL,
                                 `head_pic` varchar(128) NOT NULL,
                                 `mobile` varchar(11) NOT NULL,
                                 `nickname` varchar(32) DEFAULT NULL,
                                 `password` varchar(32) NOT NULL,
                                 `sex` int(11) NOT NULL,
                                 `status` int(11) NOT NULL,
                                 PRIMARY KEY (`id`),
                                 UNIQUE KEY `UK_6opggmt4oncjopyy57ca38wi0` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movie_account
-- ----------------------------
BEGIN;
INSERT INTO `movie_account` VALUES (1, '2020-10-03 18:19:01', '2020-12-19 13:17:32', 0.00, 'default-head-pic.jpg', '13656564545', NULL, '54545454545', 1, 1);
INSERT INTO `movie_account` VALUES (2, '2020-10-03 18:50:58', '2020-10-03 18:50:58', 0.00, 'default-head-pic.jpg', '13918666565', NULL, '3333333', 1, 1);
INSERT INTO `movie_account` VALUES (3, '2020-10-04 11:55:07', '2020-12-30 12:39:12', 825.66, '20201229/1609216722363.png', '13916493018', '吕竟豪', '123456', 1, 1);
INSERT INTO `movie_account` VALUES (4, '2020-10-08 15:59:21', '2020-10-08 16:06:30', 408.00, 'default-head-pic.jpg', '13918651215', NULL, '111111', 1, 1);
COMMIT;

-- ----------------------------
-- Table structure for movie_area
-- ----------------------------
DROP TABLE IF EXISTS `movie_area`;
CREATE TABLE `movie_area` (
                              `id` bigint(20) NOT NULL AUTO_INCREMENT,
                              `create_time` datetime NOT NULL,
                              `update_time` datetime NOT NULL,
                              `city_id` bigint(20) DEFAULT NULL,
                              `name` varchar(32) NOT NULL,
                              `province_id` bigint(20) DEFAULT NULL,
                              `is_show` bit(1) DEFAULT NULL,
                              PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movie_area
-- ----------------------------
BEGIN;
INSERT INTO `movie_area` VALUES (1, '2020-09-06 16:10:08', '2020-09-19 13:10:50', NULL, '上海', NULL, b'1');
INSERT INTO `movie_area` VALUES (2, '2020-09-06 16:15:55', '2020-09-06 16:15:55', NULL, '北京', NULL, b'1');
INSERT INTO `movie_area` VALUES (3, '2020-09-06 16:16:08', '2020-09-19 13:12:00', NULL, '江苏', NULL, b'1');
INSERT INTO `movie_area` VALUES (5, '2020-09-06 16:18:10', '2020-09-19 13:11:11', NULL, '上海市', 1, b'1');
INSERT INTO `movie_area` VALUES (6, '2020-09-06 16:28:24', '2020-09-06 18:04:04', 5, '浦东新区', 1, b'1');
INSERT INTO `movie_area` VALUES (7, '2020-09-06 16:29:22', '2020-09-06 17:11:43', NULL, '北京市', 2, b'1');
INSERT INTO `movie_area` VALUES (8, '2020-09-06 16:29:32', '2020-09-06 16:29:32', NULL, '南京', 3, b'1');
INSERT INTO `movie_area` VALUES (11, '2020-09-06 17:20:42', '2020-09-06 17:21:52', 5, '徐汇区', 1, b'1');
INSERT INTO `movie_area` VALUES (12, '2020-09-06 17:22:30', '2020-09-06 17:22:30', 5, '黄浦区', 1, b'1');
INSERT INTO `movie_area` VALUES (13, '2020-09-06 17:22:43', '2020-09-06 17:22:43', 5, '长宁区', 1, b'1');
INSERT INTO `movie_area` VALUES (14, '2020-09-06 17:22:54', '2020-09-06 17:22:54', 5, '静安区', 1, b'1');
INSERT INTO `movie_area` VALUES (15, '2020-09-06 17:23:08', '2020-09-06 17:23:08', 5, '普陀区', 1, b'1');
INSERT INTO `movie_area` VALUES (16, '2020-09-06 17:23:18', '2020-09-06 17:23:18', 5, '虹口区', 1, b'1');
INSERT INTO `movie_area` VALUES (17, '2020-09-06 17:23:31', '2020-09-06 17:23:31', 5, '杨浦区', 1, b'1');
INSERT INTO `movie_area` VALUES (18, '2020-09-06 17:23:44', '2020-09-06 17:23:44', 5, '闵行区', 1, b'1');
INSERT INTO `movie_area` VALUES (19, '2020-09-06 17:23:57', '2020-09-06 17:23:57', 5, '宝山区', 1, b'1');
INSERT INTO `movie_area` VALUES (20, '2020-09-06 17:24:09', '2020-09-06 17:24:09', 5, '嘉定区', 1, b'1');
INSERT INTO `movie_area` VALUES (21, '2020-09-06 17:24:19', '2020-09-06 17:24:19', 5, '金山区', 1, b'1');
INSERT INTO `movie_area` VALUES (22, '2020-09-06 17:24:32', '2020-09-06 17:24:32', 5, '松江区', 1, b'1');
INSERT INTO `movie_area` VALUES (23, '2020-09-06 17:24:46', '2020-09-06 17:24:46', 5, '青浦区', 1, b'1');
INSERT INTO `movie_area` VALUES (24, '2020-09-06 17:25:01', '2020-09-06 17:25:01', 5, '奉贤区', 1, b'1');
INSERT INTO `movie_area` VALUES (25, '2020-09-06 17:25:12', '2020-09-06 17:25:12', 5, '崇明区', 1, b'1');
INSERT INTO `movie_area` VALUES (26, '2020-09-06 17:25:48', '2020-09-06 17:25:48', 7, '朝阳区', 2, b'1');
INSERT INTO `movie_area` VALUES (27, '2020-09-06 18:00:57', '2020-09-06 18:00:57', 7, '宣武区', 2, b'1');
INSERT INTO `movie_area` VALUES (28, '2020-09-06 18:01:15', '2020-09-06 18:01:15', NULL, '苏州', 3, b'1');
INSERT INTO `movie_area` VALUES (29, '2020-09-06 18:01:32', '2020-09-19 13:11:40', NULL, '无锡', 3, b'1');
INSERT INTO `movie_area` VALUES (30, '2020-09-06 18:01:47', '2020-09-06 18:01:47', 8, '鼓楼区', 3, b'1');
INSERT INTO `movie_area` VALUES (31, '2020-09-19 13:00:54', '2020-09-19 13:00:54', NULL, '徐州', 3, b'1');
INSERT INTO `movie_area` VALUES (32, '2020-09-19 13:01:10', '2020-09-19 13:01:10', NULL, '昆山', 3, b'1');
INSERT INTO `movie_area` VALUES (33, '2020-09-19 13:01:50', '2020-09-19 13:01:50', NULL, '常州', 3, b'1');
INSERT INTO `movie_area` VALUES (34, '2020-09-19 13:01:59', '2020-09-19 13:01:59', NULL, '南通', 3, b'1');
INSERT INTO `movie_area` VALUES (35, '2020-09-19 13:02:13', '2020-09-19 13:02:13', NULL, '镇江', 3, b'1');
INSERT INTO `movie_area` VALUES (36, '2020-09-19 13:02:25', '2020-09-19 13:02:25', NULL, '泰州', 3, b'1');
INSERT INTO `movie_area` VALUES (37, '2020-09-19 13:02:41', '2020-09-19 13:02:41', NULL, '连云港', 3, b'1');
INSERT INTO `movie_area` VALUES (38, '2020-09-19 13:02:51', '2020-09-19 13:02:51', NULL, '扬州', 3, b'1');
COMMIT;

-- ----------------------------
-- Table structure for movie_cinema
-- ----------------------------
DROP TABLE IF EXISTS `movie_cinema`;
CREATE TABLE `movie_cinema` (
                                `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                `create_time` datetime NOT NULL,
                                `update_time` datetime NOT NULL,
                                `address` varchar(128) NOT NULL,
                                `cinema_service` varchar(128) DEFAULT NULL,
                                `info` varchar(1280) DEFAULT NULL,
                                `name` varchar(64) NOT NULL,
                                `picture` varchar(512) DEFAULT NULL,
                                `rate` decimal(19,2) DEFAULT NULL,
                                `tel` varchar(16) NOT NULL,
                                `transport` varchar(128) DEFAULT NULL,
                                `area_id` bigint(20) DEFAULT NULL,
                                `rate_count` int(11) DEFAULT NULL,
                                PRIMARY KEY (`id`),
                                KEY `FK3rbe1c2ae9xlnyokjqgol32ky` (`area_id`),
                                CONSTRAINT `FK3rbe1c2ae9xlnyokjqgol32ky` FOREIGN KEY (`area_id`) REFERENCES `movie_area` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movie_cinema
-- ----------------------------
BEGIN;
INSERT INTO `movie_cinema` VALUES (1, '2020-09-14 20:37:04', '2020-12-20 12:49:49', '上海市人民北路2999号', '_3D,Park,Card,Dining,ChildDiscount,ProductPackage,Rest', '万达影城，牛逼的一塌糊涂！', '松江万达影城', '20201217/1608185292053.png', 8.01, '021-743737363', '地铁9号线2号口出', 22, 6);
INSERT INTO `movie_cinema` VALUES (2, '2020-09-14 21:05:57', '2020-10-06 15:08:00', '南京江苏南京江苏南京人民路123号', '_3D,Card,ChildDiscount,Rest', '很好的电影院！', '苏宁影院（鼓楼店）', '20200924/1600956313025.jpg', 6.67, '026-88454546', '738路公交下', 30, 3);
INSERT INTO `movie_cinema` VALUES (3, '2020-09-19 22:11:14', '2020-10-06 15:11:08', '北京市朝阳大道001', '_3D,Park,Card,Dining,ChildDiscount,ProductPackage,Rest', '金逸影城MX4D（光美南昌绿地中心店）', '金逸影城MX4D（光美南昌绿地中心店）', '20200919/1600524631158.jpg', 9.00, '010-5556623', '地铁9号线2号口出', 26, 1);
INSERT INTO `movie_cinema` VALUES (4, '2020-09-19 22:13:15', '2020-09-19 22:13:15', '上海市青浦区华新镇华志路789号新尚生活广场5楼', '_3D,Park,Card,Dining,ChildDiscount,ProductPackage,Rest', '一米二以下儿童观影免票，需成人陪同，一名成人仅限携带一名儿童，3D电影不', '上影青浦时光国际影城', '20200919/1600524730476.jpg', 0.00, '021-32583818', '地铁9号线2号口出', 23, 0);
INSERT INTO `movie_cinema` VALUES (5, '2020-09-19 22:14:06', '2020-09-19 22:14:06', '上海市浦东新区陆家嘴世纪大道8号上海国金中心商场LG1-LG2层', '_3D,Park,Card,Dining,ChildDiscount,ProductPackage,Rest', '百丽宫影城（ifc商场店）', '百丽宫影城（ifc商场店）', '20200919/1600524805636.jpg', 0.00, '021-31263886', '地铁9号线2号口出', 6, 0);
INSERT INTO `movie_cinema` VALUES (6, '2020-09-19 22:15:48', '2020-09-19 22:15:48', '上海市浦东新区上南路4467号20号中房金谊广场北区1层', '_3D,Park,Card,Dining,ChildDiscount,ProductPackage,Rest', '金谊华夏影城（三林店）', '金谊华夏影城（三林店）', '20200919/1600524921262.jpg', 0.00, '021-58583586-808', '地铁11号线2号口出', 6, 0);
COMMIT;

-- ----------------------------
-- Table structure for movie_cinema_comment
-- ----------------------------
DROP TABLE IF EXISTS `movie_cinema_comment`;
CREATE TABLE `movie_cinema_comment` (
                                        `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                        `create_time` datetime NOT NULL,
                                        `update_time` datetime NOT NULL,
                                        `content` varchar(512) NOT NULL,
                                        `rate` decimal(19,2) NOT NULL,
                                        `account_id` bigint(20) NOT NULL,
                                        `cinema_id` bigint(20) NOT NULL,
                                        PRIMARY KEY (`id`),
                                        KEY `FK62335x5bldhxxrvxyn2g6hh7l` (`account_id`),
                                        KEY `FKe2arjnvu7p5ckp9vnule741ia` (`cinema_id`),
                                        CONSTRAINT `FK62335x5bldhxxrvxyn2g6hh7l` FOREIGN KEY (`account_id`) REFERENCES `movie_account` (`id`),
                                        CONSTRAINT `FKe2arjnvu7p5ckp9vnule741ia` FOREIGN KEY (`cinema_id`) REFERENCES `movie_cinema` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movie_cinema_comment
-- ----------------------------
BEGIN;
INSERT INTO `movie_cinema_comment` VALUES (1, '2020-10-06 14:42:41', '2020-10-06 14:42:41', '还不错，就是位置有点偏僻！', 8.00, 3, 1);
INSERT INTO `movie_cinema_comment` VALUES (2, '2020-10-06 14:50:22', '2020-10-06 14:50:22', '竟然没地方停车，这么大个电影也是醉了！！！', 6.00, 3, 1);
INSERT INTO `movie_cinema_comment` VALUES (4, '2020-10-06 14:56:13', '2020-10-06 14:56:13', '这次的巨幕影厅很棒。', 9.00, 3, 1);
INSERT INTO `movie_cinema_comment` VALUES (5, '2020-10-06 15:03:55', '2020-10-06 15:03:55', '还好吧。', 7.00, 3, 2);
INSERT INTO `movie_cinema_comment` VALUES (6, '2020-10-06 15:07:22', '2020-10-06 15:07:22', '这次体验不错！', 9.00, 3, 2);
INSERT INTO `movie_cinema_comment` VALUES (7, '2020-10-06 15:08:00', '2020-10-06 15:08:00', '这次体验一般！', 4.00, 3, 2);
INSERT INTO `movie_cinema_comment` VALUES (8, '2020-10-06 15:11:08', '2020-10-06 15:11:08', '完美的一次体验！', 9.00, 3, 3);
INSERT INTO `movie_cinema_comment` VALUES (9, '2020-10-06 23:36:06', '2020-10-06 23:36:06', '以前上学的时候经常去。还可以！', 7.00, 2, 1);
INSERT INTO `movie_cinema_comment` VALUES (11, '2020-10-08 16:06:59', '2020-10-08 16:06:59', '还不错', 8.00, 4, 1);
INSERT INTO `movie_cinema_comment` VALUES (12, '2020-12-19 20:31:02', '2020-12-19 20:31:02', '这电影还不错', 10.00, 3, 1);
COMMIT;

-- ----------------------------
-- Table structure for movie_cinema_hall
-- ----------------------------
DROP TABLE IF EXISTS `movie_cinema_hall`;
CREATE TABLE `movie_cinema_hall` (
                                     `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                     `create_time` datetime NOT NULL,
                                     `update_time` datetime NOT NULL,
                                     `max_x` int(11) NOT NULL,
                                     `max_y` int(11) NOT NULL,
                                     `name` varchar(64) NOT NULL,
                                     `cinema_id` bigint(20) DEFAULT NULL,
                                     PRIMARY KEY (`id`),
                                     KEY `FKcpgl2ik7d1ilwpjkm3mk9a5kj` (`cinema_id`),
                                     CONSTRAINT `FKcpgl2ik7d1ilwpjkm3mk9a5kj` FOREIGN KEY (`cinema_id`) REFERENCES `movie_cinema` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movie_cinema_hall
-- ----------------------------
BEGIN;
INSERT INTO `movie_cinema_hall` VALUES (1, '2020-09-15 20:07:53', '2020-12-20 12:50:01', 8, 9, '3D巨幕大厅', 2);
INSERT INTO `movie_cinema_hall` VALUES (3, '2020-09-16 21:47:28', '2020-09-16 21:47:28', 9, 9, '1号巨幕影厅', 1);
INSERT INTO `movie_cinema_hall` VALUES (4, '2020-09-24 21:09:43', '2020-09-24 21:09:43', 8, 11, '1号厅', 3);
COMMIT;

-- ----------------------------
-- Table structure for movie_cinema_hall_seat
-- ----------------------------
DROP TABLE IF EXISTS `movie_cinema_hall_seat`;
CREATE TABLE `movie_cinema_hall_seat` (
                                          `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                          `create_time` datetime NOT NULL,
                                          `update_time` datetime NOT NULL,
                                          `status` int(11) NOT NULL,
                                          `type` int(11) NOT NULL,
                                          `x` int(11) NOT NULL,
                                          `y` int(11) NOT NULL,
                                          `cinema_hall_id` bigint(20) DEFAULT NULL,
                                          PRIMARY KEY (`id`),
                                          KEY `FKmdwbvcb0bsjcx8qqpbgi46flo` (`cinema_hall_id`),
                                          CONSTRAINT `FKmdwbvcb0bsjcx8qqpbgi46flo` FOREIGN KEY (`cinema_hall_id`) REFERENCES `movie_cinema_hall` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=242 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movie_cinema_hall_seat
-- ----------------------------
BEGIN;
INSERT INTO `movie_cinema_hall_seat` VALUES (1, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 1, 1, 1, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (2, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 1, 2, 1, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (3, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 1, 3, 1, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (4, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 2, 4, 1, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (5, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 2, 5, 1, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (6, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 1, 6, 1, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (7, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 1, 7, 1, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (8, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 1, 8, 1, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (9, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 1, 1, 2, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (10, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 1, 2, 2, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (11, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 2, 3, 2, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (12, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 1, 4, 2, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (13, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 1, 5, 2, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (14, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 2, 6, 2, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (15, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 1, 7, 2, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (16, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 1, 8, 2, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (17, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 1, 1, 3, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (18, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 2, 2, 3, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (19, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 0, 1, 3, 3, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (20, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 0, 1, 4, 3, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (21, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 0, 1, 5, 3, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (22, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 0, 1, 6, 3, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (23, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 2, 7, 3, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (24, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 1, 8, 3, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (25, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 2, 1, 4, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (26, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 0, 1, 2, 4, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (27, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 1, 3, 4, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (28, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 1, 4, 4, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (29, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 1, 5, 4, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (30, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 1, 6, 4, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (31, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 0, 1, 7, 4, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (32, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 2, 8, 4, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (33, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 2, 1, 5, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (34, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 0, 1, 2, 5, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (35, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 1, 3, 5, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (36, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 1, 4, 5, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (37, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 1, 5, 5, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (38, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 1, 6, 5, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (39, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 0, 1, 7, 5, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (40, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 2, 8, 5, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (41, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 2, 1, 6, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (42, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 0, 1, 2, 6, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (43, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 1, 3, 6, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (44, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 1, 4, 6, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (45, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 1, 5, 6, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (46, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 1, 6, 6, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (47, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 0, 1, 7, 6, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (48, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 2, 8, 6, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (49, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 2, 1, 7, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (50, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 0, 1, 2, 7, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (51, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 1, 3, 7, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (52, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 1, 4, 7, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (53, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 1, 5, 7, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (54, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 1, 6, 7, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (55, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 0, 1, 7, 7, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (56, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 2, 8, 7, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (57, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 1, 1, 8, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (58, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 2, 2, 8, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (59, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 1, 3, 8, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (60, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 1, 4, 8, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (61, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 1, 5, 8, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (62, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 1, 6, 8, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (63, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 2, 7, 8, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (64, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 1, 8, 8, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (65, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 1, 1, 9, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (66, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 1, 2, 9, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (67, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 2, 3, 9, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (68, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 2, 4, 9, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (69, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 2, 5, 9, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (70, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 2, 6, 9, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (71, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 1, 7, 9, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (72, '2020-09-16 21:25:09', '2020-09-16 21:53:10', 1, 1, 8, 9, 1);
INSERT INTO `movie_cinema_hall_seat` VALUES (73, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 1, 1, 1, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (74, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 1, 2, 1, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (75, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 2, 3, 1, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (76, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 2, 4, 1, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (77, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 2, 5, 1, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (78, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 2, 6, 1, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (79, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 2, 7, 1, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (80, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 1, 8, 1, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (81, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 1, 9, 1, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (82, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 1, 1, 2, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (83, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 2, 2, 2, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (84, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 1, 3, 2, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (85, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 1, 4, 2, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (86, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 0, 1, 5, 2, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (87, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 1, 6, 2, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (88, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 0, 1, 7, 2, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (89, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 2, 8, 2, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (90, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 1, 9, 2, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (91, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 2, 1, 3, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (92, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 1, 2, 3, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (93, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 1, 3, 3, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (94, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 1, 4, 3, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (95, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 1, 5, 3, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (96, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 1, 6, 3, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (97, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 1, 7, 3, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (98, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 1, 8, 3, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (99, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 2, 9, 3, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (100, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 2, 1, 4, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (101, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 1, 2, 4, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (102, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 0, 2, 3, 4, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (103, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 1, 4, 4, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (104, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 1, 5, 4, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (105, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 1, 6, 4, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (106, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 1, 7, 4, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (107, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 0, 1, 8, 4, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (108, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 2, 9, 4, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (109, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 2, 1, 5, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (110, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 1, 2, 5, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (111, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 1, 3, 5, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (112, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 1, 4, 5, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (113, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 1, 5, 5, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (114, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 1, 6, 5, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (115, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 1, 7, 5, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (116, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 0, 1, 8, 5, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (117, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 2, 9, 5, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (118, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 2, 1, 6, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (119, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 1, 2, 6, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (120, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 1, 3, 6, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (121, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 1, 4, 6, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (122, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 1, 5, 6, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (123, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 1, 6, 6, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (124, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 1, 7, 6, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (125, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 1, 8, 6, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (126, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 2, 9, 6, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (127, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 2, 1, 7, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (128, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 0, 1, 2, 7, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (129, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 1, 3, 7, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (130, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 1, 4, 7, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (131, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 1, 5, 7, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (132, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 1, 6, 7, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (133, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 1, 7, 7, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (134, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 0, 1, 8, 7, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (135, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 2, 9, 7, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (136, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 1, 1, 8, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (137, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 2, 2, 8, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (138, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 1, 3, 8, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (139, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 1, 4, 8, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (140, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 1, 5, 8, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (141, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 1, 6, 8, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (142, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 1, 7, 8, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (143, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 2, 8, 8, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (144, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 1, 9, 8, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (145, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 1, 1, 9, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (146, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 1, 2, 9, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (147, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 2, 3, 9, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (148, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 2, 4, 9, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (149, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 2, 5, 9, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (150, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 2, 6, 9, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (151, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 2, 7, 9, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (152, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 1, 8, 9, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (153, '2020-09-16 21:53:59', '2020-10-03 13:42:01', 1, 1, 9, 9, 3);
INSERT INTO `movie_cinema_hall_seat` VALUES (154, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 1, 1, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (155, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 2, 1, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (156, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 3, 1, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (157, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 4, 1, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (158, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 5, 1, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (159, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 6, 1, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (160, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 7, 1, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (161, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 8, 1, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (162, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 1, 2, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (163, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 2, 2, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (164, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 3, 2, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (165, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 4, 2, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (166, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 5, 2, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (167, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 6, 2, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (168, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 7, 2, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (169, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 8, 2, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (170, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 1, 3, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (171, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 2, 3, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (172, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 3, 3, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (173, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 4, 3, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (174, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 5, 3, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (175, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 6, 3, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (176, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 7, 3, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (177, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 8, 3, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (178, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 1, 4, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (179, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 2, 4, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (180, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 3, 4, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (181, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 4, 4, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (182, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 5, 4, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (183, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 6, 4, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (184, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 7, 4, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (185, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 8, 4, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (186, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 1, 5, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (187, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 2, 5, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (188, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 3, 5, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (189, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 4, 5, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (190, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 5, 5, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (191, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 6, 5, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (192, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 7, 5, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (193, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 8, 5, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (194, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 1, 6, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (195, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 2, 6, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (196, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 3, 6, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (197, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 4, 6, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (198, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 5, 6, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (199, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 6, 6, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (200, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 7, 6, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (201, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 8, 6, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (202, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 1, 7, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (203, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 2, 7, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (204, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 3, 7, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (205, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 4, 7, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (206, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 5, 7, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (207, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 6, 7, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (208, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 7, 7, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (209, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 8, 7, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (210, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 1, 8, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (211, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 2, 8, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (212, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 3, 8, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (213, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 4, 8, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (214, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 5, 8, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (215, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 6, 8, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (216, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 7, 8, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (217, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 8, 8, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (218, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 1, 9, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (219, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 2, 9, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (220, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 3, 9, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (221, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 4, 9, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (222, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 5, 9, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (223, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 6, 9, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (224, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 7, 9, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (225, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 8, 9, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (226, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 1, 10, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (227, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 2, 10, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (228, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 3, 10, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (229, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 4, 10, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (230, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 5, 10, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (231, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 6, 10, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (232, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 7, 10, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (233, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 8, 10, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (234, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 1, 11, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (235, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 2, 11, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (236, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 3, 11, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (237, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 4, 11, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (238, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 5, 11, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (239, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 6, 11, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (240, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 7, 11, 4);
INSERT INTO `movie_cinema_hall_seat` VALUES (241, '2020-09-24 21:09:53', '2020-09-24 21:09:53', 1, 1, 8, 11, 4);
COMMIT;

-- ----------------------------
-- Table structure for movie_cinema_hall_session
-- ----------------------------
DROP TABLE IF EXISTS `movie_cinema_hall_session`;
CREATE TABLE `movie_cinema_hall_session` (
                                             `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                             `create_time` datetime NOT NULL,
                                             `update_time` datetime NOT NULL,
                                             `show_date` varchar(12) NOT NULL,
                                             `show_time` varchar(12) NOT NULL,
                                             `cinema_id` bigint(20) DEFAULT NULL,
                                             `cinema_hall_id` bigint(20) DEFAULT NULL,
                                             `movie_id` bigint(20) DEFAULT NULL,
                                             `cinema_session_type` int(11) NOT NULL,
                                             `end_time` varchar(18) NOT NULL,
                                             `new_price` decimal(19,2) NOT NULL,
                                             `old_price` decimal(19,2) NOT NULL,
                                             `start_time` varchar(18) NOT NULL,
                                             PRIMARY KEY (`id`),
                                             KEY `FKcqci2i9g2044uicf07sxwwcoi` (`cinema_id`),
                                             KEY `FK23nq84td4lhlgow750x6w52st` (`cinema_hall_id`),
                                             KEY `FK8yo0mdhaupvsygja3uncoh60s` (`movie_id`),
                                             CONSTRAINT `FK23nq84td4lhlgow750x6w52st` FOREIGN KEY (`cinema_hall_id`) REFERENCES `movie_cinema_hall` (`id`),
                                             CONSTRAINT `FK8yo0mdhaupvsygja3uncoh60s` FOREIGN KEY (`movie_id`) REFERENCES `movie_movie` (`id`),
                                             CONSTRAINT `FKcqci2i9g2044uicf07sxwwcoi` FOREIGN KEY (`cinema_id`) REFERENCES `movie_cinema` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movie_cinema_hall_session
-- ----------------------------
BEGIN;
INSERT INTO `movie_cinema_hall_session` VALUES (1, '2020-09-15 20:07:53', '2020-12-29 12:28:57', '2020-12-30', '08:30', 2, 1, 2, 1, '2020-12-30 10:25', 45.00, 100.00, '2020-12-30 08:30');
INSERT INTO `movie_cinema_hall_session` VALUES (2, '2020-09-17 20:37:36', '2020-12-20 22:36:25', '2020-12-20', '22:30', 3, 4, 1, 2, '2020-12-21 00:52', 45.00, 80.00, '2020-12-20 22:30');
INSERT INTO `movie_cinema_hall_session` VALUES (3, '2020-09-16 21:47:28', '2020-09-26 20:34:15', '2020-10-18', '13:30', 2, 1, 1, 0, '2020-10-18 15:52', 45.50, 88.00, '2020-10-18 13:30');
INSERT INTO `movie_cinema_hall_session` VALUES (4, '2020-09-17 20:38:12', '2020-09-26 20:34:20', '2020-10-18', '08:00', 2, 1, 1, 0, '2020-10-18 10:22', 55.00, 66.00, '2020-10-18 08:00');
INSERT INTO `movie_cinema_hall_session` VALUES (5, '2020-09-24 21:10:21', '2020-09-26 20:34:26', '2020-10-23', '20:00', 3, 4, 3, 0, '2020-10-23 21:45', 65.00, 100.00, '2020-10-23 20:00');
INSERT INTO `movie_cinema_hall_session` VALUES (6, '2020-09-26 12:26:23', '2020-09-26 20:34:30', '2020-10-25', '20:00', 3, 4, 1, 0, '2020-10-25 22:22', 66.00, 98.00, '2020-10-25 20:00');
INSERT INTO `movie_cinema_hall_session` VALUES (7, '2020-09-26 12:26:41', '2020-09-26 20:34:51', '2020-10-20', '22:00', 1, 3, 1, 0, '2020-10-21 00:22', 63.00, 100.00, '2020-10-20 22:00');
INSERT INTO `movie_cinema_hall_session` VALUES (8, '2020-09-26 12:26:59', '2020-09-26 20:34:56', '2020-10-19', '09:00', 2, 1, 1, 0, '2020-10-19 11:22', 44.00, 68.00, '2020-10-19 09:00');
INSERT INTO `movie_cinema_hall_session` VALUES (9, '2020-09-26 13:03:13', '2020-09-26 20:35:01', '2020-10-19', '09:00', 3, 4, 1, 0, '2020-10-19 11:22', 56.00, 78.00, '2020-10-19 09:00');
INSERT INTO `movie_cinema_hall_session` VALUES (10, '2020-09-26 15:44:16', '2020-09-26 20:35:07', '2020-10-19', '10:30', 1, 3, 1, 2, '2020-10-19 12:52', 68.00, 55.00, '2020-10-19 10:30');
INSERT INTO `movie_cinema_hall_session` VALUES (11, '2020-09-26 20:09:38', '2020-09-26 20:46:25', '2020-10-18', '14:00', 1, 3, 1, 1, '2020-10-18 16:22', 56.00, 66.00, '2020-10-18 14:00');
INSERT INTO `movie_cinema_hall_session` VALUES (12, '2020-09-26 20:38:20', '2020-09-26 20:46:51', '2020-10-18', '17:00', 1, 3, 1, 1, '2020-10-18 19:22', 40.00, 66.00, '2020-10-18 17:00');
INSERT INTO `movie_cinema_hall_session` VALUES (13, '2020-09-26 20:41:36', '2020-09-26 20:47:10', '2020-10-18', '19:30', 1, 3, 1, 1, '2020-10-18 21:52', 41.00, 88.00, '2020-10-18 19:30');
INSERT INTO `movie_cinema_hall_session` VALUES (14, '2020-09-26 20:48:11', '2020-09-26 20:48:11', '2020-10-18', '08:00', 1, 3, 2, 1, '2020-10-18 09:55', 45.00, 80.00, '2020-10-18 08:00');
INSERT INTO `movie_cinema_hall_session` VALUES (15, '2020-09-26 20:50:07', '2020-12-30 12:38:05', '2020-12-30', '14:00', 1, 3, 10, 4, '2020-12-30 16:27', 55.00, 100.00, '2020-12-30 14:00');
INSERT INTO `movie_cinema_hall_session` VALUES (16, '2020-09-26 20:51:06', '2020-09-26 20:51:06', '2020-10-18', '05:00', 1, 3, 14, 1, '2020-10-18 07:03', 50.00, 66.00, '2020-10-18 05:00');
INSERT INTO `movie_cinema_hall_session` VALUES (17, '2020-09-26 20:53:22', '2020-09-26 20:53:22', '2020-10-18', '03:00', 1, 3, 7, 0, '2020-10-18 04:50', 35.00, 50.00, '2020-10-18 03:00');
INSERT INTO `movie_cinema_hall_session` VALUES (18, '2020-12-20 12:50:36', '2020-12-20 12:50:36', '2020-12-20', '20:00', 3, 4, 2, 0, '2020-12-20 21:55', 40.00, 45.00, '2020-12-20 20:00');
INSERT INTO `movie_cinema_hall_session` VALUES (19, '2020-12-20 13:09:32', '2020-12-20 13:09:32', '2020-12-20', '20:00', 2, 1, 5, 1, '2020-12-20 22:04', 60.00, 60.00, '2020-12-20 20:00');
INSERT INTO `movie_cinema_hall_session` VALUES (20, '2020-12-20 22:38:52', '2020-12-20 22:38:52', '2020-12-21', '20:00', 1, 3, 1, 2, '2020-12-21 22:22', 45.00, 80.00, '2020-12-21 20:00');
COMMIT;

-- ----------------------------
-- Table structure for movie_database_bak
-- ----------------------------
DROP TABLE IF EXISTS `movie_database_bak`;
CREATE TABLE `movie_database_bak` (
                                      `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                      `create_time` datetime NOT NULL,
                                      `update_time` datetime NOT NULL,
                                      `filename` varchar(32) NOT NULL,
                                      `filepath` varchar(128) NOT NULL,
                                      PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movie_database_bak
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for movie_menu
-- ----------------------------
DROP TABLE IF EXISTS `movie_menu`;
CREATE TABLE `movie_menu` (
                              `id` bigint(20) NOT NULL AUTO_INCREMENT,
                              `create_time` datetime NOT NULL,
                              `update_time` datetime NOT NULL,
                              `name` varchar(18) NOT NULL,
                              `url` varchar(128) DEFAULT NULL,
                              `icon` varchar(32) DEFAULT NULL,
                              `sort` int(11) NOT NULL,
                              `parent_id` bigint(20) DEFAULT NULL,
                              `is_bitton` bit(1) NOT NULL,
                              `is_show` bit(1) NOT NULL,
                              PRIMARY KEY (`id`),
                              KEY `FKsbtnjocfrq29e8taxdwo21gic` (`parent_id`),
                              CONSTRAINT `FKsbtnjocfrq29e8taxdwo21gic` FOREIGN KEY (`parent_id`) REFERENCES `movie_menu` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movie_menu
-- ----------------------------
BEGIN;
INSERT INTO `movie_menu` VALUES (2, '2020-09-14 14:26:03', '2020-09-14 18:24:53', '系统设置', '', 'mdi-settings', 0, NULL, b'0', b'1');
INSERT INTO `movie_menu` VALUES (3, '2020-09-14 16:58:55', '2020-09-14 18:26:02', '菜单管理', '/admin/menu/list', 'mdi-view-list', 1, 2, b'0', b'1');
INSERT INTO `movie_menu` VALUES (5, '2020-09-14 17:04:44', '2020-09-14 18:27:53', '新增', '/admin/menu/add', 'mdi-plus', 2, 3, b'0', b'1');
INSERT INTO `movie_menu` VALUES (7, '2020-09-14 17:07:43', '2020-09-15 12:11:25', '角色管理', '/admin/role/list', 'mdi-account-settings-variant', 5, 2, b'0', b'1');
INSERT INTO `movie_menu` VALUES (8, '2020-09-14 18:28:48', '2020-09-21 22:04:45', '编辑', 'edit(\'/admin/menu/edit\')', 'mdi-grease-pencil', 3, 3, b'1', b'1');
INSERT INTO `movie_menu` VALUES (9, '2020-09-14 18:30:00', '2020-09-21 22:08:20', '删除', 'del(\'/admin/menu/delete\')', 'mdi-close', 4, 3, b'1', b'1');
INSERT INTO `movie_menu` VALUES (10, '2020-09-15 12:12:00', '2020-09-15 12:12:00', '添加', '/admin/role/add', 'mdi-account-plus', 6, 7, b'0', b'1');
INSERT INTO `movie_menu` VALUES (11, '2020-09-15 12:12:36', '2020-09-21 22:10:45', '编辑', 'edit(\'/admin/role/edit\')', 'mdi-account-edit', 7, 7, b'1', b'1');
INSERT INTO `movie_menu` VALUES (12, '2020-09-15 12:13:19', '2020-09-21 22:15:27', '删除', 'del(\'/admin/role/delete\')', 'mdi-account-remove', 8, 7, b'1', b'1');
INSERT INTO `movie_menu` VALUES (13, '2020-09-15 12:14:52', '2020-09-15 12:17:00', '用户管理', '/admin/user/list', 'mdi-account-multiple', 9, 2, b'0', b'1');
INSERT INTO `movie_menu` VALUES (14, '2020-09-15 12:15:22', '2020-09-15 12:17:27', '添加', '/admin/user/add', 'mdi-account-plus', 10, 13, b'0', b'1');
INSERT INTO `movie_menu` VALUES (15, '2020-09-16 17:18:14', '2020-09-21 22:11:19', '编辑', 'edit(\'/admin/user/edit\')', 'mdi-account-edit', 11, 13, b'1', b'1');
INSERT INTO `movie_menu` VALUES (16, '2020-09-16 17:19:01', '2020-09-21 22:15:36', '删除', 'del(\'/admin/user/delete\')', 'mdi-account-remove', 12, 13, b'1', b'1');
INSERT INTO `movie_menu` VALUES (19, '2020-09-22 11:24:36', '2020-09-22 11:26:00', '上传图片', '/upload/upload_photo', 'mdi-arrow-up-bold-circle', 0, 13, b'0', b'0');
INSERT INTO `movie_menu` VALUES (20, '2020-09-22 14:09:35', '2020-09-22 14:09:47', '日志管理', '/system/operator_log_list', 'mdi-tag-multiple', 13, 2, b'0', b'1');
INSERT INTO `movie_menu` VALUES (21, '2020-09-22 14:11:39', '2020-09-22 14:11:39', '删除', 'del(\'/system/delete_operator_log\')', 'mdi-tag-remove', 14, 20, b'1', b'1');
INSERT INTO `movie_menu` VALUES (22, '2020-09-22 14:12:57', '2020-09-22 14:46:55', '清空日志', 'delAll(\'/system/delete_all_operator_log\')', 'mdi-delete-circle', 15, 20, b'1', b'1');
INSERT INTO `movie_menu` VALUES (23, '2020-09-22 14:46:40', '2020-09-22 14:47:09', '数据备份', '/admin/database_bak/list', 'mdi-database', 16, 2, b'0', b'1');
INSERT INTO `movie_menu` VALUES (24, '2020-09-22 14:48:07', '2020-09-22 15:13:41', '备份', 'add(\'/admin/database_bak/add\')', 'mdi-database-plus', 17, 23, b'1', b'1');
INSERT INTO `movie_menu` VALUES (25, '2020-09-22 14:49:03', '2020-09-22 14:49:03', '删除', 'del(\'/admin/database_bak/delete\')', 'mdi-database-minus', 18, 23, b'1', b'1');
INSERT INTO `movie_menu` VALUES (26, '2020-09-22 19:36:20', '2020-09-22 19:36:20', '还原', 'restore(\'/admin/database_bak/restore\')', 'mdi-database-minus', 19, 23, b'1', b'1');
INSERT INTO `movie_menu` VALUES (27, '2020-09-03 20:31:22', '2020-09-03 20:31:40', '地域管理', '', 'mdi-map', 20, NULL, b'0', b'1');
INSERT INTO `movie_menu` VALUES (28, '2020-09-03 20:32:50', '2020-09-03 20:32:50', '地域列表', '/admin/area/list', 'mdi-map-marker-multiple', 21, 27, b'0', b'1');
INSERT INTO `movie_menu` VALUES (29, '2020-09-03 20:33:34', '2020-09-03 20:33:34', '添加', '/admin/area/add', 'mdi-map-marker-plus', 22, 28, b'0', b'1');
INSERT INTO `movie_menu` VALUES (30, '2020-09-03 20:34:38', '2020-09-03 20:34:38', '编辑', 'edit(\'/admin/area/edit\')', 'mdi-map-marker-radius', 23, 28, b'1', b'1');
INSERT INTO `movie_menu` VALUES (31, '2020-09-03 20:35:22', '2020-09-03 20:35:22', '删除', 'del(\'/admin/area/delete\')', 'mdi-map-marker-minus', 24, 28, b'1', b'1');
INSERT INTO `movie_menu` VALUES (32, '2020-09-06 17:55:12', '2020-09-06 18:10:56', '获取省份下的城市列表', '/admin/area/get_citys', 'mdi-format-list-bulleted', 25, 28, b'0', b'0');
INSERT INTO `movie_menu` VALUES (33, '2020-09-06 18:10:40', '2020-09-06 18:13:10', '电影管理', '', 'mdi-movie', 26, NULL, b'0', b'1');
INSERT INTO `movie_menu` VALUES (34, '2020-09-06 18:12:51', '2020-09-06 18:12:51', '电影列表', '/admin/movie/list', 'mdi-microsoft', 28, 33, b'0', b'1');
INSERT INTO `movie_menu` VALUES (35, '2020-09-06 18:16:11', '2020-09-06 18:16:11', '添加', '/admin/movie/add', 'mdi-plus-circle', 29, 34, b'0', b'1');
INSERT INTO `movie_menu` VALUES (36, '2020-09-06 18:16:54', '2020-09-13 18:30:50', '编辑', 'edit(\'/admin/movie/edit\')', 'mdi-border-color', 30, 34, b'1', b'1');
INSERT INTO `movie_menu` VALUES (37, '2020-09-06 18:18:09', '2020-09-06 18:18:09', '删除', 'del(\'/admin/movie/delete\')', 'mdi-minus-circle', 31, 34, b'1', b'1');
INSERT INTO `movie_menu` VALUES (38, '2020-09-13 14:45:57', '2020-09-13 20:58:39', '上传视频', '/upload/upload_video', 'mdi-arrow-expand-up', 32, 34, b'1', b'0');
INSERT INTO `movie_menu` VALUES (39, '2020-09-13 20:58:28', '2020-09-13 20:58:47', '影院管理', '', 'mdi-store', 33, NULL, b'0', b'1');
INSERT INTO `movie_menu` VALUES (40, '2020-09-13 21:00:02', '2020-09-13 21:00:02', '影院列表', '/admin/cinema/list', 'mdi-raspberrypi', 34, 39, b'0', b'1');
INSERT INTO `movie_menu` VALUES (41, '2020-09-13 21:02:55', '2020-09-13 21:02:55', '添加', '/admin/cinema/add', 'mdi-loupe', 35, 40, b'0', b'1');
INSERT INTO `movie_menu` VALUES (42, '2020-09-13 21:03:42', '2020-09-13 21:03:51', '编辑', 'edit(\'/admin/cinema/edit\')', 'mdi-pencil', 36, 40, b'1', b'1');
INSERT INTO `movie_menu` VALUES (43, '2020-09-13 21:04:28', '2020-09-13 21:04:28', '删除', 'del(\'/admin/cinema/delete\')', 'mdi-close', 37, 40, b'1', b'1');
INSERT INTO `movie_menu` VALUES (44, '2020-09-14 19:30:50', '2020-09-14 19:31:15', '获取城市下的区列表', '/admin/area/get_districts', 'mdi-circle-outline', 38, 28, b'1', b'0');
INSERT INTO `movie_menu` VALUES (45, '2020-09-15 19:44:19', '2020-09-15 19:44:34', '影厅管理', '', 'mdi-hospital-building', 39, NULL, b'0', b'1');
INSERT INTO `movie_menu` VALUES (46, '2020-09-15 19:45:06', '2020-09-15 19:45:06', '影厅列表', '/admin/cinema_hall/list', 'mdi-houzz', 41, 45, b'0', b'1');
INSERT INTO `movie_menu` VALUES (47, '2020-09-15 19:46:22', '2020-09-15 19:46:22', '添加', '/admin/cinema_hall/add', 'mdi-table-row-plus-after', 42, 46, b'0', b'1');
INSERT INTO `movie_menu` VALUES (48, '2020-09-15 19:47:06', '2020-09-15 19:47:06', '编辑', 'edit(\'/admin/cinema_hall/edit\')', 'mdi-eyedropper-variant', 43, 46, b'1', b'1');
INSERT INTO `movie_menu` VALUES (49, '2020-09-15 19:47:37', '2020-09-15 19:47:37', '删除', 'del(\'/admin/cinema_hall/delete\')', 'mdi-close', 44, 46, b'1', b'1');
INSERT INTO `movie_menu` VALUES (50, '2020-09-15 19:48:36', '2020-09-15 19:48:36', '编辑座位', 'editSeat(\'/admin/cinema_hall/edit_seat\')', 'mdi-gate', 45, 46, b'1', b'1');
INSERT INTO `movie_menu` VALUES (51, '2020-09-17 19:53:01', '2020-09-17 19:53:01', '排片管理', '', 'mdi-filmstrip', 46, NULL, b'0', b'1');
INSERT INTO `movie_menu` VALUES (52, '2020-09-17 19:55:38', '2020-09-17 19:55:38', '场次列表', '/admin/cinema_hall_session/list', 'mdi-film', 47, 51, b'0', b'1');
INSERT INTO `movie_menu` VALUES (53, '2020-09-17 19:56:31', '2020-09-17 19:56:31', '添加', '/admin/cinema_hall_session/add', 'mdi-plus-circle', 48, 52, b'0', b'1');
INSERT INTO `movie_menu` VALUES (54, '2020-09-17 19:57:03', '2020-09-17 19:57:03', '编辑', 'edit(\'/admin/cinema_hall_session/edit\')', 'mdi-border-color', 49, 52, b'1', b'1');
INSERT INTO `movie_menu` VALUES (55, '2020-09-17 19:57:33', '2020-09-17 19:57:33', '删除', 'del(\'/admin/cinema_hall_session/delete\')', 'mdi-filmstrip-off', 50, 52, b'1', b'1');
INSERT INTO `movie_menu` VALUES (56, '2020-09-17 20:03:43', '2020-09-17 20:03:43', '根据影院查找所属影厅', '/admin/cinema_hall/get_cinema_halls', 'mdi-autorenew', 51, 46, b'0', b'0');
INSERT INTO `movie_menu` VALUES (57, '2020-09-21 21:51:27', '2020-09-21 21:51:27', '新闻资讯', '', 'mdi-note-text', 52, NULL, b'0', b'1');
INSERT INTO `movie_menu` VALUES (58, '2020-09-21 21:52:15', '2020-09-21 21:52:15', '分类管理', '/admin/news_category/list', 'mdi-clipboard-text', 53, 57, b'0', b'1');
INSERT INTO `movie_menu` VALUES (59, '2020-09-21 21:53:06', '2020-09-21 21:53:06', '添加', '/admin/news_category/add', 'mdi-library-plus', 54, 58, b'0', b'1');
INSERT INTO `movie_menu` VALUES (60, '2020-09-21 21:53:40', '2020-09-21 21:53:40', '编辑', 'edit(\'/admin/news_category/edit\')', 'mdi-border-color', 55, 58, b'1', b'1');
INSERT INTO `movie_menu` VALUES (61, '2020-09-21 21:54:15', '2020-09-21 21:54:15', '删除', 'del(\'/admin/news_category/delete\')', 'mdi-close', 56, 58, b'1', b'1');
INSERT INTO `movie_menu` VALUES (62, '2020-09-21 21:54:45', '2020-09-21 21:54:45', '资讯管理', '/admin/news/list', 'mdi-angular', 57, 57, b'0', b'1');
INSERT INTO `movie_menu` VALUES (63, '2020-09-21 21:55:20', '2020-09-21 21:55:20', '添加', '/admin/news/add', 'mdi-plus-circle', 58, 62, b'0', b'1');
INSERT INTO `movie_menu` VALUES (64, '2020-09-21 21:55:42', '2020-09-21 21:55:52', '编辑', 'edit(\'/admin/news/edit\')', 'mdi-border-color', 59, 62, b'1', b'1');
INSERT INTO `movie_menu` VALUES (65, '2020-09-21 21:56:43', '2020-09-21 21:56:43', '删除', 'del(\'/admin/news/delete\')', 'mdi-close', 60, 62, b'1', b'1');
INSERT INTO `movie_menu` VALUES (66, '2020-10-06 21:11:12', '2020-10-06 21:11:25', '用户管理', '', 'mdi-account-multiple', 61, NULL, b'0', b'1');
INSERT INTO `movie_menu` VALUES (67, '2020-10-06 21:13:24', '2020-10-06 21:13:24', '用户列表', '/admin/account/list', 'mdi-account-settings-variant', 62, 66, b'0', b'1');
INSERT INTO `movie_menu` VALUES (68, '2020-10-06 21:14:30', '2020-10-06 21:14:30', '编辑状态', 'edit(\'/admin/account/edit\')', 'mdi-account-settings-variant', 63, 67, b'1', b'1');
INSERT INTO `movie_menu` VALUES (69, '2020-10-06 21:49:02', '2020-10-06 21:49:02', '订单管理', '', 'mdi-currency-cny', 64, NULL, b'0', b'1');
INSERT INTO `movie_menu` VALUES (70, '2020-10-06 21:49:44', '2020-10-06 21:49:44', '订单列表', '/admin/order/list', 'mdi-currency-usd', 65, 69, b'0', b'1');
INSERT INTO `movie_menu` VALUES (71, '2020-10-06 21:52:28', '2020-10-06 21:52:28', '查看详情', 'view(\'/admin/order/view_detail\')', 'mdi-eye', 66, 70, b'1', b'1');
INSERT INTO `movie_menu` VALUES (72, '2020-10-07 11:55:35', '2020-10-07 11:55:35', '支付管理', '', 'mdi-currency-usd', 67, NULL, b'0', b'1');
INSERT INTO `movie_menu` VALUES (73, '2020-10-07 11:56:20', '2020-10-07 11:56:20', '支付列表', '/admin/pay_log/list', 'mdi-database', 68, 72, b'0', b'1');
INSERT INTO `movie_menu` VALUES (74, '2020-10-07 12:11:27', '2020-10-07 12:11:27', '评价管理', '/admin/movie/comment_list', 'mdi-comment-multiple-outline', 69, 33, b'0', b'1');
INSERT INTO `movie_menu` VALUES (75, '2020-10-07 12:12:59', '2020-10-07 12:12:59', '删除', 'deleteComment(\'/admin/movie/delete_comment\')', 'mdi-message-draw', 70, 74, b'1', b'1');
INSERT INTO `movie_menu` VALUES (76, '2020-10-07 12:46:45', '2020-10-07 12:46:45', '评价管理', '/admin/cinema/comment_list', 'mdi-comment-text', 71, 39, b'0', b'1');
INSERT INTO `movie_menu` VALUES (77, '2020-10-07 12:47:19', '2020-10-07 12:47:19', '删除', 'deleteComment(\'/admin/cinema/delete_comment\')', 'mdi-do-not-disturb', 72, 76, b'1', b'1');
COMMIT;

-- ----------------------------
-- Table structure for movie_movie
-- ----------------------------
DROP TABLE IF EXISTS `movie_movie`;
CREATE TABLE `movie_movie` (
                               `id` bigint(20) NOT NULL AUTO_INCREMENT,
                               `create_time` datetime NOT NULL,
                               `update_time` datetime NOT NULL,
                               `abs` varchar(128) DEFAULT NULL,
                               `actor` varchar(512) NOT NULL,
                               `area` int(11) DEFAULT NULL,
                               `directed_by` varchar(64) NOT NULL,
                               `info` varchar(1280) DEFAULT NULL,
                               `language` int(11) NOT NULL,
                               `name` varchar(64) NOT NULL,
                               `picture` varchar(512) DEFAULT NULL,
                               `rate` decimal(19,2) DEFAULT NULL,
                               `show_time` datetime DEFAULT NULL,
                               `time` int(11) DEFAULT NULL,
                               `total_money` decimal(19,2) DEFAULT NULL,
                               `type` varchar(128) DEFAULT NULL,
                               `video` varchar(512) DEFAULT NULL,
                               `is_show` bit(1) DEFAULT NULL,
                               `rate_count` int(11) DEFAULT NULL,
                               PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movie_movie
-- ----------------------------
BEGIN;
INSERT INTO `movie_movie` VALUES (1, '2020-09-14 21:11:31', '2020-10-08 16:06:30', '月黑高飞(港) / 刺激1995(台) / 地狱诺言 / 铁窗岁月 / 消香克的救赎', ' 蒂姆·罗宾斯 / 摩根·弗里曼 / 鲍勃·冈顿 / 威廉姆·赛德勒 / 克兰西·布朗 / 吉尔·贝罗斯 / 马克·罗斯顿 ', 3, '弗兰克·德拉邦特', '20世纪40年代末，小有成就的青年银行家安迪（蒂姆·罗宾斯 Tim Robbins 饰）因涉嫌杀害妻子及她的情人而锒铛入狱。在这座名为鲨堡的监狱内，希望似乎虚无缥缈，终身监禁的惩罚无疑注定了安迪接下来灰暗绝望的人生。未过多久，安迪尝试接近囚犯中颇有声望的瑞德（摩根·弗 里曼 Morgan Freeman 饰），请求对方帮自己搞来小锤子。以此为契机，二人逐渐熟稔，安迪也仿佛在鱼龙混杂、罪恶横生、黑白混淆的牢狱中找到属于自己的求生之道。他利用自身的专业知识，帮助监狱管理层逃税、洗黑钱，同时凭借与瑞德的交往在犯人中间也渐渐受到礼遇。表面看来，他已如瑞德那样对那堵高墙从憎恨转变为处之泰然，但是对自由的渴望仍促使他朝着心中的希望和目标前进。而关于其罪行的真相，似乎更使这一切朝前推进了一步…… \r\n　　本片根据著名作家斯蒂芬·金（Stephen Edwin King）的原著改编。', 1, '肖申克的救赎 The Shawshank Redemption (1994)', '20200914/1600088979472.jpg;20201006/1601998341205.jpg;20201006/1601998344588.jpg;20201006/1601998347450.jpg;20201006/1601998351465.jpg', 9.51, '1994-09-10 23:55:00', 142, 812.00, 'Plot,Other', '20201006/1601998356103.mp4', b'1', 4);
INSERT INTO `movie_movie` VALUES (2, '2020-09-17 21:49:32', '2020-12-29 12:33:08', '花木兰 Mulan (2020)', ' 刘亦菲 / 甄子丹 / 巩俐 / 李连杰 / 李截 / 安柚鑫', 3, '妮琪·卡罗', '迪士尼影业荣誉出品《花木兰》由备受赞誉的电影导演妮基·卡罗执导，将中国传奇战士的史诗故事全新呈现。影片讲述了一位无所畏惧的年轻女子义无反顾为家国而战，成为中国史上最著名的伟大勇士之一。当皇帝下令境内每个家庭必须有一位男丁应召出征，抵御北方来犯者入侵，出身军戎之家的长女花木兰，挺身而出，替病痛缠身的父亲应征入伍。她女扮男装化名“花军”，一路历经磨练，驾驭自己内心的力量，激发真正的潜能。通过这段传奇历程，她将成为一名光荣的勇士，不仅赢得国家的认可，更博得父亲的骄傲。', 1, '花木兰 Mulan (2020)', '20200917/1600350485608.jpg;20200917/1600350489371.jpg;20200917/1600350492749.jpg', 6.00, '2020-09-11 00:00:00', 115, 485.00, 'Action,Plot,Science', '', b'1', 1);
INSERT INTO `movie_movie` VALUES (3, '2020-09-19 10:37:42', '2020-12-20 13:21:07', '墨西哥亡灵节', '盖尔·加西亚·贝纳尔 / 安东尼·冈萨雷斯 / 本杰明·布拉特 / 芮妮·维克托 / 安娜·奥菲丽亚·莫吉亚', 3, '李·昂克里奇 / 阿德里安·莫利纳', '寻梦环游记', 0, '寻梦环游记', '20200919/1600482941012.jpg', 9.50, '2020-09-19 00:00:00', 105, 90.00, 'Comedy,Action,Science,Cartoon,Horror', '', b'1', 2);
INSERT INTO `movie_movie` VALUES (4, '2020-09-19 10:39:55', '2020-10-06 13:47:13', '', '安娜·肯德里克,贾斯汀·汀布莱克,詹米·多南,山姆·洛克威尔,詹姆斯·柯登', 3, '迈克·米歇尔, 大卫·史密斯', '魔发精灵2', 1, '魔发精灵2', '20200919/1600483140287.jpg', 9.00, '2020-09-17 00:00:00', 90, 100.00, 'Comedy,Plot,Science,Cartoon,Other', '', b'1', 1);
INSERT INTO `movie_movie` VALUES (5, '2020-09-19 10:44:29', '2020-12-20 13:27:01', '', '威尔·史密斯,马丁·劳伦斯', 3, '阿迪尔·埃尔·阿比, 比拉勒·法拉赫', '曾制作《珍珠港》、《壮志凌云》、《加勒比海盗》系列等爆款电影的好莱坞金牌制片人全新倾力打造的《绝地战警：疾速追击》，讲述了迈阿密警员麦克（威尔·史密斯饰）遭遇神秘黑帮势力的暗杀伏击，为了迎战势力庞大火力惊人的黑帮分子，解决隐藏在暗处的危机，麦克找回曾经的搭档马库斯（马丁·劳伦斯饰），“嘴炮二人组”再度集结开启沙雕模式，不仅时刻上演逗比互怼，更在迈阿密街头与黑帮展开空前绝后的飙车枪战大戏。这对最佳搭档究竟能否在枪林弹雨下突出重围，找出幕后黑手完成绝地反杀？', 1, '绝地战警：疾速追击', '20200919/1600483323364.jpg;20200919/1600483339214.jpg;20200919/1600483346432.jpg;20200919/1600483352829.jpg;20200919/1600483365293.jpg;20200919/1600483378658.jpg;20200919/1600483399059.jpg', 9.00, '2018-09-13 00:00:00', 124, 840.00, 'Love,Comedy,Action,Plot,Science,Horror,Crime', '20200919/1600483423387.mp4', b'1', 1);
INSERT INTO `movie_movie` VALUES (6, '2020-09-19 10:52:20', '2020-10-06 15:10:39', '一生所爱', '周星驰 / 吴孟达 / 朱茵 / 蔡少芬 / 蓝洁瑛', 1, '刘镇伟', '大话西游之大圣娶亲', 2, '大话西游之大圣娶亲', '20200919/1600483728314.jpg', 9.50, '1996-06-12 00:00:00', 95, 0.00, 'Love,Comedy,Action,Science,Fantasy,Adventure', '', b'1', 2);
INSERT INTO `movie_movie` VALUES (7, '2020-09-19 10:56:07', '2020-09-19 10:56:07', '殊死一搏的较量', '肖央,谭卓,陈冲,姜皓文,秦沛', 0, '柯汶利', '误杀——殊死一搏的较量！！！', 0, '误杀', '20200919/1600484100745.jpg', 0.00, '2019-07-19 00:00:00', 110, 0.00, 'Action,Plot,Horror,Crime', '', b'1', 0);
INSERT INTO `movie_movie` VALUES (8, '2020-09-19 11:01:15', '2020-09-19 11:01:15', '生而为魔,那又如何?', ' 吕艳婷 / 囧森瑟夫 / 瀚墨 / 陈浩 / 绿绮 / 张珈铭 / 杨卫', 0, '饺子', '天地灵气孕育出一颗能量巨大的混元珠，元始天尊将混元珠提炼成灵珠和魔丸，灵珠投胎为人，助周伐纣时可堪大用；而魔丸则会诞出魔王，为祸人间。元始天尊启动了天劫咒语，3年后天雷将会降临，摧毁魔丸。太乙受命将灵珠托生于陈塘关李靖家的儿子哪吒身上。然而阴差阳错，灵珠和魔丸竟然被掉包。本应是灵珠英雄的哪吒却成了混世大魔王。调皮捣蛋顽劣不堪的哪吒却徒有一颗做英雄的心。然而面对众人对魔丸的误解和即将来临的天雷的降临，哪吒是否命中注定会立地成魔？他将何去何从？', 0, '哪吒之魔童降世', '20200919/1600484294052.jpg;20200919/1600484469714.jpg;20200919/1600484472124.jpg', 0.00, '2019-10-24 00:00:00', 110, 0.00, 'Action,Plot,Science,Cartoon,Fantasy,Adventure', '20200919/1600484404952.mp4', b'1', 0);
INSERT INTO `movie_movie` VALUES (9, '2020-09-19 11:13:02', '2020-09-19 11:13:02', '', '马思纯,钟楚曦,黄景瑜', 0, '徐展雄', '荞麦疯长', 0, '荞麦疯长', '20200919/1600484548575.jpg', 0.00, '2020-09-10 00:00:00', 112, 0.00, 'Love,Plot', '', b'1', 0);
INSERT INTO `movie_movie` VALUES (10, '2020-09-19 11:16:45', '2020-12-30 12:39:12', '四百人对外号称八百人', '王千源,张译,姜武,黄志忠,张俊一,欧豪,张承', 0, '管虎', '1937年淞沪会战的最后一役，“八百壮士”奉命坚守上海四行仓库，以少敌多顽强抵抗四天四夜。电影《八佰》由管虎导演，是亚洲首部全片使用IMAX摄影机拍摄的商业电影，将于2020年8月21日全国影院上映。', 0, '八佰', '20200919/1600485202576.jpg;20200919/1600485384369.jpg;20200919/1600485387064.jpg;20200919/1600485389123.jpg;20200919/1600485392619.jpg;20200919/1600485394590.jpg', 0.00, '2020-08-17 00:00:00', 147, 165.00, 'Action,Plot,Adventure', '20200919/1600485398822.mp4', b'1', 0);
INSERT INTO `movie_movie` VALUES (11, '2020-09-19 11:24:38', '2020-09-19 11:24:38', '穿越时空的爱 / Love You Forever', '李鸿其 / 李一桐 / 范伟 / 张超 / 罗辑 / 郭欣禹', 0, ' 姚婷婷', '林格（李鸿其 饰）人生所有美好的记忆，都与邱倩（李一桐 饰）有关。一场意外、一块神奇的表彻底改变了两人的人生......时空不断被重置，唯一不变的，是爱你如初的心。', 0, '我在时间尽头等你', '20200919/1600485771101.jpg;20200919/1600485775438.jpg;20200919/1600485777489.jpg;20200919/1600485779555.jpg', 0.00, '2020-08-25 00:00:00', 120, 0.00, 'Love,Fantasy', '20200919/1600485821794.mp4', b'1', 0);
INSERT INTO `movie_movie` VALUES (12, '2020-09-19 11:28:33', '2020-09-19 11:28:49', '二分之一的魔法 / 魔法环游记 / 勇往直前 / 觅法奇程 / ½的魔法 / 向前', '汤姆·赫兰德 / 克里斯·帕拉特 / 茱莉亚·路易斯-德瑞弗斯', 3, '丹·斯坎隆', '影片设定在一个由精灵、巨魔和灵魂等组成的郊外幻想世界，在那里独角兽在垃圾桶中穿行，像是有着糖果条纹的负鼠。影片提供了一个前提，即魔法是真实的，但它早已被现代技术所遗忘和取代。一对十几岁的兄弟，在他们尚不更事时父亲便已离世，他们决定进入这个幻想世界，与父亲共度最后一个神奇的日子。霍兰德配音弟弟伊安、帕拉特配音聒噪的哥哥、德瑞弗斯配音兄弟二人的母亲、斯宾瑟则会利用其声线的优势。', 1, '1/2的魔法 Onward ', '20200919/1600486054872.jpg;20200919/1600486060819.jpg;20200919/1600486126266.jpg', 0.00, '2020-08-19 00:00:00', 102, 0.00, 'Action,Science,Cartoon,Fantasy,Adventure', '20200919/1600486065711.mp4', b'1', 0);
INSERT INTO `movie_movie` VALUES (13, '2020-09-19 11:32:53', '2020-09-19 11:32:53', '鱼游回来了', '季冠霖 / 苏尚卿 / 许魏洲 / 金士杰 / 杨婷 / 潘淑兰 / 九儿', 0, '梁旋 / 张春', '所有活着的人类，都是海里一条巨大的鱼；出生的时候他们从海的此岸出发。他们的生命就像横越大海，有时相遇，有时分开……死的时候，他们便到了岸，各去各的世界。 \r\n　　四十五亿年前，这个星球上，只有一片汪洋大海，和一群古老的大鱼。在与人类世界平行的空间里，生活着一个规规矩矩、遵守秩序的族群，他们为神工作，掌管世界万物运行规律，也掌管人类的灵魂。他们的天空与人类世界的大海相连。他们既不是神，也不是人，他们是“其他人”。 \r\n　　十六岁生日那天，居住在“神之围楼”里的一个名叫椿（季冠霖 配音）的女孩变作一条海豚到人间巡礼，被大海中的一张网困住，一个人类男孩因为救她而落入深海死去。为了报恩，为了让人类男孩复活，她需要在自己的世界里，历经种种困难与阻碍，帮助死后男孩的灵魂——一条拇指那么大的小鱼，成长为一条比鲸更巨大的鱼并回归大海。', 0, '大鱼海棠', '20200919/1600486339390.jpg;20200919/1600486341397.jpg;20200919/1600486343692.jpg;20200919/1600486371040.jpg', 0.00, '2020-09-05 00:00:00', 105, 0.00, 'Science,Cartoon,Fantasy', '20200919/1600486348627.mp4', b'1', 0);
INSERT INTO `movie_movie` VALUES (14, '2020-09-19 11:37:09', '2020-12-20 22:43:21', '新战狼 / 新战死沙场 / Wolf Warriors 2', ' 吴京 / 弗兰克·格里罗 / 吴刚 / 张翰 / 卢靖姗 / 丁海峰 / 淳于珊珊 / 余男 / 于谦', 0, '吴京', '由于一怒杀害了强拆牺牲战友房子的恶霸，屡立功勋的冷锋（吴京 饰）受到军事法庭的判决。在押期间，亲密爱人龙小云壮烈牺牲。出狱后，冷锋辗转来到非洲，他辗转各地，只为寻找杀害小云的凶手。在此期间，冷锋逗留的国家发生叛乱，叛徒红巾军大开杀戒，血流成河。中国派出海军执行撤侨任务，期间冷锋得知有一位陈博士被困在五十五公里外的医院，而叛军则试图抓住这位博士。而从另一位华侨（于谦 饰）口中得知，杀害小云的凶手正待在这个国家。 \r\n　　在无法得到海军支援的情况下，冷锋只身闯入硝烟四起的战场。不屈不挠的战狼，与冷酷无情的敌人展开悬殊之战……', 0, '战狼2 (2017)', '20200919/1600486597046.jpg;20200919/1600486599080.jpg;20200919/1600486601298.jpg;20200919/1600486603478.jpg;20200919/1600486606880.jpg;20200919/1600486609247.jpg', 9.51, '2017-08-15 00:00:00', 123, 0.00, 'Action,Plot,Horror,Adventure', '20200919/1600486614347.mp4', b'1', 4);
INSERT INTO `movie_movie` VALUES (15, '2020-09-19 11:41:53', '2020-09-19 11:41:53', '失忆白蛇', '张喆 / 杨天翔 / 唐小喜 / 刘薇 / 张遥函 /', 0, '黄家康, 赵霁', '幽暗洞中，白蛇（张喆 配音）苦苦修炼却不得其法，小青见此情景，将发髻上的碧玉簪子取下，令白蛇攥在手中。那一刻，五百年前的记忆瞬间苏醒。五百年前，晚唐君主昏聩庸碌，掌握邪术的国师只手遮天，命令天下百姓捕蛇修法。为了拯救族群，白蛇冒险行刺，结果却遭遇挫败，还失去了记忆。当她再度醒来，发现自己被一个专门捕蛇的村落所救下，而那个胆小却善良的青年许宣（杨天翔 配音）则吸引了白蛇的注意。与此同时，国师派出爪牙四处追寻白蛇的下落，而蛇族更误解白蛇叛逃人类，接二连三派出杀手。 \r\n　　五百年后的一段姻缘，早在这乱世之间便已缔结……', 0, '白蛇：缘起', '20200919/1600486820658.jpg;20200919/1600486822602.jpg;20200919/1600486824771.jpg;20200919/1600486826698.jpg;20200919/1600486830561.jpg', 0.00, '2020-09-02 00:00:00', 99, 0.00, 'Science,Cartoon,Fantasy', '20200919/1600486864383.mp4', b'1', 0);
INSERT INTO `movie_movie` VALUES (16, '2020-09-19 11:48:17', '2020-12-20 12:47:11', '星际启示录(港) / 星际效应(台) / 星际空间 / 星际之间 / 星际远航 / 星际 / Flora\'s Letter', ' 马修·麦康纳 / 安妮·海瑟薇 / 杰西卡·查斯坦 / 麦肯吉·弗依 / 卡西·阿弗莱克 / 迈克尔·凯恩 / 马特·达蒙 / 蒂莫西·柴勒梅德', 3, '克里斯托弗·诺兰', '近未来的地球黄沙遍野，小麦、秋葵等基础农作物相继因枯萎病灭绝，人类不再像从前那样仰望星空，放纵想象力和灵感的迸发，而是每日在沙尘暴的肆虐下倒数着所剩不多的光景。在家务农的前NASA宇航员库珀（马修·麦康纳 Matthew McConaughey 饰）接连在女儿墨菲（麦肯吉·弗依 Mackenzie Foy 饰）的书房发现奇怪的重力场现象，随即得知在某个未知区域内前NASA成员仍秘密进行一个拯救人类的计划。多年以前土星附近出现神秘虫洞，NASA借机将数名宇航员派遣到遥远的星系寻找适合居住的星球。在布兰德教授（迈克尔·凯恩 Michael Caine 饰）的劝说下，库珀忍痛告别了女儿，和其他三名专家教授女儿艾米莉亚·布兰德（安妮·海瑟薇 Anne Hathaway 饰）、罗米利（大卫·吉雅西 David Gyasi 饰）、多伊尔（韦斯·本特利 Wes B... ', 1, '星际穿越 Interstellar', '20200919/1600487196617.jpg;20200919/1600487198381.jpg;20200919/1600487200518.jpg;20201219/1608352377779.png', 0.00, '2014-07-18 00:00:00', 169, 0.00, 'Plot,Science,Fantasy,Adventure', '20200919/1600487204030.mp4', b'1', 0);
INSERT INTO `movie_movie` VALUES (17, '2020-12-30 12:43:55', '2020-12-30 12:43:55', '不错', '吕竟豪', 1, '吕竟豪', '哈哈哈', 2, '金刚川', '20201230/1609303396997.png;20201230/1609303402930.png', 0.00, '2020-12-20 00:00:00', 127, 0.00, 'Comedy', '', b'1', 0);
COMMIT;

-- ----------------------------
-- Table structure for movie_movie_comment
-- ----------------------------
DROP TABLE IF EXISTS `movie_movie_comment`;
CREATE TABLE `movie_movie_comment` (
                                       `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                       `create_time` datetime NOT NULL,
                                       `update_time` datetime NOT NULL,
                                       `content` varchar(512) NOT NULL,
                                       `rate` decimal(19,2) NOT NULL,
                                       `account_id` bigint(20) NOT NULL,
                                       `movie_id` bigint(20) NOT NULL,
                                       PRIMARY KEY (`id`),
                                       KEY `FKtdpkp5fleo773wbsiqec0y5er` (`account_id`),
                                       KEY `FK95583yxmyntkckphhs5ktmknr` (`movie_id`),
                                       CONSTRAINT `FK95583yxmyntkckphhs5ktmknr` FOREIGN KEY (`movie_id`) REFERENCES `movie_movie` (`id`),
                                       CONSTRAINT `FKtdpkp5fleo773wbsiqec0y5er` FOREIGN KEY (`account_id`) REFERENCES `movie_account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movie_movie_comment
-- ----------------------------
BEGIN;
INSERT INTO `movie_movie_comment` VALUES (1, '2020-10-06 13:26:41', '2020-10-06 13:26:41', '真的很不错！', 9.00, 3, 1);
INSERT INTO `movie_movie_comment` VALUES (2, '2020-10-06 13:27:25', '2020-10-06 13:27:25', '太好了，好久没看到这样的电影了！！！', 10.00, 3, 1);
INSERT INTO `movie_movie_comment` VALUES (3, '2020-10-06 13:46:32', '2020-10-06 13:46:32', '感觉很一般嘛，搞得历史正剧魔幻化！！！', 6.00, 3, 2);
INSERT INTO `movie_movie_comment` VALUES (4, '2020-10-06 13:46:54', '2020-10-06 13:46:54', '还没看过，感觉很不错的样子。', 9.00, 3, 3);
INSERT INTO `movie_movie_comment` VALUES (5, '2020-10-06 13:47:13', '2020-10-06 13:47:13', '这个枕边没看过。', 9.00, 3, 4);
INSERT INTO `movie_movie_comment` VALUES (6, '2020-10-06 13:47:36', '2020-10-06 13:47:36', '这个电影爽的一批，很好看，强烈建议！', 9.00, 3, 5);
INSERT INTO `movie_movie_comment` VALUES (7, '2020-10-06 13:47:59', '2020-10-06 13:47:59', '星爷的经典，必须满分！', 10.00, 3, 6);
INSERT INTO `movie_movie_comment` VALUES (8, '2020-10-06 15:09:05', '2020-10-06 15:09:05', '又看了一遍，真的太好了！', 9.00, 3, 1);
INSERT INTO `movie_movie_comment` VALUES (9, '2020-10-06 15:10:39', '2020-10-06 15:10:39', '好好好好好好好好好好好好好好好好好好好好好好好好好好好好！', 9.00, 3, 6);
INSERT INTO `movie_movie_comment` VALUES (10, '2020-10-06 20:15:21', '2020-10-06 20:15:21', '战狼牛逼！！！', 10.00, 3, 14);
INSERT INTO `movie_movie_comment` VALUES (11, '2020-10-06 23:34:16', '2020-10-06 23:34:16', '吴京是我一直最喜欢的明星！', 9.00, 2, 14);
INSERT INTO `movie_movie_comment` VALUES (12, '2020-10-06 23:34:39', '2020-10-06 23:34:39', '京哥最牛，天下无敌！', 10.00, 2, 14);
INSERT INTO `movie_movie_comment` VALUES (13, '2020-10-06 23:35:03', '2020-10-06 23:35:03', '奥斯卡最佳影片，实至名归！', 10.00, 2, 1);
INSERT INTO `movie_movie_comment` VALUES (14, '2020-12-20 13:21:07', '2020-12-20 13:21:07', '挺好的', 10.00, 3, 3);
INSERT INTO `movie_movie_comment` VALUES (15, '2020-12-20 22:43:21', '2020-12-20 22:43:21', '挺好的电影', 9.00, 3, 14);
COMMIT;

-- ----------------------------
-- Table structure for movie_news
-- ----------------------------
DROP TABLE IF EXISTS `movie_news`;
CREATE TABLE `movie_news` (
                              `id` bigint(20) NOT NULL AUTO_INCREMENT,
                              `create_time` datetime NOT NULL,
                              `update_time` datetime NOT NULL,
                              `abs` varchar(256) NOT NULL,
                              `content` varchar(2560) NOT NULL,
                              `picture` varchar(128) NOT NULL,
                              `title` varchar(128) NOT NULL,
                              `view_num` int(11) DEFAULT NULL,
                              `news_category_id` bigint(20) DEFAULT NULL,
                              PRIMARY KEY (`id`),
                              KEY `FKeo3d5beecg1tuom3di7rtlv2b` (`news_category_id`),
                              CONSTRAINT `FKeo3d5beecg1tuom3di7rtlv2b` FOREIGN KEY (`news_category_id`) REFERENCES `movie_news_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movie_news
-- ----------------------------
BEGIN;
INSERT INTO `movie_news` VALUES (1, '2020-09-22 20:24:23', '2020-12-20 13:31:38', '活动期间，北京银行信用卡持卡用户每自然月可计积分消费金额累计满888元（含），次月10日后即可获得2次10元特惠购票权益。删掉后发神经看大黄房顶上即可舒服哈空间房顶上健康和第三方房顶上见客户', '活动一：活动期间，北京银行信用卡持卡用户每自然月可计积分消费金额累计满888元（含），次月10日后即可获得2次10元特惠购票权益，每份权益最多可购买1张特惠电影票，特惠电影票每月限量1300张，先到先得。\r\n\r\n二、京银行1元观影\r\n\r\n活动二：活动期间，凡通过北京银行南昌分行核发且在活动期间成功激活名下首张北京银行银联标识信用卡的持卡人，于激活次月即可获1元观影权益两次。每份权益最多可购买1张特惠电影票，特惠电影票每月限量1000张，先到先得。\r\n\r\n\r\n\r\n     活动参与流程：\r\n\r\n（1）客户关注、登录“北京银行南昌分行”微信公众号；\r\n\r\n（2）点击菜单-京彩生活-特惠观影，达标客户页面可享受特惠购票权益；\r\n\r\n（3） 点击“立即购票”，选择有“10元抢票”/“1元抢票”标识的影片场次，选座完成后点击“确定”；\r\n\r\n（4） 支付时，选择“北京银行信用卡”或微信中绑定的北京银行信用卡支付，点击“立即支付”；\r\n\r\n（5） 支付完成后，可在“个人中心”中查看订单详情。', '20200922/1600780600459.jpg', '北京银行1元、10元观影', 1, 1);
INSERT INTO `movie_news` VALUES (3, '2020-09-22 21:20:49', '2020-12-19 13:04:36', '活动期间，2019年5月1日至2020年4月30日。白金卡客户无需抢券，每月可至“猿来入此银行信用卡”获取一次白金卡6元观影专享权益。', '活动期间，白金卡客户无需抢券，每月可至“江西银行信用卡”官方微信-粉丝福利-惠生活活动入口自动获取一次白金卡6元观影专享权益。获取6元观影权益成功后，即可在活动当月至全省指定影城享6元看2D或3D电影的劲爆优惠，一次权益最多可购买2张电影票（55元以上影票不参与该活动） \r\n\r\n\r\n活动时间：2019年5月1日至2020年4月30日\r\n\r\n\r\n 使用流程 ：\r\n\r\n\r\n（1）关注“江西银行信用卡”微信公众账号，点击菜单栏-粉丝福利-惠生活菜单。\r\n\r\n（2）点击影票，进入“白金私享家6元观影通道”入口 \r\n\r\n（3）查看活动详情，点击“立即购票” \r\n\r\n（4）选择影片、影院、场次、座位等（跳转支付页面时，未登录用户需先进行登录）\r\n\r\n（5）进入支付页面时，选择“江西银行白金信用卡”支付方式，输入江西银行白金信用卡16位卡号进行验证。验证成功后，跳转银联支付（每个白金卡用户每次最多可购买2张6元电影票，超出票数按正常价结算） \r\n\r\n（6）成功出票后，凭取票码至影院取票机取票即可。', '20200922/1600780845730.png', '盛京银行白金卡6元观影', 23, 4);
COMMIT;

-- ----------------------------
-- Table structure for movie_news_category
-- ----------------------------
DROP TABLE IF EXISTS `movie_news_category`;
CREATE TABLE `movie_news_category` (
                                       `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                       `create_time` datetime NOT NULL,
                                       `update_time` datetime NOT NULL,
                                       `name` varchar(32) NOT NULL,
                                       `remark` varchar(255) DEFAULT NULL,
                                       PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movie_news_category
-- ----------------------------
BEGIN;
INSERT INTO `movie_news_category` VALUES (1, '2020-09-22 20:24:23', '2020-09-22 20:29:46', '电影资讯', '电影资讯');
INSERT INTO `movie_news_category` VALUES (3, '2020-09-22 20:30:19', '2020-09-22 20:30:19', '精彩影评', '');
INSERT INTO `movie_news_category` VALUES (4, '2020-09-22 20:30:24', '2020-09-22 21:10:43', '行业资讯', '');
INSERT INTO `movie_news_category` VALUES (6, '2020-09-22 21:10:50', '2020-09-22 21:10:50', '其他', '');
COMMIT;

-- ----------------------------
-- Table structure for movie_operater_log
-- ----------------------------
DROP TABLE IF EXISTS `movie_operater_log`;
CREATE TABLE `movie_operater_log` (
                                      `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                      `create_time` datetime NOT NULL,
                                      `update_time` datetime NOT NULL,
                                      `content` varchar(1024) NOT NULL,
                                      `operator` varchar(18) NOT NULL,
                                      PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=453 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movie_operater_log
-- ----------------------------
BEGIN;
INSERT INTO `movie_operater_log` VALUES (428, '2020-12-17 14:25:46', '2020-12-17 14:25:46', '用户【是吕竟豪呀】于【2020-12-17 14:25:45】登录系统！', '是吕竟豪呀');
INSERT INTO `movie_operater_log` VALUES (429, '2020-12-17 23:11:59', '2020-12-17 23:11:59', '用户【是吕竟豪呀】于【2020-12-17 23:11:59】登录系统！', '是吕竟豪呀');
INSERT INTO `movie_operater_log` VALUES (430, '2020-12-17 23:49:36', '2020-12-17 23:49:36', '用户【是吕竟豪呀】于【2020-12-17 23:49:36】登录系统！', '是吕竟豪呀');
INSERT INTO `movie_operater_log` VALUES (431, '2020-12-18 01:07:00', '2020-12-18 01:07:00', '用户【是吕竟豪呀】于【2020-12-18 01:06:59】登录系统！', '是吕竟豪呀');
INSERT INTO `movie_operater_log` VALUES (432, '2020-12-18 01:21:42', '2020-12-18 01:21:42', '用户【是吕竟豪呀】于【2020-12-18 01:21:42】登录系统！', '是吕竟豪呀');
INSERT INTO `movie_operater_log` VALUES (433, '2020-12-19 12:32:34', '2020-12-19 12:32:34', '用户【是吕竟豪呀】于【2020-12-19 12:32:34】登录系统！', '是吕竟豪呀');
INSERT INTO `movie_operater_log` VALUES (434, '2020-12-19 13:18:14', '2020-12-19 13:18:14', '添加用户，用户ID：2', '是吕竟豪呀');
INSERT INTO `movie_operater_log` VALUES (435, '2020-12-19 13:18:34', '2020-12-19 13:18:34', '编辑用户，用户名：TestUser0', '是吕竟豪呀');
INSERT INTO `movie_operater_log` VALUES (436, '2020-12-19 14:56:39', '2020-12-19 14:56:39', '用户【是吕竟豪呀】于【2020-12-19 14:56:38】登录系统！', '是吕竟豪呀');
INSERT INTO `movie_operater_log` VALUES (437, '2020-12-19 15:16:14', '2020-12-19 15:16:14', '用户【是吕竟豪呀】于【2020-12-19 15:16:14】登录系统！', '是吕竟豪呀');
INSERT INTO `movie_operater_log` VALUES (438, '2020-12-19 20:27:39', '2020-12-19 20:27:39', '用户【是吕竟豪呀】于【2020-12-19 20:27:38】登录系统！', '是吕竟豪呀');
INSERT INTO `movie_operater_log` VALUES (439, '2020-12-19 23:46:49', '2020-12-19 23:46:49', '用户【是吕竟豪呀】于【2020-12-19 23:46:49】登录系统！', '是吕竟豪呀');
INSERT INTO `movie_operater_log` VALUES (440, '2020-12-19 23:48:26', '2020-12-19 23:48:26', '编辑角色【测试角色】', '是吕竟豪呀');
INSERT INTO `movie_operater_log` VALUES (441, '2020-12-19 23:48:52', '2020-12-19 23:48:52', '编辑用户，用户名：TestUser0', '是吕竟豪呀');
INSERT INTO `movie_operater_log` VALUES (442, '2020-12-20 01:14:08', '2020-12-20 01:14:08', '用户【是吕竟豪呀】于【2020-12-20 01:14:08】登录系统！', '是吕竟豪呀');
INSERT INTO `movie_operater_log` VALUES (443, '2020-12-20 12:36:42', '2020-12-20 12:36:42', '用户【是吕竟豪呀】于【2020-12-20 12:36:41】登录系统！', '是吕竟豪呀');
INSERT INTO `movie_operater_log` VALUES (444, '2020-12-20 13:13:16', '2020-12-20 13:13:16', '用户【是吕竟豪呀】于【2020-12-20 13:13:15】登录系统！', '是吕竟豪呀');
INSERT INTO `movie_operater_log` VALUES (445, '2020-12-20 13:28:30', '2020-12-20 13:28:30', '用户【是吕竟豪呀】于【2020-12-20 13:28:29】登录系统！', '是吕竟豪呀');
INSERT INTO `movie_operater_log` VALUES (446, '2020-12-20 22:33:44', '2020-12-20 22:33:44', '用户【是吕竟豪呀】于【2020-12-20 22:33:43】登录系统！', '是吕竟豪呀');
INSERT INTO `movie_operater_log` VALUES (447, '2020-12-20 22:34:23', '2020-12-20 22:34:23', '用户【是吕竟豪呀】于【2020-12-20 22:34:23】登录系统！', '是吕竟豪呀');
INSERT INTO `movie_operater_log` VALUES (448, '2020-12-22 10:25:57', '2020-12-22 10:25:57', '用户【是吕竟豪呀】于【2020-12-22 10:25:56】登录系统！', '是吕竟豪呀');
INSERT INTO `movie_operater_log` VALUES (449, '2020-12-27 10:19:56', '2020-12-27 10:19:56', '用户【是吕竟豪呀】于【2020-12-27 10:19:55】登录系统！', '是吕竟豪呀');
INSERT INTO `movie_operater_log` VALUES (450, '2020-12-29 12:27:36', '2020-12-29 12:27:36', '用户【是吕竟豪呀】于【2020-12-29 12:27:35】登录系统！', '是吕竟豪呀');
INSERT INTO `movie_operater_log` VALUES (451, '2020-12-29 12:31:19', '2020-12-29 12:31:19', '用户【是吕竟豪呀】于【2020-12-29 12:31:19】登录系统！', '是吕竟豪呀');
INSERT INTO `movie_operater_log` VALUES (452, '2020-12-30 12:37:28', '2020-12-30 12:37:28', '用户【是吕竟豪呀】于【2020-12-30 12:37:28】登录系统！', '是吕竟豪呀');
COMMIT;

-- ----------------------------
-- Table structure for movie_order
-- ----------------------------
DROP TABLE IF EXISTS `movie_order`;
CREATE TABLE `movie_order` (
                               `id` bigint(20) NOT NULL AUTO_INCREMENT,
                               `create_time` datetime NOT NULL,
                               `update_time` datetime NOT NULL,
                               `new_money` decimal(19,2) NOT NULL,
                               `num` int(11) NOT NULL,
                               `old_money` decimal(19,2) NOT NULL,
                               `sn` varchar(32) NOT NULL,
                               `status` int(11) NOT NULL,
                               `account_id` bigint(20) DEFAULT NULL,
                               `cinema_hall_session_id` bigint(20) DEFAULT NULL,
                               PRIMARY KEY (`id`),
                               UNIQUE KEY `UK_cnu3vqqup53vhukxwq1gmeaes` (`sn`),
                               KEY `FK4nx0uodwjhqllqmakjojxhh5h` (`account_id`),
                               KEY `FKopxdihwe2006wcpuwumtneaep` (`cinema_hall_session_id`),
                               CONSTRAINT `FK4nx0uodwjhqllqmakjojxhh5h` FOREIGN KEY (`account_id`) REFERENCES `movie_account` (`id`),
                               CONSTRAINT `FKopxdihwe2006wcpuwumtneaep` FOREIGN KEY (`cinema_hall_session_id`) REFERENCES `movie_cinema_hall_session` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movie_order
-- ----------------------------
BEGIN;
INSERT INTO `movie_order` VALUES (5, '2020-10-05 18:40:35', '2020-10-05 18:40:35', 100.00, 2, 132.00, 'B0F14C6961E5432A9A3131901ABCD050', -1, 3, 16);
INSERT INTO `movie_order` VALUES (7, '2020-10-05 20:05:07', '2020-10-05 20:05:07', 90.00, 2, 160.00, '818F04092571481988B9E12018C2D8D0', -1, 3, 2);
INSERT INTO `movie_order` VALUES (8, '2020-10-05 20:09:33', '2020-10-05 20:09:33', 90.00, 2, 160.00, '1556F8B7D2924F639414BED65888B126', -1, 3, 2);
INSERT INTO `movie_order` VALUES (9, '2020-10-05 20:14:02', '2020-10-05 20:14:02', 90.00, 2, 160.00, '1DA77B6B8029493CB1F62B661139FC51', -1, 3, 2);
INSERT INTO `movie_order` VALUES (10, '2020-10-05 21:01:40', '2020-10-05 21:01:40', 90.00, 2, 160.00, 'EC72ED5D0A5B41BC830A15CA30BF4BAF', 1, 3, 2);
INSERT INTO `movie_order` VALUES (11, '2020-10-05 21:08:18', '2020-10-05 21:08:18', 90.00, 2, 160.00, 'E94AB06246B04039B3612BA42F6CD11A', -1, 3, 2);
INSERT INTO `movie_order` VALUES (12, '2020-10-05 22:53:31', '2020-10-05 22:53:31', 180.00, 4, 320.00, '993C436F83DC4BE29E14104CBA9025C9', -1, 3, 2);
INSERT INTO `movie_order` VALUES (13, '2020-10-06 13:48:37', '2020-10-06 13:48:37', 126.00, 2, 200.00, '0438D65D9ABD4D80816457ACD9265B02', -1, 3, 7);
INSERT INTO `movie_order` VALUES (14, '2020-10-07 12:58:58', '2020-10-07 12:58:58', 180.00, 4, 320.00, 'F945D593BF3F48BFAE36107885457064', 1, 3, 2);
INSERT INTO `movie_order` VALUES (15, '2020-10-08 16:06:13', '2020-10-08 16:06:13', 112.00, 2, 132.00, '6489147DE0794E21B0179728E8854778', 1, 4, 11);
INSERT INTO `movie_order` VALUES (16, '2020-12-20 13:05:19', '2020-12-20 13:05:19', 80.00, 2, 90.00, '46B8BAB719DB41288BA4C30716AF738F', 1, 3, 18);
INSERT INTO `movie_order` VALUES (17, '2020-12-20 13:13:47', '2020-12-20 13:13:47', 240.00, 4, 240.00, '3051468EA1D4462695C89F4DC83C5E77', 0, 3, 19);
INSERT INTO `movie_order` VALUES (18, '2020-12-20 13:26:59', '2020-12-20 13:26:59', 240.00, 4, 240.00, '8BEABADB5B194678855ACF418D697D2B', 1, 3, 19);
INSERT INTO `movie_order` VALUES (19, '2020-12-20 22:45:05', '2020-12-20 22:45:05', 90.00, 2, 200.00, '2C9021F799B34BFFB8DFC19A9D4E4EED', 1, 3, 1);
INSERT INTO `movie_order` VALUES (20, '2020-12-29 12:33:04', '2020-12-29 12:33:04', 135.00, 3, 300.00, 'AC4FB23CA69945CCB3D157EE3D64878B', 1, 3, 1);
INSERT INTO `movie_order` VALUES (21, '2020-12-30 12:39:07', '2020-12-30 12:39:07', 165.00, 3, 300.00, 'EB21C0E01B6C4FE8A4D9213D92D8960F', 1, 3, 15);
COMMIT;

-- ----------------------------
-- Table structure for movie_order_auth
-- ----------------------------
DROP TABLE IF EXISTS `movie_order_auth`;
CREATE TABLE `movie_order_auth` (
                                    `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                    `create_time` datetime NOT NULL,
                                    `update_time` datetime NOT NULL,
                                    `mac` varchar(32) DEFAULT NULL,
                                    `order_sn` varchar(18) NOT NULL,
                                    `phone` varchar(12) NOT NULL,
                                    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movie_order_auth
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for movie_order_item
-- ----------------------------
DROP TABLE IF EXISTS `movie_order_item`;
CREATE TABLE `movie_order_item` (
                                    `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                    `create_time` datetime NOT NULL,
                                    `update_time` datetime NOT NULL,
                                    `money` decimal(19,2) NOT NULL,
                                    `cinema_hall_seat_id` bigint(20) DEFAULT NULL,
                                    `order_id` bigint(20) DEFAULT NULL,
                                    PRIMARY KEY (`id`),
                                    KEY `FK4v4n8mbmsr8kjhp6opof81sqy` (`cinema_hall_seat_id`),
                                    KEY `FKnptvb10fv8g48jsej6qj0d4aw` (`order_id`),
                                    CONSTRAINT `FK4v4n8mbmsr8kjhp6opof81sqy` FOREIGN KEY (`cinema_hall_seat_id`) REFERENCES `movie_cinema_hall_seat` (`id`),
                                    CONSTRAINT `FKnptvb10fv8g48jsej6qj0d4aw` FOREIGN KEY (`order_id`) REFERENCES `movie_order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movie_order_item
-- ----------------------------
BEGIN;
INSERT INTO `movie_order_item` VALUES (4, '2020-10-05 18:40:35', '2020-10-05 18:40:35', 50.00, 104, 5);
INSERT INTO `movie_order_item` VALUES (5, '2020-10-05 18:40:35', '2020-10-05 18:40:35', 50.00, 105, 5);
INSERT INTO `movie_order_item` VALUES (7, '2020-10-05 20:05:07', '2020-10-05 20:05:07', 45.00, 84, 7);
INSERT INTO `movie_order_item` VALUES (8, '2020-10-05 20:05:07', '2020-10-05 20:05:07', 45.00, 85, 7);
INSERT INTO `movie_order_item` VALUES (9, '2020-10-05 20:09:34', '2020-10-05 20:09:34', 45.00, 84, 8);
INSERT INTO `movie_order_item` VALUES (10, '2020-10-05 20:09:34', '2020-10-05 20:09:34', 45.00, 85, 8);
INSERT INTO `movie_order_item` VALUES (11, '2020-10-05 20:14:02', '2020-10-05 20:14:02', 45.00, 84, 9);
INSERT INTO `movie_order_item` VALUES (12, '2020-10-05 20:14:02', '2020-10-05 20:14:02', 45.00, 85, 9);
INSERT INTO `movie_order_item` VALUES (13, '2020-10-05 21:01:40', '2020-10-05 21:01:40', 45.00, 84, 10);
INSERT INTO `movie_order_item` VALUES (14, '2020-10-05 21:01:40', '2020-10-05 21:01:40', 45.00, 85, 10);
INSERT INTO `movie_order_item` VALUES (15, '2020-10-05 21:08:18', '2020-10-05 21:08:18', 45.00, 113, 11);
INSERT INTO `movie_order_item` VALUES (16, '2020-10-05 21:08:18', '2020-10-05 21:08:18', 45.00, 115, 11);
INSERT INTO `movie_order_item` VALUES (17, '2020-10-05 22:53:31', '2020-10-05 22:53:31', 45.00, 94, 12);
INSERT INTO `movie_order_item` VALUES (18, '2020-10-05 22:53:31', '2020-10-05 22:53:31', 45.00, 95, 12);
INSERT INTO `movie_order_item` VALUES (19, '2020-10-05 22:53:31', '2020-10-05 22:53:31', 45.00, 96, 12);
INSERT INTO `movie_order_item` VALUES (20, '2020-10-05 22:53:31', '2020-10-05 22:53:31', 45.00, 97, 12);
INSERT INTO `movie_order_item` VALUES (21, '2020-10-06 13:48:37', '2020-10-06 13:48:37', 63.00, 113, 13);
INSERT INTO `movie_order_item` VALUES (22, '2020-10-06 13:48:37', '2020-10-06 13:48:37', 63.00, 114, 13);
INSERT INTO `movie_order_item` VALUES (23, '2020-10-07 12:58:58', '2020-10-07 12:58:58', 45.00, 95, 14);
INSERT INTO `movie_order_item` VALUES (24, '2020-10-07 12:58:58', '2020-10-07 12:58:58', 45.00, 96, 14);
INSERT INTO `movie_order_item` VALUES (25, '2020-10-07 12:58:58', '2020-10-07 12:58:58', 45.00, 104, 14);
INSERT INTO `movie_order_item` VALUES (26, '2020-10-07 12:58:58', '2020-10-07 12:58:58', 45.00, 105, 14);
INSERT INTO `movie_order_item` VALUES (27, '2020-10-08 16:06:13', '2020-10-08 16:06:13', 56.00, 95, 15);
INSERT INTO `movie_order_item` VALUES (28, '2020-10-08 16:06:13', '2020-10-08 16:06:13', 56.00, 96, 15);
INSERT INTO `movie_order_item` VALUES (29, '2020-12-20 13:05:19', '2020-12-20 13:05:19', 40.00, 181, 16);
INSERT INTO `movie_order_item` VALUES (30, '2020-12-20 13:05:19', '2020-12-20 13:05:19', 40.00, 204, 16);
INSERT INTO `movie_order_item` VALUES (31, '2020-12-20 13:13:47', '2020-12-20 13:13:47', 60.00, 35, 17);
INSERT INTO `movie_order_item` VALUES (32, '2020-12-20 13:13:47', '2020-12-20 13:13:47', 60.00, 36, 17);
INSERT INTO `movie_order_item` VALUES (33, '2020-12-20 13:13:47', '2020-12-20 13:13:47', 60.00, 37, 17);
INSERT INTO `movie_order_item` VALUES (34, '2020-12-20 13:13:47', '2020-12-20 13:13:47', 60.00, 44, 17);
INSERT INTO `movie_order_item` VALUES (35, '2020-12-20 13:26:59', '2020-12-20 13:26:59', 60.00, 51, 18);
INSERT INTO `movie_order_item` VALUES (36, '2020-12-20 13:26:59', '2020-12-20 13:26:59', 60.00, 52, 18);
INSERT INTO `movie_order_item` VALUES (37, '2020-12-20 13:26:59', '2020-12-20 13:26:59', 60.00, 53, 18);
INSERT INTO `movie_order_item` VALUES (38, '2020-12-20 13:26:59', '2020-12-20 13:26:59', 60.00, 60, 18);
INSERT INTO `movie_order_item` VALUES (39, '2020-12-20 22:45:05', '2020-12-20 22:45:05', 45.00, 36, 19);
INSERT INTO `movie_order_item` VALUES (40, '2020-12-20 22:45:05', '2020-12-20 22:45:05', 45.00, 37, 19);
INSERT INTO `movie_order_item` VALUES (41, '2020-12-29 12:33:04', '2020-12-29 12:33:04', 45.00, 45, 20);
INSERT INTO `movie_order_item` VALUES (42, '2020-12-29 12:33:04', '2020-12-29 12:33:04', 45.00, 52, 20);
INSERT INTO `movie_order_item` VALUES (43, '2020-12-29 12:33:04', '2020-12-29 12:33:04', 45.00, 54, 20);
INSERT INTO `movie_order_item` VALUES (44, '2020-12-30 12:39:07', '2020-12-30 12:39:07', 55.00, 111, 21);
INSERT INTO `movie_order_item` VALUES (45, '2020-12-30 12:39:07', '2020-12-30 12:39:07', 55.00, 113, 21);
INSERT INTO `movie_order_item` VALUES (46, '2020-12-30 12:39:07', '2020-12-30 12:39:07', 55.00, 121, 21);
COMMIT;

-- ----------------------------
-- Table structure for movie_pay_log
-- ----------------------------
DROP TABLE IF EXISTS `movie_pay_log`;
CREATE TABLE `movie_pay_log` (
                                 `id` bigint(20) NOT NULL AUTO_INCREMENT,
                                 `create_time` datetime NOT NULL,
                                 `update_time` datetime NOT NULL,
                                 `money` decimal(19,2) NOT NULL,
                                 `payment_type` int(11) NOT NULL,
                                 `sn` varchar(32) NOT NULL,
                                 `status` int(11) NOT NULL,
                                 `account_id` bigint(20) DEFAULT NULL,
                                 PRIMARY KEY (`id`),
                                 UNIQUE KEY `UK_akwat47xp16622s7uwb44lnfv` (`sn`),
                                 KEY `FK2op86eg6t9v1j7imlk7c1vcur` (`account_id`),
                                 CONSTRAINT `FK2op86eg6t9v1j7imlk7c1vcur` FOREIGN KEY (`account_id`) REFERENCES `movie_account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movie_pay_log
-- ----------------------------
BEGIN;
INSERT INTO `movie_pay_log` VALUES (6, '2020-10-01 17:00:59', '2020-10-01 14:01:03', 55.00, 0, 'fdgdgfdgsdfdsfds', 0, 1);
INSERT INTO `movie_pay_log` VALUES (7, '2020-10-01 22:08:36', '2020-10-04 22:09:16', 100.00, 0, '0B2A1E4D4157471AA3114CCF29D55D03', 1, 3);
INSERT INTO `movie_pay_log` VALUES (8, '2020-10-01 22:32:50', '2020-10-04 22:34:32', 16.68, 0, '62D5684A5DE2464282BAE0F9404082CD', 1, 3);
INSERT INTO `movie_pay_log` VALUES (9, '2020-10-02 23:23:38', '2020-10-05 23:23:38', 500.00, 0, 'E28FE107F5E04C5CBA38E690E3A3425C', 0, 3);
INSERT INTO `movie_pay_log` VALUES (10, '2020-10-03 13:05:30', '2020-10-07 13:05:53', 1688.98, 0, 'CD9A8E0194C6487FB78A5DDF85B79D95', 1, 3);
INSERT INTO `movie_pay_log` VALUES (11, '2020-10-04 13:58:11', '2020-10-08 13:58:11', 200.00, 0, '7C98DDB7999A40D99E87F33E24765965', 1, 2);
INSERT INTO `movie_pay_log` VALUES (12, '2020-10-05 13:58:46', '2020-10-08 13:58:46', 300.00, 0, '5AF2A4284F0A4E70B2E662A20A6689B5', 0, 2);
INSERT INTO `movie_pay_log` VALUES (13, '2020-10-06 13:58:51', '2020-10-08 13:58:51', 500.00, 0, 'D9543FC7D0FC4762956DD339C7609B81', 1, 2);
INSERT INTO `movie_pay_log` VALUES (14, '2020-10-07 13:58:55', '2020-10-08 13:58:55', 100.00, 0, 'F380AD4910564C76BAF65AE8292DBE43', 0, 2);
INSERT INTO `movie_pay_log` VALUES (15, '2020-10-08 13:59:00', '2020-10-08 13:59:00', 334.00, 0, '0A9D02DB764A4F258A4EE7479E3D51E0', 0, 2);
INSERT INTO `movie_pay_log` VALUES (16, '2020-10-03 23:23:38', '2020-10-08 14:04:07', 666.00, 0, 'fdgdgfdgsdfdsfds1', 0, 1);
INSERT INTO `movie_pay_log` VALUES (17, '2020-10-06 13:58:51', '2020-10-08 14:24:28', 333.00, 0, 'fdgdgfdgsdfdsfds2', 0, 1);
INSERT INTO `movie_pay_log` VALUES (18, '2020-10-06 13:58:51', '2020-10-08 14:25:08', 600.00, 0, 'fdgdgfdgsdfdsfds3', 0, 1);
INSERT INTO `movie_pay_log` VALUES (19, '2020-10-08 16:04:17', '2020-10-08 16:05:01', 520.00, 0, 'FE2ED51C1CEC44799386D8176270A186', 1, 4);
INSERT INTO `movie_pay_log` VALUES (20, '2020-12-17 23:53:05', '2020-12-17 23:53:05', 100.00, 0, '067FA92C0EF54D66AC26A624F3FFF6F1', 0, 3);
INSERT INTO `movie_pay_log` VALUES (21, '2020-12-17 23:53:16', '2020-12-17 23:53:16', 100.00, 0, 'B8DD0C470A1E443C976FA86EECE75394', 0, 3);
INSERT INTO `movie_pay_log` VALUES (22, '2020-12-20 13:06:28', '2020-12-20 13:06:28', 500.00, 0, '38631AFF860E44679D6F5B653158CB20', 0, 3);
INSERT INTO `movie_pay_log` VALUES (23, '2020-12-20 13:06:33', '2020-12-20 13:06:33', 500.00, 0, '673182D19BB845E7A5C5683EF5CE606E', 0, 3);
INSERT INTO `movie_pay_log` VALUES (24, '2020-12-20 13:19:49', '2020-12-20 13:19:49', 300.00, 0, 'A0969610C3BC4A2DAD06EF2C13A8348C', 0, 3);
INSERT INTO `movie_pay_log` VALUES (25, '2020-12-20 22:41:53', '2020-12-20 22:41:53', 200.00, 0, 'D84D5DEAF96340CC9531887F5DC38134', 0, 3);
INSERT INTO `movie_pay_log` VALUES (26, '2020-12-22 10:24:01', '2020-12-22 10:24:01', 300.00, 0, 'E4FA1A12B30E43EC80346213B45BA19C', 0, 3);
INSERT INTO `movie_pay_log` VALUES (27, '2020-12-29 12:28:22', '2020-12-29 12:28:22', 500.00, 0, '5C8F3B5FF58345BEB6E018D89B2BCF59', 0, 3);
INSERT INTO `movie_pay_log` VALUES (28, '2020-12-30 12:39:21', '2020-12-30 12:39:21', 300.00, 0, '441ADEF071C44C64AD98B88363B86137', 0, 3);
COMMIT;

-- ----------------------------
-- Table structure for movie_role
-- ----------------------------
DROP TABLE IF EXISTS `movie_role`;
CREATE TABLE `movie_role` (
                              `id` bigint(20) NOT NULL AUTO_INCREMENT,
                              `create_time` datetime NOT NULL,
                              `update_time` datetime NOT NULL,
                              `name` varchar(18) NOT NULL,
                              `remark` varchar(128) DEFAULT NULL,
                              `status` int(11) DEFAULT NULL,
                              PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movie_role
-- ----------------------------
BEGIN;
INSERT INTO `movie_role` VALUES (1, '2020-08-15 13:16:38', '2020-10-07 12:47:31', '超级管理员', '超级管理员拥有最高权限。', 1);
INSERT INTO `movie_role` VALUES (2, '2020-08-15 13:18:57', '2020-12-21 22:18:43', '普通管理员', '普通管理员只有部分权限', 1);
INSERT INTO `movie_role` VALUES (4, '2020-08-21 20:11:00', '2020-12-19 23:48:26', '测试角色', 'sadsa', 1);
COMMIT;

-- ----------------------------
-- Table structure for movie_role_authorities
-- ----------------------------
DROP TABLE IF EXISTS `movie_role_authorities`;
CREATE TABLE `movie_role_authorities` (
                                          `role_id` bigint(20) NOT NULL,
                                          `authorities_id` bigint(20) NOT NULL,
                                          KEY `FKhj7ap1o1cjrl7enr9arf5f2qp` (`authorities_id`),
                                          KEY `FKg3xdaexmr0x1qx8omhvjtk46d` (`role_id`),
                                          CONSTRAINT `FKg3xdaexmr0x1qx8omhvjtk46d` FOREIGN KEY (`role_id`) REFERENCES `movie_role` (`id`),
                                          CONSTRAINT `FKhj7ap1o1cjrl7enr9arf5f2qp` FOREIGN KEY (`authorities_id`) REFERENCES `movie_menu` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movie_role_authorities
-- ----------------------------
BEGIN;
INSERT INTO `movie_role_authorities` VALUES (2, 2);
INSERT INTO `movie_role_authorities` VALUES (2, 3);
INSERT INTO `movie_role_authorities` VALUES (2, 5);
INSERT INTO `movie_role_authorities` VALUES (2, 7);
INSERT INTO `movie_role_authorities` VALUES (2, 11);
INSERT INTO `movie_role_authorities` VALUES (2, 13);
INSERT INTO `movie_role_authorities` VALUES (2, 16);
INSERT INTO `movie_role_authorities` VALUES (1, 2);
INSERT INTO `movie_role_authorities` VALUES (1, 3);
INSERT INTO `movie_role_authorities` VALUES (1, 5);
INSERT INTO `movie_role_authorities` VALUES (1, 8);
INSERT INTO `movie_role_authorities` VALUES (1, 9);
INSERT INTO `movie_role_authorities` VALUES (1, 7);
INSERT INTO `movie_role_authorities` VALUES (1, 10);
INSERT INTO `movie_role_authorities` VALUES (1, 11);
INSERT INTO `movie_role_authorities` VALUES (1, 12);
INSERT INTO `movie_role_authorities` VALUES (1, 13);
INSERT INTO `movie_role_authorities` VALUES (1, 14);
INSERT INTO `movie_role_authorities` VALUES (1, 15);
INSERT INTO `movie_role_authorities` VALUES (1, 16);
INSERT INTO `movie_role_authorities` VALUES (1, 19);
INSERT INTO `movie_role_authorities` VALUES (1, 20);
INSERT INTO `movie_role_authorities` VALUES (1, 21);
INSERT INTO `movie_role_authorities` VALUES (1, 22);
INSERT INTO `movie_role_authorities` VALUES (1, 23);
INSERT INTO `movie_role_authorities` VALUES (1, 24);
INSERT INTO `movie_role_authorities` VALUES (1, 25);
INSERT INTO `movie_role_authorities` VALUES (1, 26);
INSERT INTO `movie_role_authorities` VALUES (1, 27);
INSERT INTO `movie_role_authorities` VALUES (1, 28);
INSERT INTO `movie_role_authorities` VALUES (1, 29);
INSERT INTO `movie_role_authorities` VALUES (1, 30);
INSERT INTO `movie_role_authorities` VALUES (1, 31);
INSERT INTO `movie_role_authorities` VALUES (1, 32);
INSERT INTO `movie_role_authorities` VALUES (1, 44);
INSERT INTO `movie_role_authorities` VALUES (1, 33);
INSERT INTO `movie_role_authorities` VALUES (1, 34);
INSERT INTO `movie_role_authorities` VALUES (1, 35);
INSERT INTO `movie_role_authorities` VALUES (1, 36);
INSERT INTO `movie_role_authorities` VALUES (1, 37);
INSERT INTO `movie_role_authorities` VALUES (1, 38);
INSERT INTO `movie_role_authorities` VALUES (1, 74);
INSERT INTO `movie_role_authorities` VALUES (1, 75);
INSERT INTO `movie_role_authorities` VALUES (1, 39);
INSERT INTO `movie_role_authorities` VALUES (1, 40);
INSERT INTO `movie_role_authorities` VALUES (1, 41);
INSERT INTO `movie_role_authorities` VALUES (1, 42);
INSERT INTO `movie_role_authorities` VALUES (1, 43);
INSERT INTO `movie_role_authorities` VALUES (1, 76);
INSERT INTO `movie_role_authorities` VALUES (1, 77);
INSERT INTO `movie_role_authorities` VALUES (1, 45);
INSERT INTO `movie_role_authorities` VALUES (1, 46);
INSERT INTO `movie_role_authorities` VALUES (1, 47);
INSERT INTO `movie_role_authorities` VALUES (1, 48);
INSERT INTO `movie_role_authorities` VALUES (1, 49);
INSERT INTO `movie_role_authorities` VALUES (1, 50);
INSERT INTO `movie_role_authorities` VALUES (1, 56);
INSERT INTO `movie_role_authorities` VALUES (1, 51);
INSERT INTO `movie_role_authorities` VALUES (1, 52);
INSERT INTO `movie_role_authorities` VALUES (1, 53);
INSERT INTO `movie_role_authorities` VALUES (1, 54);
INSERT INTO `movie_role_authorities` VALUES (1, 55);
INSERT INTO `movie_role_authorities` VALUES (1, 57);
INSERT INTO `movie_role_authorities` VALUES (1, 58);
INSERT INTO `movie_role_authorities` VALUES (1, 59);
INSERT INTO `movie_role_authorities` VALUES (1, 60);
INSERT INTO `movie_role_authorities` VALUES (1, 61);
INSERT INTO `movie_role_authorities` VALUES (1, 62);
INSERT INTO `movie_role_authorities` VALUES (1, 63);
INSERT INTO `movie_role_authorities` VALUES (1, 64);
INSERT INTO `movie_role_authorities` VALUES (1, 65);
INSERT INTO `movie_role_authorities` VALUES (1, 66);
INSERT INTO `movie_role_authorities` VALUES (1, 67);
INSERT INTO `movie_role_authorities` VALUES (1, 68);
INSERT INTO `movie_role_authorities` VALUES (1, 69);
INSERT INTO `movie_role_authorities` VALUES (1, 70);
INSERT INTO `movie_role_authorities` VALUES (1, 71);
INSERT INTO `movie_role_authorities` VALUES (1, 72);
INSERT INTO `movie_role_authorities` VALUES (1, 73);
INSERT INTO `movie_role_authorities` VALUES (4, 2);
INSERT INTO `movie_role_authorities` VALUES (4, 13);
INSERT INTO `movie_role_authorities` VALUES (4, 15);
COMMIT;

-- ----------------------------
-- Table structure for movie_user
-- ----------------------------
DROP TABLE IF EXISTS `movie_user`;
CREATE TABLE `movie_user` (
                              `id` bigint(20) NOT NULL AUTO_INCREMENT,
                              `create_time` datetime NOT NULL,
                              `update_time` datetime NOT NULL,
                              `email` varchar(32) DEFAULT NULL,
                              `head_pic` varchar(128) DEFAULT NULL,
                              `mobile` varchar(12) DEFAULT NULL,
                              `password` varchar(32) NOT NULL,
                              `sex` int(11) DEFAULT NULL,
                              `status` int(11) DEFAULT NULL,
                              `username` varchar(18) NOT NULL,
                              `role_id` bigint(20) DEFAULT NULL,
                              PRIMARY KEY (`id`),
                              UNIQUE KEY `UK_btsosjytrl4hu7fnm1intcpo8` (`username`),
                              KEY `FKg09b8o67eu61st68rv6nk8npj` (`role_id`),
                              CONSTRAINT `FKg09b8o67eu61st68rv6nk8npj` FOREIGN KEY (`role_id`) REFERENCES `movie_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of movie_user
-- ----------------------------
BEGIN;
INSERT INTO `movie_user` VALUES (1, '2020-08-18 19:18:53', '2020-12-29 12:43:34', '2018213143@bupt.edu.cn', '20201229/1609217010517.png', '13916493018', '123456', 1, 1, '是吕竟豪呀', 1);
INSERT INTO `movie_user` VALUES (5, '2020-08-20 20:42:19', '2020-12-19 23:48:52', 'test@qq.com', '20200323/1584956702094.png', '13356565656', '123456', 1, 0, 'TestUser0', 4);
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
