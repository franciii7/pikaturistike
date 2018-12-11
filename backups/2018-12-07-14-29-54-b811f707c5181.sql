#
# TABLE STRUCTURE FOR: language
#

CREATE TABLE `language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `language` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  `is_locked` tinyint(1) DEFAULT '0',
  `is_frontend` tinyint(1) DEFAULT '1',
  `is_rtl` tinyint(1) DEFAULT '0',
  `currency_default` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'USD',
  `domain` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `is_hidden_submission` tinyint(1) DEFAULT '0',
  `facebook_lang_code` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `code_UNIQUE` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `language` (`id`, `code`, `language`, `is_default`, `is_locked`, `is_frontend`, `is_rtl`, `currency_default`, `domain`, `is_hidden_submission`, `facebook_lang_code`) VALUES (1, 'en', 'english', 0, 0, 1, 0, '0', '0', 0, '');
INSERT INTO `language` (`id`, `code`, `language`, `is_default`, `is_locked`, `is_frontend`, `is_rtl`, `currency_default`, `domain`, `is_hidden_submission`, `facebook_lang_code`) VALUES (4, 'sq', 'shqip', 1, 1, 1, 0, '0', '0', 0, '');


#
# TABLE STRUCTURE FOR: update_debug
#

CREATE TABLE `update_debug` (
  `id` int(11) NOT NULL,
  `version` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `update_debug` (`id`, `version`, `message`) VALUES (1, '1.5.1', 'initial update_debug message');


#
# TABLE STRUCTURE FOR: treelevel
#

CREATE TABLE `treelevel` (
  `id` int(11) NOT NULL,
  `root_id` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `level_name` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: stats_periods
#

CREATE TABLE `stats_periods` (
  `id` int(11) NOT NULL,
  `property_id` int(11) DEFAULT NULL,
  `period` varchar(45) COLLATE utf8_unicode_ci DEFAULT 'WEEK' COMMENT 'WEEK\nDAY\nMONTH',
  `views` int(11) DEFAULT '0',
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (1, 14, 'WEEK', 5, '2015-03-02 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (2, 14, 'DAY', 3, '2015-03-05 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (3, 14, 'MONTH', 232, '2015-03-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (4, 14, 'YEAR', 338, '2015-01-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (5, 14, 'DAY', 1, '2015-03-07 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (6, 14, 'DAY', 1, '2015-03-08 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (7, 14, 'WEEK', 1, '2015-03-09 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (8, 14, 'DAY', 1, '2015-03-09 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (9, 16, 'WEEK', 1, '2015-03-09 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (10, 16, 'DAY', 1, '2015-03-13 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (11, 16, 'MONTH', 1, '2015-03-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (12, 16, 'YEAR', 1, '2015-01-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (13, 30, 'WEEK', 1, '2015-03-09 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (14, 30, 'DAY', 1, '2015-03-13 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (15, 30, 'MONTH', 34, '2015-03-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (16, 30, 'YEAR', 150, '2015-01-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (17, 12, 'WEEK', 1, '2015-03-16 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (18, 12, 'DAY', 1, '2015-03-17 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (19, 12, 'MONTH', 1, '2015-03-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (20, 12, 'YEAR', 71, '2015-01-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (21, 8, 'WEEK', 1, '2015-03-16 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (22, 8, 'DAY', 1, '2015-03-17 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (23, 8, 'MONTH', 1, '2015-03-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (24, 8, 'YEAR', 39, '2015-01-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (25, 30, 'WEEK', 33, '2015-03-16 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (26, 30, 'DAY', 1, '2015-03-17 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (27, 14, 'WEEK', 1, '2015-03-16 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (28, 14, 'DAY', 1, '2015-03-18 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (29, 30, 'DAY', 32, '2015-03-19 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (30, 14, 'WEEK', 225, '2015-03-23 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (31, 14, 'DAY', 32, '2015-03-24 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (32, 14, 'DAY', 4, '2015-03-27 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (33, 14, 'DAY', 189, '2015-03-29 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (34, 19, 'WEEK', 5, '2015-04-06 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (35, 19, 'DAY', 2, '2015-04-07 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (36, 19, 'MONTH', 5, '2015-04-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (37, 19, 'YEAR', 17, '2015-01-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (38, 19, 'DAY', 3, '2015-04-08 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (39, 8, 'WEEK', 3, '2015-04-06 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (40, 8, 'DAY', 3, '2015-04-10 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (41, 8, 'MONTH', 3, '2015-04-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (42, 14, 'WEEK', 3, '2015-04-06 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (43, 14, 'DAY', 3, '2015-04-12 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (44, 14, 'MONTH', 3, '2015-04-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (45, 30, 'WEEK', 2, '2015-04-20 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (46, 30, 'DAY', 2, '2015-04-26 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (47, 30, 'MONTH', 2, '2015-04-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (48, 8, 'WEEK', 3, '2015-05-25 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (49, 8, 'DAY', 1, '2015-05-25 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (50, 8, 'MONTH', 3, '2015-05-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (51, 8, 'DAY', 2, '2015-05-29 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (52, 14, 'WEEK', 21, '2015-06-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (53, 14, 'DAY', 20, '2015-06-06 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (54, 14, 'MONTH', 56, '2015-06-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (55, 30, 'WEEK', 1, '2015-06-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (56, 30, 'DAY', 1, '2015-06-07 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (57, 30, 'MONTH', 101, '2015-06-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (58, 14, 'DAY', 1, '2015-06-07 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (59, 14, 'WEEK', 27, '2015-06-08 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (60, 14, 'DAY', 2, '2015-06-08 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (61, 8, 'WEEK', 16, '2015-06-08 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (62, 8, 'DAY', 5, '2015-06-08 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (63, 8, 'MONTH', 26, '2015-06-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (64, 14, 'DAY', 25, '2015-06-09 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (65, 12, 'WEEK', 55, '2015-06-08 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (66, 12, 'DAY', 50, '2015-06-09 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (67, 12, 'MONTH', 70, '2015-06-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (68, 13, 'WEEK', 5, '2015-06-08 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (69, 13, 'DAY', 5, '2015-06-09 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (70, 13, 'MONTH', 5, '2015-06-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (71, 13, 'YEAR', 10, '2015-01-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (72, 30, 'WEEK', 66, '2015-06-08 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (73, 30, 'DAY', 16, '2015-06-09 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (74, 7, 'WEEK', 18, '2015-06-08 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (75, 7, 'DAY', 8, '2015-06-09 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (76, 7, 'MONTH', 29, '2015-06-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (77, 7, 'YEAR', 32, '2015-01-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (78, 8, 'DAY', 6, '2015-06-09 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (79, 30, 'DAY', 30, '2015-06-10 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (80, 12, 'DAY', 5, '2015-06-10 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (81, 7, 'DAY', 10, '2015-06-13 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (82, 30, 'DAY', 20, '2015-06-13 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (83, 8, 'DAY', 5, '2015-06-13 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (84, 7, 'WEEK', 9, '2015-06-15 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (85, 7, 'DAY', 5, '2015-06-19 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (86, 30, 'WEEK', 15, '2015-06-15 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (87, 30, 'DAY', 5, '2015-06-19 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (88, 14, 'WEEK', 5, '2015-06-15 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (89, 14, 'DAY', 5, '2015-06-20 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (90, 7, 'DAY', 4, '2015-06-20 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (91, 30, 'DAY', 10, '2015-06-20 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (92, 12, 'WEEK', 12, '2015-06-15 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (93, 12, 'DAY', 12, '2015-06-20 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (94, 30, 'WEEK', 19, '2015-06-22 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (95, 30, 'DAY', 12, '2015-06-23 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (96, 7, 'WEEK', 2, '2015-06-22 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (97, 7, 'DAY', 2, '2015-06-23 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (98, 8, 'WEEK', 10, '2015-06-22 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (99, 8, 'DAY', 2, '2015-06-23 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (100, 14, 'WEEK', 3, '2015-06-22 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (101, 14, 'DAY', 3, '2015-06-24 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (102, 12, 'WEEK', 3, '2015-06-22 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (103, 12, 'DAY', 3, '2015-06-24 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (104, 8, 'DAY', 8, '2015-06-24 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (105, 30, 'DAY', 7, '2015-06-24 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (106, 19, 'WEEK', 5, '2015-06-22 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (107, 19, 'DAY', 5, '2015-06-24 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (108, 19, 'MONTH', 5, '2015-06-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (109, 18, 'WEEK', 5, '2015-06-22 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (110, 18, 'DAY', 5, '2015-06-24 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (111, 18, 'MONTH', 5, '2015-06-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (112, 18, 'YEAR', 9, '2015-01-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (113, 8, 'WEEK', 6, '2015-06-29 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (114, 8, 'DAY', 6, '2015-07-05 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (115, 8, 'MONTH', 6, '2015-07-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (116, 30, 'WEEK', 6, '2015-06-29 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (117, 30, 'DAY', 6, '2015-07-05 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (118, 30, 'MONTH', 13, '2015-07-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (119, 9, 'WEEK', 4, '2015-06-29 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (120, 9, 'DAY', 4, '2015-07-05 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (121, 9, 'MONTH', 4, '2015-07-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (122, 9, 'YEAR', 4, '2015-01-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (123, 14, 'WEEK', 9, '2015-07-06 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (124, 14, 'DAY', 5, '2015-07-07 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (125, 14, 'MONTH', 47, '2015-07-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (126, 14, 'DAY', 4, '2015-07-09 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (127, 19, 'WEEK', 5, '2015-07-13 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (128, 19, 'DAY', 5, '2015-07-14 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (129, 19, 'MONTH', 7, '2015-07-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (130, 14, 'WEEK', 5, '2015-07-13 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (131, 14, 'DAY', 5, '2015-07-18 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (132, 14, 'WEEK', 10, '2015-07-20 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (133, 14, 'DAY', 5, '2015-07-21 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (134, 14, 'DAY', 5, '2015-07-23 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (135, 13, 'WEEK', 5, '2015-07-20 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (136, 13, 'DAY', 5, '2015-07-23 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (137, 13, 'MONTH', 5, '2015-07-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (138, 30, 'WEEK', 5, '2015-07-20 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (139, 30, 'DAY', 5, '2015-07-23 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (140, 14, 'WEEK', 23, '2015-07-27 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (141, 14, 'DAY', 4, '2015-07-27 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (142, 18, 'WEEK', 4, '2015-07-27 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (143, 18, 'DAY', 4, '2015-07-27 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (144, 18, 'MONTH', 4, '2015-07-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (145, 14, 'DAY', 19, '2015-07-28 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (146, 30, 'WEEK', 2, '2015-07-27 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (147, 30, 'DAY', 2, '2015-07-30 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (148, 19, 'WEEK', 2, '2015-07-27 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (149, 19, 'DAY', 2, '2015-07-30 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (150, 7, 'WEEK', 3, '2015-07-27 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (151, 7, 'DAY', 3, '2015-07-30 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (152, 7, 'MONTH', 3, '2015-07-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (153, 2, 'WEEK', 2, '2016-02-29 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (154, 2, 'DAY', 2, '2016-03-04 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (155, 2, 'MONTH', 2, '2016-03-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (156, 2, 'YEAR', 2, '2016-01-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (157, 1, 'WEEK', 4, '2016-02-29 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (158, 1, 'DAY', 4, '2016-03-04 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (159, 1, 'MONTH', 4, '2016-03-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (160, 1, 'YEAR', 4, '2016-01-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (161, 21, 'WEEK', 2, '2016-02-29 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (162, 21, 'DAY', 2, '2016-03-04 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (163, 21, 'MONTH', 2, '2016-03-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (164, 21, 'YEAR', 2, '2016-01-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (165, 18, 'WEEK', 1, '2016-02-29 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (166, 18, 'DAY', 1, '2016-03-06 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (167, 18, 'MONTH', 7, '2016-03-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (168, 18, 'YEAR', 8, '2016-01-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (169, 11, 'WEEK', 1, '2016-03-07 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (170, 11, 'DAY', 1, '2016-03-07 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (171, 11, 'MONTH', 1, '2016-03-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (172, 11, 'YEAR', 1, '2016-01-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (173, 19, 'WEEK', 3, '2016-03-07 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (174, 19, 'DAY', 3, '2016-03-07 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (175, 19, 'MONTH', 3, '2016-03-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (176, 19, 'YEAR', 3, '2016-01-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (177, 18, 'WEEK', 6, '2016-03-07 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (178, 18, 'DAY', 2, '2016-03-08 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (179, 18, 'DAY', 4, '2016-03-11 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (180, 4, 'WEEK', 1, '2016-03-07 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (181, 4, 'DAY', 1, '2016-03-11 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (182, 4, 'MONTH', 1, '2016-03-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (183, 4, 'YEAR', 1, '2016-01-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (184, 5, 'WEEK', 1, '2016-03-07 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (185, 5, 'DAY', 1, '2016-03-11 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (186, 5, 'MONTH', 1, '2016-03-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (187, 5, 'YEAR', 1, '2016-01-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (188, 18, 'WEEK', 1, '2016-09-26 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (189, 18, 'DAY', 1, '2016-09-29 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (190, 18, 'MONTH', 1, '2016-09-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (191, 2, 'WEEK', 1, '2017-01-30 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (192, 2, 'DAY', 1, '2017-01-30 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (193, 2, 'MONTH', 1, '2017-01-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (194, 2, 'YEAR', 1, '2017-01-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (195, 18, 'WEEK', 1, '2017-06-19 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (196, 18, 'DAY', 1, '2017-06-20 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (197, 18, 'MONTH', 1, '2017-06-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (198, 18, 'YEAR', 1, '2017-01-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (199, 11, 'WEEK', 1, '2017-12-04 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (200, 11, 'DAY', 1, '2017-12-08 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (201, 11, 'MONTH', 1, '2017-12-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (202, 11, 'YEAR', 1, '2017-01-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (203, 18, 'WEEK', 1, '2018-07-16 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (204, 18, 'DAY', 1, '2018-07-19 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (205, 18, 'MONTH', 1, '2018-07-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (206, 18, 'YEAR', 1, '2018-01-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (207, 2, 'WEEK', 2, '2018-07-16 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (208, 2, 'DAY', 2, '2018-07-21 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (209, 2, 'MONTH', 2, '2018-07-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (210, 2, 'YEAR', 2, '2018-01-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (211, 20, 'WEEK', 1, '2018-07-30 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (212, 20, 'DAY', 1, '2018-07-31 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (213, 20, 'MONTH', 1, '2018-07-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (214, 20, 'YEAR', 1, '2018-01-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (215, 11, 'WEEK', 1, '2018-10-22 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (216, 11, 'DAY', 1, '2018-10-28 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (217, 11, 'MONTH', 1, '2018-10-01 00:00:00');
INSERT INTO `stats_periods` (`id`, `property_id`, `period`, `views`, `date`) VALUES (218, 11, 'YEAR', 1, '2018-01-01 00:00:00');


#
# TABLE STRUCTURE FOR: stats
#

CREATE TABLE `stats` (
  `id` int(11) NOT NULL,
  `property_id` int(11) DEFAULT NULL,
  `time_part_5min` datetime DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (1, 14, '2015-03-01 19:15:00', 3);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (2, 14, '2015-03-01 19:20:00', 3);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (3, 14, '2015-03-01 19:40:00', 3);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (4, 14, '2015-03-01 19:45:00', 4);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (5, 14, '2015-03-01 19:50:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (6, 14, '2015-03-01 19:55:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (7, 9, '2015-03-01 19:55:00', 2);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (8, 8, '2015-03-01 19:55:00', 2);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (9, 14, '2015-03-02 09:35:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (10, 14, '2015-03-02 09:45:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (11, 14, '2015-03-02 10:00:00', 2);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (12, 14, '2015-03-02 19:45:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (13, 14, '2015-03-02 19:55:00', 4);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (14, 14, '2015-03-02 20:30:00', 3);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (15, 14, '2015-03-02 21:10:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (16, 14, '2015-03-02 21:15:00', 4);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (17, 14, '2015-03-02 21:30:00', 2);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (18, 14, '2015-03-02 21:35:00', 3);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (19, 14, '2015-03-02 21:40:00', 3);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (20, 14, '2015-03-02 21:45:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (21, 14, '2015-03-02 21:50:00', 5);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (22, 14, '2015-03-02 21:55:00', 3);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (23, 14, '2015-03-02 22:00:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (24, 14, '2015-03-03 17:10:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (25, 14, '2015-03-03 18:10:00', 2);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (26, 14, '2015-03-03 21:00:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (27, 14, '2015-03-03 21:15:00', 2);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (28, 14, '2015-03-03 21:25:00', 4);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (29, 14, '2015-03-03 21:50:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (30, 14, '2015-03-03 21:55:00', 5);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (31, 14, '2015-03-03 22:00:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (32, 14, '2015-03-05 09:25:00', 2);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (33, 12, '2015-03-05 09:25:00', 2);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (34, 12, '2015-03-05 09:30:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (35, 14, '2015-03-05 16:45:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (36, 14, '2015-03-05 16:50:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (37, 14, '2015-03-05 17:20:00', 2);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (38, 14, '2015-03-05 17:25:00', 5);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (39, 14, '2015-03-07 13:45:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (40, 14, '2015-03-08 23:00:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (41, 14, '2015-03-09 20:05:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (42, 16, '2015-03-13 09:20:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (43, 30, '2015-03-13 09:25:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (44, 12, '2015-03-17 22:15:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (45, 8, '2015-03-17 23:10:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (46, 30, '2015-03-17 23:10:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (47, 14, '2015-03-18 09:15:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (48, 30, '2015-03-19 18:45:00', 32);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (49, 14, '2015-03-24 21:35:00', 2);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (50, 14, '2015-03-24 21:50:00', 2);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (51, 14, '2015-03-24 21:55:00', 8);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (52, 14, '2015-03-24 22:00:00', 16);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (53, 14, '2015-03-24 22:05:00', 2);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (54, 14, '2015-03-24 22:15:00', 2);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (55, 14, '2015-03-27 21:35:00', 2);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (56, 14, '2015-03-27 21:55:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (57, 14, '2015-03-27 22:00:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (58, 14, '2015-03-29 18:25:00', 2);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (59, 14, '2015-03-29 19:00:00', 59);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (60, 14, '2015-03-29 19:25:00', 7);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (61, 14, '2015-03-29 19:05:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (62, 14, '2015-03-29 19:50:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (63, 14, '2015-03-29 19:55:00', 5);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (64, 14, '2015-03-29 20:00:00', 4);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (65, 14, '2015-03-29 20:05:00', 45);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (66, 14, '2015-03-29 20:10:00', 2);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (67, 14, '2015-03-29 20:15:00', 7);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (68, 14, '2015-03-29 20:20:00', 46);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (69, 14, '2015-03-29 20:25:00', 4);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (70, 14, '2015-03-29 20:30:00', 5);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (71, 14, '2015-03-29 20:35:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (72, 19, '2015-04-07 11:10:00', 2);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (73, 19, '2015-04-08 11:25:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (74, 19, '2015-04-08 11:30:00', 2);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (75, 8, '2015-04-10 18:55:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (76, 8, '2015-04-10 19:05:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (77, 8, '2015-04-10 19:45:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (78, 14, '2015-04-12 15:30:00', 2);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (79, 14, '2015-04-12 15:35:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (80, 30, '2015-04-26 19:55:00', 2);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (81, 8, '2015-05-25 21:10:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (82, 8, '2015-05-29 15:30:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (83, 8, '2015-05-29 15:50:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (84, 14, '2015-06-06 12:10:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (85, 14, '2015-06-06 17:45:00', 2);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (86, 14, '2015-06-06 17:50:00', 3);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (87, 14, '2015-06-06 17:55:00', 2);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (88, 14, '2015-06-06 18:00:00', 8);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (89, 14, '2015-06-06 18:05:00', 2);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (90, 14, '2015-06-06 18:10:00', 2);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (91, 30, '2015-06-07 15:15:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (92, 14, '2015-06-07 15:20:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (93, 14, '2015-06-08 19:45:00', 2);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (94, 8, '2015-06-08 20:00:00', 5);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (95, 14, '2015-06-09 08:30:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (96, 12, '2015-06-09 08:30:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (97, 14, '2015-06-09 14:45:00', 5);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (98, 14, '2015-06-09 14:50:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (99, 14, '2015-06-09 14:55:00', 6);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (100, 14, '2015-06-09 15:00:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (101, 14, '2015-06-09 15:05:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (102, 14, '2015-06-09 15:10:00', 3);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (103, 12, '2015-06-09 15:10:00', 6);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (104, 12, '2015-06-09 15:15:00', 4);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (105, 12, '2015-06-09 15:20:00', 4);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (106, 12, '2015-06-09 15:25:00', 5);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (107, 12, '2015-06-09 15:30:00', 7);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (108, 12, '2015-06-09 15:35:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (109, 12, '2015-06-09 16:10:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (110, 12, '2015-06-09 19:15:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (111, 12, '2015-06-09 19:20:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (112, 12, '2015-06-09 19:45:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (113, 12, '2015-06-09 19:50:00', 4);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (114, 12, '2015-06-09 19:55:00', 3);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (115, 12, '2015-06-09 20:00:00', 6);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (116, 14, '2015-06-09 20:05:00', 2);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (117, 14, '2015-06-09 20:10:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (118, 14, '2015-06-09 20:15:00', 4);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (119, 13, '2015-06-09 20:20:00', 5);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (120, 30, '2015-06-09 20:20:00', 6);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (121, 7, '2015-06-09 20:20:00', 6);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (122, 7, '2015-06-09 20:25:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (123, 7, '2015-06-09 20:30:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (124, 30, '2015-06-09 20:40:00', 4);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (125, 30, '2015-06-09 20:45:00', 5);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (126, 12, '2015-06-09 20:55:00', 4);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (127, 12, '2015-06-09 21:00:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (128, 30, '2015-06-09 21:00:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (129, 8, '2015-06-09 21:00:00', 6);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (130, 30, '2015-06-10 16:20:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (131, 30, '2015-06-10 16:25:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (132, 30, '2015-06-10 16:30:00', 4);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (133, 30, '2015-06-10 16:35:00', 5);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (134, 30, '2015-06-10 17:45:00', 6);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (135, 30, '2015-06-10 17:50:00', 7);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (136, 30, '2015-06-10 17:55:00', 4);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (137, 30, '2015-06-10 18:00:00', 2);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (138, 12, '2015-06-10 19:15:00', 5);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (139, 7, '2015-06-13 09:45:00', 5);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (140, 7, '2015-06-13 10:00:00', 5);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (141, 30, '2015-06-13 10:00:00', 5);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (142, 30, '2015-06-13 10:05:00', 6);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (143, 30, '2015-06-13 10:10:00', 4);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (144, 30, '2015-06-13 10:15:00', 4);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (145, 30, '2015-06-13 10:20:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (146, 8, '2015-06-13 10:20:00', 5);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (147, 7, '2015-06-19 14:10:00', 5);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (148, 30, '2015-06-19 14:10:00', 5);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (149, 14, '2015-06-20 15:30:00', 5);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (150, 7, '2015-06-20 19:10:00', 4);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (151, 30, '2015-06-20 19:10:00', 3);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (152, 30, '2015-06-20 19:25:00', 3);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (153, 30, '2015-06-20 19:30:00', 2);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (154, 30, '2015-06-20 19:35:00', 2);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (155, 12, '2015-06-20 20:10:00', 4);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (156, 12, '2015-06-20 20:15:00', 4);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (157, 12, '2015-06-20 20:20:00', 4);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (158, 30, '2015-06-23 23:50:00', 4);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (159, 7, '2015-06-23 23:50:00', 2);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (160, 8, '2015-06-23 23:50:00', 2);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (161, 30, '2015-06-23 23:55:00', 8);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (162, 14, '2015-06-24 21:40:00', 3);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (163, 12, '2015-06-24 21:40:00', 3);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (164, 8, '2015-06-24 21:40:00', 5);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (165, 30, '2015-06-24 21:40:00', 7);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (166, 19, '2015-06-24 21:40:00', 5);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (167, 18, '2015-06-24 21:40:00', 5);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (168, 8, '2015-06-24 21:45:00', 3);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (169, 8, '2015-07-05 12:05:00', 4);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (170, 30, '2015-07-05 12:05:00', 2);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (171, 8, '2015-07-05 13:40:00', 2);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (172, 30, '2015-07-05 13:40:00', 2);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (173, 9, '2015-07-05 13:55:00', 4);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (174, 30, '2015-07-05 14:05:00', 2);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (175, 14, '2015-07-07 21:40:00', 5);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (176, 14, '2015-07-09 20:00:00', 4);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (177, 19, '2015-07-14 22:00:00', 5);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (178, 14, '2015-07-18 17:20:00', 5);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (179, 14, '2015-07-21 19:40:00', 5);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (180, 14, '2015-07-23 15:20:00', 5);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (181, 13, '2015-07-23 15:20:00', 5);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (182, 30, '2015-07-23 15:20:00', 5);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (183, 14, '2015-07-27 18:50:00', 4);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (184, 18, '2015-07-27 19:00:00', 4);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (185, 14, '2015-07-28 14:30:00', 11);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (186, 14, '2015-07-28 14:40:00', 3);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (187, 14, '2015-07-28 14:55:00', 2);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (188, 14, '2015-07-28 15:00:00', 2);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (189, 14, '2015-07-28 15:05:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (190, 30, '2015-07-30 17:10:00', 2);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (191, 19, '2015-07-30 17:15:00', 2);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (192, 7, '2015-07-30 17:30:00', 3);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (193, 2, '2016-03-04 16:30:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (194, 2, '2016-03-04 16:35:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (195, 1, '2016-03-04 21:05:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (196, 1, '2016-03-04 21:15:00', 2);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (197, 1, '2016-03-04 21:20:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (198, 21, '2016-03-04 21:25:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (199, 21, '2016-03-04 21:30:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (200, 18, '2016-03-06 11:55:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (201, 11, '2016-03-07 17:35:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (202, 19, '2016-03-07 17:40:00', 2);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (203, 19, '2016-03-07 19:35:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (204, 18, '2016-03-08 13:20:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (205, 18, '2016-03-08 15:40:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (206, 18, '2016-03-11 16:20:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (207, 4, '2016-03-11 16:20:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (208, 5, '2016-03-11 16:30:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (209, 18, '2016-03-11 16:30:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (210, 18, '2016-03-11 16:45:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (211, 18, '2016-03-11 17:20:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (212, 18, '2016-09-29 17:10:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (213, 2, '2017-01-30 11:50:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (214, 18, '2017-06-20 11:00:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (215, 11, '2017-12-08 23:15:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (216, 18, '2018-07-19 18:35:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (217, 2, '2018-07-21 11:55:00', 2);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (218, 20, '2018-07-31 15:10:00', 1);
INSERT INTO `stats` (`id`, `property_id`, `time_part_5min`, `views`) VALUES (219, 11, '2018-10-28 12:05:00', 1);


#
# TABLE STRUCTURE FOR: slugs
#

CREATE TABLE `slugs` (
  `id` int(11) NOT NULL,
  `model_name` varchar(45) COLLATE utf8_unicode_ci DEFAULT 'page_m',
  `model_id` int(11) DEFAULT NULL,
  `model_lang_code` varchar(15) COLLATE utf8_unicode_ci DEFAULT 'en',
  `model_lang_id` int(11) DEFAULT '1',
  `slug` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `real_url` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (21, 'page_m', 169, 'en', 1, 'agents', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (22, 'page_m', 169, 'hr', 2, 'agenti', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (23, 'page_m', 147, 'en', 1, 'featured', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (24, 'page_m', 147, 'hr', 2, 'izdvojene', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (27, 'page_m', 142, 'en', 1, 'test-page', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (28, 'page_m', 142, 'hr', 2, 'test-stranica', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (29, 'page_m', 145, 'en', 1, 'fullscreen', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (30, 'page_m', 145, 'hr', 2, 'puni-zaslon', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (31, 'page_m', 143, 'en', 1, 'custom-search', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (32, 'page_m', 143, 'hr', 2, 'prilagodeni-pretrazivac', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (43, 'page_m', 4, 'en', 1, 'contact', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (44, 'page_m', 4, 'hr', 2, 'kontakt', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (223, 'treefield_m', 22, 'en', 1, 'winnipeg', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (224, 'treefield_m', 22, 'hr', 2, 'winnipeg1', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (225, 'custom', NULL, 'en', 1, 'winnipeg-test', 'winnipeg.htm?search={\"search_option_smart\": \"zagreb\",\"test\":\"test2\"}');
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (226, 'custom', NULL, 'en', 1, 'winnipeg-test-2', 'map.htm');
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (227, 'custom', NULL, 'en', 1, 'winnipeg-test-3', 'index.php/en/6/map');
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (312, 'page_m', 5, 'en', 1, 'about-us', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (313, 'page_m', 5, 'hr', 2, 'o-nama', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (328, 'page_m', 6, 'en', 1, 'map', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (329, 'page_m', 6, 'hr', 2, 'karta', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (340, 'custom', NULL, 'en', 1, 'test-fabian', 'index.php/en?search={ \"search_option_2\":\"Apartment\", \"search_option_4\":\"Rent\", \"search_option_22\":\"true\",\"search_option_11\":\"true\"}');
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (357, 'estate_m', 30, 'en', 1, 'bjelovar-estate', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (358, 'estate_m', 30, 'hr', 2, 'bjelovar-nekretnina', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (367, 'estate_m', 18, 'en', 1, 'small-beauty', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (368, 'estate_m', 18, 'hr', 2, 'malena-ljepotica', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (369, 'estate_m', 11, 'en', 1, 'center-korzo', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (370, 'estate_m', 11, 'hr', 2, 'korzo', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (371, 'estate_m', 4, 'en', 1, 'domenico', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (372, 'estate_m', 4, 'hr', 2, 'domenico1', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (373, 'estate_m', 2, 'en', 1, 'the-old-town', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (374, 'estate_m', 2, 'hr', 2, 'stari-grad', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (375, 'estate_m', 1, 'en', 1, 'promenade-vatroslava-jagica', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (376, 'estate_m', 1, 'hr', 2, 'setaliste-vatroslava-jagica', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (377, 'estate_m', 20, 'en', 1, 'six', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (378, 'estate_m', 20, 'hr', 2, 'slasticarnica-sest', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (379, 'estate_m', 19, 'en', 1, 'retro-old', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (380, 'estate_m', 19, 'hr', 2, 'stari-retro', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (381, 'estate_m', 17, 'en', 1, 'hz-putnicki-prijevoz', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (382, 'estate_m', 17, 'hr', 2, 'hz-putnicki-prijevoz1', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (383, 'estate_m', 16, 'en', 1, 'ap-varazdin', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (384, 'estate_m', 16, 'hr', 2, 'ap-varazdin1', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (385, 'estate_m', 15, 'en', 1, 'round-towers', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (386, 'estate_m', 15, 'hr', 2, 'okrugle-kule', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (387, 'estate_m', 14, 'en', 1, 'opca-bolnica-varazdin', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (388, 'estate_m', 14, 'hr', 2, 'opca-bolnica-varazdin1', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (389, 'estate_m', 13, 'en', 1, 'hotel-turist', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (390, 'estate_m', 13, 'hr', 2, 'hotel-turist1', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (391, 'estate_m', 12, 'en', 1, 'franjevacki-trg', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (392, 'estate_m', 12, 'hr', 2, 'franjevacki-trg1', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (393, 'estate_m', 10, 'en', 1, 'mea-culpa-bar', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (394, 'estate_m', 10, 'hr', 2, 'mea-culpa-bar1', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (395, 'estate_m', 9, 'en', 1, 'supernova', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (396, 'estate_m', 9, 'hr', 2, 'supernova1', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (397, 'estate_m', 8, 'en', 1, 'ozalj-apartment', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (398, 'estate_m', 8, 'hr', 2, 'ozalj-apartman', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (399, 'estate_m', 7, 'en', 1, 'nk-varteks', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (400, 'estate_m', 7, 'hr', 2, 'nk-varteks1', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (401, 'estate_m', 6, 'en', 1, 'coffeehouse', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (402, 'estate_m', 6, 'hr', 2, 'kavana-dora', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (403, 'estate_m', 5, 'en', 1, 'fountain', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (404, 'estate_m', 5, 'hr', 2, 'fontana', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (405, 'estate_m', 3, 'en', 1, 'movie-gallery', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (406, 'estate_m', 3, 'hr', 2, 'kino-galerija', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (411, 'page_m', 1, 'en', 1, 'categories', NULL);
INSERT INTO `slugs` (`id`, `model_name`, `model_id`, `model_lang_code`, `model_lang_id`, `slug`, `real_url`) VALUES (412, 'page_m', 1, 'hr', 2, 'kategorije', NULL);


#
# TABLE STRUCTURE FOR: saved_search
#

CREATE TABLE `saved_search` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `lang_code` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activated` tinyint(1) DEFAULT '1',
  `date_created` datetime DEFAULT NULL,
  `date_last_informed` datetime DEFAULT NULL,
  `parameters` text COLLATE utf8_unicode_ci COMMENT 'parameters saved in JSON format',
  `delivery_frequency_h` int(11) DEFAULT '24',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: favorites
#

CREATE TABLE `favorites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_saved` datetime DEFAULT NULL,
  `lang_code` varchar(45) COLLATE utf8_unicode_ci DEFAULT 'en',
  `user_id` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  `date_last_informed` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: cacher
#

CREATE TABLE `cacher` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `index_hash` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `index_real` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `expire_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_chars_UNIQUE` (`index_hash`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `cacher` (`id`, `index_hash`, `index_real`, `value`, `expire_date`) VALUES (31, '90f296016d429eb3ab7fc87af6c9d08c', 'zagreb', 's:1537:\"{\n   \"results\" : [\n      {\n         \"address_components\" : [\n            {\n               \"long_name\" : \"Zagreb\",\n               \"short_name\" : \"Zagreb\",\n               \"types\" : [ \"locality\", \"political\" ]\n            },\n            {\n               \"long_name\" : \"City of Zagreb\",\n               \"short_name\" : \"City of Zagreb\",\n               \"types\" : [ \"administrative_area_level_1\", \"political\" ]\n            },\n            {\n               \"long_name\" : \"Croatia\",\n               \"short_name\" : \"HR\",\n               \"types\" : [ \"country\", \"political\" ]\n            }\n         ],\n         \"formatted_address\" : \"Zagreb, Croatia\",\n         \"geometry\" : {\n            \"bounds\" : {\n               \"northeast\" : {\n                  \"lat\" : 45.9395392,\n                  \"lng\" : 16.1069727\n               },\n               \"southwest\" : {\n                  \"lat\" : 45.7408527,\n                  \"lng\" : 15.8216904\n               }\n            },\n            \"location\" : {\n               \"lat\" : 45.8150108,\n               \"lng\" : 15.981919\n            },\n            \"location_type\" : \"APPROXIMATE\",\n            \"viewport\" : {\n               \"northeast\" : {\n                  \"lat\" : 45.9395392,\n                  \"lng\" : 16.1069727\n               },\n               \"southwest\" : {\n                  \"lat\" : 45.7408527,\n                  \"lng\" : 15.8216904\n               }\n            }\n         },\n         \"place_id\" : \"ChIJOcwCyZLWZUcRisL7KJYkRTo\",\n         \"types\" : [ \"locality\", \"political\" ]\n      }\n   ],\n   \"status\" : \"OK\"\n}\n\";', '2023-05-23 18:09:16');


#
# TABLE STRUCTURE FOR: backup
#

CREATE TABLE `backup` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_created` datetime DEFAULT NULL,
  `sql_file` varchar(160) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip_file` varchar(160) COLLATE utf8_unicode_ci DEFAULT NULL,
  `script_version` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: reviews
#

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `listing_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `stars` int(11) DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `is_visible` tinyint(1) DEFAULT NULL,
  `date_publish` datetime DEFAULT NULL,
  `user_mail` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `reviews` (`id`, `listing_id`, `user_id`, `stars`, `message`, `is_visible`, `date_publish`, `user_mail`) VALUES (2, 14, 8, 4, 'Maecenas id efficitur augue. Nulla nec urna congue, accumsan tellus eget, varius nulla. ', 1, '2014-09-15 22:55:00', NULL);
INSERT INTO `reviews` (`id`, `listing_id`, `user_id`, `stars`, `message`, `is_visible`, `date_publish`, `user_mail`) VALUES (3, 14, 9, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ultrices, quam vitae volutpat rutrum, dui tellus posuere velit, vitae porta lectus orci sed lectus.', 1, '2014-09-18 23:29:26', NULL);
INSERT INTO `reviews` (`id`, `listing_id`, `user_id`, `stars`, `message`, `is_visible`, `date_publish`, `user_mail`) VALUES (4, 9, 8, 4, 'Test message', 1, '2014-09-28 19:48:17', NULL);


#
# TABLE STRUCTURE FOR: masking
#

CREATE TABLE `masking` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_submit` datetime DEFAULT NULL,
  `visitor_type` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `allow_contact` tinyint(1) DEFAULT '0',
  `agent_id` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `masking` (`id`, `date_submit`, `visitor_type`, `name`, `phone`, `email`, `allow_contact`, `agent_id`, `property_id`) VALUES (2, '2015-07-01 00:00:00', 'individual', 'tester', '09123213', 'test@gmail.com', 1, 9, 18);


#
# TABLE STRUCTURE FOR: payments
#

CREATE TABLE `payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_paid` datetime DEFAULT NULL,
  `invoice_num` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data_post` text COLLATE utf8_unicode_ci,
  `payer_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `txn_id` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `paid` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `currency_code` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `payer_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `listing_id` int(11) DEFAULT NULL,
  `payment_gateway` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL,
  `reservation_id` int(11) DEFAULT NULL,
  `saller_id` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `payments` (`id`, `date_paid`, `invoice_num`, `data_post`, `payer_id`, `txn_id`, `paid`, `currency_code`, `payer_email`, `listing_id`, `payment_gateway`, `user_id`, `package_id`, `reservation_id`, `saller_id`, `property_id`) VALUES (1, '2014-06-03 21:30:22', '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `payments` (`id`, `date_paid`, `invoice_num`, `data_post`, `payer_id`, `txn_id`, `paid`, `currency_code`, `payer_email`, `listing_id`, `payment_gateway`, `user_id`, `package_id`, `reservation_id`, `saller_id`, `property_id`) VALUES (2, '2014-06-03 21:56:45', '', 'Array\n(\n    [mc_gross] => 2.99\n    [invoice] => 12373469\n    [protection_eligibility] => Eligible\n    [address_status] => confirmed\n    [item_number1] => \n    [payer_id] => ER2LXCHKVY38Q\n    [tax] => 0.00\n    [address_street] => 1 Main St\n    [payment_date] => 12:56:41 Jun 03, 2014 PDT\n    [payment_status] => Completed\n    [charset] => windows-1252\n    [address_zip] => 95131\n    [mc_shipping] => 0.00\n    [mc_handling] => 0.00\n    [first_name] => Info\n    [mc_fee] => 0.39\n    [address_country_code] => US\n    [address_name] => Info Winter\n    [notify_version] => 3.8\n    [custom] => \n    [payer_status] => verified\n    [business] => sandi@iwinter.com.hr\n    [address_country] => United States\n    [num_cart_items] => 1\n    [mc_handling1] => 0.00\n    [address_city] => San Jose\n    [verify_sign] => AI36sk2Aln3iC.t.mla1wMizPRcQA8RKkhVgDKLdhbV.2hZelzrKnqbO\n    [payer_email] => info@iwinter.com.hr\n    [mc_shipping1] => 0.00\n    [tax1] => 0.00\n    [txn_id] => 5NJ254081K680701C\n    [payment_type] => instant\n    [last_name] => Winter\n    [address_state] => CA\n    [item_name1] => T-shirt\n    [receiver_email] => sandi@iwinter.com.hr\n    [payment_fee] => 0.39\n    [quantity1] => 1\n    [receiver_id] => S63XQYGHM4X8N\n    [txn_type] => cart\n    [mc_gross_1] => 2.99\n    [mc_currency] => USD\n    [residence_country] => US\n    [test_ipn] => 1\n    [transaction_subject] => \n    [payment_gross] => 2.99\n    [ipn_track_id] => 9d77baf4e8f10\n)\n', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `payments` (`id`, `date_paid`, `invoice_num`, `data_post`, `payer_id`, `txn_id`, `paid`, `currency_code`, `payer_email`, `listing_id`, `payment_gateway`, `user_id`, `package_id`, `reservation_id`, `saller_id`, `property_id`) VALUES (3, '2014-06-03 22:39:44', '7', 'a:47:{s:8:\"mc_gross\";s:5:\"20.00\";s:7:\"invoice\";s:1:\"7\";s:22:\"protection_eligibility\";s:8:\"Eligible\";s:14:\"address_status\";s:9:\"confirmed\";s:12:\"item_number1\";s:0:\"\";s:8:\"payer_id\";s:13:\"ER2LXCHKVY38Q\";s:3:\"tax\";s:4:\"0.00\";s:14:\"address_street\";s:9:\"1 Main St\";s:12:\"payment_date\";s:25:\"13:34:39 Jun 03, 2014 PDT\";s:14:\"payment_status\";s:9:\"Completed\";s:7:\"charset\";s:12:\"windows-1252\";s:11:\"address_zip\";s:5:\"95131\";s:11:\"mc_shipping\";s:4:\"0.00\";s:11:\"mc_handling\";s:4:\"0.00\";s:10:\"first_name\";s:4:\"Info\";s:6:\"mc_fee\";s:4:\"0.88\";s:20:\"address_country_code\";s:2:\"US\";s:12:\"address_name\";s:11:\"Info Winter\";s:14:\"notify_version\";s:3:\"3.8\";s:6:\"custom\";s:0:\"\";s:12:\"payer_status\";s:8:\"verified\";s:8:\"business\";s:20:\"sandi@iwinter.com.hr\";s:15:\"address_country\";s:13:\"United States\";s:14:\"num_cart_items\";s:1:\"1\";s:12:\"mc_handling1\";s:4:\"0.00\";s:12:\"address_city\";s:8:\"San Jose\";s:11:\"verify_sign\";s:56:\"A9LC3Qajo-H2V8mPq4eIktgPvG2RAQNl0qNtJ0agOtDs9xL3UMse9O06\";s:11:\"payer_email\";s:19:\"info@iwinter.com.hr\";s:12:\"mc_shipping1\";s:4:\"0.00\";s:4:\"tax1\";s:4:\"0.00\";s:6:\"txn_id\";s:17:\"38791587ML480703S\";s:12:\"payment_type\";s:7:\"instant\";s:9:\"last_name\";s:6:\"Winter\";s:13:\"address_state\";s:2:\"CA\";s:10:\"item_name1\";s:14:\"Reservation #7\";s:14:\"receiver_email\";s:20:\"sandi@iwinter.com.hr\";s:11:\"payment_fee\";s:4:\"0.88\";s:9:\"quantity1\";s:1:\"1\";s:11:\"receiver_id\";s:13:\"S63XQYGHM4X8N\";s:8:\"txn_type\";s:4:\"cart\";s:10:\"mc_gross_1\";s:5:\"20.00\";s:11:\"mc_currency\";s:3:\"USD\";s:17:\"residence_country\";s:2:\"US\";s:8:\"test_ipn\";s:1:\"1\";s:19:\"transaction_subject\";s:0:\"\";s:13:\"payment_gross\";s:5:\"20.00\";s:12:\"ipn_track_id\";s:13:\"631f1117659b2\";}', 'ER2LXCHKVY38Q', '38791587ML480703S', '20.00', 'USD', 'info@iwinter.com.hr', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `payments` (`id`, `date_paid`, `invoice_num`, `data_post`, `payer_id`, `txn_id`, `paid`, `currency_code`, `payer_email`, `listing_id`, `payment_gateway`, `user_id`, `package_id`, `reservation_id`, `saller_id`, `property_id`) VALUES (4, '2014-06-03 22:42:41', '7_RES_20.00', 'a:47:{s:8:\"mc_gross\";s:5:\"20.00\";s:7:\"invoice\";s:7:\"7_20.00\";s:22:\"protection_eligibility\";s:8:\"Eligible\";s:14:\"address_status\";s:9:\"confirmed\";s:12:\"item_number1\";s:0:\"\";s:8:\"payer_id\";s:13:\"ER2LXCHKVY38Q\";s:3:\"tax\";s:4:\"0.00\";s:14:\"address_street\";s:9:\"1 Main St\";s:12:\"payment_date\";s:25:\"13:42:39 Jun 03, 2014 PDT\";s:14:\"payment_status\";s:9:\"Completed\";s:7:\"charset\";s:12:\"windows-1252\";s:11:\"address_zip\";s:5:\"95131\";s:11:\"mc_shipping\";s:4:\"0.00\";s:11:\"mc_handling\";s:4:\"0.00\";s:10:\"first_name\";s:4:\"Info\";s:6:\"mc_fee\";s:4:\"0.88\";s:20:\"address_country_code\";s:2:\"US\";s:12:\"address_name\";s:11:\"Info Winter\";s:14:\"notify_version\";s:3:\"3.8\";s:6:\"custom\";s:0:\"\";s:12:\"payer_status\";s:8:\"verified\";s:8:\"business\";s:20:\"sandi@iwinter.com.hr\";s:15:\"address_country\";s:13:\"United States\";s:14:\"num_cart_items\";s:1:\"1\";s:12:\"mc_handling1\";s:4:\"0.00\";s:12:\"address_city\";s:8:\"San Jose\";s:11:\"verify_sign\";s:56:\"AwD4sJJmdrzDKNGw7KMAMuZSx1AHAeHkTMI1NDF3NgxE8tGDW8SfkKVk\";s:11:\"payer_email\";s:19:\"info@iwinter.com.hr\";s:12:\"mc_shipping1\";s:4:\"0.00\";s:4:\"tax1\";s:4:\"0.00\";s:6:\"txn_id\";s:17:\"70D58185F3775394K\";s:12:\"payment_type\";s:7:\"instant\";s:9:\"last_name\";s:6:\"Winter\";s:13:\"address_state\";s:2:\"CA\";s:10:\"item_name1\";s:14:\"Reservation #7\";s:14:\"receiver_email\";s:20:\"sandi@iwinter.com.hr\";s:11:\"payment_fee\";s:4:\"0.88\";s:9:\"quantity1\";s:1:\"1\";s:11:\"receiver_id\";s:13:\"S63XQYGHM4X8N\";s:8:\"txn_type\";s:4:\"cart\";s:10:\"mc_gross_1\";s:5:\"20.00\";s:11:\"mc_currency\";s:3:\"USD\";s:17:\"residence_country\";s:2:\"US\";s:8:\"test_ipn\";s:1:\"1\";s:19:\"transaction_subject\";s:0:\"\";s:13:\"payment_gross\";s:5:\"20.00\";s:12:\"ipn_track_id\";s:13:\"416b011ce481b\";}', 'ER2LXCHKVY38Q', '70D58185F3775394K', '20.00', 'USD', 'info@iwinter.com.hr', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `payments` (`id`, `date_paid`, `invoice_num`, `data_post`, `payer_id`, `txn_id`, `paid`, `currency_code`, `payer_email`, `listing_id`, `payment_gateway`, `user_id`, `package_id`, `reservation_id`, `saller_id`, `property_id`) VALUES (5, '2014-06-03 22:48:52', '7_RES_20.001977', 'a:47:{s:8:\"mc_gross\";s:5:\"20.00\";s:7:\"invoice\";s:11:\"7_20.001977\";s:22:\"protection_eligibility\";s:8:\"Eligible\";s:14:\"address_status\";s:9:\"confirmed\";s:12:\"item_number1\";s:0:\"\";s:8:\"payer_id\";s:13:\"ER2LXCHKVY38Q\";s:3:\"tax\";s:4:\"0.00\";s:14:\"address_street\";s:9:\"1 Main St\";s:12:\"payment_date\";s:25:\"13:48:48 Jun 03, 2014 PDT\";s:14:\"payment_status\";s:9:\"Completed\";s:7:\"charset\";s:12:\"windows-1252\";s:11:\"address_zip\";s:5:\"95131\";s:11:\"mc_shipping\";s:4:\"0.00\";s:11:\"mc_handling\";s:4:\"0.00\";s:10:\"first_name\";s:4:\"Info\";s:6:\"mc_fee\";s:4:\"0.88\";s:20:\"address_country_code\";s:2:\"US\";s:12:\"address_name\";s:11:\"Info Winter\";s:14:\"notify_version\";s:3:\"3.8\";s:6:\"custom\";s:0:\"\";s:12:\"payer_status\";s:8:\"verified\";s:8:\"business\";s:20:\"sandi@iwinter.com.hr\";s:15:\"address_country\";s:13:\"United States\";s:14:\"num_cart_items\";s:1:\"1\";s:12:\"mc_handling1\";s:4:\"0.00\";s:12:\"address_city\";s:8:\"San Jose\";s:11:\"verify_sign\";s:56:\"AfQuzaSFrGvt6rtvRwD4hrYb.JzkABhsZbG6RzQEHrWRVQMU4alyRccb\";s:11:\"payer_email\";s:19:\"info@iwinter.com.hr\";s:12:\"mc_shipping1\";s:4:\"0.00\";s:4:\"tax1\";s:4:\"0.00\";s:6:\"txn_id\";s:17:\"4WD08916J6958874J\";s:12:\"payment_type\";s:7:\"instant\";s:9:\"last_name\";s:6:\"Winter\";s:13:\"address_state\";s:2:\"CA\";s:10:\"item_name1\";s:14:\"Reservation #7\";s:14:\"receiver_email\";s:20:\"sandi@iwinter.com.hr\";s:11:\"payment_fee\";s:4:\"0.88\";s:9:\"quantity1\";s:1:\"1\";s:11:\"receiver_id\";s:13:\"S63XQYGHM4X8N\";s:8:\"txn_type\";s:4:\"cart\";s:10:\"mc_gross_1\";s:5:\"20.00\";s:11:\"mc_currency\";s:3:\"USD\";s:17:\"residence_country\";s:2:\"US\";s:8:\"test_ipn\";s:1:\"1\";s:19:\"transaction_subject\";s:0:\"\";s:13:\"payment_gross\";s:5:\"20.00\";s:12:\"ipn_track_id\";s:13:\"e5522708d8525\";}', 'ER2LXCHKVY38Q', '4WD08916J6958874J', '20.00', 'USD', 'info@iwinter.com.hr', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `payments` (`id`, `date_paid`, `invoice_num`, `data_post`, `payer_id`, `txn_id`, `paid`, `currency_code`, `payer_email`, `listing_id`, `payment_gateway`, `user_id`, `package_id`, `reservation_id`, `saller_id`, `property_id`) VALUES (6, '2014-06-03 22:52:59', '7_RES_80.006907', 'a:47:{s:8:\"mc_gross\";s:5:\"80.00\";s:7:\"invoice\";s:11:\"7_80.006907\";s:22:\"protection_eligibility\";s:8:\"Eligible\";s:14:\"address_status\";s:9:\"confirmed\";s:12:\"item_number1\";s:0:\"\";s:8:\"payer_id\";s:13:\"ER2LXCHKVY38Q\";s:3:\"tax\";s:4:\"0.00\";s:14:\"address_street\";s:9:\"1 Main St\";s:12:\"payment_date\";s:25:\"13:52:57 Jun 03, 2014 PDT\";s:14:\"payment_status\";s:9:\"Completed\";s:7:\"charset\";s:12:\"windows-1252\";s:11:\"address_zip\";s:5:\"95131\";s:11:\"mc_shipping\";s:4:\"0.00\";s:11:\"mc_handling\";s:4:\"0.00\";s:10:\"first_name\";s:4:\"Info\";s:6:\"mc_fee\";s:4:\"2.62\";s:20:\"address_country_code\";s:2:\"US\";s:12:\"address_name\";s:11:\"Info Winter\";s:14:\"notify_version\";s:3:\"3.8\";s:6:\"custom\";s:0:\"\";s:12:\"payer_status\";s:8:\"verified\";s:8:\"business\";s:20:\"sandi@iwinter.com.hr\";s:15:\"address_country\";s:13:\"United States\";s:14:\"num_cart_items\";s:1:\"1\";s:12:\"mc_handling1\";s:4:\"0.00\";s:12:\"address_city\";s:8:\"San Jose\";s:11:\"verify_sign\";s:56:\"AqJ-WZNVutuNierV3LZLs1Y1IawwAeAS8108YGtXxNytUpVrTq49CqhV\";s:11:\"payer_email\";s:19:\"info@iwinter.com.hr\";s:12:\"mc_shipping1\";s:4:\"0.00\";s:4:\"tax1\";s:4:\"0.00\";s:6:\"txn_id\";s:17:\"64V66530TY4484937\";s:12:\"payment_type\";s:7:\"instant\";s:9:\"last_name\";s:6:\"Winter\";s:13:\"address_state\";s:2:\"CA\";s:10:\"item_name1\";s:14:\"Reservation #7\";s:14:\"receiver_email\";s:20:\"sandi@iwinter.com.hr\";s:11:\"payment_fee\";s:4:\"2.62\";s:9:\"quantity1\";s:1:\"1\";s:11:\"receiver_id\";s:13:\"S63XQYGHM4X8N\";s:8:\"txn_type\";s:4:\"cart\";s:10:\"mc_gross_1\";s:5:\"80.00\";s:11:\"mc_currency\";s:3:\"USD\";s:17:\"residence_country\";s:2:\"US\";s:8:\"test_ipn\";s:1:\"1\";s:19:\"transaction_subject\";s:0:\"\";s:13:\"payment_gross\";s:5:\"80.00\";s:12:\"ipn_track_id\";s:13:\"35c5c566e12d4\";}', 'ER2LXCHKVY38Q', '64V66530TY4484937', '80.00', 'USD', 'info@iwinter.com.hr', NULL, NULL, NULL, NULL, NULL, NULL, NULL);


#
# TABLE STRUCTURE FOR: packages
#

CREATE TABLE `packages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `package_name` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'FREE\nBASIC\nPREMIUM\n',
  `package_price` decimal(10,2) DEFAULT NULL,
  `package_days` int(11) DEFAULT '0',
  `num_listing_limit` int(11) DEFAULT '0',
  `currency_code` varchar(45) COLLATE utf8_unicode_ci DEFAULT 'USD',
  `show_private_listings` tinyint(1) DEFAULT '1',
  `user_type` varchar(45) COLLATE utf8_unicode_ci DEFAULT '' COMMENT 'USER|AGENT',
  `auto_activation` tinyint(1) DEFAULT '0',
  `num_images_limit` int(11) DEFAULT '1000',
  `num_amenities_limit` int(11) DEFAULT '1000',
  `num_featured_limit` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `packages` (`id`, `date_created`, `date_modified`, `package_name`, `package_price`, `package_days`, `num_listing_limit`, `currency_code`, `show_private_listings`, `user_type`, `auto_activation`, `num_images_limit`, `num_amenities_limit`, `num_featured_limit`) VALUES (1, '2014-06-05 21:19:57', '2015-04-15 15:17:41', 'Free', '0.00', 0, 1, 'USD', 1, '', 0, 5, 5, 0);
INSERT INTO `packages` (`id`, `date_created`, `date_modified`, `package_name`, `package_price`, `package_days`, `num_listing_limit`, `currency_code`, `show_private_listings`, `user_type`, `auto_activation`, `num_images_limit`, `num_amenities_limit`, `num_featured_limit`) VALUES (2, '2014-06-05 21:19:57', '2015-06-19 19:30:59', 'Basic', '10.00', 30, 10, 'USD', 1, '', 1, 1000, 1000, 0);
INSERT INTO `packages` (`id`, `date_created`, `date_modified`, `package_name`, `package_price`, `package_days`, `num_listing_limit`, `currency_code`, `show_private_listings`, `user_type`, `auto_activation`, `num_images_limit`, `num_amenities_limit`, `num_featured_limit`) VALUES (3, '2014-06-05 21:19:57', '2015-04-15 15:17:56', 'Premium', '20.00', 30, 40, 'USD', 1, '', 1, 1000, 1000, 1);


#
# TABLE STRUCTURE FOR: ads
#

CREATE TABLE `ads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(160) COLLATE utf8_unicode_ci DEFAULT NULL,
  `width` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `height` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(160) COLLATE utf8_unicode_ci DEFAULT NULL,
  `repository_id` int(11) DEFAULT NULL,
  `is_activated` tinyint(1) DEFAULT '1',
  `is_hardlocked` tinyint(1) DEFAULT '0',
  `is_random` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `ads` (`id`, `code`, `title`, `type`, `description`, `width`, `height`, `link`, `repository_id`, `is_activated`, `is_hardlocked`, `is_random`) VALUES (1, 'Leaderboard', 'Jira', '2', 'Leaderboard banner 728x90', '728', '90', 'https://www.atlassian.com', 235, 1, 0, 1);
INSERT INTO `ads` (`id`, `code`, `title`, `type`, `description`, `width`, `height`, `link`, `repository_id`, `is_activated`, `is_hardlocked`, `is_random`) VALUES (3, '0', 'Volkswagen Golf', '1', 'Volkswagen Golf banner', '0', '0', 'http://en.wikipedia.org/wiki/Volkswagen_Golf', 238, 1, 0, 1);
INSERT INTO `ads` (`id`, `code`, `title`, `type`, `description`, `width`, `height`, `link`, `repository_id`, `is_activated`, `is_hardlocked`, `is_random`) VALUES (4, NULL, 'webtechcon', '0', 'webtechcon', NULL, NULL, 'http://webtechcon.de', 239, 1, 0, 1);


#
# TABLE STRUCTURE FOR: user
#

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_surname` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `phone` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone2` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `registration_date` datetime DEFAULT NULL,
  `type` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'ADMIN\nAGENT\nUSER',
  `language` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `repository_id` int(11) DEFAULT NULL,
  `activated` tinyint(1) DEFAULT '0',
  `check_admin` tinyint(1) DEFAULT '0',
  `qa_id` int(11) DEFAULT NULL,
  `package_id` int(11) DEFAULT '0',
  `package_last_payment` datetime DEFAULT NULL,
  `facebook_id` varchar(160) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mail_verified` tinyint(1) DEFAULT '0',
  `phone_verified` tinyint(1) DEFAULT '0',
  `image_user_filename` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_agency_filename` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_name` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip_city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `municipality_id` int(11) DEFAULT NULL,
  `prename_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `vat_number` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook_link` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gplus_link` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `youtube_link` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter_link` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkedin_link` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `county_affiliate_values` text COLLATE utf8_unicode_ci,
  `embed_video_code` text COLLATE utf8_unicode_ci,
  `payment_details` text COLLATE utf8_unicode_ci,
  `custom_fields` text COLLATE utf8_unicode_ci,
  `research_sms_notifications` tinyint(1) DEFAULT '0',
  `research_mail_notifications` tinyint(1) DEFAULT '1',
  `agency_id` int(11) DEFAULT NULL,
  `last_edit_ip` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_Municipality_ID` (`municipality_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `user` (`id`, `username`, `password`, `name_surname`, `address`, `description`, `phone`, `phone2`, `mail`, `last_login`, `registration_date`, `type`, `language`, `repository_id`, `activated`, `check_admin`, `qa_id`, `package_id`, `package_last_payment`, `facebook_id`, `mail_verified`, `phone_verified`, `image_user_filename`, `image_agency_filename`, `company_name`, `zip_city`, `municipality_id`, `prename_name`, `vat_number`, `facebook_link`, `gplus_link`, `youtube_link`, `twitter_link`, `linkedin_link`, `county_affiliate_values`, `embed_video_code`, `payment_details`, `custom_fields`, `research_sms_notifications`, `research_mail_notifications`, `agency_id`, `last_edit_ip`) VALUES (1, 'sandi.winter', 'b648e', 'Sandi Winter', 'Vinogradska 15', '', '+385 (0)98 734 513', '0', 'sandi@winter.hr', '2014-06-14 16:44:09', '2013-11-21 11:17:27', 'ADMIN', 'english', 6, 1, NULL, 0, NULL, NULL, '0', 0, 0, 'sandi.winter.jpg', NULL, NULL, NULL, 0, NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '[]', 0, 0, 0, '::1');
INSERT INTO `user` (`id`, `username`, `password`, `name_surname`, `address`, `description`, `phone`, `phone2`, `mail`, `last_login`, `registration_date`, `type`, `language`, `repository_id`, `activated`, `check_admin`, `qa_id`, `package_id`, `package_last_payment`, `facebook_id`, `mail_verified`, `phone_verified`, `image_user_filename`, `image_agency_filename`, `company_name`, `zip_city`, `municipality_id`, `prename_name`, `vat_number`, `facebook_link`, `gplus_link`, `youtube_link`, `twitter_link`, `linkedin_link`, `county_affiliate_values`, `embed_video_code`, `payment_details`, `custom_fields`, `research_sms_notifications`, `research_mail_notifications`, `agency_id`, `last_edit_ip`) VALUES (8, 'admin', 'a114285c9e', 'Admin', '', '', '+385 (0)91 234 654', '0', 'admin@admin.admin', '2018-12-07 14:29:11', '2013-12-29 11:39:04', 'ADMIN', 'english', 186, 1, NULL, 0, NULL, NULL, '0', 0, 0, 'albania (1).jpg', 'albania (1).jpg', NULL, NULL, 0, NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '[]', 0, 0, 0, '::1');
INSERT INTO `user` (`id`, `username`, `password`, `name_surname`, `address`, `description`, `phone`, `phone2`, `mail`, `last_login`, `registration_date`, `type`, `language`, `repository_id`, `activated`, `check_admin`, `qa_id`, `package_id`, `package_last_payment`, `facebook_id`, `mail_verified`, `phone_verified`, `image_user_filename`, `image_agency_filename`, `company_name`, `zip_city`, `municipality_id`, `prename_name`, `vat_number`, `facebook_link`, `gplus_link`, `youtube_link`, `twitter_link`, `linkedin_link`, `county_affiliate_values`, `embed_video_code`, `payment_details`, `custom_fields`, `research_sms_notifications`, `research_mail_notifications`, `agency_id`, `last_edit_ip`) VALUES (18, 'user', 'f341be9a30', 'Test user', 'Cyro trento 23', 'My description 2', '+385959055516', '0', 'sanljiljan@geniuscript.com', '2017-02-06 17:47:38', '2014-01-26 12:23:26', 'USER', 'english', 196, 1, NULL, 0, NULL, NULL, '0', 0, 0, 'zoom.jpg', NULL, 'My real estate ltd', '21000', 0, 'Prename', '0945621378', '0', '0', '0', '0', '0', '0', '0', '0', '[]', 0, 0, 0, '::1');
INSERT INTO `user` (`id`, `username`, `password`, `name_surname`, `address`, `description`, `phone`, `phone2`, `mail`, `last_login`, `registration_date`, `type`, `language`, `repository_id`, `activated`, `check_admin`, `qa_id`, `package_id`, `package_last_payment`, `facebook_id`, `mail_verified`, `phone_verified`, `image_user_filename`, `image_agency_filename`, `company_name`, `zip_city`, `municipality_id`, `prename_name`, `vat_number`, `facebook_link`, `gplus_link`, `youtube_link`, `twitter_link`, `linkedin_link`, `county_affiliate_values`, `embed_video_code`, `payment_details`, `custom_fields`, `research_sms_notifications`, `research_mail_notifications`, `agency_id`, `last_edit_ip`) VALUES (22, 'tagent2', 'b648e', 'test agent 2', 'Vinogradska 567', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec auctor diam in quam molestie ullamcorper. Praesent a tellus massa. Nulla laoreet tempus congue. Praesent ut ultrices nunc. Etiam at libero sed turpis tempor placerat in eget lectus. Curabitur pretium, ante vel aliquam lacinia, ipsum felis hendrerit leo, ut aliquet neque odio at nisl.', '', NULL, 'agent@ppoint.com', NULL, '2014-07-11 20:52:32', 'AGENT', 'croatian', 254, 0, NULL, 1, 0, NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, NULL);
INSERT INTO `user` (`id`, `username`, `password`, `name_surname`, `address`, `description`, `phone`, `phone2`, `mail`, `last_login`, `registration_date`, `type`, `language`, `repository_id`, `activated`, `check_admin`, `qa_id`, `package_id`, `package_last_payment`, `facebook_id`, `mail_verified`, `phone_verified`, `image_user_filename`, `image_agency_filename`, `company_name`, `zip_city`, `municipality_id`, `prename_name`, `vat_number`, `facebook_link`, `gplus_link`, `youtube_link`, `twitter_link`, `linkedin_link`, `county_affiliate_values`, `embed_video_code`, `payment_details`, `custom_fields`, `research_sms_notifications`, `research_mail_notifications`, `agency_id`, `last_edit_ip`) VALUES (28, 'sandi@geniuscript.com', 'b648e', 'sandi@geniuscript.com', '0', '', '0', '0', 'sandi@geniuscript.com', '2014-12-17 12:16:26', '2014-12-17 12:14:15', 'USER', 'croatian', 282, 1, NULL, 0, NULL, NULL, '0', 0, 0, NULL, NULL, NULL, NULL, 74, NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '[]', 0, 0, 0, '::1');
INSERT INTO `user` (`id`, `username`, `password`, `name_surname`, `address`, `description`, `phone`, `phone2`, `mail`, `last_login`, `registration_date`, `type`, `language`, `repository_id`, `activated`, `check_admin`, `qa_id`, `package_id`, `package_last_payment`, `facebook_id`, `mail_verified`, `phone_verified`, `image_user_filename`, `image_agency_filename`, `company_name`, `zip_city`, `municipality_id`, `prename_name`, `vat_number`, `facebook_link`, `gplus_link`, `youtube_link`, `twitter_link`, `linkedin_link`, `county_affiliate_values`, `embed_video_code`, `payment_details`, `custom_fields`, `research_sms_notifications`, `research_mail_notifications`, `agency_id`, `last_edit_ip`) VALUES (29, 'test1', 'da0beb4f36', 'test1', 'sdadsadsa', 'dsadasdsad', 'asdasdasd', '0', 'test1@gmail.com', NULL, '2018-11-07 14:20:29', 'AGENT', 'english', 405, 1, NULL, 0, NULL, NULL, '0', 0, 0, NULL, NULL, NULL, NULL, 78, NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '[]', 0, 0, 0, '::1');
INSERT INTO `user` (`id`, `username`, `password`, `name_surname`, `address`, `description`, `phone`, `phone2`, `mail`, `last_login`, `registration_date`, `type`, `language`, `repository_id`, `activated`, `check_admin`, `qa_id`, `package_id`, `package_last_payment`, `facebook_id`, `mail_verified`, `phone_verified`, `image_user_filename`, `image_agency_filename`, `company_name`, `zip_city`, `municipality_id`, `prename_name`, `vat_number`, `facebook_link`, `gplus_link`, `youtube_link`, `twitter_link`, `linkedin_link`, `county_affiliate_values`, `embed_video_code`, `payment_details`, `custom_fields`, `research_sms_notifications`, `research_mail_notifications`, `agency_id`, `last_edit_ip`) VALUES (31, 'testim', '82e9d5dee3', 'testim', 'asdsads', 'adasdasdasd', '2131', '0', 'testim@gmail.com', NULL, '2018-11-07 14:36:29', 'AGENT', 'english', 406, 0, NULL, 0, NULL, NULL, '0', 0, 0, NULL, NULL, NULL, NULL, 83, NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '[]', 0, 0, 0, '::1');
INSERT INTO `user` (`id`, `username`, `password`, `name_surname`, `address`, `description`, `phone`, `phone2`, `mail`, `last_login`, `registration_date`, `type`, `language`, `repository_id`, `activated`, `check_admin`, `qa_id`, `package_id`, `package_last_payment`, `facebook_id`, `mail_verified`, `phone_verified`, `image_user_filename`, `image_agency_filename`, `company_name`, `zip_city`, `municipality_id`, `prename_name`, `vat_number`, `facebook_link`, `gplus_link`, `youtube_link`, `twitter_link`, `linkedin_link`, `county_affiliate_values`, `embed_video_code`, `payment_details`, `custom_fields`, `research_sms_notifications`, `research_mail_notifications`, `agency_id`, `last_edit_ip`) VALUES (32, 'TEST', '305e985561', 'TEST', '', '', '', '0', 'TEST@gmail.com', NULL, '2018-11-08 11:02:21', 'USER', 'english', 407, 0, NULL, 0, NULL, NULL, '0', 0, 0, NULL, NULL, NULL, NULL, 119, NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '[]', 0, 0, 0, '::1');
INSERT INTO `user` (`id`, `username`, `password`, `name_surname`, `address`, `description`, `phone`, `phone2`, `mail`, `last_login`, `registration_date`, `type`, `language`, `repository_id`, `activated`, `check_admin`, `qa_id`, `package_id`, `package_last_payment`, `facebook_id`, `mail_verified`, `phone_verified`, `image_user_filename`, `image_agency_filename`, `company_name`, `zip_city`, `municipality_id`, `prename_name`, `vat_number`, `facebook_link`, `gplus_link`, `youtube_link`, `twitter_link`, `linkedin_link`, `county_affiliate_values`, `embed_video_code`, `payment_details`, `custom_fields`, `research_sms_notifications`, `research_mail_notifications`, `agency_id`, `last_edit_ip`) VALUES (33, 'Agjent123', 'e33f092733', 'AGJENT', 'sadsadw', 'asdawd', '', '0', 'agjent@agjent.com', NULL, '2018-11-08 11:03:45', 'AGENT', 'english', 408, 0, NULL, 0, NULL, NULL, '0', 0, 0, NULL, NULL, NULL, NULL, 107, NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '[]', 0, 0, 0, '::1');
INSERT INTO `user` (`id`, `username`, `password`, `name_surname`, `address`, `description`, `phone`, `phone2`, `mail`, `last_login`, `registration_date`, `type`, `language`, `repository_id`, `activated`, `check_admin`, `qa_id`, `package_id`, `package_last_payment`, `facebook_id`, `mail_verified`, `phone_verified`, `image_user_filename`, `image_agency_filename`, `company_name`, `zip_city`, `municipality_id`, `prename_name`, `vat_number`, `facebook_link`, `gplus_link`, `youtube_link`, `twitter_link`, `linkedin_link`, `county_affiliate_values`, `embed_video_code`, `payment_details`, `custom_fields`, `research_sms_notifications`, `research_mail_notifications`, `agency_id`, `last_edit_ip`) VALUES (39, 'admindurres', '052f616bf8', 'admindurres', 'admindurres', 'admindurres', '123156465', '0', 'admindurres@admindurres.com', '2018-11-14 16:37:56', '2018-11-14 16:37:41', 'ADMINISTRATOR BASHKIE', 'english', 422, 1, NULL, 0, NULL, NULL, '0', 0, 0, NULL, NULL, NULL, NULL, 82, NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '[]', 0, 0, 0, '::1');
INSERT INTO `user` (`id`, `username`, `password`, `name_surname`, `address`, `description`, `phone`, `phone2`, `mail`, `last_login`, `registration_date`, `type`, `language`, `repository_id`, `activated`, `check_admin`, `qa_id`, `package_id`, `package_last_payment`, `facebook_id`, `mail_verified`, `phone_verified`, `image_user_filename`, `image_agency_filename`, `company_name`, `zip_city`, `municipality_id`, `prename_name`, `vat_number`, `facebook_link`, `gplus_link`, `youtube_link`, `twitter_link`, `linkedin_link`, `county_affiliate_values`, `embed_video_code`, `payment_details`, `custom_fields`, `research_sms_notifications`, `research_mail_notifications`, `agency_id`, `last_edit_ip`) VALUES (40, 'dhaxhiaj', '4d430f139a', 'donald haxhiaj', 'dhaxhiaj', 'dhaxhiaj', '6546541321321', '0', 'dhaxhiaj@dhaxhiaj.com', NULL, '2018-11-14 16:40:38', 'PUNONJES BASHKIE', 'english', 425, 1, NULL, 0, NULL, NULL, '0', 0, 0, NULL, NULL, NULL, NULL, 118, NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '[]', 0, 0, 0, '::1');
INSERT INTO `user` (`id`, `username`, `password`, `name_surname`, `address`, `description`, `phone`, `phone2`, `mail`, `last_login`, `registration_date`, `type`, `language`, `repository_id`, `activated`, `check_admin`, `qa_id`, `package_id`, `package_last_payment`, `facebook_id`, `mail_verified`, `phone_verified`, `image_user_filename`, `image_agency_filename`, `company_name`, `zip_city`, `municipality_id`, `prename_name`, `vat_number`, `facebook_link`, `gplus_link`, `youtube_link`, `twitter_link`, `linkedin_link`, `county_affiliate_values`, `embed_video_code`, `payment_details`, `custom_fields`, `research_sms_notifications`, `research_mail_notifications`, `agency_id`, `last_edit_ip`) VALUES (41, 'endritali', '886fd43071', 'endritali', 'sadsad', 'sadsadas', '5456+', '0', 'endritali@endritali.com', NULL, '2018-11-14 17:03:44', 'Punonjes Bashkie', 'english', NULL, 1, NULL, 0, NULL, NULL, '0', 0, 0, NULL, NULL, NULL, NULL, 118, NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '[]', 0, 0, 0, '::1');
INSERT INTO `user` (`id`, `username`, `password`, `name_surname`, `address`, `description`, `phone`, `phone2`, `mail`, `last_login`, `registration_date`, `type`, `language`, `repository_id`, `activated`, `check_admin`, `qa_id`, `package_id`, `package_last_payment`, `facebook_id`, `mail_verified`, `phone_verified`, `image_user_filename`, `image_agency_filename`, `company_name`, `zip_city`, `municipality_id`, `prename_name`, `vat_number`, `facebook_link`, `gplus_link`, `youtube_link`, `twitter_link`, `linkedin_link`, `county_affiliate_values`, `embed_video_code`, `payment_details`, `custom_fields`, `research_sms_notifications`, `research_mail_notifications`, `agency_id`, `last_edit_ip`) VALUES (47, 'donald2', '69c64474e6', 'donald2', 'donald2', 'donald2', '465786765', '0', 'donald2@donald2.com', NULL, '2018-11-16 09:24:24', 'PUNONJES BASHKIE', 'english', 428, 1, NULL, 0, NULL, NULL, '0', 0, 0, NULL, NULL, NULL, NULL, 132, NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '[]', 0, 0, 0, '::1');
INSERT INTO `user` (`id`, `username`, `password`, `name_surname`, `address`, `description`, `phone`, `phone2`, `mail`, `last_login`, `registration_date`, `type`, `language`, `repository_id`, `activated`, `check_admin`, `qa_id`, `package_id`, `package_last_payment`, `facebook_id`, `mail_verified`, `phone_verified`, `image_user_filename`, `image_agency_filename`, `company_name`, `zip_city`, `municipality_id`, `prename_name`, `vat_number`, `facebook_link`, `gplus_link`, `youtube_link`, `twitter_link`, `linkedin_link`, `county_affiliate_values`, `embed_video_code`, `payment_details`, `custom_fields`, `research_sms_notifications`, `research_mail_notifications`, `agency_id`, `last_edit_ip`) VALUES (52, 'punonjes tirane 2', 'bb4b5cd7a8', 'punonjes tirane 2', 'punonjes tirane 2', 'punonjes tirane 2', '65465465', '0', 'punonjes tirane 2@sadsad.com', NULL, '2018-11-19 10:42:55', 'PUNONJES BASHKIE', 'english', 437, 1, NULL, 0, NULL, NULL, '0', 0, 0, NULL, NULL, NULL, NULL, 126, NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '[]', 0, 0, 0, '::1');
INSERT INTO `user` (`id`, `username`, `password`, `name_surname`, `address`, `description`, `phone`, `phone2`, `mail`, `last_login`, `registration_date`, `type`, `language`, `repository_id`, `activated`, `check_admin`, `qa_id`, `package_id`, `package_last_payment`, `facebook_id`, `mail_verified`, `phone_verified`, `image_user_filename`, `image_agency_filename`, `company_name`, `zip_city`, `municipality_id`, `prename_name`, `vat_number`, `facebook_link`, `gplus_link`, `youtube_link`, `twitter_link`, `linkedin_link`, `county_affiliate_values`, `embed_video_code`, `payment_details`, `custom_fields`, `research_sms_notifications`, `research_mail_notifications`, `agency_id`, `last_edit_ip`) VALUES (53, 'punonjestirane PROVE', '6845a1334d', 'punonjestirane PROVE', 'punonjestirane PROVE', 'punonjestirane PROVE', '647654987', '0', 'puno@punoprov.com', '2018-11-19 14:44:25', '2018-11-19 12:04:43', 'PUNONJES BASHKIE', 'english', 436, 1, 0, 0, NULL, NULL, '0', 0, 0, NULL, NULL, NULL, NULL, 126, NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '[]', 0, 0, 0, '::1');
INSERT INTO `user` (`id`, `username`, `password`, `name_surname`, `address`, `description`, `phone`, `phone2`, `mail`, `last_login`, `registration_date`, `type`, `language`, `repository_id`, `activated`, `check_admin`, `qa_id`, `package_id`, `package_last_payment`, `facebook_id`, `mail_verified`, `phone_verified`, `image_user_filename`, `image_agency_filename`, `company_name`, `zip_city`, `municipality_id`, `prename_name`, `vat_number`, `facebook_link`, `gplus_link`, `youtube_link`, `twitter_link`, `linkedin_link`, `county_affiliate_values`, `embed_video_code`, `payment_details`, `custom_fields`, `research_sms_notifications`, `research_mail_notifications`, `agency_id`, `last_edit_ip`) VALUES (57, 'asdasd', '0a1245e63d', 'asdasd', 'asdasd', 'asdasd', '', '0', 'asdsd@asd.asd', NULL, '2018-11-19 13:20:04', 'PUNONJES BASHKIE', 'english', 439, 1, 0, 0, NULL, NULL, '0', 0, 0, NULL, NULL, NULL, NULL, 126, NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '[]', 0, 0, 0, '::1');
INSERT INTO `user` (`id`, `username`, `password`, `name_surname`, `address`, `description`, `phone`, `phone2`, `mail`, `last_login`, `registration_date`, `type`, `language`, `repository_id`, `activated`, `check_admin`, `qa_id`, `package_id`, `package_last_payment`, `facebook_id`, `mail_verified`, `phone_verified`, `image_user_filename`, `image_agency_filename`, `company_name`, `zip_city`, `municipality_id`, `prename_name`, `vat_number`, `facebook_link`, `gplus_link`, `youtube_link`, `twitter_link`, `linkedin_link`, `county_affiliate_values`, `embed_video_code`, `payment_details`, `custom_fields`, `research_sms_notifications`, `research_mail_notifications`, `agency_id`, `last_edit_ip`) VALUES (59, 'admin_tr3', 'b2f6eed30b', 'admin_tr3', 'admin_tr3', 'admin_tr3', '1232131', '0', 'franci_nona@gmail.com', '2018-12-07 11:50:48', '2018-11-21 11:04:32', 'ADMINISTRATOR BASHKIE', 'shqip', 447, 1, 0, 0, NULL, NULL, '0', 0, 0, NULL, NULL, NULL, NULL, 126, NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '[]', 0, 0, 0, '::1');
INSERT INTO `user` (`id`, `username`, `password`, `name_surname`, `address`, `description`, `phone`, `phone2`, `mail`, `last_login`, `registration_date`, `type`, `language`, `repository_id`, `activated`, `check_admin`, `qa_id`, `package_id`, `package_last_payment`, `facebook_id`, `mail_verified`, `phone_verified`, `image_user_filename`, `image_agency_filename`, `company_name`, `zip_city`, `municipality_id`, `prename_name`, `vat_number`, `facebook_link`, `gplus_link`, `youtube_link`, `twitter_link`, `linkedin_link`, `county_affiliate_values`, `embed_video_code`, `payment_details`, `custom_fields`, `research_sms_notifications`, `research_mail_notifications`, `agency_id`, `last_edit_ip`) VALUES (60, 'visitorprove', '4c40cd2ba8', 'visitor prove', 'visitorprove', '', '123132123', '', 'visitorprove@visitor.com', '2018-11-21 15:31:55', '2018-11-21 15:31:43', 'USER', 'shqip', NULL, 1, 0, NULL, 0, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, NULL, '::1');


#
# TABLE STRUCTURE FOR: slideshow
#

CREATE TABLE `slideshow` (
  `id` int(11) NOT NULL,
  `repository_id` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `slideshow` (`id`, `repository_id`, `date`) VALUES (2, 22, '2013-12-29 11:53:16');


#
# TABLE STRUCTURE FOR: settings
#

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `field` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `settings` (`id`, `field`, `value`) VALUES (653, 'rating_enabled', '1');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3428, 'design_parameters', '');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3429, 'css_variant', '');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3828, 'address', 'Albania');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3829, 'websitetitle', 'Pikat Turistike');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3830, 'gps', '40.714881047596926, 19.88586444407702');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3831, 'map_center', '1');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3832, 'email', 'info@my-website.com');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3833, 'email_alert', '1');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3834, 'phone', '+385 (0)1 123 321');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3835, 'fax', '+385 (0)1 123 322');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3836, 'address_footer', '<b>Pikat</b>Turistike<br />\r\nHarte informacioni Shqiperia<br />\r\n<br />');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3876, 'noreply', 'webform@my-website.com');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3877, 'zoom', '7');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3878, 'zoom_dashboard', '7');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3879, 'paypal_email', 'sandi.winter@gmail.com');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3880, 'payments_enabled', '0');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3881, 'walkscore_enabled', '0');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3882, 'property_subm_disabled', '0');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3883, 'maps_api_key', 'AIzaSyB0lxCRSHcNPBu5hq3wsmY1KhcBq5Tlwi8');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3884, 'listing_expiry_days', '0');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3885, 'activation_price', '5');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3886, 'featured_price', '10');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3887, 'default_currency', 'USD');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3888, 'authorize_api_login_id', '0');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3889, 'authorize_api_hash_secret', '0');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3890, 'authorize_api_transaction_key', '0');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3891, 'payu_api_pos_id', '0');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3892, 'payu_api_key_1', '0');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3893, 'payu_api_key_2', '0');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3894, 'payu_api_auth_key', '0');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3895, 'adsense728_90', '<script async src=\"//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js\"></script>\r\n<!-- Real estate responsive -->\r\n<ins class=\"adsbygoogle\"\r\n     style=\"display:block\"\r\n     data-ad-client=\"ca-pub-6994200887384132\"\r\n     data-ad-slot=\"6454101571\"\r\n     data-ad-format=\"auto\"></ins>\r\n<script>\r\n(adsbygoogle = window.adsbygoogle || []).push({});\r\n</script>');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3896, 'adsense160_600', '<script async src=\"//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js\"></script>\r\n<!-- Real estate right -->\r\n<ins class=\"adsbygoogle\"\r\n     style=\"display:inline-block;width:160px;height:600px\"\r\n     data-ad-client=\"ca-pub-6994200887384132\"\r\n     data-ad-slot=\"7090863570\"></ins>\r\n<script>\r\n(adsbygoogle = window.adsbygoogle || []).push({});\r\n</script>');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3897, 'reviews_enabled', '1');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3898, 'reviews_public_visible_enabled', '1');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3899, 'showroom_slideshow_enabled', '0');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3900, 'withdrawal_details', 'IBAN: HR43 2340009 3207462177<br/>\r\nSWIFT: PBZGHR2X');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3901, 'booking_fee', '0');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3902, 'page_offline', '0');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3903, 'page_offline_message', '');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3904, 'enable_qs', '0');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3905, 'multilang_on_qs', '0');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3906, 'js_date_format', 'yyyy-MM-dd');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3907, 'php_date_format', '');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3908, 'word_filtering', '');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3909, 'clickatell_api_key', '0');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3910, 'map_version', 'open_street');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3911, 'agents_page_user_enable', '0');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3912, 'limit_markers', '300');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3913, 'mailchimp_api_key', '0');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3914, 'mailchimp_list_id', '0');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3958, 'template', 'realsite');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3959, 'tracking', '<script type=\"text/javascript\">  var _gaq = _gaq || [];  _gaq.push([\'_setAccount\', \'UA-683342-5\']);  _gaq.push([\'_trackPageview\']);  (function() {    var ga = document.createElement(\'script\'); ga.type = \'text/javascript\'; ga.async = true;    ga.src = (\'https:\' == document.location.protocol ? \'https://ssl\' : \'http://www\') + \'.google-analytics.com/ga.js\';    var s = document.getElementsByTagName(\'script\')[0]; s.parentNode.insertBefore(ga, s);  })();</script>');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3960, 'facebook', '<!-- AddThis Button BEGIN -->\r\n<div class=\"addthis_toolbox addthis_default_style addthis_32x32_style\">\r\n<a class=\"addthis_button_facebook\">\r\n    <div class=\"custom-icon at15t_facebook\"> </div>\r\n</a>\r\n<a class=\"addthis_button_twitter\">\r\n    <div class=\"custom-icon at15t_twitter\"> </div>\r\n</a>\r\n<a class=\"addthis_button_google_plusone_share\">\r\n    <div class=\"custom-icon at15t_google_plusone_share\"> </div>\r\n</a>\r\n</div>\r\n<script type=\"text/javascript\">var addthis_config = {\"data_track_addressbar\":false};</script>\r\n<script type=\"text/javascript\" src=\"//s7.addthis.com/js/300/addthis_widget.js#pubid=sandiwinter\"></script>\r\n<!-- AddThis Button END -->');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3961, 'facebook_top', '<!-- Go to www.addthis.com/dashboard to customize your tools -->\r\n<div class=\"addthis_sharing_toolbox\"></div>');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3962, 'facebook_jsdk', '');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3963, 'facebook_comments', '');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3964, 'useful_links', '<ul class=\"menu nav\">\r\n                            <li class=\"first leaf\"><a href=\"#\">404 page</a></li>\r\n                            <li class=\"leaf\"><a href=\"#\">About us</a></li>\r\n                            <li class=\"leaf\"><a href=\"#\">Contact us</a></li>\r\n                            <li class=\"leaf\"><a href=\"#\">FAQ</a></li>\r\n                            <li class=\"leaf\"><a href=\"#\">Grid system</a></li>\r\n                            <li class=\"leaf\"><a href=\"#\">Our agents</a></li>\r\n                            <li class=\"last leaf\"><a href=\"#\">Typography</a></li>\r\n                        </ul>');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3965, 'website_logo', '284');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3966, 'website_logo_secondary', '0');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3967, 'website_favicon', '308');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3968, 'watermark_img', 'SKIP_ON_EMPTY');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3969, 'search_background', '285');
INSERT INTO `settings` (`id`, `field`, `value`) VALUES (3970, 'color', 'red');


#
# TABLE STRUCTURE FOR: repository
#

CREATE TABLE `repository` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_activated` tinyint(1) DEFAULT '1',
  `date_submit` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=462 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (6, 'user_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (22, 'slideshow_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (23, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (24, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (25, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (40, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (41, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (42, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (43, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (44, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (45, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (46, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (47, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (48, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (49, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (50, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (51, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (52, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (53, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (54, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (55, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (56, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (57, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (58, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (59, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (60, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (61, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (62, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (63, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (64, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (65, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (66, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (67, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (68, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (69, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (70, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (71, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (72, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (73, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (74, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (75, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (76, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (77, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (78, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (79, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (80, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (81, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (82, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (83, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (84, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (85, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (86, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (87, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (88, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (89, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (90, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (91, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (92, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (93, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (94, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (95, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (96, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (97, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (98, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (99, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (100, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (101, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (102, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (103, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (104, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (105, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (106, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (107, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (108, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (109, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (110, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (111, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (112, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (113, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (114, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (115, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (116, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (117, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (118, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (119, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (120, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (121, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (122, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (123, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (124, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (125, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (126, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (127, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (128, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (129, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (130, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (131, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (132, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (133, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (134, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (135, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (136, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (137, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (138, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (139, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (140, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (141, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (142, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (143, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (144, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (145, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (146, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (147, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (148, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (149, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (150, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (151, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (152, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (153, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (154, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (155, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (156, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (157, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (158, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (159, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (160, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (161, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (162, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (163, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (164, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (165, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (166, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (167, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (168, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (169, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (170, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (171, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (172, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (173, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (174, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (175, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (176, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (177, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (178, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (179, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (180, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (181, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (182, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (183, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (186, 'user_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (196, 'user_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (199, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (201, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (202, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (203, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (207, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (208, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (209, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (210, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (211, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (212, 'ads_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (213, 'ads_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (214, 'ads_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (215, 'ads_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (216, 'ads_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (217, 'ads_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (218, 'ads_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (219, 'ads_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (220, 'ads_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (221, 'ads_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (222, 'ads_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (223, 'ads_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (224, 'ads_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (225, 'ads_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (226, 'ads_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (227, 'ads_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (228, 'ads_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (229, 'ads_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (230, 'ads_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (231, 'ads_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (232, 'ads_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (233, 'ads_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (234, 'ads_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (235, 'ads_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (238, 'ads_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (239, 'ads_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (240, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (241, 'showroom_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (243, 'showroom_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (244, 'showroom_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (246, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (248, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (249, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (250, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (251, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (252, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (253, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (254, 'user_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (255, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (262, 'option_m_val', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (263, 'option_m_val', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (264, 'option_m_val', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (265, 'option_m_val', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (267, 'option_m_val', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (268, 'option_m_val', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (269, 'option_m_val', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (270, 'option_m_val', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (272, 'option_m_val', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (273, 'option_m_val', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (274, 'option_m_val', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (275, 'option_m_val', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (276, 'option_m_val', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (277, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (278, 'page_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (280, 'showroom_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (281, 'showroom_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (282, 'user_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (284, 'settings_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (285, 'settings_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (286, 'option_m_val', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (287, 'option_m_val', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (308, 'settings_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (309, 'option_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (310, 'option_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (311, 'option_m', 1, NULL, NULL);
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (312, 'treefield_m', 1, '2017-06-20 17:13:31', '2017-06-20 17:13:31');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (313, 'treefield_m', 1, '2017-06-20 17:13:52', '2017-06-20 17:13:52');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (314, 'treefield_m', 1, '2018-07-20 10:26:37', '2018-07-20 10:26:37');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (315, 'treefield_m', 1, '2018-11-02 17:19:11', '2018-11-02 17:19:11');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (316, 'treefield_m', 1, '2018-11-02 17:22:58', '2018-11-02 17:22:58');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (317, 'option_m', 1, '2018-11-02 17:44:33', '2018-11-02 17:44:33');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (319, 'option_m', 1, '2018-11-03 13:43:37', '2018-11-03 13:43:37');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (320, 'option_m', 1, '2018-11-03 13:44:02', '2018-11-03 13:44:02');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (321, 'treefield_m', 1, '2018-11-03 13:47:51', '2018-11-03 13:47:51');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (322, 'treefield_m', 1, '2018-11-03 13:49:05', '2018-11-03 13:49:05');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (323, 'treefield_m', 1, '2018-11-03 13:50:01', '2018-11-03 13:50:01');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (324, 'treefield_m', 1, '2018-11-03 13:50:54', '2018-11-03 13:50:54');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (325, 'treefield_m', 1, '2018-11-03 13:51:17', '2018-11-03 13:51:17');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (326, 'treefield_m', 1, '2018-11-03 13:51:39', '2018-11-03 13:51:39');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (327, 'treefield_m', 1, '2018-11-03 13:51:59', '2018-11-03 13:51:59');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (328, 'treefield_m', 1, '2018-11-03 13:52:12', '2018-11-03 13:52:12');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (329, 'treefield_m', 1, '2018-11-03 13:52:35', '2018-11-03 13:52:35');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (330, 'treefield_m', 1, '2018-11-03 13:52:53', '2018-11-03 13:52:53');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (331, 'treefield_m', 1, '2018-11-03 13:53:12', '2018-11-03 13:53:12');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (332, 'treefield_m', 1, '2018-11-03 13:53:35', '2018-11-03 13:53:35');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (333, 'treefield_m', 1, '2018-11-03 13:53:54', '2018-11-03 13:53:54');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (334, 'treefield_m', 1, '2018-11-03 13:54:22', '2018-11-03 13:54:22');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (335, 'treefield_m', 1, '2018-11-03 13:54:40', '2018-11-03 13:54:40');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (336, 'treefield_m', 1, '2018-11-03 13:54:52', '2018-11-03 13:54:52');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (337, 'treefield_m', 1, '2018-11-03 13:55:05', '2018-11-03 13:55:05');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (338, 'treefield_m', 1, '2018-11-03 13:55:20', '2018-11-03 13:55:20');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (339, 'treefield_m', 1, '2018-11-03 13:55:36', '2018-11-03 13:55:36');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (340, 'treefield_m', 1, '2018-11-03 13:55:48', '2018-11-03 13:55:48');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (341, 'treefield_m', 1, '2018-11-03 13:56:12', '2018-11-03 13:56:12');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (342, 'treefield_m', 1, '2018-11-03 13:56:28', '2018-11-03 13:56:28');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (343, 'treefield_m', 1, '2018-11-03 13:56:46', '2018-11-03 13:56:46');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (344, 'treefield_m', 1, '2018-11-03 13:57:03', '2018-11-03 13:57:03');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (345, 'treefield_m', 1, '2018-11-03 13:57:18', '2018-11-03 13:57:18');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (346, 'treefield_m', 1, '2018-11-03 13:57:30', '2018-11-03 13:57:30');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (347, 'treefield_m', 1, '2018-11-03 13:57:42', '2018-11-03 13:57:42');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (348, 'treefield_m', 1, '2018-11-03 13:57:55', '2018-11-03 13:57:55');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (349, 'treefield_m', 1, '2018-11-03 13:58:30', '2018-11-03 13:58:30');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (350, 'treefield_m', 1, '2018-11-03 13:58:46', '2018-11-03 13:58:46');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (351, 'treefield_m', 1, '2018-11-03 13:59:02', '2018-11-03 13:59:02');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (352, 'treefield_m', 1, '2018-11-03 13:59:28', '2018-11-03 13:59:28');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (353, 'treefield_m', 1, '2018-11-03 13:59:44', '2018-11-03 13:59:44');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (354, 'treefield_m', 1, '2018-11-03 14:00:39', '2018-11-03 14:00:39');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (355, 'treefield_m', 1, '2018-11-03 14:00:56', '2018-11-03 14:00:56');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (356, 'treefield_m', 1, '2018-11-03 14:01:09', '2018-11-03 14:01:09');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (357, 'treefield_m', 1, '2018-11-03 14:01:25', '2018-11-03 14:01:25');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (358, 'treefield_m', 1, '2018-11-03 14:01:40', '2018-11-03 14:01:40');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (359, 'treefield_m', 1, '2018-11-03 14:01:57', '2018-11-03 14:01:57');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (360, 'treefield_m', 1, '2018-11-03 14:02:19', '2018-11-03 14:02:19');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (361, 'treefield_m', 1, '2018-11-03 14:02:35', '2018-11-03 14:02:35');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (362, 'treefield_m', 1, '2018-11-03 14:02:56', '2018-11-03 14:02:56');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (363, 'treefield_m', 1, '2018-11-03 14:03:11', '2018-11-03 14:03:11');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (364, 'treefield_m', 1, '2018-11-03 14:03:27', '2018-11-03 14:03:27');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (365, 'treefield_m', 1, '2018-11-03 14:03:42', '2018-11-03 14:03:42');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (366, 'treefield_m', 1, '2018-11-03 14:03:56', '2018-11-03 14:03:56');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (367, 'treefield_m', 1, '2018-11-03 14:04:09', '2018-11-03 14:04:09');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (368, 'treefield_m', 1, '2018-11-03 14:04:25', '2018-11-03 14:04:25');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (369, 'treefield_m', 1, '2018-11-03 14:04:40', '2018-11-03 14:04:40');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (370, 'treefield_m', 1, '2018-11-03 14:05:08', '2018-11-03 14:05:08');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (371, 'treefield_m', 1, '2018-11-03 14:05:21', '2018-11-03 14:05:21');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (372, 'treefield_m', 1, '2018-11-03 14:05:34', '2018-11-03 14:05:34');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (373, 'treefield_m', 1, '2018-11-03 14:05:47', '2018-11-03 14:05:47');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (374, 'treefield_m', 1, '2018-11-03 14:06:03', '2018-11-03 14:06:03');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (375, 'treefield_m', 1, '2018-11-03 14:06:15', '2018-11-03 14:06:15');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (376, 'treefield_m', 1, '2018-11-03 14:06:26', '2018-11-03 14:06:26');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (377, 'treefield_m', 1, '2018-11-03 14:06:42', '2018-11-03 14:06:42');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (378, 'treefield_m', 1, '2018-11-03 14:06:58', '2018-11-03 14:06:58');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (379, 'treefield_m', 1, '2018-11-03 14:07:10', '2018-11-03 14:07:10');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (380, 'treefield_m', 1, '2018-11-03 14:07:23', '2018-11-03 14:07:23');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (381, 'treefield_m', 1, '2018-11-03 14:07:35', '2018-11-03 14:07:35');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (382, 'treefield_m', 1, '2018-11-03 14:07:49', '2018-11-03 14:07:49');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (383, 'treefield_m', 1, '2018-11-03 14:08:00', '2018-11-03 14:08:00');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (385, 'option_m', 1, '2018-11-03 15:18:34', '2018-11-03 15:18:34');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (386, 'option_m', 1, '2018-11-05 10:12:59', '2018-11-05 10:12:59');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (387, 'option_m', 1, '2018-11-05 16:18:18', '2018-11-05 16:18:18');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (388, 'option_m', 1, '2018-11-05 16:18:32', '2018-11-05 16:18:32');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (389, 'option_m', 1, '2018-11-05 16:18:52', '2018-11-05 16:18:52');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (390, 'option_m', 1, '2018-11-05 16:19:22', '2018-11-05 16:19:22');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (391, 'option_m', 1, '2018-11-05 16:19:39', '2018-11-05 16:19:39');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (392, 'option_m', 1, '2018-11-05 16:19:55', '2018-11-05 16:19:55');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (393, 'option_m', 1, '2018-11-06 10:16:02', '2018-11-06 10:16:02');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (394, 'option_m', 1, '2018-11-06 10:17:20', '2018-11-06 10:17:20');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (395, 'option_m', 1, '2018-11-06 10:17:34', '2018-11-06 10:17:34');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (396, 'treefield_m', 1, '2018-11-06 10:19:20', '2018-11-06 10:19:20');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (397, 'treefield_m', 1, '2018-11-06 10:19:47', '2018-11-06 10:19:47');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (398, 'option_m', 1, '2018-11-06 10:21:20', '2018-11-06 10:21:20');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (399, 'option_m', 1, '2018-11-06 10:48:32', '2018-11-06 10:48:32');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (400, 'option_m', 1, '2018-11-06 11:32:25', '2018-11-06 11:32:25');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (402, 'option_m', 1, '2018-11-06 11:50:08', '2018-11-06 11:50:08');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (403, 'option_m', 1, '2018-11-06 15:23:08', '2018-11-06 15:23:08');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (404, 'treefield_m', 1, '2018-11-07 11:20:41', '2018-11-07 11:20:41');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (405, 'user_m', 1, '2018-11-07 14:20:29', '2018-11-07 14:20:29');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (406, 'user_m', 1, '2018-11-07 14:37:35', '2018-11-07 14:37:35');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (407, 'user_m', 1, '2018-11-08 11:02:21', '2018-11-08 11:02:21');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (408, 'user_m', 1, '2018-11-08 11:03:45', '2018-11-08 11:03:45');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (410, 'option_m', 1, '2018-11-08 12:01:18', '2018-11-08 12:01:18');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (411, 'option_m', 1, '2018-11-08 12:32:33', '2018-11-08 12:32:33');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (422, 'user_m', 1, '2018-11-14 16:56:54', '2018-11-14 16:56:54');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (425, 'user_m', 1, '2018-11-15 17:03:51', '2018-11-15 17:03:51');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (428, 'user_m', 1, '2018-11-16 09:24:35', '2018-11-16 09:24:35');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (433, 'user_m', 1, '2018-11-19 10:29:26', '2018-11-19 10:29:26');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (436, 'user_m', 1, '2018-11-19 12:05:15', '2018-11-19 12:05:15');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (437, 'user_m', 1, '2018-11-19 12:23:30', '2018-11-19 12:23:30');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (439, 'user_m', 1, '2018-11-19 13:20:08', '2018-11-19 13:20:08');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (444, 'estate_m', 1, '2018-11-21 10:15:59', '2018-11-21 10:15:59');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (445, 'estate_m', 1, '2018-11-21 10:47:11', '2018-11-21 10:47:11');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (446, 'estate_m', 1, '2018-11-21 10:54:49', '2018-11-21 10:54:49');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (447, 'user_m', 1, '2018-11-21 11:18:02', '2018-11-21 11:18:02');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (448, 'estate_m', 1, '2018-11-21 12:40:16', '2018-11-21 12:40:16');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (449, 'estate_m', 1, '2018-11-21 13:05:24', '2018-11-21 13:05:24');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (450, 'option_m', 1, '2018-11-21 16:46:23', '2018-11-21 16:46:23');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (451, 'option_m', 1, '2018-11-21 16:57:14', '2018-11-21 16:57:14');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (452, 'option_m', 1, '2018-11-21 17:16:11', '2018-11-21 17:16:11');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (453, 'option_m_val', 1, '2018-11-22 10:15:47', '2018-11-22 10:15:47');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (454, 'option_m_val', 1, '2018-11-22 10:56:41', '2018-11-22 10:56:41');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (455, 'option_m_val', 1, '2018-11-22 10:56:41', '2018-11-22 10:56:41');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (456, 'option_m_val', 1, '2018-11-22 11:02:35', '2018-11-22 11:02:35');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (457, 'option_m_val', 1, '2018-11-22 11:02:35', '2018-11-22 11:02:35');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (458, 'estate_m', 1, '2018-11-22 15:24:38', '2018-11-22 15:24:38');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (459, 'option_m', 1, '2018-11-23 12:11:39', '2018-11-23 12:11:39');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (460, 'option_m', 1, '2018-11-23 12:14:24', '2018-11-23 12:14:24');
INSERT INTO `repository` (`id`, `name`, `is_activated`, `date_submit`, `date_modified`) VALUES (461, 'estate_m', 1, '2018-12-07 10:05:32', '2018-12-07 10:05:32');


#
# TABLE STRUCTURE FOR: property
#

CREATE TABLE `property` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_transitions` int(11) DEFAULT NULL,
  `id_trans_text` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gps` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_of_user` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `lat` decimal(9,6) DEFAULT NULL,
  `lng` decimal(9,6) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `date_activated` datetime DEFAULT NULL COMMENT 'Activated even if not paid for activation (by admin for example)',
  `address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'housing\nhouse\nland\nbusiness premises',
  `repository_id` int(11) DEFAULT NULL,
  `planimages_repository_id` int(11) DEFAULT NULL,
  `is_featured` tinyint(1) DEFAULT '0',
  `search_values` text COLLATE utf8_unicode_ci,
  `is_activated` tinyint(1) DEFAULT '1',
  `is_visible` tinyint(4) DEFAULT '1',
  `activation_paid_date` datetime DEFAULT NULL,
  `featured_paid_date` datetime DEFAULT NULL,
  `counter_views` int(11) DEFAULT '0',
  `avarage_rating` int(11) DEFAULT NULL,
  `image_filename` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_repository` text COLLATE utf8_unicode_ci,
  `sent_to_affiliate` tinyint(1) DEFAULT '0',
  `date_notify` datetime DEFAULT NULL,
  `status` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_status` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `affilate_id` int(11) DEFAULT NULL,
  `date_repost` datetime DEFAULT NULL,
  `date_renew` datetime DEFAULT NULL,
  `date_alert` datetime DEFAULT NULL,
  `last_edit_ip` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_notify_expired` datetime DEFAULT NULL,
  `municipality_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IX_Municipality_ID` (`municipality_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `property` (`id`, `id_transitions`, `id_trans_text`, `gps`, `name_of_user`, `lat`, `lng`, `date`, `date_modified`, `date_activated`, `address`, `type`, `repository_id`, `planimages_repository_id`, `is_featured`, `search_values`, `is_activated`, `is_visible`, `activation_paid_date`, `featured_paid_date`, `counter_views`, `avarage_rating`, `image_filename`, `image_repository`, `sent_to_affiliate`, `date_notify`, `status`, `date_status`, `affilate_id`, `date_repost`, `date_renew`, `date_alert`, `last_edit_ip`, `date_notify_expired`, `municipality_id`) VALUES (37, NULL, NULL, '41.31619488443263, 19.798285961151127', '0', '41.316195', '19.798286', '2018-11-21 10:11:52', '2018-11-21 10:14:52', NULL, 'Location 1 tirane', NULL, 444, NULL, 1, 'id: 37Location 1 tirane Location pare Tirane Location pare Tirane Xhami 5  Mesim Xhami 1001 Më pak se 50m2  Tiranë - Vorë -  13214564654  / / / / / Location pare Tirane Location pare Tirane  5  Learning Mosque 1001 Less than 50m2  Tiranë - Vorë -  13214564654  / / / / /', 1, 1, NULL, NULL, 3, NULL, NULL, '[]', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '::1', NULL, 0);
INSERT INTO `property` (`id`, `id_transitions`, `id_trans_text`, `gps`, `name_of_user`, `lat`, `lng`, `date`, `date_modified`, `date_activated`, `address`, `type`, `repository_id`, `planimages_repository_id`, `is_featured`, `search_values`, `is_activated`, `is_visible`, `activation_paid_date`, `featured_paid_date`, `counter_views`, `avarage_rating`, `image_filename`, `image_repository`, `sent_to_affiliate`, `date_notify`, `status`, `date_status`, `affilate_id`, `date_repost`, `date_renew`, `date_alert`, `last_edit_ip`, `date_notify_expired`, `municipality_id`) VALUES (38, NULL, NULL, '41.29844430929419, 19.794616699218754', '0', '41.298444', '19.794617', '2018-11-21 10:39:40', '2018-11-21 10:40:40', NULL, 'Albania', NULL, 445, NULL, 0, 'id: 38Albania asdasdasd 5 maji Park 0  Argetim Park  Më pak se 50m2  Kukës - Tropojë -  23135165       asdasdasd 5 maji empty 0  Fun Park  Less than 50m2    23135165      ', 1, 1, NULL, NULL, 0, NULL, NULL, '[]', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '::1', NULL, 0);
INSERT INTO `property` (`id`, `id_transitions`, `id_trans_text`, `gps`, `name_of_user`, `lat`, `lng`, `date`, `date_modified`, `date_activated`, `address`, `type`, `repository_id`, `planimages_repository_id`, `is_featured`, `search_values`, `is_activated`, `is_visible`, `activation_paid_date`, `featured_paid_date`, `counter_views`, `avarage_rating`, `image_filename`, `image_repository`, `sent_to_affiliate`, `date_notify`, `status`, `date_status`, `affilate_id`, `date_repost`, `date_renew`, `date_alert`, `last_edit_ip`, `date_notify_expired`, `municipality_id`) VALUES (39, NULL, NULL, '41.29844430929419, 19.794616699218754', '0', '41.298444', '19.794617', '2018-11-21 10:46:43', '2018-11-21 10:46:55', NULL, 'Albania', NULL, 446, NULL, 1, 'id: 39Albania asdasdasd 5 maji Park 0  Argetim Park  Më pak se 50m2   SKIP_ON_EMPTY 23135165       asdasdasd 5 maji empty 0  Fun Park  Less than 50m2   SKIP_ON_EMPTY 23135165      ', 1, 1, NULL, NULL, 1, NULL, NULL, '[]', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '::1', NULL, 126);
INSERT INTO `property` (`id`, `id_transitions`, `id_trans_text`, `gps`, `name_of_user`, `lat`, `lng`, `date`, `date_modified`, `date_activated`, `address`, `type`, `repository_id`, `planimages_repository_id`, `is_featured`, `search_values`, `is_activated`, `is_visible`, `activation_paid_date`, `featured_paid_date`, `counter_views`, `avarage_rating`, `image_filename`, `image_repository`, `sent_to_affiliate`, `date_notify`, `status`, `date_status`, `affilate_id`, `date_repost`, `date_renew`, `date_alert`, `last_edit_ip`, `date_notify_expired`, `municipality_id`) VALUES (40, NULL, NULL, '40.84290487729676, 19.841308593750004', '52', '40.842905', '19.841309', '2018-11-21 12:38:58', '2018-11-21 12:40:01', NULL, '123ASdasd', NULL, 448, NULL, 1, 'id: 40123ASdasd 123asdasd as Park 0  Argetim Park  Më shumë se 100m²  Tiranë - Tiranë - SKIP_ON_EMPTY 23135165       123asdasd as empty 0  Fun Park  Less than 50m²  Tiranë - Tiranë - SKIP_ON_EMPTY 23135165      ', 1, 1, NULL, NULL, 11, NULL, 'wallpaper.jpg', '[\"wallpaper.jpg\"]', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '::1', NULL, 126);
INSERT INTO `property` (`id`, `id_transitions`, `id_trans_text`, `gps`, `name_of_user`, `lat`, `lng`, `date`, `date_modified`, `date_activated`, `address`, `type`, `repository_id`, `planimages_repository_id`, `is_featured`, `search_values`, `is_activated`, `is_visible`, `activation_paid_date`, `featured_paid_date`, `counter_views`, `avarage_rating`, `image_filename`, `image_repository`, `sent_to_affiliate`, `date_notify`, `status`, `date_status`, `affilate_id`, `date_repost`, `date_renew`, `date_alert`, `last_edit_ip`, `date_notify_expired`, `municipality_id`) VALUES (41, NULL, NULL, '41.32835758409143, 19.797363281250004', 'admin_tr3', '41.328358', '19.797363', '2018-11-21 13:03:39', '2018-11-22 16:12:17', NULL, 'Albania - mun', NULL, 449, NULL, 0, 'id: 41Albania - mun nona fare Futja Kot Park 3  Argetim Park  50-100m²  Tiranë - Tiranë - 453 23135165       nona fare Futja Kot empty 3  Fun Park  Less than 50m²  Tiranë - Tiranë - SKIP_ON_EMPTY 23135165      ', 1, 1, NULL, NULL, 26, NULL, 'albania (2).jpg', '[\"albania (2).jpg\"]', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '::1', NULL, 126);
INSERT INTO `property` (`id`, `id_transitions`, `id_trans_text`, `gps`, `name_of_user`, `lat`, `lng`, `date`, `date_modified`, `date_activated`, `address`, `type`, `repository_id`, `planimages_repository_id`, `is_featured`, `search_values`, `is_activated`, `is_visible`, `activation_paid_date`, `featured_paid_date`, `counter_views`, `avarage_rating`, `image_filename`, `image_repository`, `sent_to_affiliate`, `date_notify`, `status`, `date_status`, `affilate_id`, `date_repost`, `date_renew`, `date_alert`, `last_edit_ip`, `date_notify_expired`, `municipality_id`) VALUES (42, NULL, NULL, '40.83251504043274, 19.824829101562504', '59', '40.832515', '19.824829', '2018-11-22 15:23:56', '2018-11-22 15:24:34', NULL, 'sadsadsad', NULL, 458, NULL, 1, 'id: 42sadsadsad sadsadsa location i ri Park 2  Argetim Park 4654 Më pak se 50m²  Tiranë - Tiranë - SKIP_ON_EMPTY        sadsadsa location i ri empty 2  Fun Park 4654 Less than 50m²  Tiranë - Tiranë - SKIP_ON_EMPTY       ', 1, 1, NULL, NULL, 0, NULL, NULL, '[]', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '::1', NULL, 126);
INSERT INTO `property` (`id`, `id_transitions`, `id_trans_text`, `gps`, `name_of_user`, `lat`, `lng`, `date`, `date_modified`, `date_activated`, `address`, `type`, `repository_id`, `planimages_repository_id`, `is_featured`, `search_values`, `is_activated`, `is_visible`, `activation_paid_date`, `featured_paid_date`, `counter_views`, `avarage_rating`, `image_filename`, `image_repository`, `sent_to_affiliate`, `date_notify`, `status`, `date_status`, `affilate_id`, `date_repost`, `date_renew`, `date_alert`, `last_edit_ip`, `date_notify_expired`, `municipality_id`) VALUES (43, NULL, NULL, '41.31907562295139, 19.750671386718754', 'punonjes tirane', '41.319076', '19.750671', '2018-12-07 09:53:53', '2018-12-07 09:54:43', NULL, 'Tirane 1', NULL, 461, NULL, 0, 'id: Tirane 1 Tirane 1  Furre Buke 0  Ushqim dhe Pije Furre Buke  Më pak se 50m²  Tiranë - Tiranë - SKIP_ON_EMPTY        Tirane 1  restaurant 0  Food and drink Bakery  Less than 50m²   SKIP_ON_EMPTY       ', 1, 0, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '::1', NULL, 126);


#
# TABLE STRUCTURE FOR: property_lang
#

CREATE TABLE `property_lang` (
  `l_id` int(11) NOT NULL AUTO_INCREMENT,
  `property_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `json_object` text COLLATE utf8_unicode_ci,
  `field_36_int` int(11) DEFAULT NULL COMMENT 'Sale price',
  `field_37_int` int(11) DEFAULT NULL COMMENT 'Rent price (excl)',
  `field_55_int` int(11) DEFAULT NULL COMMENT 'Rent price (incl)',
  `field_19_int` int(11) DEFAULT NULL,
  `field_20_int` int(11) DEFAULT NULL,
  `field_58_int` int(11) DEFAULT NULL,
  `field_57_int` int(11) DEFAULT NULL,
  `field_56_int` int(11) DEFAULT NULL,
  `field_59_int` int(11) DEFAULT NULL,
  `field_4` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_2` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_5` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_7` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_44_int` int(11) DEFAULT NULL,
  `field_83_int` int(11) DEFAULT NULL,
  PRIMARY KEY (`l_id`),
  KEY `fk_property_lang_property1_idx` (`property_id`),
  KEY `fk_property_lang_language1_idx` (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=583 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `property_lang` (`l_id`, `property_id`, `language_id`, `json_object`, `field_36_int`, `field_37_int`, `field_55_int`, `field_19_int`, `field_20_int`, `field_58_int`, `field_57_int`, `field_56_int`, `field_59_int`, `field_4`, `field_2`, `field_5`, `field_7`, `field_44_int`, `field_83_int`) VALUES (479, 38, 4, '{\"field_10\":\"asdasdasd\",\"field_78\":\"5 maji\",\"field_8\":\"<p>asdasd asd<\\/p>\",\"field_17\":\"<p>estate<\\/p>\",\"field_6\":\"Park\",\"field_56\":\"0\",\"field_1\":\"\",\"field_4\":\"Argetim\",\"field_2\":\"Park\",\"field_40\":\"\",\"field_3\":\"Më pak se 50m2\",\"field_81\":\"\",\"field_66\":\"\",\"field_64\":\"Kukës - Tropojë -\",\"field_74\":\"\",\"field_68\":\"23135165\",\"field_72\":\"<p>estate<\\/p>\",\"field_43\":\"\",\"field_44\":\"\",\"field_45\":\"\",\"field_46\":\"\",\"field_47\":\"\",\"field_48\":\"\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'Argetim', 'Park', NULL, NULL, NULL, NULL);
INSERT INTO `property_lang` (`l_id`, `property_id`, `language_id`, `json_object`, `field_36_int`, `field_37_int`, `field_55_int`, `field_19_int`, `field_20_int`, `field_58_int`, `field_57_int`, `field_56_int`, `field_59_int`, `field_4`, `field_2`, `field_5`, `field_7`, `field_44_int`, `field_83_int`) VALUES (480, 38, 1, '{\"field_10\":\"asdasdasd\",\"field_78\":\"5 maji\",\"field_8\":\"<p>asdasd asd<\\/p>\",\"field_17\":\"<p>estate<\\/p>\",\"field_6\":\"empty\",\"field_56\":\"0\",\"field_1\":\"\",\"field_4\":\"Fun\",\"field_2\":\"Park\",\"field_40\":\"\",\"field_3\":\"Less than 50m2\",\"field_81\":\"\",\"field_66\":\"\",\"field_64\":\"\",\"field_74\":\"\",\"field_68\":\"23135165\",\"field_72\":\"<p>estate<\\/p>\",\"field_43\":\"\",\"field_44\":\"\",\"field_45\":\"\",\"field_46\":\"\",\"field_47\":\"\",\"field_48\":\"\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'Fun', 'Park', NULL, NULL, NULL, NULL);
INSERT INTO `property_lang` (`l_id`, `property_id`, `language_id`, `json_object`, `field_36_int`, `field_37_int`, `field_55_int`, `field_19_int`, `field_20_int`, `field_58_int`, `field_57_int`, `field_56_int`, `field_59_int`, `field_4`, `field_2`, `field_5`, `field_7`, `field_44_int`, `field_83_int`) VALUES (489, 37, 4, '{\"field_10\":\"Location pare Tirane\",\"field_78\":\"Location pare Tirane\",\"field_8\":\"<p>Location pare Tirane<\\/p>\",\"field_17\":\"<p>Location pare Tirane<\\/p>\",\"field_6\":\"Xhami\",\"field_56\":\"5\",\"field_1\":\"\",\"field_4\":\"Mesim\",\"field_2\":\"Xhami\",\"field_40\":\"1001\",\"field_3\":\"Më pak se 50m2\",\"field_81\":\"\",\"field_66\":\"\",\"field_64\":\"Tiranë - Vorë -\",\"field_74\":\"\",\"field_68\":\"13214564654\",\"field_72\":\"<p>dsasdasdawdaw<\\/p>\",\"field_43\":\"\",\"field_44\":\"\\/\",\"field_45\":\"\\/\",\"field_46\":\"\\/\",\"field_47\":\"\\/\",\"field_48\":\"\\/\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, 'Mesim', 'Xhami', NULL, NULL, NULL, NULL);
INSERT INTO `property_lang` (`l_id`, `property_id`, `language_id`, `json_object`, `field_36_int`, `field_37_int`, `field_55_int`, `field_19_int`, `field_20_int`, `field_58_int`, `field_57_int`, `field_56_int`, `field_59_int`, `field_4`, `field_2`, `field_5`, `field_7`, `field_44_int`, `field_83_int`) VALUES (490, 37, 1, '{\"field_10\":\"Location pare Tirane\",\"field_78\":\"Location pare Tirane\",\"field_8\":\"<p>Location pare Tirane<\\/p>\",\"field_17\":\"<p>Location pare Tirane<\\/p>\",\"field_6\":\"\",\"field_56\":\"5\",\"field_1\":\"\",\"field_4\":\"Learning\",\"field_2\":\"Mosque\",\"field_40\":\"1001\",\"field_3\":\"Less than 50m2\",\"field_81\":\"\",\"field_66\":\"\",\"field_64\":\"Tiranë - Vorë -\",\"field_74\":\"\",\"field_68\":\"13214564654\",\"field_72\":\"<p>dsasdasdawdaw<\\/p>\",\"field_43\":\"\",\"field_44\":\"\\/\",\"field_45\":\"\\/\",\"field_46\":\"\\/\",\"field_47\":\"\\/\",\"field_48\":\"\\/\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, NULL, 'Learning', 'Mosque', NULL, NULL, NULL, NULL);
INSERT INTO `property_lang` (`l_id`, `property_id`, `language_id`, `json_object`, `field_36_int`, `field_37_int`, `field_55_int`, `field_19_int`, `field_20_int`, `field_58_int`, `field_57_int`, `field_56_int`, `field_59_int`, `field_4`, `field_2`, `field_5`, `field_7`, `field_44_int`, `field_83_int`) VALUES (491, 39, 4, '{\"field_10\":\"asdasdasd\",\"field_78\":\"5 maji\",\"field_8\":\"<p>asdasd asd<\\/p>\",\"field_17\":\"<p>estate<\\/p>\",\"field_6\":\"Park\",\"field_56\":\"0\",\"field_1\":\"\",\"field_4\":\"Argetim\",\"field_2\":\"Park\",\"field_40\":\"\",\"field_3\":\"Më pak se 50m2\",\"field_81\":\"\",\"field_66\":\"\",\"field_64\":\"\",\"field_74\":\"SKIP_ON_EMPTY\",\"field_68\":\"23135165\",\"field_72\":\"<p>estate<\\/p>\",\"field_43\":\"\",\"field_44\":\"\",\"field_45\":\"\",\"field_46\":\"\",\"field_47\":\"\",\"field_48\":\"\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'Argetim', 'Park', NULL, NULL, NULL, NULL);
INSERT INTO `property_lang` (`l_id`, `property_id`, `language_id`, `json_object`, `field_36_int`, `field_37_int`, `field_55_int`, `field_19_int`, `field_20_int`, `field_58_int`, `field_57_int`, `field_56_int`, `field_59_int`, `field_4`, `field_2`, `field_5`, `field_7`, `field_44_int`, `field_83_int`) VALUES (492, 39, 1, '{\"field_10\":\"asdasdasd\",\"field_78\":\"5 maji\",\"field_8\":\"<p>asdasd asd<\\/p>\",\"field_17\":\"<p>estate<\\/p>\",\"field_6\":\"empty\",\"field_56\":\"0\",\"field_1\":\"\",\"field_4\":\"Fun\",\"field_2\":\"Park\",\"field_40\":\"\",\"field_3\":\"Less than 50m2\",\"field_81\":\"\",\"field_66\":\"\",\"field_64\":\"\",\"field_74\":\"SKIP_ON_EMPTY\",\"field_68\":\"23135165\",\"field_72\":\"<p>estate<\\/p>\",\"field_43\":\"\",\"field_44\":\"\",\"field_45\":\"\",\"field_46\":\"\",\"field_47\":\"\",\"field_48\":\"\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'Fun', 'Park', NULL, NULL, NULL, NULL);
INSERT INTO `property_lang` (`l_id`, `property_id`, `language_id`, `json_object`, `field_36_int`, `field_37_int`, `field_55_int`, `field_19_int`, `field_20_int`, `field_58_int`, `field_57_int`, `field_56_int`, `field_59_int`, `field_4`, `field_2`, `field_5`, `field_7`, `field_44_int`, `field_83_int`) VALUES (561, 41, 4, '{\"field_10\":\"nona fare\",\"field_78\":\"Futja Kot\",\"field_8\":\"<p>asdasd<\\/p>\",\"field_17\":\"<p>asdasd<\\/p>\",\"field_6\":\"Park\",\"field_56\":\"3\",\"field_1\":\"\",\"field_4\":\"Argetim\",\"field_2\":\"Park\",\"field_40\":\"\",\"field_3\":\"50-100m²\",\"field_81\":\"\",\"field_66\":\"\",\"field_64\":\"Tiranë - Tiranë -\",\"field_74\":\"453\",\"field_68\":\"23135165\",\"field_72\":\"<p>asdasd<\\/p>\",\"field_43\":\"\",\"field_44\":\"\",\"field_45\":\"\",\"field_46\":\"\",\"field_47\":\"\",\"field_48\":\"\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 'Argetim', 'Park', NULL, NULL, NULL, NULL);
INSERT INTO `property_lang` (`l_id`, `property_id`, `language_id`, `json_object`, `field_36_int`, `field_37_int`, `field_55_int`, `field_19_int`, `field_20_int`, `field_58_int`, `field_57_int`, `field_56_int`, `field_59_int`, `field_4`, `field_2`, `field_5`, `field_7`, `field_44_int`, `field_83_int`) VALUES (562, 41, 1, '{\"field_10\":\"nona fare\",\"field_78\":\"Futja Kot\",\"field_8\":\"<p>asdasd<\\/p>\",\"field_17\":\"<p>asdasd<\\/p>\",\"field_6\":\"empty\",\"field_56\":\"3\",\"field_1\":\"\",\"field_4\":\"Fun\",\"field_2\":\"Park\",\"field_40\":\"\",\"field_3\":\"Less than 50m²\",\"field_81\":\"\",\"field_66\":\"\",\"field_64\":\"Tiranë - Tiranë -\",\"field_74\":\"SKIP_ON_EMPTY\",\"field_68\":\"23135165\",\"field_72\":\"<p>asdasd<\\/p>\",\"field_43\":\"\",\"field_44\":\"\",\"field_45\":\"\",\"field_46\":\"\",\"field_47\":\"\",\"field_48\":\"\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, NULL, 'Fun', 'Park', NULL, NULL, NULL, NULL);
INSERT INTO `property_lang` (`l_id`, `property_id`, `language_id`, `json_object`, `field_36_int`, `field_37_int`, `field_55_int`, `field_19_int`, `field_20_int`, `field_58_int`, `field_57_int`, `field_56_int`, `field_59_int`, `field_4`, `field_2`, `field_5`, `field_7`, `field_44_int`, `field_83_int`) VALUES (571, 43, 4, '{\"field_10\":\"Tirane 1\",\"field_78\":\"\",\"field_8\":\"\",\"field_17\":\"\",\"field_6\":\"Furre Buke\",\"field_56\":\"0\",\"field_1\":\"\",\"field_4\":\"Ushqim dhe Pije\",\"field_2\":\"Furre Buke\",\"field_40\":\"\",\"field_3\":\"Më pak se 50m²\",\"field_81\":\"\",\"field_66\":\"\",\"field_64\":\"Tiranë - Tiranë -\",\"field_74\":\"SKIP_ON_EMPTY\",\"field_68\":\"\",\"field_72\":\"\",\"field_43\":\"\",\"field_44\":\"\",\"field_45\":\"\",\"field_46\":\"\",\"field_47\":\"\",\"field_48\":\"\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'Ushqim dhe Pije', 'Furre Buke', NULL, NULL, NULL, NULL);
INSERT INTO `property_lang` (`l_id`, `property_id`, `language_id`, `json_object`, `field_36_int`, `field_37_int`, `field_55_int`, `field_19_int`, `field_20_int`, `field_58_int`, `field_57_int`, `field_56_int`, `field_59_int`, `field_4`, `field_2`, `field_5`, `field_7`, `field_44_int`, `field_83_int`) VALUES (572, 43, 1, '{\"field_10\":\"Tirane 1\",\"field_78\":\"\",\"field_8\":\"\",\"field_17\":\"\",\"field_6\":\"restaurant\",\"field_56\":\"0\",\"field_1\":\"\",\"field_4\":\"Food and drink\",\"field_2\":\"Bakery\",\"field_40\":\"\",\"field_3\":\"Less than 50m²\",\"field_81\":\"\",\"field_66\":\"\",\"field_64\":\"\",\"field_74\":\"SKIP_ON_EMPTY\",\"field_68\":\"\",\"field_72\":\"\",\"field_43\":\"\",\"field_44\":\"\",\"field_45\":\"\",\"field_46\":\"\",\"field_47\":\"\",\"field_48\":\"\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'Food and drink', 'Bakery', NULL, NULL, NULL, NULL);
INSERT INTO `property_lang` (`l_id`, `property_id`, `language_id`, `json_object`, `field_36_int`, `field_37_int`, `field_55_int`, `field_19_int`, `field_20_int`, `field_58_int`, `field_57_int`, `field_56_int`, `field_59_int`, `field_4`, `field_2`, `field_5`, `field_7`, `field_44_int`, `field_83_int`) VALUES (579, 40, 4, '{\"field_10\":\"123asdasd\",\"field_78\":\"as\",\"field_8\":\"<p>asd<\\/p>\",\"field_17\":\"<p>asdasd123e zssd asd<\\/p>\",\"field_6\":\"Park\",\"field_56\":\"0\",\"field_1\":\"\",\"field_4\":\"Argetim\",\"field_2\":\"Park\",\"field_40\":\"\",\"field_3\":\"Më shumë se 100m²\",\"field_81\":\"\",\"field_66\":\"\",\"field_64\":\"Tiranë - Tiranë -\",\"field_74\":\"SKIP_ON_EMPTY\",\"field_68\":\"23135165\",\"field_72\":\"<p>asdasd<\\/p>\",\"field_43\":\"\",\"field_44\":\"\",\"field_45\":\"\",\"field_46\":\"\",\"field_47\":\"\",\"field_48\":\"\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'Argetim', 'Park', NULL, NULL, NULL, NULL);
INSERT INTO `property_lang` (`l_id`, `property_id`, `language_id`, `json_object`, `field_36_int`, `field_37_int`, `field_55_int`, `field_19_int`, `field_20_int`, `field_58_int`, `field_57_int`, `field_56_int`, `field_59_int`, `field_4`, `field_2`, `field_5`, `field_7`, `field_44_int`, `field_83_int`) VALUES (580, 40, 1, '{\"field_10\":\"123asdasd\",\"field_78\":\"as\",\"field_8\":\"<p>asd<\\/p>\",\"field_17\":\"<p>asdasd123e zssd asd<\\/p>\",\"field_6\":\"empty\",\"field_56\":\"0\",\"field_1\":\"\",\"field_4\":\"Fun\",\"field_2\":\"Park\",\"field_40\":\"\",\"field_3\":\"Less than 50m²\",\"field_81\":\"\",\"field_66\":\"\",\"field_64\":\"Tiranë - Tiranë -\",\"field_74\":\"SKIP_ON_EMPTY\",\"field_68\":\"23135165\",\"field_72\":\"<p>asdasd<\\/p>\",\"field_43\":\"\",\"field_44\":\"\",\"field_45\":\"\",\"field_46\":\"\",\"field_47\":\"\",\"field_48\":\"\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 'Fun', 'Park', NULL, NULL, NULL, NULL);
INSERT INTO `property_lang` (`l_id`, `property_id`, `language_id`, `json_object`, `field_36_int`, `field_37_int`, `field_55_int`, `field_19_int`, `field_20_int`, `field_58_int`, `field_57_int`, `field_56_int`, `field_59_int`, `field_4`, `field_2`, `field_5`, `field_7`, `field_44_int`, `field_83_int`) VALUES (581, 42, 4, '{\"field_10\":\"sadsadsa\",\"field_78\":\"location i ri\",\"field_8\":\"<p>asdasdsadsasd<\\/p>\",\"field_17\":\"<p>dsdasdasd<\\/p>\",\"field_6\":\"Park\",\"field_56\":\"2\",\"field_1\":\"\",\"field_4\":\"Argetim\",\"field_2\":\"Park\",\"field_40\":\"4654\",\"field_3\":\"Më pak se 50m²\",\"field_81\":\"\",\"field_66\":\"\",\"field_64\":\"Tiranë - Tiranë -\",\"field_74\":\"SKIP_ON_EMPTY\",\"field_68\":\"\",\"field_72\":\"\",\"field_43\":\"\",\"field_44\":\"\",\"field_45\":\"\",\"field_46\":\"\",\"field_47\":\"\",\"field_48\":\"\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, 'Argetim', 'Park', NULL, NULL, NULL, NULL);
INSERT INTO `property_lang` (`l_id`, `property_id`, `language_id`, `json_object`, `field_36_int`, `field_37_int`, `field_55_int`, `field_19_int`, `field_20_int`, `field_58_int`, `field_57_int`, `field_56_int`, `field_59_int`, `field_4`, `field_2`, `field_5`, `field_7`, `field_44_int`, `field_83_int`) VALUES (582, 42, 1, '{\"field_10\":\"sadsadsa\",\"field_78\":\"location i ri\",\"field_8\":\"<p>asdasdsadsa<\\/p>\",\"field_17\":\"<p>dsdasdasd<\\/p>\",\"field_6\":\"empty\",\"field_56\":\"2\",\"field_1\":\"\",\"field_4\":\"Fun\",\"field_2\":\"Park\",\"field_40\":\"4654\",\"field_3\":\"Less than 50m²\",\"field_81\":\"\",\"field_66\":\"\",\"field_64\":\"Tiranë - Tiranë -\",\"field_74\":\"SKIP_ON_EMPTY\",\"field_68\":\"\",\"field_72\":\"\",\"field_43\":\"\",\"field_44\":\"\",\"field_45\":\"\",\"field_46\":\"\",\"field_47\":\"\",\"field_48\":\"\"}', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, 'Fun', 'Park', NULL, NULL, NULL, NULL);


#
# TABLE STRUCTURE FOR: page
#

CREATE TABLE `page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `type` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `date` datetime DEFAULT NULL,
  `date_publish` datetime DEFAULT NULL,
  `template` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template_header` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template_footer` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(160) COLLATE utf8_unicode_ci DEFAULT NULL,
  `repository_id` int(11) DEFAULT NULL,
  `is_visible` tinyint(1) DEFAULT '1',
  `is_private` tinyint(1) DEFAULT '0',
  `image_filename` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `page` (`id`, `parent_id`, `order`, `type`, `date`, `date_publish`, `template`, `template_header`, `template_footer`, `slug`, `repository_id`, `is_visible`, `is_private`, `image_filename`) VALUES (1, 0, 2, 'PAGE', NULL, NULL, 'page_homepage-categories', '', '', NULL, 40, 1, 0, NULL);
INSERT INTO `page` (`id`, `parent_id`, `order`, `type`, `date`, `date_publish`, `template`, `template_header`, `template_footer`, `slug`, `repository_id`, `is_visible`, `is_private`, `image_filename`) VALUES (4, 0, 15, 'PAGE', NULL, NULL, 'page_contact', '', '', NULL, 25, 0, 0, NULL);
INSERT INTO `page` (`id`, `parent_id`, `order`, `type`, `date`, `date_publish`, `template`, `template_header`, `template_footer`, `slug`, `repository_id`, `is_visible`, `is_private`, `image_filename`) VALUES (5, 0, 5, 'PAGE', '2013-12-12 16:01:35', NULL, 'page_agents', '', '', NULL, 24, 1, 1, '413539182_ca0a93549d_o.jpg');
INSERT INTO `page` (`id`, `parent_id`, `order`, `type`, `date`, `date_publish`, `template`, `template_header`, `template_footer`, `slug`, `repository_id`, `is_visible`, `is_private`, `image_filename`) VALUES (6, 0, 1, 'PAGE', '2013-12-29 12:06:05', NULL, 'page_homepage-cityguide', '', '', NULL, 182, 1, 0, NULL);
INSERT INTO `page` (`id`, `parent_id`, `order`, `type`, `date`, `date_publish`, `template`, `template_header`, `template_footer`, `slug`, `repository_id`, `is_visible`, `is_private`, `image_filename`) VALUES (142, 5, 6, 'PAGE', '2014-01-04 22:19:49', NULL, 'page_news', '', '', NULL, 183, 1, 1, NULL);
INSERT INTO `page` (`id`, `parent_id`, `order`, `type`, `date`, `date_publish`, `template`, `template_header`, `template_footer`, `slug`, `repository_id`, `is_visible`, `is_private`, `image_filename`) VALUES (143, 5, 8, 'PAGE', '2014-02-10 10:54:19', NULL, 'page_customsearch', NULL, NULL, NULL, 199, 1, 0, '162803672_8244db2362_o (1).jpg');
INSERT INTO `page` (`id`, `parent_id`, `order`, `type`, `date`, `date_publish`, `template`, `template_header`, `template_footer`, `slug`, `repository_id`, `is_visible`, `is_private`, `image_filename`) VALUES (145, 0, 3, 'PAGE', '2014-03-02 11:55:40', NULL, 'page_fullscreen', 'map_and_search', '', NULL, 201, 1, 0, NULL);
INSERT INTO `page` (`id`, `parent_id`, `order`, `type`, `date`, `date_publish`, `template`, `template_header`, `template_footer`, `slug`, `repository_id`, `is_visible`, `is_private`, `image_filename`) VALUES (146, 5, 9, 'PAGE', '2014-03-15 18:18:13', NULL, 'page_page', '', '', NULL, 202, 0, 0, NULL);
INSERT INTO `page` (`id`, `parent_id`, `order`, `type`, `date`, `date_publish`, `template`, `template_header`, `template_footer`, `slug`, `repository_id`, `is_visible`, `is_private`, `image_filename`) VALUES (147, 0, 4, 'PAGE', '2014-04-05 10:33:02', NULL, 'page_featured', '', '', NULL, 203, 1, 1, NULL);
INSERT INTO `page` (`id`, `parent_id`, `order`, `type`, `date`, `date_publish`, `template`, `template_header`, `template_footer`, `slug`, `repository_id`, `is_visible`, `is_private`, `image_filename`) VALUES (151, 0, 2, 'MODULE_NEWS_CATEGORY', '2014-04-06 16:07:03', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL);
INSERT INTO `page` (`id`, `parent_id`, `order`, `type`, `date`, `date_publish`, `template`, `template_header`, `template_footer`, `slug`, `repository_id`, `is_visible`, `is_private`, `image_filename`) VALUES (152, 0, 1, 'MODULE_NEWS_CATEGORY', '2014-04-06 16:21:32', NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, NULL);
INSERT INTO `page` (`id`, `parent_id`, `order`, `type`, `date`, `date_publish`, `template`, `template_header`, `template_footer`, `slug`, `repository_id`, `is_visible`, `is_private`, `image_filename`) VALUES (154, 152, 13, 'MODULE_NEWS_POST', '2014-04-06 20:01:32', '2014-04-09 19:57:33', 'page_page', NULL, NULL, NULL, 207, 1, 0, '5388658660_975a93b2ae_b (1).jpg');
INSERT INTO `page` (`id`, `parent_id`, `order`, `type`, `date`, `date_publish`, `template`, `template_header`, `template_footer`, `slug`, `repository_id`, `is_visible`, `is_private`, `image_filename`) VALUES (155, 151, 1, 'MODULE_NEWS_POST', '2014-04-06 20:13:51', '2014-04-08 20:13:05', 'page_news', NULL, NULL, NULL, 208, 1, 0, '5388050721_b84cf3a0a3_b (1).jpg');
INSERT INTO `page` (`id`, `parent_id`, `order`, `type`, `date`, `date_publish`, `template`, `template_header`, `template_footer`, `slug`, `repository_id`, `is_visible`, `is_private`, `image_filename`) VALUES (156, 157, 12, 'ARTICLE', '2014-04-08 17:59:20', '2014-04-08 17:59:20', 'page_page', NULL, NULL, NULL, 209, 1, 0, '5388050419_e3ef95b8eb_b (1).jpg');
INSERT INTO `page` (`id`, `parent_id`, `order`, `type`, `date`, `date_publish`, `template`, `template_header`, `template_footer`, `slug`, `repository_id`, `is_visible`, `is_private`, `image_filename`) VALUES (157, 5, 10, 'PAGE', '2014-04-08 22:08:34', NULL, 'page_articles', NULL, NULL, NULL, 210, 1, 0, NULL);
INSERT INTO `page` (`id`, `parent_id`, `order`, `type`, `date`, `date_publish`, `template`, `template_header`, `template_footer`, `slug`, `repository_id`, `is_visible`, `is_private`, `image_filename`) VALUES (158, 157, 11, 'ARTICLE', '2014-04-08 22:30:56', '2014-04-08 22:30:56', 'page_page', NULL, NULL, NULL, 211, 1, 0, '5388051239_00764065f2_b (1).jpg');
INSERT INTO `page` (`id`, `parent_id`, `order`, `type`, `date`, `date_publish`, `template`, `template_header`, `template_footer`, `slug`, `repository_id`, `is_visible`, `is_private`, `image_filename`) VALUES (159, 151, 1, 'MODULE_NEWS_POST', '2014-04-15 18:37:33', '2014-04-15 18:36:57', 'page_page', NULL, NULL, NULL, 240, 1, 0, '5388057701_5a618e8a9e_b (1).jpg');
INSERT INTO `page` (`id`, `parent_id`, `order`, `type`, `date`, `date_publish`, `template`, `template_header`, `template_footer`, `slug`, `repository_id`, `is_visible`, `is_private`, `image_filename`) VALUES (162, 5, 13, 'PAGE', '2014-05-20 19:05:57', NULL, 'page_page', NULL, NULL, NULL, 246, 0, 0, NULL);
INSERT INTO `page` (`id`, `parent_id`, `order`, `type`, `date`, `date_publish`, `template`, `template_header`, `template_footer`, `slug`, `repository_id`, `is_visible`, `is_private`, `image_filename`) VALUES (163, 5, 14, 'PAGE', '2014-06-30 18:24:25', NULL, 'page_page', '', '', NULL, 248, 0, 1, NULL);
INSERT INTO `page` (`id`, `parent_id`, `order`, `type`, `date`, `date_publish`, `template`, `template_header`, `template_footer`, `slug`, `repository_id`, `is_visible`, `is_private`, `image_filename`) VALUES (169, 0, 7, 'PAGE', '2014-08-01 19:02:31', '2014-08-01 19:02:31', 'page_agents-list', '', '', NULL, 255, 0, 0, NULL);


#
# TABLE STRUCTURE FOR: option
#

CREATE TABLE `option` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `type` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `visible` tinyint(1) DEFAULT '0',
  `is_locked` tinyint(1) DEFAULT '0',
  `is_frontend` tinyint(1) DEFAULT '1',
  `is_hardlocked` tinyint(1) DEFAULT '0',
  `is_required` tinyint(1) DEFAULT '0',
  `is_quickvisible` tinyint(1) DEFAULT NULL,
  `max_length` int(11) DEFAULT NULL,
  `repository_id` int(11) DEFAULT NULL,
  `image_filename` varchar(160) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_gallery` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `option` (`id`, `parent_id`, `order`, `type`, `visible`, `is_locked`, `is_frontend`, `is_hardlocked`, `is_required`, `is_quickvisible`, `max_length`, `repository_id`, `image_filename`, `image_gallery`) VALUES (1, 0, 7, 'CATEGORY', 0, 0, 1, 1, 0, NULL, NULL, 388, NULL, NULL);
INSERT INTO `option` (`id`, `parent_id`, `order`, `type`, `visible`, `is_locked`, `is_frontend`, `is_hardlocked`, `is_required`, `is_quickvisible`, `max_length`, `repository_id`, `image_filename`, `image_gallery`) VALUES (2, 1, 9, 'DROPDOWN', 1, 1, 1, 1, 0, 0, NULL, 309, 'type_0.png', 'type_0.png,type_1.png,type_2.png,type_3.png,type_4.png,type_5.png,type_6.png,type_7.png,type_8.png,type_9.png,type_10.png,type_11.png,type_12.png,type_13.png,type_14.png,type_15.png,type_16.png,type_17.png,type_18.png,type_19.png,type_20.png,type_21.png,type_22.png,type_23.png,type_24.png,type_25.png,type_26.png,type_27.png,type_28.png,type_29.png,');
INSERT INTO `option` (`id`, `parent_id`, `order`, `type`, `visible`, `is_locked`, `is_frontend`, `is_hardlocked`, `is_required`, `is_quickvisible`, `max_length`, `repository_id`, `image_filename`, `image_gallery`) VALUES (3, 1, 11, 'DROPDOWN', 0, 1, 1, 0, 0, 0, NULL, 399, NULL, '');
INSERT INTO `option` (`id`, `parent_id`, `order`, `type`, `visible`, `is_locked`, `is_frontend`, `is_hardlocked`, `is_required`, `is_quickvisible`, `max_length`, `repository_id`, `image_filename`, `image_gallery`) VALUES (4, 1, 8, 'DROPDOWN', 1, 1, 1, 1, 0, 0, NULL, 317, NULL, '');
INSERT INTO `option` (`id`, `parent_id`, `order`, `type`, `visible`, `is_locked`, `is_frontend`, `is_hardlocked`, `is_required`, `is_quickvisible`, `max_length`, `repository_id`, `image_filename`, `image_gallery`) VALUES (5, 0, 24, 'INPUTBOX', 0, 0, 0, 1, 0, 0, NULL, 385, NULL, '');
INSERT INTO `option` (`id`, `parent_id`, `order`, `type`, `visible`, `is_locked`, `is_frontend`, `is_hardlocked`, `is_required`, `is_quickvisible`, `max_length`, `repository_id`, `image_filename`, `image_gallery`) VALUES (6, 0, 5, 'DROPDOWN', 0, 1, 1, 1, 0, NULL, NULL, 310, 'empty.png', 'empty.png,park.png,sights.png,restaurant.png,bakery.png,coffee.png,stadium.png,school.png,shopping_center.png,37b51d194a.png,cinema.png,piazza.png,hotel.png,ambulance.png,police.png,d20f83ee69.png,train.png,');
INSERT INTO `option` (`id`, `parent_id`, `order`, `type`, `visible`, `is_locked`, `is_frontend`, `is_hardlocked`, `is_required`, `is_quickvisible`, `max_length`, `repository_id`, `image_filename`, `image_gallery`) VALUES (7, 0, 25, 'INPUTBOX', 0, 0, 0, 1, 0, 0, NULL, 410, NULL, '');
INSERT INTO `option` (`id`, `parent_id`, `order`, `type`, `visible`, `is_locked`, `is_frontend`, `is_hardlocked`, `is_required`, `is_quickvisible`, `max_length`, `repository_id`, `image_filename`, `image_gallery`) VALUES (8, 0, 3, 'TEXTAREA', 0, 1, 1, 1, 0, NULL, 0, NULL, NULL, NULL);
INSERT INTO `option` (`id`, `parent_id`, `order`, `type`, `visible`, `is_locked`, `is_frontend`, `is_hardlocked`, `is_required`, `is_quickvisible`, `max_length`, `repository_id`, `image_filename`, `image_gallery`) VALUES (9, 0, 39, 'CATEGORY', 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `option` (`id`, `parent_id`, `order`, `type`, `visible`, `is_locked`, `is_frontend`, `is_hardlocked`, `is_required`, `is_quickvisible`, `max_length`, `repository_id`, `image_filename`, `image_gallery`) VALUES (10, 0, 1, 'INPUTBOX', 1, 1, 1, 1, 1, 0, 50, 319, NULL, '');
INSERT INTO `option` (`id`, `parent_id`, `order`, `type`, `visible`, `is_locked`, `is_frontend`, `is_hardlocked`, `is_required`, `is_quickvisible`, `max_length`, `repository_id`, `image_filename`, `image_gallery`) VALUES (12, 9, 40, 'INPUTBOX', 0, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `option` (`id`, `parent_id`, `order`, `type`, `visible`, `is_locked`, `is_frontend`, `is_hardlocked`, `is_required`, `is_quickvisible`, `max_length`, `repository_id`, `image_filename`, `image_gallery`) VALUES (17, 0, 4, 'TEXTAREA', 0, 1, 1, 1, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `option` (`id`, `parent_id`, `order`, `type`, `visible`, `is_locked`, `is_frontend`, `is_hardlocked`, `is_required`, `is_quickvisible`, `max_length`, `repository_id`, `image_filename`, `image_gallery`) VALUES (21, 0, 29, 'CATEGORY', 0, 1, 1, 1, 0, NULL, NULL, 393, NULL, NULL);
INSERT INTO `option` (`id`, `parent_id`, `order`, `type`, `visible`, `is_locked`, `is_frontend`, `is_hardlocked`, `is_required`, `is_quickvisible`, `max_length`, `repository_id`, `image_filename`, `image_gallery`) VALUES (26, 21, 18, 'CHECKBOX', 0, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `option` (`id`, `parent_id`, `order`, `type`, `visible`, `is_locked`, `is_frontend`, `is_hardlocked`, `is_required`, `is_quickvisible`, `max_length`, `repository_id`, `image_filename`, `image_gallery`) VALUES (27, 66, 19, 'CHECKBOX', 0, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `option` (`id`, `parent_id`, `order`, `type`, `visible`, `is_locked`, `is_frontend`, `is_hardlocked`, `is_required`, `is_quickvisible`, `max_length`, `repository_id`, `image_filename`, `image_gallery`) VALUES (32, 0, 21, 'CHECKBOX', 0, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `option` (`id`, `parent_id`, `order`, `type`, `visible`, `is_locked`, `is_frontend`, `is_hardlocked`, `is_required`, `is_quickvisible`, `max_length`, `repository_id`, `image_filename`, `image_gallery`) VALUES (34, 0, 4, 'INPUTBOX', 0, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `option` (`id`, `parent_id`, `order`, `type`, `visible`, `is_locked`, `is_frontend`, `is_hardlocked`, `is_required`, `is_quickvisible`, `max_length`, `repository_id`, `image_filename`, `image_gallery`) VALUES (35, 0, 26, 'INPUTBOX', 0, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `option` (`id`, `parent_id`, `order`, `type`, `visible`, `is_locked`, `is_frontend`, `is_hardlocked`, `is_required`, `is_quickvisible`, `max_length`, `repository_id`, `image_filename`, `image_gallery`) VALUES (36, 0, 15, 'DROPDOWN', 0, 1, 0, 1, 0, 0, NULL, 452, NULL, '');
INSERT INTO `option` (`id`, `parent_id`, `order`, `type`, `visible`, `is_locked`, `is_frontend`, `is_hardlocked`, `is_required`, `is_quickvisible`, `max_length`, `repository_id`, `image_filename`, `image_gallery`) VALUES (37, 0, 16, 'INPUTBOX', 0, 0, 0, 1, 0, 0, NULL, 390, NULL, '');
INSERT INTO `option` (`id`, `parent_id`, `order`, `type`, `visible`, `is_locked`, `is_frontend`, `is_hardlocked`, `is_required`, `is_quickvisible`, `max_length`, `repository_id`, `image_filename`, `image_gallery`) VALUES (38, 0, 5, 'DROPDOWN', 0, 1, 0, 1, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `option` (`id`, `parent_id`, `order`, `type`, `visible`, `is_locked`, `is_frontend`, `is_hardlocked`, `is_required`, `is_quickvisible`, `max_length`, `repository_id`, `image_filename`, `image_gallery`) VALUES (40, 1, 10, 'INPUTBOX', 0, 1, 1, 1, 0, NULL, 0, 450, NULL, NULL);
INSERT INTO `option` (`id`, `parent_id`, `order`, `type`, `visible`, `is_locked`, `is_frontend`, `is_hardlocked`, `is_required`, `is_quickvisible`, `max_length`, `repository_id`, `image_filename`, `image_gallery`) VALUES (41, 1, 16, 'CHECKBOX', 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `option` (`id`, `parent_id`, `order`, `type`, `visible`, `is_locked`, `is_frontend`, `is_hardlocked`, `is_required`, `is_quickvisible`, `max_length`, `repository_id`, `image_filename`, `image_gallery`) VALUES (42, 0, 41, 'CATEGORY', 0, 1, 0, 0, 0, NULL, NULL, 386, NULL, NULL);
INSERT INTO `option` (`id`, `parent_id`, `order`, `type`, `visible`, `is_locked`, `is_frontend`, `is_hardlocked`, `is_required`, `is_quickvisible`, `max_length`, `repository_id`, `image_filename`, `image_gallery`) VALUES (43, 0, 18, 'CATEGORY', 0, 1, 1, 1, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `option` (`id`, `parent_id`, `order`, `type`, `visible`, `is_locked`, `is_frontend`, `is_hardlocked`, `is_required`, `is_quickvisible`, `max_length`, `repository_id`, `image_filename`, `image_gallery`) VALUES (44, 43, 19, 'INPUTBOX', 0, 1, 1, 0, 0, NULL, NULL, 311, NULL, '');
INSERT INTO `option` (`id`, `parent_id`, `order`, `type`, `visible`, `is_locked`, `is_frontend`, `is_hardlocked`, `is_required`, `is_quickvisible`, `max_length`, `repository_id`, `image_filename`, `image_gallery`) VALUES (45, 43, 20, 'INPUTBOX', 0, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `option` (`id`, `parent_id`, `order`, `type`, `visible`, `is_locked`, `is_frontend`, `is_hardlocked`, `is_required`, `is_quickvisible`, `max_length`, `repository_id`, `image_filename`, `image_gallery`) VALUES (46, 43, 21, 'INPUTBOX', 0, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `option` (`id`, `parent_id`, `order`, `type`, `visible`, `is_locked`, `is_frontend`, `is_hardlocked`, `is_required`, `is_quickvisible`, `max_length`, `repository_id`, `image_filename`, `image_gallery`) VALUES (47, 43, 22, 'INPUTBOX', 0, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `option` (`id`, `parent_id`, `order`, `type`, `visible`, `is_locked`, `is_frontend`, `is_hardlocked`, `is_required`, `is_quickvisible`, `max_length`, `repository_id`, `image_filename`, `image_gallery`) VALUES (48, 43, 23, 'INPUTBOX', 0, 1, 1, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `option` (`id`, `parent_id`, `order`, `type`, `visible`, `is_locked`, `is_frontend`, `is_hardlocked`, `is_required`, `is_quickvisible`, `max_length`, `repository_id`, `image_filename`, `image_gallery`) VALUES (52, 0, 30, 'CATEGORY', 0, 1, 1, 1, 0, NULL, NULL, 398, NULL, NULL);
INSERT INTO `option` (`id`, `parent_id`, `order`, `type`, `visible`, `is_locked`, `is_frontend`, `is_hardlocked`, `is_required`, `is_quickvisible`, `max_length`, `repository_id`, `image_filename`, `image_gallery`) VALUES (54, 0, 17, 'DROPDOWN', 0, 0, 0, 1, 0, 0, NULL, 391, NULL, '');
INSERT INTO `option` (`id`, `parent_id`, `order`, `type`, `visible`, `is_locked`, `is_frontend`, `is_hardlocked`, `is_required`, `is_quickvisible`, `max_length`, `repository_id`, `image_filename`, `image_gallery`) VALUES (56, 0, 6, 'DROPDOWN', 1, 1, 1, 1, 1, 1, NULL, 451, NULL, '');
INSERT INTO `option` (`id`, `parent_id`, `order`, `type`, `visible`, `is_locked`, `is_frontend`, `is_hardlocked`, `is_required`, `is_quickvisible`, `max_length`, `repository_id`, `image_filename`, `image_gallery`) VALUES (64, 66, 14, 'TREE', 0, 1, 1, 0, 0, 0, NULL, 395, NULL, '');
INSERT INTO `option` (`id`, `parent_id`, `order`, `type`, `visible`, `is_locked`, `is_frontend`, `is_hardlocked`, `is_required`, `is_quickvisible`, `max_length`, `repository_id`, `image_filename`, `image_gallery`) VALUES (66, 0, 13, 'CATEGORY', 0, 1, 0, 0, 0, 0, NULL, 320, NULL, '');
INSERT INTO `option` (`id`, `parent_id`, `order`, `type`, `visible`, `is_locked`, `is_frontend`, `is_hardlocked`, `is_required`, `is_quickvisible`, `max_length`, `repository_id`, `image_filename`, `image_gallery`) VALUES (68, 66, 16, 'INPUTBOX', 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `option` (`id`, `parent_id`, `order`, `type`, `visible`, `is_locked`, `is_frontend`, `is_hardlocked`, `is_required`, `is_quickvisible`, `max_length`, `repository_id`, `image_filename`, `image_gallery`) VALUES (69, 66, 24, 'INPUTBOX', 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `option` (`id`, `parent_id`, `order`, `type`, `visible`, `is_locked`, `is_frontend`, `is_hardlocked`, `is_required`, `is_quickvisible`, `max_length`, `repository_id`, `image_filename`, `image_gallery`) VALUES (70, 66, 25, 'INPUTBOX', 0, 1, 0, 0, 0, 0, NULL, 392, NULL, '');
INSERT INTO `option` (`id`, `parent_id`, `order`, `type`, `visible`, `is_locked`, `is_frontend`, `is_hardlocked`, `is_required`, `is_quickvisible`, `max_length`, `repository_id`, `image_filename`, `image_gallery`) VALUES (71, 66, 26, 'INPUTBOX', 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `option` (`id`, `parent_id`, `order`, `type`, `visible`, `is_locked`, `is_frontend`, `is_hardlocked`, `is_required`, `is_quickvisible`, `max_length`, `repository_id`, `image_filename`, `image_gallery`) VALUES (72, 66, 17, 'TEXTAREA', 0, 1, 0, 0, 0, NULL, NULL, 403, NULL, NULL);
INSERT INTO `option` (`id`, `parent_id`, `order`, `type`, `visible`, `is_locked`, `is_frontend`, `is_hardlocked`, `is_required`, `is_quickvisible`, `max_length`, `repository_id`, `image_filename`, `image_gallery`) VALUES (73, 66, 28, 'INPUTBOX', 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `option` (`id`, `parent_id`, `order`, `type`, `visible`, `is_locked`, `is_frontend`, `is_hardlocked`, `is_required`, `is_quickvisible`, `max_length`, `repository_id`, `image_filename`, `image_gallery`) VALUES (74, 66, 15, 'UPLOAD', 0, 1, 0, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `option` (`id`, `parent_id`, `order`, `type`, `visible`, `is_locked`, `is_frontend`, `is_hardlocked`, `is_required`, `is_quickvisible`, `max_length`, `repository_id`, `image_filename`, `image_gallery`) VALUES (75, 1, 26, 'INPUTBOX', 0, 0, 1, 0, 0, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `option` (`id`, `parent_id`, `order`, `type`, `visible`, `is_locked`, `is_frontend`, `is_hardlocked`, `is_required`, `is_quickvisible`, `max_length`, `repository_id`, `image_filename`, `image_gallery`) VALUES (78, 0, 2, 'INPUTBOX', 0, 1, 1, 0, 0, NULL, NULL, 387, NULL, NULL);
INSERT INTO `option` (`id`, `parent_id`, `order`, `type`, `visible`, `is_locked`, `is_frontend`, `is_hardlocked`, `is_required`, `is_quickvisible`, `max_length`, `repository_id`, `image_filename`, `image_gallery`) VALUES (81, 1, 12, 'CHECKBOX', 0, 1, 1, 0, 0, 0, NULL, 402, NULL, NULL);


#
# TABLE STRUCTURE FOR: ci_sessions
#

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `ip_address` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `user_agent` varchar(120) COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: option_lang
#

CREATE TABLE `option_lang` (
  `id_option_lang` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `values` text COLLATE utf8_unicode_ci,
  `prefix` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `suffix` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `hint` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_option_lang`),
  UNIQUE KEY `id_UNIQUE` (`id_option_lang`),
  KEY `fk_option_lang_language1_idx` (`language_id`),
  KEY `fk_option_lang_option1_idx` (`option_id`)
) ENGINE=InnoDB AUTO_INCREMENT=775 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `option_lang` (`id_option_lang`, `option_id`, `language_id`, `option`, `values`, `prefix`, `suffix`, `hint`) VALUES (180, 1, 1, 'General Information', '', NULL, '', NULL);
INSERT INTO `option_lang` (`id_option_lang`, `option_id`, `language_id`, `option`, `values`, `prefix`, `suffix`, `hint`) VALUES (275, 43, 1, 'Distances', '', '', '', NULL);
INSERT INTO `option_lang` (`id_option_lang`, `option_id`, `language_id`, `option`, `values`, `prefix`, `suffix`, `hint`) VALUES (279, 45, 1, 'Train', '', '', 'm', NULL);
INSERT INTO `option_lang` (`id_option_lang`, `option_id`, `language_id`, `option`, `values`, `prefix`, `suffix`, `hint`) VALUES (281, 46, 1, 'Metro', '', '', 'm', NULL);
INSERT INTO `option_lang` (`id_option_lang`, `option_id`, `language_id`, `option`, `values`, `prefix`, `suffix`, `hint`) VALUES (283, 47, 1, 'Bus', '', '', 'm', NULL);
INSERT INTO `option_lang` (`id_option_lang`, `option_id`, `language_id`, `option`, `values`, `prefix`, `suffix`, `hint`) VALUES (285, 48, 1, 'Pharmacy', '', '', 'm', NULL);
INSERT INTO `option_lang` (`id_option_lang`, `option_id`, `language_id`, `option`, `values`, `prefix`, `suffix`, `hint`) VALUES (303, 17, 1, 'Long description', '', '', '', NULL);
INSERT INTO `option_lang` (`id_option_lang`, `option_id`, `language_id`, `option`, `values`, `prefix`, `suffix`, `hint`) VALUES (407, 72, 1, 'Details', '', '', '', NULL);
INSERT INTO `option_lang` (`id_option_lang`, `option_id`, `language_id`, `option`, `values`, `prefix`, `suffix`, `hint`) VALUES (415, 68, 1, 'Numer tel', '', '', '', NULL);
INSERT INTO `option_lang` (`id_option_lang`, `option_id`, `language_id`, `option`, `values`, `prefix`, `suffix`, `hint`) VALUES (417, 74, 1, 'Logo(60x60)', '', '', '', NULL);
INSERT INTO `option_lang` (`id_option_lang`, `option_id`, `language_id`, `option`, `values`, `prefix`, `suffix`, `hint`) VALUES (489, 40, 1, 'Zip code', '', '', '', NULL);
INSERT INTO `option_lang` (`id_option_lang`, `option_id`, `language_id`, `option`, `values`, `prefix`, `suffix`, `hint`) VALUES (497, 8, 1, 'Short description', '', '', '', NULL);
INSERT INTO `option_lang` (`id_option_lang`, `option_id`, `language_id`, `option`, `values`, `prefix`, `suffix`, `hint`) VALUES (565, 78, 1, 'Keywords', '', '', '', NULL);
INSERT INTO `option_lang` (`id_option_lang`, `option_id`, `language_id`, `option`, `values`, `prefix`, `suffix`, `hint`) VALUES (576, 6, 1, 'Marker', 'empty,park,sights,restaurant,bakery,coffee,stadium,school,shopping_center,bar,cinema,piazza,hotel,ambulance,police,bus,train', '', '', 'Kind of marker');
INSERT INTO `option_lang` (`id_option_lang`, `option_id`, `language_id`, `option`, `values`, `prefix`, `suffix`, `hint`) VALUES (588, 44, 1, 'Center', '', '', 'm', '');
INSERT INTO `option_lang` (`id_option_lang`, `option_id`, `language_id`, `option`, `values`, `prefix`, `suffix`, `hint`) VALUES (633, 1, 4, 'Përmbledhje', '', NULL, '', NULL);
INSERT INTO `option_lang` (`id_option_lang`, `option_id`, `language_id`, `option`, `values`, `prefix`, `suffix`, `hint`) VALUES (638, 43, 4, 'Distancat', '', '', '', NULL);
INSERT INTO `option_lang` (`id_option_lang`, `option_id`, `language_id`, `option`, `values`, `prefix`, `suffix`, `hint`) VALUES (639, 45, 4, 'Treni', '', '', 'm', NULL);
INSERT INTO `option_lang` (`id_option_lang`, `option_id`, `language_id`, `option`, `values`, `prefix`, `suffix`, `hint`) VALUES (640, 46, 4, 'Metro', '', '', 'm', NULL);
INSERT INTO `option_lang` (`id_option_lang`, `option_id`, `language_id`, `option`, `values`, `prefix`, `suffix`, `hint`) VALUES (641, 47, 4, 'Autobus', '', '', 'm', NULL);
INSERT INTO `option_lang` (`id_option_lang`, `option_id`, `language_id`, `option`, `values`, `prefix`, `suffix`, `hint`) VALUES (642, 48, 4, 'Farmaci', '', '', 'm', NULL);
INSERT INTO `option_lang` (`id_option_lang`, `option_id`, `language_id`, `option`, `values`, `prefix`, `suffix`, `hint`) VALUES (645, 17, 4, 'Përshkrimi', '', '', '', NULL);
INSERT INTO `option_lang` (`id_option_lang`, `option_id`, `language_id`, `option`, `values`, `prefix`, `suffix`, `hint`) VALUES (652, 72, 4, 'Përshkrimi i bashkise', '', '', '', NULL);
INSERT INTO `option_lang` (`id_option_lang`, `option_id`, `language_id`, `option`, `values`, `prefix`, `suffix`, `hint`) VALUES (656, 68, 4, 'Numri i telefonit', '', '', '', NULL);
INSERT INTO `option_lang` (`id_option_lang`, `option_id`, `language_id`, `option`, `values`, `prefix`, `suffix`, `hint`) VALUES (657, 74, 4, 'Logo 60÷60', '', '', '', NULL);
INSERT INTO `option_lang` (`id_option_lang`, `option_id`, `language_id`, `option`, `values`, `prefix`, `suffix`, `hint`) VALUES (660, 40, 4, 'Kodi postar', '', '', '', NULL);
INSERT INTO `option_lang` (`id_option_lang`, `option_id`, `language_id`, `option`, `values`, `prefix`, `suffix`, `hint`) VALUES (661, 8, 4, 'Përshkrimi i shkurtër', '', '', '', NULL);
INSERT INTO `option_lang` (`id_option_lang`, `option_id`, `language_id`, `option`, `values`, `prefix`, `suffix`, `hint`) VALUES (666, 78, 4, 'Keywords', '', '', '', NULL);
INSERT INTO `option_lang` (`id_option_lang`, `option_id`, `language_id`, `option`, `values`, `prefix`, `suffix`, `hint`) VALUES (667, 6, 4, 'Markeri', 'Park,Pamje,Restorant,Furre Buke,Kafe,Stadium,Shkolle,Qender Tregtare,Bar,Kinema,Piazza,Hotel,Farmaci,Policia,Stacioni Autobuzit,Stacion Treni,Kisha,Xhami,Parking,Exchange,Zyra Postare,Porti,Aeroporti,Info,Market,Piceri,Karburant,Spital,Plazhe,Bashkia', '', '', 'Marker icon');
INSERT INTO `option_lang` (`id_option_lang`, `option_id`, `language_id`, `option`, `values`, `prefix`, `suffix`, `hint`) VALUES (669, 44, 4, 'Qender', '', '', 'm', '');
INSERT INTO `option_lang` (`id_option_lang`, `option_id`, `language_id`, `option`, `values`, `prefix`, `suffix`, `hint`) VALUES (670, 4, 4, 'Qellimi', 'Argetim,Mesim,Ushqim dhe Pije,Eskursion,Sport,Shoping,Akomodim,Emergjence,Transport', '', '', '');
INSERT INTO `option_lang` (`id_option_lang`, `option_id`, `language_id`, `option`, `values`, `prefix`, `suffix`, `hint`) VALUES (671, 4, 1, 'Purpose', 'Fun,Learning,Food and drink,Excursion,Sport,Shopping,Sleeping,Emergency,Transport', '', '', '');
INSERT INTO `option_lang` (`id_option_lang`, `option_id`, `language_id`, `option`, `values`, `prefix`, `suffix`, `hint`) VALUES (700, 2, 4, 'Tipi', 'Park,Pamje,Restorant,Furre Buke,Kafe,Stadium,Shkolle,Qender Tregtare,Bar,Kinema,Piazza,Hotel,Farmaci,Policia,Stacioni Autobuzit,Stacion Treni,Kisha,Xhami,Parking,Exchange,Zyra Postare,Porti,Aeroporti,Info,Market,Piceri,Karburant,Spital,Plazhe,Bashkia', '', '', '');
INSERT INTO `option_lang` (`id_option_lang`, `option_id`, `language_id`, `option`, `values`, `prefix`, `suffix`, `hint`) VALUES (701, 2, 1, 'Type', 'Park,Sights,Restaurant,Bakery,Coffee bar,Stadium,School,Shopping center,Bar,Cinema,Piazza,Hotel,Pharmacy,Police,Bus station,Train station,Church,Mosque,Parking,Exchange,Postal Office,Harbour,Airport,Info,Market,Pizzeria,Fuel,Hospital,Beach,Hall', '', '', '');
INSERT INTO `option_lang` (`id_option_lang`, `option_id`, `language_id`, `option`, `values`, `prefix`, `suffix`, `hint`) VALUES (703, 66, 4, 'Bashkia', '', '', '', '');
INSERT INTO `option_lang` (`id_option_lang`, `option_id`, `language_id`, `option`, `values`, `prefix`, `suffix`, `hint`) VALUES (704, 66, 1, 'Municipality', '', '', '', '');
INSERT INTO `option_lang` (`id_option_lang`, `option_id`, `language_id`, `option`, `values`, `prefix`, `suffix`, `hint`) VALUES (735, 81, 4, 'Parking', '', '', '', '');
INSERT INTO `option_lang` (`id_option_lang`, `option_id`, `language_id`, `option`, `values`, `prefix`, `suffix`, `hint`) VALUES (736, 81, 1, 'Parking', '', '', '', '');
INSERT INTO `option_lang` (`id_option_lang`, `option_id`, `language_id`, `option`, `values`, `prefix`, `suffix`, `hint`) VALUES (757, 64, 4, 'Bashkia', '', '', '', '');
INSERT INTO `option_lang` (`id_option_lang`, `option_id`, `language_id`, `option`, `values`, `prefix`, `suffix`, `hint`) VALUES (758, 64, 1, 'Municipality', '', '', '', '');
INSERT INTO `option_lang` (`id_option_lang`, `option_id`, `language_id`, `option`, `values`, `prefix`, `suffix`, `hint`) VALUES (761, 3, 4, 'Distanca nga qendra', 'Më pak se 50m²,50-100m²,Më shumë se 100m²', '', '', '');
INSERT INTO `option_lang` (`id_option_lang`, `option_id`, `language_id`, `option`, `values`, `prefix`, `suffix`, `hint`) VALUES (762, 3, 1, 'Distances from center', 'Less than 50m²,50-100m²,More than 100m²', '', '', '');
INSERT INTO `option_lang` (`id_option_lang`, `option_id`, `language_id`, `option`, `values`, `prefix`, `suffix`, `hint`) VALUES (771, 56, 4, 'Vleresim', '0,1,2,3,4,5', '', '★', '');
INSERT INTO `option_lang` (`id_option_lang`, `option_id`, `language_id`, `option`, `values`, `prefix`, `suffix`, `hint`) VALUES (772, 56, 1, 'Review', '0,1,2,3,4,5', '', '★', '');
INSERT INTO `option_lang` (`id_option_lang`, `option_id`, `language_id`, `option`, `values`, `prefix`, `suffix`, `hint`) VALUES (773, 10, 4, 'Prona', '', '', '', '');
INSERT INTO `option_lang` (`id_option_lang`, `option_id`, `language_id`, `option`, `values`, `prefix`, `suffix`, `hint`) VALUES (774, 10, 1, 'Name', '', '', '', '');


#
# TABLE STRUCTURE FOR: page_lang
#

CREATE TABLE `page_lang` (
  `id_page_lang` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(160) COLLATE utf8_unicode_ci DEFAULT NULL,
  `navigation_title` varchar(160) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `description` text COLLATE utf8_unicode_ci,
  `keywords` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_page_lang`),
  KEY `fk_page_language1` (`language_id`),
  KEY `fk_page_lang_page1_idx` (`page_id`)
) ENGINE=InnoDB AUTO_INCREMENT=685 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `page_lang` (`id_page_lang`, `page_id`, `language_id`, `title`, `navigation_title`, `body`, `description`, `keywords`, `slug`) VALUES (285, 152, 1, 'My blog', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_lang` (`id_page_lang`, `page_id`, `language_id`, `title`, `navigation_title`, `body`, `description`, `keywords`, `slug`) VALUES (301, 151, 1, 'Top news', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_lang` (`id_page_lang`, `page_id`, `language_id`, `title`, `navigation_title`, `body`, `description`, `keywords`, `slug`) VALUES (311, 157, 1, 'Articles', 'Articles', '', '', '', NULL);
INSERT INTO `page_lang` (`id_page_lang`, `page_id`, `language_id`, `title`, `navigation_title`, `body`, `description`, `keywords`, `slug`) VALUES (319, 156, 1, 'Article test', 'Article test', '<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse \r\nsollicitudin commodo cursus. Nunc varius accumsan ultrices. Quisque \r\nhendrerit mi id ullamcorper pretium. Lorem ipsum dolor sit amet, \r\nconsectetur adipiscing elit. Nam ac metus vitae nibh aliquet adipiscing \r\nquis at nibh. Nullam lacinia magna sed enim ullamcorper rutrum. Proin \r\nquis vulputate est. Duis vitae purus vel mauris rutrum bibendum eu sit \r\namet erat. Vestibulum accumsan dapibus mauris, faucibus vehicula ipsum \r\ntempor pharetra. Sed porta, purus sit amet sollicitudin vestibulum, leo \r\nneque fringilla mauris, quis semper odio ante non arcu. Suspendisse \r\nporttitor mollis nisi, eu imperdiet eros condimentum at. Nunc tempor \r\nsodales suscipit.\r\n</p>\r\n<p>\r\n<span style=\"font-weight: bold;\">Sed sed mollis nunc. Interdum et malesuada fames ac ante ipsum primis in\r\n faucibus. Proin luctus semper eros, quis egestas leo. Pellentesque \r\nrisus felis, vulputate eu massa et, rhoncus molestie dui. Vivamus \r\nmalesuada dui nec cursus lobortis. Donec augue tortor, accumsan id lacus\r\n quis, suscipit ullamcorper dolor. Nunc ullamcorper elit suscipit, \r\nmollis tortor in, pharetra purus. Sed dapibus dolor mauris, quis \r\nelementum arcu auctor id. Maecenas eget orci in lacus vestibulum \r\nvehicula. Pellentesque et felis eget diam hendrerit ultricies. Quisque \r\nsit amet tellus odio. Nulla pharetra turpis non turpis molestie, \r\nsuscipit tincidunt nisl lobortis. In eget porttitor libero. Proin non \r\nbibendum nisi, vitae volutpat nisl. Vivamus pretium scelerisque risus, \r\nnon tristique arcu cursus eu. Cras velit lacus, venenatis ut mi \r\nmalesuada, dapibus viverra nisi.\r\n</span></p>\r\n<p>\r\n<span style=\"font-style: italic;\">Aliquam dapibus lorem vitae leo euismod commodo. Cras porttitor leo \r\neleifend velit malesuada pretium. Praesent ac auctor purus. Mauris \r\nligula ligula, hendrerit at justo in, molestie viverra sapien. In \r\nplacerat sem risus, a convallis massa viverra nec. Vestibulum ante ipsum\r\n primis in faucibus orci luctus et ultrices posuere cubilia Curae; \r\nPraesent ac justo in orci aliquet lacinia ut vitae nibh. Quisque pretium\r\n quam nibh, imperdiet pulvinar ligula dictum id. In a auctor arcu. Fusce\r\n feugiat purus eget odio congue, mollis iaculis nulla tincidunt. Sed nec\r\n massa vulputate, pretium nisi malesuada, lacinia ligula.\r\n</span></p>\r\n<p>\r\nVestibulum eget tempor mauris. Praesent tincidunt enim eu massa \r\ntristique, pellentesque faucibus ipsum pharetra. Sed pulvinar convallis \r\ntortor eget placerat. Duis mattis tempus sollicitudin. Praesent eu porta\r\n libero, sed consectetur risus. Cum sociis natoque penatibus et magnis \r\ndis parturient montes, nascetur ridiculus mus. Duis vulputate, arcu nec \r\ntincidunt lacinia, mi velit malesuada sapien, a commodo lacus lacus sit \r\namet nisl. Donec rhoncus lectus sit amet sem dictum interdum. Vivamus \r\nlobortis tortor fringilla est gravida ultricies. Integer ut mauris quam.\r\n</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sollicitudin commodo cursus. Nunc varius accumsan ultrices. Quisque hendrerit mi id ullamcorper pretium. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Article test', NULL);
INSERT INTO `page_lang` (`id_page_lang`, `page_id`, `language_id`, `title`, `navigation_title`, `body`, `description`, `keywords`, `slug`) VALUES (321, 158, 1, 'Test article 2', 'Test article 2', '<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse \r\nsollicitudin commodo cursus. Nunc varius accumsan ultrices. Quisque \r\nhendrerit mi id ullamcorper pretium. Lorem ipsum dolor sit amet, \r\nconsectetur adipiscing elit. Nam ac metus vitae nibh aliquet adipiscing \r\nquis at nibh. Nullam lacinia magna sed enim ullamcorper rutrum. Proin \r\nquis vulputate est. Duis vitae purus vel mauris rutrum bibendum eu sit \r\namet erat. Vestibulum accumsan dapibus mauris, faucibus vehicula ipsum \r\ntempor pharetra. Sed porta, purus sit amet sollicitudin vestibulum, leo \r\nneque fringilla mauris, quis semper odio ante non arcu. Suspendisse \r\nporttitor mollis nisi, eu imperdiet eros condimentum at. Nunc tempor \r\nsodales suscipit.\r\n</p>\r\n<p>\r\n<span style=\"font-weight: bold;\">Sed sed mollis nunc. Interdum et malesuada fames ac ante ipsum primis in\r\n faucibus. Proin luctus semper eros, quis egestas leo. Pellentesque \r\nrisus felis, vulputate eu massa et, rhoncus molestie dui. Vivamus \r\nmalesuada dui nec cursus lobortis. Donec augue tortor, accumsan id lacus\r\n quis, suscipit ullamcorper dolor. Nunc ullamcorper elit suscipit, \r\nmollis tortor in, pharetra purus. Sed dapibus dolor mauris, quis \r\nelementum arcu auctor id. Maecenas eget orci in lacus vestibulum \r\nvehicula. Pellentesque et felis eget diam hendrerit ultricies. Quisque \r\nsit amet tellus odio. Nulla pharetra turpis non turpis molestie, \r\nsuscipit tincidunt nisl lobortis. In eget porttitor libero. Proin non \r\nbibendum nisi, vitae volutpat nisl. Vivamus pretium scelerisque risus, \r\nnon tristique arcu cursus eu. Cras velit lacus, venenatis ut mi \r\nmalesuada, dapibus viverra nisi.\r\n</span></p>\r\n<p>\r\n<span style=\"font-style: italic;\">Aliquam dapibus lorem vitae leo euismod commodo. Cras porttitor leo \r\neleifend velit malesuada pretium. Praesent ac auctor purus. Mauris \r\nligula ligula, hendrerit at justo in, molestie viverra sapien. In \r\nplacerat sem risus, a convallis massa viverra nec. Vestibulum ante ipsum\r\n primis in faucibus orci luctus et ultrices posuere cubilia Curae; \r\nPraesent ac justo in orci aliquet lacinia ut vitae nibh. Quisque pretium\r\n quam nibh, imperdiet pulvinar ligula dictum id. In a auctor arcu. Fusce\r\n feugiat purus eget odio congue, mollis iaculis nulla tincidunt. Sed nec\r\n massa vulputate, pretium nisi malesuada, lacinia ligula.\r\n</span></p>\r\n<p>\r\nVestibulum eget tempor mauris. Praesent tincidunt enim eu massa \r\ntristique, pellentesque faucibus ipsum pharetra. Sed pulvinar convallis \r\ntortor eget placerat. Duis mattis tempus sollicitudin. Praesent eu porta\r\n libero, sed consectetur risus. Cum sociis natoque penatibus et magnis \r\ndis parturient montes, nascetur ridiculus mus. Duis vulputate, arcu nec \r\ntincidunt lacinia, mi velit malesuada sapien, a commodo lacus lacus sit \r\namet nisl. Donec rhoncus lectus sit amet sem dictum interdum. Vivamus \r\nlobortis tortor fringilla est gravida ultricies. Integer ut mauris quam.\r\n</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sollicitudin commodo cursus. Nunc varius accumsan ultrices. Quisque hendrerit mi id ullamcorper pretium. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Test article 2', NULL);
INSERT INTO `page_lang` (`id_page_lang`, `page_id`, `language_id`, `title`, `navigation_title`, `body`, `description`, `keywords`, `slug`) VALUES (325, 159, 1, 'Test news category 2', 'Test news category 2', '<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse \r\nsollicitudin commodo cursus. Nunc varius accumsan ultrices. Quisque \r\nhendrerit mi id ullamcorper pretium. Lorem ipsum dolor sit amet, \r\nconsectetur adipiscing elit. Nam ac metus vitae nibh aliquet adipiscing \r\nquis at nibh. Nullam lacinia magna sed enim ullamcorper rutrum. Proin \r\nquis vulputate est. Duis vitae purus vel mauris rutrum bibendum eu sit \r\namet erat. Vestibulum accumsan dapibus mauris, faucibus vehicula ipsum \r\ntempor pharetra. Sed porta, purus sit amet sollicitudin vestibulum, leo \r\nneque fringilla mauris, quis semper odio ante non arcu. Suspendisse \r\nporttitor mollis nisi, eu imperdiet eros condimentum at. Nunc tempor \r\nsodales suscipit.\r\n</p>\r\n<p>\r\n<span style=\"font-weight: bold;\">Sed sed mollis nunc. Interdum et malesuada fames ac ante ipsum primis in\r\n faucibus. Proin luctus semper eros, quis egestas leo. Pellentesque \r\nrisus felis, vulputate eu massa et, rhoncus molestie dui. Vivamus \r\nmalesuada dui nec cursus lobortis. Donec augue tortor, accumsan id lacus\r\n quis, suscipit ullamcorper dolor. Nunc ullamcorper elit suscipit, \r\nmollis tortor in, pharetra purus. Sed dapibus dolor mauris, quis \r\nelementum arcu auctor id. Maecenas eget orci in lacus vestibulum \r\nvehicula. Pellentesque et felis eget diam hendrerit ultricies. Quisque \r\nsit amet tellus odio. Nulla pharetra turpis non turpis molestie, \r\nsuscipit tincidunt nisl lobortis. In eget porttitor libero. Proin non \r\nbibendum nisi, vitae volutpat nisl. Vivamus pretium scelerisque risus, \r\nnon tristique arcu cursus eu. Cras velit lacus, venenatis ut mi \r\nmalesuada, dapibus viverra nisi.\r\n</span></p>\r\n<p>\r\n<span style=\"font-style: italic;\">Aliquam dapibus lorem vitae leo euismod commodo. Cras porttitor leo \r\neleifend velit malesuada pretium. Praesent ac auctor purus. Mauris \r\nligula ligula, hendrerit at justo in, molestie viverra sapien. In \r\nplacerat sem risus, a convallis massa viverra nec. Vestibulum ante ipsum\r\n primis in faucibus orci luctus et ultrices posuere cubilia Curae; \r\nPraesent ac justo in orci aliquet lacinia ut vitae nibh. Quisque pretium\r\n quam nibh, imperdiet pulvinar ligula dictum id. In a auctor arcu. Fusce\r\n feugiat purus eget odio congue, mollis iaculis nulla tincidunt. Sed nec\r\n massa vulputate, pretium nisi malesuada, lacinia ligula.\r\n</span></p>\r\n<p>\r\nVestibulum eget tempor mauris. Praesent tincidunt enim eu massa \r\ntristique, pellentesque faucibus ipsum pharetra. Sed pulvinar convallis \r\ntortor eget placerat. Duis mattis tempus sollicitudin. Praesent eu porta\r\n libero, sed consectetur risus. Cum sociis natoque penatibus et magnis \r\ndis parturient montes, nascetur ridiculus mus. Duis vulputate, arcu nec \r\ntincidunt lacinia, mi velit malesuada sapien, a commodo lacus lacus sit \r\namet nisl. Donec rhoncus lectus sit amet sem dictum interdum. Vivamus \r\nlobortis tortor fringilla est gravida ultricies. Integer ut mauris quam.\r\n</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sollicitudin commodo cursus. Nunc varius accumsan ultrices. Quisque hendrerit mi id ullamcorper pretium. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Test news category 2', NULL);
INSERT INTO `page_lang` (`id_page_lang`, `page_id`, `language_id`, `title`, `navigation_title`, `body`, `description`, `keywords`, `slug`) VALUES (337, 162, 1, 'Hidden page example', 'Hidden page example', 'Hidden page example', 'Hidden page example', 'Hidden page example', NULL);
INSERT INTO `page_lang` (`id_page_lang`, `page_id`, `language_id`, `title`, `navigation_title`, `body`, `description`, `keywords`, `slug`) VALUES (365, 155, 1, 'Test news category', 'Test news category', '<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse \r\nsollicitudin commodo cursus. Nunc varius accumsan ultrices. Quisque \r\nhendrerit mi id ullamcorper pretium. Lorem ipsum dolor sit amet, \r\nconsectetur adipiscing elit. Nam ac metus vitae nibh aliquet adipiscing \r\nquis at nibh. Nullam lacinia magna sed enim ullamcorper rutrum. Proin \r\nquis vulputate est. Duis vitae purus vel mauris rutrum bibendum eu sit \r\namet erat. Vestibulum accumsan dapibus mauris, faucibus vehicula ipsum \r\ntempor pharetra. Sed porta, purus sit amet sollicitudin vestibulum, leo \r\nneque fringilla mauris, quis semper odio ante non arcu. Suspendisse \r\nporttitor mollis nisi, eu imperdiet eros condimentum at. Nunc tempor \r\nsodales suscipit.\r\n</p>\r\n<p>\r\n<span style=\"font-weight: bold;\">Sed sed mollis nunc. Interdum et malesuada fames ac ante ipsum primis in\r\n faucibus. Proin luctus semper eros, quis egestas leo. Pellentesque \r\nrisus felis, vulputate eu massa et, rhoncus molestie dui. Vivamus \r\nmalesuada dui nec cursus lobortis. Donec augue tortor, accumsan id lacus\r\n quis, suscipit ullamcorper dolor. Nunc ullamcorper elit suscipit, \r\nmollis tortor in, pharetra purus. Sed dapibus dolor mauris, quis \r\nelementum arcu auctor id. Maecenas eget orci in lacus vestibulum \r\nvehicula. Pellentesque et felis eget diam hendrerit ultricies. Quisque \r\nsit amet tellus odio. Nulla pharetra turpis non turpis molestie, \r\nsuscipit tincidunt nisl lobortis. In eget porttitor libero. Proin non \r\nbibendum nisi, vitae volutpat nisl. Vivamus pretium scelerisque risus, \r\nnon tristique arcu cursus eu. Cras velit lacus, venenatis ut mi \r\nmalesuada, dapibus viverra nisi.\r\n</span></p>\r\n<p>\r\n<span style=\"font-style: italic;\">Aliquam dapibus lorem vitae leo euismod commodo. Cras porttitor leo \r\neleifend velit malesuada pretium. Praesent ac auctor purus. Mauris \r\nligula ligula, hendrerit at justo in, molestie viverra sapien. In \r\nplacerat sem risus, a convallis massa viverra nec. Vestibulum ante ipsum\r\n primis in faucibus orci luctus et ultrices posuere cubilia Curae; \r\nPraesent ac justo in orci aliquet lacinia ut vitae nibh. Quisque pretium\r\n quam nibh, imperdiet pulvinar ligula dictum id. In a auctor arcu. Fusce\r\n feugiat purus eget odio congue, mollis iaculis nulla tincidunt. Sed nec\r\n massa vulputate, pretium nisi malesuada, lacinia ligula.\r\n</span></p>\r\n<p>\r\nVestibulum eget tempor mauris. Praesent tincidunt enim eu massa \r\ntristique, pellentesque faucibus ipsum pharetra. Sed pulvinar convallis \r\ntortor eget placerat. Duis mattis tempus sollicitudin. Praesent eu porta\r\n libero, sed consectetur risus. Cum sociis natoque penatibus et magnis \r\ndis parturient montes, nascetur ridiculus mus. Duis vulputate, arcu nec \r\ntincidunt lacinia, mi velit malesuada sapien, a commodo lacus lacus sit \r\namet nisl. Donec rhoncus lectus sit amet sem dictum interdum. Vivamus \r\nlobortis tortor fringilla est gravida ultricies. Integer ut mauris quam.\r\n</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sollicitudin commodo cursus. Nunc varius accumsan ultrices. Quisque hendrerit mi id ullamcorper pretium. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Test news category', NULL);
INSERT INTO `page_lang` (`id_page_lang`, `page_id`, `language_id`, `title`, `navigation_title`, `body`, `description`, `keywords`, `slug`) VALUES (421, 154, 1, 'My blog test', 'Test news', '<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse \r\nsollicitudin commodo cursus. Nunc varius accumsan ultrices. Quisque \r\nhendrerit mi id ullamcorper pretium. Lorem ipsum dolor sit amet, \r\nconsectetur adipiscing elit. Nam ac metus vitae nibh aliquet adipiscing \r\nquis at nibh. Nullam lacinia magna sed enim ullamcorper rutrum. Proin \r\nquis vulputate est. Duis vitae purus vel mauris rutrum bibendum eu sit \r\namet erat. Vestibulum accumsan dapibus mauris, faucibus vehicula ipsum \r\ntempor pharetra. Sed porta, purus sit amet sollicitudin vestibulum, leo \r\nneque fringilla mauris, quis semper odio ante non arcu. Suspendisse \r\nporttitor mollis nisi, eu imperdiet eros condimentum at. Nunc tempor \r\nsodales suscipit.\r\n</p>\r\n<p>\r\n<span style=\"font-weight: bold;\">Sed sed mollis nunc. Interdum et malesuada fames ac ante ipsum primis in\r\n faucibus. Proin luctus semper eros, quis egestas leo. Pellentesque \r\nrisus felis, vulputate eu massa et, rhoncus molestie dui. Vivamus \r\nmalesuada dui nec cursus lobortis. Donec augue tortor, accumsan id lacus\r\n quis, suscipit ullamcorper dolor. Nunc ullamcorper elit suscipit, \r\nmollis tortor in, pharetra purus. Sed dapibus dolor mauris, quis \r\nelementum arcu auctor id. Maecenas eget orci in lacus vestibulum \r\nvehicula. Pellentesque et felis eget diam hendrerit ultricies. Quisque \r\nsit amet tellus odio. Nulla pharetra turpis non turpis molestie, \r\nsuscipit tincidunt nisl lobortis. In eget porttitor libero. Proin non \r\nbibendum nisi, vitae volutpat nisl. Vivamus pretium scelerisque risus, \r\nnon tristique arcu cursus eu. Cras velit lacus, venenatis ut mi \r\nmalesuada, dapibus viverra nisi.\r\n</span></p>\r\n<p>\r\n<span style=\"font-style: italic;\">Aliquam dapibus lorem vitae leo euismod commodo. Cras porttitor leo \r\neleifend velit malesuada pretium. Praesent ac auctor purus. Mauris \r\nligula ligula, hendrerit at justo in, molestie viverra sapien. In \r\nplacerat sem risus, a convallis massa viverra nec. Vestibulum ante ipsum\r\n primis in faucibus orci luctus et ultrices posuere cubilia Curae; \r\nPraesent ac justo in orci aliquet lacinia ut vitae nibh. Quisque pretium\r\n quam nibh, imperdiet pulvinar ligula dictum id. In a auctor arcu. Fusce\r\n feugiat purus eget odio congue, mollis iaculis nulla tincidunt. Sed nec\r\n massa vulputate, pretium nisi malesuada, lacinia ligula.\r\n</span></p>\r\n<p>\r\nVestibulum eget tempor mauris. Praesent tincidunt enim eu massa \r\ntristique, pellentesque faucibus ipsum pharetra. Sed pulvinar convallis \r\ntortor eget placerat. Duis mattis tempus sollicitudin. Praesent eu porta\r\n libero, sed consectetur risus. Cum sociis natoque penatibus et magnis \r\ndis parturient montes, nascetur ridiculus mus. Duis vulputate, arcu nec \r\ntincidunt lacinia, mi velit malesuada sapien, a commodo lacus lacus sit \r\namet nisl. Donec rhoncus lectus sit amet sem dictum interdum. Vivamus \r\nlobortis tortor fringilla est gravida ultricies. Integer ut mauris quam.\r\n</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sollicitudin commodo cursus. Nunc varius accumsan ultrices. Quisque hendrerit mi id ullamcorper pretium. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Test news', NULL);
INSERT INTO `page_lang` (`id_page_lang`, `page_id`, `language_id`, `title`, `navigation_title`, `body`, `description`, `keywords`, `slug`) VALUES (467, 143, 1, 'Custom search', 'Custom search', 'Custom search example page.<br>', 'Custom search example page', 'Custom search', 'custom-search');
INSERT INTO `page_lang` (`id_page_lang`, `page_id`, `language_id`, `title`, `navigation_title`, `body`, `description`, `keywords`, `slug`) VALUES (634, 152, 4, 'Ditari im', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_lang` (`id_page_lang`, `page_id`, `language_id`, `title`, `navigation_title`, `body`, `description`, `keywords`, `slug`) VALUES (635, 151, 4, 'Lajmet kryesore', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `page_lang` (`id_page_lang`, `page_id`, `language_id`, `title`, `navigation_title`, `body`, `description`, `keywords`, `slug`) VALUES (636, 157, 4, 'Artikuj', 'Artikuj', '', '', '', NULL);
INSERT INTO `page_lang` (`id_page_lang`, `page_id`, `language_id`, `title`, `navigation_title`, `body`, `description`, `keywords`, `slug`) VALUES (637, 156, 4, 'Article test', 'Article test', '<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse \r\nsollicitudin commodo cursus. Nunc varius accumsan ultrices. Quisque \r\nhendrerit mi id ullamcorper pretium. Lorem ipsum dolor sit amet, \r\nconsectetur adipiscing elit. Nam ac metus vitae nibh aliquet adipiscing \r\nquis at nibh. Nullam lacinia magna sed enim ullamcorper rutrum. Proin \r\nquis vulputate est. Duis vitae purus vel mauris rutrum bibendum eu sit \r\namet erat. Vestibulum accumsan dapibus mauris, faucibus vehicula ipsum \r\ntempor pharetra. Sed porta, purus sit amet sollicitudin vestibulum, leo \r\nneque fringilla mauris, quis semper odio ante non arcu. Suspendisse \r\nporttitor mollis nisi, eu imperdiet eros condimentum at. Nunc tempor \r\nsodales suscipit.\r\n</p>\r\n<p>\r\n<span style=\"font-weight: bold;\">Sed sed mollis nunc. Interdum et malesuada fames ac ante ipsum primis in\r\n faucibus. Proin luctus semper eros, quis egestas leo. Pellentesque \r\nrisus felis, vulputate eu massa et, rhoncus molestie dui. Vivamus \r\nmalesuada dui nec cursus lobortis. Donec augue tortor, accumsan id lacus\r\n quis, suscipit ullamcorper dolor. Nunc ullamcorper elit suscipit, \r\nmollis tortor in, pharetra purus. Sed dapibus dolor mauris, quis \r\nelementum arcu auctor id. Maecenas eget orci in lacus vestibulum \r\nvehicula. Pellentesque et felis eget diam hendrerit ultricies. Quisque \r\nsit amet tellus odio. Nulla pharetra turpis non turpis molestie, \r\nsuscipit tincidunt nisl lobortis. In eget porttitor libero. Proin non \r\nbibendum nisi, vitae volutpat nisl. Vivamus pretium scelerisque risus, \r\nnon tristique arcu cursus eu. Cras velit lacus, venenatis ut mi \r\nmalesuada, dapibus viverra nisi.\r\n</span></p>\r\n<p>\r\n<span style=\"font-style: italic;\">Aliquam dapibus lorem vitae leo euismod commodo. Cras porttitor leo \r\neleifend velit malesuada pretium. Praesent ac auctor purus. Mauris \r\nligula ligula, hendrerit at justo in, molestie viverra sapien. In \r\nplacerat sem risus, a convallis massa viverra nec. Vestibulum ante ipsum\r\n primis in faucibus orci luctus et ultrices posuere cubilia Curae; \r\nPraesent ac justo in orci aliquet lacinia ut vitae nibh. Quisque pretium\r\n quam nibh, imperdiet pulvinar ligula dictum id. In a auctor arcu. Fusce\r\n feugiat purus eget odio congue, mollis iaculis nulla tincidunt. Sed nec\r\n massa vulputate, pretium nisi malesuada, lacinia ligula.\r\n</span></p>\r\n<p>\r\nVestibulum eget tempor mauris. Praesent tincidunt enim eu massa \r\ntristique, pellentesque faucibus ipsum pharetra. Sed pulvinar convallis \r\ntortor eget placerat. Duis mattis tempus sollicitudin. Praesent eu porta\r\n libero, sed consectetur risus. Cum sociis natoque penatibus et magnis \r\ndis parturient montes, nascetur ridiculus mus. Duis vulputate, arcu nec \r\ntincidunt lacinia, mi velit malesuada sapien, a commodo lacus lacus sit \r\namet nisl. Donec rhoncus lectus sit amet sem dictum interdum. Vivamus \r\nlobortis tortor fringilla est gravida ultricies. Integer ut mauris quam.\r\n</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sollicitudin commodo cursus. Nunc varius accumsan ultrices. Quisque hendrerit mi id ullamcorper pretium. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Article test', NULL);
INSERT INTO `page_lang` (`id_page_lang`, `page_id`, `language_id`, `title`, `navigation_title`, `body`, `description`, `keywords`, `slug`) VALUES (638, 158, 4, 'Test article 2', 'Test article 2', '<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse \r\nsollicitudin commodo cursus. Nunc varius accumsan ultrices. Quisque \r\nhendrerit mi id ullamcorper pretium. Lorem ipsum dolor sit amet, \r\nconsectetur adipiscing elit. Nam ac metus vitae nibh aliquet adipiscing \r\nquis at nibh. Nullam lacinia magna sed enim ullamcorper rutrum. Proin \r\nquis vulputate est. Duis vitae purus vel mauris rutrum bibendum eu sit \r\namet erat. Vestibulum accumsan dapibus mauris, faucibus vehicula ipsum \r\ntempor pharetra. Sed porta, purus sit amet sollicitudin vestibulum, leo \r\nneque fringilla mauris, quis semper odio ante non arcu. Suspendisse \r\nporttitor mollis nisi, eu imperdiet eros condimentum at. Nunc tempor \r\nsodales suscipit.\r\n</p>\r\n<p>\r\n<span style=\"font-weight: bold;\">Sed sed mollis nunc. Interdum et malesuada fames ac ante ipsum primis in\r\n faucibus. Proin luctus semper eros, quis egestas leo. Pellentesque \r\nrisus felis, vulputate eu massa et, rhoncus molestie dui. Vivamus \r\nmalesuada dui nec cursus lobortis. Donec augue tortor, accumsan id lacus\r\n quis, suscipit ullamcorper dolor. Nunc ullamcorper elit suscipit, \r\nmollis tortor in, pharetra purus. Sed dapibus dolor mauris, quis \r\nelementum arcu auctor id. Maecenas eget orci in lacus vestibulum \r\nvehicula. Pellentesque et felis eget diam hendrerit ultricies. Quisque \r\nsit amet tellus odio. Nulla pharetra turpis non turpis molestie, \r\nsuscipit tincidunt nisl lobortis. In eget porttitor libero. Proin non \r\nbibendum nisi, vitae volutpat nisl. Vivamus pretium scelerisque risus, \r\nnon tristique arcu cursus eu. Cras velit lacus, venenatis ut mi \r\nmalesuada, dapibus viverra nisi.\r\n</span></p>\r\n<p>\r\n<span style=\"font-style: italic;\">Aliquam dapibus lorem vitae leo euismod commodo. Cras porttitor leo \r\neleifend velit malesuada pretium. Praesent ac auctor purus. Mauris \r\nligula ligula, hendrerit at justo in, molestie viverra sapien. In \r\nplacerat sem risus, a convallis massa viverra nec. Vestibulum ante ipsum\r\n primis in faucibus orci luctus et ultrices posuere cubilia Curae; \r\nPraesent ac justo in orci aliquet lacinia ut vitae nibh. Quisque pretium\r\n quam nibh, imperdiet pulvinar ligula dictum id. In a auctor arcu. Fusce\r\n feugiat purus eget odio congue, mollis iaculis nulla tincidunt. Sed nec\r\n massa vulputate, pretium nisi malesuada, lacinia ligula.\r\n</span></p>\r\n<p>\r\nVestibulum eget tempor mauris. Praesent tincidunt enim eu massa \r\ntristique, pellentesque faucibus ipsum pharetra. Sed pulvinar convallis \r\ntortor eget placerat. Duis mattis tempus sollicitudin. Praesent eu porta\r\n libero, sed consectetur risus. Cum sociis natoque penatibus et magnis \r\ndis parturient montes, nascetur ridiculus mus. Duis vulputate, arcu nec \r\ntincidunt lacinia, mi velit malesuada sapien, a commodo lacus lacus sit \r\namet nisl. Donec rhoncus lectus sit amet sem dictum interdum. Vivamus \r\nlobortis tortor fringilla est gravida ultricies. Integer ut mauris quam.\r\n</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sollicitudin commodo cursus. Nunc varius accumsan ultrices. Quisque hendrerit mi id ullamcorper pretium. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Test article 2', NULL);
INSERT INTO `page_lang` (`id_page_lang`, `page_id`, `language_id`, `title`, `navigation_title`, `body`, `description`, `keywords`, `slug`) VALUES (639, 159, 4, 'Test news category 2', 'Test news category 2', '<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse \r\nsollicitudin commodo cursus. Nunc varius accumsan ultrices. Quisque \r\nhendrerit mi id ullamcorper pretium. Lorem ipsum dolor sit amet, \r\nconsectetur adipiscing elit. Nam ac metus vitae nibh aliquet adipiscing \r\nquis at nibh. Nullam lacinia magna sed enim ullamcorper rutrum. Proin \r\nquis vulputate est. Duis vitae purus vel mauris rutrum bibendum eu sit \r\namet erat. Vestibulum accumsan dapibus mauris, faucibus vehicula ipsum \r\ntempor pharetra. Sed porta, purus sit amet sollicitudin vestibulum, leo \r\nneque fringilla mauris, quis semper odio ante non arcu. Suspendisse \r\nporttitor mollis nisi, eu imperdiet eros condimentum at. Nunc tempor \r\nsodales suscipit.\r\n</p>\r\n<p>\r\n<span style=\"font-weight: bold;\">Sed sed mollis nunc. Interdum et malesuada fames ac ante ipsum primis in\r\n faucibus. Proin luctus semper eros, quis egestas leo. Pellentesque \r\nrisus felis, vulputate eu massa et, rhoncus molestie dui. Vivamus \r\nmalesuada dui nec cursus lobortis. Donec augue tortor, accumsan id lacus\r\n quis, suscipit ullamcorper dolor. Nunc ullamcorper elit suscipit, \r\nmollis tortor in, pharetra purus. Sed dapibus dolor mauris, quis \r\nelementum arcu auctor id. Maecenas eget orci in lacus vestibulum \r\nvehicula. Pellentesque et felis eget diam hendrerit ultricies. Quisque \r\nsit amet tellus odio. Nulla pharetra turpis non turpis molestie, \r\nsuscipit tincidunt nisl lobortis. In eget porttitor libero. Proin non \r\nbibendum nisi, vitae volutpat nisl. Vivamus pretium scelerisque risus, \r\nnon tristique arcu cursus eu. Cras velit lacus, venenatis ut mi \r\nmalesuada, dapibus viverra nisi.\r\n</span></p>\r\n<p>\r\n<span style=\"font-style: italic;\">Aliquam dapibus lorem vitae leo euismod commodo. Cras porttitor leo \r\neleifend velit malesuada pretium. Praesent ac auctor purus. Mauris \r\nligula ligula, hendrerit at justo in, molestie viverra sapien. In \r\nplacerat sem risus, a convallis massa viverra nec. Vestibulum ante ipsum\r\n primis in faucibus orci luctus et ultrices posuere cubilia Curae; \r\nPraesent ac justo in orci aliquet lacinia ut vitae nibh. Quisque pretium\r\n quam nibh, imperdiet pulvinar ligula dictum id. In a auctor arcu. Fusce\r\n feugiat purus eget odio congue, mollis iaculis nulla tincidunt. Sed nec\r\n massa vulputate, pretium nisi malesuada, lacinia ligula.\r\n</span></p>\r\n<p>\r\nVestibulum eget tempor mauris. Praesent tincidunt enim eu massa \r\ntristique, pellentesque faucibus ipsum pharetra. Sed pulvinar convallis \r\ntortor eget placerat. Duis mattis tempus sollicitudin. Praesent eu porta\r\n libero, sed consectetur risus. Cum sociis natoque penatibus et magnis \r\ndis parturient montes, nascetur ridiculus mus. Duis vulputate, arcu nec \r\ntincidunt lacinia, mi velit malesuada sapien, a commodo lacus lacus sit \r\namet nisl. Donec rhoncus lectus sit amet sem dictum interdum. Vivamus \r\nlobortis tortor fringilla est gravida ultricies. Integer ut mauris quam.\r\n</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sollicitudin commodo cursus. Nunc varius accumsan ultrices. Quisque hendrerit mi id ullamcorper pretium. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Test news category 2', NULL);
INSERT INTO `page_lang` (`id_page_lang`, `page_id`, `language_id`, `title`, `navigation_title`, `body`, `description`, `keywords`, `slug`) VALUES (640, 162, 4, 'Shembull i faqes së fshehur', 'Shembull i faqes së fshehur', 'Hidden page example', 'Hidden page example', 'Hidden page example', NULL);
INSERT INTO `page_lang` (`id_page_lang`, `page_id`, `language_id`, `title`, `navigation_title`, `body`, `description`, `keywords`, `slug`) VALUES (642, 155, 4, 'Test news category', 'Test news category', '<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse \r\nsollicitudin commodo cursus. Nunc varius accumsan ultrices. Quisque \r\nhendrerit mi id ullamcorper pretium. Lorem ipsum dolor sit amet, \r\nconsectetur adipiscing elit. Nam ac metus vitae nibh aliquet adipiscing \r\nquis at nibh. Nullam lacinia magna sed enim ullamcorper rutrum. Proin \r\nquis vulputate est. Duis vitae purus vel mauris rutrum bibendum eu sit \r\namet erat. Vestibulum accumsan dapibus mauris, faucibus vehicula ipsum \r\ntempor pharetra. Sed porta, purus sit amet sollicitudin vestibulum, leo \r\nneque fringilla mauris, quis semper odio ante non arcu. Suspendisse \r\nporttitor mollis nisi, eu imperdiet eros condimentum at. Nunc tempor \r\nsodales suscipit.\r\n</p>\r\n<p>\r\n<span style=\"font-weight: bold;\">Sed sed mollis nunc. Interdum et malesuada fames ac ante ipsum primis in\r\n faucibus. Proin luctus semper eros, quis egestas leo. Pellentesque \r\nrisus felis, vulputate eu massa et, rhoncus molestie dui. Vivamus \r\nmalesuada dui nec cursus lobortis. Donec augue tortor, accumsan id lacus\r\n quis, suscipit ullamcorper dolor. Nunc ullamcorper elit suscipit, \r\nmollis tortor in, pharetra purus. Sed dapibus dolor mauris, quis \r\nelementum arcu auctor id. Maecenas eget orci in lacus vestibulum \r\nvehicula. Pellentesque et felis eget diam hendrerit ultricies. Quisque \r\nsit amet tellus odio. Nulla pharetra turpis non turpis molestie, \r\nsuscipit tincidunt nisl lobortis. In eget porttitor libero. Proin non \r\nbibendum nisi, vitae volutpat nisl. Vivamus pretium scelerisque risus, \r\nnon tristique arcu cursus eu. Cras velit lacus, venenatis ut mi \r\nmalesuada, dapibus viverra nisi.\r\n</span></p>\r\n<p>\r\n<span style=\"font-style: italic;\">Aliquam dapibus lorem vitae leo euismod commodo. Cras porttitor leo \r\neleifend velit malesuada pretium. Praesent ac auctor purus. Mauris \r\nligula ligula, hendrerit at justo in, molestie viverra sapien. In \r\nplacerat sem risus, a convallis massa viverra nec. Vestibulum ante ipsum\r\n primis in faucibus orci luctus et ultrices posuere cubilia Curae; \r\nPraesent ac justo in orci aliquet lacinia ut vitae nibh. Quisque pretium\r\n quam nibh, imperdiet pulvinar ligula dictum id. In a auctor arcu. Fusce\r\n feugiat purus eget odio congue, mollis iaculis nulla tincidunt. Sed nec\r\n massa vulputate, pretium nisi malesuada, lacinia ligula.\r\n</span></p>\r\n<p>\r\nVestibulum eget tempor mauris. Praesent tincidunt enim eu massa \r\ntristique, pellentesque faucibus ipsum pharetra. Sed pulvinar convallis \r\ntortor eget placerat. Duis mattis tempus sollicitudin. Praesent eu porta\r\n libero, sed consectetur risus. Cum sociis natoque penatibus et magnis \r\ndis parturient montes, nascetur ridiculus mus. Duis vulputate, arcu nec \r\ntincidunt lacinia, mi velit malesuada sapien, a commodo lacus lacus sit \r\namet nisl. Donec rhoncus lectus sit amet sem dictum interdum. Vivamus \r\nlobortis tortor fringilla est gravida ultricies. Integer ut mauris quam.\r\n</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sollicitudin commodo cursus. Nunc varius accumsan ultrices. Quisque hendrerit mi id ullamcorper pretium. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Test news category', NULL);
INSERT INTO `page_lang` (`id_page_lang`, `page_id`, `language_id`, `title`, `navigation_title`, `body`, `description`, `keywords`, `slug`) VALUES (643, 154, 4, 'My blog test', 'Test news', '<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse \r\nsollicitudin commodo cursus. Nunc varius accumsan ultrices. Quisque \r\nhendrerit mi id ullamcorper pretium. Lorem ipsum dolor sit amet, \r\nconsectetur adipiscing elit. Nam ac metus vitae nibh aliquet adipiscing \r\nquis at nibh. Nullam lacinia magna sed enim ullamcorper rutrum. Proin \r\nquis vulputate est. Duis vitae purus vel mauris rutrum bibendum eu sit \r\namet erat. Vestibulum accumsan dapibus mauris, faucibus vehicula ipsum \r\ntempor pharetra. Sed porta, purus sit amet sollicitudin vestibulum, leo \r\nneque fringilla mauris, quis semper odio ante non arcu. Suspendisse \r\nporttitor mollis nisi, eu imperdiet eros condimentum at. Nunc tempor \r\nsodales suscipit.\r\n</p>\r\n<p>\r\n<span style=\"font-weight: bold;\">Sed sed mollis nunc. Interdum et malesuada fames ac ante ipsum primis in\r\n faucibus. Proin luctus semper eros, quis egestas leo. Pellentesque \r\nrisus felis, vulputate eu massa et, rhoncus molestie dui. Vivamus \r\nmalesuada dui nec cursus lobortis. Donec augue tortor, accumsan id lacus\r\n quis, suscipit ullamcorper dolor. Nunc ullamcorper elit suscipit, \r\nmollis tortor in, pharetra purus. Sed dapibus dolor mauris, quis \r\nelementum arcu auctor id. Maecenas eget orci in lacus vestibulum \r\nvehicula. Pellentesque et felis eget diam hendrerit ultricies. Quisque \r\nsit amet tellus odio. Nulla pharetra turpis non turpis molestie, \r\nsuscipit tincidunt nisl lobortis. In eget porttitor libero. Proin non \r\nbibendum nisi, vitae volutpat nisl. Vivamus pretium scelerisque risus, \r\nnon tristique arcu cursus eu. Cras velit lacus, venenatis ut mi \r\nmalesuada, dapibus viverra nisi.\r\n</span></p>\r\n<p>\r\n<span style=\"font-style: italic;\">Aliquam dapibus lorem vitae leo euismod commodo. Cras porttitor leo \r\neleifend velit malesuada pretium. Praesent ac auctor purus. Mauris \r\nligula ligula, hendrerit at justo in, molestie viverra sapien. In \r\nplacerat sem risus, a convallis massa viverra nec. Vestibulum ante ipsum\r\n primis in faucibus orci luctus et ultrices posuere cubilia Curae; \r\nPraesent ac justo in orci aliquet lacinia ut vitae nibh. Quisque pretium\r\n quam nibh, imperdiet pulvinar ligula dictum id. In a auctor arcu. Fusce\r\n feugiat purus eget odio congue, mollis iaculis nulla tincidunt. Sed nec\r\n massa vulputate, pretium nisi malesuada, lacinia ligula.\r\n</span></p>\r\n<p>\r\nVestibulum eget tempor mauris. Praesent tincidunt enim eu massa \r\ntristique, pellentesque faucibus ipsum pharetra. Sed pulvinar convallis \r\ntortor eget placerat. Duis mattis tempus sollicitudin. Praesent eu porta\r\n libero, sed consectetur risus. Cum sociis natoque penatibus et magnis \r\ndis parturient montes, nascetur ridiculus mus. Duis vulputate, arcu nec \r\ntincidunt lacinia, mi velit malesuada sapien, a commodo lacus lacus sit \r\namet nisl. Donec rhoncus lectus sit amet sem dictum interdum. Vivamus \r\nlobortis tortor fringilla est gravida ultricies. Integer ut mauris quam.\r\n</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sollicitudin commodo cursus. Nunc varius accumsan ultrices. Quisque hendrerit mi id ullamcorper pretium. Lorem ipsum dolor sit amet, consectetur adipiscing elit.', 'Test news', NULL);
INSERT INTO `page_lang` (`id_page_lang`, `page_id`, `language_id`, `title`, `navigation_title`, `body`, `description`, `keywords`, `slug`) VALUES (648, 143, 4, 'Përshtat Ikonën e Kërkimit', 'Përshtat Ikonën e Kërkimit', 'Custom search example page.<br>', 'Custom search example page', 'Custom search', 'custom-search');
INSERT INTO `page_lang` (`id_page_lang`, `page_id`, `language_id`, `title`, `navigation_title`, `body`, `description`, `keywords`, `slug`) VALUES (659, 163, 4, 'Private', 'Private', '<p>Private page, only visible for logged users.</p>', 'Private page', 'Private page', NULL);
INSERT INTO `page_lang` (`id_page_lang`, `page_id`, `language_id`, `title`, `navigation_title`, `body`, `description`, `keywords`, `slug`) VALUES (660, 163, 1, 'Private page', 'Private page', '<p>Private page, only visible for logged users.</p>', 'Private page', 'Private page', NULL);
INSERT INTO `page_lang` (`id_page_lang`, `page_id`, `language_id`, `title`, `navigation_title`, `body`, `description`, `keywords`, `slug`) VALUES (663, 1, 4, 'Kategorite', 'Kategorite', '<div class=\"row\">\r\n<div class=\"span1\">&nbsp;</div>\r\n</div>', '', 'Kategorite', NULL);
INSERT INTO `page_lang` (`id_page_lang`, `page_id`, `language_id`, `title`, `navigation_title`, `body`, `description`, `keywords`, `slug`) VALUES (664, 1, 1, 'Categories', 'Categories', '<div class=\"row\">\r\n<div class=\"span1\">&nbsp;</div>\r\n</div>', '', '', NULL);
INSERT INTO `page_lang` (`id_page_lang`, `page_id`, `language_id`, `title`, `navigation_title`, `body`, `description`, `keywords`, `slug`) VALUES (665, 6, 4, 'Harta', 'Harta', '<div class=\"row\">\r\n<div class=\"span1\">&nbsp;</div>\r\n</div>', '', 'Harta', NULL);
INSERT INTO `page_lang` (`id_page_lang`, `page_id`, `language_id`, `title`, `navigation_title`, `body`, `description`, `keywords`, `slug`) VALUES (666, 6, 1, 'Map', 'Map', '<div class=\"row\">\r\n<div class=\"span1\"><img src=\"assets/img/multilangual.png\" /></div>\r\n\r\n<div class=\"span3\">\r\n<h4>Native Multilangual</h4>\r\nNatively multilingual, no need to install any addon. Every element can be translated and you can add as many languages as you want.</div>\r\n\r\n<div class=\"span1\"><img src=\"assets/img/easy_customize.png\" /></div>\r\n\r\n<div class=\"span3\">\r\n<h4>Easy to customize</h4>\r\nApplication is based on CodeIgniter PHP framework, if you know CodeIgniter you can easily customize the system.</div>\r\n\r\n<div class=\"span1\"><img src=\"assets/img/bootstrap.png\" /></div>\r\n\r\n<div class=\"span3\">\r\n<h4>Bootstrap ready</h4>\r\nBackend and Frontend based on Bootstrap and are easy to customize.</div>\r\n</div>\r\n\r\n<div class=\"row\">\r\n<div class=\"span1\"><img src=\"assets/img/drag-drop.png\" /></div>\r\n\r\n<div class=\"span3\">\r\n<h4>User friendly</h4>\r\nWebsite structure is logical. Managing elements such as pages, estates or images is easily done by drag&#39;n&#39;drop!</div>\r\n\r\n<div class=\"span1\"><img src=\"assets/img/template.png\" /></div>\r\n\r\n<div class=\"span3\">\r\n<h4>Template System</h4>\r\nEasy to use CodeIgniter Template Parser Class or alternative PHP syntax available.</div>\r\n\r\n<div class=\"span1\"><img src=\"assets/img/robust.png\" /></div>\r\n\r\n<div class=\"span3\">\r\n<h4>Robust</h4>\r\nBuild as easy to use and robust Metro style Admin user interface</div>\r\n</div>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '', 'Map', NULL);
INSERT INTO `page_lang` (`id_page_lang`, `page_id`, `language_id`, `title`, `navigation_title`, `body`, `description`, `keywords`, `slug`) VALUES (667, 145, 4, 'Ekran të plotë', 'Full', '<p>Fullscreen</p>', 'Fullscreen', 'Fullscreen', NULL);
INSERT INTO `page_lang` (`id_page_lang`, `page_id`, `language_id`, `title`, `navigation_title`, `body`, `description`, `keywords`, `slug`) VALUES (668, 145, 1, 'Fullscreen', 'Full', '<p>Fullscreen</p>', 'Fullscreen', 'Fullscreen', NULL);
INSERT INTO `page_lang` (`id_page_lang`, `page_id`, `language_id`, `title`, `navigation_title`, `body`, `description`, `keywords`, `slug`) VALUES (669, 147, 4, 'Rekomanduar', 'Të rekomanduar', '<p>Vendet më të rekomanduara!</p>', 'Vendet më të rekomanduara!', 'Featured', NULL);
INSERT INTO `page_lang` (`id_page_lang`, `page_id`, `language_id`, `title`, `navigation_title`, `body`, `description`, `keywords`, `slug`) VALUES (670, 147, 1, 'Featured', 'Featured', '<p>Featured properties example</p>', 'Featured properties example', 'Featured', NULL);
INSERT INTO `page_lang` (`id_page_lang`, `page_id`, `language_id`, `title`, `navigation_title`, `body`, `description`, `keywords`, `slug`) VALUES (675, 169, 4, 'Agjentet', 'Agjentet', '<p>Agents listing with search and pagination support example...</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sollicitudin commodo cursus. Nunc varius accumsan ultrices. Quisque hendrerit mi id ullamcorper pretium. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ac metus vitae nibh aliquet adipiscing quis at nibh. Nullam lacinia magna sed enim ullamcorper rutrum. Proin quis vulputate est. Duis vitae purus vel mauris rutrum bibendum eu sit amet erat. Vestibulum accumsan dapibus mauris, faucibus vehicula ipsum tempor pharetra. Sed porta, purus sit amet sollicitudin vestibulum, leo neque fringilla mauris, quis semper odio ante non arcu. Suspendisse porttitor mollis nisi, eu imperdiet eros condimentum at. Nunc tempor sodales suscipit.\r\n\r\nSed sed mollis nunc. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin luctus semper eros, quis egestas leo. Pellentesque risus felis, vulputate eu massa et, rhoncus molestie dui. Vivamus malesuada dui nec cursus lobortis. Donec augue tortor, accumsan id lacus quis, suscipit ullamcorper dolor. Nunc ullamcorper elit suscipit, mollis tortor in, pharetra purus. Sed dapibus dolor mauris, quis elementum arcu auctor id. Maecenas eget orci in lacus vestibulum vehicula. Pellentesque et felis eget diam hendrerit ultricies. Quisque sit amet tellus odio. Nulla pharetra turpis non turpis molestie, suscipit tincidunt nisl lobortis. In eget porttitor libero. Proin non bibendum nisi, vitae volutpat nisl. Vivamus pretium scelerisque risus, non tristique arcu cursus eu. Cras velit lacus, venenatis ut mi malesuada, dapibus viverra nisi.', '', NULL);
INSERT INTO `page_lang` (`id_page_lang`, `page_id`, `language_id`, `title`, `navigation_title`, `body`, `description`, `keywords`, `slug`) VALUES (676, 169, 1, 'Agents', 'Agents', '<p>Agents listing with search and pagination support example...</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sollicitudin commodo cursus. Nunc varius accumsan ultrices. Quisque hendrerit mi id ullamcorper pretium. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ac metus vitae nibh aliquet adipiscing quis at nibh. Nullam lacinia magna sed enim ullamcorper rutrum. Proin quis vulputate est. Duis vitae purus vel mauris rutrum bibendum eu sit amet erat. Vestibulum accumsan dapibus mauris, faucibus vehicula ipsum tempor pharetra. Sed porta, purus sit amet sollicitudin vestibulum, leo neque fringilla mauris, quis semper odio ante non arcu. Suspendisse porttitor mollis nisi, eu imperdiet eros condimentum at. Nunc tempor sodales suscipit.\r\n\r\nSed sed mollis nunc. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin luctus semper eros, quis egestas leo. Pellentesque risus felis, vulputate eu massa et, rhoncus molestie dui. Vivamus malesuada dui nec cursus lobortis. Donec augue tortor, accumsan id lacus quis, suscipit ullamcorper dolor. Nunc ullamcorper elit suscipit, mollis tortor in, pharetra purus. Sed dapibus dolor mauris, quis elementum arcu auctor id. Maecenas eget orci in lacus vestibulum vehicula. Pellentesque et felis eget diam hendrerit ultricies. Quisque sit amet tellus odio. Nulla pharetra turpis non turpis molestie, suscipit tincidunt nisl lobortis. In eget porttitor libero. Proin non bibendum nisi, vitae volutpat nisl. Vivamus pretium scelerisque risus, non tristique arcu cursus eu. Cras velit lacus, venenatis ut mi malesuada, dapibus viverra nisi.', '', NULL);
INSERT INTO `page_lang` (`id_page_lang`, `page_id`, `language_id`, `title`, `navigation_title`, `body`, `description`, `keywords`, `slug`) VALUES (677, 146, 4, 'Google', 'Google', '<p>http://www.google.com</p>', 'This is just a link example, so you need enter your link to keywords with \'http\'', 'http://www.google.com', NULL);
INSERT INTO `page_lang` (`id_page_lang`, `page_id`, `language_id`, `title`, `navigation_title`, `body`, `description`, `keywords`, `slug`) VALUES (678, 146, 1, 'Google link', 'Google link', '<p>http://www.google.com</p>', 'This is just a link example, so you need enter your link to keywords with \'http\'', 'http://www.google.com', NULL);
INSERT INTO `page_lang` (`id_page_lang`, `page_id`, `language_id`, `title`, `navigation_title`, `body`, `description`, `keywords`, `slug`) VALUES (679, 4, 4, 'Kontakt', 'Kontakt', '<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-weight: bold;\">CityGuide</span>Map Kiosk from Croatia<br />\r\nIlica 345<br />\r\nHR-10000 Zagreb<br />\r\n<br />\r\n<span style=\"font-weight: bold;\"><span>Tel:</span></span> +385 (0)1 123 321<br />\r\n<span style=\"font-weight: bold;\"><span>Fax:</span></span> +385 (0)1 123 322<br />\r\n<span style=\"font-weight: bold;\"><span>Mail:</span></span> info@info.info</p>\r\n\r\n<p>&nbsp;</p>', 'Short description', 'Contact', NULL);
INSERT INTO `page_lang` (`id_page_lang`, `page_id`, `language_id`, `title`, `navigation_title`, `body`, `description`, `keywords`, `slug`) VALUES (680, 4, 1, 'Contact', 'Contact', '<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-weight: bold;\">CityGuide</span>Map Kiosk from Croatia<br />\r\nIlica 345<br />\r\nHR-10000 Zagreb<br />\r\n<br />\r\n<span style=\"font-weight: bold;\"><span>Tel:</span></span> +385 (0)1 123 321<br />\r\n<span style=\"font-weight: bold;\"><span>Fax:</span></span> +385 (0)1 123 322<br />\r\n<span style=\"font-weight: bold;\"><span>Mail:</span></span> info@info.info</p>\r\n\r\n<p>&nbsp;</p>', 'Short description', 'Contact', NULL);
INSERT INTO `page_lang` (`id_page_lang`, `page_id`, `language_id`, `title`, `navigation_title`, `body`, `description`, `keywords`, `slug`) VALUES (681, 142, 4, 'Test page', 'Faqe Blogu', '<p><span style=\"font-weight: bold;\">Nam eget est facilisis, porta mi ac, ultricies enim. Proin nisi diam, eleifend ac eleifend in, dapibus in orci. Vestibulum elementum lectus non nisl venenatis, tempus molestie nisi tempus. Pellentesque facilisis nibh nec purus blandit, id aliquam lorem fermentum. </span></p>', 'Nam eget est facilisis, porta mi ac, ultricies enim. Proin nisi diam, eleifend ac eleifend in, dapibus in orci. Vestibulum elementum lectus non nisl venenatis, tempus molestie nisi tempus. Pellentesque facilisis nibh nec purus blandit, id aliquam lorem fermentum.', 'test', NULL);
INSERT INTO `page_lang` (`id_page_lang`, `page_id`, `language_id`, `title`, `navigation_title`, `body`, `description`, `keywords`, `slug`) VALUES (682, 142, 1, 'Test page', 'Blog page', '<p><span style=\"font-weight: bold;\">Nam eget est facilisis, porta mi ac, ultricies enim. Proin nisi diam, eleifend ac eleifend in, dapibus in orci. Vestibulum elementum lectus non nisl venenatis, tempus molestie nisi tempus. Pellentesque facilisis nibh nec purus blandit, id aliquam lorem fermentum. </span></p>', 'Nam eget est facilisis, porta mi ac, ultricies enim. Proin nisi diam, eleifend ac eleifend in, dapibus in orci. Vestibulum elementum lectus non nisl venenatis, tempus molestie nisi tempus. Pellentesque facilisis nibh nec purus blandit, id aliquam lorem fermentum.', 'test', NULL);
INSERT INTO `page_lang` (`id_page_lang`, `page_id`, `language_id`, `title`, `navigation_title`, `body`, `description`, `keywords`, `slug`) VALUES (683, 5, 4, 'Përmbajtje', 'Përmbajtje', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sollicitudin commodo cursus. Nunc varius accumsan ultrices. Quisque hendrerit mi id ullamcorper pretium. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ac metus vitae nibh aliquet adipiscing quis at nibh. Nullam lacinia magna sed enim ullamcorper rutrum. Proin quis vulputate est. Duis vitae purus vel mauris rutrum bibendum eu sit amet erat. Vestibulum accumsan dapibus mauris, faucibus vehicula ipsum tempor pharetra. Sed porta, purus sit amet sollicitudin vestibulum, leo neque fringilla mauris, quis semper odio ante non arcu. Suspendisse porttitor mollis nisi, eu imperdiet eros condimentum at. Nunc tempor sodales suscipit.</p>\r\n\r\n<p><span style=\"font-weight: bold;\">Sed sed mollis nunc. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin luctus semper eros, quis egestas leo. Pellentesque risus felis, vulputate eu massa et, rhoncus molestie dui. Vivamus malesuada dui nec cursus lobortis. Donec augue tortor, accumsan id lacus quis, suscipit ullamcorper dolor. Nunc ullamcorper elit suscipit, mollis tortor in, pharetra purus. Sed dapibus dolor mauris, quis elementum arcu auctor id. Maecenas eget orci in lacus vestibulum vehicula. Pellentesque et felis eget diam hendrerit ultricies. Quisque sit amet tellus odio. Nulla pharetra turpis non turpis molestie, suscipit tincidunt nisl lobortis. In eget porttitor libero. Proin non bibendum nisi, vitae volutpat nisl. Vivamus pretium scelerisque risus, non tristique arcu cursus eu. Cras velit lacus, venenatis ut mi malesuada, dapibus viverra nisi. </span></p>\r\n\r\n<p><span style=\"font-style: italic;\">Aliquam dapibus lorem vitae leo euismod commodo. Cras porttitor leo eleifend velit malesuada pretium. Praesent ac auctor purus. Mauris ligula ligula, hendrerit at justo in, molestie viverra sapien. In placerat sem risus, a convallis massa viverra nec. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Praesent ac justo in orci aliquet lacinia ut vitae nibh. Quisque pretium quam nibh, imperdiet pulvinar ligula dictum id. In a auctor arcu. Fusce feugiat purus eget odio congue, mollis iaculis nulla tincidunt. Sed nec massa vulputate, pretium nisi malesuada, lacinia ligula. </span></p>\r\n\r\n<p>Vestibulum eget tempor mauris. Praesent tincidunt enim eu massa tristique, pellentesque faucibus ipsum pharetra. Sed pulvinar convallis tortor eget placerat. Duis mattis tempus sollicitudin. Praesent eu porta libero, sed consectetur risus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis vulputate, arcu nec tincidunt lacinia, mi velit malesuada sapien, a commodo lacus lacus sit amet nisl. Donec rhoncus lectus sit amet sem dictum interdum. Vivamus lobortis tortor fringilla est gravida ultricies. Integer ut mauris quam.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Test</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sollicitudin commodo cursus. Nunc varius accumsan ultrices.', 'Përmbajtje', NULL);
INSERT INTO `page_lang` (`id_page_lang`, `page_id`, `language_id`, `title`, `navigation_title`, `body`, `description`, `keywords`, `slug`) VALUES (684, 5, 1, 'About us', 'About us', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sollicitudin commodo cursus. Nunc varius accumsan ultrices. Quisque hendrerit mi id ullamcorper pretium. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ac metus vitae nibh aliquet adipiscing quis at nibh. Nullam lacinia magna sed enim ullamcorper rutrum. Proin quis vulputate est. Duis vitae purus vel mauris rutrum bibendum eu sit amet erat. Vestibulum accumsan dapibus mauris, faucibus vehicula ipsum tempor pharetra. Sed porta, purus sit amet sollicitudin vestibulum, leo neque fringilla mauris, quis semper odio ante non arcu. Suspendisse porttitor mollis nisi, eu imperdiet eros condimentum at. Nunc tempor sodales suscipit.</p>\r\n\r\n<p><span style=\"font-weight: bold;\">Sed sed mollis nunc. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin luctus semper eros, quis egestas leo. Pellentesque risus felis, vulputate eu massa et, rhoncus molestie dui. Vivamus malesuada dui nec cursus lobortis. Donec augue tortor, accumsan id lacus quis, suscipit ullamcorper dolor. Nunc ullamcorper elit suscipit, mollis tortor in, pharetra purus. Sed dapibus dolor mauris, quis elementum arcu auctor id. Maecenas eget orci in lacus vestibulum vehicula. Pellentesque et felis eget diam hendrerit ultricies. Quisque sit amet tellus odio. Nulla pharetra turpis non turpis molestie, suscipit tincidunt nisl lobortis. In eget porttitor libero. Proin non bibendum nisi, vitae volutpat nisl. Vivamus pretium scelerisque risus, non tristique arcu cursus eu. Cras velit lacus, venenatis ut mi malesuada, dapibus viverra nisi. </span></p>\r\n\r\n<p><span style=\"font-style: italic;\">Aliquam dapibus lorem vitae leo euismod commodo. Cras porttitor leo eleifend velit malesuada pretium. Praesent ac auctor purus. Mauris ligula ligula, hendrerit at justo in, molestie viverra sapien. In placerat sem risus, a convallis massa viverra nec. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Praesent ac justo in orci aliquet lacinia ut vitae nibh. Quisque pretium quam nibh, imperdiet pulvinar ligula dictum id. In a auctor arcu. Fusce feugiat purus eget odio congue, mollis iaculis nulla tincidunt. Sed nec massa vulputate, pretium nisi malesuada, lacinia ligula. </span></p>\r\n\r\n<p>Vestibulum eget tempor mauris. Praesent tincidunt enim eu massa tristique, pellentesque faucibus ipsum pharetra. Sed pulvinar convallis tortor eget placerat. Duis mattis tempus sollicitudin. Praesent eu porta libero, sed consectetur risus. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Duis vulputate, arcu nec tincidunt lacinia, mi velit malesuada sapien, a commodo lacus lacus sit amet nisl. Donec rhoncus lectus sit amet sem dictum interdum. Vivamus lobortis tortor fringilla est gravida ultricies. Integer ut mauris quam.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Test</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse sollicitudin commodo cursus. Nunc varius accumsan ultrices.', 'About us', NULL);


#
# TABLE STRUCTURE FOR: showroom
#

CREATE TABLE `showroom` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `type` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'CATEGORY',
  `date` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `date_publish` datetime DEFAULT NULL,
  `template` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(160) COLLATE utf8_unicode_ci DEFAULT NULL,
  `repository_id` int(11) DEFAULT NULL,
  `gps` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `contact_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_filename` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `showroom` (`id`, `parent_id`, `order`, `type`, `date`, `date_modified`, `date_publish`, `template`, `slug`, `repository_id`, `gps`, `address`, `contact_email`, `image_filename`) VALUES (1, 0, 1, 'CATEGORY', '2014-04-26 14:15:16', NULL, NULL, NULL, NULL, 280, NULL, NULL, NULL, NULL);
INSERT INTO `showroom` (`id`, `parent_id`, `order`, `type`, `date`, `date_modified`, `date_publish`, `template`, `slug`, `repository_id`, `gps`, `address`, `contact_email`, `image_filename`) VALUES (2, 0, 3, 'CATEGORY', '2014-04-26 14:17:59', NULL, NULL, NULL, NULL, 281, NULL, NULL, NULL, NULL);
INSERT INTO `showroom` (`id`, `parent_id`, `order`, `type`, `date`, `date_modified`, `date_publish`, `template`, `slug`, `repository_id`, `gps`, `address`, `contact_email`, `image_filename`) VALUES (3, 1, 2, 'CATEGORY', '2014-04-26 14:22:01', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `showroom` (`id`, `parent_id`, `order`, `type`, `date`, `date_modified`, `date_publish`, `template`, `slug`, `repository_id`, `gps`, `address`, `contact_email`, `image_filename`) VALUES (4, 3, 2, 'COMPANY', '2014-04-26 20:20:17', NULL, '2014-04-26 20:16:59', 'showroom_company', NULL, 241, '46.36667726352153, 16.1281658000305', 'Cestica, Croatia', 'tire-repair@mydomain.com', 'wap-logo v2.png');
INSERT INTO `showroom` (`id`, `parent_id`, `order`, `type`, `date`, `date_modified`, `date_publish`, `template`, `slug`, `repository_id`, `gps`, `address`, `contact_email`, `image_filename`) VALUES (5, 1, 2, 'COMPANY', '2014-04-28 20:36:54', NULL, '2014-04-28 20:35:41', 'showroom_company', NULL, 243, '45.8020205655489, 16.156422732031274', 'Zagreb, Croatia', 'sandi.winter@gmail.com', 'logo-350.png');
INSERT INTO `showroom` (`id`, `parent_id`, `order`, `type`, `date`, `date_modified`, `date_publish`, `template`, `slug`, `repository_id`, `gps`, `address`, `contact_email`, `image_filename`) VALUES (6, 2, 3, 'COMPANY', '2014-04-28 20:40:48', NULL, '2014-04-28 20:39:54', 'showroom_company', NULL, 244, '46.38895474076167, 16.0408969904297', 'zavrč, slovenia', 'zavrc@mydomain.com', 'cropped-logo2.png');


#
# TABLE STRUCTURE FOR: showroom_lang
#

CREATE TABLE `showroom_lang` (
  `id_showroom_lang` int(11) NOT NULL,
  `showroom_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(160) COLLATE utf8_unicode_ci DEFAULT NULL,
  `window_title` varchar(160) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `keywords` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_showroom_lang`),
  KEY `fk_showroom_lang_showroom1_idx` (`showroom_id`),
  KEY `fk_showroom_lang_language1_idx` (`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `showroom_lang` (`id_showroom_lang`, `showroom_id`, `language_id`, `title`, `window_title`, `body`, `description`, `keywords`) VALUES (1, 1, 1, 'Car services', 'Car services', '', 'Car services', 'Car services');
INSERT INTO `showroom_lang` (`id_showroom_lang`, `showroom_id`, `language_id`, `title`, `window_title`, `body`, `description`, `keywords`) VALUES (3, 2, 1, 'Real estate services', 'Real estate services', '', '', 'Real estate services');
INSERT INTO `showroom_lang` (`id_showroom_lang`, `showroom_id`, `language_id`, `title`, `window_title`, `body`, `description`, `keywords`) VALUES (5, 3, 1, 'Tire repairs', 'Tire repairs', '', '', 'Tire repairs');
INSERT INTO `showroom_lang` (`id_showroom_lang`, `showroom_id`, `language_id`, `title`, `window_title`, `body`, `description`, `keywords`) VALUES (13, 6, 1, 'Estate sellers', 'Estate sellers', '<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vulputate \r\nnec neque gravida rhoncus. Donec sit amet blandit mauris, sed bibendum \r\nrisus. Cras ut urna semper, facilisis augue sed, imperdiet nulla. Duis \r\ntristique tellus tortor, dapibus gravida sem sodales id. Nullam quis \r\nconvallis libero, vitae pulvinar nisi.</p><p><span style=\"font-weight: bold;\">Nam eget est facilisis, porta mi \r\nac, ultricies enim. Proin nisi diam, eleifend ac eleifend in, dapibus in\r\n orci. Vestibulum elementum lectus non nisl venenatis, tempus molestie \r\nnisi tempus. Pellentesque facilisis nibh nec purus blandit, id aliquam \r\nlorem fermentum.\r\n</span></p>\r\n<p>\r\n<span style=\"font-style: italic;\">Ut erat lacus, sagittis ac leo eu, molestie mattis libero. Nam sit amet \r\nmassa et magna porttitor eleifend a aliquam nunc. Pellentesque a est a \r\naugue dignissim tristique eu nec augue. Integer pretium sollicitudin \r\ntellus, quis hendrerit nunc accumsan et. Fusce bibendum a neque vel \r\nfringilla. Vivamus viverra enim at purus gravida, in elementum neque \r\neleifend. Curabitur sodales dapibus urna, at mattis lacus eleifend non. \r\nDonec ultricies porta orci eu congue. Nulla sodales arcu a libero \r\naliquet, nec aliquam ante sagittis.</span></p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vulputate nec neque gravida rhoncus. Donec sit amet blandit mauris, sed bibendum risus.', 'Estate sellers');
INSERT INTO `showroom_lang` (`id_showroom_lang`, `showroom_id`, `language_id`, `title`, `window_title`, `body`, `description`, `keywords`) VALUES (15, 4, 1, 'Vulkanizer d.o.o.', 'Vulkanizer d.o.o.', '<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vulputate \r\nnec neque gravida rhoncus. Donec sit amet blandit mauris, sed bibendum \r\nrisus. Cras ut urna semper, facilisis augue sed, imperdiet nulla. Duis \r\ntristique tellus tortor, dapibus gravida sem sodales id. Nullam quis \r\nconvallis libero, vitae pulvinar nisi.</p><p><span style=\"font-weight: bold;\">Nam eget est facilisis, porta mi \r\nac, ultricies enim. Proin nisi diam, eleifend ac eleifend in, dapibus in\r\n orci. Vestibulum elementum lectus non nisl venenatis, tempus molestie \r\nnisi tempus. Pellentesque facilisis nibh nec purus blandit, id aliquam \r\nlorem fermentum.\r\n</span></p>\r\n<p>\r\n<span style=\"font-style: italic;\">Ut erat lacus, sagittis ac leo eu, molestie mattis libero. Nam sit amet \r\nmassa et magna porttitor eleifend a aliquam nunc. Pellentesque a est a \r\naugue dignissim tristique eu nec augue. Integer pretium sollicitudin \r\ntellus, quis hendrerit nunc accumsan et. Fusce bibendum a neque vel \r\nfringilla. Vivamus viverra enim at purus gravida, in elementum neque \r\neleifend. Curabitur sodales dapibus urna, at mattis lacus eleifend non. \r\nDonec ultricies porta orci eu congue. Nulla sodales arcu a libero \r\naliquet, nec aliquam ante sagittis.</span></p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vulputate nec neque gravida rhoncus. Donec sit amet blandit mauris, sed bibendum risus.', 'tire repair, cestica, company,car');
INSERT INTO `showroom_lang` (`id_showroom_lang`, `showroom_id`, `language_id`, `title`, `window_title`, `body`, `description`, `keywords`) VALUES (17, 5, 1, 'Towing service ltd', 'Towing service ltd', '<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vulputate \r\nnec neque gravida rhoncus. Donec sit amet blandit mauris, sed bibendum \r\nrisus. Cras ut urna semper, facilisis augue sed, imperdiet nulla. Duis \r\ntristique tellus tortor, dapibus gravida sem sodales id. Nullam quis \r\nconvallis libero, vitae pulvinar nisi.</p><p><span style=\"font-weight: bold;\">Nam eget est facilisis, porta mi \r\nac, ultricies enim. Proin nisi diam, eleifend ac eleifend in, dapibus in\r\n orci. Vestibulum elementum lectus non nisl venenatis, tempus molestie \r\nnisi tempus. Pellentesque facilisis nibh nec purus blandit, id aliquam \r\nlorem fermentum.\r\n</span></p>\r\n<p>\r\n<span style=\"font-style: italic;\">Ut erat lacus, sagittis ac leo eu, molestie mattis libero. Nam sit amet \r\nmassa et magna porttitor eleifend a aliquam nunc. Pellentesque a est a \r\naugue dignissim tristique eu nec augue. Integer pretium sollicitudin \r\ntellus, quis hendrerit nunc accumsan et. Fusce bibendum a neque vel \r\nfringilla. Vivamus viverra enim at purus gravida, in elementum neque \r\neleifend. Curabitur sodales dapibus urna, at mattis lacus eleifend non. \r\nDonec ultricies porta orci eu congue. Nulla sodales arcu a libero \r\naliquet, nec aliquam ante sagittis.</span></p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vulputate nec neque gravida rhoncus. Donec sit amet blandit mauris, sed bibendum risus.', 'towing,car,service');
INSERT INTO `showroom_lang` (`id_showroom_lang`, `showroom_id`, `language_id`, `title`, `window_title`, `body`, `description`, `keywords`) VALUES (25, 1, 4, 'Car services', 'Car services', '', 'Car services', 'Car services');
INSERT INTO `showroom_lang` (`id_showroom_lang`, `showroom_id`, `language_id`, `title`, `window_title`, `body`, `description`, `keywords`) VALUES (26, 2, 4, 'Real estate services', 'Real estate services', '', '', 'Real estate services');
INSERT INTO `showroom_lang` (`id_showroom_lang`, `showroom_id`, `language_id`, `title`, `window_title`, `body`, `description`, `keywords`) VALUES (27, 3, 4, 'Tire repairs', 'Tire repairs', '', '', 'Tire repairs');
INSERT INTO `showroom_lang` (`id_showroom_lang`, `showroom_id`, `language_id`, `title`, `window_title`, `body`, `description`, `keywords`) VALUES (28, 6, 4, 'Estate sellers', 'Estate sellers', '<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vulputate \r\nnec neque gravida rhoncus. Donec sit amet blandit mauris, sed bibendum \r\nrisus. Cras ut urna semper, facilisis augue sed, imperdiet nulla. Duis \r\ntristique tellus tortor, dapibus gravida sem sodales id. Nullam quis \r\nconvallis libero, vitae pulvinar nisi.</p><p><span style=\"font-weight: bold;\">Nam eget est facilisis, porta mi \r\nac, ultricies enim. Proin nisi diam, eleifend ac eleifend in, dapibus in\r\n orci. Vestibulum elementum lectus non nisl venenatis, tempus molestie \r\nnisi tempus. Pellentesque facilisis nibh nec purus blandit, id aliquam \r\nlorem fermentum.\r\n</span></p>\r\n<p>\r\n<span style=\"font-style: italic;\">Ut erat lacus, sagittis ac leo eu, molestie mattis libero. Nam sit amet \r\nmassa et magna porttitor eleifend a aliquam nunc. Pellentesque a est a \r\naugue dignissim tristique eu nec augue. Integer pretium sollicitudin \r\ntellus, quis hendrerit nunc accumsan et. Fusce bibendum a neque vel \r\nfringilla. Vivamus viverra enim at purus gravida, in elementum neque \r\neleifend. Curabitur sodales dapibus urna, at mattis lacus eleifend non. \r\nDonec ultricies porta orci eu congue. Nulla sodales arcu a libero \r\naliquet, nec aliquam ante sagittis.</span></p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vulputate nec neque gravida rhoncus. Donec sit amet blandit mauris, sed bibendum risus.', 'Estate sellers');
INSERT INTO `showroom_lang` (`id_showroom_lang`, `showroom_id`, `language_id`, `title`, `window_title`, `body`, `description`, `keywords`) VALUES (29, 4, 4, 'Vulkanizer d.o.o.', 'Vulkanizer d.o.o.', '<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vulputate \r\nnec neque gravida rhoncus. Donec sit amet blandit mauris, sed bibendum \r\nrisus. Cras ut urna semper, facilisis augue sed, imperdiet nulla. Duis \r\ntristique tellus tortor, dapibus gravida sem sodales id. Nullam quis \r\nconvallis libero, vitae pulvinar nisi.</p><p><span style=\"font-weight: bold;\">Nam eget est facilisis, porta mi \r\nac, ultricies enim. Proin nisi diam, eleifend ac eleifend in, dapibus in\r\n orci. Vestibulum elementum lectus non nisl venenatis, tempus molestie \r\nnisi tempus. Pellentesque facilisis nibh nec purus blandit, id aliquam \r\nlorem fermentum.\r\n</span></p>\r\n<p>\r\n<span style=\"font-style: italic;\">Ut erat lacus, sagittis ac leo eu, molestie mattis libero. Nam sit amet \r\nmassa et magna porttitor eleifend a aliquam nunc. Pellentesque a est a \r\naugue dignissim tristique eu nec augue. Integer pretium sollicitudin \r\ntellus, quis hendrerit nunc accumsan et. Fusce bibendum a neque vel \r\nfringilla. Vivamus viverra enim at purus gravida, in elementum neque \r\neleifend. Curabitur sodales dapibus urna, at mattis lacus eleifend non. \r\nDonec ultricies porta orci eu congue. Nulla sodales arcu a libero \r\naliquet, nec aliquam ante sagittis.</span></p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vulputate nec neque gravida rhoncus. Donec sit amet blandit mauris, sed bibendum risus.', 'tire repair, cestica, company,car');
INSERT INTO `showroom_lang` (`id_showroom_lang`, `showroom_id`, `language_id`, `title`, `window_title`, `body`, `description`, `keywords`) VALUES (30, 5, 4, 'Towing service ltd', 'Towing service ltd', '<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vulputate \r\nnec neque gravida rhoncus. Donec sit amet blandit mauris, sed bibendum \r\nrisus. Cras ut urna semper, facilisis augue sed, imperdiet nulla. Duis \r\ntristique tellus tortor, dapibus gravida sem sodales id. Nullam quis \r\nconvallis libero, vitae pulvinar nisi.</p><p><span style=\"font-weight: bold;\">Nam eget est facilisis, porta mi \r\nac, ultricies enim. Proin nisi diam, eleifend ac eleifend in, dapibus in\r\n orci. Vestibulum elementum lectus non nisl venenatis, tempus molestie \r\nnisi tempus. Pellentesque facilisis nibh nec purus blandit, id aliquam \r\nlorem fermentum.\r\n</span></p>\r\n<p>\r\n<span style=\"font-style: italic;\">Ut erat lacus, sagittis ac leo eu, molestie mattis libero. Nam sit amet \r\nmassa et magna porttitor eleifend a aliquam nunc. Pellentesque a est a \r\naugue dignissim tristique eu nec augue. Integer pretium sollicitudin \r\ntellus, quis hendrerit nunc accumsan et. Fusce bibendum a neque vel \r\nfringilla. Vivamus viverra enim at purus gravida, in elementum neque \r\neleifend. Curabitur sodales dapibus urna, at mattis lacus eleifend non. \r\nDonec ultricies porta orci eu congue. Nulla sodales arcu a libero \r\naliquet, nec aliquam ante sagittis.</span></p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vulputate nec neque gravida rhoncus. Donec sit amet blandit mauris, sed bibendum risus.', 'towing,car,service');


#
# TABLE STRUCTURE FOR: reservations
#

CREATE TABLE `reservations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `date_from` datetime NOT NULL,
  `date_to` datetime NOT NULL,
  `total_price` decimal(10,2) DEFAULT NULL,
  `currency_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'USD',
  `date_paid_advance` datetime DEFAULT NULL,
  `date_paid_total` datetime DEFAULT NULL,
  `total_paid` decimal(10,2) DEFAULT NULL,
  `is_confirmed` tinyint(1) DEFAULT '0',
  `saller_id` int(11) DEFAULT NULL,
  `booking_fee` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_reservations_user1_idx` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: rates
#

CREATE TABLE `rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `property_id` int(11) NOT NULL,
  `date_from` datetime NOT NULL,
  `date_to` datetime NOT NULL,
  `min_stay` int(11) DEFAULT '1',
  `changeover_day` int(11) DEFAULT '6',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `rates` (`id`, `property_id`, `date_from`, `date_to`, `min_stay`, `changeover_day`) VALUES (2, 8, '2014-12-30 18:58:29', '2015-12-30 18:58:29', 7, 6);
INSERT INTO `rates` (`id`, `property_id`, `date_from`, `date_to`, `min_stay`, `changeover_day`) VALUES (3, 8, '2014-07-01 22:46:21', '2014-12-01 22:46:21', 7, 6);


#
# TABLE STRUCTURE FOR: rates_lang
#

CREATE TABLE `rates_lang` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rates_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `rate_nightly` decimal(10,2) DEFAULT NULL,
  `rate_weekly` decimal(10,2) DEFAULT NULL,
  `rate_monthly` decimal(10,2) DEFAULT NULL,
  `currency_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT 'USD' COMMENT 'USD, EUR, HRK...',
  PRIMARY KEY (`id`),
  KEY `fk_raes_lang_rates1_idx` (`rates_id`),
  KEY `fk_raes_lang_language1_idx` (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `rates_lang` (`id`, `rates_id`, `language_id`, `rate_nightly`, `rate_weekly`, `rate_monthly`, `currency_code`) VALUES (21, 3, 1, '10.00', '100.00', '1000.00', 'USD');
INSERT INTO `rates_lang` (`id`, `rates_id`, `language_id`, `rate_nightly`, `rate_weekly`, `rate_monthly`, `currency_code`) VALUES (24, 3, 4, '10.00', '100.00', '1000.00', 'USD');


#
# TABLE STRUCTURE FOR: qa
#

CREATE TABLE `qa` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `date_publish` datetime DEFAULT NULL,
  `question_user_id` int(11) DEFAULT NULL,
  `type` varchar(45) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'CATEGORY',
  `is_readed` tinyint(1) DEFAULT '0',
  `answer_user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `qa` (`id`, `parent_id`, `order`, `date`, `date_modified`, `date_publish`, `question_user_id`, `type`, `is_readed`, `answer_user_id`) VALUES (1, 0, 1, '2014-05-08 14:13:45', NULL, NULL, NULL, 'CATEGORY', 0, NULL);
INSERT INTO `qa` (`id`, `parent_id`, `order`, `date`, `date_modified`, `date_publish`, `question_user_id`, `type`, `is_readed`, `answer_user_id`) VALUES (2, 0, 2, '2014-05-08 14:14:46', NULL, NULL, NULL, 'CATEGORY', 0, NULL);
INSERT INTO `qa` (`id`, `parent_id`, `order`, `date`, `date_modified`, `date_publish`, `question_user_id`, `type`, `is_readed`, `answer_user_id`) VALUES (4, 1, 2, '2014-05-08 22:22:53', NULL, '2014-05-08 22:22:51', NULL, 'QUESTION', 1, 9);
INSERT INTO `qa` (`id`, `parent_id`, `order`, `date`, `date_modified`, `date_publish`, `question_user_id`, `type`, `is_readed`, `answer_user_id`) VALUES (5, 2, 2, '2014-05-09 19:58:23', NULL, '2014-05-09 19:58:17', NULL, 'QUESTION', 1, 9);
INSERT INTO `qa` (`id`, `parent_id`, `order`, `date`, `date_modified`, `date_publish`, `question_user_id`, `type`, `is_readed`, `answer_user_id`) VALUES (6, 1, 2, '2014-06-17 15:33:16', NULL, '2014-06-17 15:32:57', NULL, 'QUESTION', 1, 11);


#
# TABLE STRUCTURE FOR: qa_lang
#

CREATE TABLE `qa_lang` (
  `id_qa_lang` int(11) NOT NULL AUTO_INCREMENT,
  `qa_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `question` text COLLATE utf8_unicode_ci,
  `answer` text COLLATE utf8_unicode_ci,
  `keywords` varchar(160) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_qa_lang`),
  KEY `fk_qa_lang_qa1_idx` (`qa_id`),
  KEY `fk_qa_lang_language1_idx` (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `qa_lang` (`id_qa_lang`, `qa_id`, `language_id`, `question`, `answer`, `keywords`) VALUES (3, 2, 1, 'Landscape Architect', NULL, NULL);
INSERT INTO `qa_lang` (`id_qa_lang`, `qa_id`, `language_id`, `question`, `answer`, `keywords`) VALUES (5, 1, 1, 'Properties interior expert', NULL, NULL);
INSERT INTO `qa_lang` (`id_qa_lang`, `qa_id`, `language_id`, `question`, `answer`, `keywords`) VALUES (55, 4, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vulputate nec neque gravida rhoncus. Donec sit amet blandit mauris, sed bibendum risus?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vulputate nec neque gravida rhoncus. Donec sit amet blandit mauris, sed bibendum risus.', 'kktest');
INSERT INTO `qa_lang` (`id_qa_lang`, `qa_id`, `language_id`, `question`, `answer`, `keywords`) VALUES (59, 6, 1, 'Test', 'Test', 'Test');
INSERT INTO `qa_lang` (`id_qa_lang`, `qa_id`, `language_id`, `question`, `answer`, `keywords`) VALUES (61, 5, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vulputate nec neque gravida rhoncus. Donec sit amet blandit mauris, sed bibendum risus?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vulputate nec neque gravida rhoncus. Donec sit amet blandit mauris, sed bibendum risus.', '');
INSERT INTO `qa_lang` (`id_qa_lang`, `qa_id`, `language_id`, `question`, `answer`, `keywords`) VALUES (68, 2, 4, 'Landscape Architect', NULL, NULL);
INSERT INTO `qa_lang` (`id_qa_lang`, `qa_id`, `language_id`, `question`, `answer`, `keywords`) VALUES (69, 1, 4, 'Properties interior expert', NULL, NULL);
INSERT INTO `qa_lang` (`id_qa_lang`, `qa_id`, `language_id`, `question`, `answer`, `keywords`) VALUES (70, 4, 4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vulputate nec neque gravida rhoncus. Donec sit amet blandit mauris, sed bibendum risus?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vulputate nec neque gravida rhoncus. Donec sit amet blandit mauris, sed bibendum risus.', 'kktest');
INSERT INTO `qa_lang` (`id_qa_lang`, `qa_id`, `language_id`, `question`, `answer`, `keywords`) VALUES (71, 6, 4, 'Test', 'Test', 'Test');
INSERT INTO `qa_lang` (`id_qa_lang`, `qa_id`, `language_id`, `question`, `answer`, `keywords`) VALUES (72, 5, 4, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vulputate nec neque gravida rhoncus. Donec sit amet blandit mauris, sed bibendum risus?', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vulputate nec neque gravida rhoncus. Donec sit amet blandit mauris, sed bibendum risus.', '');


#
# TABLE STRUCTURE FOR: file
#

CREATE TABLE `file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order` int(11) DEFAULT NULL,
  `filename` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `filetype` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `repository_id` int(11) NOT NULL,
  `alt` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `listing_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `filename_UNIQUE` (`filename`),
  KEY `fk_file_repository1_idx` (`repository_id`)
) ENGINE=InnoDB AUTO_INCREMENT=379 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (1, 1, 'sandi.winter.jpg', 'image/jpeg', 6, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (69, 32, '162803672_8244db2362_o (1).jpg', 'image/jpeg', 199, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (70, 33, '5388656350_fc498d8f1f_b (1).jpg', 'image/jpeg', 199, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (71, 34, '5388051533_4e871bde69_b (1).jpg', 'image/jpeg', 199, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (91, 1, '413539183_cc8e400d9d_o.jpg', 'image/jpeg', 24, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (92, 2, '413539186_5b9d7a1390_o.jpg', 'image/jpeg', 24, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (93, 3, '413539179_0f7a2d340c_o.jpg', 'image/jpeg', 24, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (94, 4, '413539182_ca0a93549d_o.jpg', 'image/jpeg', 24, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (95, 39, '5388658660_975a93b2ae_b (1).jpg', 'image/jpeg', 207, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (96, 40, '5388053335_81ea378b09_b (1).jpg', 'image/jpeg', 207, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (97, 41, '5388053637_ba77c0b486_b (1).jpg', 'image/jpeg', 207, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (98, 42, '5388050721_b84cf3a0a3_b (1).jpg', 'image/jpeg', 208, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (99, 43, '5388050983_0bf177bb8a_b (1).jpg', 'image/jpeg', 208, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (100, 44, '5388050419_e3ef95b8eb_b (1).jpg', 'image/jpeg', 209, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (101, 45, '576752732_a5c79cbb1f_o (1).jpg', 'image/jpeg', 209, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (102, 46, '5388051239_00764065f2_b (1).jpg', 'image/jpeg', 211, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (103, 47, '1199605400_2b897736d1_o (1).jpg', 'image/jpeg', 211, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (104, 48, '501843272_9479110f60_b.jpg', 'image/jpeg', 24, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (105, 1, 'jira-728x90jpg.jpg', 'image/jpeg', 235, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (107, 2, 'feedingamerica_728x90.gif', 'image/gif', 235, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (109, 49, 'creative-banners-volkswagen-golf-australia-launch.jpg', 'image/jpeg', 238, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (110, 50, 'moki-preka-draudimas-180x150px-1.jpg', 'image/jpeg', 239, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (111, 51, 'wtc_promobutton2.jpg', 'image/jpeg', 239, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (112, 52, '5388057701_5a618e8a9e_b (1).jpg', 'image/jpeg', 240, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (113, 53, '5388058111_cbf80b7902_b (1).jpg', 'image/jpeg', 240, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (122, 1, 'wap-logo v2.png', 'image/png', 241, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (123, 2, 'Row-of-New-Ties-in-the-Shop.jpg', 'image/jpeg', 241, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (124, 4, 'aresol-flat-tire-repair.jpg', 'image/jpeg', 241, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (125, 3, 'Tampa-Tire-Repair.jpg', 'image/jpeg', 241, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (126, 54, 'logo-350.png', 'image/png', 243, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (127, 55, '14504018.jpg', 'image/jpeg', 243, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (128, 56, '780354570.jpg', 'image/jpeg', 243, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (129, 57, 'cropped-logo2.png', 'image/png', 244, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (130, 58, 'ar123766726859378.jpg', 'image/jpeg', 244, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (131, 59, 'original.jpg', 'image/jpeg', 244, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (132, 60, 'sellers-market.jpg', 'image/jpeg', 244, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (136, 64, 'apartment-sketch (1).pdf', 'application/pdf', 244, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (140, 66, 'adzoo_728x90 (4).gif', 'image/gif', 235, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (256, 85, 'real_estate_banneragent.jpg', 'image/jpeg', 281, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (257, 86, 'bg_hero_repair_930px_x_250px.png', 'image/png', 280, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (260, 87, 'zoom.jpg', 'image/jpeg', 196, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (304, 1, 'empty.png', 'image/png', 310, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (305, 2, 'park.png', 'image/png', 310, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (306, 3, 'sights.png', 'image/png', 310, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (307, 4, 'restaurant.png', 'image/png', 310, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (308, 5, 'bakery.png', 'image/png', 310, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (309, 6, 'coffee.png', 'image/png', 310, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (310, 7, 'stadium.png', 'image/png', 310, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (311, 8, 'school.png', 'image/png', 310, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (312, 9, 'shopping_center.png', 'image/png', 310, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (314, 11, 'cinema.png', 'image/png', 310, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (315, 12, 'piazza.png', 'image/png', 310, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (316, 13, 'hotel.png', 'image/png', 310, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (317, 14, 'ambulance.png', 'image/png', 310, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (318, 15, 'police.png', 'image/png', 310, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (319, 16, 'd20f83ee69.png', 'image/png', 310, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (320, 17, 'train.png', 'image/png', 310, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (321, 10, '37b51d194a.png', 'image/png', 310, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (323, 5, 'type_4.png', 'image/png', 309, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (324, 6, 'type_5.png', 'image/png', 309, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (325, 7, 'type_6.png', 'image/png', 309, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (326, 8, 'type_7.png', 'image/png', 309, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (327, 4, 'type_3.png', 'image/png', 309, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (328, 9, 'type_8.png', 'image/png', 309, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (329, 11, 'type_10.png', 'image/png', 309, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (330, 10, 'type_9.png', 'image/png', 309, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (331, 12, 'type_11.png', 'image/png', 309, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (332, 14, 'type_13.png', 'image/png', 309, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (333, 15, 'type_14.png', 'image/png', 309, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (334, 13, 'type_12.png', 'image/png', 309, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (335, 16, 'type_15.png', 'image/png', 309, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (336, 1, 'type_0.png', 'image/png', 309, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (337, 2, 'type_1.png', 'image/png', 309, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (338, 3, 'type_2.png', 'image/png', 309, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (339, 17, 'type_16.png', 'image/png', 309, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (340, 18, 'type_17.png', 'image/png', 309, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (353, 19, 'type_18.png', 'image/png', 309, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (354, 20, 'type_19.png', 'image/png', 309, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (355, 21, 'type_20.png', 'image/png', 309, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (356, 22, 'type_21.png', 'image/png', 309, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (357, 25, 'type_24.png', 'image/png', 309, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (358, 24, 'type_23.png', 'image/png', 309, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (359, 23, 'type_22.png', 'image/png', 309, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (360, 108, 'type_25.png', 'image/png', 309, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (361, 109, 'type_26.png', 'image/png', 309, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (362, 110, 'type_27.png', 'image/png', 309, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (363, 111, 'type_28.png', 'image/png', 309, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (364, 112, 'type_29.png', 'image/png', 309, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (372, 115, 'albania.jpg', 'image/jpeg', 22, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (374, 117, 'prove (1).jpg', 'image/jpeg', 454, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (375, 118, 'albania (1).jpg', 'image/jpeg', 186, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (377, 119, 'wallpaper.jpg', 'image/jpeg', 448, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `file` (`id`, `order`, `filename`, `filetype`, `repository_id`, `alt`, `description`, `title`, `link`, `listing_id`) VALUES (378, 120, 'albania (2).jpg', 'image/jpeg', 449, NULL, NULL, NULL, NULL, NULL);


#
# TABLE STRUCTURE FOR: property_value
#

CREATE TABLE `property_value` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `value_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_property_value_language1_idx` (`language_id`),
  KEY `fk_property_value_property1_idx` (`property_id`),
  KEY `fk_property_value_option1_idx` (`option_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17429 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15101, 4, 38, 10, 'asdasdasd', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15102, 4, 38, 78, '5 maji', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15103, 4, 38, 8, '<p>asdasd asd</p>', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15104, 4, 38, 17, '<p>estate</p>', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15105, 4, 38, 6, 'Park', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15106, 4, 38, 56, '0', 0);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15107, 4, 38, 1, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15108, 4, 38, 4, 'Argetim', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15109, 4, 38, 2, 'Park', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15110, 4, 38, 40, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15111, 4, 38, 3, 'Më pak se 50m2', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15112, 4, 38, 81, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15113, 4, 38, 66, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15114, 4, 38, 64, 'Kukës - Tropojë -', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15115, 4, 38, 74, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15116, 4, 38, 68, '23135165', 23135165);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15117, 4, 38, 72, '<p>estate</p>', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15118, 4, 38, 43, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15119, 4, 38, 44, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15120, 4, 38, 45, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15121, 4, 38, 46, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15122, 4, 38, 47, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15123, 4, 38, 48, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15124, 1, 38, 10, 'asdasdasd', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15125, 1, 38, 78, '5 maji', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15126, 1, 38, 8, '<p>asdasd asd</p>', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15127, 1, 38, 17, '<p>estate</p>', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15128, 1, 38, 6, 'empty', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15129, 1, 38, 56, '0', 0);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15130, 1, 38, 1, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15131, 1, 38, 4, 'Fun', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15132, 1, 38, 2, 'Park', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15133, 1, 38, 40, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15134, 1, 38, 3, 'Less than 50m2', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15135, 1, 38, 81, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15136, 1, 38, 66, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15137, 1, 38, 64, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15138, 1, 38, 74, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15139, 1, 38, 68, '23135165', 23135165);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15140, 1, 38, 72, '<p>estate</p>', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15141, 1, 38, 43, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15142, 1, 38, 44, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15143, 1, 38, 45, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15144, 1, 38, 46, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15145, 1, 38, 47, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15146, 1, 38, 48, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15331, 4, 37, 10, 'Location pare Tirane', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15332, 4, 37, 78, 'Location pare Tirane', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15333, 4, 37, 8, '<p>Location pare Tirane</p>', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15334, 4, 37, 17, '<p>Location pare Tirane</p>', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15335, 4, 37, 6, 'Xhami', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15336, 4, 37, 56, '5', 5);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15337, 4, 37, 1, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15338, 4, 37, 4, 'Mesim', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15339, 4, 37, 2, 'Xhami', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15340, 4, 37, 40, '1001', 1001);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15341, 4, 37, 3, 'Më pak se 50m2', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15342, 4, 37, 81, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15343, 4, 37, 66, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15344, 4, 37, 64, 'Tiranë - Vorë -', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15345, 4, 37, 74, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15346, 4, 37, 68, '13214564654', 2147483647);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15347, 4, 37, 72, '<p>dsasdasdawdaw</p>', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15348, 4, 37, 43, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15349, 4, 37, 44, '/', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15350, 4, 37, 45, '/', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15351, 4, 37, 46, '/', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15352, 4, 37, 47, '/', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15353, 4, 37, 48, '/', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15354, 1, 37, 10, 'Location pare Tirane', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15355, 1, 37, 78, 'Location pare Tirane', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15356, 1, 37, 8, '<p>Location pare Tirane</p>', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15357, 1, 37, 17, '<p>Location pare Tirane</p>', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15358, 1, 37, 6, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15359, 1, 37, 56, '5', 5);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15360, 1, 37, 1, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15361, 1, 37, 4, 'Learning', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15362, 1, 37, 2, 'Mosque', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15363, 1, 37, 40, '1001', 1001);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15364, 1, 37, 3, 'Less than 50m2', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15365, 1, 37, 81, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15366, 1, 37, 66, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15367, 1, 37, 64, 'Tiranë - Vorë -', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15368, 1, 37, 74, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15369, 1, 37, 68, '13214564654', 2147483647);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15370, 1, 37, 72, '<p>dsasdasdawdaw</p>', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15371, 1, 37, 43, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15372, 1, 37, 44, '/', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15373, 1, 37, 45, '/', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15374, 1, 37, 46, '/', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15375, 1, 37, 47, '/', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15376, 1, 37, 48, '/', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15377, 4, 39, 10, 'asdasdasd', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15378, 4, 39, 78, '5 maji', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15379, 4, 39, 8, '<p>asdasd asd</p>', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15380, 4, 39, 17, '<p>estate</p>', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15381, 4, 39, 6, 'Park', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15382, 4, 39, 56, '0', 0);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15383, 4, 39, 1, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15384, 4, 39, 4, 'Argetim', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15385, 4, 39, 2, 'Park', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15386, 4, 39, 40, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15387, 4, 39, 3, 'Më pak se 50m2', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15388, 4, 39, 81, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15389, 4, 39, 66, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15390, 4, 39, 64, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15391, 4, 39, 68, '23135165', 23135165);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15392, 4, 39, 72, '<p>estate</p>', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15393, 4, 39, 43, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15394, 4, 39, 44, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15395, 4, 39, 45, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15396, 4, 39, 46, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15397, 4, 39, 47, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15398, 4, 39, 48, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15399, 1, 39, 10, 'asdasdasd', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15400, 1, 39, 78, '5 maji', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15401, 1, 39, 8, '<p>asdasd asd</p>', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15402, 1, 39, 17, '<p>estate</p>', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15403, 1, 39, 6, 'empty', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15404, 1, 39, 56, '0', 0);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15405, 1, 39, 1, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15406, 1, 39, 4, 'Fun', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15407, 1, 39, 2, 'Park', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15408, 1, 39, 40, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15409, 1, 39, 3, 'Less than 50m2', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15410, 1, 39, 81, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15411, 1, 39, 66, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15412, 1, 39, 64, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15413, 1, 39, 68, '23135165', 23135165);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15414, 1, 39, 72, '<p>estate</p>', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15415, 1, 39, 43, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15416, 1, 39, 44, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15417, 1, 39, 45, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15418, 1, 39, 46, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15419, 1, 39, 47, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (15420, 1, 39, 48, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (16940, 4, 41, 10, 'nona fare', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (16941, 4, 41, 78, 'Futja Kot', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (16942, 4, 41, 8, '<p>asdasd</p>', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (16943, 4, 41, 17, '<p>asdasd</p>', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (16944, 4, 41, 6, 'Park', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (16945, 4, 41, 56, '3', 3);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (16946, 4, 41, 1, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (16947, 4, 41, 4, 'Argetim', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (16948, 4, 41, 2, 'Park', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (16949, 4, 41, 40, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (16950, 4, 41, 3, '50-100m²', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (16951, 4, 41, 81, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (16952, 4, 41, 66, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (16953, 4, 41, 64, 'Tiranë - Tiranë -', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (16954, 4, 41, 74, '453', 453);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (16955, 4, 41, 68, '23135165', 23135165);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (16956, 4, 41, 72, '<p>asdasd</p>', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (16957, 4, 41, 43, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (16958, 4, 41, 44, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (16959, 4, 41, 45, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (16960, 4, 41, 46, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (16961, 4, 41, 47, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (16962, 4, 41, 48, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (16963, 1, 41, 10, 'nona fare', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (16964, 1, 41, 78, 'Futja Kot', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (16965, 1, 41, 8, '<p>asdasd</p>', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (16966, 1, 41, 17, '<p>asdasd</p>', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (16967, 1, 41, 6, 'empty', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (16968, 1, 41, 56, '3', 3);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (16969, 1, 41, 1, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (16970, 1, 41, 4, 'Fun', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (16971, 1, 41, 2, 'Park', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (16972, 1, 41, 40, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (16973, 1, 41, 3, 'Less than 50m²', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (16974, 1, 41, 81, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (16975, 1, 41, 66, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (16976, 1, 41, 64, 'Tiranë - Tiranë -', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (16977, 1, 41, 68, '23135165', 23135165);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (16978, 1, 41, 72, '<p>asdasd</p>', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (16979, 1, 41, 43, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (16980, 1, 41, 44, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (16981, 1, 41, 45, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (16982, 1, 41, 46, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (16983, 1, 41, 47, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (16984, 1, 41, 48, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17165, 4, 43, 10, 'Tirane 1', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17166, 4, 43, 78, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17167, 4, 43, 8, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17168, 4, 43, 17, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17169, 4, 43, 6, 'Furre Buke', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17170, 4, 43, 56, '0', 0);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17171, 4, 43, 1, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17172, 4, 43, 4, 'Ushqim dhe Pije', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17173, 4, 43, 2, 'Furre Buke', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17174, 4, 43, 40, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17175, 4, 43, 3, 'Më pak se 50m²', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17176, 4, 43, 81, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17177, 4, 43, 66, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17178, 4, 43, 64, 'Tiranë - Tiranë -', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17179, 4, 43, 68, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17180, 4, 43, 72, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17181, 4, 43, 43, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17182, 4, 43, 44, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17183, 4, 43, 45, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17184, 4, 43, 46, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17185, 4, 43, 47, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17186, 4, 43, 48, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17187, 1, 43, 10, 'Tirane 1', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17188, 1, 43, 78, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17189, 1, 43, 8, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17190, 1, 43, 17, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17191, 1, 43, 6, 'restaurant', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17192, 1, 43, 56, '0', 0);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17193, 1, 43, 1, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17194, 1, 43, 4, 'Food and drink', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17195, 1, 43, 2, 'Bakery', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17196, 1, 43, 40, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17197, 1, 43, 3, 'Less than 50m²', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17198, 1, 43, 81, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17199, 1, 43, 66, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17200, 1, 43, 64, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17201, 1, 43, 68, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17202, 1, 43, 72, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17203, 1, 43, 43, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17204, 1, 43, 44, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17205, 1, 43, 45, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17206, 1, 43, 46, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17207, 1, 43, 47, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17208, 1, 43, 48, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17341, 4, 40, 10, '123asdasd', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17342, 4, 40, 78, 'as', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17343, 4, 40, 8, '<p>asd</p>', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17344, 4, 40, 17, '<p>asdasd123e zssd asd</p>', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17345, 4, 40, 6, 'Park', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17346, 4, 40, 56, '0', 0);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17347, 4, 40, 1, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17348, 4, 40, 4, 'Argetim', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17349, 4, 40, 2, 'Park', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17350, 4, 40, 40, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17351, 4, 40, 3, 'Më shumë se 100m²', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17352, 4, 40, 81, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17353, 4, 40, 66, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17354, 4, 40, 64, 'Tiranë - Tiranë -', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17355, 4, 40, 68, '23135165', 23135165);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17356, 4, 40, 72, '<p>asdasd</p>', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17357, 4, 40, 43, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17358, 4, 40, 44, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17359, 4, 40, 45, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17360, 4, 40, 46, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17361, 4, 40, 47, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17362, 4, 40, 48, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17363, 1, 40, 10, '123asdasd', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17364, 1, 40, 78, 'as', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17365, 1, 40, 8, '<p>asd</p>', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17366, 1, 40, 17, '<p>asdasd123e zssd asd</p>', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17367, 1, 40, 6, 'empty', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17368, 1, 40, 56, '0', 0);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17369, 1, 40, 1, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17370, 1, 40, 4, 'Fun', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17371, 1, 40, 2, 'Park', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17372, 1, 40, 40, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17373, 1, 40, 3, 'Less than 50m²', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17374, 1, 40, 81, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17375, 1, 40, 66, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17376, 1, 40, 64, 'Tiranë - Tiranë -', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17377, 1, 40, 68, '23135165', 23135165);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17378, 1, 40, 72, '<p>asdasd</p>', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17379, 1, 40, 43, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17380, 1, 40, 44, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17381, 1, 40, 45, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17382, 1, 40, 46, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17383, 1, 40, 47, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17384, 1, 40, 48, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17385, 4, 42, 10, 'sadsadsa', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17386, 4, 42, 78, 'location i ri', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17387, 4, 42, 8, '<p>asdasdsadsasd</p>', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17388, 4, 42, 17, '<p>dsdasdasd</p>', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17389, 4, 42, 6, 'Park', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17390, 4, 42, 56, '2', 2);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17391, 4, 42, 1, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17392, 4, 42, 4, 'Argetim', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17393, 4, 42, 2, 'Park', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17394, 4, 42, 40, '4654', 4654);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17395, 4, 42, 3, 'Më pak se 50m²', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17396, 4, 42, 81, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17397, 4, 42, 66, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17398, 4, 42, 64, 'Tiranë - Tiranë -', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17399, 4, 42, 68, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17400, 4, 42, 72, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17401, 4, 42, 43, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17402, 4, 42, 44, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17403, 4, 42, 45, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17404, 4, 42, 46, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17405, 4, 42, 47, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17406, 4, 42, 48, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17407, 1, 42, 10, 'sadsadsa', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17408, 1, 42, 78, 'location i ri', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17409, 1, 42, 8, '<p>asdasdsadsa</p>', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17410, 1, 42, 17, '<p>dsdasdasd</p>', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17411, 1, 42, 6, 'empty', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17412, 1, 42, 56, '2', 2);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17413, 1, 42, 1, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17414, 1, 42, 4, 'Fun', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17415, 1, 42, 2, 'Park', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17416, 1, 42, 40, '4654', 4654);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17417, 1, 42, 3, 'Less than 50m²', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17418, 1, 42, 81, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17419, 1, 42, 66, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17420, 1, 42, 64, 'Tiranë - Tiranë -', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17421, 1, 42, 68, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17422, 1, 42, 72, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17423, 1, 42, 43, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17424, 1, 42, 44, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17425, 1, 42, 45, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17426, 1, 42, 46, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17427, 1, 42, 47, '', NULL);
INSERT INTO `property_value` (`id`, `language_id`, `property_id`, `option_id`, `value`, `value_num`) VALUES (17428, 1, 42, 48, '', NULL);


#
# TABLE STRUCTURE FOR: enquire
#

CREATE TABLE `enquire` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `property_id` int(11) DEFAULT NULL,
  `name_surname` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `mail` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `readed` binary(1) DEFAULT '0',
  `address` text COLLATE utf8_unicode_ci,
  `fromdate` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `todate` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_reply` text COLLATE utf8_unicode_ci,
  `agent_id` int(11) DEFAULT NULL,
  `from_id` int(11) DEFAULT NULL,
  `to_id` int(11) DEFAULT NULL,
  `del_from` int(11) NOT NULL DEFAULT '0',
  `del_to` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `fk_enquire_property1_idx` (`property_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: property_user
#

CREATE TABLE `property_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `property_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_property_has_user_user1_idx` (`user_id`),
  KEY `fk_property_has_user_property1_idx` (`property_id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `property_user` (`id`, `property_id`, `user_id`) VALUES (62, 40, 57);
INSERT INTO `property_user` (`id`, `property_id`, `user_id`) VALUES (64, 41, 59);


#
# TABLE STRUCTURE FOR: treefield
#

CREATE TABLE `treefield` (
  `id` int(11) NOT NULL,
  `field_id` int(11) DEFAULT NULL,
  `root_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `field_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template` varchar(100) COLLATE utf8_unicode_ci DEFAULT 'treefield',
  `repository_id` int(11) DEFAULT NULL,
  `image_filename` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `affilate_price` decimal(10,2) DEFAULT NULL,
  `notifications_sent` tinyint(1) DEFAULT '1',
  `font_icon_code` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (60, 64, NULL, 0, NULL, 0, NULL, 'treefield_treefield', NULL, NULL, NULL, 1, NULL);
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (61, 64, NULL, 0, NULL, 0, NULL, 'treefield_treefield', NULL, NULL, NULL, 1, NULL);
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (62, 64, NULL, 0, NULL, 0, NULL, 'treefield_treefield', NULL, NULL, NULL, 1, NULL);
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (63, 64, NULL, 0, NULL, 0, NULL, 'treefield_treefield', NULL, NULL, NULL, 1, NULL);
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (64, 64, NULL, 0, NULL, 0, NULL, 'treefield_treefield', NULL, NULL, NULL, 1, NULL);
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (65, 64, NULL, 0, NULL, 0, NULL, 'treefield_treefield', NULL, NULL, NULL, 1, NULL);
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (66, 64, NULL, 0, 0, 0, NULL, 'treefield_treefield', 321, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (67, 64, NULL, 0, NULL, 0, NULL, 'treefield_treefield', NULL, NULL, NULL, 1, NULL);
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (68, 64, NULL, 0, NULL, 0, NULL, 'treefield_treefield', NULL, NULL, NULL, 1, NULL);
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (69, 64, NULL, 0, NULL, 0, NULL, 'treefield_treefield', NULL, NULL, NULL, 1, NULL);
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (70, 64, NULL, 0, NULL, 0, NULL, 'treefield_treefield', NULL, NULL, NULL, 1, NULL);
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (71, 64, NULL, 0, 0, 0, NULL, 'treefield_treefield', 315, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (73, 64, NULL, 66, 0, 1, NULL, '0', 322, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (74, 64, NULL, 66, 0, 1, NULL, 'treefield_treefield', 323, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (75, 64, NULL, 66, 0, 1, NULL, '0', 324, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (76, 64, NULL, 66, 0, 1, NULL, 'treefield_treefield', 325, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (77, 64, NULL, 66, 0, 1, NULL, '0', 326, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (78, 64, NULL, 69, 0, 1, NULL, '0', 327, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (79, 64, NULL, 69, 0, 1, NULL, '0', 328, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (80, 64, NULL, 69, 0, 1, NULL, '0', 329, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (81, 64, NULL, 69, 0, 1, NULL, '0', 330, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (82, 64, NULL, 60, 0, 1, NULL, '0', 331, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (83, 64, NULL, 60, 0, 1, NULL, '0', 332, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (84, 64, NULL, 60, 0, 1, NULL, '0', 333, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (85, 64, NULL, 67, 0, 1, NULL, '0', 334, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (86, 64, NULL, 67, 0, 1, NULL, '0', 335, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (87, 64, NULL, 67, 0, 1, NULL, '0', 336, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (88, 64, NULL, 67, 0, 1, NULL, '0', 337, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (89, 64, NULL, 67, 0, 1, NULL, '0', 338, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (90, 64, NULL, 67, 0, 1, NULL, '0', 339, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (91, 64, NULL, 67, 0, 1, NULL, '0', 340, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (92, 64, NULL, 61, 0, 1, NULL, '0', 341, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (93, 64, NULL, 61, 0, 1, NULL, '0', 342, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (94, 64, NULL, 61, 0, 1, NULL, '0', 343, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (95, 64, NULL, 61, 0, 1, NULL, '0', 344, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (96, 64, NULL, 61, 0, 1, NULL, '0', 345, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (97, 64, NULL, 61, 0, 1, NULL, '0', 346, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (98, 64, NULL, 68, 0, 1, NULL, '0', 347, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (99, 64, NULL, 68, 0, 1, NULL, '0', 348, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (100, 64, NULL, 68, 0, 1, NULL, '0', 349, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (101, 64, NULL, 68, 0, 1, NULL, '0', 350, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (102, 64, NULL, 68, 0, 1, NULL, '0', 351, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (103, 64, NULL, 68, 0, 1, NULL, '0', 352, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (105, 64, NULL, 68, 0, 1, NULL, '0', 354, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (106, 64, NULL, 65, 0, 1, NULL, '0', 355, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (107, 64, NULL, 65, 0, 1, NULL, '0', 356, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (108, 64, NULL, 65, 0, 1, NULL, '0', 357, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (109, 64, NULL, 65, 0, 1, NULL, '0', 358, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (110, 64, NULL, 65, 0, 1, NULL, '0', 359, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (111, 64, NULL, 65, 0, 1, NULL, '0', 360, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (112, 64, NULL, 63, 0, 1, NULL, '0', 361, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (113, 64, NULL, 63, 0, 1, NULL, '0', 362, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (114, 64, NULL, 63, 0, 1, NULL, '0', 363, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (115, 64, NULL, 70, 0, 1, NULL, '0', 364, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (116, 64, NULL, 70, 0, 1, NULL, '0', 365, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (117, 64, NULL, 70, 0, 1, NULL, '0', 366, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (118, 64, NULL, 62, 0, 1, NULL, '0', 367, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (119, 64, NULL, 62, 0, 1, NULL, '0', 368, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (120, 64, NULL, 62, 0, 1, NULL, '0', 369, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (121, 64, NULL, 62, 0, 1, NULL, '0', 370, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (122, 64, NULL, 62, 0, 1, NULL, '0', 371, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (123, 64, NULL, 71, 0, 1, NULL, '0', 372, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (124, 64, NULL, 71, 0, 1, NULL, '0', 373, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (125, 64, NULL, 71, 0, 1, NULL, '0', 374, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (126, 64, NULL, 71, 0, 1, NULL, '0', 375, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (127, 64, NULL, 71, 0, 1, NULL, '0', 376, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (128, 64, NULL, 64, 0, 1, NULL, '0', 377, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (129, 64, NULL, 64, 0, 1, NULL, '0', 378, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (130, 64, NULL, 64, 0, 1, NULL, '0', 379, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (131, 64, NULL, 64, 0, 1, NULL, '0', 380, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (132, 64, NULL, 64, 0, 1, NULL, '0', 381, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (133, 64, NULL, 64, 0, 1, NULL, '0', 382, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (134, 64, NULL, 64, 0, 1, NULL, '0', 383, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (135, 79, NULL, 0, 0, 0, NULL, '0', 396, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (136, 79, NULL, 0, 0, 0, NULL, 'treefield_treefield', 397, NULL, NULL, 1, '0');
INSERT INTO `treefield` (`id`, `field_id`, `root_id`, `parent_id`, `order`, `level`, `field_name`, `template`, `repository_id`, `image_filename`, `affilate_price`, `notifications_sent`, `font_icon_code`) VALUES (137, 64, NULL, 66, 0, 1, NULL, '0', 404, NULL, NULL, 1, '0');


#
# TABLE STRUCTURE FOR: treefield_lang
#

CREATE TABLE `treefield_lang` (
  `id` int(11) NOT NULL,
  `treefield_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `value_path` text COLLATE utf8_unicode_ci,
  `title` varchar(160) COLLATE utf8_unicode_ci DEFAULT NULL,
  `path_title` varchar(160) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(160) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `keywords` varchar(160) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(160) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `adcode1` text COLLATE utf8_unicode_ci,
  `adcode2` text COLLATE utf8_unicode_ci,
  `adcode3` text COLLATE utf8_unicode_ci,
  `adcode4` text COLLATE utf8_unicode_ci,
  `adcode5` text COLLATE utf8_unicode_ci,
  `adcode6` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (409, 60, 4, 'Durrës', 'Durrës', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (410, 60, 1, 'Durrës', 'Durrës', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (411, 60, 2, 'Durrës', 'Durrës', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (412, 61, 4, 'Fier', 'Fier', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (413, 61, 1, 'Fier', 'Fier', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (414, 61, 2, 'Fier', 'Fier', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (415, 62, 4, 'Shkodër', 'Shkodër', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (416, 62, 1, 'Shkodër', 'Shkodër', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (417, 62, 2, 'Shkodër', 'Shkodër', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (418, 63, 4, 'Kukës', 'Kukës', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (419, 63, 1, 'Kukës', 'Kukës', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (420, 63, 2, 'Kukës', 'Kukës', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (421, 64, 4, 'Vlorë', 'Vlorë', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (422, 64, 1, 'Vlorë', 'Vlorë', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (423, 64, 2, 'Vlorë', 'Vlorë', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (424, 65, 4, 'Korçë', 'Korçë', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (425, 65, 1, 'Korçë', 'Korçë', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (426, 65, 2, 'Korçë', 'Korçë', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (430, 67, 4, 'Elbasan', 'Elbasan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (431, 67, 1, 'Elbasan', 'Elbasan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (432, 67, 2, 'Elbasan', 'Elbasan', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (433, 68, 4, 'Gjirokastër', 'Gjirokastër', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (434, 68, 1, 'Gjirokastër', 'Gjirokastër', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (435, 68, 2, 'Gjirokastër', 'Gjirokastër', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (436, 69, 4, 'Dibër', 'Dibër', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (437, 69, 1, 'Dibër', 'Dibër', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (438, 69, 2, 'Dibër', 'Dibër', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (439, 70, 4, 'Lezhë', 'Lezhë', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (440, 70, 1, 'Lezhë', 'Lezhë', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (441, 70, 2, 'Lezhë', 'Lezhë', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (463, 66, 4, 'Berat', 'Berat', '', '', '', '', '', '', '0', '', '', '', '', '', '');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (464, 66, 1, 'Berat', 'Berat', '', '', '', '', '', '', '0', '', '', '', '', '', '');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (465, 66, 2, 'Berat', 'Berat', '', '', '', '', '', '', '0', '', '', '', '', '', '');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (466, 73, 4, 'Berat', 'Berat - Berat', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (467, 73, 1, 'Berat', 'Berat - Berat', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (468, 73, 2, 'Berat', 'Berat - Berat', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (471, 74, 4, 'Kuçovë', 'Berat - Kuçovë', '0', '0', '0', '<p>0</p>', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (472, 74, 1, 'Kuçovë', 'Berat - Kuçovë', '0', '0', '0', '<p>0</p>', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (473, 75, 4, 'Poliçan', 'Berat - Poliçan', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (474, 75, 1, 'Poliçan', 'Berat - Poliçan', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (477, 76, 4, 'Skrapar', 'Berat - Skrapar', '0', '0', '0', '<p>0</p>', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (478, 76, 1, 'Skrapar', 'Berat - Skrapar', '0', '0', '0', '<p>0</p>', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (479, 77, 4, 'Ura Vajgurore', 'Berat - Ura Vajgurore', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (480, 77, 1, 'Ura Vajgurore', 'Berat - Ura Vajgurore', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (481, 78, 4, 'Bulqizë', 'Dibër - Bulqizë', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (482, 78, 1, 'Bulqizë', 'Dibër - Bulqizë', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (483, 79, 4, 'Dibër', 'Dibër - Dibër', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (484, 79, 1, 'Dibër', 'Dibër - Dibër', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (485, 80, 4, 'Klos', 'Dibër - Klos', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (486, 80, 1, 'Klos', 'Dibër - Klos', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (487, 81, 4, 'Mat', 'Dibër - Mat', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (488, 81, 1, 'Mat', 'Dibër - Mat', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (489, 82, 4, 'Durrës', 'Durrës - Durrës', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (490, 82, 1, 'Durrës', 'Durrës - Durrës', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (491, 83, 4, 'Krujë', 'Durrës - Krujë', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (492, 83, 1, 'Krujë', 'Durrës - Krujë', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (493, 84, 4, 'Shijak', 'Durrës - Shijak', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (494, 84, 1, 'Shijak', 'Durrës - Shijak', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (495, 85, 4, 'Belsh', 'Elbasan - Belsh', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (496, 85, 1, 'Belsh', 'Elbasan - Belsh', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (497, 86, 4, 'Cërrik', 'Elbasan - Cërrik', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (498, 86, 1, 'Cërrik', 'Elbasan - Cërrik', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (499, 87, 4, 'Elbasan', 'Elbasan - Elbasan', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (500, 87, 1, 'Elbasan', 'Elbasan - Elbasan', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (501, 88, 4, 'Gramsh', 'Elbasan - Gramsh', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (502, 88, 1, 'Gramsh', 'Elbasan - Gramsh', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (503, 89, 4, 'Librazhd', 'Elbasan - Librazhd', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (504, 89, 1, 'Librazhd', 'Elbasan - Librazhd', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (505, 90, 4, 'Peqin', 'Elbasan - Peqin', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (506, 90, 1, 'Peqin', 'Elbasan - Peqin', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (507, 91, 4, 'Prrenjas', 'Elbasan - Prrenjas', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (508, 91, 1, 'Prrenjas', 'Elbasan - Prrenjas', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (509, 92, 4, 'Divjakë', 'Fier - Divjakë', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (510, 92, 1, 'Divjakë', 'Fier - Divjakë', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (511, 93, 4, 'Fier', 'Fier - Fier', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (512, 93, 1, 'Fier', 'Fier - Fier', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (513, 94, 4, 'Lushnjë', 'Fier - Lushnjë', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (514, 94, 1, 'Lushnjë', 'Fier - Lushnjë', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (515, 95, 4, 'Mallakastër', 'Fier - Mallakastër', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (516, 95, 1, 'Mallakastër', 'Fier - Mallakastër', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (517, 96, 4, 'Patos', 'Fier - Patos', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (518, 96, 1, 'Patos', 'Fier - Patos', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (519, 97, 4, 'Roskovec', 'Fier - Roskovec', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (520, 97, 1, 'Roskovec', 'Fier - Roskovec', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (521, 98, 4, 'Dropull', 'Gjirokastër - Dropull', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (522, 98, 1, 'Dropull', 'Gjirokastër - Dropull', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (523, 99, 4, 'Gjirokastër', 'Gjirokastër - Gjirokastër', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (524, 99, 1, 'Gjirokastër', 'Gjirokastër - Gjirokastër', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (525, 100, 4, 'Këlcyrë', 'Gjirokastër - Këlcyrë', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (526, 100, 1, 'Këlcyrë', 'Gjirokastër - Këlcyrë', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (527, 101, 4, 'Libohovë', 'Gjirokastër - Libohovë', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (528, 101, 1, 'Libohovë', 'Gjirokastër - Libohovë', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (529, 102, 4, 'Memaliaj', 'Gjirokastër - Memaliaj', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (530, 102, 1, 'Memaliaj', 'Gjirokastër - Memaliaj', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (531, 103, 4, 'Përmet', 'Gjirokastër - Përmet', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (532, 103, 1, 'Përmet', 'Gjirokastër - Përmet', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (539, 105, 4, 'Tepelenë', 'Gjirokastër - Tepelenë', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (540, 105, 1, 'Tepelenë', 'Gjirokastër - Tepelenë', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (541, 106, 4, 'Devoll', 'Korçë - Devoll', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (542, 106, 1, 'Devoll', 'Korçë - Devoll', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (543, 107, 4, 'Kolonjë', 'Korçë - Kolonjë', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (544, 107, 1, 'Kolonjë', 'Korçë - Kolonjë', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (545, 108, 4, 'Korçë', 'Korçë - Korçë', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (546, 108, 1, 'Korçë', 'Korçë - Korçë', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (547, 109, 4, 'Maliq', 'Korçë - Maliq', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (548, 109, 1, 'Maliq', 'Korçë - Maliq', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (549, 110, 4, 'Pogradec', 'Korçë - Pogradec', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (550, 110, 1, 'Pogradec', 'Korçë - Pogradec', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (551, 111, 4, 'Pustec', 'Korçë - Pustec', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (552, 111, 1, 'Pustec', 'Korçë - Pustec', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (553, 112, 4, 'Has', 'Kukës - Has', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (554, 112, 1, 'Has', 'Kukës - Has', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (555, 113, 4, 'Kukës', 'Kukës - Kukës', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (556, 113, 1, 'Kukës', 'Kukës - Kukës', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (557, 114, 4, 'Tropojë', 'Kukës - Tropojë', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (558, 114, 1, 'Tropojë', 'Kukës - Tropojë', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (559, 115, 4, 'Kurbin', 'Lezhë - Kurbin', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (560, 115, 1, 'Kurbin', 'Lezhë - Kurbin', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (561, 116, 4, 'Lezhë', 'Lezhë - Lezhë', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (562, 116, 1, 'Lezhë', 'Lezhë - Lezhë', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (563, 117, 4, 'Mirditë', 'Lezhë - Mirditë', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (564, 117, 1, 'Mirditë', 'Lezhë - Mirditë', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (565, 118, 4, 'Fushë-Arrëz', 'Shkodër - Fushë-Arrëz', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (566, 118, 1, 'Fushë-Arrëz', 'Shkodër - Fushë-Arrëz', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (567, 119, 4, 'Malësi e Madhe', 'Shkodër - Malësi e Madhe', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (568, 119, 1, 'Malësi e Madhe', 'Shkodër - Malësi e Madhe', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (569, 120, 4, 'Pukë', 'Shkodër - Pukë', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (570, 120, 1, 'Pukë', 'Shkodër - Pukë', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (571, 121, 4, 'Shkodër', 'Shkodër - Shkodër', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (572, 121, 1, 'Shkodër', 'Shkodër - Shkodër', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (573, 122, 4, 'Vau i Dejës', 'Shkodër - Vau i Dejës', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (574, 122, 1, 'Vau i Dejës', 'Shkodër - Vau i Dejës', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (575, 123, 4, 'Kamëz', 'Tiranë - Kamëz', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (576, 123, 1, 'Kamëz', 'Tiranë - Kamëz', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (577, 124, 4, 'Kavajë', 'Tiranë - Kavajë', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (578, 124, 1, 'Kavajë', 'Tiranë - Kavajë', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (579, 125, 4, 'Rrogozhinë', 'Tiranë - Rrogozhinë', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (580, 125, 1, 'Rrogozhinë', 'Tiranë - Rrogozhinë', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (581, 126, 4, 'Tiranë', 'Tiranë - Tiranë', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (582, 126, 1, 'Tiranë', 'Tiranë - Tiranë', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (583, 127, 4, 'Vorë', 'Tiranë - Vorë', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (584, 127, 1, 'Vorë', 'Tiranë - Vorë', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (585, 128, 4, 'Delvinë', 'Vlorë - Delvinë', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (586, 128, 1, 'Delvinë', 'Vlorë - Delvinë', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (587, 129, 4, 'Finiq', 'Vlorë - Finiq', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (588, 129, 1, 'Finiq', 'Vlorë - Finiq', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (589, 130, 4, 'Himarë', 'Vlorë - Himarë', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (590, 130, 1, 'Himarë', 'Vlorë - Himarë', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (591, 131, 4, 'Konispol', 'Vlorë - Konispol', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (592, 131, 1, 'Konispol', 'Vlorë - Konispol', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (593, 132, 4, 'Sarandë', 'Vlorë - Sarandë', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (594, 132, 1, 'Sarandë', 'Vlorë - Sarandë', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (595, 133, 4, 'Selenicë', 'Vlorë - Selenicë', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (596, 133, 1, 'Selenicë', 'Vlorë - Selenicë', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (597, 134, 4, 'Vlorë', 'Vlorë - Vlorë', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (598, 134, 1, 'Vlorë', 'Vlorë - Vlorë', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (601, 135, 4, 'Berat', 'Berat', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (602, 135, 1, 'Berat', 'Berat', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (605, 136, 4, 'Tiranë', 'Tiranë', '0', '0', '0', '<p>0</p>', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (606, 136, 1, 'Tiranë', 'Tiranë', '0', '0', '0', '<p>0</p>', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (607, 137, 4, 'Prove', 'Berat - Prove', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (608, 137, 1, 'Prove', 'Berat - Prove', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (609, 71, 4, 'Tiranë', 'Tiranë', '', '', '', '', '', '', '0', '', '', '', '', '', '');
INSERT INTO `treefield_lang` (`id`, `treefield_id`, `language_id`, `value`, `value_path`, `title`, `path_title`, `address`, `body`, `keywords`, `description`, `slug`, `adcode1`, `adcode2`, `adcode3`, `adcode4`, `adcode5`, `adcode6`) VALUES (610, 71, 1, 'Tiranë', 'Tiranë', '', '', '', '', '', '', '0', '', '', '', '', '', '');


#
# TABLE STRUCTURE FOR: affilate_packages
#

CREATE TABLE `affilate_packages` (
  `id_affilate_packages` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `treefield_id` int(11) DEFAULT NULL,
  `date_last_payment` datetime DEFAULT NULL,
  `date_expire` datetime DEFAULT NULL,
  `paid_total` decimal(9,2) DEFAULT NULL,
  `currency` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_affilate_packages`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: agency_agent
#

CREATE TABLE `agency_agent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agency_id` int(11) DEFAULT NULL,
  `agent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: conversions
#

CREATE TABLE `conversions` (
  `id` int(11) NOT NULL,
  `currency_code` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `conversion_index` decimal(10,2) DEFAULT NULL,
  `currency_symbol` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `conversions` (`id`, `currency_code`, `conversion_index`, `currency_symbol`) VALUES (1, 'HRK', '1.00', NULL);
INSERT INTO `conversions` (`id`, `currency_code`, `conversion_index`, `currency_symbol`) VALUES (2, 'EUR', '7.50', '');
INSERT INTO `conversions` (`id`, `currency_code`, `conversion_index`, `currency_symbol`) VALUES (3, 'USD', '6.50', '$');


#
# TABLE STRUCTURE FOR: custom_templates
#

CREATE TABLE `custom_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `theme` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template_name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'RIGHT|LEFT',
  `widgets_order` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `custom_templates` (`id`, `theme`, `template_name`, `type`, `widgets_order`) VALUES (1, 'realocation', 'Custom Contact', 'RIGHT', '{  \"header\": [  \"header_usermenu\", \"header_headertop\", \"header_menu\" ], \"top\": [  \"top_slogan\", \"top_companymap\" ], \"center\": [  \"center_defaultcontent\", \"center_contact\" ], \"right\": [  \"right_recentproperties\" ], \"bottom\": [ ], \"footer\": [  \"footer_rights\", \"footer_social\" ] }');
INSERT INTO `custom_templates` (`id`, `theme`, `template_name`, `type`, `widgets_order`) VALUES (2, 'realsite', 'visual-test', 'RIGHT', '{  \"header\": [  \"header_loginmenu\", \"header_mainmenu\" ], \"top\": [  \"top_slidercityguide\" ], \"center\": [  \"center_carouselrecentproperties\", \"center_defaultcontent\" ], \"right\": [  \"right_contact\" ], \"bottom\": [  \"bottom_choosecolor\", \"bottom_partners\" ], \"footer\": [  \"footer_allreserved\" ] }');
INSERT INTO `custom_templates` (`id`, `theme`, `template_name`, `type`, `widgets_order`) VALUES (3, 'realsite', 'Vendndodhje', 'RESULT_ITEM', '{  \"center\":  {  \"id_10\":{\"f_id\":\"10\", \"f_title\":\"Property name\", \"f_style\":\"\", \"f_class\":\"\", \"type\":\"INPUTBOX\"} ,\"id_6\":{\"f_id\":\"6\", \"f_title\":\"Marker\", \"f_style\":\"\", \"f_class\":\"\", \"type\":\"DROPDOWN\"} ,\"id_40\":{\"f_id\":\"40\", \"f_title\":\"Zip code\", \"f_style\":\"\", \"f_class\":\"\", \"type\":\"INPUTBOX\"} ,\"id_78\":{\"f_id\":\"78\", \"f_title\":\"Keywords\", \"f_style\":\"\", \"f_class\":\"\", \"type\":\"INPUTBOX\"} ,\"id_4\":{\"f_id\":\"4\", \"f_title\":\"Purpose\", \"f_style\":\"\", \"f_class\":\"\", \"type\":\"DROPDOWN\"} ,\"id_7\":{\"f_id\":\"7\", \"f_title\":\"City\", \"f_style\":\"\", \"f_class\":\"\", \"type\":\"INPUTBOX\"} ,\"id_67\":{\"f_id\":\"67\", \"f_title\":\"Company name\", \"f_style\":\"\", \"f_class\":\"\", \"type\":\"INPUTBOX\"} ,\"id_5\":{\"f_id\":\"5\", \"f_title\":\"County\", \"f_style\":\"\", \"f_class\":\"\", \"type\":\"INPUTBOX\"} ,\"id_44\":{\"f_id\":\"44\", \"f_title\":\"Center\", \"f_style\":\"\", \"f_class\":\"\", \"type\":\"INPUTBOX\"} ,\"id_45\":{\"f_id\":\"45\", \"f_title\":\"Train\", \"f_style\":\"\", \"f_class\":\"\", \"type\":\"INPUTBOX\"} ,\"id_48\":{\"f_id\":\"48\", \"f_title\":\"Pharmacies\", \"f_style\":\"\", \"f_class\":\"\", \"type\":\"INPUTBOX\"} ,\"id_47\":{\"f_id\":\"47\", \"f_title\":\"Bus\", \"f_style\":\"\", \"f_class\":\"\", \"type\":\"INPUTBOX\"} } }');


#
# TABLE STRUCTURE FOR: dependent_field
#

CREATE TABLE `dependent_field` (
  `id_dependent_field` int(11) NOT NULL AUTO_INCREMENT,
  `field_id` int(11) DEFAULT NULL COMMENT 'Dependent field/option id',
  `selected_index` int(11) DEFAULT NULL COMMENT 'Selected dropdown index',
  `selected_value` int(11) DEFAULT NULL COMMENT 'Dependent field value (not required)',
  `hidden_fields_list` text COLLATE utf8_unicode_ci COMMENT 'saparated with comma "1,2,3"',
  PRIMARY KEY (`id_dependent_field`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `dependent_field` (`id_dependent_field`, `field_id`, `selected_index`, `selected_value`, `hidden_fields_list`) VALUES (1, 2, 0, NULL, '81,48,52');


#
# TABLE STRUCTURE FOR: forms_search
#

CREATE TABLE `forms_search` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `theme` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `form_name` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fields_order_primary` text COLLATE utf8_unicode_ci COMMENT 'json data',
  `fields_order_secondary` text COLLATE utf8_unicode_ci COMMENT 'json data',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `forms_search` (`id`, `theme`, `form_name`, `type`, `fields_order_primary`, `fields_order_secondary`) VALUES (1, 'realocation', 'Standard search', 'MAIN', '{  \"PRIMARY\": {  \"C_PURPOSE\":{\"direction\":\"NONE\", \"style\":\"\", \"class\":\"\", \"id\":\"NONE\", \"type\":\"C_PURPOSE\"} ,\"DROPDOWN_2\":{\"direction\":\"NONE\", \"style\":\"\", \"class\":\"\", \"id\":\"2\", \"type\":\"DROPDOWN\"} ,\"SMART_SEARCH\":{\"direction\":\"NONE\", \"style\":\"\", \"class\":\"\", \"id\":\"NONE\", \"type\":\"SMART_SEARCH\"} ,\"INPUTBOX_57_FROM\":{\"direction\":\"FROM\", \"style\":\"\", \"class\":\"col-sm-12\", \"id\":\"57\", \"type\":\"INPUTBOX\"} ,\"DATE_RANGE\":{\"direction\":\"NONE\", \"style\":\"\", \"class\":\"\", \"id\":\"NONE\", \"type\":\"DATE_RANGE\"} ,\"INPUTBOX_36_FROM\":{\"direction\":\"FROM\", \"style\":\"\", \"class\":\"\", \"id\":\"36\", \"type\":\"INPUTBOX\"} ,\"INPUTBOX_36_TO\":{\"direction\":\"TO\", \"style\":\"\", \"class\":\"\", \"id\":\"36\", \"type\":\"INPUTBOX\"} }, \"SECONDARY\": { } }', '');
INSERT INTO `forms_search` (`id`, `theme`, `form_name`, `type`, `fields_order_primary`, `fields_order_secondary`) VALUES (2, 'realocation', 'Horizontal search', 'MAIN', '{  \"PRIMARY\": {  \"C_PURPOSE\":{\"direction\":\"NONE\", \"style\":\"\", \"class\":\"\", \"id\":\"NONE\", \"type\":\"C_PURPOSE\"} ,\"DROPDOWN_3\":{\"direction\":\"NONE\", \"style\":\"\", \"class\":\"col-md-3\", \"id\":\"3\", \"type\":\"DROPDOWN\"} ,\"DROPDOWN_2\":{\"direction\":\"NONE\", \"style\":\"\", \"class\":\"col-md-3\", \"id\":\"2\", \"type\":\"DROPDOWN\"} ,\"INPUTBOX_20\":{\"direction\":\"NONE\", \"style\":\"\", \"class\":\"col-md-3\", \"id\":\"20\", \"type\":\"INPUTBOX\"} ,\"INPUTBOX_58\":{\"direction\":\"NONE\", \"style\":\"\", \"class\":\"col-md-3\", \"id\":\"58\", \"type\":\"INPUTBOX\"} ,\"BREAKLINE\":{\"direction\":\"NONE\", \"style\":\"\", \"class\":\"\", \"id\":\"NONE\", \"type\":\"BREAKLINE\"} ,\"INPUTBOX_19\":{\"direction\":\"NONE\", \"style\":\"\", \"class\":\"col-md-3\", \"id\":\"19\", \"type\":\"INPUTBOX\"} }, \"SECONDARY\": { } }', NULL);
INSERT INTO `forms_search` (`id`, `theme`, `form_name`, `type`, `fields_order_primary`, `fields_order_secondary`) VALUES (3, 'bootstrap2-responsive', 'Bootstrap-search', 'MAIN', '{  \"PRIMARY\": {  \"C_PURPOSE\":{\"direction\":\"NONE\", \"style\":\"\", \"class\":\"\", \"id\":\"NONE\", \"type\":\"C_PURPOSE\"} ,\"TREE_64\":{\"direction\":\"NONE\", \"style\":\"\", \"class\":\"\", \"id\":\"64\", \"type\":\"TREE\"} ,\"SMART_SEARCH\":{\"direction\":\"NONE\", \"style\":\"\", \"class\":\"\", \"id\":\"NONE\", \"type\":\"SMART_SEARCH\"} ,\"DROPDOWN_2\":{\"direction\":\"NONE\", \"style\":\"\", \"class\":\"\", \"id\":\"2\", \"type\":\"DROPDOWN\"} ,\"DROPDOWN_3\":{\"direction\":\"NONE\", \"style\":\"\", \"class\":\"\", \"id\":\"3\", \"type\":\"DROPDOWN\"} }, \"SECONDARY\": {  \"INPUTBOX_19\":{\"direction\":\"NONE\", \"style\":\"\", \"class\":\"\", \"id\":\"19\", \"type\":\"INPUTBOX\"} ,\"INPUTBOX_20\":{\"direction\":\"NONE\", \"style\":\"\", \"class\":\"\", \"id\":\"20\", \"type\":\"INPUTBOX\"} ,\"INPUTBOX_36_FROM\":{\"direction\":\"FROM\", \"style\":\"\", \"class\":\"\", \"id\":\"36\", \"type\":\"INPUTBOX\"} ,\"INPUTBOX_36_TO\":{\"direction\":\"TO\", \"style\":\"\", \"class\":\"\", \"id\":\"36\", \"type\":\"INPUTBOX\"} ,\"CHECKBOX_11\":{\"direction\":\"NONE\", \"style\":\"\", \"class\":\"\", \"id\":\"11\", \"type\":\"CHECKBOX\"} ,\"CHECKBOX_29\":{\"direction\":\"NONE\", \"style\":\"\", \"class\":\"\", \"id\":\"29\", \"type\":\"CHECKBOX\"} ,\"CHECKBOX_22\":{\"direction\":\"NONE\", \"style\":\"\", \"class\":\"\", \"id\":\"22\", \"type\":\"CHECKBOX\"} ,\"CHECKBOX_32\":{\"direction\":\"NONE\", \"style\":\"\", \"class\":\"\", \"id\":\"32\", \"type\":\"CHECKBOX\"} ,\"CHECKBOX_25\":{\"direction\":\"NONE\", \"style\":\"\", \"class\":\"\", \"id\":\"25\", \"type\":\"CHECKBOX\"} ,\"CHECKBOX_30\":{\"direction\":\"NONE\", \"style\":\"\", \"class\":\"\", \"id\":\"30\", \"type\":\"CHECKBOX\"} ,\"CHECKBOX_27\":{\"direction\":\"NONE\", \"style\":\"\", \"class\":\"\", \"id\":\"27\", \"type\":\"CHECKBOX\"} ,\"CHECKBOX_33\":{\"direction\":\"NONE\", \"style\":\"\", \"class\":\"\", \"id\":\"33\", \"type\":\"CHECKBOX\"} ,\"CHECKBOX_28\":{\"direction\":\"NONE\", \"style\":\"\", \"class\":\"\", \"id\":\"28\", \"type\":\"CHECKBOX\"} ,\"CHECKBOX_23\":{\"direction\":\"NONE\", \"style\":\"\", \"class\":\"\", \"id\":\"23\", \"type\":\"CHECKBOX\"} } }', '0');
INSERT INTO `forms_search` (`id`, `theme`, `form_name`, `type`, `fields_order_primary`, `fields_order_secondary`) VALUES (4, 'bootstrap4', 'Standard search', 'MAIN', '{ \"PRIMARY\": { \"DROPDOWN\":{\"direction\":\"NONE\", \"style\":\"\", \"class\":\"col-lg-2\", \"id\":\"4\", \"type\":\"DROPDOWN\"} ,\"SMART_SEARCH\":{\"direction\":\"NONE\", \"style\":\"\", \"class\":\"col-lg-3\", \"id\":\"NONE\", \"type\":\"SMART_SEARCH\"} ,\"DROPDOWN_2\":{\"direction\":\"NONE\", \"style\":\"\", \"class\":\"col-lg-3\", \"id\":\"2\", \"type\":\"DROPDOWN\"} ,\"DROPDOWN_3\":{\"direction\":\"NONE\", \"style\":\"\", \"class\":\"col-lg-3\", \"id\":\"3\", \"type\":\"DROPDOWN\"} }, \"SECONDARY\": { \"INPUTBOX_19\":{\"direction\":\"NONE\", \"style\":\"\", \"class\":\"\", \"id\":\"19\", \"type\":\"INPUTBOX\"} ,\"INPUTBOX_20\":{\"direction\":\"NONE\", \"style\":\"\", \"class\":\"\", \"id\":\"20\", \"type\":\"INPUTBOX\"} ,\"INPUTBOX_36\":{\"direction\":\"NONE\", \"style\":\"\", \"class\":\"\", \"id\":\"36\", \"type\":\"INPUTBOX\"} ,\"INPUTBOX_59\":{\"direction\":\"NONE\", \"style\":\"\", \"class\":\"\", \"id\":\"59\", \"type\":\"INPUTBOX\"} ,\"CHECKBOX_24\":{\"direction\":\"NONE\", \"style\":\"\", \"class\":\"\", \"id\":\"24\", \"type\":\"CHECKBOX\"} ,\"CHECKBOX_28\":{\"direction\":\"NONE\", \"style\":\"\", \"class\":\"\", \"id\":\"28\", \"type\":\"CHECKBOX\"} ,\"CHECKBOX_31\":{\"direction\":\"NONE\", \"style\":\"\", \"class\":\"\", \"id\":\"31\", \"type\":\"CHECKBOX\"} ,\"CHECKBOX_30\":{\"direction\":\"NONE\", \"style\":\" \", \"class\":\"\", \"id\":\"30\", \"type\":\"CHECKBOX\"} ,\"CHECKBOX_33\":{\"direction\":\"NONE\", \"style\":\"\", \"class\":\"\", \"id\":\"33\", \"type\":\"CHECKBOX\"} ,\"CHECKBOX_25\":{\"direction\":\"NONE\", \"style\":\"\", \"class\":\"\", \"id\":\"25\", \"type\":\"CHECKBOX\"} ,\"CHECKBOX_29\":{\"direction\":\"NONE\", \"style\":\"\", \"class\":\"\", \"id\":\"29\", \"type\":\"CHECKBOX\"} ,\"CHECKBOX_32\":{\"direction\":\"NONE\", \"style\":\"\", \"class\":\"\", \"id\":\"32\", \"type\":\"CHECKBOX\"} ,\"CHECKBOX_23\":{\"direction\":\"NONE\", \"style\":\"\", \"class\":\"\", \"id\":\"23\", \"type\":\"CHECKBOX\"} ,\"CHECKBOX_11\":{\"direction\":\"NONE\", \"style\":\"\", \"class\":\"\", \"id\":\"11\", \"type\":\"CHECKBOX\"} } }', '0');


#
# TABLE STRUCTURE FOR: invoice
#

CREATE TABLE `invoice` (
  `id_invoice` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_num` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `reference_id` int(11) DEFAULT NULL,
  `week` int(11) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `currency_code` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_confirmed` tinyint(1) DEFAULT NULL,
  `is_paid` tinyint(1) DEFAULT NULL,
  `is_activated` tinyint(1) DEFAULT NULL,
  `data_json` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id_invoice`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `invoice` (`id_invoice`, `invoice_num`, `date_created`, `user_id`, `description`, `reference_id`, `week`, `price`, `currency_code`, `is_confirmed`, `is_paid`, `is_activated`, `data_json`) VALUES (11, '3_PAC_18_20.00_4', '2015-04-02 15:08:31', 18, 'Package 3', 3, 4, '20.00', 'USD', 1, 0, 1, '{\"settings\":{\"rating_enabled\":\"1\",\"address\":\"Ilica 345, HR-10000 Zagreb 1\",\"websitetitle\":\"Real estate point\",\"gps\":\"45.8129663, 15.976036000000022\",\"email\":\"sandi.winter@gmail.com\",\"email_alert\":\"0\",\"phone\":\"+385 (0)1 123 321\",\"fax\":\"+385 (0)1 123 322\",\"address_footer\":\"<b>Estate<\\/b>Point<br \\/>\\r\\nReal estate agency from Croatia<br \\/>\\r\\nIlica 345<br \\/>\\r\\nHR-10000 Zagreb\",\"noreply\":\"webform@my-website.com\",\"zoom\":\"8\",\"paypal_email\":\"sandi.winter@gmail.com\",\"listing_expiry_days\":\"0\",\"activation_price\":\"5\",\"featured_price\":\"10\",\"default_currency\":\"USD\",\"authorize_api_login_id\":\"593j9M9nPkgy\",\"authorize_api_hash_secret\":\"r564test\",\"authorize_api_transaction_key\":\"7p83CWXR3q5fq27t\",\"adsense728_90\":\"<script async src=\\\"\\/\\/pagead2.googlesyndication.com\\/pagead\\/js\\/adsbygoogle.js\\\"><\\/script>\\r\\n<!-- Real estate responsive -->\\r\\n<ins class=\\\"adsbygoogle\\\"\\r\\n     style=\\\"display:block\\\"\\r\\n     data-ad-client=\\\"ca-pub-6994200887384132\\\"\\r\\n     data-ad-slot=\\\"6454101571\\\"\\r\\n     data-ad-format=\\\"auto\\\"><\\/ins>\\r\\n<script>\\r\\n(adsbygoogle = window.adsbygoogle || []).push({});\\r\\n<\\/script>\",\"adsense160_600\":\"<script async src=\\\"\\/\\/pagead2.googlesyndication.com\\/pagead\\/js\\/adsbygoogle.js\\\"><\\/script>\\r\\n<!-- Real estate right -->\\r\\n<ins class=\\\"adsbygoogle\\\"\\r\\n     style=\\\"display:inline-block;width:160px;height:600px\\\"\\r\\n     data-ad-client=\\\"ca-pub-6994200887384132\\\"\\r\\n     data-ad-slot=\\\"7090863570\\\"><\\/ins>\\r\\n<script>\\r\\n(adsbygoogle = window.adsbygoogle || []).push({});\\r\\n<\\/script>\",\"reviews_enabled\":\"1\",\"reviews_public_visible_enabled\":\"1\",\"showroom_slideshow_enabled\":\"1\",\"withdrawal_details\":\"IBAN: HR43 2340009 3207462177<br\\/>\\r\\nSWIFT: PBZGHR2X\",\"booking_fee\":\"10\",\"template\":\"realia\",\"tracking\":\"<script type=\\\"text\\/javascript\\\">\\r\\n\\r\\n  var _gaq = _gaq || [];\\r\\n  _gaq.push([\'_setAccount\', \'UA-683342-5\']);\\r\\n  _gaq.push([\'_trackPageview\']);\\r\\n\\r\\n  (function() {\\r\\n    var ga = document.createElement(\'script\'); ga.type = \'text\\/javascript\'; ga.async = true;\\r\\n    ga.src = (\'https:\' == document.location.protocol ? \'https:\\/\\/ssl\' : \'http:\\/\\/www\') + \'.google-analytics.com\\/ga.js\';\\r\\n    var s = document.getElementsByTagName(\'script\')[0]; s.parentNode.insertBefore(ga, s);\\r\\n  })();\\r\\n\\r\\n<\\/script>\",\"facebook\":\"<!-- AddThis Button BEGIN -->\\r\\n<div class=\\\"addthis_toolbox addthis_default_style addthis_32x32_style\\\">\\r\\n<a class=\\\"addthis_button_facebook\\\">\\r\\n    <div class=\\\"custom-icon at15t_facebook\\\"> <\\/div>\\r\\n<\\/a>\\r\\n<a class=\\\"addthis_button_twitter\\\">\\r\\n    <div class=\\\"custom-icon at15t_twitter\\\"> <\\/div>\\r\\n<\\/a>\\r\\n<a class=\\\"addthis_button_google_plusone_share\\\">\\r\\n    <div class=\\\"custom-icon at15t_google_plusone_share\\\"> <\\/div>\\r\\n<\\/a>\\r\\n<\\/div>\\r\\n<script type=\\\"text\\/javascript\\\">var addthis_config = {\\\"data_track_addressbar\\\":false};<\\/script>\\r\\n<script type=\\\"text\\/javascript\\\" src=\\\"\\/\\/s7.addthis.com\\/js\\/300\\/addthis_widget.js#pubid=sandiwinter\\\"><\\/script>\\r\\n<!-- AddThis Button END -->\",\"facebook_jsdk\":\"<div id=\\\"fb-root\\\"><\\/div>\\r\\n<script>(function(d, s, id) {\\r\\n  var js, fjs = d.getElementsByTagName(s)[0];\\r\\n  if (d.getElementById(id)) return;\\r\\n  js = d.createElement(s); js.id = id;\\r\\n  js.src = \\\"\\/\\/connect.facebook.net\\/en_EN\\/sdk.js#xfbml=1&appId=349715428511591&version=v2.0\\\";\\r\\n  fjs.parentNode.insertBefore(js, fjs);\\r\\n}(document, \'script\', \'facebook-jssdk\'));<\\/script>\",\"facebook_comments\":\"<div class=\\\"fb-comments\\\" data-href=\\\"http:\\/\\/example.com\\/comments\\\" data-width=\\\"100%\\\" data-numposts=\\\"5\\\" data-colorscheme=\\\"light\\\"><\\/div>\",\"useful_links\":\"<ul class=\\\"menu nav\\\">\\r\\n                            <li class=\\\"first leaf\\\"><a href=\\\"#\\\">404 page<\\/a><\\/li>\\r\\n                            <li class=\\\"leaf\\\"><a href=\\\"#\\\">About us<\\/a><\\/li>\\r\\n                            <li class=\\\"leaf\\\"><a href=\\\"#\\\">Contact us<\\/a><\\/li>\\r\\n                            <li class=\\\"leaf\\\"><a href=\\\"#\\\">FAQ<\\/a><\\/li>\\r\\n                            <li class=\\\"leaf\\\"><a href=\\\"#\\\">Grid system<\\/a><\\/li>\\r\\n                            <li class=\\\"leaf\\\"><a href=\\\"#\\\">Our agents<\\/a><\\/li>\\r\\n                            <li class=\\\"last leaf\\\"><a href=\\\"#\\\">Typography<\\/a><\\/li>\\r\\n                        <\\/ul>\"},\"price\":\"20.00\",\"user\":{\"id\":\"18\",\"username\":\"user\",\"password\":\"f341be9a30\",\"name_surname\":\"Test user\",\"address\":\"Cyro trento 23\",\"description\":\"My description 2\",\"phone\":\"+385959055516\",\"mail\":\"sanljiljan@geniuscript.com\",\"last_login\":\"2015-04-02 13:59:01\",\"registration_date\":\"2014-01-26 12:23:26\",\"type\":\"USER\",\"language\":\"english\",\"repository_id\":\"196\",\"activated\":\"1\",\"qa_id\":\"0\",\"package_id\":\"3\",\"package_last_payment\":\"2015-08-04 12:29:02\",\"facebook_id\":\"0\",\"mail_verified\":\"0\",\"phone_verified\":\"0\",\"image_user_filename\":null,\"image_agency_filename\":null,\"company_name\":\"My real estate ltd\",\"zip_city\":\"21000\",\"prename_name\":\"Prename\",\"vat_number\":\"0945621378\"},\"lang_code\":\"en\",\"invoice_num\":\"3_PAC_18_20.00_4\",\"description\":\"Package 3\",\"reference_id\":\"3\",\"reference_code\":\"PAC\",\"currency_code\":\"USD\"}');
INSERT INTO `invoice` (`id_invoice`, `invoice_num`, `date_created`, `user_id`, `description`, `reference_id`, `week`, `price`, `currency_code`, `is_confirmed`, `is_paid`, `is_activated`, `data_json`) VALUES (13, '3_PAC_18_20.00_4', '2015-04-02 15:13:45', 18, 'Package 3', 3, 4, '20.00', 'USD', 1, 1, 1, '{\"settings\":{\"rating_enabled\":\"1\",\"address\":\"Ilica 345, HR-10000 Zagreb 1\",\"websitetitle\":\"Real estate point\",\"gps\":\"45.8129663, 15.976036000000022\",\"email\":\"sandi.winter@gmail.com\",\"email_alert\":\"0\",\"phone\":\"+385 (0)1 123 321\",\"fax\":\"+385 (0)1 123 322\",\"address_footer\":\"<b>Estate<\\/b>Point<br \\/>\\r\\nReal estate agency from Croatia<br \\/>\\r\\nIlica 345<br \\/>\\r\\nHR-10000 Zagreb\",\"noreply\":\"webform@my-website.com\",\"zoom\":\"8\",\"paypal_email\":\"sandi.winter@gmail.com\",\"listing_expiry_days\":\"0\",\"activation_price\":\"5\",\"featured_price\":\"10\",\"default_currency\":\"USD\",\"authorize_api_login_id\":\"593j9M9nPkgy\",\"authorize_api_hash_secret\":\"r564test\",\"authorize_api_transaction_key\":\"7p83CWXR3q5fq27t\",\"adsense728_90\":\"<script async src=\\\"\\/\\/pagead2.googlesyndication.com\\/pagead\\/js\\/adsbygoogle.js\\\"><\\/script>\\r\\n<!-- Real estate responsive -->\\r\\n<ins class=\\\"adsbygoogle\\\"\\r\\n     style=\\\"display:block\\\"\\r\\n     data-ad-client=\\\"ca-pub-6994200887384132\\\"\\r\\n     data-ad-slot=\\\"6454101571\\\"\\r\\n     data-ad-format=\\\"auto\\\"><\\/ins>\\r\\n<script>\\r\\n(adsbygoogle = window.adsbygoogle || []).push({});\\r\\n<\\/script>\",\"adsense160_600\":\"<script async src=\\\"\\/\\/pagead2.googlesyndication.com\\/pagead\\/js\\/adsbygoogle.js\\\"><\\/script>\\r\\n<!-- Real estate right -->\\r\\n<ins class=\\\"adsbygoogle\\\"\\r\\n     style=\\\"display:inline-block;width:160px;height:600px\\\"\\r\\n     data-ad-client=\\\"ca-pub-6994200887384132\\\"\\r\\n     data-ad-slot=\\\"7090863570\\\"><\\/ins>\\r\\n<script>\\r\\n(adsbygoogle = window.adsbygoogle || []).push({});\\r\\n<\\/script>\",\"reviews_enabled\":\"1\",\"reviews_public_visible_enabled\":\"1\",\"showroom_slideshow_enabled\":\"1\",\"withdrawal_details\":\"IBAN: HR43 2340009 3207462177<br\\/>\\r\\nSWIFT: PBZGHR2X\",\"booking_fee\":\"10\",\"template\":\"realia\",\"tracking\":\"<script type=\\\"text\\/javascript\\\">\\r\\n\\r\\n  var _gaq = _gaq || [];\\r\\n  _gaq.push([\'_setAccount\', \'UA-683342-5\']);\\r\\n  _gaq.push([\'_trackPageview\']);\\r\\n\\r\\n  (function() {\\r\\n    var ga = document.createElement(\'script\'); ga.type = \'text\\/javascript\'; ga.async = true;\\r\\n    ga.src = (\'https:\' == document.location.protocol ? \'https:\\/\\/ssl\' : \'http:\\/\\/www\') + \'.google-analytics.com\\/ga.js\';\\r\\n    var s = document.getElementsByTagName(\'script\')[0]; s.parentNode.insertBefore(ga, s);\\r\\n  })();\\r\\n\\r\\n<\\/script>\",\"facebook\":\"<!-- AddThis Button BEGIN -->\\r\\n<div class=\\\"addthis_toolbox addthis_default_style addthis_32x32_style\\\">\\r\\n<a class=\\\"addthis_button_facebook\\\">\\r\\n    <div class=\\\"custom-icon at15t_facebook\\\"> <\\/div>\\r\\n<\\/a>\\r\\n<a class=\\\"addthis_button_twitter\\\">\\r\\n    <div class=\\\"custom-icon at15t_twitter\\\"> <\\/div>\\r\\n<\\/a>\\r\\n<a class=\\\"addthis_button_google_plusone_share\\\">\\r\\n    <div class=\\\"custom-icon at15t_google_plusone_share\\\"> <\\/div>\\r\\n<\\/a>\\r\\n<\\/div>\\r\\n<script type=\\\"text\\/javascript\\\">var addthis_config = {\\\"data_track_addressbar\\\":false};<\\/script>\\r\\n<script type=\\\"text\\/javascript\\\" src=\\\"\\/\\/s7.addthis.com\\/js\\/300\\/addthis_widget.js#pubid=sandiwinter\\\"><\\/script>\\r\\n<!-- AddThis Button END -->\",\"facebook_jsdk\":\"<div id=\\\"fb-root\\\"><\\/div>\\r\\n<script>(function(d, s, id) {\\r\\n  var js, fjs = d.getElementsByTagName(s)[0];\\r\\n  if (d.getElementById(id)) return;\\r\\n  js = d.createElement(s); js.id = id;\\r\\n  js.src = \\\"\\/\\/connect.facebook.net\\/en_EN\\/sdk.js#xfbml=1&appId=349715428511591&version=v2.0\\\";\\r\\n  fjs.parentNode.insertBefore(js, fjs);\\r\\n}(document, \'script\', \'facebook-jssdk\'));<\\/script>\",\"facebook_comments\":\"<div class=\\\"fb-comments\\\" data-href=\\\"http:\\/\\/example.com\\/comments\\\" data-width=\\\"100%\\\" data-numposts=\\\"5\\\" data-colorscheme=\\\"light\\\"><\\/div>\",\"useful_links\":\"<ul class=\\\"menu nav\\\">\\r\\n                            <li class=\\\"first leaf\\\"><a href=\\\"#\\\">404 page<\\/a><\\/li>\\r\\n                            <li class=\\\"leaf\\\"><a href=\\\"#\\\">About us<\\/a><\\/li>\\r\\n                            <li class=\\\"leaf\\\"><a href=\\\"#\\\">Contact us<\\/a><\\/li>\\r\\n                            <li class=\\\"leaf\\\"><a href=\\\"#\\\">FAQ<\\/a><\\/li>\\r\\n                            <li class=\\\"leaf\\\"><a href=\\\"#\\\">Grid system<\\/a><\\/li>\\r\\n                            <li class=\\\"leaf\\\"><a href=\\\"#\\\">Our agents<\\/a><\\/li>\\r\\n                            <li class=\\\"last leaf\\\"><a href=\\\"#\\\">Typography<\\/a><\\/li>\\r\\n                        <\\/ul>\"},\"price\":\"20.00\",\"user\":{\"id\":\"18\",\"username\":\"user\",\"password\":\"f341be9a30\",\"name_surname\":\"Test user\",\"address\":\"Cyro trento 23\",\"description\":\"My description 2\",\"phone\":\"+385959055516\",\"mail\":\"sanljiljan@geniuscript.com\",\"last_login\":\"2015-04-02 13:59:01\",\"registration_date\":\"2014-01-26 12:23:26\",\"type\":\"USER\",\"language\":\"english\",\"repository_id\":\"196\",\"activated\":\"1\",\"qa_id\":\"0\",\"package_id\":\"3\",\"package_last_payment\":\"2015-09-03 12:29:02\",\"facebook_id\":\"0\",\"mail_verified\":\"0\",\"phone_verified\":\"0\",\"image_user_filename\":null,\"image_agency_filename\":null,\"company_name\":\"My real estate ltd\",\"zip_city\":\"21000\",\"prename_name\":\"Prename\",\"vat_number\":\"0945621378\"},\"lang_code\":\"en\",\"invoice_num\":\"3_PAC_18_20.00_4\",\"description\":\"Package 3\",\"reference_id\":\"3\",\"reference_code\":\"PAC\",\"currency_code\":\"USD\"}');


#
# TABLE STRUCTURE FOR: map_report
#

CREATE TABLE `map_report` (
  `id_mapreport` int(11) NOT NULL AUTO_INCREMENT,
  `lat` decimal(9,6) DEFAULT NULL,
  `lng` decimal(9,6) DEFAULT NULL,
  `address` varchar(160) COLLATE utf8_unicode_ci DEFAULT NULL,
  `outcome` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT 'NOT_SOLD,SOLD\n',
  `price` int(11) DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `date_removed` datetime DEFAULT NULL,
  `date_submited` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `purpose` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `property_json` text COLLATE utf8_unicode_ci COMMENT 'complete json details in english or default language',
  `id_old` int(11) DEFAULT NULL,
  `user_id_remover` int(11) DEFAULT NULL,
  `user_id_agent` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_mapreport`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `map_report` (`id_mapreport`, `lat`, `lng`, `address`, `outcome`, `price`, `area`, `date_removed`, `date_submited`, `purpose`, `type`, `property_json`, `id_old`, `user_id_remover`, `user_id_agent`) VALUES (1, '46.378570', '16.079735', 'Veliki lovrečan', 'NOT_SOLD', 150, 60, '2014-03-18 22:16:28', '2014-03-07 20:12:14', 'Sale', 'House', '{\"id\":\"29\",\"gps\":\"46.3785703, 16.0797348\",\"lat\":\"46.378570\",\"lng\":\"16.079735\",\"date\":\"2014-03-07 20:12:14\",\"date_modified\":\"2014-12-28 18:59:23\",\"address\":\"Veliki lovre\\u010dan\",\"type\":null,\"repository_id\":\"195\",\"is_featured\":\"0\",\"search_values\":\"id: 29Veliki lovre\\u010dan My property new house   Sale House Vara\\u017edinska Cestica   50-100m2 60 D 2 2 5    Agent  50 20 SKIP_ON_EMPTY   SKIP_ON_EMPTY       trueAir conditioning trueCable TV  trueBalcony        700 700    Moja nekretnina novo house   Prodaja Ku\\u0107a Vara\\u017edinska Cestica   50-100m2 60 D 2 2 5    Agent    SKIP_ON_EMPTY   SKIP_ON_EMPTY       trueKlimatizacija trueKabelska TV  trueBalkon        700 700   \",\"is_activated\":\"0\",\"activation_paid_date\":null,\"featured_paid_date\":null,\"counter_views\":\"0\",\"image_filename\":null,\"image_repository\":null,\"option10_1\":\"My property\",\"option8_1\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vulputate \\r\\nnec neque gravida rhoncus. Donec sit amet blandit mauris, sed bibendum \\r\\nrisus.\",\"option17_1\":\"<p>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vulputate \\r\\nnec neque gravida rhoncus. Donec sit amet blandit mauris, sed bibendum \\r\\nrisus. Cras ut urna semper, facilisis augue sed, imperdiet nulla. Duis \\r\\ntristique tellus tortor, dapibus gravida sem sodales id. Nullam quis \\r\\nconvallis libero, vitae pulvinar nisi.<\\/p><p><span style=\\\"font-weight: bold;\\\">Nam eget est facilisis, porta mi \\r\\nac, ultricies enim. Proin nisi diam, eleifend ac eleifend in, dapibus in\\r\\n orci. Vestibulum elementum lectus non nisl venenatis, tempus molestie \\r\\nnisi tempus. Pellentesque facilisis nibh nec purus blandit, id aliquam \\r\\nlorem fermentum.\\r\\n<\\/span><\\/p>\\r\\n<p>\\r\\n<span style=\\\"font-style: italic;\\\">Ut erat lacus, sagittis ac leo eu, molestie mattis libero. Nam sit amet \\r\\nmassa et magna porttitor eleifend a aliquam nunc. Pellentesque a est a \\r\\naugue dignissim tristique eu nec augue. Integer pretium sollicitudin \\r\\ntellus, quis hendrerit nunc accumsan et. Fusce bibendum a neque vel \\r\\nfringilla. Vivamus viverra enim at purus gravida, in elementum neque \\r\\neleifend. Curabitur sodales dapibus urna, at mattis lacus eleifend non. \\r\\nDonec ultricies porta orci eu congue. Nulla sodales arcu a libero \\r\\naliquet, nec aliquam ante sagittis.<\\/span><\\/p>\",\"option38_1\":\"new\",\"option6_1\":\"house\",\"option56_1\":\"\",\"option1_1\":\"0\",\"option4_1\":\"Sale\",\"option2_1\":\"House\",\"option5_1\":\"Vara\\u017edinska\",\"option7_1\":\"Cestica\",\"option40_1\":\"\",\"option64_1\":\"\",\"option3_1\":\"50-100m2\",\"option57_1\":\"60\",\"option39_1\":\"D\",\"option19_1\":\"2\",\"option20_1\":\"2\",\"option58_1\":\"5\",\"option36_1\":\"\",\"option55_1\":\"\",\"option37_1\":\"\",\"option54_1\":\"Agent\",\"option53_1\":\"\",\"option59_1\":\"50\",\"option60_1\":\"20\",\"option66_1\":\"0\",\"option67_1\":\"\",\"option68_1\":\"\",\"option69_1\":\"\",\"option70_1\":\"\",\"option71_1\":\"\",\"option72_1\":\"\",\"option73_1\":\"\",\"option21_1\":\"0\",\"option22_1\":\"true\",\"option23_1\":\"true\",\"option24_1\":\"0\",\"option25_1\":\"0\",\"option28_1\":\"0\",\"option29_1\":\"0\",\"option31_1\":\"0\",\"option52_1\":\"0\",\"option11_1\":\"true\",\"option30_1\":\"0\",\"option27_1\":\"0\",\"option33_1\":\"0\",\"option32_1\":\"0\",\"option43_1\":\"0\",\"option44_1\":\"\",\"option45_1\":\"\",\"option46_1\":\"\",\"option47_1\":\"\",\"option48_1\":\"\",\"option49_1\":\"\",\"option50_1\":\"700\",\"option51_1\":\"700\",\"option9_1\":\"0\",\"option12_1\":\"\",\"option42_1\":\"0\",\"option10_2\":\"Moja nekretnina\",\"option8_2\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vulputate \\r\\nnec neque gravida rhoncus. Donec sit amet blandit mauris, sed bibendum \\r\\nrisus.\",\"option17_2\":\"<p>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vulputate \\r\\nnec neque gravida rhoncus. Donec sit amet blandit mauris, sed bibendum \\r\\nrisus. Cras ut urna semper, facilisis augue sed, imperdiet nulla. Duis \\r\\ntristique tellus tortor, dapibus gravida sem sodales id. Nullam quis \\r\\nconvallis libero, vitae pulvinar nisi.<\\/p><p><span style=\\\"font-weight: bold;\\\">Nam eget est facilisis, porta mi \\r\\nac, ultricies enim. Proin nisi diam, eleifend ac eleifend in, dapibus in\\r\\n orci. Vestibulum elementum lectus non nisl venenatis, tempus molestie \\r\\nnisi tempus. Pellentesque facilisis nibh nec purus blandit, id aliquam \\r\\nlorem fermentum.\\r\\n<\\/span><\\/p>\\r\\n<p>\\r\\n<span style=\\\"font-style: italic;\\\">Ut erat lacus, sagittis ac leo eu, molestie mattis libero. Nam sit amet \\r\\nmassa et magna porttitor eleifend a aliquam nunc. Pellentesque a est a \\r\\naugue dignissim tristique eu nec augue. Integer pretium sollicitudin \\r\\ntellus, quis hendrerit nunc accumsan et. Fusce bibendum a neque vel \\r\\nfringilla. Vivamus viverra enim at purus gravida, in elementum neque \\r\\neleifend. Curabitur sodales dapibus urna, at mattis lacus eleifend non. \\r\\nDonec ultricies porta orci eu congue. Nulla sodales arcu a libero \\r\\naliquet, nec aliquam ante sagittis.<\\/span><\\/p>\",\"option38_2\":\"novo\",\"option6_2\":\"house\",\"option56_2\":\"\",\"option1_2\":\"0\",\"option4_2\":\"Prodaja\",\"option2_2\":\"Ku\\u0107a\",\"option5_2\":\"Vara\\u017edinska\",\"option7_2\":\"Cestica\",\"option40_2\":\"\",\"option64_2\":\"\",\"option3_2\":\"50-100m2\",\"option57_2\":\"60\",\"option39_2\":\"D\",\"option19_2\":\"2\",\"option20_2\":\"2\",\"option58_2\":\"5\",\"option36_2\":\"\",\"option55_2\":\"\",\"option37_2\":\"\",\"option54_2\":\"Agent\",\"option53_2\":\"\",\"option59_2\":\"\",\"option60_2\":\"\",\"option66_2\":\"0\",\"option67_2\":\"\",\"option68_2\":\"\",\"option69_2\":\"\",\"option70_2\":\"\",\"option71_2\":\"\",\"option72_2\":\"\",\"option73_2\":\"\",\"option21_2\":\"0\",\"option22_2\":\"true\",\"option23_2\":\"true\",\"option24_2\":\"0\",\"option25_2\":\"0\",\"option28_2\":\"0\",\"option29_2\":\"0\",\"option31_2\":\"0\",\"option52_2\":\"0\",\"option11_2\":\"true\",\"option30_2\":\"0\",\"option27_2\":\"0\",\"option33_2\":\"0\",\"option32_2\":\"0\",\"option43_2\":\"0\",\"option44_2\":\"\",\"option45_2\":\"\",\"option46_2\":\"\",\"option47_2\":\"\",\"option48_2\":\"\",\"option49_2\":\"\",\"option50_2\":\"700\",\"option51_2\":\"700\",\"option9_2\":\"0\",\"option12_2\":\"\",\"option42_2\":\"0\",\"agent\":\"18\",\"slug_1\":\"\",\"slug_2\":\"\"}', NULL, NULL, NULL);
INSERT INTO `map_report` (`id_mapreport`, `lat`, `lng`, `address`, `outcome`, `price`, `area`, `date_removed`, `date_submited`, `purpose`, `type`, `property_json`, `id_old`, `user_id_remover`, `user_id_agent`) VALUES (2, '46.373121', '16.127040', 'Cestica', 'SOLD', 100, 40, '2014-03-18 22:17:28', '2014-01-07 13:32:50', 'Rent', 'Apartment', '{\"id\":\"30\",\"gps\":\"46.3731205, 16.1270403\",\"lat\":\"46.373121\",\"lng\":\"16.127040\",\"date\":\"2015-01-07 13:32:50\",\"date_modified\":\"2015-02-22 15:04:06\",\"address\":\"Cestica\",\"type\":null,\"repository_id\":\"197\",\"is_featured\":\"0\",\"search_values\":\"id: 30Cestica Bjelovar estate empty apartment   Rent Apartment Bjelovarska Bjelovar  Less than 50m2 40 - 3 3 7 90,000.00   Agent - 70 20 262 Manitoba - Winnipeg -  FieldGate properties 264 1234567890 http:\\/\\/www.google.com http:\\/\\/www.facebook.com http:\\/\\/www.twitter.com 0-24  trueAir conditioning trueComputer trueHeating trueInternet trueMicrowave  trueBalcony trueGrill truePool trueParking  600 600 600 600        bjelovar-estate-1-en Bjelovar nekretnina empty apartment   Najam Stan Bjelovarska Bjelovar  Manje od 50m2 40 - 3 3 7 90,000.00   Agent - 70 20 263 Manitoba - Winnipeg -  FieldGate properties 2 265 1234567890 http:\\/\\/www.google.com http:\\/\\/www.facebook.com http:\\/\\/www.twitter.com 0-24  trueKlimatizacija trueRa\\u010dunalo trueGrijanje trueInternet trueMikrovalna  trueBalkon trueRo\\u0161tilj trueBazen trueParking  600 600 600 600        bjelovar-nekretnina\",\"is_activated\":\"1\",\"activation_paid_date\":null,\"featured_paid_date\":null,\"counter_views\":\"197\",\"image_filename\":\"431262903_9d77804a5b_o (1).jpg\",\"image_repository\":\"[\\\"431262903_9d77804a5b_o (1).jpg\\\",\\\"431267985_286ac5c8cd_o (1).jpg\\\"]\",\"option10_1\":\"Bjelovar estate\",\"option8_1\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vulputate \\r\\nnec neque gravida rhoncus. Donec sit amet blandit mauris, sed bibendum \\r\\nrisus.\",\"option17_1\":\"<p>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vulputate \\r\\nnec neque gravida rhoncus. Donec sit amet blandit mauris, sed bibendum \\r\\nrisus. Cras ut urna semper, facilisis augue sed, imperdiet nulla. Duis \\r\\ntristique tellus tortor, dapibus gravida sem sodales id. Nullam quis \\r\\nconvallis libero, vitae pulvinar nisi.<\\/p><p><span style=\\\"font-weight: bold;\\\">Nam eget est facilisis, porta mi \\r\\nac, ultricies enim. Proin nisi diam, eleifend ac eleifend in, dapibus in\\r\\n orci. Vestibulum elementum lectus non nisl venenatis, tempus molestie \\r\\nnisi tempus. Pellentesque facilisis nibh nec purus blandit, id aliquam \\r\\nlorem fermentum.\\r\\n<\\/span><\\/p>\\r\\n<p>\\r\\n<span style=\\\"font-style: italic;\\\">Ut erat lacus, sagittis ac leo eu, molestie mattis libero. Nam sit amet \\r\\nmassa et magna porttitor eleifend a aliquam nunc. Pellentesque a est a \\r\\naugue dignissim tristique eu nec augue. Integer pretium sollicitudin \\r\\ntellus, quis hendrerit nunc accumsan et. Fusce bibendum a neque vel \\r\\nfringilla. Vivamus viverra enim at purus gravida, in elementum neque \\r\\neleifend. Curabitur sodales dapibus urna, at mattis lacus eleifend non. \\r\\nDonec ultricies porta orci eu congue. Nulla sodales arcu a libero \\r\\naliquet, nec aliquam ante sagittis.<\\/span><\\/p>\",\"option38_1\":\"empty\",\"option6_1\":\"apartment\",\"option56_1\":\"\",\"option1_1\":\"0\",\"option4_1\":\"Rent\",\"option2_1\":\"Apartment\",\"option5_1\":\"Bjelovarska\",\"option7_1\":\"Bjelovar\",\"option40_1\":\"\",\"option3_1\":\"Less than 50m2\",\"option57_1\":\"40\",\"option39_1\":\"-\",\"option19_1\":\"3\",\"option20_1\":\"3\",\"option58_1\":\"7\",\"option36_1\":\"90,000.00\",\"option55_1\":\"\",\"option37_1\":\"\",\"option54_1\":\"Agent\",\"option53_1\":\"-\",\"option59_1\":\"70\",\"option60_1\":\"20\",\"option65_1\":\"262\",\"option64_1\":\"Manitoba - Winnipeg -\",\"option66_1\":\"0\",\"option67_1\":\"FieldGate properties\",\"option74_1\":\"264\",\"option68_1\":\"1234567890\",\"option69_1\":\"http:\\/\\/www.google.com\",\"option70_1\":\"http:\\/\\/www.facebook.com\",\"option71_1\":\"http:\\/\\/www.twitter.com\",\"option72_1\":\"345 Dixon Road\\r\\nToronto Ontario M9R 15G\\r\\n(Dixon &amp; Kipling)\",\"option73_1\":\"0-24\",\"option21_1\":\"0\",\"option22_1\":\"true\",\"option23_1\":\"0\",\"option24_1\":\"true\",\"option25_1\":\"0\",\"option28_1\":\"true\",\"option29_1\":\"true\",\"option31_1\":\"true\",\"option52_1\":\"0\",\"option11_1\":\"true\",\"option30_1\":\"0\",\"option27_1\":\"true\",\"option33_1\":\"true\",\"option32_1\":\"true\",\"option43_1\":\"0\",\"option44_1\":\"600\",\"option45_1\":\"600\",\"option46_1\":\"600\",\"option47_1\":\"600\",\"option48_1\":\"\",\"option49_1\":\"\",\"option50_1\":\"\",\"option51_1\":\"\",\"option9_1\":\"0\",\"option12_1\":\"\",\"option42_1\":\"0\",\"option10_2\":\"Bjelovar nekretnina\",\"option8_2\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vulputate \\r\\nnec neque gravida rhoncus. Donec sit amet blandit mauris, sed bibendum \\r\\nrisus.\",\"option17_2\":\"<p>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vulputate \\r\\nnec neque gravida rhoncus. Donec sit amet blandit mauris, sed bibendum \\r\\nrisus. Cras ut urna semper, facilisis augue sed, imperdiet nulla. Duis \\r\\ntristique tellus tortor, dapibus gravida sem sodales id. Nullam quis \\r\\nconvallis libero, vitae pulvinar nisi.<\\/p><p><span style=\\\"font-weight: bold;\\\">Nam eget est facilisis, porta mi \\r\\nac, ultricies enim. Proin nisi diam, eleifend ac eleifend in, dapibus in\\r\\n orci. Vestibulum elementum lectus non nisl venenatis, tempus molestie \\r\\nnisi tempus. Pellentesque facilisis nibh nec purus blandit, id aliquam \\r\\nlorem fermentum.\\r\\n<\\/span><\\/p>\\r\\n<p>\\r\\n<span style=\\\"font-style: italic;\\\">Ut erat lacus, sagittis ac leo eu, molestie mattis libero. Nam sit amet \\r\\nmassa et magna porttitor eleifend a aliquam nunc. Pellentesque a est a \\r\\naugue dignissim tristique eu nec augue. Integer pretium sollicitudin \\r\\ntellus, quis hendrerit nunc accumsan et. Fusce bibendum a neque vel \\r\\nfringilla. Vivamus viverra enim at purus gravida, in elementum neque \\r\\neleifend. Curabitur sodales dapibus urna, at mattis lacus eleifend non. \\r\\nDonec ultricies porta orci eu congue. Nulla sodales arcu a libero \\r\\naliquet, nec aliquam ante sagittis.<\\/span><\\/p>\",\"option38_2\":\"empty\",\"option6_2\":\"apartment\",\"option56_2\":\"\",\"option1_2\":\"0\",\"option4_2\":\"Najam\",\"option2_2\":\"Stan\",\"option5_2\":\"Bjelovarska\",\"option7_2\":\"Bjelovar\",\"option40_2\":\"\",\"option3_2\":\"Manje od 50m2\",\"option57_2\":\"40\",\"option39_2\":\"-\",\"option19_2\":\"3\",\"option20_2\":\"3\",\"option58_2\":\"7\",\"option36_2\":\"90,000.00\",\"option55_2\":\"\",\"option37_2\":\"\",\"option54_2\":\"Agent\",\"option53_2\":\"-\",\"option59_2\":\"70\",\"option60_2\":\"20\",\"option65_2\":\"263\",\"option64_2\":\"Manitoba - Winnipeg -\",\"option66_2\":\"0\",\"option67_2\":\"FieldGate properties 2\",\"option74_2\":\"265\",\"option68_2\":\"1234567890\",\"option69_2\":\"http:\\/\\/www.google.com\",\"option70_2\":\"http:\\/\\/www.facebook.com\",\"option71_2\":\"http:\\/\\/www.twitter.com\",\"option72_2\":\"My company description<br>\",\"option73_2\":\"0-24\",\"option21_2\":\"0\",\"option22_2\":\"true\",\"option23_2\":\"0\",\"option24_2\":\"true\",\"option25_2\":\"0\",\"option28_2\":\"true\",\"option29_2\":\"true\",\"option31_2\":\"true\",\"option52_2\":\"0\",\"option11_2\":\"true\",\"option30_2\":\"0\",\"option27_2\":\"true\",\"option33_2\":\"true\",\"option32_2\":\"true\",\"option43_2\":\"0\",\"option44_2\":\"600\",\"option45_2\":\"600\",\"option46_2\":\"600\",\"option47_2\":\"600\",\"option48_2\":\"\",\"option49_2\":\"\",\"option50_2\":\"\",\"option51_2\":\"\",\"option9_2\":\"0\",\"option12_2\":\"\",\"option42_2\":\"0\",\"agent\":\"18\",\"slug_1\":\"bjelovar-estate-1-en\",\"slug_2\":\"bjelovar-nekretnina\"}', NULL, NULL, NULL);
INSERT INTO `map_report` (`id_mapreport`, `lat`, `lng`, `address`, `outcome`, `price`, `area`, `date_removed`, `date_submited`, `purpose`, `type`, `property_json`, `id_old`, `user_id_remover`, `user_id_agent`) VALUES (3, '46.378570', '16.079735', 'Veliki lovrečan', 'SOLD', 200, 60, '2015-03-18 22:17:35', '2014-03-07 20:12:14', 'Sale', 'House', '{\"id\":\"29\",\"gps\":\"46.3785703, 16.0797348\",\"lat\":\"46.378570\",\"lng\":\"16.079735\",\"date\":\"2014-03-07 20:12:14\",\"date_modified\":\"2014-12-28 18:59:23\",\"address\":\"Veliki lovre\\u010dan\",\"type\":null,\"repository_id\":\"195\",\"is_featured\":\"0\",\"search_values\":\"id: 29Veliki lovre\\u010dan My property new house   Sale House Vara\\u017edinska Cestica   50-100m2 60 D 2 2 5    Agent  50 20 SKIP_ON_EMPTY   SKIP_ON_EMPTY       trueAir conditioning trueCable TV  trueBalcony        700 700    Moja nekretnina novo house   Prodaja Ku\\u0107a Vara\\u017edinska Cestica   50-100m2 60 D 2 2 5    Agent    SKIP_ON_EMPTY   SKIP_ON_EMPTY       trueKlimatizacija trueKabelska TV  trueBalkon        700 700   \",\"is_activated\":\"0\",\"activation_paid_date\":null,\"featured_paid_date\":null,\"counter_views\":\"0\",\"image_filename\":null,\"image_repository\":null,\"option10_1\":\"My property\",\"option8_1\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vulputate \\r\\nnec neque gravida rhoncus. Donec sit amet blandit mauris, sed bibendum \\r\\nrisus.\",\"option17_1\":\"<p>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vulputate \\r\\nnec neque gravida rhoncus. Donec sit amet blandit mauris, sed bibendum \\r\\nrisus. Cras ut urna semper, facilisis augue sed, imperdiet nulla. Duis \\r\\ntristique tellus tortor, dapibus gravida sem sodales id. Nullam quis \\r\\nconvallis libero, vitae pulvinar nisi.<\\/p><p><span style=\\\"font-weight: bold;\\\">Nam eget est facilisis, porta mi \\r\\nac, ultricies enim. Proin nisi diam, eleifend ac eleifend in, dapibus in\\r\\n orci. Vestibulum elementum lectus non nisl venenatis, tempus molestie \\r\\nnisi tempus. Pellentesque facilisis nibh nec purus blandit, id aliquam \\r\\nlorem fermentum.\\r\\n<\\/span><\\/p>\\r\\n<p>\\r\\n<span style=\\\"font-style: italic;\\\">Ut erat lacus, sagittis ac leo eu, molestie mattis libero. Nam sit amet \\r\\nmassa et magna porttitor eleifend a aliquam nunc. Pellentesque a est a \\r\\naugue dignissim tristique eu nec augue. Integer pretium sollicitudin \\r\\ntellus, quis hendrerit nunc accumsan et. Fusce bibendum a neque vel \\r\\nfringilla. Vivamus viverra enim at purus gravida, in elementum neque \\r\\neleifend. Curabitur sodales dapibus urna, at mattis lacus eleifend non. \\r\\nDonec ultricies porta orci eu congue. Nulla sodales arcu a libero \\r\\naliquet, nec aliquam ante sagittis.<\\/span><\\/p>\",\"option38_1\":\"new\",\"option6_1\":\"house\",\"option56_1\":\"\",\"option1_1\":\"0\",\"option4_1\":\"Sale\",\"option2_1\":\"House\",\"option5_1\":\"Vara\\u017edinska\",\"option7_1\":\"Cestica\",\"option40_1\":\"\",\"option64_1\":\"\",\"option3_1\":\"50-100m2\",\"option57_1\":\"60\",\"option39_1\":\"D\",\"option19_1\":\"2\",\"option20_1\":\"2\",\"option58_1\":\"5\",\"option36_1\":\"\",\"option55_1\":\"\",\"option37_1\":\"\",\"option54_1\":\"Agent\",\"option53_1\":\"\",\"option59_1\":\"50\",\"option60_1\":\"20\",\"option66_1\":\"0\",\"option67_1\":\"\",\"option68_1\":\"\",\"option69_1\":\"\",\"option70_1\":\"\",\"option71_1\":\"\",\"option72_1\":\"\",\"option73_1\":\"\",\"option21_1\":\"0\",\"option22_1\":\"true\",\"option23_1\":\"true\",\"option24_1\":\"0\",\"option25_1\":\"0\",\"option28_1\":\"0\",\"option29_1\":\"0\",\"option31_1\":\"0\",\"option52_1\":\"0\",\"option11_1\":\"true\",\"option30_1\":\"0\",\"option27_1\":\"0\",\"option33_1\":\"0\",\"option32_1\":\"0\",\"option43_1\":\"0\",\"option44_1\":\"\",\"option45_1\":\"\",\"option46_1\":\"\",\"option47_1\":\"\",\"option48_1\":\"\",\"option49_1\":\"\",\"option50_1\":\"700\",\"option51_1\":\"700\",\"option9_1\":\"0\",\"option12_1\":\"\",\"option42_1\":\"0\",\"option10_2\":\"Moja nekretnina\",\"option8_2\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vulputate \\r\\nnec neque gravida rhoncus. Donec sit amet blandit mauris, sed bibendum \\r\\nrisus.\",\"option17_2\":\"<p>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vulputate \\r\\nnec neque gravida rhoncus. Donec sit amet blandit mauris, sed bibendum \\r\\nrisus. Cras ut urna semper, facilisis augue sed, imperdiet nulla. Duis \\r\\ntristique tellus tortor, dapibus gravida sem sodales id. Nullam quis \\r\\nconvallis libero, vitae pulvinar nisi.<\\/p><p><span style=\\\"font-weight: bold;\\\">Nam eget est facilisis, porta mi \\r\\nac, ultricies enim. Proin nisi diam, eleifend ac eleifend in, dapibus in\\r\\n orci. Vestibulum elementum lectus non nisl venenatis, tempus molestie \\r\\nnisi tempus. Pellentesque facilisis nibh nec purus blandit, id aliquam \\r\\nlorem fermentum.\\r\\n<\\/span><\\/p>\\r\\n<p>\\r\\n<span style=\\\"font-style: italic;\\\">Ut erat lacus, sagittis ac leo eu, molestie mattis libero. Nam sit amet \\r\\nmassa et magna porttitor eleifend a aliquam nunc. Pellentesque a est a \\r\\naugue dignissim tristique eu nec augue. Integer pretium sollicitudin \\r\\ntellus, quis hendrerit nunc accumsan et. Fusce bibendum a neque vel \\r\\nfringilla. Vivamus viverra enim at purus gravida, in elementum neque \\r\\neleifend. Curabitur sodales dapibus urna, at mattis lacus eleifend non. \\r\\nDonec ultricies porta orci eu congue. Nulla sodales arcu a libero \\r\\naliquet, nec aliquam ante sagittis.<\\/span><\\/p>\",\"option38_2\":\"novo\",\"option6_2\":\"house\",\"option56_2\":\"\",\"option1_2\":\"0\",\"option4_2\":\"Prodaja\",\"option2_2\":\"Ku\\u0107a\",\"option5_2\":\"Vara\\u017edinska\",\"option7_2\":\"Cestica\",\"option40_2\":\"\",\"option64_2\":\"\",\"option3_2\":\"50-100m2\",\"option57_2\":\"60\",\"option39_2\":\"D\",\"option19_2\":\"2\",\"option20_2\":\"2\",\"option58_2\":\"5\",\"option36_2\":\"\",\"option55_2\":\"\",\"option37_2\":\"\",\"option54_2\":\"Agent\",\"option53_2\":\"\",\"option59_2\":\"\",\"option60_2\":\"\",\"option66_2\":\"0\",\"option67_2\":\"\",\"option68_2\":\"\",\"option69_2\":\"\",\"option70_2\":\"\",\"option71_2\":\"\",\"option72_2\":\"\",\"option73_2\":\"\",\"option21_2\":\"0\",\"option22_2\":\"true\",\"option23_2\":\"true\",\"option24_2\":\"0\",\"option25_2\":\"0\",\"option28_2\":\"0\",\"option29_2\":\"0\",\"option31_2\":\"0\",\"option52_2\":\"0\",\"option11_2\":\"true\",\"option30_2\":\"0\",\"option27_2\":\"0\",\"option33_2\":\"0\",\"option32_2\":\"0\",\"option43_2\":\"0\",\"option44_2\":\"\",\"option45_2\":\"\",\"option46_2\":\"\",\"option47_2\":\"\",\"option48_2\":\"\",\"option49_2\":\"\",\"option50_2\":\"700\",\"option51_2\":\"700\",\"option9_2\":\"0\",\"option12_2\":\"\",\"option42_2\":\"0\",\"agent\":\"18\",\"slug_1\":\"\",\"slug_2\":\"\"}', NULL, NULL, NULL);
INSERT INTO `map_report` (`id_mapreport`, `lat`, `lng`, `address`, `outcome`, `price`, `area`, `date_removed`, `date_submited`, `purpose`, `type`, `property_json`, `id_old`, `user_id_remover`, `user_id_agent`) VALUES (4, '46.373121', '16.127040', 'Cestica', 'SOLD', 300, 40, '2015-03-18 22:17:42', '2015-01-07 13:32:50', 'Rent', 'Apartment', '{\"id\":\"30\",\"gps\":\"46.3731205, 16.1270403\",\"lat\":\"46.373121\",\"lng\":\"16.127040\",\"date\":\"2015-01-07 13:32:50\",\"date_modified\":\"2015-02-22 15:04:06\",\"address\":\"Cestica\",\"type\":null,\"repository_id\":\"197\",\"is_featured\":\"0\",\"search_values\":\"id: 30Cestica Bjelovar estate empty apartment   Rent Apartment Bjelovarska Bjelovar  Less than 50m2 40 - 3 3 7 90,000.00   Agent - 70 20 262 Manitoba - Winnipeg -  FieldGate properties 264 1234567890 http:\\/\\/www.google.com http:\\/\\/www.facebook.com http:\\/\\/www.twitter.com 0-24  trueAir conditioning trueComputer trueHeating trueInternet trueMicrowave  trueBalcony trueGrill truePool trueParking  600 600 600 600        bjelovar-estate-1-en Bjelovar nekretnina empty apartment   Najam Stan Bjelovarska Bjelovar  Manje od 50m2 40 - 3 3 7 90,000.00   Agent - 70 20 263 Manitoba - Winnipeg -  FieldGate properties 2 265 1234567890 http:\\/\\/www.google.com http:\\/\\/www.facebook.com http:\\/\\/www.twitter.com 0-24  trueKlimatizacija trueRa\\u010dunalo trueGrijanje trueInternet trueMikrovalna  trueBalkon trueRo\\u0161tilj trueBazen trueParking  600 600 600 600        bjelovar-nekretnina\",\"is_activated\":\"1\",\"activation_paid_date\":null,\"featured_paid_date\":null,\"counter_views\":\"197\",\"image_filename\":\"431262903_9d77804a5b_o (1).jpg\",\"image_repository\":\"[\\\"431262903_9d77804a5b_o (1).jpg\\\",\\\"431267985_286ac5c8cd_o (1).jpg\\\"]\",\"option10_1\":\"Bjelovar estate\",\"option8_1\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vulputate \\r\\nnec neque gravida rhoncus. Donec sit amet blandit mauris, sed bibendum \\r\\nrisus.\",\"option17_1\":\"<p>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vulputate \\r\\nnec neque gravida rhoncus. Donec sit amet blandit mauris, sed bibendum \\r\\nrisus. Cras ut urna semper, facilisis augue sed, imperdiet nulla. Duis \\r\\ntristique tellus tortor, dapibus gravida sem sodales id. Nullam quis \\r\\nconvallis libero, vitae pulvinar nisi.<\\/p><p><span style=\\\"font-weight: bold;\\\">Nam eget est facilisis, porta mi \\r\\nac, ultricies enim. Proin nisi diam, eleifend ac eleifend in, dapibus in\\r\\n orci. Vestibulum elementum lectus non nisl venenatis, tempus molestie \\r\\nnisi tempus. Pellentesque facilisis nibh nec purus blandit, id aliquam \\r\\nlorem fermentum.\\r\\n<\\/span><\\/p>\\r\\n<p>\\r\\n<span style=\\\"font-style: italic;\\\">Ut erat lacus, sagittis ac leo eu, molestie mattis libero. Nam sit amet \\r\\nmassa et magna porttitor eleifend a aliquam nunc. Pellentesque a est a \\r\\naugue dignissim tristique eu nec augue. Integer pretium sollicitudin \\r\\ntellus, quis hendrerit nunc accumsan et. Fusce bibendum a neque vel \\r\\nfringilla. Vivamus viverra enim at purus gravida, in elementum neque \\r\\neleifend. Curabitur sodales dapibus urna, at mattis lacus eleifend non. \\r\\nDonec ultricies porta orci eu congue. Nulla sodales arcu a libero \\r\\naliquet, nec aliquam ante sagittis.<\\/span><\\/p>\",\"option38_1\":\"empty\",\"option6_1\":\"apartment\",\"option56_1\":\"\",\"option1_1\":\"0\",\"option4_1\":\"Rent\",\"option2_1\":\"Apartment\",\"option5_1\":\"Bjelovarska\",\"option7_1\":\"Bjelovar\",\"option40_1\":\"\",\"option3_1\":\"Less than 50m2\",\"option57_1\":\"40\",\"option39_1\":\"-\",\"option19_1\":\"3\",\"option20_1\":\"3\",\"option58_1\":\"7\",\"option36_1\":\"90,000.00\",\"option55_1\":\"\",\"option37_1\":\"\",\"option54_1\":\"Agent\",\"option53_1\":\"-\",\"option59_1\":\"70\",\"option60_1\":\"20\",\"option65_1\":\"262\",\"option64_1\":\"Manitoba - Winnipeg -\",\"option66_1\":\"0\",\"option67_1\":\"FieldGate properties\",\"option74_1\":\"264\",\"option68_1\":\"1234567890\",\"option69_1\":\"http:\\/\\/www.google.com\",\"option70_1\":\"http:\\/\\/www.facebook.com\",\"option71_1\":\"http:\\/\\/www.twitter.com\",\"option72_1\":\"345 Dixon Road\\r\\nToronto Ontario M9R 15G\\r\\n(Dixon &amp; Kipling)\",\"option73_1\":\"0-24\",\"option21_1\":\"0\",\"option22_1\":\"true\",\"option23_1\":\"0\",\"option24_1\":\"true\",\"option25_1\":\"0\",\"option28_1\":\"true\",\"option29_1\":\"true\",\"option31_1\":\"true\",\"option52_1\":\"0\",\"option11_1\":\"true\",\"option30_1\":\"0\",\"option27_1\":\"true\",\"option33_1\":\"true\",\"option32_1\":\"true\",\"option43_1\":\"0\",\"option44_1\":\"600\",\"option45_1\":\"600\",\"option46_1\":\"600\",\"option47_1\":\"600\",\"option48_1\":\"\",\"option49_1\":\"\",\"option50_1\":\"\",\"option51_1\":\"\",\"option9_1\":\"0\",\"option12_1\":\"\",\"option42_1\":\"0\",\"option10_2\":\"Bjelovar nekretnina\",\"option8_2\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vulputate \\r\\nnec neque gravida rhoncus. Donec sit amet blandit mauris, sed bibendum \\r\\nrisus.\",\"option17_2\":\"<p>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vulputate \\r\\nnec neque gravida rhoncus. Donec sit amet blandit mauris, sed bibendum \\r\\nrisus. Cras ut urna semper, facilisis augue sed, imperdiet nulla. Duis \\r\\ntristique tellus tortor, dapibus gravida sem sodales id. Nullam quis \\r\\nconvallis libero, vitae pulvinar nisi.<\\/p><p><span style=\\\"font-weight: bold;\\\">Nam eget est facilisis, porta mi \\r\\nac, ultricies enim. Proin nisi diam, eleifend ac eleifend in, dapibus in\\r\\n orci. Vestibulum elementum lectus non nisl venenatis, tempus molestie \\r\\nnisi tempus. Pellentesque facilisis nibh nec purus blandit, id aliquam \\r\\nlorem fermentum.\\r\\n<\\/span><\\/p>\\r\\n<p>\\r\\n<span style=\\\"font-style: italic;\\\">Ut erat lacus, sagittis ac leo eu, molestie mattis libero. Nam sit amet \\r\\nmassa et magna porttitor eleifend a aliquam nunc. Pellentesque a est a \\r\\naugue dignissim tristique eu nec augue. Integer pretium sollicitudin \\r\\ntellus, quis hendrerit nunc accumsan et. Fusce bibendum a neque vel \\r\\nfringilla. Vivamus viverra enim at purus gravida, in elementum neque \\r\\neleifend. Curabitur sodales dapibus urna, at mattis lacus eleifend non. \\r\\nDonec ultricies porta orci eu congue. Nulla sodales arcu a libero \\r\\naliquet, nec aliquam ante sagittis.<\\/span><\\/p>\",\"option38_2\":\"empty\",\"option6_2\":\"apartment\",\"option56_2\":\"\",\"option1_2\":\"0\",\"option4_2\":\"Najam\",\"option2_2\":\"Stan\",\"option5_2\":\"Bjelovarska\",\"option7_2\":\"Bjelovar\",\"option40_2\":\"\",\"option3_2\":\"Manje od 50m2\",\"option57_2\":\"40\",\"option39_2\":\"-\",\"option19_2\":\"3\",\"option20_2\":\"3\",\"option58_2\":\"7\",\"option36_2\":\"90,000.00\",\"option55_2\":\"\",\"option37_2\":\"\",\"option54_2\":\"Agent\",\"option53_2\":\"-\",\"option59_2\":\"70\",\"option60_2\":\"20\",\"option65_2\":\"263\",\"option64_2\":\"Manitoba - Winnipeg -\",\"option66_2\":\"0\",\"option67_2\":\"FieldGate properties 2\",\"option74_2\":\"265\",\"option68_2\":\"1234567890\",\"option69_2\":\"http:\\/\\/www.google.com\",\"option70_2\":\"http:\\/\\/www.facebook.com\",\"option71_2\":\"http:\\/\\/www.twitter.com\",\"option72_2\":\"My company description<br>\",\"option73_2\":\"0-24\",\"option21_2\":\"0\",\"option22_2\":\"true\",\"option23_2\":\"0\",\"option24_2\":\"true\",\"option25_2\":\"0\",\"option28_2\":\"true\",\"option29_2\":\"true\",\"option31_2\":\"true\",\"option52_2\":\"0\",\"option11_2\":\"true\",\"option30_2\":\"0\",\"option27_2\":\"true\",\"option33_2\":\"true\",\"option32_2\":\"true\",\"option43_2\":\"0\",\"option44_2\":\"600\",\"option45_2\":\"600\",\"option46_2\":\"600\",\"option47_2\":\"600\",\"option48_2\":\"\",\"option49_2\":\"\",\"option50_2\":\"\",\"option51_2\":\"\",\"option9_2\":\"0\",\"option12_2\":\"\",\"option42_2\":\"0\",\"agent\":\"18\",\"slug_1\":\"bjelovar-estate-1-en\",\"slug_2\":\"bjelovar-nekretnina\"}', NULL, NULL, NULL);
INSERT INTO `map_report` (`id_mapreport`, `lat`, `lng`, `address`, `outcome`, `price`, `area`, `date_removed`, `date_submited`, `purpose`, `type`, `property_json`, `id_old`, `user_id_remover`, `user_id_agent`) VALUES (5, '46.373121', '16.127040', 'Cestica', 'SOLD', 100, 40, '2015-03-18 22:17:59', '2015-01-07 13:32:50', 'Rent', 'Apartment', '{\"id\":\"30\",\"gps\":\"46.3731205, 16.1270403\",\"lat\":\"46.373121\",\"lng\":\"16.127040\",\"date\":\"2015-01-07 13:32:50\",\"date_modified\":\"2015-02-22 15:04:06\",\"address\":\"Cestica\",\"type\":null,\"repository_id\":\"197\",\"is_featured\":\"0\",\"search_values\":\"id: 30Cestica Bjelovar estate empty apartment   Rent Apartment Bjelovarska Bjelovar  Less than 50m2 40 - 3 3 7 90,000.00   Agent - 70 20 262 Manitoba - Winnipeg -  FieldGate properties 264 1234567890 http:\\/\\/www.google.com http:\\/\\/www.facebook.com http:\\/\\/www.twitter.com 0-24  trueAir conditioning trueComputer trueHeating trueInternet trueMicrowave  trueBalcony trueGrill truePool trueParking  600 600 600 600        bjelovar-estate-1-en Bjelovar nekretnina empty apartment   Najam Stan Bjelovarska Bjelovar  Manje od 50m2 40 - 3 3 7 90,000.00   Agent - 70 20 263 Manitoba - Winnipeg -  FieldGate properties 2 265 1234567890 http:\\/\\/www.google.com http:\\/\\/www.facebook.com http:\\/\\/www.twitter.com 0-24  trueKlimatizacija trueRa\\u010dunalo trueGrijanje trueInternet trueMikrovalna  trueBalkon trueRo\\u0161tilj trueBazen trueParking  600 600 600 600        bjelovar-nekretnina\",\"is_activated\":\"1\",\"activation_paid_date\":null,\"featured_paid_date\":null,\"counter_views\":\"197\",\"image_filename\":\"431262903_9d77804a5b_o (1).jpg\",\"image_repository\":\"[\\\"431262903_9d77804a5b_o (1).jpg\\\",\\\"431267985_286ac5c8cd_o (1).jpg\\\"]\",\"option10_1\":\"Bjelovar estate\",\"option8_1\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vulputate \\r\\nnec neque gravida rhoncus. Donec sit amet blandit mauris, sed bibendum \\r\\nrisus.\",\"option17_1\":\"<p>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vulputate \\r\\nnec neque gravida rhoncus. Donec sit amet blandit mauris, sed bibendum \\r\\nrisus. Cras ut urna semper, facilisis augue sed, imperdiet nulla. Duis \\r\\ntristique tellus tortor, dapibus gravida sem sodales id. Nullam quis \\r\\nconvallis libero, vitae pulvinar nisi.<\\/p><p><span style=\\\"font-weight: bold;\\\">Nam eget est facilisis, porta mi \\r\\nac, ultricies enim. Proin nisi diam, eleifend ac eleifend in, dapibus in\\r\\n orci. Vestibulum elementum lectus non nisl venenatis, tempus molestie \\r\\nnisi tempus. Pellentesque facilisis nibh nec purus blandit, id aliquam \\r\\nlorem fermentum.\\r\\n<\\/span><\\/p>\\r\\n<p>\\r\\n<span style=\\\"font-style: italic;\\\">Ut erat lacus, sagittis ac leo eu, molestie mattis libero. Nam sit amet \\r\\nmassa et magna porttitor eleifend a aliquam nunc. Pellentesque a est a \\r\\naugue dignissim tristique eu nec augue. Integer pretium sollicitudin \\r\\ntellus, quis hendrerit nunc accumsan et. Fusce bibendum a neque vel \\r\\nfringilla. Vivamus viverra enim at purus gravida, in elementum neque \\r\\neleifend. Curabitur sodales dapibus urna, at mattis lacus eleifend non. \\r\\nDonec ultricies porta orci eu congue. Nulla sodales arcu a libero \\r\\naliquet, nec aliquam ante sagittis.<\\/span><\\/p>\",\"option38_1\":\"empty\",\"option6_1\":\"apartment\",\"option56_1\":\"\",\"option1_1\":\"0\",\"option4_1\":\"Rent\",\"option2_1\":\"Apartment\",\"option5_1\":\"Bjelovarska\",\"option7_1\":\"Bjelovar\",\"option40_1\":\"\",\"option3_1\":\"Less than 50m2\",\"option57_1\":\"40\",\"option39_1\":\"-\",\"option19_1\":\"3\",\"option20_1\":\"3\",\"option58_1\":\"7\",\"option36_1\":\"90,000.00\",\"option55_1\":\"\",\"option37_1\":\"\",\"option54_1\":\"Agent\",\"option53_1\":\"-\",\"option59_1\":\"70\",\"option60_1\":\"20\",\"option65_1\":\"262\",\"option64_1\":\"Manitoba - Winnipeg -\",\"option66_1\":\"0\",\"option67_1\":\"FieldGate properties\",\"option74_1\":\"264\",\"option68_1\":\"1234567890\",\"option69_1\":\"http:\\/\\/www.google.com\",\"option70_1\":\"http:\\/\\/www.facebook.com\",\"option71_1\":\"http:\\/\\/www.twitter.com\",\"option72_1\":\"345 Dixon Road\\r\\nToronto Ontario M9R 15G\\r\\n(Dixon &amp; Kipling)\",\"option73_1\":\"0-24\",\"option21_1\":\"0\",\"option22_1\":\"true\",\"option23_1\":\"0\",\"option24_1\":\"true\",\"option25_1\":\"0\",\"option28_1\":\"true\",\"option29_1\":\"true\",\"option31_1\":\"true\",\"option52_1\":\"0\",\"option11_1\":\"true\",\"option30_1\":\"0\",\"option27_1\":\"true\",\"option33_1\":\"true\",\"option32_1\":\"true\",\"option43_1\":\"0\",\"option44_1\":\"600\",\"option45_1\":\"600\",\"option46_1\":\"600\",\"option47_1\":\"600\",\"option48_1\":\"\",\"option49_1\":\"\",\"option50_1\":\"\",\"option51_1\":\"\",\"option9_1\":\"0\",\"option12_1\":\"\",\"option42_1\":\"0\",\"option10_2\":\"Bjelovar nekretnina\",\"option8_2\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vulputate \\r\\nnec neque gravida rhoncus. Donec sit amet blandit mauris, sed bibendum \\r\\nrisus.\",\"option17_2\":\"<p>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vulputate \\r\\nnec neque gravida rhoncus. Donec sit amet blandit mauris, sed bibendum \\r\\nrisus. Cras ut urna semper, facilisis augue sed, imperdiet nulla. Duis \\r\\ntristique tellus tortor, dapibus gravida sem sodales id. Nullam quis \\r\\nconvallis libero, vitae pulvinar nisi.<\\/p><p><span style=\\\"font-weight: bold;\\\">Nam eget est facilisis, porta mi \\r\\nac, ultricies enim. Proin nisi diam, eleifend ac eleifend in, dapibus in\\r\\n orci. Vestibulum elementum lectus non nisl venenatis, tempus molestie \\r\\nnisi tempus. Pellentesque facilisis nibh nec purus blandit, id aliquam \\r\\nlorem fermentum.\\r\\n<\\/span><\\/p>\\r\\n<p>\\r\\n<span style=\\\"font-style: italic;\\\">Ut erat lacus, sagittis ac leo eu, molestie mattis libero. Nam sit amet \\r\\nmassa et magna porttitor eleifend a aliquam nunc. Pellentesque a est a \\r\\naugue dignissim tristique eu nec augue. Integer pretium sollicitudin \\r\\ntellus, quis hendrerit nunc accumsan et. Fusce bibendum a neque vel \\r\\nfringilla. Vivamus viverra enim at purus gravida, in elementum neque \\r\\neleifend. Curabitur sodales dapibus urna, at mattis lacus eleifend non. \\r\\nDonec ultricies porta orci eu congue. Nulla sodales arcu a libero \\r\\naliquet, nec aliquam ante sagittis.<\\/span><\\/p>\",\"option38_2\":\"empty\",\"option6_2\":\"apartment\",\"option56_2\":\"\",\"option1_2\":\"0\",\"option4_2\":\"Najam\",\"option2_2\":\"Stan\",\"option5_2\":\"Bjelovarska\",\"option7_2\":\"Bjelovar\",\"option40_2\":\"\",\"option3_2\":\"Manje od 50m2\",\"option57_2\":\"40\",\"option39_2\":\"-\",\"option19_2\":\"3\",\"option20_2\":\"3\",\"option58_2\":\"7\",\"option36_2\":\"90,000.00\",\"option55_2\":\"\",\"option37_2\":\"\",\"option54_2\":\"Agent\",\"option53_2\":\"-\",\"option59_2\":\"70\",\"option60_2\":\"20\",\"option65_2\":\"263\",\"option64_2\":\"Manitoba - Winnipeg -\",\"option66_2\":\"0\",\"option67_2\":\"FieldGate properties 2\",\"option74_2\":\"265\",\"option68_2\":\"1234567890\",\"option69_2\":\"http:\\/\\/www.google.com\",\"option70_2\":\"http:\\/\\/www.facebook.com\",\"option71_2\":\"http:\\/\\/www.twitter.com\",\"option72_2\":\"My company description<br>\",\"option73_2\":\"0-24\",\"option21_2\":\"0\",\"option22_2\":\"true\",\"option23_2\":\"0\",\"option24_2\":\"true\",\"option25_2\":\"0\",\"option28_2\":\"true\",\"option29_2\":\"true\",\"option31_2\":\"true\",\"option52_2\":\"0\",\"option11_2\":\"true\",\"option30_2\":\"0\",\"option27_2\":\"true\",\"option33_2\":\"true\",\"option32_2\":\"true\",\"option43_2\":\"0\",\"option44_2\":\"600\",\"option45_2\":\"600\",\"option46_2\":\"600\",\"option47_2\":\"600\",\"option48_2\":\"\",\"option49_2\":\"\",\"option50_2\":\"\",\"option51_2\":\"\",\"option9_2\":\"0\",\"option12_2\":\"\",\"option42_2\":\"0\",\"agent\":\"18\",\"slug_1\":\"bjelovar-estate-1-en\",\"slug_2\":\"bjelovar-nekretnina\"}', NULL, NULL, NULL);
INSERT INTO `map_report` (`id_mapreport`, `lat`, `lng`, `address`, `outcome`, `price`, `area`, `date_removed`, `date_submited`, `purpose`, `type`, `property_json`, `id_old`, `user_id_remover`, `user_id_agent`) VALUES (6, '46.378570', '16.079735', 'Veliki lovrečan', 'SOLD', 100, 60, '2015-03-21 11:49:54', '2014-03-07 20:12:14', 'Sale', 'House', '{\"id\":\"29\",\"gps\":\"46.3785703, 16.0797348\",\"lat\":\"46.378570\",\"lng\":\"16.079735\",\"date\":\"2014-03-07 20:12:14\",\"date_modified\":\"2014-12-28 18:59:23\",\"address\":\"Veliki lovre\\u010dan\",\"type\":null,\"repository_id\":\"195\",\"is_featured\":\"0\",\"search_values\":\"id: 29Veliki lovre\\u010dan My property new house   Sale House Vara\\u017edinska Cestica   50-100m2 60 D 2 2 5    Agent  50 20 SKIP_ON_EMPTY   SKIP_ON_EMPTY       trueAir conditioning trueCable TV  trueBalcony        700 700    Moja nekretnina novo house   Prodaja Ku\\u0107a Vara\\u017edinska Cestica   50-100m2 60 D 2 2 5    Agent    SKIP_ON_EMPTY   SKIP_ON_EMPTY       trueKlimatizacija trueKabelska TV  trueBalkon        700 700   \",\"is_activated\":\"0\",\"activation_paid_date\":null,\"featured_paid_date\":null,\"counter_views\":\"0\",\"image_filename\":null,\"image_repository\":null,\"option10_1\":\"My property\",\"option8_1\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vulputate \\r\\nnec neque gravida rhoncus. Donec sit amet blandit mauris, sed bibendum \\r\\nrisus.\",\"option17_1\":\"<p>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vulputate \\r\\nnec neque gravida rhoncus. Donec sit amet blandit mauris, sed bibendum \\r\\nrisus. Cras ut urna semper, facilisis augue sed, imperdiet nulla. Duis \\r\\ntristique tellus tortor, dapibus gravida sem sodales id. Nullam quis \\r\\nconvallis libero, vitae pulvinar nisi.<\\/p><p><span style=\\\"font-weight: bold;\\\">Nam eget est facilisis, porta mi \\r\\nac, ultricies enim. Proin nisi diam, eleifend ac eleifend in, dapibus in\\r\\n orci. Vestibulum elementum lectus non nisl venenatis, tempus molestie \\r\\nnisi tempus. Pellentesque facilisis nibh nec purus blandit, id aliquam \\r\\nlorem fermentum.\\r\\n<\\/span><\\/p>\\r\\n<p>\\r\\n<span style=\\\"font-style: italic;\\\">Ut erat lacus, sagittis ac leo eu, molestie mattis libero. Nam sit amet \\r\\nmassa et magna porttitor eleifend a aliquam nunc. Pellentesque a est a \\r\\naugue dignissim tristique eu nec augue. Integer pretium sollicitudin \\r\\ntellus, quis hendrerit nunc accumsan et. Fusce bibendum a neque vel \\r\\nfringilla. Vivamus viverra enim at purus gravida, in elementum neque \\r\\neleifend. Curabitur sodales dapibus urna, at mattis lacus eleifend non. \\r\\nDonec ultricies porta orci eu congue. Nulla sodales arcu a libero \\r\\naliquet, nec aliquam ante sagittis.<\\/span><\\/p>\",\"option38_1\":\"new\",\"option6_1\":\"house\",\"option56_1\":\"\",\"option1_1\":\"0\",\"option4_1\":\"Sale\",\"option2_1\":\"House\",\"option5_1\":\"Vara\\u017edinska\",\"option7_1\":\"Cestica\",\"option40_1\":\"\",\"option64_1\":\"\",\"option3_1\":\"50-100m2\",\"option57_1\":\"60\",\"option39_1\":\"D\",\"option19_1\":\"2\",\"option20_1\":\"2\",\"option58_1\":\"5\",\"option36_1\":\"\",\"option55_1\":\"\",\"option37_1\":\"\",\"option54_1\":\"Agent\",\"option53_1\":\"\",\"option59_1\":\"50\",\"option60_1\":\"20\",\"option66_1\":\"0\",\"option67_1\":\"\",\"option68_1\":\"\",\"option69_1\":\"\",\"option70_1\":\"\",\"option71_1\":\"\",\"option72_1\":\"\",\"option73_1\":\"\",\"option21_1\":\"0\",\"option22_1\":\"true\",\"option23_1\":\"true\",\"option24_1\":\"0\",\"option25_1\":\"0\",\"option28_1\":\"0\",\"option29_1\":\"0\",\"option31_1\":\"0\",\"option52_1\":\"0\",\"option11_1\":\"true\",\"option30_1\":\"0\",\"option27_1\":\"0\",\"option33_1\":\"0\",\"option32_1\":\"0\",\"option43_1\":\"0\",\"option44_1\":\"\",\"option45_1\":\"\",\"option46_1\":\"\",\"option47_1\":\"\",\"option48_1\":\"\",\"option49_1\":\"\",\"option50_1\":\"700\",\"option51_1\":\"700\",\"option9_1\":\"0\",\"option12_1\":\"\",\"option42_1\":\"0\",\"option10_2\":\"Moja nekretnina\",\"option8_2\":\"Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vulputate \\r\\nnec neque gravida rhoncus. Donec sit amet blandit mauris, sed bibendum \\r\\nrisus.\",\"option17_2\":\"<p>\\r\\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vulputate \\r\\nnec neque gravida rhoncus. Donec sit amet blandit mauris, sed bibendum \\r\\nrisus. Cras ut urna semper, facilisis augue sed, imperdiet nulla. Duis \\r\\ntristique tellus tortor, dapibus gravida sem sodales id. Nullam quis \\r\\nconvallis libero, vitae pulvinar nisi.<\\/p><p><span style=\\\"font-weight: bold;\\\">Nam eget est facilisis, porta mi \\r\\nac, ultricies enim. Proin nisi diam, eleifend ac eleifend in, dapibus in\\r\\n orci. Vestibulum elementum lectus non nisl venenatis, tempus molestie \\r\\nnisi tempus. Pellentesque facilisis nibh nec purus blandit, id aliquam \\r\\nlorem fermentum.\\r\\n<\\/span><\\/p>\\r\\n<p>\\r\\n<span style=\\\"font-style: italic;\\\">Ut erat lacus, sagittis ac leo eu, molestie mattis libero. Nam sit amet \\r\\nmassa et magna porttitor eleifend a aliquam nunc. Pellentesque a est a \\r\\naugue dignissim tristique eu nec augue. Integer pretium sollicitudin \\r\\ntellus, quis hendrerit nunc accumsan et. Fusce bibendum a neque vel \\r\\nfringilla. Vivamus viverra enim at purus gravida, in elementum neque \\r\\neleifend. Curabitur sodales dapibus urna, at mattis lacus eleifend non. \\r\\nDonec ultricies porta orci eu congue. Nulla sodales arcu a libero \\r\\naliquet, nec aliquam ante sagittis.<\\/span><\\/p>\",\"option38_2\":\"novo\",\"option6_2\":\"house\",\"option56_2\":\"\",\"option1_2\":\"0\",\"option4_2\":\"Prodaja\",\"option2_2\":\"Ku\\u0107a\",\"option5_2\":\"Vara\\u017edinska\",\"option7_2\":\"Cestica\",\"option40_2\":\"\",\"option64_2\":\"\",\"option3_2\":\"50-100m2\",\"option57_2\":\"60\",\"option39_2\":\"D\",\"option19_2\":\"2\",\"option20_2\":\"2\",\"option58_2\":\"5\",\"option36_2\":\"\",\"option55_2\":\"\",\"option37_2\":\"\",\"option54_2\":\"Agent\",\"option53_2\":\"\",\"option59_2\":\"\",\"option60_2\":\"\",\"option66_2\":\"0\",\"option67_2\":\"\",\"option68_2\":\"\",\"option69_2\":\"\",\"option70_2\":\"\",\"option71_2\":\"\",\"option72_2\":\"\",\"option73_2\":\"\",\"option21_2\":\"0\",\"option22_2\":\"true\",\"option23_2\":\"true\",\"option24_2\":\"0\",\"option25_2\":\"0\",\"option28_2\":\"0\",\"option29_2\":\"0\",\"option31_2\":\"0\",\"option52_2\":\"0\",\"option11_2\":\"true\",\"option30_2\":\"0\",\"option27_2\":\"0\",\"option33_2\":\"0\",\"option32_2\":\"0\",\"option43_2\":\"0\",\"option44_2\":\"\",\"option45_2\":\"\",\"option46_2\":\"\",\"option47_2\":\"\",\"option48_2\":\"\",\"option49_2\":\"\",\"option50_2\":\"700\",\"option51_2\":\"700\",\"option9_2\":\"0\",\"option12_2\":\"\",\"option42_2\":\"0\",\"agent\":\"18\",\"slug_1\":\"\",\"slug_2\":\"\"}', 29, 18, 18);


#
# TABLE STRUCTURE FOR: removed_listings
#

CREATE TABLE `removed_listings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_removed` datetime DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci,
  `lat` decimal(9,6) DEFAULT NULL,
  `lng` decimal(9,6) DEFAULT NULL,
  `submission_date` datetime DEFAULT NULL,
  `expire_date` datetime DEFAULT NULL,
  `price_0` int(11) DEFAULT NULL,
  `price_1` int(11) DEFAULT NULL,
  `price_2` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: reports
#

CREATE TABLE `reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date_submit` datetime DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `message` text,
  `allow_contact` varchar(45) DEFAULT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `property_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: token_api
#

CREATE TABLE `token_api` (
  `id` int(11) NOT NULL,
  `date_last_access` datetime NOT NULL,
  `ip` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `other` text COLLATE utf8_unicode_ci NOT NULL,
  `json` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: trates
#

CREATE TABLE `trates` (
  `id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `min_stay` int(11) DEFAULT '1',
  `changeover_day` int(11) DEFAULT '6',
  `table_row_index` int(11) DEFAULT NULL,
  `dates` text COLLATE utf8_unicode_ci,
  `rates` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: user_attend_listing
#

CREATE TABLE `user_attend_listing` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `listing_id` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `ip` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: visits
#

CREATE TABLE `visits` (
  `id` int(11) NOT NULL,
  `date_visit` datetime DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_confirmed` datetime DEFAULT NULL,
  `date_canceled` datetime DEFAULT NULL,
  `property_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `client_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# TABLE STRUCTURE FOR: weather_cacher
#

CREATE TABLE `weather_cacher` (
  `id` int(11) NOT NULL,
  `property_id` int(11) DEFAULT NULL,
  `lang_id` int(11) DEFAULT NULL,
  `weather_api` varchar(32) DEFAULT NULL,
  `value` text,
  `expire_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `weather_cacher` (`id`, `property_id`, `lang_id`, `weather_api`, `value`, `expire_date`) VALUES (1, 18, 1, 'openweathermap', '{\"city\":{\"id\":3188383,\"name\":\"Varazdin\",\"coord\":{\"lon\":16.3378,\"lat\":46.3044},\"country\":\"HR\",\"population\":41808},\"cod\":\"200\",\"message\":3.1724535,\"cnt\":8,\"list\":[{\"dt\":1531998000,\"temp\":{\"day\":28.54,\"min\":17.26,\"max\":28.54,\"night\":17.26,\"eve\":25.17,\"morn\":28.54},\"pressure\":1000.61,\"humidity\":69,\"weather\":[{\"id\":804,\"main\":\"Clouds\",\"description\":\"overcast clouds\",\"icon\":\"04d\"}],\"speed\":1.42,\"deg\":20,\"clouds\":92},{\"dt\":1532084400,\"temp\":{\"day\":26.42,\"min\":18.38,\"max\":26.82,\"night\":18.38,\"eve\":24.44,\"morn\":21.05},\"pressure\":1000.56,\"humidity\":73,\"weather\":[{\"id\":800,\"main\":\"Clear\",\"description\":\"sky is clear\",\"icon\":\"01d\"}],\"speed\":1.56,\"deg\":153,\"clouds\":0},{\"dt\":1532170800,\"temp\":{\"day\":27.98,\"min\":17.89,\"max\":27.98,\"night\":17.89,\"eve\":24.91,\"morn\":20.5},\"pressure\":997.73,\"humidity\":72,\"weather\":[{\"id\":500,\"main\":\"Rain\",\"description\":\"light rain\",\"icon\":\"10d\"}],\"speed\":2.51,\"deg\":226,\"clouds\":76,\"rain\":2.33},{\"dt\":1532257200,\"temp\":{\"day\":23.24,\"min\":16.11,\"max\":24.08,\"night\":16.11,\"eve\":22.18,\"morn\":18.31},\"pressure\":998.85,\"humidity\":81,\"weather\":[{\"id\":500,\"main\":\"Rain\",\"description\":\"light rain\",\"icon\":\"10d\"}],\"speed\":1.8,\"deg\":352,\"clouds\":56,\"rain\":0.57},{\"dt\":1532343600,\"temp\":{\"day\":23.54,\"min\":15.16,\"max\":23.54,\"night\":15.16,\"eve\":21.14,\"morn\":18.69},\"pressure\":994.57,\"humidity\":0,\"weather\":[{\"id\":500,\"main\":\"Rain\",\"description\":\"light rain\",\"icon\":\"10d\"}],\"speed\":2.46,\"deg\":2,\"clouds\":5,\"rain\":0.37},{\"dt\":1532430000,\"temp\":{\"day\":24.98,\"min\":16.52,\"max\":24.98,\"night\":16.52,\"eve\":22.7,\"morn\":20.11},\"pressure\":995.96,\"humidity\":0,\"weather\":[{\"id\":500,\"main\":\"Rain\",\"description\":\"light rain\",\"icon\":\"10d\"}],\"speed\":1.75,\"deg\":1,\"clouds\":18},{\"dt\":1532516400,\"temp\":{\"day\":26.66,\"min\":17.97,\"max\":26.66,\"night\":17.97,\"eve\":23.57,\"morn\":21.1},\"pressure\":999.38,\"humidity\":0,\"weather\":[{\"id\":500,\"main\":\"Rain\",\"description\":\"light rain\",\"icon\":\"10d\"}],\"speed\":1.56,\"deg\":10,\"clouds\":27,\"rain\":1.26},{\"dt\":1532602800,\"temp\":{\"day\":22.63,\"min\":17.1,\"max\":22.63,\"night\":17.1,\"eve\":21.79,\"morn\":19.05},\"pressure\":1004.26,\"humidity\":0,\"weather\":[{\"id\":500,\"main\":\"Rain\",\"description\":\"light rain\",\"icon\":\"10d\"}],\"speed\":1.58,\"deg\":42,\"clouds\":43,\"rain\":1.29}]}', '2018-07-19 22:38:07');
INSERT INTO `weather_cacher` (`id`, `property_id`, `lang_id`, `weather_api`, `value`, `expire_date`) VALUES (2, 2, 1, 'openweathermap', '{\"city\":{\"id\":3188383,\"name\":\"Varazdin\",\"coord\":{\"lon\":16.3378,\"lat\":46.3044},\"country\":\"HR\",\"population\":41808},\"cod\":\"200\",\"message\":1.2744554,\"cnt\":8,\"list\":[{\"dt\":1532170800,\"temp\":{\"day\":28.66,\"min\":18.37,\"max\":28.66,\"night\":18.37,\"eve\":25.72,\"morn\":26.48},\"pressure\":997.29,\"humidity\":67,\"weather\":[{\"id\":500,\"main\":\"Rain\",\"description\":\"light rain\",\"icon\":\"10d\"}],\"speed\":2.52,\"deg\":191,\"clouds\":56,\"rain\":1.14},{\"dt\":1532257200,\"temp\":{\"day\":26.35,\"min\":17.18,\"max\":26.35,\"night\":17.18,\"eve\":18.6,\"morn\":19.14},\"pressure\":995.94,\"humidity\":79,\"weather\":[{\"id\":502,\"main\":\"Rain\",\"description\":\"heavy intensity rain\",\"icon\":\"10d\"}],\"speed\":1.61,\"deg\":118,\"clouds\":12,\"rain\":12.39},{\"dt\":1532343600,\"temp\":{\"day\":22.78,\"min\":17.68,\"max\":23.94,\"night\":19.97,\"eve\":22.28,\"morn\":17.68},\"pressure\":997.66,\"humidity\":76,\"weather\":[{\"id\":500,\"main\":\"Rain\",\"description\":\"light rain\",\"icon\":\"10d\"}],\"speed\":4.82,\"deg\":21,\"clouds\":36,\"rain\":1.31},{\"dt\":1532430000,\"temp\":{\"day\":26.1,\"min\":17.62,\"max\":26.1,\"night\":17.62,\"eve\":22.99,\"morn\":21.01},\"pressure\":998.83,\"humidity\":68,\"weather\":[{\"id\":802,\"main\":\"Clouds\",\"description\":\"scattered clouds\",\"icon\":\"03d\"}],\"speed\":1.86,\"deg\":23,\"clouds\":48},{\"dt\":1532516400,\"temp\":{\"day\":25.2,\"min\":18.78,\"max\":25.2,\"night\":18.78,\"eve\":22.84,\"morn\":20.38},\"pressure\":992.85,\"humidity\":0,\"weather\":[{\"id\":500,\"main\":\"Rain\",\"description\":\"light rain\",\"icon\":\"10d\"}],\"speed\":3.73,\"deg\":13,\"clouds\":21,\"rain\":0.45},{\"dt\":1532602800,\"temp\":{\"day\":24.5,\"min\":19.46,\"max\":24.5,\"night\":19.46,\"eve\":22.19,\"morn\":21.94},\"pressure\":991.94,\"humidity\":0,\"weather\":[{\"id\":501,\"main\":\"Rain\",\"description\":\"moderate rain\",\"icon\":\"10d\"}],\"speed\":0.99,\"deg\":285,\"clouds\":74,\"rain\":3.39},{\"dt\":1532689200,\"temp\":{\"day\":25.9,\"min\":20.48,\"max\":25.9,\"night\":20.48,\"eve\":24.39,\"morn\":20.57},\"pressure\":993.17,\"humidity\":0,\"weather\":[{\"id\":500,\"main\":\"Rain\",\"description\":\"light rain\",\"icon\":\"10d\"}],\"speed\":1.92,\"deg\":310,\"clouds\":69,\"rain\":2.66},{\"dt\":1532775600,\"temp\":{\"day\":27.41,\"min\":18.86,\"max\":27.41,\"night\":18.86,\"eve\":24.61,\"morn\":22.96},\"pressure\":994.95,\"humidity\":0,\"weather\":[{\"id\":500,\"main\":\"Rain\",\"description\":\"light rain\",\"icon\":\"10d\"}],\"speed\":1.6,\"deg\":18,\"clouds\":31,\"rain\":2.4}]}', '2018-07-21 15:55:50');
INSERT INTO `weather_cacher` (`id`, `property_id`, `lang_id`, `weather_api`, `value`, `expire_date`) VALUES (3, 11, 1, 'openweathermap', '{\"city\":{\"id\":3188383,\"name\":\"Varazdin\",\"coord\":{\"lon\":16.3378,\"lat\":46.3044},\"country\":\"HR\",\"population\":41808},\"cod\":\"200\",\"message\":3.187349,\"cnt\":8,\"list\":[{\"dt\":1512727200,\"temp\":{\"day\":5.28,\"min\":5.28,\"max\":5.28,\"night\":5.28,\"eve\":5.28,\"morn\":5.28},\"pressure\":995.37,\"humidity\":100,\"weather\":[{\"id\":600,\"main\":\"Snow\",\"description\":\"light snow\",\"icon\":\"13d\"}],\"speed\":3.48,\"deg\":27,\"clouds\":92,\"rain\":14.4,\"snow\":0.16},{\"dt\":1512813600,\"temp\":{\"day\":0.7,\"min\":-6.61,\"max\":1.62,\"night\":-6.61,\"eve\":-0.11,\"morn\":1.53},\"pressure\":995,\"humidity\":90,\"weather\":[{\"id\":601,\"main\":\"Snow\",\"description\":\"snow\",\"icon\":\"13d\"}],\"speed\":1.97,\"deg\":334,\"clouds\":68,\"snow\":3.23},{\"dt\":1512900000,\"temp\":{\"day\":-1.2,\"min\":-8.96,\"max\":6.88,\"night\":6.88,\"eve\":3.45,\"morn\":-8.63},\"pressure\":996.18,\"humidity\":68,\"weather\":[{\"id\":500,\"main\":\"Rain\",\"description\":\"light rain\",\"icon\":\"10d\"}],\"speed\":2.26,\"deg\":195,\"clouds\":0,\"rain\":1.8},{\"dt\":1512986400,\"temp\":{\"day\":12.17,\"min\":9.93,\"max\":12.78,\"night\":12.71,\"eve\":12.53,\"morn\":9.93},\"pressure\":984.54,\"humidity\":84,\"weather\":[{\"id\":500,\"main\":\"Rain\",\"description\":\"light rain\",\"icon\":\"10d\"}],\"speed\":7.62,\"deg\":215,\"clouds\":80,\"rain\":1.11},{\"dt\":1513072800,\"temp\":{\"day\":14.39,\"min\":9.83,\"max\":14.39,\"night\":9.83,\"eve\":10.95,\"morn\":12.75},\"pressure\":987.49,\"humidity\":0,\"weather\":[{\"id\":501,\"main\":\"Rain\",\"description\":\"moderate rain\",\"icon\":\"10d\"}],\"speed\":5.74,\"deg\":206,\"clouds\":62,\"rain\":8.04},{\"dt\":1513159200,\"temp\":{\"day\":6.2,\"min\":4.79,\"max\":7.7,\"night\":4.94,\"eve\":4.79,\"morn\":7.7},\"pressure\":994.32,\"humidity\":0,\"weather\":[{\"id\":501,\"main\":\"Rain\",\"description\":\"moderate rain\",\"icon\":\"10d\"}],\"speed\":1.62,\"deg\":105,\"clouds\":74,\"rain\":9.71},{\"dt\":1513245600,\"temp\":{\"day\":9.39,\"min\":6.79,\"max\":9.39,\"night\":7.9,\"eve\":8.35,\"morn\":6.79},\"pressure\":993.93,\"humidity\":0,\"weather\":[{\"id\":500,\"main\":\"Rain\",\"description\":\"light rain\",\"icon\":\"10d\"}],\"speed\":2.98,\"deg\":190,\"clouds\":97,\"rain\":1.08},{\"dt\":1513332000,\"temp\":{\"day\":11.48,\"min\":6.68,\"max\":11.48,\"night\":6.68,\"eve\":9.27,\"morn\":9.68},\"pressure\":984.16,\"humidity\":0,\"weather\":[{\"id\":501,\"main\":\"Rain\",\"description\":\"moderate rain\",\"icon\":\"10d\"}],\"speed\":3.15,\"deg\":192,\"clouds\":79,\"rain\":5.79}]}', '2017-12-09 03:15:27');
INSERT INTO `weather_cacher` (`id`, `property_id`, `lang_id`, `weather_api`, `value`, `expire_date`) VALUES (4, 20, 1, 'openweathermap', '{\"city\":{\"id\":3188383,\"name\":\"Varazdin\",\"coord\":{\"lon\":16.3378,\"lat\":46.3044},\"country\":\"HR\",\"population\":41808},\"cod\":\"200\",\"message\":0.9931722,\"cnt\":8,\"list\":[{\"dt\":1533034800,\"temp\":{\"day\":32,\"min\":20.35,\"max\":32,\"night\":20.35,\"eve\":27.78,\"morn\":32},\"pressure\":1001.09,\"humidity\":65,\"weather\":[{\"id\":500,\"main\":\"Rain\",\"description\":\"light rain\",\"icon\":\"10d\"}],\"speed\":3.2,\"deg\":17,\"clouds\":0,\"rain\":0.38},{\"dt\":1533121200,\"temp\":{\"day\":29.13,\"min\":21.39,\"max\":29.13,\"night\":21.39,\"eve\":25.96,\"morn\":23.37},\"pressure\":1002.69,\"humidity\":70,\"weather\":[{\"id\":800,\"main\":\"Clear\",\"description\":\"sky is clear\",\"icon\":\"01d\"}],\"speed\":2.32,\"deg\":29,\"clouds\":0},{\"dt\":1533207600,\"temp\":{\"day\":28.1,\"min\":21.03,\"max\":28.36,\"night\":21.03,\"eve\":26.29,\"morn\":23.19},\"pressure\":1004.31,\"humidity\":73,\"weather\":[{\"id\":801,\"main\":\"Clouds\",\"description\":\"few clouds\",\"icon\":\"02d\"}],\"speed\":2.42,\"deg\":60,\"clouds\":20},{\"dt\":1533294000,\"temp\":{\"day\":30.1,\"min\":19.78,\"max\":30.1,\"night\":19.78,\"eve\":26.3,\"morn\":24.61},\"pressure\":1003.66,\"humidity\":63,\"weather\":[{\"id\":501,\"main\":\"Rain\",\"description\":\"moderate rain\",\"icon\":\"10d\"}],\"speed\":3.41,\"deg\":32,\"clouds\":0,\"rain\":3.29},{\"dt\":1533380400,\"temp\":{\"day\":27.62,\"min\":19.39,\"max\":27.62,\"night\":19.39,\"eve\":24.52,\"morn\":22.87},\"pressure\":1001.5,\"humidity\":0,\"weather\":[{\"id\":800,\"main\":\"Clear\",\"description\":\"sky is clear\",\"icon\":\"01d\"}],\"speed\":2.52,\"deg\":36,\"clouds\":13},{\"dt\":1533466800,\"temp\":{\"day\":26.78,\"min\":18.18,\"max\":26.78,\"night\":18.18,\"eve\":23.91,\"morn\":21.89},\"pressure\":1000.04,\"humidity\":0,\"weather\":[{\"id\":800,\"main\":\"Clear\",\"description\":\"sky is clear\",\"icon\":\"01d\"}],\"speed\":0.82,\"deg\":23,\"clouds\":22},{\"dt\":1533553200,\"temp\":{\"day\":27.24,\"min\":18.58,\"max\":27.24,\"night\":18.58,\"eve\":24.34,\"morn\":21.82},\"pressure\":998,\"humidity\":0,\"weather\":[{\"id\":800,\"main\":\"Clear\",\"description\":\"sky is clear\",\"icon\":\"01d\"}],\"speed\":1.32,\"deg\":96,\"clouds\":0},{\"dt\":1533639600,\"temp\":{\"day\":29.63,\"min\":19.31,\"max\":29.63,\"night\":19.31,\"eve\":25.86,\"morn\":22.37},\"pressure\":995.34,\"humidity\":0,\"weather\":[{\"id\":800,\"main\":\"Clear\",\"description\":\"sky is clear\",\"icon\":\"01d\"}],\"speed\":1.41,\"deg\":336,\"clouds\":8}]}', '2018-07-31 19:14:03');


#
# TABLE STRUCTURE FOR: widget_options
#

CREATE TABLE `widget_options` (
  `id` int(11) NOT NULL,
  `template` varchar(64) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `page_id` int(11) DEFAULT NULL,
  `widget_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `option_name` varchar(256) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: widget_options_lang
#

CREATE TABLE `widget_options_lang` (
  `id` int(11) NOT NULL,
  `widget_options_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

#
# TABLE STRUCTURE FOR: withdrawal
#

CREATE TABLE `withdrawal` (
  `id_withdrawal` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `currency` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `completed` tinyint(1) DEFAULT '0',
  `date_requested` datetime DEFAULT NULL,
  `date_completed` datetime DEFAULT NULL,
  `withdrawal_email` varchar(160) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id_withdrawal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `withdrawal` (`id_withdrawal`, `user_id`, `amount`, `currency`, `completed`, `date_requested`, `date_completed`, `withdrawal_email`) VALUES (3, 18, '10.00', 'USD', 0, '2015-03-11 16:20:47', NULL, 'sandi.winter@gmail.com');
INSERT INTO `withdrawal` (`id_withdrawal`, `user_id`, `amount`, `currency`, `completed`, `date_requested`, `date_completed`, `withdrawal_email`) VALUES (4, 18, '8.00', 'USD', 0, '2015-03-13 18:12:13', NULL, 'sandi.winter@gmail.com');


