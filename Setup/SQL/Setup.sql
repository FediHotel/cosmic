DROP TABLE IF EXISTS `website_alert_messages`;
CREATE TABLE IF NOT EXISTS `website_alert_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL DEFAULT '',
  `message` varchar(150) NOT NULL DEFAULT 'Unacceptable for the Hotel Management',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;


REPLACE INTO `website_alert_messages` (`id`, `title`, `message`) VALUES
	(1, 'Use of language', 'Watch your language! You will be banned on repeated occasions.'),
	(2, 'Act as Staff', 'Acting as Staff is against the rules. You will be banned on repeated occasions.'),
	(3, 'Talking about retro hotels', 'Talking about retro hotels is against the rules! At repetition you will be banned.'),
	(4, 'Requesting/giving away personal information', 'Asking/giving away personal data is against the rules! You will be banned on repeated occasions.'),
	(5, 'Ask/give away Social Media', 'Ask/giving away snapchat, insta or other Social Media is against the rules! You will be banned on repeated occasions.'),
	(6, 'Unacceptable language/behavior', 'Unacceptable language/behavior is against the rules! You will be banned on repeated occasions.'),
	(7, 'Harassment', 'Don\'t bother other players! You will be banned on repeated occasions.'),
	(8, 'Sexual conversations/behaviors', 'Sexual conversations or behaviors are against the rules! You will be banned on repeated occasions.');


DROP TABLE IF EXISTS `website_badge_requests`;
CREATE TABLE IF NOT EXISTS `website_badge_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `badge_imaging` varchar(255) DEFAULT NULL,
  `status` enum('open','accept','decline') DEFAULT 'open',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=300 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `website_bans_asn`;
CREATE TABLE IF NOT EXISTS `website_bans_asn` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asn` int(11) NOT NULL,
  `host` varchar(100) NOT NULL DEFAULT '',
  `added_by` varchar(75) NOT NULL DEFAULT '0',
  `timestamp` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `asn` (`asn`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

DROP TABLE IF EXISTS `website_ban_messages`;
CREATE TABLE IF NOT EXISTS `website_ban_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` varchar(75) NOT NULL DEFAULT 'Unacceptable for the Hotel Management',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

REPLACE INTO `website_ban_messages` (`id`, `message`) VALUES
	(1, 'Advertising for Retro Hotels'),
	(2, 'Highlight one or more players'),
	(3, 'Illegal activities'),
	(4, 'Hate speech/discrimination'),
	(5, 'Pedophile activities'),
	(6, 'Requesting/giving away personal information'),
	(7, 'Ask/giving away snapchat, insta or other Social Media'),
	(8, 'Harassment/unacceptable language or behavior'),
	(9, 'Order disturbance'),
	(10, 'Embarrassing sexual behaviors'),
	(11, 'Requesting/offering webscam sex or sexual images'),
	(12, 'Threat of one or more players with ddos/hack/expose'),
	(13, 'Act as Staff'),
	(14, 'Username in violation of the rules');

DROP TABLE IF EXISTS `website_ban_types`;
CREATE TABLE IF NOT EXISTS `website_ban_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seconds` int(10) NOT NULL DEFAULT 7200,
  `message` varchar(50) NOT NULL DEFAULT '',
  `min_rank` int(10) NOT NULL DEFAULT 6,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE,
  KEY `min_rank` (`min_rank`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

REPLACE INTO `website_ban_types` (`id`, `seconds`, `message`, `min_rank`) VALUES
	(1, 7200, '2 hours', 4),
	(2, 14400, '4 hours', 4),
	(3, 28800, '8 hours', 4),
	(4, 43200, '12 hours', 4),
	(5, 86400, '1 day', 6),
	(6, 259200, '3 days', 6),
	(7, 604800, '1 week', 6),
	(8, 2629743, '1 month', 6),
	(9, 7889231, '3 months', 6),
	(10, 946707780, 'permanent', 6);

DROP TABLE IF EXISTS `website_extra_ranks`;
CREATE TABLE IF NOT EXISTS `website_extra_ranks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rank_name` varchar(255) DEFAULT NULL,
  `rank_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

REPLACE INTO `website_extra_ranks` (`id`, `rank_name`, `rank_description`) VALUES
	(4, 'Event Manager', ''),
	(6, 'Ambassadeur', ''),
	(8, 'VIP', '');

DROP TABLE IF EXISTS `website_feeds`;
CREATE TABLE IF NOT EXISTS `website_feeds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `to_user_id` int(11) NOT NULL,
  `message` mediumtext NOT NULL,
  `timestamp` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `is_hidden` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

DROP TABLE IF EXISTS `website_feeds_likes`;
CREATE TABLE IF NOT EXISTS `website_feeds_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `feed_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;


DROP TABLE IF EXISTS `website_feeds_reactions`;
CREATE TABLE IF NOT EXISTS `website_feeds_reactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `feed_id` int(11) NOT NULL,
  `message` mediumtext NOT NULL,
  `timestamp` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `is_hidden` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

DROP TABLE IF EXISTS `website_forum_likes`;
CREATE TABLE IF NOT EXISTS `website_forum_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `website_helptool_categories`;
CREATE TABLE IF NOT EXISTS `website_helptool_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

DROP TABLE IF EXISTS `website_helptool_faq`;
CREATE TABLE IF NOT EXISTS `website_helptool_faq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(100) NOT NULL DEFAULT '',
  `desc` mediumtext NOT NULL,
  `category` int(11) NOT NULL DEFAULT 0,
  `timestamp` int(11) NOT NULL DEFAULT 0,
  `author` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `category` (`category`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

DROP TABLE IF EXISTS `website_helptool_logs`;
CREATE TABLE IF NOT EXISTS `website_helptool_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) NOT NULL DEFAULT 0,
  `target` varchar(50) NOT NULL DEFAULT '',
  `value` varchar(255) DEFAULT '',
  `timestamp` int(11) NOT NULL DEFAULT 0,
  `type` enum('CHANGE','SEND') DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `player_id` (`player_id`) USING BTREE,
  KEY `target` (`target`) USING BTREE,
  KEY `type` (`type`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `website_helptool_reactions`;
CREATE TABLE IF NOT EXISTS `website_helptool_reactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `request_id` int(11) DEFAULT NULL,
  `practitioner_id` int(11) NOT NULL,
  `message` mediumtext DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

DROP TABLE IF EXISTS `website_helptool_requests`;
CREATE TABLE IF NOT EXISTS `website_helptool_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` mediumtext NOT NULL,
  `email` varchar(72) NOT NULL DEFAULT '',
  `player_id` int(11) DEFAULT 0,
  `ip_address` varchar(75) NOT NULL,
  `timestamp` int(11) NOT NULL DEFAULT 0,
  `status` enum('closed','open','in_treatment','wait_reply') DEFAULT 'open',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

DROP TABLE IF EXISTS `website_jobs`;
CREATE TABLE IF NOT EXISTS `website_jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job` varchar(40) NOT NULL,
  `small_description` varchar(255) NOT NULL,
  `full_description` longtext NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `website_jobs_applys`;
CREATE TABLE IF NOT EXISTS `website_jobs_applys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `available_monday` varchar(50) DEFAULT NULL,
  `available_tuesday` varchar(50) DEFAULT NULL,
  `available_wednesday` varchar(50) DEFAULT NULL,
  `available_thursday` varchar(50) DEFAULT NULL,
  `available_friday` varchar(50) DEFAULT NULL,
  `available_saturday` varchar(50) DEFAULT NULL,
  `available_sunday` varchar(50) DEFAULT NULL,
  `status` enum('open','closed') DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `website_membership`;
CREATE TABLE IF NOT EXISTS `website_membership` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `old_rank` int(1) DEFAULT NULL,
  `expires_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

DROP TABLE IF EXISTS `website_news`;
CREATE TABLE IF NOT EXISTS `website_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '0',
  `short_story` text NOT NULL,
  `full_story` text NOT NULL,
  `images` text NOT NULL,
  `author` int(11) NOT NULL DEFAULT 0,
  `header` varchar(255) NOT NULL DEFAULT '',
  `category` int(4) NOT NULL DEFAULT 0,
  `form` enum('none','photo','badge','look','word') NOT NULL DEFAULT 'none',
  `timestamp` int(11) NOT NULL DEFAULT 0,
  `hidden` enum('0','1') NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE,
  KEY `slug` (`slug`) USING BTREE,
  KEY `timestamp` (`timestamp`) USING BTREE,
  KEY `hidden` (`hidden`) USING BTREE,
  KEY `category` (`category`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci ROW_FORMAT=COMPACT;

DROP TABLE IF EXISTS `website_news_categories`;
CREATE TABLE IF NOT EXISTS `website_news_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE,
  KEY `category` (`category`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

DROP TABLE IF EXISTS `website_news_reactions`;
CREATE TABLE IF NOT EXISTS `website_news_reactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` int(11) NOT NULL DEFAULT 0,
  `news_id` int(11) DEFAULT NULL,
  `player_id` int(11) DEFAULT NULL,
  `message` varchar(250) DEFAULT NULL,
  `hidden` int(11) DEFAULT 0,
  `timestamp` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `website_notifications`;
CREATE TABLE IF NOT EXISTS `website_notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) NOT NULL DEFAULT 0,
  `message` varchar(255) NOT NULL DEFAULT '',
  `type` enum('0','1') NOT NULL,
  `is_read` enum('0','1') NOT NULL DEFAULT '0',
  `timestamp` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `player_id` (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

DROP TABLE IF EXISTS `website_password_reset`;
CREATE TABLE IF NOT EXISTS `website_password_reset` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) NOT NULL,
  `email` varchar(75) NOT NULL DEFAULT '',
  `ip_address` varchar(100) NOT NULL DEFAULT '0.0.0.0',
  `token` varchar(255) NOT NULL DEFAULT 'CamWijs',
  `timestamp` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=278 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

DROP TABLE IF EXISTS `website_paypal_offers`;
CREATE TABLE IF NOT EXISTS `website_paypal_offers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` varchar(10) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `data` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

DROP TABLE IF EXISTS `website_paypal_payments`;
CREATE TABLE IF NOT EXISTS `website_paypal_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `offer_id` int(11) DEFAULT NULL,
  `order_id` varchar(255) DEFAULT NULL,
  `payer_id` varchar(255) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'pending',
  `delivered` enum('NO','YES') DEFAULT 'NO',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

DROP TABLE IF EXISTS `website_permissions`;
CREATE TABLE IF NOT EXISTS `website_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission` varchar(255) NOT NULL DEFAULT 'housekeeping_',
  `description` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `id` (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

REPLACE INTO `website_permissions` (`id`, `permission`, `description`) VALUES
	(1, 'housekeeping', 'Player has access to the housekeeping.'),
	(2, 'housekeeping_remote_control', 'Player is able to nd may adjust other players account information, except the ranks.'),
	(3, 'housekeeping_ban_user', 'Player is able to ban users from the control panel. A rank system is included in this permission.'),
	(4, 'housekeeping_ban_logs', 'Player is able to view which players have been denied access to the hotel'),
	(5, 'housekeeping_staff_logs', 'Player is able to view all loggings that staffs have committed in the cms'),
	(6, 'housekeeping_chat_logs', 'Player is able to read chat logs from other players'),
	(7, 'housekeeping_website', '\r\nPlayer has access to the website category'),
	(8, 'housekeeping_website_news', 'Player is able to manage news items'),
	(9, 'housekeeping_ranks', 'Player is able to change ranks of other players'),
	(10, 'housekeeping_permissions', 'Player can add/remove permissions for other players who have access to housekeeping'),
	(11, 'housekeeping_ip_display', 'Player is able to see IP addresses of other players'),
	(12, 'housekeeping_reset_user', 'Player is able to reset the player (motto, look, relationships)'),
	(13, 'housekeeping_alert_user', 'Player is able to send warn the player'),
	(14, 'housekeeping_room_control', 'Player is able to see rooms but not able to edit the room'),
	(15, 'housekeeping_moderation_tools', 'Player is able to use the moderation tools on the website'),
	(16, 'housekeeping_website_helptool', 'Player is able to handle the helptool'),
	(17, 'housekeeping_change_email', 'Player is able to change mail adresses'),
	(18, 'housekeeping_website_feeds', 'Player is able to remove feeds from the website'),
	(19, 'housekeeping_vpn_control', 'Player is able to ban of unban AS numbers'),
	(20, 'housekeeping_wordfilter_control', 'Player is able to manage the word filter'),
	(21, 'housekeeping_website_rarevalue', 'Player is able to change rare values'),
	(22, 'housekeeping_website_faq', 'Player is able to manage the FAQ'),
	(23, 'housekeeping_shop_control', 'Player is able to handle and see purchase logs'),
	(24, 'housekeeping_ranks_extra', 'Player is able to edit the extra rank'),
	(25, 'housekeeping_staff_logs_menu', 'Player is able to see logs in menu'),
	(26, 'housekeeping_config', 'Player can manage all the config settings'),
	(27, 'website_invisible_staff', 'Hide rank from staff page at website'),
	(28, 'website_extra_rank', ''),
	(29, 'housekeeping_website_badgerequest', 'Player is able to accept new badge requests'),
	(30, 'housekeeping_server_catalog', 'Player is able to manage catalog'),
	(31, 'housekeeping_rarevalue_control', 'Player is able to manage rare value control');

DROP TABLE IF EXISTS `website_permissions_ranks`;
CREATE TABLE IF NOT EXISTS `website_permissions_ranks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permission_id` int(11) NOT NULL,
  `rank_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `rank_id` (`rank_id`) USING BTREE,
  KEY `permission_id` (`permission_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

/*!40000 ALTER TABLE `website_permissions_ranks` DISABLE KEYS */;
REPLACE INTO `website_permissions_ranks` (`id`, `permission_id`, `rank_id`) VALUES
	(1, 1, 7),
	(2, 2, 7),
	(3, 3, 7),
	(4, 4, 7),
	(5, 5, 7),
	(6, 6, 7),
	(7, 7, 7),
	(8, 8, 7),
	(9, 9, 7),
	(10, 10, 7),
	(11, 11, 7),
	(12, 12, 7),
	(13, 13, 7),
	(14, 14, 7),
	(15, 15, 7),
	(16, 16, 7),
	(17, 17, 7),
	(18, 18, 7),
	(19, 19, 7),
	(20, 20, 7),
	(21, 21, 7),
	(22, 22, 7),
	(23, 23, 7),
	(24, 24, 7),
	(25, 25, 7),
	(26, 26, 7),
	(29, 1, 6),
	(31, 3, 6),
	(32, 4, 6),
	(33, 5, 6),
	(34, 6, 6),
	(35, 7, 6),
	(36, 8, 6),
	(39, 11, 6),
	(40, 12, 6),
	(41, 13, 6),
	(42, 14, 6),
	(43, 15, 6),
	(44, 16, 6),
	(45, 17, 6),
	(46, 18, 6),
	(47, 19, 6),
	(48, 20, 6),
	(49, 21, 6),
	(50, 22, 6),
	(51, 23, 6),
	(53, 25, 6),
	(56, 29, 7),
	(57, 29, 6),
	(87, 1, 5),
	(88, 4, 5),
	(89, 29, 5),
	(91, 6, 5),
	(92, 3, 5),
	(98, 7, 5),
	(102, 15, 5),
	(103, 14, 5),
	(108, 16, 5),
	(135, 30, 7),
	(136, 31, 7),
	(141, 28, 7),
	(142, 27, 3),
	(143, 5, 5),
	(146, 27, 1),
	(147, 27, 2);

DROP TABLE IF EXISTS `website_photos_likes`;
CREATE TABLE IF NOT EXISTS `website_photos_likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `photo_id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=152 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `website_profile_catalogues`;
CREATE TABLE IF NOT EXISTS `website_profile_catalogues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL DEFAULT 's',
  `data` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2869 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `website_profile_catalogues_cats`;
CREATE TABLE IF NOT EXISTS `website_profile_catalogues_cats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL DEFAULT 's',
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1002 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `website_profile_homes`;
CREATE TABLE IF NOT EXISTS `website_profile_homes` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `user_id` int(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `z` varchar(255) DEFAULT NULL,
  `x` varchar(255) DEFAULT NULL,
  `y` varchar(255) DEFAULT NULL,
  `skin` varchar(255) DEFAULT NULL,
  `data` mediumtext DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `website_rares`;
CREATE TABLE IF NOT EXISTS `website_rares` (
  `id` int(250) NOT NULL AUTO_INCREMENT,
  `parent_id` int(250) NOT NULL DEFAULT 1,
  `name` varchar(108) NOT NULL,
  `item_id` int(250) NOT NULL DEFAULT 0,
  `image` varchar(250) NOT NULL,
  `cost_credits` int(15) NOT NULL DEFAULT 0,
  `cost_points` int(15) NOT NULL DEFAULT 0,
  `points_type` int(15) NOT NULL DEFAULT 5,
  `last_edited` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_editor` int(55) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `website_rares_pages`;
CREATE TABLE IF NOT EXISTS `website_rares_pages` (
  `id` int(55) NOT NULL AUTO_INCREMENT,
  `name` varchar(55) NOT NULL,
  `description` varchar(55) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `website_referrals`;
CREATE TABLE IF NOT EXISTS `website_referrals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `referral_user_id` int(11) DEFAULT NULL,
  `ip_address` varchar(56) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `website_settings`;
CREATE TABLE IF NOT EXISTS `website_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(50) DEFAULT NULL,
  `value` varchar(2000) DEFAULT NULL,
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `key_UNIQUE` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

/*!40000 ALTER TABLE `website_settings` DISABLE KEYS */;
REPLACE INTO `website_settings` (`id`, `key`, `value`) VALUES
	(1, 'start_credits', '500'),
	(2, 'maintenance', '0'),
	(3, 'user_of_the_week', ''),
	(4, 'krews_api_useragent', ''),
	(5, 'krews_api_advanced_stats', '0'),
	(6, 'krews_api_hotel_slug', ''),
	(7, 'rcon_api_host', '127.0.0.1'),
	(8, 'rcon_api_port', '3001'),
	(9, 'recaptcha_publickey', ''),
	(10, 'recaptcha_secretkey', ''),
	(11, 'vip_permission_id', '2'),
	(12, 'vip_currency_type', '5'),
	(13, 'vip_price', '10.000'),
	(14, 'vip_membership_days', '30'),
	(15, 'vip_badges', '[{"value":"VIP"}]'),
	(16, 'vip_gift_items', '{"index":"vip_gift_items","name":"Vip gift items","value":[{"value":"6"}]}'),
	(17, 'vip_gift_message', 'Top! De besteling is gereed.'),
	(18, 'club_page_content', ''),
	(19, 'namechange_currency_type', '5'),
	(20, 'namechange_price', '500'),
	(21, 'registration_max_ip', '6'),
	(22, 'referral_acc_create_days', '0'),
	(23, 'referral_points_type', '5'),
	(24, 'referral_points', '5'),
	(25, 'referral_waiting_seconds', '3600'),
	(26, 'draw_badge_imaging', ''),
	(27, 'draw_badge_currency', '5'),
	(28, 'draw_badge_price', '1000'),
	(29, 'available_profile_widgets', 'myhabbo;friends;rooms;groups;mybadges;note;photos'),
	(33, 'cache_timestamp', 'ae23d5b8f61a02cbd6ba3e34eb4f17b7'),
	(34, 'findretros_enabled', 'False'),
	(35, 'findretros_timeout', '2'),
	(36, 'findretros_cloudflare', 'true'),
	(37, 'findretros_api', 'https://findretros.com/'),
	(38, 'findretros_pagename', ''),
	(39, 'paypal_secret_id', ''),
	(40, 'paypal_client_id', ''),
	(41, 'paypal_currency', ''),
	(42, 'paypal_sandbox_enabled', 'False'),
	(53, 'rcon_api_protocol', 'tcp'),
	(54, 'rcon_api_timeout', '30'),
	(55, 'rcon_api_persistent', 'false'),
	(56, 'upload_path', ''),
	(57, 'mailer_dsn', ''),
	(58, 'mailer_from', ''),
	(59, 'layout_theme', 'default');

DROP TABLE IF EXISTS `website_settings_currencys`;
CREATE TABLE IF NOT EXISTS `website_settings_currencys` (
  `currency` varchar(12) DEFAULT NULL,
  `type` int(3) DEFAULT NULL,
  `amount` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=COMPACT;

REPLACE INTO `website_settings_currencys` (`currency`, `type`, `amount`) VALUES
	('duckets', 0, 1000),
	('diamonds', 5, 100);

DROP TABLE IF EXISTS `website_staff_logs`;
CREATE TABLE IF NOT EXISTS `website_staff_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(25) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `player_id` int(11) DEFAULT NULL,
  `target` int(11) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12263 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

DROP TABLE IF EXISTS `website_user_logs_email`;
CREATE TABLE IF NOT EXISTS `website_user_logs_email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `old_mail` varchar(50) DEFAULT NULL,
  `new_mail` varchar(50) DEFAULT NULL,
  `ip_address` varchar(50) DEFAULT NULL,
  `timestamp` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

ALTER TABLE users ADD secret_key int(11) NULL DEFAULT NULL;
ALTER TABLE users ADD pincode varchar(11) NULL DEFAULT NULL;
ALTER TABLE users ADD extra_rank int(11) NULL DEFAULT NULL;
ALTER TABLE users ADD template varchar(25) NULL DEFAULT 'light';
ALTER TABLE users ADD lang varchar(2) NULL DEFAULT 'en';