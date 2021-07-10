DROP TABLE IF EXISTS wp_pod;
DROP TABLE IF EXISTS wp_pod_types;
DROP TABLE IF EXISTS wp_pod_fields;
DROP TABLE IF EXISTS wp_pod_rel;
DROP TABLE IF EXISTS wp_pod_templates;
DROP TABLE IF EXISTS wp_pod_pages;
DROP TABLE IF EXISTS wp_pod_helpers;
DROP TABLE IF EXISTS wp_pod_menu;

CREATE TABLE `wp_pod` (
    `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `tbl_row_id` INT(10) UNSIGNED NULL DEFAULT NULL,
    `datatype` SMALLINT(5) UNSIGNED NULL DEFAULT NULL,
    `name` VARCHAR(128) NULL DEFAULT NULL,
    `created` DATETIME NULL DEFAULT NULL,
    `modified` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    `author_id` INT(10) UNSIGNED NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    INDEX `datatype_idx` (`datatype`)
) DEFAULT CHARSET utf8;

CREATE TABLE `wp_pod_types` (
    `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(32) NULL DEFAULT NULL,
    `label` VARCHAR(128) NULL DEFAULT NULL,
    `is_toplevel` TINYINT(1) NULL DEFAULT '0',
    `detail_page` VARCHAR(128) NULL DEFAULT NULL,
    `list_filters` TEXT NULL,
    `pre_save_helpers` TEXT NULL,
    `pre_drop_helpers` TEXT NULL,
    `post_save_helpers` TEXT NULL,
    `post_drop_helpers` TEXT NULL,
    PRIMARY KEY (`id`)
) DEFAULT CHARSET utf8;

CREATE TABLE `wp_pod_fields` (
    `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `datatype` SMALLINT(5) UNSIGNED NULL DEFAULT NULL,
    `name` VARCHAR(32) NULL DEFAULT NULL,
    `label` VARCHAR(128) NULL DEFAULT NULL,
    `comment` VARCHAR(128) NULL DEFAULT NULL,
    `coltype` VARCHAR(4) NULL DEFAULT NULL,
    `pickval` VARCHAR(32) NULL DEFAULT NULL,
    `sister_field_id` INT(10) UNSIGNED NULL DEFAULT NULL,
    `weight` SMALLINT(5) UNSIGNED NULL DEFAULT '0',
    `display_helper` TEXT NULL,
    `input_helper` TEXT NULL,
    `pick_filter` TEXT NULL,
    `pick_orderby` TEXT NULL,
    `required` TINYINT(4) NULL DEFAULT NULL,
    `unique` TINYINT(4) NULL DEFAULT NULL,
    `multiple` TINYINT(4) NULL DEFAULT NULL,
    PRIMARY KEY (`id`),
    INDEX `datatype_idx` (`datatype`)
) DEFAULT CHARSET utf8;

CREATE TABLE `wp_pod_rel` (
    `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `pod_id` INT(10) UNSIGNED NULL DEFAULT NULL,
    `sister_pod_id` INT(10) UNSIGNED NULL DEFAULT NULL,
    `field_id` INT(10) UNSIGNED NULL DEFAULT NULL,
    `tbl_row_id` INT(10) UNSIGNED NULL DEFAULT NULL,
    `weight` SMALLINT(5) UNSIGNED NULL DEFAULT '0',
    PRIMARY KEY (`id`),
    INDEX `field_id_idx` (`field_id`)
) DEFAULT CHARSET utf8;

CREATE TABLE `wp_pod_templates` (
    `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(32) NULL DEFAULT NULL,
    `code` LONGTEXT NULL,
    PRIMARY KEY (`id`)
) DEFAULT CHARSET utf8;

CREATE TABLE `wp_pod_pages` (
    `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `uri` VARCHAR(128) NULL DEFAULT NULL,
    `title` VARCHAR(128) NULL DEFAULT NULL,
    `phpcode` LONGTEXT NULL,
    `precode` LONGTEXT NULL,
    `page_template` VARCHAR(128) NULL DEFAULT NULL,
    PRIMARY KEY (`id`)
) DEFAULT CHARSET utf8;

CREATE TABLE `wp_pod_helpers` (
    `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(32) NULL DEFAULT NULL,
    `helper_type` VARCHAR(16) NOT NULL DEFAULT 'display',
    `phpcode` LONGTEXT NULL,
    PRIMARY KEY (`id`)
) DEFAULT CHARSET utf8;

CREATE TABLE `wp_pod_menu` (
    `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
    `uri` VARCHAR(128) NULL DEFAULT NULL,
    `title` VARCHAR(128) NULL DEFAULT NULL,
    `lft` INT(10) UNSIGNED NULL DEFAULT NULL,
    `rgt` INT(10) UNSIGNED NULL DEFAULT NULL,
    `weight` SMALLINT(5) UNSIGNED NULL DEFAULT '0',
    PRIMARY KEY (`id`)
) DEFAULT CHARSET utf8;