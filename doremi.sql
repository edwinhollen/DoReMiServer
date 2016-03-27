DROP DATABASE IF EXISTS `DoReMi`;
CREATE DATABASE `DoReMi`
	DEFAULT CHARACTER SET utf8
	DEFAULT COLLATE utf8_general_ci;
USE `DoReMi`;

CREATE TABLE `players`(
	`player_id`	varchar(5) NOT NULL,
	`created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`player_id`)
);

CREATE TABLE `difficulties`(
	`difficulty` varchar(6) NOT NULL,
	PRIMARY KEY (`difficulty`)
);

CREATE TABLE `times`(
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`player_id` varchar(5) NOT NULL,
	`difficulty` varchar(6) NOT NULL,
	`start_time` datetime NOT NULL,
	`end_time` datetime NOT NULL,
	`created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY (`id`),
	KEY `player_id` (`player_id`),
	CONSTRAINT  `player_id_ibfk_1`  FOREIGN KEY (`player_id`) REFERENCES `players` (`player_id`)
);

INSERT INTO `difficulties` VALUES ('easy');
INSERT INTO `difficulties` VALUES ('medium');
INSERT INTO `difficulties` VALUES ('hard');