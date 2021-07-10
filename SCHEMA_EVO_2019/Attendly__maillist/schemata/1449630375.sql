CREATE TABLE `account` (	  `id` bigint(20) NOT NULL AUTO_INCREMENT,
	  `first_name` varchar(255) NOT NULL,
	  `last_name` varchar(255) NOT NULL,
	  `email` varchar(255) NOT NULL,
	  `status` enum('active',
'deleted') NOT NULL,
	  PRIMARY KEY (`id`),
	  UNIQUE KEY `email` (`email`)	) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

CREATE TABLE `campaign` (	  `id` bigint(20) NOT NULL AUTO_INCREMENT,
	  `account_id` bigint(20) NOT NULL,
	  `subject` varchar(255) NOT NULL,
	  `body` longtext NOT NULL,
	  `status` enum('scheduled',
'pending',
'sent',
'deleted',
'failed') NOT NULL,
	  `scheduled` datetime NOT NULL,
	  `list_ids` varchar(255) NOT NULL,
	  `event_ids` varchar(255) NOT NULL,
	  PRIMARY KEY (`id`),
	  KEY `account_id` (`account_id`),
	  CONSTRAINT `campaign_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`)	) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

CREATE TABLE `list` (	  `id` bigint(20) NOT NULL AUTO_INCREMENT,
	  `account_id` bigint(20) NOT NULL,
	  `name` varchar(255) NOT NULL,
	  `status` enum('active',
'deleted') NOT NULL,
	  PRIMARY KEY (`id`),
	  KEY `list_ibfk_1` (`account_id`),
	  CONSTRAINT `list_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`)	) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

CREATE TABLE `list_subscriber` (	  `list_id` bigint(20) NOT NULL,
	  `subscriber_id` bigint(20) NOT NULL,
	  `status` enum('active',
'deleted') NOT NULL,
	  PRIMARY KEY (`list_id`,
`subscriber_id`),
	  KEY `subscriber_id` (`subscriber_id`),
	  CONSTRAINT `list_subscriber_ibfk_1` FOREIGN KEY (`list_id`) REFERENCES `list` (`id`),
	  CONSTRAINT `list_subscriber_ibfk_2` FOREIGN KEY (`subscriber_id`) REFERENCES `subscriber` (`id`)	) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `message` (	  `subscriber_id` bigint(20) NOT NULL,
	  `campaign_id` bigint(20) NOT NULL,
	  `status` enum('pending',
'sent') NOT NULL,
	  PRIMARY KEY (`subscriber_id`,
`campaign_id`),
	  KEY `campaign_id` (`campaign_id`),
	  CONSTRAINT `message_ibfk_1` FOREIGN KEY (`subscriber_id`) REFERENCES `subscriber` (`id`),
	  CONSTRAINT `message_ibfk_2` FOREIGN KEY (`campaign_id`) REFERENCES `campaign` (`id`)	) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `subscriber` (	  `id` bigint(20) NOT NULL AUTO_INCREMENT,
	  `account_id` bigint(20) NOT NULL,
	  `first_name` varchar(255) NOT NULL,
	  `last_name` varchar(255) NOT NULL,
	  `email` varchar(255) NOT NULL,
	  `status` enum('active',
'deleted') NOT NULL,
	  PRIMARY KEY (`id`),
	  UNIQUE KEY `account_id` (`account_id`,
`email`),
	  CONSTRAINT `subscriber_ibfk_1` FOREIGN KEY (`account_id`) REFERENCES `account` (`id`)	) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

CREATE TABLE `variable` (	  `name` varchar(255) NOT NULL,
	  `value` varchar(255) NOT NULL,
	  PRIMARY KEY (`name`)	) ENGINE=InnoDB DEFAULT CHARSET=utf8;

