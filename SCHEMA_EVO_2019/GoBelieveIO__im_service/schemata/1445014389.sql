CREATE DATABASE IF NOT EXISTS im DEFAULT CHARACTER SET utf8;
use im;

CREATE TABLE IF NOT EXISTS `group`(
	   id BIGINT AUTO_INCREMENT PRIMARY KEY,
           appid  BIGINT,
	   master BIGINT,
           super TINYINT,
	   name VARCHAR(255));

CREATE TABLE IF NOT EXISTS group_member(group_id BIGINT, uid BIGINT, PRIMARY KEY(group_id, uid));


SHOW TABLES;

