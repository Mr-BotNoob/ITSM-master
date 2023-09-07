/*
 Navicat Premium Data Transfer

 Source Server         : Test DB
 Source Server Type    : MySQL
 Source Server Version : 100406 (10.4.6-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : testdb

 Target Server Type    : MySQL
 Target Server Version : 100406 (10.4.6-MariaDB)
 File Encoding         : 65001

 Date: 07/09/2023 16:08:12
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for activitylogs
-- ----------------------------
DROP TABLE IF EXISTS `activitylogs`;
CREATE TABLE `activitylogs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` int NOT NULL,
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of activitylogs
-- ----------------------------
INSERT INTO `activitylogs` VALUES (1, 2, 'user', 'user added a new Machine : Livin', '7NaOqV8YDlKFtOSbE3MFaHx24N90wQntfjqP0mDn', '2023-08-06 14:45:23', '2023-08-06 14:45:23');
INSERT INTO `activitylogs` VALUES (2, 2, 'user', 'user added a new Reconfigure', 'jsf3yRgwM9iHsQc49bLuLzmL5cgSqdJbwDqVuzFD', '2023-08-06 14:46:27', '2023-08-06 14:46:27');
INSERT INTO `activitylogs` VALUES (3, 10, 'Team Capacity', 'Team Capacity changes status on the Reconfigure Machine D0001', 'U8UqwaPIwF28bLQZKzWl8IQusS6RAU6YKcc0d9iQ', '2023-08-06 14:47:05', '2023-08-06 14:47:05');
INSERT INTO `activitylogs` VALUES (4, 9, 'Team Cloud', 'Team Cloud changes status on the Reconfigure Machine D0001', 'Q895ZCMOIAMQsHKbESqIoQgiIRW9and7tdvTLdwJ', '2023-08-06 14:47:41', '2023-08-06 14:47:41');
INSERT INTO `activitylogs` VALUES (5, 9, 'Team Cloud', 'Team Cloud changes status on the Reconfigure Machine D0001', 'C6Btn6CgF8yVXRor2Fuwb5a2b84g7FbKvwmbiG8k', '2023-08-06 14:47:51', '2023-08-06 14:47:51');
INSERT INTO `activitylogs` VALUES (6, 2, 'user', 'user print a history report', 'KImvfDwXVD4nAQ0JqszYGNbwqivTy1KGmxBjfUOS', '2023-08-06 14:48:36', '2023-08-06 14:48:36');
INSERT INTO `activitylogs` VALUES (7, 2, 'user', 'user added a new Machine : Bubut', 'VTOBwETLBGNVsud0Ekr4N67YCODBRPLiEfSNEKBZ', '2023-08-23 05:55:09', '2023-08-23 05:55:09');
INSERT INTO `activitylogs` VALUES (8, 2, 'user', 'user added a new Reconfigure', 'QYDoFDDuB7vqhF2T3yMjdTMBwZEJw0BE35KJck1l', '2023-08-23 05:56:15', '2023-08-23 05:56:15');
INSERT INTO `activitylogs` VALUES (9, 2, 'user', 'user added a new Reconfigure', '4MzlPtOqB1rtjMlOSCJDsGGCKLvs9jgSX2VLPY7D', '2023-08-23 05:57:29', '2023-08-23 05:57:29');
INSERT INTO `activitylogs` VALUES (10, 2, 'user', 'user added a new Deployment', 'vH4sxen19DynOhqdqhQQmowswn6L2f12G1VUZagl', '2023-08-23 06:07:36', '2023-08-23 06:07:36');
INSERT INTO `activitylogs` VALUES (11, 2, 'user', 'user added a new Deployment', 'ZXfPaWQgPUoTuuZLR406fKYX9YcsWhX9juRKwHsB', '2023-08-23 06:09:55', '2023-08-23 06:09:55');

-- ----------------------------
-- Table structure for annualschedulelists
-- ----------------------------
DROP TABLE IF EXISTS `annualschedulelists`;
CREATE TABLE `annualschedulelists`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `schedule_list_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `schedule_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` int NOT NULL,
  `lane` int NOT NULL,
  `machine_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `schedule_date` date NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of annualschedulelists
-- ----------------------------

-- ----------------------------
-- Table structure for annualschedules
-- ----------------------------
DROP TABLE IF EXISTS `annualschedules`;
CREATE TABLE `annualschedules`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `schedule_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_user` int NOT NULL,
  `lane` int NOT NULL,
  `machine_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` int NOT NULL,
  `period` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of annualschedules
-- ----------------------------

-- ----------------------------
-- Table structure for deployments
-- ----------------------------
DROP TABLE IF EXISTS `deployments`;
CREATE TABLE `deployments`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` int NOT NULL,
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `repair_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `repair_date` date NOT NULL,
  `lane` int NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `appname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `os` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpu` int NULL DEFAULT NULL,
  `memory` int NULL DEFAULT NULL,
  `disk` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `crq_remedy` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of deployments
-- ----------------------------
INSERT INTO `deployments` VALUES (10, 2, 'user', 'D0001', '2023-08-23', 2, 'open', '2023-08-23 06:07:36', '2023-08-23 06:07:36', 'RVYOUAN1ABC22LP', 'RedHat 8', 'Plaza', 32, 48, 'none', 'M0002');
INSERT INTO `deployments` VALUES (11, 2, 'user', 'D0002', '2023-08-23', 2, 'open', '2023-08-23 06:09:55', '2023-08-23 06:09:55', 'PVLIVIN01ABC23LP', 'RedHat 8', 'Rempoa', 12, 12, '-', 'M0002');

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for improvements
-- ----------------------------
DROP TABLE IF EXISTS `improvements`;
CREATE TABLE `improvements`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` int NOT NULL,
  `user` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `repair_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `repair_date` date NOT NULL,
  `lane` int NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `vmname` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `os` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ipaddress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cpu` int NULL DEFAULT NULL,
  `memory` int NULL DEFAULT NULL,
  `disk` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `crq_remedy` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of improvements
-- ----------------------------
INSERT INTO `improvements` VALUES (13, 2, 'user', 'D0001', '2023-08-06', 3, 'close', '2023-08-06 14:46:27', '2023-08-06 14:47:51', 'PVLIVIN01ABC23LP', 'RedHat 8', '10.204.280.99', 24, 40, 'Disk 1: 1TB', 'M0001');
INSERT INTO `improvements` VALUES (14, 2, 'user', 'D0001', '2023-08-23', 2, 'open', '2023-08-23 05:56:15', '2023-08-23 05:56:15', 'RVYOUAN1ABC22LD', 'Windows server 2017', 'Rempoa', 3, 12, 'Disk 1:100 GB', 'M0002');
INSERT INTO `improvements` VALUES (15, 2, 'user', 'R0002', '2023-08-23', 2, 'open', '2023-08-23 05:57:29', '2023-08-23 05:57:29', 'RVYOUAN1ABC22LD', 'RedHat 8', '10.22.19.00', 4, 16, 'none', 'M0002');

-- ----------------------------
-- Table structure for lanes
-- ----------------------------
DROP TABLE IF EXISTS `lanes`;
CREATE TABLE `lanes`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `lane` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of lanes
-- ----------------------------
INSERT INTO `lanes` VALUES (2, 'Development VPC', 'hPnszAe0UHTjKrZs9CoZoQ8BYfsrW3MNNb1OuDZ8', '2023-07-31 11:10:58', '2023-07-31 11:10:58');
INSERT INTO `lanes` VALUES (3, 'Production VPC', '2RcNAZ5qjiBRsH5N4LnsXstH1Ch1auT6o9UF7Nmr', '2023-07-31 11:11:12', '2023-07-31 11:11:12');
INSERT INTO `lanes` VALUES (4, 'Development Konven', 'Nmfv8yMoJtlsl3FTVzQHQ2Vo9zvgtddEIQSncwKj', '2023-08-05 14:49:49', '2023-08-05 14:49:49');
INSERT INTO `lanes` VALUES (5, 'Production Konven', 'SZxGdXhWmNemigXt7u30Rkp6pFPS5jRZIqXphfLs', '2023-08-05 14:50:09', '2023-08-05 14:50:09');

-- ----------------------------
-- Table structure for machines
-- ----------------------------
DROP TABLE IF EXISTS `machines`;
CREATE TABLE `machines`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `machine_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lane` int NOT NULL,
  `machine_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `crq_remedy` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nota_permintaan` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_eawg` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of machines
-- ----------------------------
INSERT INTO `machines` VALUES (7, 'M0001', 3, 'Livin', 'Very Critical', 'Pandu Yashwanta', 'yM65bbgJsODsuyOGcjYBN74l5L4TPKVA5dX2OTBg', '2023-08-06 14:45:23', '2023-08-06 14:45:23', 'CRQ33224567890', 'IFS/17/03/2023', '183238', 'pandu.yashwanta@bankmandiri.co.id');
INSERT INTO `machines` VALUES (8, 'M0002', 2, 'Bubut', 'Moderate', 'Made Slebew', 'LBJAX9pyYNtOF3vcVijEIkDgPor1HkKrQ3KpWaZJ', '2023-08-23 05:55:09', '2023-08-23 05:55:09', 'CRQ12345678', 'IFS/17/03/2023', '183238', 'made@slebew.com');

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `id_user` int NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of messages
-- ----------------------------
INSERT INTO `messages` VALUES (2, 2, 'user.png', 'user', 'Boleh bantu untuk approve?', 'B2YParA7f138CV0v8yYSMkLwJochwPxpX00MjyMZ', '2023-08-06 15:34:32', '2023-08-06 15:34:32');
INSERT INTO `messages` VALUES (3, 10, 'user.png', 'Team Capacity', 'Siap boleh info CRQnya?', 'zHNuyDswyaGbvGOGa5doJkPrsTnb2fk03rlUzG3v', '2023-08-06 15:36:09', '2023-08-06 15:36:09');
INSERT INTO `messages` VALUES (4, 2, 'user.png', 'user', 'CRQ33224567890 berikut CRQnya', 'X0qDCoYuBaNyXR3gCBXKb7PKMbuYI3m7U8fyTKWM', '2023-08-06 15:38:31', '2023-08-06 15:38:31');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_12_25_043905_message_migration', 1);
INSERT INTO `migrations` VALUES (5, '2019_12_26_042726_history', 1);
INSERT INTO `migrations` VALUES (6, '2019_12_27_081430_machine_table', 1);
INSERT INTO `migrations` VALUES (7, '2019_12_27_143756_work_order', 1);
INSERT INTO `migrations` VALUES (8, '2019_12_28_010454_lane_table', 1);
INSERT INTO `migrations` VALUES (9, '2019_12_29_060938_improvement_table', 1);
INSERT INTO `migrations` VALUES (10, '2019_12_30_104500_activity_log', 1);
INSERT INTO `migrations` VALUES (11, '2020_01_04_085700_notification_table', 1);
INSERT INTO `migrations` VALUES (12, '2020_02_05_163246_annual_schedule', 1);
INSERT INTO `migrations` VALUES (13, '2020_02_05_163513_annual_schedule_list', 1);
INSERT INTO `migrations` VALUES (14, '2020_02_16_094625_work_list', 1);

-- ----------------------------
-- Table structure for notifications
-- ----------------------------
DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of notifications
-- ----------------------------

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  INDEX `password_resets_username_index`(`username` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_username_unique`(`username` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Admin', 'admin', 'user.png', 'admin', NULL, '$2y$10$.rABonkRxoX.vK1ywZxSEOb4mlX8T36YXD608zCSnB2H4PobG8B.C', '4uueQgzckYpR1uw21ffTTJswdb9J9RGC7TVLYY2TqN670vYNmFUDLjyqOR0t', '2023-07-23 12:04:01', '2023-07-23 12:04:01');
INSERT INTO `users` VALUES (2, 'user', 'user', 'user.png', 'user', NULL, '$2y$10$j8GsT0GhMneERTlV2oMdlOgBez3T8iLN5GfQbofg1neshWRztijXi', 'xy6qh3OuKzfvD2EvaUxMGeLuYw8Krb0rkKHdDGnvny4GCHAIZyfIm4JJu3BS', '2023-07-24 06:18:37', '2023-07-24 06:18:37');
INSERT INTO `users` VALUES (9, 'Team Cloud', 'engineer', 'user.png', 'team.cloud', NULL, '$2y$10$m/kPLal3kTGLyQo7Ay4Z.O.HDY1ZSZL5.FI.ojx9Cl.tOQ8FG2Plm', 'HJ6jujxYgRfW4Nb0o9zptWz13cLbE8fnjdF9qmcfftOx5BDi2aAENgUDKkOV', '2023-07-30 16:28:48', '2023-07-30 16:28:48');
INSERT INTO `users` VALUES (10, 'Team Capacity', 'capacity', 'user.png', 'team.capacity', NULL, '$2y$10$DQCT74BgQUXlp/lnODwPlOokpnTF0580/We1eAhgqvi9NXbbB6T7C', 'lrMeFmjTbrSXREM19AmtA6WOGQ8WT28FJJiRUfyWsCCNURVCv9UwQfJ4FYyA', '2023-07-31 09:40:37', '2023-07-31 09:40:37');

-- ----------------------------
-- Table structure for worklists
-- ----------------------------
DROP TABLE IF EXISTS `worklists`;
CREATE TABLE `worklists`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `schedule_list_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `worker` int NOT NULL,
  `point_check` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `percent` int NULL DEFAULT NULL,
  `status_check` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `date_check` date NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of worklists
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
