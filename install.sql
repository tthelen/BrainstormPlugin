-- SQL
CREATE TABLE `brainstorm_votes` (
  `brainstorm_id` varchar(32) NOT NULL DEFAULT '',
  `user_id` varchar(32) NOT NULL DEFAULT '',
  `vote` tinyint(4) DEFAULT NULL,
  `chdate` BIGINT NOT NULL,
  `mkdate` BIGINT NOT NULL,
  PRIMARY KEY (`brainstorm_id`,`user_id`)
);



CREATE TABLE `brainstorms` (
  `brainstorm_id` varchar(32) NOT NULL DEFAULT '',
  `range_id` varchar(32) NOT NULL DEFAULT '',
  `title` varchar(255) DEFAULT NULL,
  `user_id` varchar(32) NOT NULL DEFAULT '',
  `text` text NOT NULL,
  `chdate` BIGINT NOT NULL,
  `mkdate` BIGINT NOT NULL,
  `closed` tinyint(4) NOT NULL DEFAULT '0',
  `type` enum('simple','sub','commented') NOT NULL DEFAULT 'simple',
  PRIMARY KEY (`brainstorm_id`),
  KEY `range_id` (`range_id`)
);