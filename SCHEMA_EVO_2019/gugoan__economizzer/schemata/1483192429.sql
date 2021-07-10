CREATE TABLE `cashbook` (	  `id` int(11) NOT NULL AUTO_INCREMENT,
	  `value` float NOT NULL,
	  `description` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
	  `date` date NOT NULL,
	  `is_pending` tinyint(1) NOT NULL DEFAULT '0',
	  `attachment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
	  `inc_datetime` datetime DEFAULT NULL COMMENT 'insert date',
	  `edit_datetime` datetime DEFAULT NULL COMMENT 'edit date',
	  `user_id` int(11) NOT NULL,
	  `category_id` int(11) NOT NULL,
	  `type_id` int(11) NOT NULL,
	  PRIMARY KEY (`id`),
	  KEY `fk_cashbook_user_id` (`user_id`),
	  KEY `fk_cashbook_category_id` (`category_id`),
	  KEY `fk_cashbook_type_id` (`type_id`),
	  CONSTRAINT `fk_cashbook_tb_category` FOREIGN KEY (`category_id`) REFERENCES `category` (`id_category`) ON DELETE NO ACTION ON UPDATE NO ACTION,
	  CONSTRAINT `fk_cashbook_tb_type` FOREIGN KEY (`type_id`) REFERENCES `type` (`id_type`) ON DELETE NO ACTION ON UPDATE NO ACTION,
	  CONSTRAINT `fk_cashbook_tb_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION	) ENGINE=InnoDB AUTO_INCREMENT=611 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Control financial movement';

CREATE TABLE `category` (	  `id_category` int(11) NOT NULL AUTO_INCREMENT,
	  `parent_id` int(11) DEFAULT NULL,
	  `desc_category` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
	  `hexcolor_category` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
	  `is_active` int(1) NOT NULL,
	  `user_id` int(11) NOT NULL,
	  PRIMARY KEY (`id_category`),
	  KEY `fk_tb_category_tb_user1_idx` (`user_id`),
	  CONSTRAINT `fk_tb_category_tb_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION	) ENGINE=InnoDB AUTO_INCREMENT=1010 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Categories of entries: Water,
 light,
 card,
 etc.';

CREATE TABLE `profile` (	  `id` int(11) NOT NULL AUTO_INCREMENT,
	  `user_id` int(11) NOT NULL,
	  `create_time` timestamp NULL DEFAULT NULL,
	  `update_time` timestamp NULL DEFAULT NULL,
	  `full_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
	  `language` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'en',
	  `startpage` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'cashbook/index',
	  `currencycode` varchar(100) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'USD',
	  `decimalseparator` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT '.',
	  PRIMARY KEY (`id`),
	  KEY `tb_profile_user_id` (`user_id`) USING BTREE,
	  CONSTRAINT `profile_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)	) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `role` (	  `id` int(11) NOT NULL AUTO_INCREMENT,
	  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
	  `create_time` timestamp NULL DEFAULT NULL,
	  `update_time` timestamp NULL DEFAULT NULL,
	  `can_admin` smallint(6) NOT NULL DEFAULT '0',
	  PRIMARY KEY (`id`)	) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `type` (	  `id_type` int(11) NOT NULL AUTO_INCREMENT,
	  `desc_type` varchar(45) CHARACTER SET latin1 NOT NULL,
	  `hexcolor_type` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
	  `icon_type` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
	  PRIMARY KEY (`id_type`)	) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Movement Type: Debit,
 Credit';

CREATE TABLE `user` (	  `id` int(11) NOT NULL AUTO_INCREMENT,
	  `role_id` int(11) NOT NULL,
	  `status` smallint(6) NOT NULL,
	  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
	  `new_email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
	  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
	  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
	  `auth_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
	  `api_key` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
	  `login_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
	  `login_time` timestamp NULL DEFAULT NULL,
	  `create_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
	  `create_time` timestamp NULL DEFAULT NULL,
	  `update_time` timestamp NULL DEFAULT NULL,
	  `ban_time` timestamp NULL DEFAULT NULL,
	  `ban_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
	  PRIMARY KEY (`id`),
	  UNIQUE KEY `tb_user_email` (`email`) USING BTREE,
	  UNIQUE KEY `tb_user_username` (`username`) USING BTREE,
	  KEY `tb_user_role_id` (`role_id`) USING BTREE,
	  CONSTRAINT `user_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`)	) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `user_auth` (	  `id` int(11) NOT NULL AUTO_INCREMENT,
	  `user_id` int(11) NOT NULL,
	  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
	  `provider_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
	  `provider_attributes` text COLLATE utf8_unicode_ci NOT NULL,
	  `create_time` timestamp NULL DEFAULT NULL,
	  `update_time` timestamp NULL DEFAULT NULL,
	  PRIMARY KEY (`id`),
	  KEY `tb_user_auth_provider_id` (`provider_id`) USING BTREE,
	  KEY `tb_user_auth_user_id` (`user_id`) USING BTREE,
	  CONSTRAINT `user_auth_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)	) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE `user_key` (	  `id` int(11) NOT NULL AUTO_INCREMENT,
	  `user_id` int(11) NOT NULL,
	  `type` smallint(6) NOT NULL,
	  `key_value` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
	  `create_time` timestamp NULL DEFAULT NULL,
	  `consume_time` timestamp NULL DEFAULT NULL,
	  `expire_time` timestamp NULL DEFAULT NULL,
	  PRIMARY KEY (`id`),
	  UNIQUE KEY `tb_user_key_key` (`key_value`) USING BTREE,
	  KEY `tb_user_key_user_id` (`user_id`) USING BTREE,
	  CONSTRAINT `user_key_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)	) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

