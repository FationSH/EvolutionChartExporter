CREATE TABLE IF NOT EXISTS `layouts` (	  `id_layout` INT NOT NULL AUTO_INCREMENT,
	  `model` VARCHAR(45) NULL,
	  `manufacturer` VARCHAR(45) NULL,
	  `image` VARCHAR(45) NULL,
	  `layout` VARCHAR(45) NOT NULL,
	  PRIMARY KEY (`id_layout`))	ENGINE = InnoDB	DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `projects` (	  `uuid` VARCHAR(36) NOT NULL,
	  `name` VARCHAR(50) NOT NULL,
	  `description` VARCHAR(300) NULL DEFAULT NULL,
	  PRIMARY KEY (`uuid`))	ENGINE = InnoDB	AUTO_INCREMENT = 2	DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `users` (	  `uuid` VARCHAR(36) NOT NULL,
	  `username` VARCHAR(50) NOT NULL,
	  `password` VARCHAR(60) NULL DEFAULT NULL,
	  `email` VARCHAR(50) NOT NULL,
	  `first_name` VARCHAR(45) NULL DEFAULT NULL,
	  `last_name` VARCHAR(45) NULL DEFAULT NULL,
	  `latest_update` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	  PRIMARY KEY (`uuid`),
	  UNIQUE INDEX `username_UNIQUE` (`username` ASC))	ENGINE = InnoDB	AUTO_INCREMENT = 2	DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `boards` (	  `board_id` VARCHAR(36) NOT NULL,
	  `label` VARCHAR(100) NOT NULL,
	  `session_id` VARCHAR(250) NULL DEFAULT NULL,
	  `status` VARCHAR(15) NULL DEFAULT NULL,
	  `latest_update` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	  `layout_id` INT NULL,
	  `description` VARCHAR(300) NULL DEFAULT NULL,
	  `net_enabled` TINYINT(1) NOT NULL,
	  `projects_id` VARCHAR(36) NULL,
	  `users_id` VARCHAR(36) NULL,
	  `mobile` TINYINT(1) NOT NULL,
	  `position_refresh_time` INT NULL,
	  `notify` TINYINT(1) NOT NULL,
	  `notify_rate` VARCHAR(45) NULL,
	  `notify_retry` INT NULL,
	  `extra` VARCHAR(600) NULL,
	  `state` VARCHAR(45) NOT NULL,
	  PRIMARY KEY (`board_id`),
	  INDEX `fk_boards_layout1_idx` (`layout_id` ASC),
	  INDEX `fk_boards_projects1_idx` (`projects_id` ASC),
	  INDEX `fk_boards_users1_idx` (`users_id` ASC),
	  CONSTRAINT `fk_boards_layout1`	    FOREIGN KEY (`layout_id`)	    REFERENCES `layouts` (`id_layout`)	    ON DELETE SET NULL	    ON UPDATE CASCADE,
	  CONSTRAINT `fk_boards_projects1`	    FOREIGN KEY (`projects_id`)	    REFERENCES `projects` (`uuid`)	    ON DELETE SET NULL	    ON UPDATE CASCADE,
	  CONSTRAINT `fk_boards_users1`	    FOREIGN KEY (`users_id`)	    REFERENCES `users` (`uuid`)	    ON DELETE SET NULL	    ON UPDATE CASCADE)	ENGINE = InnoDB	DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `plugin_types` (	  `id` INT NOT NULL,
	  `type` VARCHAR(45) NOT NULL,
	  PRIMARY KEY (`id`),
	  UNIQUE INDEX `tag_UNIQUE` (`type` ASC))	ENGINE = InnoDB	DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `plugin_tags` (	  `id` INT NOT NULL,
	  `tag` VARCHAR(45) NOT NULL,
	  PRIMARY KEY (`id`),
	  UNIQUE INDEX `tag_UNIQUE` (`tag` ASC))	ENGINE = InnoDB	DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `plugins` (	  `id` INT(11) NOT NULL AUTO_INCREMENT,
	  `name` VARCHAR(100) NOT NULL,
	  `category` VARCHAR(20) NOT NULL,
	  `version` VARCHAR(45) NOT NULL,
	  `checksum` VARCHAR(100) NOT NULL,
	  `type_id` INT NOT NULL,
	  `tag_id` INT NOT NULL,
	  `code` LONGTEXT NOT NULL,
	  `defaults` LONGTEXT NULL,
	  `updated_at` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	  `created_at` TIMESTAMP NULL DEFAULT NULL,
	  `description` VARCHAR(300) NULL DEFAULT 'no description',
	  PRIMARY KEY (`id`,
 `type_id`,
 `tag_id`),
	  UNIQUE INDEX `name-ver-cat-type` (`name` ASC,
 `version` ASC,
 `category` ASC,
 `type_id` ASC),
	  INDEX `fk_plugins_plugin_type1_idx` (`type_id` ASC),
	  INDEX `fk_plugins_plugin_tags1_idx` (`tag_id` ASC),
	  CONSTRAINT `fk_plugins_plugin_type1`	    FOREIGN KEY (`type_id`)	    REFERENCES `plugin_types` (`id`)	    ON DELETE NO ACTION	    ON UPDATE CASCADE,
	  CONSTRAINT `fk_plugins_plugin_tags1`	    FOREIGN KEY (`tag_id`)	    REFERENCES `plugin_tags` (`id`)	    ON DELETE NO ACTION	    ON UPDATE NO ACTION)	ENGINE = InnoDB	AUTO_INCREMENT = 10	DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `plugins_injected` (	  `board_id` VARCHAR(36) NOT NULL,
	  `plugin_id` INT(11) NOT NULL,
	  `plugin_name` VARCHAR(100) NULL,
	  `state` VARCHAR(20) NOT NULL,
	  `plugin_name` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	  INDEX `fk_plugins_injected_plugins1_idx` (`plugin_id` ASC),
	  PRIMARY KEY (`board_id`,
 `plugin_id`),
	  INDEX `fk_plugins_injected_boards1_idx` (`board_id` ASC),
	  CONSTRAINT `fk_plugins_injected_plugins1`	    FOREIGN KEY (`plugin_id`)	    REFERENCES `plugins` (`id`)	    ON DELETE CASCADE	    ON UPDATE CASCADE,
	  CONSTRAINT `fk_plugins_injected_boards1`	    FOREIGN KEY (`board_id`)	    REFERENCES `boards` (`board_id`)	    ON DELETE CASCADE	    ON UPDATE CASCADE)	ENGINE = InnoDB	DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `vlans` (	  `id` INT NOT NULL AUTO_INCREMENT,
	  `vlan_name` VARCHAR(45) NOT NULL,
	  `vlan_ip` VARCHAR(45) NOT NULL,
	  `vlan_mask` VARCHAR(45) NOT NULL,
	  `net_uuid` VARCHAR(45) NOT NULL,
	  PRIMARY KEY (`id`))	ENGINE = InnoDB	DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `socat_connections` (	  `id` INT NOT NULL AUTO_INCREMENT,
	  `id_board` VARCHAR(36) NOT NULL,
	  `port` INT(6) NULL,
	  `ip_board` VARCHAR(45) NULL,
	  `ip_server` VARCHAR(45) NULL,
	  `status` VARCHAR(45) NOT NULL,
	  PRIMARY KEY (`id`,
 `id_board`),
	  INDEX `fk_socat_connections_boards1_idx` (`id_board` ASC),
	  CONSTRAINT `fk_socat_connections_boards1`	    FOREIGN KEY (`id_board`)	    REFERENCES `boards` (`board_id`)	    ON DELETE CASCADE	    ON UPDATE CASCADE)	ENGINE = InnoDB	DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `vlans_connection` (	  `id` INT NOT NULL AUTO_INCREMENT,
	  `id_vlan` INT NOT NULL,
	  `id_socat_connection` INT NOT NULL,
	  `ip_vlan` VARCHAR(45) NOT NULL,
	  PRIMARY KEY (`id`),
	  INDEX `fk_vlans_connection_vlans1_idx` (`id_vlan` ASC),
	  INDEX `fk_vlans_connection_socat_connections1_idx` (`id_socat_connection` ASC),
	  CONSTRAINT `fk_vlans_connection_vlans1`	    FOREIGN KEY (`id_vlan`)	    REFERENCES `vlans` (`id`)	    ON DELETE CASCADE	    ON UPDATE CASCADE,
	  CONSTRAINT `fk_vlans_connection_socat_connections1`	    FOREIGN KEY (`id_socat_connection`)	    REFERENCES `socat_connections` (`id`)	    ON DELETE CASCADE	    ON UPDATE CASCADE)	ENGINE = InnoDB	DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `sensors` (	  `id` INT NOT NULL,
	  `type` VARCHAR(45) NOT NULL,
	  `unit` VARCHAR(45) NOT NULL,
	  `fabric_name` VARCHAR(45) NULL,
	  `model` VARCHAR(45) NULL,
	  PRIMARY KEY (`id`))	ENGINE = InnoDB	DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `sensors_on_board` (	  `id_sensor` INT NOT NULL,
	  `id_board` VARCHAR(36) NOT NULL,
	  PRIMARY KEY (`id_sensor`,
 `id_board`),
	  INDEX `fk_sensors_on_board_boards_connected1_idx` (`id_board` ASC),
	  CONSTRAINT `fk_sensors_on_board_sensors1`	    FOREIGN KEY (`id_sensor`)	    REFERENCES `sensors` (`id`)	    ON DELETE CASCADE	    ON UPDATE CASCADE,
	  CONSTRAINT `fk_sensors_on_board_boards1`	    FOREIGN KEY (`id_board`)	    REFERENCES `boards` (`board_id`)	    ON DELETE CASCADE	    ON UPDATE CASCADE)	ENGINE = InnoDB	DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `plugin_sensors` (	  `plugins_id` INT(11) NOT NULL,
	  `sensors_id` INT NOT NULL,
	  INDEX `fk_plugin_sensors_plugins1_idx` (`plugins_id` ASC),
	  INDEX `fk_plugin_sensors_sensors1_idx` (`sensors_id` ASC),
	  PRIMARY KEY (`plugins_id`,
 `sensors_id`),
	  CONSTRAINT `fk_plugin_sensors_plugins1`	    FOREIGN KEY (`plugins_id`)	    REFERENCES `plugins` (`id`)	    ON DELETE CASCADE	    ON UPDATE CASCADE,
	  CONSTRAINT `fk_plugin_sensors_sensors1`	    FOREIGN KEY (`sensors_id`)	    REFERENCES `sensors` (`id`)	    ON DELETE NO ACTION	    ON UPDATE CASCADE)	ENGINE = InnoDB	DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `free_addresses` (	  `ip` VARCHAR(45) NOT NULL,
	  `vlans_id` INT NOT NULL,
	  `insert_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	  INDEX `fk_free_addresses_vlans1_idx` (`vlans_id` ASC),
	  PRIMARY KEY (`ip`,
 `vlans_id`),
	  CONSTRAINT `fk_free_addresses_vlans1`	    FOREIGN KEY (`vlans_id`)	    REFERENCES `vlans` (`id`)	    ON DELETE CASCADE	    ON UPDATE CASCADE)	ENGINE = InnoDB	DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `drivers` (	  `id` INT(11) NOT NULL AUTO_INCREMENT,
	  `name` VARCHAR(20) NOT NULL,
	  `jsonschema` LONGTEXT NOT NULL,
	  `code` LONGTEXT NOT NULL,
	  PRIMARY KEY (`id`),
	  UNIQUE INDEX `name_UNIQUE` (`name` ASC))	ENGINE = InnoDB	DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `drivers_injected` (	  `driver_id` INT NOT NULL,
	  `board_id` VARCHAR(36) NOT NULL,
	  `state` VARCHAR(20) NOT NULL,
	  `latest_change` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	  PRIMARY KEY (`driver_id`,
 `board_id`),
	  INDEX `fk_drivers_injected_boards1_idx` (`board_id` ASC),
	  CONSTRAINT `fk_drivers_injected_drivers1`	    FOREIGN KEY (`driver_id`)	    REFERENCES `drivers` (`id`)	    ON DELETE CASCADE	    ON UPDATE CASCADE,
	  CONSTRAINT `fk_drivers_injected_boards_connected1`	    FOREIGN KEY (`board_id`)	    REFERENCES `boards` (`board_id`)	    ON DELETE CASCADE	    ON UPDATE CASCADE)	ENGINE = InnoDB	DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `mountpoints` (	  `src_board` VARCHAR(36) NOT NULL,
	  `dst_board` VARCHAR(36) NOT NULL,
	  `src_path` VARCHAR(400) NOT NULL,
	  `dst_path` VARCHAR(400) NOT NULL,
	  `status` VARCHAR(45) NOT NULL,
	  PRIMARY KEY (`src_board`,
 `dst_board`,
 `src_path`,
 `dst_path`),
	  INDEX `fk_mountpoints_boards_connected1_idx` (`src_board` ASC),
	  INDEX `fk_mountpoints_boards_connected2_idx` (`dst_board` ASC),
	  CONSTRAINT `fk_mountpoints_boards1`	    FOREIGN KEY (`src_board`)	    REFERENCES `boards` (`board_id`)	    ON DELETE CASCADE	    ON UPDATE CASCADE,
	  CONSTRAINT `fk_mountpoints_boards2`	    FOREIGN KEY (`dst_board`)	    REFERENCES `boards` (`board_id`)	    ON DELETE CASCADE	    ON UPDATE CASCADE)	ENGINE = InnoDB	DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `services` (	  `id` INT(11) NOT NULL AUTO_INCREMENT,
	  `name` VARCHAR(45) NOT NULL,
	  `port` INT NOT NULL,
	  `protocol` VARCHAR(10) NOT NULL,
	  PRIMARY KEY (`id`),
	  UNIQUE INDEX `name_UNIQUE` (`name` ASC))	ENGINE = InnoDB	DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `active_services` (	  `service_id` INT NOT NULL,
	  `board_id` VARCHAR(36) NOT NULL,
	  `public_port` INT NOT NULL,
	  `last_update` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	  `pid` INT NULL,
	  PRIMARY KEY (`service_id`,
 `board_id`,
 `public_port`),
	  INDEX `fk_active_services_services1_idx` (`service_id` ASC),
	  INDEX `fk_active_services_boards1_idx` (`board_id` ASC),
	  UNIQUE INDEX `public_port_UNIQUE` (`public_port` ASC),
	  CONSTRAINT `fk_active_services_services1`	    FOREIGN KEY (`service_id`)	    REFERENCES `services` (`id`)	    ON DELETE NO ACTION	    ON UPDATE CASCADE,
	  CONSTRAINT `fk_active_services_boards1`	    FOREIGN KEY (`board_id`)	    REFERENCES `boards` (`board_id`)	    ON DELETE CASCADE	    ON UPDATE CASCADE)	ENGINE = InnoDB	DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `coordinates` (	  `coordinates_id` INT NOT NULL AUTO_INCREMENT,
	  `board_id` VARCHAR(36) NOT NULL,
	  `altitude` VARCHAR(45) NOT NULL,
	  `longitude` VARCHAR(45) NOT NULL,
	  `latitude` VARCHAR(45) NOT NULL,
	  `timestamp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	  PRIMARY KEY (`coordinates_id`),
	  CONSTRAINT `fk_coordinates_boards1`	    FOREIGN KEY (`board_id`)	    REFERENCES `boards` (`board_id`)	    ON DELETE CASCADE	    ON UPDATE CASCADE)	ENGINE = InnoDB	DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `modules` (	  `id` INT(11) NOT NULL AUTO_INCREMENT,
	  `name` VARCHAR(45) NOT NULL,
	  `description` VARCHAR(300) NOT NULL,
	  PRIMARY KEY (`id`),
	  UNIQUE INDEX `name_UNIQUE` (`name` ASC))	ENGINE = InnoDB	DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `active_modules` (	  `module_id` INT NOT NULL,
	  `board_id` VARCHAR(36) NOT NULL,
	  `latest_update` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	  PRIMARY KEY (`module_id`,
 `board_id`),
	  INDEX `fk_active_services_services1_idx` (`module_id` ASC),
	  INDEX `fk_active_services_boards1_idx` (`board_id` ASC),
	  CONSTRAINT `fk_active_services_services10`	    FOREIGN KEY (`module_id`)	    REFERENCES `modules` (`id`)	    ON DELETE CASCADE	    ON UPDATE CASCADE,
	  CONSTRAINT `fk_active_services_boards10`	    FOREIGN KEY (`board_id`)	    REFERENCES `boards` (`board_id`)	    ON DELETE CASCADE	    ON UPDATE CASCADE)	ENGINE = InnoDB	DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `flows` (	  `id` INT NOT NULL AUTO_INCREMENT,
	  `name` VARCHAR(45) NOT NULL,
	  `description` VARCHAR(300) NULL,
	  `checksum` VARCHAR(45) NOT NULL,
	  `code` VARCHAR(45) NOT NULL,
	  `updated_at` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	  `created_at` TIMESTAMP NULL DEFAULT NULL,
	  PRIMARY KEY (`id`))	ENGINE = InnoDB	DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `flows_injected` (	  `flow_id` INT NOT NULL,
	  `board_id` VARCHAR(36) NOT NULL,
	  INDEX `fk_flows_injected_flows1_idx` (`flow_id` ASC),
	  PRIMARY KEY (`flow_id`,
 `board_id`),
	  INDEX `fk_flows_injected_boards1_idx` (`board_id` ASC),
	  CONSTRAINT `fk_flows_injected_flows1`	    FOREIGN KEY (`flow_id`)	    REFERENCES `flows` (`id`)	    ON DELETE NO ACTION	    ON UPDATE NO ACTION,
	  CONSTRAINT `fk_flows_injected_boards1`	    FOREIGN KEY (`board_id`)	    REFERENCES `boards` (`board_id`)	    ON DELETE NO ACTION	    ON UPDATE NO ACTION)	ENGINE = InnoDB	DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `requests` (	  `id_request` VARCHAR(36) NOT NULL,
	  `project_id` VARCHAR(36) NOT NULL,
	  `subject` VARCHAR(100) NOT NULL,
	  `result` VARCHAR(45) NULL DEFAULT NULL,
	  `timestamp` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	  PRIMARY KEY (`id_request`),
	  INDEX `fk_requests_projects1_idx` (`project_id` ASC),
	  CONSTRAINT `fk_requests_projects1`	    FOREIGN KEY (`project_id`)	    REFERENCES `projects` (`uuid`)	    ON DELETE NO ACTION	    ON UPDATE CASCADE)	ENGINE = InnoDB	DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `results` (	  `request_id` VARCHAR(36) NOT NULL,
	  `board_id` VARCHAR(36) NOT NULL,
	  `result` VARCHAR(45) NULL DEFAULT NULL,
	  `message` LONGTEXT NULL DEFAULT NULL,
	  `timestamp` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	  INDEX `fk_results_requests1_idx` (`request_id` ASC),
	  INDEX `fk_results_boards1_idx` (`board_id` ASC),
	  PRIMARY KEY (`request_id`,
 `board_id`),
	  UNIQUE INDEX `request_board_UNIQUE` (`request_id` ASC,
 `board_id` ASC),
	  CONSTRAINT `fk_results_requests1`	    FOREIGN KEY (`request_id`)	    REFERENCES `requests` (`id_request`)	    ON DELETE CASCADE	    ON UPDATE CASCADE,
	  CONSTRAINT `fk_results_boards1`	    FOREIGN KEY (`board_id`)	    REFERENCES `boards` (`board_id`)	    ON DELETE NO ACTION	    ON UPDATE CASCADE)	ENGINE = InnoDB	DEFAULT CHARACTER SET = utf8;

