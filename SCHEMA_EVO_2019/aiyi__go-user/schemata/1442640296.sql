SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `auth_types` bigint(20) NOT NULL,
  `password` varbinary(255) NOT NULL,
  `salt` varbinary(255) NOT NULL,
  `create_time` bigint(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for user_email
-- ----------------------------
DROP TABLE IF EXISTS `user_email`;
CREATE TABLE `user_email` (
  `userid` bigint(20) NOT NULL,
  `email` varchar(128) NOT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `email` (`email`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for user_phone
-- ----------------------------
DROP TABLE IF EXISTS `user_phone`;
CREATE TABLE `user_phone` (
  `userid` bigint(20) NOT NULL,
  `phone` varchar(20) NOT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `phone` (`phone`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for user_qq
-- ----------------------------
DROP TABLE IF EXISTS `user_qq`;
CREATE TABLE `user_qq` (
  `userid` bigint(20) NOT NULL,
  `openid` varchar(128) NOT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `openid` (`openid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for user_wechat
-- ----------------------------
DROP TABLE IF EXISTS `user_wechat`;
CREATE TABLE `user_wechat` (
  `userid` bigint(20) NOT NULL,
  `openid` varchar(128) NOT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `openid` (`openid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Table structure for user_weibo
-- ----------------------------
DROP TABLE IF EXISTS `user_weibo`;
CREATE TABLE `user_weibo` (
  `userid` bigint(20) NOT NULL,
  `openid` varchar(128) NOT NULL,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `openid` (`openid`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
