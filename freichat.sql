/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : freichat

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2017-05-14 19:57:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `frei_banned_users`
-- ----------------------------
DROP TABLE IF EXISTS `frei_banned_users`;
CREATE TABLE `frei_banned_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of frei_banned_users
-- ----------------------------

-- ----------------------------
-- Table structure for `frei_chat`
-- ----------------------------
DROP TABLE IF EXISTS `frei_chat`;
CREATE TABLE `frei_chat` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `from` int(11) NOT NULL,
  `from_name` varchar(30) NOT NULL,
  `to` int(11) NOT NULL,
  `to_name` varchar(30) NOT NULL,
  `message` text NOT NULL,
  `sent` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `recd` int(10) unsigned NOT NULL DEFAULT '0',
  `time` double(15,4) NOT NULL,
  `GMT_time` bigint(20) NOT NULL,
  `message_type` int(11) NOT NULL DEFAULT '0',
  `room_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of frei_chat
-- ----------------------------
INSERT INTO `frei_chat` VALUES ('1', '4', 'John 4', '3', 'John 3', 'hey 4-->3?', '2017-05-14 12:35:47', '1', '14947653470.3598', '1494745547342', '0', '-1');
INSERT INTO `frei_chat` VALUES ('2', '3', 'John 3', '4', 'John 4', 'hi', '2017-05-14 12:36:31', '1', '14947653910.5705', '1494745591558', '0', '-1');
INSERT INTO `frei_chat` VALUES ('3', '4', 'John 4', '3', 'John 3', 'ok', '2017-05-14 12:36:39', '1', '14947653990.8604', '1494745599848', '0', '-1');
INSERT INTO `frei_chat` VALUES ('4', '4', 'John 4', '3', 'John 3', 'hw r u', '2017-05-14 12:37:10', '1', '14947654300.5021', '1494745630491', '0', '-1');
INSERT INTO `frei_chat` VALUES ('5', '4', 'John 4', '3', 'John 3', 'whr r u?', '2017-05-14 12:37:26', '1', '14947654460.2725', '1494745646249', '0', '-1');
INSERT INTO `frei_chat` VALUES ('6', '3', 'John 3', '4', 'John 4', 'I\'m good', '2017-05-14 12:38:23', '1', '14947655030.9761', '1494745703952', '0', '-1');
INSERT INTO `frei_chat` VALUES ('7', '3', 'John 3', '4', 'John 4', 'in india', '2017-05-14 12:38:26', '1', '14947655060.4555', '1494745706442', '0', '-1');
INSERT INTO `frei_chat` VALUES ('8', '4', 'John 4', '3', 'John 3', 'ohh grt', '2017-05-14 12:38:48', '1', '14947655280.8135', '1494745728799', '0', '-1');
INSERT INTO `frei_chat` VALUES ('9', '4', 'John 4', '3', 'John 3', '<img id=\"smile__3\" src=\"http://local.all.com/chatplugin/client/themes/smileys/evilgrin55088.gif\" alt=\"smile\" />', '2017-05-14 12:40:27', '1', '14947656270.1409', '1494745827119', '0', '-1');
INSERT INTO `frei_chat` VALUES ('10', '3', 'John 3', '4', 'John 4', '<img id=\"smile__4\" src=\"http://local.all.com/chatplugin/client/themes/smileys/bigsmile54781.gif\" alt=\"smile\" />', '2017-05-14 12:40:43', '1', '14947656430.9816', '1494745843959', '0', '-1');
INSERT INTO `frei_chat` VALUES ('11', '3', 'John 3', '4', 'John 4', '<img id=\"smile__4\" src=\"http://local.all.com/chatplugin/client/themes/smileys/smile54593.gif\" alt=\"smile\" />', '2017-05-14 12:49:39', '1', '14947661790.0797', '1494746379060', '0', '-1');
INSERT INTO `frei_chat` VALUES ('12', '4', 'John 4', '3', 'John 3', 'hey 4-->3?', '2017-05-14 12:50:34', '1', '14947662340.9760', '1494746434942', '0', '-1');
INSERT INTO `frei_chat` VALUES ('13', '4', 'John 4', '3', 'John 3', 'oye', '2017-05-14 13:17:23', '1', '14947678430.5261', '1494748043513', '0', '-1');
INSERT INTO `frei_chat` VALUES ('14', '4', 'John 4', '3', 'John 3', 'hyy', '2017-05-14 13:20:42', '1', '14947680420.0594', '1494748242036', '0', '-1');
INSERT INTO `frei_chat` VALUES ('15', '4', 'John 4', '3', 'John 3', 'ohk', '2017-05-14 13:22:05', '1', '14947681250.5726', '1494748325559', '0', '-1');
INSERT INTO `frei_chat` VALUES ('16', '4', 'John 4', '3', 'John 3', 'hahaha', '2017-05-14 13:26:44', '1', '14947684040.1944', '1494748604161', '0', '-1');
INSERT INTO `frei_chat` VALUES ('17', '4', 'John 4', '3', 'John 3', 'heyss 4-->3?', '2017-05-14 13:56:51', '1', '14947702110.0965', '1494750411075', '0', '-1');
INSERT INTO `frei_chat` VALUES ('18', '4', 'John 4', '3', 'John 3', 'heyss 4-->3?', '2017-05-14 13:57:26', '1', '14947702460.8078', '1494750446787', '0', '-1');
INSERT INTO `frei_chat` VALUES ('19', '4', 'John 4', '3', 'John 3', 'heysa 4-->3?', '2017-05-14 14:02:45', '1', '14947705650.8599', '1494750765836', '0', '-1');
INSERT INTO `frei_chat` VALUES ('20', '4', 'John 4', '3', 'John 3', 'heysad 4-->3?', '2017-05-14 14:03:14', '1', '14947705940.7954', '1494750794778', '0', '-1');
INSERT INTO `frei_chat` VALUES ('21', '4', 'John 4', '3', 'John 3', 'heysadss 4-->3?', '2017-05-14 14:03:33', '1', '14947706130.4522', '1494750813431', '0', '-1');
INSERT INTO `frei_chat` VALUES ('22', '4', 'John 4', '3', 'John 3', 'heysadss 4-->3?', '2017-05-14 14:12:04', '1', '14947711240.0513', '1494751324023', '0', '-1');
INSERT INTO `frei_chat` VALUES ('23', '4', 'John 4', '3', 'John 3', 'hola 4-->3?', '2017-05-14 14:12:19', '1', '14947711390.7685', '1494751339734', '0', '-1');
INSERT INTO `frei_chat` VALUES ('24', '4', 'John 4', '3', 'John 3', 'hola 4-->3?', '2017-05-14 14:19:18', '1', '14947715580.6088', '1494751758588', '0', '-1');
INSERT INTO `frei_chat` VALUES ('25', '4', 'John 4', '3', 'John 3', 'hola11 4-->3?', '2017-05-14 14:19:29', '1', '14947715690.5088', '1494751769485', '0', '-1');
INSERT INTO `frei_chat` VALUES ('26', '4', 'John 4', '3', 'John 3', 'hola112 4-->3?', '2017-05-14 14:20:05', '1', '14947716050.4470', '1494751805428', '0', '-1');
INSERT INTO `frei_chat` VALUES ('27', '4', 'John 4', '3', 'John 3', 'hola112 4-->3?', '2017-05-14 14:20:19', '1', '14947716190.0292', '1494751819009', '0', '-1');
INSERT INTO `frei_chat` VALUES ('28', '4', 'John 4', '3', 'John 3', 'hola1124 4-->3?', '2017-05-14 14:20:44', '1', '14947716440.4401', '1494751844419', '0', '-1');
INSERT INTO `frei_chat` VALUES ('29', '4', 'John 4', '3', 'John 3', 'hola1124 4-->3?', '2017-05-14 14:21:08', '1', '14947716680.3277', '1494751868299', '0', '-1');
INSERT INTO `frei_chat` VALUES ('30', '4', 'John 4', '3', 'John 3', 'hola1124 4-->3?', '2017-05-14 14:21:25', '1', '14947716850.8760', '1494751885857', '0', '-1');
INSERT INTO `frei_chat` VALUES ('31', '4', 'John 4', '3', 'John 3', 'hola1124 4-->3?', '2017-05-14 14:21:38', '1', '14947716980.0492', '1494751898027', '0', '-1');
INSERT INTO `frei_chat` VALUES ('32', '4', 'John 4', '3', 'John 3', 'hola1124 4-->3?', '2017-05-14 14:21:52', '1', '14947717120.3372', '1494751912316', '0', '-1');
INSERT INTO `frei_chat` VALUES ('33', '4', 'John 4', '3', 'John 3', 'hola1124 4-->3?', '2017-05-14 14:21:58', '1', '14947717180.0312', '1494751918007', '0', '-1');
INSERT INTO `frei_chat` VALUES ('34', '4', 'John 4', '3', 'John 3', 'hola1124 4-->3?', '2017-05-14 14:22:24', '1', '14947717440.1335', '1494751944113', '0', '-1');
INSERT INTO `frei_chat` VALUES ('35', '4', 'John 4', '3', 'John 3', 'dfjhgj 4-->3?', '2017-05-14 14:22:54', '1', '14947717740.8118', '1494751974795', '0', '-1');
INSERT INTO `frei_chat` VALUES ('36', '4', 'John 4', '3', 'John 3', 'dfjhgjgfhfg 4-->3?', '2017-05-14 14:23:14', '1', '14947717940.6660', '1494751994645', '0', '-1');
INSERT INTO `frei_chat` VALUES ('37', '4', 'John 4', '3', 'John 3', 'sdfsdf 4-->3?', '2017-05-14 14:23:45', '1', '14947718250.5496', '1494752025520', '0', '-1');
INSERT INTO `frei_chat` VALUES ('38', '4', 'John 4', '3', 'John 3', 'sdfsdffg 4-->3?', '2017-05-14 14:24:41', '1', '14947718810.7596', '1494752081738', '0', '-1');

-- ----------------------------
-- Table structure for `frei_config`
-- ----------------------------
DROP TABLE IF EXISTS `frei_config`;
CREATE TABLE `frei_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(30) DEFAULT 'NULL',
  `cat` varchar(20) DEFAULT 'NULL',
  `subcat` varchar(20) DEFAULT 'NULL',
  `val` varchar(500) DEFAULT 'NULL',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of frei_config
-- ----------------------------
INSERT INTO `frei_config` VALUES ('1', 'PATH', 'NULL', 'NULL', 'freichat/');
INSERT INTO `frei_config` VALUES ('2', 'show_name', 'NULL', 'NULL', 'guest');
INSERT INTO `frei_config` VALUES ('3', 'displayname', 'NULL', 'NULL', 'first_name, last_name');
INSERT INTO `frei_config` VALUES ('4', 'chatspeed', 'NULL', 'NULL', '5000');
INSERT INTO `frei_config` VALUES ('5', 'fxval', 'NULL', 'NULL', 'true');
INSERT INTO `frei_config` VALUES ('6', 'draggable', 'NULL', 'NULL', 'enable');
INSERT INTO `frei_config` VALUES ('7', 'conflict', 'NULL', 'NULL', '');
INSERT INTO `frei_config` VALUES ('8', 'msgSendSpeed', 'NULL', 'NULL', '1000');
INSERT INTO `frei_config` VALUES ('9', 'show_avatar', 'NULL', 'NULL', 'block');
INSERT INTO `frei_config` VALUES ('10', 'debug', 'NULL', 'NULL', 'false');
INSERT INTO `frei_config` VALUES ('11', 'freichat_theme', 'NULL', 'NULL', 'basic');
INSERT INTO `frei_config` VALUES ('12', 'lang', 'NULL', 'NULL', 'english');
INSERT INTO `frei_config` VALUES ('13', 'load', 'NULL', 'NULL', 'show');
INSERT INTO `frei_config` VALUES ('14', 'time', 'NULL', 'NULL', '7');
INSERT INTO `frei_config` VALUES ('15', 'JSdebug', 'NULL', 'NULL', 'false');
INSERT INTO `frei_config` VALUES ('16', 'busy_timeOut', 'NULL', 'NULL', '500');
INSERT INTO `frei_config` VALUES ('17', 'offline_timeOut', 'NULL', 'NULL', '1000');
INSERT INTO `frei_config` VALUES ('18', 'cache', 'NULL', 'NULL', 'enabled');
INSERT INTO `frei_config` VALUES ('19', 'GZIP_handler', 'NULL', 'NULL', 'ON');
INSERT INTO `frei_config` VALUES ('20', 'plugins', 'file_sender', 'show', 'true');
INSERT INTO `frei_config` VALUES ('21', 'plugins', 'file_sender', 'file_size', '2000');
INSERT INTO `frei_config` VALUES ('22', 'plugins', 'file_sender', 'expiry', '300');
INSERT INTO `frei_config` VALUES ('23', 'plugins', 'file_sender', 'valid_exts', 'jpeg,jpg,png,gif,zip');
INSERT INTO `frei_config` VALUES ('24', 'plugins', 'send_conv', 'show', 'false');
INSERT INTO `frei_config` VALUES ('25', 'plugins', 'send_conv', 'mailtype', 'smtp');
INSERT INTO `frei_config` VALUES ('26', 'plugins', 'send_conv', 'smtp_server', 'smtp.gmail.com');
INSERT INTO `frei_config` VALUES ('27', 'plugins', 'send_conv', 'smtp_port', '465');
INSERT INTO `frei_config` VALUES ('28', 'plugins', 'send_conv', 'smtp_protocol', 'ssl');
INSERT INTO `frei_config` VALUES ('29', 'plugins', 'send_conv', 'from_address', 'you@domain.com');
INSERT INTO `frei_config` VALUES ('30', 'plugins', 'send_conv', 'from_name', 'FreiChat');
INSERT INTO `frei_config` VALUES ('31', 'playsound', 'NULL', 'NULL', 'true');
INSERT INTO `frei_config` VALUES ('32', 'ACL', 'filesend', 'user', 'noallow');
INSERT INTO `frei_config` VALUES ('33', 'ACL', 'filesend', 'guest', 'noallow');
INSERT INTO `frei_config` VALUES ('34', 'ACL', 'chatroom', 'user', 'noallow');
INSERT INTO `frei_config` VALUES ('35', 'ACL', 'chatroom', 'guest', 'noallow');
INSERT INTO `frei_config` VALUES ('36', 'ACL', 'mail', 'user', 'noallow');
INSERT INTO `frei_config` VALUES ('37', 'ACL', 'mail', 'guest', 'noallow');
INSERT INTO `frei_config` VALUES ('38', 'ACL', 'save', 'user', 'allow');
INSERT INTO `frei_config` VALUES ('39', 'ACL', 'save', 'guest', 'allow');
INSERT INTO `frei_config` VALUES ('40', 'ACL', 'smiley', 'user', 'allow');
INSERT INTO `frei_config` VALUES ('41', 'ACL', 'smiley', 'guest', 'allow');
INSERT INTO `frei_config` VALUES ('42', 'polling', 'NULL', 'NULL', 'disabled');
INSERT INTO `frei_config` VALUES ('43', 'polling_time', 'NULL', 'NULL', '30');
INSERT INTO `frei_config` VALUES ('44', 'link_profile', 'NULL', 'NULL', 'disabled');
INSERT INTO `frei_config` VALUES ('46', 'sef_link_profile', 'NULL', 'NULL', 'disabled');
INSERT INTO `frei_config` VALUES ('47', 'plugins', 'chatroom', 'location', 'left');
INSERT INTO `frei_config` VALUES ('48', 'plugins', 'chatroom', 'autoclose', 'true');
INSERT INTO `frei_config` VALUES ('49', 'content_height', 'NULL', 'NULL', '200px');
INSERT INTO `frei_config` VALUES ('50', 'chatbox_status', 'NULL', 'NULL', 'false');
INSERT INTO `frei_config` VALUES ('51', 'BOOT', 'NULL', 'NULL', 'yes');
INSERT INTO `frei_config` VALUES ('52', 'exit_for_guests', 'NULL', 'NULL', 'no');
INSERT INTO `frei_config` VALUES ('53', 'plugins', 'chatroom', 'offset', '50px');
INSERT INTO `frei_config` VALUES ('54', 'plugins', 'chatroom', 'label_offset', '0.8%');
INSERT INTO `frei_config` VALUES ('55', 'addedoptions_visibility', 'NULL', 'NULL', 'HIDDEN');
INSERT INTO `frei_config` VALUES ('56', 'ug_ids', 'NULL', 'NULL', '');
INSERT INTO `frei_config` VALUES ('57', 'ACL', 'chat', 'user', 'allow');
INSERT INTO `frei_config` VALUES ('58', 'ACL', 'chat', 'guest', 'allow');
INSERT INTO `frei_config` VALUES ('59', 'plugins', 'chatroom', 'override_positions', 'yes');
INSERT INTO `frei_config` VALUES ('60', 'ACL', 'video', 'user', 'allow');
INSERT INTO `frei_config` VALUES ('61', 'ACL', 'video', 'guest', 'allow');
INSERT INTO `frei_config` VALUES ('62', 'ACL', 'chatroom_crt', 'user', 'allow');
INSERT INTO `frei_config` VALUES ('63', 'ACL', 'chatroom_crt', 'guest', 'noallow');
INSERT INTO `frei_config` VALUES ('64', 'plugins', 'chatroom', 'chatroom_expiry', '3600');
INSERT INTO `frei_config` VALUES ('65', 'chat_time_shown_always', 'NULL', 'NULL', 'no');
INSERT INTO `frei_config` VALUES ('66', 'allow_guest_name_change', 'NULL', 'NULL', 'yes');
INSERT INTO `frei_config` VALUES ('67', 'ACL', 'groupchat', 'user', 'allow');
INSERT INTO `frei_config` VALUES ('68', 'ACL', 'groupchat', 'guest', 'noallow');

-- ----------------------------
-- Table structure for `frei_session`
-- ----------------------------
DROP TABLE IF EXISTS `frei_session`;
CREATE TABLE `frei_session` (
  `id` int(100) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `time` int(100) NOT NULL,
  `session_id` varchar(100) NOT NULL,
  `permanent_id` int(100) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `status_mesg` varchar(100) NOT NULL,
  `guest` tinyint(3) NOT NULL,
  `in_room` int(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `permanent_id` (`permanent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of frei_session
-- ----------------------------
INSERT INTO `frei_session` VALUES ('1', 'John 4', '1494772031', '4', '1495207186', '1', 'I am available', '0', '-1');
INSERT INTO `frei_session` VALUES ('2', 'John 3', '1494772023', '3', '1495181082', '1', 'I am available', '0', '-1');

-- ----------------------------
-- Table structure for `frei_smileys`
-- ----------------------------
DROP TABLE IF EXISTS `frei_smileys`;
CREATE TABLE `frei_smileys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `symbol` varchar(10) NOT NULL,
  `image_name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of frei_smileys
-- ----------------------------
INSERT INTO `frei_smileys` VALUES ('1', ':S', 'worried55231.gif');
INSERT INTO `frei_smileys` VALUES ('2', '(wasntme)', 'itwasntme55198.gif');
INSERT INTO `frei_smileys` VALUES ('3', 'x(', 'angry55174.gif');
INSERT INTO `frei_smileys` VALUES ('4', '(doh)', 'doh55146.gif');
INSERT INTO `frei_smileys` VALUES ('5', '|-()', 'yawn55117.gif');
INSERT INTO `frei_smileys` VALUES ('6', ']:)', 'evilgrin55088.gif');
INSERT INTO `frei_smileys` VALUES ('7', '|(', 'dull55062.gif');
INSERT INTO `frei_smileys` VALUES ('8', '|-)', 'sleepy55036.gif');
INSERT INTO `frei_smileys` VALUES ('9', '(blush)', 'blush54981.gif');
INSERT INTO `frei_smileys` VALUES ('10', ':P', 'tongueout54953.gif');
INSERT INTO `frei_smileys` VALUES ('11', '(:|', 'sweat54888.gif');
INSERT INTO `frei_smileys` VALUES ('12', ';(', 'crying54854.gif');
INSERT INTO `frei_smileys` VALUES ('13', ':)', 'smile54593.gif');
INSERT INTO `frei_smileys` VALUES ('14', ':(', 'sad54749.gif');
INSERT INTO `frei_smileys` VALUES ('15', ':D', 'bigsmile54781.gif');
INSERT INTO `frei_smileys` VALUES ('16', '8)', 'cool54801.gif');
INSERT INTO `frei_smileys` VALUES ('17', ':o', 'wink54827.gif');
INSERT INTO `frei_smileys` VALUES ('18', '(mm)', 'mmm55255.gif');
INSERT INTO `frei_smileys` VALUES ('19', ':x', 'lipssealed55304.gif');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(70) NOT NULL,
  `device_id` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('3', 'John', '3', 'rups', '96a7810cc225f9043d6066c947fa09e0', '1234567899', '2017-05-03 13:28:56', '2017-05-14 17:44:26');
INSERT INTO `users` VALUES ('4', 'John', '4', 'rups1', '96a7810cc225f9043d6066c947fa09e0', 'xyz123', '2017-05-03 13:51:17', '2017-05-14 17:44:36');
INSERT INTO `users` VALUES ('5', 'John', '5', 'ababab', 'e99a18c428cb38d5f260853678922e03', 'ababa223', '2017-05-05 01:30:09', '2017-05-14 17:44:36');
INSERT INTO `users` VALUES ('6', 'John', '6', 'bchxh', '9bfe43f5cfeeb0e6d402886789ece2f3', '63b43f939fdf024e', '2017-05-05 01:59:45', '2017-05-14 17:44:37');
INSERT INTO `users` VALUES ('7', 'John', '7', 'ababa', 'e99a18c428cb38d5f260853678922e03', '63b43f939fdf024e', '2017-05-05 02:00:57', '2017-05-14 17:44:39');
INSERT INTO `users` VALUES ('8', 'fghg', 'eert', '1111111111', '202cb962ac59075b964b07152d234b70', '63b43f939fdf024e', '2017-05-05 22:01:54', '2017-05-14 12:57:06');
INSERT INTO `users` VALUES ('9', 'ghjgh', 'bnvbn', '9926882900', '86f500cd7b7d38e5d4ae6cde3920f589', '24b57990aff58491', '2017-05-05 22:11:27', '2017-05-14 12:57:08');
INSERT INTO `users` VALUES ('10', 'ghjgh', 'vcbcv', '9179973345', '827ccb0eea8a706c4c34a16891f84e7b', 'cdfd811f870831cf', '2017-05-05 22:27:20', '2017-05-14 12:57:09');
INSERT INTO `users` VALUES ('11', 'ghj', 'dfgdf', '9685078888', '81dc9bdb52d04dc20036dbd8313ed055', '24b57990aff58491', '2017-05-05 23:15:04', '2017-05-14 12:57:10');
INSERT INTO `users` VALUES ('12', 'ghjhj', 'dg', '2222222222', '202cb962ac59075b964b07152d234b70', 'fefc9805e15ae9d1', '2017-05-05 23:37:19', '2017-05-14 12:57:11');
