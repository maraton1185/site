-- MySQL dump 10.13  Distrib 5.5.39, for linux2.6 (x86_64)
--
-- Host: localhost    Database: bitnami_joomla
-- ------------------------------------------------------
-- Server version	5.5.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES UTF8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `jos_assets`
--

DROP TABLE IF EXISTS `jos_assets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_assets`
--

LOCK TABLES `jos_assets` WRITE;
/*!40000 ALTER TABLE `jos_assets` DISABLE KEYS */;
INSERT INTO `jos_assets` VALUES (1,0,0,155,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}');
INSERT INTO `jos_assets` VALUES (2,1,1,2,1,'com_admin','com_admin','{}');
INSERT INTO `jos_assets` VALUES (3,1,3,6,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `jos_assets` VALUES (4,1,7,8,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}');
INSERT INTO `jos_assets` VALUES (5,1,9,10,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}');
INSERT INTO `jos_assets` VALUES (6,1,11,12,1,'com_config','com_config','{}');
INSERT INTO `jos_assets` VALUES (7,1,13,16,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
INSERT INTO `jos_assets` VALUES (8,1,17,34,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}');
INSERT INTO `jos_assets` VALUES (9,1,35,36,1,'com_cpanel','com_cpanel','{}');
INSERT INTO `jos_assets` VALUES (10,1,37,38,1,'com_installer','com_installer','{\"core.admin\":[],\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}');
INSERT INTO `jos_assets` VALUES (11,1,39,40,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `jos_assets` VALUES (12,1,41,42,1,'com_login','com_login','{}');
INSERT INTO `jos_assets` VALUES (13,1,43,44,1,'com_mailto','com_mailto','{}');
INSERT INTO `jos_assets` VALUES (14,1,45,46,1,'com_massmail','com_massmail','{}');
INSERT INTO `jos_assets` VALUES (15,1,47,48,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}');
INSERT INTO `jos_assets` VALUES (16,1,49,50,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `jos_assets` VALUES (17,1,51,52,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}');
INSERT INTO `jos_assets` VALUES (18,1,53,110,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `jos_assets` VALUES (19,1,111,114,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
INSERT INTO `jos_assets` VALUES (20,1,115,116,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `jos_assets` VALUES (21,1,117,118,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1},\"core.manage\":[]}');
INSERT INTO `jos_assets` VALUES (22,1,119,120,1,'com_search','com_search','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}');
INSERT INTO `jos_assets` VALUES (23,1,121,122,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `jos_assets` VALUES (24,1,123,126,1,'com_users','com_users','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `jos_assets` VALUES (25,1,127,130,1,'com_weblinks','com_weblinks','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}');
INSERT INTO `jos_assets` VALUES (26,1,131,132,1,'com_wrapper','com_wrapper','{}');
INSERT INTO `jos_assets` VALUES (27,8,18,33,2,'com_content.category.2','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
INSERT INTO `jos_assets` VALUES (28,3,4,5,2,'com_banners.category.3','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `jos_assets` VALUES (29,7,14,15,2,'com_contact.category.4','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
INSERT INTO `jos_assets` VALUES (30,19,112,113,2,'com_newsfeeds.category.5','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
INSERT INTO `jos_assets` VALUES (31,25,128,129,2,'com_weblinks.category.6','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
INSERT INTO `jos_assets` VALUES (32,24,124,125,1,'com_users.category.7','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `jos_assets` VALUES (33,1,133,134,1,'com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}');
INSERT INTO `jos_assets` VALUES (34,1,135,136,1,'com_joomlaupdate','com_joomlaupdate','{\"core.admin\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}');
INSERT INTO `jos_assets` VALUES (35,1,137,138,1,'com_tags','com_tags','{\"core.admin\":[],\"core.manage\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}');
INSERT INTO `jos_assets` VALUES (36,1,139,140,1,'com_contenthistory','com_contenthistory','{}');
INSERT INTO `jos_assets` VALUES (37,1,141,142,1,'com_ajax','com_ajax','{}');
INSERT INTO `jos_assets` VALUES (38,1,143,144,1,'com_postinstall','com_postinstall','{}');
INSERT INTO `jos_assets` VALUES (39,18,54,55,2,'com_modules.module.1','Main Menu','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `jos_assets` VALUES (40,18,56,57,2,'com_modules.module.2','Login','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `jos_assets` VALUES (41,18,58,59,2,'com_modules.module.3','Popular Articles','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `jos_assets` VALUES (42,18,60,61,2,'com_modules.module.4','Recently Added Articles','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `jos_assets` VALUES (43,18,62,63,2,'com_modules.module.8','Toolbar','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `jos_assets` VALUES (44,18,64,65,2,'com_modules.module.9','Quick Icons','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `jos_assets` VALUES (45,18,66,67,2,'com_modules.module.10','Logged-in Users','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `jos_assets` VALUES (46,18,68,69,2,'com_modules.module.12','Admin Menu','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `jos_assets` VALUES (47,18,70,71,2,'com_modules.module.13','Admin Submenu','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `jos_assets` VALUES (48,18,72,73,2,'com_modules.module.14','User Status','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `jos_assets` VALUES (49,18,74,75,2,'com_modules.module.15','Title','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `jos_assets` VALUES (50,18,76,77,2,'com_modules.module.16','Login Form','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `jos_assets` VALUES (51,18,78,79,2,'com_modules.module.17','Breadcrumbs','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `jos_assets` VALUES (52,18,80,81,2,'com_modules.module.79','Multilanguage status','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `jos_assets` VALUES (53,18,82,83,2,'com_modules.module.86','Joomla Version','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `jos_assets` VALUES (54,18,84,85,2,'com_modules.module.87','Popular Tags','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `jos_assets` VALUES (55,18,86,87,2,'com_modules.module.88','Site Information','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `jos_assets` VALUES (56,18,88,89,2,'com_modules.module.89','Release News','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `jos_assets` VALUES (57,18,90,91,2,'com_modules.module.90','Latest Articles','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `jos_assets` VALUES (58,18,92,93,2,'com_modules.module.91','User Menu','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `jos_assets` VALUES (59,18,94,95,2,'com_modules.module.92','Image Module','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `jos_assets` VALUES (60,18,96,97,2,'com_modules.module.93','Search','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `jos_assets` VALUES (61,27,19,20,3,'com_content.article.1','Getting Started','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `jos_assets` VALUES (62,1,145,146,1,'jos_ucm_content.1','jos_ucm_content.1','[]');
INSERT INTO `jos_assets` VALUES (63,1,147,148,1,'com_jce','jce','{}');
INSERT INTO `jos_assets` VALUES (64,18,98,99,2,'com_modules.module.94','carusel','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `jos_assets` VALUES (65,18,100,101,2,'com_modules.module.95','Title','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `jos_assets` VALUES (66,27,21,22,3,'com_content.article.2','Главная','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `jos_assets` VALUES (67,27,23,24,3,'com_content.article.3','Скачать','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `jos_assets` VALUES (68,27,25,26,3,'com_content.article.4','Купить','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `jos_assets` VALUES (69,27,27,28,3,'com_content.article.5','Блог','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `jos_assets` VALUES (70,27,29,30,3,'com_content.article.6','Форум','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `jos_assets` VALUES (71,27,31,32,3,'com_content.article.7','Поддержка','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `jos_assets` VALUES (72,18,102,103,2,'com_modules.module.96','download','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `jos_assets` VALUES (74,18,104,105,2,'com_modules.module.97','SCLogin','');
INSERT INTO `jos_assets` VALUES (76,18,106,107,2,'com_modules.module.98','SLogin','');
INSERT INTO `jos_assets` VALUES (77,1,149,150,1,'com_quicklogout','quicklogout','{}');
INSERT INTO `jos_assets` VALUES (78,1,151,152,1,'com_helloworld','com_helloworld','{}');
INSERT INTO `jos_assets` VALUES (79,1,153,154,1,'com_dump','dump','{}');
INSERT INTO `jos_assets` VALUES (80,18,108,109,2,'com_modules.module.99','Авторизация','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
/*!40000 ALTER TABLE `jos_assets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_associations`
--

DROP TABLE IF EXISTS `jos_associations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_associations`
--

LOCK TABLES `jos_associations` WRITE;
/*!40000 ALTER TABLE `jos_associations` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_associations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_banner_clients`
--

DROP TABLE IF EXISTS `jos_banner_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_banner_clients`
--

LOCK TABLES `jos_banner_clients` WRITE;
/*!40000 ALTER TABLE `jos_banner_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_banner_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_banner_tracks`
--

DROP TABLE IF EXISTS `jos_banner_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_banner_tracks`
--

LOCK TABLES `jos_banner_tracks` WRITE;
/*!40000 ALTER TABLE `jos_banner_tracks` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_banner_tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_banners`
--

DROP TABLE IF EXISTS `jos_banners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_banners`
--

LOCK TABLES `jos_banners` WRITE;
/*!40000 ALTER TABLE `jos_banners` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_banners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_categories`
--

DROP TABLE IF EXISTS `jos_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the jos_assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_categories`
--

LOCK TABLES `jos_categories` WRITE;
/*!40000 ALTER TABLE `jos_categories` DISABLE KEYS */;
INSERT INTO `jos_categories` VALUES (1,0,0,0,13,0,'','system','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'{}','','','{}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1);
INSERT INTO `jos_categories` VALUES (2,27,1,1,2,1,'uncategorised','com_content','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1);
INSERT INTO `jos_categories` VALUES (3,28,1,3,4,1,'uncategorised','com_banners','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1);
INSERT INTO `jos_categories` VALUES (4,29,1,5,6,1,'uncategorised','com_contact','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1);
INSERT INTO `jos_categories` VALUES (5,30,1,7,8,1,'uncategorised','com_newsfeeds','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1);
INSERT INTO `jos_categories` VALUES (6,31,1,9,10,1,'uncategorised','com_weblinks','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1);
INSERT INTO `jos_categories` VALUES (7,32,1,11,12,1,'uncategorised','com_users','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1);
/*!40000 ALTER TABLE `jos_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_contact_details`
--

DROP TABLE IF EXISTS `jos_contact_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_contact_details`
--

LOCK TABLES `jos_contact_details` WRITE;
/*!40000 ALTER TABLE `jos_contact_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_contact_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_content`
--

DROP TABLE IF EXISTS `jos_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the jos_assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_content`
--

LOCK TABLES `jos_content` WRITE;
/*!40000 ALTER TABLE `jos_content` DISABLE KEYS */;
INSERT INTO `jos_content` VALUES (1,61,'Getting Started','getting-started','<p>It\'s easy to get started creating your website. Knowing some of the basics will help.</p>\r\n<h3>What is a Content Management System?</h3>\r\n<p>A content management system is software that allows you to create and manage webpages easily by separating the creation of your content from the mechanics required to present it on the web.</p>\r\n<p>In this site, the content is stored in a <em>database</em>. The look and feel are created by a <em>template</em>. Joomla! brings together the template and your content to create web pages.</p>\r\n<h3>Logging in</h3>\r\n<p>To login to your site use the user name and password that were created as part of the installation process. Once logged-in you will be able to create and edit articles and modify some settings.</p>\r\n<h3>Creating an article</h3>\r\n<p>Once you are logged-in, a new menu will be visible. To create a new article, click on the \"Submit Article\" link on that menu.</p>\r\n<p>The new article interface gives you a lot of options, but all you need to do is add a title and put something in the content area. To make it easy to find, set the state to published.</p>\r\n<div>You can edit an existing article by clicking on the edit icon (this only displays to users who have the right to edit).</div>\r\n<h3>Template, site settings, and modules</h3>\r\n<p>The look and feel of your site is controlled by a template. You can change the site name, background colour, highlights colour and more by editing the template settings. Click the \"Template Settings\" in the user menu. </p>\r\n<p>The boxes around the main content of the site are called modules.  You can modify modules on the current page by moving your cursor to the module and clicking the edit link. Always be sure to save and close any module you edit.</p>\r\n<p>You can change some site settings such as the site name and description by clicking on the \"Site Settings\" link.</p>\r\n<p>More advanced options for templates, site settings, modules, and more are available in the site administrator.</p>\r\n<h3>Site and Administrator</h3>\r\n<p>Your site actually has two separate sites. The site (also called the front end) is what visitors to your site will see. The administrator (also called the back end) is only used by people managing your site. You can access the administrator by clicking the \"Site Administrator\" link on the \"User Menu\" menu (visible once you login) or by adding /administrator to the end of your domain name. The same user name and password are used for both sites.</p>\r\n<h3>Learn more</h3>\r\n<p>There is much more to learn about how to use Joomla! to create the web site you envision. You can learn much more at the <a href=\"http://docs.joomla.org\" target=\"_blank\">Joomla! documentation site</a> and on the<a href=\"http://forum.joomla.org\" target=\"_blank\"> Joomla! forums</a>.</p>','',0,2,'2013-11-16 00:00:00',849,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2013-11-16 00:00:00','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,6,'','',1,81,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');
INSERT INTO `jos_content` VALUES (2,66,'Главная','2014-09-11-09-33-28','<p>Дом</p>','',1,2,'2014-09-11 09:33:28',42,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2014-09-11 09:33:28','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,5,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',1,'*','');
INSERT INTO `jos_content` VALUES (3,67,'Скачать','2014-09-11-09-41-38','','',1,2,'2014-09-11 09:41:38',42,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2014-09-11 09:41:38','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,4,'','',1,7,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');
INSERT INTO `jos_content` VALUES (4,68,'Купить','2014-09-11-09-41-51','','',1,2,'2014-09-11 09:41:51',42,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2014-09-11 09:41:51','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,3,'','',1,5,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');
INSERT INTO `jos_content` VALUES (5,69,'Блог','2014-09-11-09-42-08','','',1,2,'2014-09-11 09:42:08',42,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2014-09-11 09:42:08','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,2,'','',1,1,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');
INSERT INTO `jos_content` VALUES (6,70,'Форум','2014-09-11-09-42-16','','',1,2,'2014-09-11 09:42:16',42,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2014-09-11 09:42:16','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,1,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');
INSERT INTO `jos_content` VALUES (7,71,'Поддержка','2014-09-11-09-42-24','','',1,2,'2014-09-11 09:42:24',42,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','2014-09-11 09:42:24','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',1,0,'','',1,0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');
/*!40000 ALTER TABLE `jos_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_content_frontpage`
--

DROP TABLE IF EXISTS `jos_content_frontpage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_content_frontpage`
--

LOCK TABLES `jos_content_frontpage` WRITE;
/*!40000 ALTER TABLE `jos_content_frontpage` DISABLE KEYS */;
INSERT INTO `jos_content_frontpage` VALUES (2,1);
/*!40000 ALTER TABLE `jos_content_frontpage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_content_rating`
--

DROP TABLE IF EXISTS `jos_content_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_content_rating`
--

LOCK TABLES `jos_content_rating` WRITE;
/*!40000 ALTER TABLE `jos_content_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_content_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_content_types`
--

DROP TABLE IF EXISTS `jos_content_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_content_types`
--

LOCK TABLES `jos_content_types` WRITE;
/*!40000 ALTER TABLE `jos_content_types` DISABLE KEYS */;
INSERT INTO `jos_content_types` VALUES (1,'Article','com_content.article','{\"special\":{\"dbtable\":\"jos_content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"jos_ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\"}, \"special\":{\"fulltext\":\"fulltext\"}}','ContentHelperRoute::getArticleRoute','{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"jos_categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"jos_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"jos_viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"jos_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}');
INSERT INTO `jos_content_types` VALUES (2,'Weblink','com_weblinks.weblink','{\"special\":{\"dbtable\":\"jos_weblinks\",\"key\":\"id\",\"type\":\"Weblink\",\"prefix\":\"WeblinksTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"jos_ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{}}','WeblinksHelperRoute::getWeblinkRoute','{\"formFile\":\"administrator\\/components\\/com_weblinks\\/models\\/forms\\/weblink.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"featured\",\"images\"], \"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"jos_categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"jos_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"jos_viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"jos_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}');
INSERT INTO `jos_content_types` VALUES (3,'Contact','com_contact.contact','{\"special\":{\"dbtable\":\"jos_contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"jos_ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}','ContactHelperRoute::getContactRoute','{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"jos_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"jos_categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"jos_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"jos_viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"jos_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }');
INSERT INTO `jos_content_types` VALUES (4,'Newsfeed','com_newsfeeds.newsfeed','{\"special\":{\"dbtable\":\"jos_newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"jos_ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}','NewsfeedsHelperRoute::getNewsfeedRoute','{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"jos_categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"jos_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"jos_viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"jos_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}');
INSERT INTO `jos_content_types` VALUES (5,'User','com_users.user','{\"special\":{\"dbtable\":\"jos_users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"jos_ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}','UsersHelperRoute::getUserRoute','');
INSERT INTO `jos_content_types` VALUES (6,'Article Category','com_content.category','{\"special\":{\"dbtable\":\"jos_categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"jos_ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContentHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"jos_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"jos_viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"jos_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"jos_categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
INSERT INTO `jos_content_types` VALUES (7,'Contact Category','com_contact.category','{\"special\":{\"dbtable\":\"jos_categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"jos_ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContactHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"jos_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"jos_viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"jos_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"jos_categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
INSERT INTO `jos_content_types` VALUES (8,'Newsfeeds Category','com_newsfeeds.category','{\"special\":{\"dbtable\":\"jos_categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"jos_ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','NewsfeedsHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"jos_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"jos_viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"jos_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"jos_categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
INSERT INTO `jos_content_types` VALUES (9,'Weblinks Category','com_weblinks.category','{\"special\":{\"dbtable\":\"jos_categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"jos_ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','WeblinksHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"jos_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"jos_viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"jos_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"jos_categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
INSERT INTO `jos_content_types` VALUES (10,'Tag','com_tags.tag','{\"special\":{\"dbtable\":\"jos_tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"jos_ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}','TagsHelperRoute::getTagRoute','{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"jos_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"jos_viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"jos_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}');
INSERT INTO `jos_content_types` VALUES (11,'Banner','com_banners.banner','{\"special\":{\"dbtable\":\"jos_banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"jos_ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"jos_categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"jos_banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"jos_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"jos_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}');
INSERT INTO `jos_content_types` VALUES (12,'Banners Category','com_banners.category','{\"special\":{\"dbtable\":\"jos_categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"jos_ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"jos_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"jos_viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"jos_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"jos_categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
INSERT INTO `jos_content_types` VALUES (13,'Banner Client','com_banners.client','{\"special\":{\"dbtable\":\"jos_banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}');
INSERT INTO `jos_content_types` VALUES (14,'User Notes','com_users.note','{\"special\":{\"dbtable\":\"jos_user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"jos_categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"jos_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"jos_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"jos_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}');
INSERT INTO `jos_content_types` VALUES (15,'User Notes Category','com_users.category','{\"special\":{\"dbtable\":\"jos_categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"jos_ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"jos_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"jos_viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"jos_users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"jos_categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
/*!40000 ALTER TABLE `jos_content_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_contentitem_tag_map`
--

DROP TABLE IF EXISTS `jos_contentitem_tag_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_tag` (`tag_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_contentitem_tag_map`
--

LOCK TABLES `jos_contentitem_tag_map` WRITE;
/*!40000 ALTER TABLE `jos_contentitem_tag_map` DISABLE KEYS */;
INSERT INTO `jos_contentitem_tag_map` VALUES ('com_content.article',1,1,2,'2013-11-16 06:00:00',1);
/*!40000 ALTER TABLE `jos_contentitem_tag_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_core_log_searches`
--

DROP TABLE IF EXISTS `jos_core_log_searches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_core_log_searches`
--

LOCK TABLES `jos_core_log_searches` WRITE;
/*!40000 ALTER TABLE `jos_core_log_searches` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_core_log_searches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_example_items`
--

DROP TABLE IF EXISTS `jos_example_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_example_items` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_example_items`
--

LOCK TABLES `jos_example_items` WRITE;
/*!40000 ALTER TABLE `jos_example_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_example_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_extensions`
--

DROP TABLE IF EXISTS `jos_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10051 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_extensions`
--

LOCK TABLES `jos_extensions` WRITE;
/*!40000 ALTER TABLE `jos_extensions` DISABLE KEYS */;
INSERT INTO `jos_extensions` VALUES (1,'com_mailto','component','com_mailto','',0,1,1,1,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (2,'com_wrapper','component','com_wrapper','',0,1,1,1,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (3,'com_admin','component','com_admin','',1,1,1,1,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (4,'com_banners','component','com_banners','',1,1,1,0,'','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (5,'com_cache','component','com_cache','',1,1,1,1,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (6,'com_categories','component','com_categories','',1,1,1,1,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (7,'com_checkin','component','com_checkin','',1,1,1,1,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (8,'com_contact','component','com_contact','',1,1,1,0,'','{\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_misc\":\"1\",\"show_image\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"show_profile\":\"0\",\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"show_headings\":\"1\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"allow_vcard_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_category_crumb\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (9,'com_cpanel','component','com_cpanel','',1,1,1,1,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (10,'com_installer','component','com_installer','',1,1,1,1,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (11,'com_languages','component','com_languages','',1,1,1,1,'','{\"administrator\":\"en-GB\",\"site\":\"ru-RU\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (12,'com_login','component','com_login','',1,1,1,1,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (13,'com_media','component','com_media','',1,1,0,1,'','{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (14,'com_menus','component','com_menus','',1,1,1,1,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (15,'com_messages','component','com_messages','',1,1,1,1,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (16,'com_modules','component','com_modules','',1,1,1,1,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (17,'com_newsfeeds','component','com_newsfeeds','',1,1,1,0,'','{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (18,'com_plugins','component','com_plugins','',1,1,1,1,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (19,'com_search','component','com_search','',1,1,1,0,'','{\"enabled\":\"0\",\"show_date\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (20,'com_templates','component','com_templates','',1,1,1,1,'','{\"template_positions_display\":\"0\",\"upload_limit\":\"2\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (21,'com_weblinks','component','com_weblinks','',1,1,1,0,'','{\"target\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"count_clicks\":\"1\",\"icons\":1,\"link_icons\":\"\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_num_links\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_links_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"0\",\"show_link_description\":\"1\",\"show_link_hits\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (22,'com_content','component','com_content','',1,1,0,1,'','{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"info_block_position\":\"0\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_readmore\":\"0\",\"show_readmore_title\":\"0\",\"readmore_limit\":\"100\",\"show_tags\":\"0\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"1\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"_:blog\",\"show_category_heading_title_text\":\"1\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"1\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\",\"feed_summary\":\"0\",\"feed_show_readmore\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (23,'com_config','component','com_config','',1,1,0,1,'','{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (24,'com_redirect','component','com_redirect','',1,1,0,1,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (25,'com_users','component','com_users','',1,1,0,1,'','{\"allowUserRegistration\":\"1\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"1\",\"useractivation\":\"1\",\"mail_to_admin\":\"0\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"4\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (27,'com_finder','component','com_finder','',1,1,0,0,'','{\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_advanced\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stemmer\":\"snowball\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (28,'com_joomlaupdate','component','com_joomlaupdate','',1,1,0,1,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (29,'com_tags','component','com_tags','',1,1,1,1,'','{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"show_tag_num_items\":\"0\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_descripion\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (30,'com_contenthistory','component','com_contenthistory','',1,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (31,'com_ajax','component','com_ajax','',1,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (32,'com_postinstall','component','com_postinstall','',1,1,1,1,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (100,'PHPMailer','library','phpmailer','',0,1,1,1,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (101,'SimplePie','library','simplepie','',0,1,1,1,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (102,'phputf8','library','phputf8','',0,1,1,1,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (103,'Joomla! Platform','library','joomla','',0,1,1,1,'','{\"mediaversion\":\"396b3b09175a67ede1436ae6992c7256\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (104,'IDNA Convert','library','idna_convert','',0,1,1,1,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (105,'FOF','library','fof','',0,1,1,1,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (106,'PHPass','library','phpass','',0,1,1,1,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (200,'mod_articles_archive','module','mod_articles_archive','',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (201,'mod_articles_latest','module','mod_articles_latest','',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (202,'mod_articles_popular','module','mod_articles_popular','',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (203,'mod_banners','module','mod_banners','',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (204,'mod_breadcrumbs','module','mod_breadcrumbs','',0,1,1,1,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (205,'mod_custom','module','mod_custom','',0,1,1,1,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (206,'mod_feed','module','mod_feed','',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (207,'mod_footer','module','mod_footer','',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (208,'mod_login','module','mod_login','',0,1,1,1,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (209,'mod_menu','module','mod_menu','',0,1,1,1,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (210,'mod_articles_news','module','mod_articles_news','',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (211,'mod_random_image','module','mod_random_image','',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (212,'mod_related_items','module','mod_related_items','',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (213,'mod_search','module','mod_search','',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (214,'mod_stats','module','mod_stats','',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (215,'mod_syndicate','module','mod_syndicate','',0,1,1,1,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (216,'mod_users_latest','module','mod_users_latest','',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (217,'mod_weblinks','module','mod_weblinks','',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (218,'mod_whosonline','module','mod_whosonline','',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (219,'mod_wrapper','module','mod_wrapper','',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (220,'mod_articles_category','module','mod_articles_category','',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (221,'mod_articles_categories','module','mod_articles_categories','',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (222,'mod_languages','module','mod_languages','',0,1,1,1,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (223,'mod_finder','module','mod_finder','',0,1,0,0,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (300,'mod_custom','module','mod_custom','',1,1,1,1,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (301,'mod_feed','module','mod_feed','',1,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (302,'mod_latest','module','mod_latest','',1,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (303,'mod_logged','module','mod_logged','',1,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (304,'mod_login','module','mod_login','',1,1,1,1,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (305,'mod_menu','module','mod_menu','',1,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (307,'mod_popular','module','mod_popular','',1,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (308,'mod_quickicon','module','mod_quickicon','',1,1,1,1,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (309,'mod_status','module','mod_status','',1,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (310,'mod_submenu','module','mod_submenu','',1,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (311,'mod_title','module','mod_title','',1,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (312,'mod_toolbar','module','mod_toolbar','',1,1,1,1,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (313,'mod_multilangstatus','module','mod_multilangstatus','',1,1,1,0,'','{\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (314,'mod_version','module','mod_version','',1,1,1,0,'','{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (315,'mod_stats_admin','module','mod_stats_admin','',1,1,1,0,'','{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (316,'mod_tags_popular','module','mod_tags_popular','',0,1,1,0,'','{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (317,'mod_tags_similar','module','mod_tags_similar','',0,1,1,0,'','{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (400,'plg_authentication_gmail','plugin','gmail','authentication',0,0,1,0,'','{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}','','',0,'0000-00-00 00:00:00',1,0);
INSERT INTO `jos_extensions` VALUES (401,'plg_authentication_joomla','plugin','joomla','authentication',0,1,1,1,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (402,'plg_authentication_ldap','plugin','ldap','authentication',0,0,1,0,'','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','','',0,'0000-00-00 00:00:00',3,0);
INSERT INTO `jos_extensions` VALUES (403,'plg_content_contact','plugin','contact','content',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',1,0);
INSERT INTO `jos_extensions` VALUES (404,'plg_content_emailcloak','plugin','emailcloak','content',0,1,1,0,'','{\"mode\":\"1\"}','','',0,'0000-00-00 00:00:00',1,0);
INSERT INTO `jos_extensions` VALUES (406,'plg_content_loadmodule','plugin','loadmodule','content',0,1,1,0,'','{\"style\":\"xhtml\"}','','',0,'2011-09-18 15:22:50',0,0);
INSERT INTO `jos_extensions` VALUES (407,'plg_content_pagebreak','plugin','pagebreak','content',0,1,1,0,'','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','','',0,'0000-00-00 00:00:00',4,0);
INSERT INTO `jos_extensions` VALUES (408,'plg_content_pagenavigation','plugin','pagenavigation','content',0,1,1,0,'','{\"position\":\"1\"}','','',0,'0000-00-00 00:00:00',5,0);
INSERT INTO `jos_extensions` VALUES (409,'plg_content_vote','plugin','vote','content',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',6,0);
INSERT INTO `jos_extensions` VALUES (410,'plg_editors_codemirror','plugin','codemirror','editors',0,1,1,1,'','{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}','','',0,'0000-00-00 00:00:00',1,0);
INSERT INTO `jos_extensions` VALUES (411,'plg_editors_none','plugin','none','editors',0,1,1,1,'','','','',0,'0000-00-00 00:00:00',2,0);
INSERT INTO `jos_extensions` VALUES (412,'plg_editors_tinymce','plugin','tinymce','editors',0,1,1,0,'','{\"mode\":\"1\",\"skin\":\"0\",\"mobile\":\"0\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"extended_elements\":\"\",\"html_height\":\"550\",\"html_width\":\"750\",\"resizing\":\"1\",\"element_path\":\"1\",\"fonts\":\"1\",\"paste\":\"1\",\"searchreplace\":\"1\",\"insertdate\":\"1\",\"colors\":\"1\",\"table\":\"1\",\"smilies\":\"1\",\"hr\":\"1\",\"link\":\"1\",\"media\":\"1\",\"print\":\"1\",\"directionality\":\"1\",\"fullscreen\":\"1\",\"alignment\":\"1\",\"visualchars\":\"1\",\"visualblocks\":\"1\",\"nonbreaking\":\"1\",\"template\":\"1\",\"blockquote\":\"1\",\"wordcount\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"inlinepopups\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}','','',0,'0000-00-00 00:00:00',3,0);
INSERT INTO `jos_extensions` VALUES (413,'plg_editors-xtd_article','plugin','article','editors-xtd',0,1,1,1,'','','','',0,'0000-00-00 00:00:00',1,0);
INSERT INTO `jos_extensions` VALUES (414,'plg_editors-xtd_image','plugin','image','editors-xtd',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',2,0);
INSERT INTO `jos_extensions` VALUES (415,'plg_editors-xtd_pagebreak','plugin','pagebreak','editors-xtd',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',3,0);
INSERT INTO `jos_extensions` VALUES (416,'plg_editors-xtd_readmore','plugin','readmore','editors-xtd',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',4,0);
INSERT INTO `jos_extensions` VALUES (417,'plg_search_categories','plugin','categories','search',0,1,1,0,'','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (418,'plg_search_contacts','plugin','contacts','search',0,1,1,0,'','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (419,'plg_search_content','plugin','content','search',0,1,1,0,'','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (420,'plg_search_newsfeeds','plugin','newsfeeds','search',0,1,1,0,'','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (421,'plg_search_weblinks','plugin','weblinks','search',0,1,1,0,'','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (422,'plg_system_languagefilter','plugin','languagefilter','system',0,0,1,1,'','','','',0,'0000-00-00 00:00:00',1,0);
INSERT INTO `jos_extensions` VALUES (423,'plg_system_p3p','plugin','p3p','system',0,1,1,0,'','{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}','','',0,'0000-00-00 00:00:00',2,0);
INSERT INTO `jos_extensions` VALUES (424,'plg_system_cache','plugin','cache','system',0,0,1,1,'','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','','',0,'0000-00-00 00:00:00',9,0);
INSERT INTO `jos_extensions` VALUES (425,'plg_system_debug','plugin','debug','system',0,1,1,0,'','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','','',42,'2014-09-12 03:03:26',4,0);
INSERT INTO `jos_extensions` VALUES (426,'plg_system_log','plugin','log','system',0,1,1,1,'','','','',0,'0000-00-00 00:00:00',5,0);
INSERT INTO `jos_extensions` VALUES (427,'plg_system_redirect','plugin','redirect','system',0,0,1,1,'','','','',0,'0000-00-00 00:00:00',6,0);
INSERT INTO `jos_extensions` VALUES (428,'plg_system_remember','plugin','remember','system',0,1,1,1,'','','','',0,'0000-00-00 00:00:00',7,0);
INSERT INTO `jos_extensions` VALUES (429,'plg_system_sef','plugin','sef','system',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',8,0);
INSERT INTO `jos_extensions` VALUES (430,'plg_system_logout','plugin','logout','system',0,1,1,1,'','','','',0,'0000-00-00 00:00:00',3,0);
INSERT INTO `jos_extensions` VALUES (431,'plg_user_contactcreator','plugin','contactcreator','user',0,0,1,0,'','{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}','','',0,'0000-00-00 00:00:00',1,0);
INSERT INTO `jos_extensions` VALUES (432,'plg_user_joomla','plugin','joomla','user',0,1,1,0,'','{\"strong_passwords\":\"1\",\"autoregister\":\"1\"}','','',0,'0000-00-00 00:00:00',2,0);
INSERT INTO `jos_extensions` VALUES (433,'plg_user_profile','plugin','profile','user',0,0,1,0,'','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (434,'plg_extension_joomla','plugin','joomla','extension',0,1,1,1,'','','','',0,'0000-00-00 00:00:00',1,0);
INSERT INTO `jos_extensions` VALUES (435,'plg_content_joomla','plugin','joomla','content',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (436,'plg_system_languagecode','plugin','languagecode','system',0,0,1,0,'','','','',0,'0000-00-00 00:00:00',10,0);
INSERT INTO `jos_extensions` VALUES (437,'plg_quickicon_joomlaupdate','plugin','joomlaupdate','quickicon',0,1,1,1,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (438,'plg_quickicon_extensionupdate','plugin','extensionupdate','quickicon',0,1,1,1,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (439,'plg_captcha_recaptcha','plugin','recaptcha','captcha',0,0,1,0,'','{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (440,'plg_system_highlight','plugin','highlight','system',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',7,0);
INSERT INTO `jos_extensions` VALUES (441,'plg_content_finder','plugin','finder','content',0,0,1,0,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (442,'plg_finder_categories','plugin','categories','finder',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',1,0);
INSERT INTO `jos_extensions` VALUES (443,'plg_finder_contacts','plugin','contacts','finder',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',2,0);
INSERT INTO `jos_extensions` VALUES (444,'plg_finder_content','plugin','content','finder',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',3,0);
INSERT INTO `jos_extensions` VALUES (445,'plg_finder_newsfeeds','plugin','newsfeeds','finder',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',4,0);
INSERT INTO `jos_extensions` VALUES (446,'plg_finder_weblinks','plugin','weblinks','finder',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',5,0);
INSERT INTO `jos_extensions` VALUES (447,'plg_finder_tags','plugin','tags','finder',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (448,'plg_twofactorauth_totp','plugin','totp','twofactorauth',0,0,1,0,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (449,'plg_authentication_cookie','plugin','cookie','authentication',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (450,'plg_twofactorauth_yubikey','plugin','yubikey','twofactorauth',0,0,1,0,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (451,'plg_search_tags','plugin','tags','search',0,1,1,0,'','{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (503,'beez3','template','beez3','',0,1,1,0,'','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (504,'hathor','template','hathor','',1,1,1,0,'','{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (506,'protostar','template','protostar','',0,1,1,0,'','{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (507,'isis','template','isis','',1,1,1,0,'','{\"templateColor\":\"\",\"logoFile\":\"\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (600,'English (United Kingdom)','language','en-GB','',0,1,1,1,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (601,'English (United Kingdom)','language','en-GB','',1,1,1,1,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (604,'Español (Formal Internacional)','language','es-ES','',1,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (605,'Español (Formal Internacional)','language','es-ES','',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (700,'files_joomla','file','joomla','',0,1,1,1,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (10000,'PortugusBrasil','language','pt-BR','',1,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (10001,'PortugusBrasil','language','pt-BR','',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (10002,'Pacote de Idiomas em Português Brasileiro para TinyMCE','file','TinyMCE_pt-BR','',0,1,0,0,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (10003,'pt-BR','package','pkg_pt-BR','',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (10004,'','language','zh-CN','',1,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (10005,'','language','zh-CN','',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (10006,'zh-CN','package','pkg_zh-CN','',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (10007,'Hebrew','language','he-IL','',1,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (10008,'Hebrew','language','he-IL','',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (10010,'GermanDE-CH-AT','language','de-DE','',1,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (10011,'GermanDE-CH-AT','language','de-DE','',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (10012,'de-DE','package','pkg_de-DE','',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (10013,'RomanianRo','language','ro-RO','',1,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (10014,'Romanianro-RO','language','ro-RO','',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (10015,'ro-RO','package','pkg_ro-RO','',0,1,1,0,'','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (10016,'Russian','language','ru-RU','',0,1,0,0,'{\"legacy\":true,\"name\":\"Russian\",\"type\":\"language\",\"creationDate\":\"2012-02-04\",\"author\":\"Russian Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved\",\"authorEmail\":\"smart@joomlaportal.ru\",\"authorUrl\":\"www.joomlaportal.ru\",\"version\":\"2.5.1.3\",\"description\":\"Russian language pack (site) for Joomla! 2.5\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (10017,'Russian','language','ru-RU','',1,1,0,0,'{\"legacy\":true,\"name\":\"Russian\",\"type\":\"language\",\"creationDate\":\"2012-02-04\",\"author\":\"Russian Translation Team\",\"copyright\":\"Copyright (C) 2005 - 2012 Open Source Matters. All rights reserved\",\"authorEmail\":\"smart@joomlaportal.ru\",\"authorUrl\":\"www.joomlaportal.ru\",\"version\":\"2.5.1.3\",\"description\":\"Russian language pack (administrator) for Joomla! 2.5\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (10018,'ru-RU','package','pkg_ru-RU','',0,1,1,0,'{\"legacy\":false,\"name\":\"Russian Language Pack\",\"type\":\"package\",\"creationDate\":\"Unknown\",\"author\":\"Unknown\",\"copyright\":\"\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"2.5.1.3\",\"description\":\"Joomla 2.5 Russian Language Package\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (10019,'shaper_helix_ii','template','shaper_helix_ii','',0,1,1,0,'{\"name\":\"shaper_helix_ii\",\"type\":\"template\",\"creationDate\":\"Feb 2013\",\"author\":\"JoomShaper.com\",\"copyright\":\"Copyright (C) 2010 - 2013 JoomShaper.com. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"http:\\/\\/www.joomshaper.com\",\"version\":\"2.1.3\",\"description\":\"\\n\\t\\t\\n\\t\\t\\tShaper Helix \\u2013 II is the default\\/blank template of Helix Framework version 2.<br \\/>\\n\\t\\t\\tThis template has all the in built functionality of Helix 2.0. Helix - II comes with tons of shortcode such for video, gallery, slideshow, tabs, accordion etc. \\n\\t\\t\\tHelix 2.0 especially comes with rich administration features such as logo settings, masterpiece layout builder,\\n\\t\\t\\tmega menu, unlimited fonts control, Google analytics,\\n\\t\\t\\tLess complitation and all types of presets control like header color, link color, background color so on.\\n\\t\\t\\tNow you don\\u2019t need to worry about its speed. The built-in css and javascript compresses \\n\\t\\t\\tused by Helix to provide optimal performance.\\n\\t\\t\\t<h3>Key Features<\\/h3>\\n\\t\\t\\t<ul class=\\\"arrow\\\">\\n\\t\\t\\t\\t<li>Unlimited module positions with the power of unique layout builder<\\/li>\\n\\t\\t\\t\\t<li>Powered by Bootstrap and compatible with Joomla 2.5 and 3.0<\\/li>\\n\\t\\t\\t\\t<li>Three (3) presets with presets manager<\\/li>\\n\\t\\t\\t\\t<li>Uses latest web technologies like html5 and css3<\\/li>\\n\\t\\t\\t\\t<li>Tons of shortcodes in built<\\/li>\\n\\t\\t\\t\\t<li>Built with LESS CSS<\\/li>\\n\\t\\t\\t\\t<li>Megamenu, RTL Support, CSS and JS compression and many more...<\\/li>\\n\\t\\t\\t<\\/ul>\\n\\t\\t\\n\\t\",\"group\":\"\"}','{\"layout_width\":\"1170\",\"layout_type\":\"responsive\",\"logo_type\":\"image\",\"logo_position\":\"logo\",\"logo_type_text\":\"Helix\",\"logo_type_slogan\":\"Joomla! Templates Framework\",\"logo_width\":\"130\",\"logo_height\":\"50\",\"footer_position\":\"footer1\",\"showcp\":\"1\",\"copyright\":\"Copyright \\u00a9  {year} Shaper Helix - II Demo. All Rights Reserved.\",\"show_helix_logo\":\"1\",\"jcredit\":\"1\",\"credit_link\":\"1\",\"credit_text\":\"Designed by {JoomShaper}\",\"validator\":\"0\",\"showtop\":\"1\",\"totop_position\":\"footer2\",\"preset\":\"preset1\",\"preset1_header\":\"#f8f8f8\",\"preset1_bg\":\"#f2f2f2\",\"preset1_text\":\"#666666\",\"preset1_link\":\"#22b8f0\",\"preset2_header\":\"#eeeeee\",\"preset2_bg\":\"#f5f5f5\",\"preset2_text\":\"#444444\",\"preset2_link\":\"#6d7f1b\",\"preset3_header\":\"#e5ddd5\",\"preset3_bg\":\"#f2f2f2\",\"preset3_text\":\"#333333\",\"preset3_link\":\"#aa824a\",\"menu\":\"mainmenu\",\"menutype\":\"mega\",\"menu_col_width\":\"200\",\"show_menu_image\":\"1\",\"menu_image_position\":\"1\",\"submenu_position\":\"0\",\"init_x\":\"0\",\"init_y\":\"0\",\"sub_x\":\"0\",\"sub_y\":\"0\",\"body_font\":\"\",\"header_font\":\"\",\"header_selectors\":\"\",\"other_font\":\"\",\"cache_time\":\"60\",\"compress_css\":\"0\",\"compress_js\":\"0\",\"enable_ga\":\"0\",\"ga_code\":\"\",\"loadjquery\":\"0\",\"loadfromcdn\":\"0\",\"lessoption\":\"1\",\"hide_component_area\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (10020,'System - Helix Framework','plugin','helix','system',0,1,1,0,'{\"name\":\"System - Helix Framework\",\"type\":\"plugin\",\"creationDate\":\"March 2011\",\"author\":\"JoomShaper.com\",\"copyright\":\"Copyright (C) 2010 - 2014 JoomShaper. All rights reserved.\",\"authorEmail\":\"support@joomshaper.com\",\"authorUrl\":\"www.joomshaper.com\",\"version\":\"2.1.8\",\"description\":\"Helix Framework - JoomShaper Template Framework for Joomla 2.5 and 3.X\",\"group\":\"\"}','{}','','',42,'2014-09-12 03:03:40',0,0);
INSERT INTO `jos_extensions` VALUES (10021,'plg_editors_jce','plugin','jce','editors',0,1,1,0,'{\"name\":\"plg_editors_jce\",\"type\":\"plugin\",\"creationDate\":\"28 July 2014\",\"author\":\"Ryan Demmer\",\"copyright\":\"2006-2010 Ryan Demmer\",\"authorEmail\":\"info@joomlacontenteditor.net\",\"authorUrl\":\"http:\\/\\/www.joomlacontenteditor.net\",\"version\":\"2.4.2\",\"description\":\"WF_EDITOR_PLUGIN_DESC\",\"group\":\"\"}','{\"verify_html\":\"1\",\"schema\":\"html4\",\"entity_encoding\":\"raw\",\"keep_nbsp\":\"1\",\"pad_empty_tags\":\"1\",\"cleanup_pluginmode\":\"0\",\"forced_root_block\":\"p\",\"content_style_reset\":\"0\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"body_class\":\"\",\"compress_javascript\":\"0\",\"compress_css\":\"0\",\"compress_gzip\":\"0\",\"use_cookies\":\"1\",\"custom_config\":\"\",\"callback_file\":\"\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (10022,'plg_quickicon_jcefilebrowser','plugin','jcefilebrowser','quickicon',0,1,1,0,'{\"name\":\"plg_quickicon_jcefilebrowser\",\"type\":\"plugin\",\"creationDate\":\"28 July 2014\",\"author\":\"Ryan Demmer\",\"copyright\":\"Copyright (C) 2006 - 2014 Ryan Demmer. All rights reserved\",\"authorEmail\":\"@@email@@\",\"authorUrl\":\"www.joomalcontenteditor.net\",\"version\":\"2.4.2\",\"description\":\"PLG_QUICKICON_JCEFILEBROWSER_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (10023,'jce','component','com_jce','',1,1,0,0,'{\"name\":\"JCE\",\"type\":\"component\",\"creationDate\":\"28 July 2014\",\"author\":\"Ryan Demmer\",\"copyright\":\"Copyright (C) 2006 - 2014 Ryan Demmer. All rights reserved\",\"authorEmail\":\"info@joomlacontenteditor.net\",\"authorUrl\":\"www.joomlacontenteditor.net\",\"version\":\"2.4.2\",\"description\":\"WF_ADMIN_DESC\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (10029,'Social Login','plugin','slogin','user',0,0,1,0,'{\"name\":\"Social Login\",\"type\":\"plugin\",\"creationDate\":\"21.09.2012\",\"author\":\"Arkadiy, Joomline\",\"copyright\":\"(C) 2012. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/joomline.ru\",\"version\":\"1.0\",\"description\":\"Delete User info from slogin table\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (10031,'JComments - Social Login','plugin','slogin','jcomments',0,0,1,0,'{\"name\":\"JComments - Social Login\",\"type\":\"plugin\",\"creationDate\":\"09\\/09\\/2013\",\"author\":\"smart\",\"copyright\":\"(c) 2012-2013 JoomlaTune.ru\",\"authorEmail\":\"smart@joomlatune.ru\",\"authorUrl\":\"http:\\/\\/www.joomlatune.ru\",\"version\":\"1.0.8\",\"description\":\"PLG_JCOMMENTS_SLOGIN_XML_DESCRIPTION\",\"group\":\"\"}','{\"css\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (10032,'Social Login Facebook auth','plugin','facebook','slogin_auth',0,0,1,0,'{\"name\":\"Social Login Facebook auth\",\"type\":\"plugin\",\"creationDate\":\"21.09.2012\",\"author\":\"Arkadiy, Joomline\",\"copyright\":\"(C) 2012. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/joomline.ru\",\"version\":\"1.0\",\"description\":\"Facebook auth\",\"group\":\"\"}','{\"id\":\"\",\"password\":\"\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (10033,'Social Login Google auth','plugin','google','slogin_auth',0,0,1,0,'{\"name\":\"Social Login Google auth\",\"type\":\"plugin\",\"creationDate\":\"21.09.2012\",\"author\":\"Arkadiy, Joomline\",\"copyright\":\"(C) 2012. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/joomline.ru\",\"version\":\"1.0\",\"description\":\"Google auth\",\"group\":\"\"}','{\"id\":\"\",\"password\":\"\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (10034,'Social Login mail.ru auth','plugin','mail','slogin_auth',0,0,1,0,'{\"name\":\"Social Login mail.ru auth\",\"type\":\"plugin\",\"creationDate\":\"21.09.2012\",\"author\":\"Arkadiy, Joomline\",\"copyright\":\"(C) 2012. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/joomline.ru\",\"version\":\"1.0\",\"description\":\"mail.ru auth\",\"group\":\"\"}','{\"id\":\"\",\"password\":\"\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (10035,'Social Login Odnoklassniki auth','plugin','odnoklassniki','slogin_auth',0,0,1,0,'{\"name\":\"Social Login Odnoklassniki auth\",\"type\":\"plugin\",\"creationDate\":\"21.09.2012\",\"author\":\"Arkadiy, Joomline\",\"copyright\":\"(C) 2012. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/joomline.ru\",\"version\":\"1.0\",\"description\":\"Odnoklassniki auth\",\"group\":\"\"}','{\"id\":\"\",\"password\":\"\",\"public_key\":\"\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (10036,'Social Login Twitter auth','plugin','twitter','slogin_auth',0,0,1,0,'{\"name\":\"Social Login Twitter auth\",\"type\":\"plugin\",\"creationDate\":\"21.09.2012\",\"author\":\"Arkadiy, Joomline\",\"copyright\":\"(C) 2012. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/joomline.ru\",\"version\":\"1.0\",\"description\":\"Twitter auth\",\"group\":\"\"}','{\"id\":\"\",\"password\":\"\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (10037,'Social Login Vkontakte auth','plugin','vkontakte','slogin_auth',0,0,1,0,'{\"name\":\"Social Login Vkontakte auth\",\"type\":\"plugin\",\"creationDate\":\"21.09.2012\",\"author\":\"Arkadiy, Joomline\",\"copyright\":\"(C) 2012. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/joomline.ru\",\"version\":\"1.0\",\"description\":\"Vkontakte auth\",\"group\":\"\"}','{\"id\":\"\",\"password\":\"\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (10038,'Social Login Yandex auth','plugin','yandex','slogin_auth',0,0,1,0,'{\"name\":\"Social Login Yandex auth\",\"type\":\"plugin\",\"creationDate\":\"21.09.2012\",\"author\":\"Arkadiy, Joomline\",\"copyright\":\"(C) 2012. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/joomline.ru\",\"version\":\"1.0\",\"description\":\"Yandex auth. Instructions for setting up the plugin: http:\\/\\/joomline.ru\\/stati\\/53-komponenty\\/306-sozdanie-prilozhenij-dlja-socialnoj-avtoriziacii.html\",\"group\":\"\"}','{\"id\":\"\",\"password\":\"\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (10039,'Social Login LinkedIn auth','plugin','linkedin','slogin_auth',0,0,1,0,'{\"name\":\"Social Login LinkedIn auth\",\"type\":\"plugin\",\"creationDate\":\"21.09.2012\",\"author\":\"Arkadiy, Joomline\",\"copyright\":\"(C) 2012. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/joomline.ru\",\"version\":\"1.0\",\"description\":\"LinkedIn auth\",\"group\":\"\"}','{\"api_key\":\"\",\"secret_key\":\"\",\"oauth_token\":\"\",\"oauth_secret\":\"\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (10040,'Social Login Ulogin auth','plugin','ulogin','slogin_auth',0,0,1,0,'{\"name\":\"Social Login Ulogin auth\",\"type\":\"plugin\",\"creationDate\":\"21.09.2012\",\"author\":\"Arkadiy, Joomline\",\"copyright\":\"(C) 2012. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/joomline.ru\",\"version\":\"1.0\",\"description\":\"Ulogin auth. Instructions for setting up the plugin: http:\\/\\/joomline.ru\\/stati\\/53-komponenty\\/306-sozdanie-prilozhenij-dlja-socialnoj-avtoriziacii.html\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (10041,'Social Login Live.com auth','plugin','live','slogin_auth',0,0,1,0,'{\"name\":\"Social Login Live.com auth\",\"type\":\"plugin\",\"creationDate\":\"21.09.2012\",\"author\":\"Arkadiy, Joomline\",\"copyright\":\"(C) 2012. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/joomline.ru\",\"version\":\"1.0\",\"description\":\"Live.com auth\",\"group\":\"\"}','{\"id\":\"\",\"password\":\"\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (10042,'Social Login Yahoo auth','plugin','yahoo','slogin_auth',0,0,1,0,'{\"name\":\"Social Login Yahoo auth\",\"type\":\"plugin\",\"creationDate\":\"21.09.2012\",\"author\":\"Arkadiy, Joomline\",\"copyright\":\"(C) 2012. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/joomline.ru\",\"version\":\"1.0\",\"description\":\"Yahoo auth\",\"group\":\"\"}','{\"app_id\":\"\",\"key\":\"\",\"secret\":\"\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (10043,'Social Login Wordpress auth','plugin','wordpress','slogin_auth',0,0,1,0,'{\"name\":\"Social Login Wordpress auth\",\"type\":\"plugin\",\"creationDate\":\"21.09.2012\",\"author\":\"Arkadiy, Joomline\",\"copyright\":\"(C) 2012. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/joomline.ru\",\"version\":\"1.0\",\"description\":\"Wordpress auth\",\"group\":\"\"}','{\"id\":\"\",\"password\":\"\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (10044,'Social Login Instagram auth','plugin','instagram','slogin_auth',0,0,1,0,'{\"name\":\"Social Login Instagram auth\",\"type\":\"plugin\",\"creationDate\":\"21.09.2012\",\"author\":\"Arkadiy, Joomline\",\"copyright\":\"(C) 2012. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/joomline.ru\",\"version\":\"1.0\",\"description\":\"Instagram auth\",\"group\":\"\"}','{\"id\":\"\",\"password\":\"\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (10046,'quicklogout','component','com_quicklogout','',1,1,0,0,'{\"name\":\"Quick Logout\",\"type\":\"component\",\"creationDate\":\"2014-07-25\",\"author\":\"John Muehleisen\",\"copyright\":\"Copyright (C) 2014. All rights reserved.\",\"authorEmail\":\"john@welcometojoomla.com\",\"authorUrl\":\"www.welcometojoomla.com\",\"version\":\"1.9.3\",\"description\":\"Adds a new menu option type to Joomla to allow a one click logout\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (10047,'com_helloworld','component','com_helloworld','',1,1,0,0,'{\"name\":\"com_helloworld\",\"type\":\"component\",\"creationDate\":\"2014-09-12\",\"author\":\"Marat\",\"copyright\":\"\\u00a9 2014. \\u0412\\u0441\\u0435 \\u043f\\u0440\\u0430\\u0432\\u0430 \\u0437\\u0430\\u0449\\u0438\\u0449\\u0435\\u043d\\u044b.\",\"authorEmail\":\"maratenikeev@yandex.ru\",\"authorUrl\":\"http:\\/\\/\",\"version\":\"1.0.0\",\"description\":\"\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (10048,'dump','component','com_dump','',1,1,0,0,'{\"name\":\"Dump\",\"type\":\"component\",\"creationDate\":\"October 31 2012\",\"author\":\"Mathias Verraes\",\"copyright\":\"(c) Mathias Verraes 2006 - 2012\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/github.com\\/mathiasverraes\\/jdump\",\"version\":\"2012-10-31\",\"description\":\"J!Dump -- Advanced print_r and var_dump replacer with DHTML tree display.\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (10049,'J!Dump','plugin','dump','system',0,1,1,0,'{\"name\":\"J!Dump\",\"type\":\"plugin\",\"creationDate\":\"October 31 2012\",\"author\":\"Mathias Verraes\",\"copyright\":\"(c) Mathias Verraes 2006 - 2011\",\"authorEmail\":\"\",\"authorUrl\":\"https:\\/\\/github.com\\/mathiasverraes\\/jdump\",\"version\":\"2012-10-31\",\"description\":\"\\n\\t\\n\\t\\tJ!Dump Plugin -- This plugin requires the J!Dump component to function. \\n\\t\\tDon\'t forget to <a href=\\\"index.php?option=com_plugins&view=plugins\\\">publish this plugin!<\\/a>\\n\\t\\n\\t\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `jos_extensions` VALUES (10050,'SCLogin','module','mod_sclogin','',0,1,0,0,'{\"name\":\"SCLogin\",\"type\":\"module\",\"creationDate\":\"2014\\/08\\/11\",\"author\":\"SourceCoast | www.sourcecoast.com\",\"copyright\":\"Copyright (C) 2009-2014 SourceCoast. All rights reserved.\",\"authorEmail\":\"support@sourcecoast.com\",\"authorUrl\":\"http:\\/\\/www.sourcecoast.com\",\"version\":\"4.1.2\",\"description\":\"\\n        <div style=\'border: 1px solid #6ba6d7; text-align: justify;\'><div style=\'text-align:center; font-size: 18px; color: white; background:#6ba6d7; padding: 5px;\'>SCLogin Module<\\/div><div style=\'padding: 4px; background:white; font-size: 12px;\'>Enhanced login module with flexible styles and customizations.<br\\/><br\\/><b>Main Features:<\\/b><ol><li>Core Joomla login functionality<\\/li><li>Facebook, Google+, Twitter and LinkedIn Authentication when combined with <a href=\'http:\\/\\/www.sourcecoast.com\\/joomla-facebook\\/\' target=\'_blank\' style=\'color:red;\'>JFBConnect<\\/a><\\/li><li>Modal popups, layout choices and bootstrap styling<\\/li><li>Supports Joomla 2.5 and 3.x<\\/li><\\/ol><br\\/>Please visit <a style=\'color:red;\' href=\'http:\\/\\/www.sourcecoast.com\\/sclogin\\/features\\/\' target=\'_blank\'>SourceCoast<\\/a> for more information or <a style=\'color:red;\' href=\'http:\\/\\/www.sourcecoast.com\\/forums\' target=\'_blank\'>our forums<\\/a> for support.<br\\/><br\\/><\\/div><\\/div><div style=\'text-align:justify; border: 4px solid #6ba6d7; color:white; background: #6ba6d7; padding:2px; font-size: 14px;\'>If you use SCLogin, please post a rating and a review at the Joomla! Extensions Directory: <a style=\'color:#DDDDDD\' href=\'http:\\/\\/extensions.joomla.org\\/extensions\\/access-a-security\\/site-access\\/authentication\\/24054\' target=\'_blank\'>SCLogin Enhanced Login<\\/a><\\/div>\",\"group\":\"\"}','{\"displayType\":\"inline\",\"modalButtonStyle\":\"button\",\"modalCloseButton\":\"1\",\"socialButtonsLayout\":\"vertical\",\"showLoginForm\":\"1\",\"showForgotUsername\":\"none\",\"showForgotPassword\":\"none\",\"showRegisterLink\":\"1\",\"showRememberMe\":\"0\",\"register_type\":\"joomla\",\"jlogin\":\"\",\"usesecure\":\"0\",\"enableProfilePic\":\"0\",\"profileWidth\":\"50\",\"profileHeight\":\"50\",\"linkProfile\":\"0\",\"greetingName\":\"1\",\"showUserMenu\":\"\",\"userMenuStyle\":\"0\",\"showLogoutButton\":\"1\",\"showConnectButton\":\"1\",\"jlogout\":\"\",\"user_intro\":\"\",\"loadJQuery\":\"0\",\"showPoweredByLink\":\"2\",\"moduleclass_sfx\":\"\",\"cache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
/*!40000 ALTER TABLE `jos_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_finder_filters`
--

DROP TABLE IF EXISTS `jos_finder_filters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_finder_filters`
--

LOCK TABLES `jos_finder_filters` WRITE;
/*!40000 ALTER TABLE `jos_finder_filters` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_finder_filters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_finder_links`
--

DROP TABLE IF EXISTS `jos_finder_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_finder_links`
--

LOCK TABLES `jos_finder_links` WRITE;
/*!40000 ALTER TABLE `jos_finder_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_finder_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_finder_links_terms0`
--

DROP TABLE IF EXISTS `jos_finder_links_terms0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_finder_links_terms0`
--

LOCK TABLES `jos_finder_links_terms0` WRITE;
/*!40000 ALTER TABLE `jos_finder_links_terms0` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_finder_links_terms0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_finder_links_terms1`
--

DROP TABLE IF EXISTS `jos_finder_links_terms1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_finder_links_terms1`
--

LOCK TABLES `jos_finder_links_terms1` WRITE;
/*!40000 ALTER TABLE `jos_finder_links_terms1` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_finder_links_terms1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_finder_links_terms2`
--

DROP TABLE IF EXISTS `jos_finder_links_terms2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_finder_links_terms2`
--

LOCK TABLES `jos_finder_links_terms2` WRITE;
/*!40000 ALTER TABLE `jos_finder_links_terms2` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_finder_links_terms2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_finder_links_terms3`
--

DROP TABLE IF EXISTS `jos_finder_links_terms3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_finder_links_terms3`
--

LOCK TABLES `jos_finder_links_terms3` WRITE;
/*!40000 ALTER TABLE `jos_finder_links_terms3` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_finder_links_terms3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_finder_links_terms4`
--

DROP TABLE IF EXISTS `jos_finder_links_terms4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_finder_links_terms4`
--

LOCK TABLES `jos_finder_links_terms4` WRITE;
/*!40000 ALTER TABLE `jos_finder_links_terms4` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_finder_links_terms4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_finder_links_terms5`
--

DROP TABLE IF EXISTS `jos_finder_links_terms5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_finder_links_terms5`
--

LOCK TABLES `jos_finder_links_terms5` WRITE;
/*!40000 ALTER TABLE `jos_finder_links_terms5` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_finder_links_terms5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_finder_links_terms6`
--

DROP TABLE IF EXISTS `jos_finder_links_terms6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_finder_links_terms6`
--

LOCK TABLES `jos_finder_links_terms6` WRITE;
/*!40000 ALTER TABLE `jos_finder_links_terms6` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_finder_links_terms6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_finder_links_terms7`
--

DROP TABLE IF EXISTS `jos_finder_links_terms7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_finder_links_terms7`
--

LOCK TABLES `jos_finder_links_terms7` WRITE;
/*!40000 ALTER TABLE `jos_finder_links_terms7` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_finder_links_terms7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_finder_links_terms8`
--

DROP TABLE IF EXISTS `jos_finder_links_terms8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_finder_links_terms8`
--

LOCK TABLES `jos_finder_links_terms8` WRITE;
/*!40000 ALTER TABLE `jos_finder_links_terms8` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_finder_links_terms8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_finder_links_terms9`
--

DROP TABLE IF EXISTS `jos_finder_links_terms9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_finder_links_terms9`
--

LOCK TABLES `jos_finder_links_terms9` WRITE;
/*!40000 ALTER TABLE `jos_finder_links_terms9` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_finder_links_terms9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_finder_links_termsa`
--

DROP TABLE IF EXISTS `jos_finder_links_termsa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_finder_links_termsa`
--

LOCK TABLES `jos_finder_links_termsa` WRITE;
/*!40000 ALTER TABLE `jos_finder_links_termsa` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_finder_links_termsa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_finder_links_termsb`
--

DROP TABLE IF EXISTS `jos_finder_links_termsb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_finder_links_termsb`
--

LOCK TABLES `jos_finder_links_termsb` WRITE;
/*!40000 ALTER TABLE `jos_finder_links_termsb` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_finder_links_termsb` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_finder_links_termsc`
--

DROP TABLE IF EXISTS `jos_finder_links_termsc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_finder_links_termsc`
--

LOCK TABLES `jos_finder_links_termsc` WRITE;
/*!40000 ALTER TABLE `jos_finder_links_termsc` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_finder_links_termsc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_finder_links_termsd`
--

DROP TABLE IF EXISTS `jos_finder_links_termsd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_finder_links_termsd`
--

LOCK TABLES `jos_finder_links_termsd` WRITE;
/*!40000 ALTER TABLE `jos_finder_links_termsd` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_finder_links_termsd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_finder_links_termse`
--

DROP TABLE IF EXISTS `jos_finder_links_termse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_finder_links_termse`
--

LOCK TABLES `jos_finder_links_termse` WRITE;
/*!40000 ALTER TABLE `jos_finder_links_termse` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_finder_links_termse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_finder_links_termsf`
--

DROP TABLE IF EXISTS `jos_finder_links_termsf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_finder_links_termsf`
--

LOCK TABLES `jos_finder_links_termsf` WRITE;
/*!40000 ALTER TABLE `jos_finder_links_termsf` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_finder_links_termsf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_finder_taxonomy`
--

DROP TABLE IF EXISTS `jos_finder_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_finder_taxonomy`
--

LOCK TABLES `jos_finder_taxonomy` WRITE;
/*!40000 ALTER TABLE `jos_finder_taxonomy` DISABLE KEYS */;
INSERT INTO `jos_finder_taxonomy` VALUES (1,0,'ROOT',0,0,0);
/*!40000 ALTER TABLE `jos_finder_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_finder_taxonomy_map`
--

DROP TABLE IF EXISTS `jos_finder_taxonomy_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_finder_taxonomy_map`
--

LOCK TABLES `jos_finder_taxonomy_map` WRITE;
/*!40000 ALTER TABLE `jos_finder_taxonomy_map` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_finder_taxonomy_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_finder_terms`
--

DROP TABLE IF EXISTS `jos_finder_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_finder_terms`
--

LOCK TABLES `jos_finder_terms` WRITE;
/*!40000 ALTER TABLE `jos_finder_terms` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_finder_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_finder_terms_common`
--

DROP TABLE IF EXISTS `jos_finder_terms_common`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_finder_terms_common`
--

LOCK TABLES `jos_finder_terms_common` WRITE;
/*!40000 ALTER TABLE `jos_finder_terms_common` DISABLE KEYS */;
INSERT INTO `jos_finder_terms_common` VALUES ('a','en');
INSERT INTO `jos_finder_terms_common` VALUES ('about','en');
INSERT INTO `jos_finder_terms_common` VALUES ('after','en');
INSERT INTO `jos_finder_terms_common` VALUES ('ago','en');
INSERT INTO `jos_finder_terms_common` VALUES ('all','en');
INSERT INTO `jos_finder_terms_common` VALUES ('am','en');
INSERT INTO `jos_finder_terms_common` VALUES ('an','en');
INSERT INTO `jos_finder_terms_common` VALUES ('and','en');
INSERT INTO `jos_finder_terms_common` VALUES ('ani','en');
INSERT INTO `jos_finder_terms_common` VALUES ('any','en');
INSERT INTO `jos_finder_terms_common` VALUES ('are','en');
INSERT INTO `jos_finder_terms_common` VALUES ('aren\'t','en');
INSERT INTO `jos_finder_terms_common` VALUES ('as','en');
INSERT INTO `jos_finder_terms_common` VALUES ('at','en');
INSERT INTO `jos_finder_terms_common` VALUES ('be','en');
INSERT INTO `jos_finder_terms_common` VALUES ('but','en');
INSERT INTO `jos_finder_terms_common` VALUES ('by','en');
INSERT INTO `jos_finder_terms_common` VALUES ('for','en');
INSERT INTO `jos_finder_terms_common` VALUES ('from','en');
INSERT INTO `jos_finder_terms_common` VALUES ('get','en');
INSERT INTO `jos_finder_terms_common` VALUES ('go','en');
INSERT INTO `jos_finder_terms_common` VALUES ('how','en');
INSERT INTO `jos_finder_terms_common` VALUES ('if','en');
INSERT INTO `jos_finder_terms_common` VALUES ('in','en');
INSERT INTO `jos_finder_terms_common` VALUES ('into','en');
INSERT INTO `jos_finder_terms_common` VALUES ('is','en');
INSERT INTO `jos_finder_terms_common` VALUES ('isn\'t','en');
INSERT INTO `jos_finder_terms_common` VALUES ('it','en');
INSERT INTO `jos_finder_terms_common` VALUES ('its','en');
INSERT INTO `jos_finder_terms_common` VALUES ('me','en');
INSERT INTO `jos_finder_terms_common` VALUES ('more','en');
INSERT INTO `jos_finder_terms_common` VALUES ('most','en');
INSERT INTO `jos_finder_terms_common` VALUES ('must','en');
INSERT INTO `jos_finder_terms_common` VALUES ('my','en');
INSERT INTO `jos_finder_terms_common` VALUES ('new','en');
INSERT INTO `jos_finder_terms_common` VALUES ('no','en');
INSERT INTO `jos_finder_terms_common` VALUES ('none','en');
INSERT INTO `jos_finder_terms_common` VALUES ('not','en');
INSERT INTO `jos_finder_terms_common` VALUES ('noth','en');
INSERT INTO `jos_finder_terms_common` VALUES ('nothing','en');
INSERT INTO `jos_finder_terms_common` VALUES ('of','en');
INSERT INTO `jos_finder_terms_common` VALUES ('off','en');
INSERT INTO `jos_finder_terms_common` VALUES ('often','en');
INSERT INTO `jos_finder_terms_common` VALUES ('old','en');
INSERT INTO `jos_finder_terms_common` VALUES ('on','en');
INSERT INTO `jos_finder_terms_common` VALUES ('onc','en');
INSERT INTO `jos_finder_terms_common` VALUES ('once','en');
INSERT INTO `jos_finder_terms_common` VALUES ('onli','en');
INSERT INTO `jos_finder_terms_common` VALUES ('only','en');
INSERT INTO `jos_finder_terms_common` VALUES ('or','en');
INSERT INTO `jos_finder_terms_common` VALUES ('other','en');
INSERT INTO `jos_finder_terms_common` VALUES ('our','en');
INSERT INTO `jos_finder_terms_common` VALUES ('ours','en');
INSERT INTO `jos_finder_terms_common` VALUES ('out','en');
INSERT INTO `jos_finder_terms_common` VALUES ('over','en');
INSERT INTO `jos_finder_terms_common` VALUES ('page','en');
INSERT INTO `jos_finder_terms_common` VALUES ('she','en');
INSERT INTO `jos_finder_terms_common` VALUES ('should','en');
INSERT INTO `jos_finder_terms_common` VALUES ('small','en');
INSERT INTO `jos_finder_terms_common` VALUES ('so','en');
INSERT INTO `jos_finder_terms_common` VALUES ('some','en');
INSERT INTO `jos_finder_terms_common` VALUES ('than','en');
INSERT INTO `jos_finder_terms_common` VALUES ('thank','en');
INSERT INTO `jos_finder_terms_common` VALUES ('that','en');
INSERT INTO `jos_finder_terms_common` VALUES ('the','en');
INSERT INTO `jos_finder_terms_common` VALUES ('their','en');
INSERT INTO `jos_finder_terms_common` VALUES ('theirs','en');
INSERT INTO `jos_finder_terms_common` VALUES ('them','en');
INSERT INTO `jos_finder_terms_common` VALUES ('then','en');
INSERT INTO `jos_finder_terms_common` VALUES ('there','en');
INSERT INTO `jos_finder_terms_common` VALUES ('these','en');
INSERT INTO `jos_finder_terms_common` VALUES ('they','en');
INSERT INTO `jos_finder_terms_common` VALUES ('this','en');
INSERT INTO `jos_finder_terms_common` VALUES ('those','en');
INSERT INTO `jos_finder_terms_common` VALUES ('thus','en');
INSERT INTO `jos_finder_terms_common` VALUES ('time','en');
INSERT INTO `jos_finder_terms_common` VALUES ('times','en');
INSERT INTO `jos_finder_terms_common` VALUES ('to','en');
INSERT INTO `jos_finder_terms_common` VALUES ('too','en');
INSERT INTO `jos_finder_terms_common` VALUES ('true','en');
INSERT INTO `jos_finder_terms_common` VALUES ('under','en');
INSERT INTO `jos_finder_terms_common` VALUES ('until','en');
INSERT INTO `jos_finder_terms_common` VALUES ('up','en');
INSERT INTO `jos_finder_terms_common` VALUES ('upon','en');
INSERT INTO `jos_finder_terms_common` VALUES ('use','en');
INSERT INTO `jos_finder_terms_common` VALUES ('user','en');
INSERT INTO `jos_finder_terms_common` VALUES ('users','en');
INSERT INTO `jos_finder_terms_common` VALUES ('veri','en');
INSERT INTO `jos_finder_terms_common` VALUES ('version','en');
INSERT INTO `jos_finder_terms_common` VALUES ('very','en');
INSERT INTO `jos_finder_terms_common` VALUES ('via','en');
INSERT INTO `jos_finder_terms_common` VALUES ('want','en');
INSERT INTO `jos_finder_terms_common` VALUES ('was','en');
INSERT INTO `jos_finder_terms_common` VALUES ('way','en');
INSERT INTO `jos_finder_terms_common` VALUES ('were','en');
INSERT INTO `jos_finder_terms_common` VALUES ('what','en');
INSERT INTO `jos_finder_terms_common` VALUES ('when','en');
INSERT INTO `jos_finder_terms_common` VALUES ('where','en');
INSERT INTO `jos_finder_terms_common` VALUES ('whi','en');
INSERT INTO `jos_finder_terms_common` VALUES ('which','en');
INSERT INTO `jos_finder_terms_common` VALUES ('who','en');
INSERT INTO `jos_finder_terms_common` VALUES ('whom','en');
INSERT INTO `jos_finder_terms_common` VALUES ('whose','en');
INSERT INTO `jos_finder_terms_common` VALUES ('why','en');
INSERT INTO `jos_finder_terms_common` VALUES ('wide','en');
INSERT INTO `jos_finder_terms_common` VALUES ('will','en');
INSERT INTO `jos_finder_terms_common` VALUES ('with','en');
INSERT INTO `jos_finder_terms_common` VALUES ('within','en');
INSERT INTO `jos_finder_terms_common` VALUES ('without','en');
INSERT INTO `jos_finder_terms_common` VALUES ('would','en');
INSERT INTO `jos_finder_terms_common` VALUES ('yes','en');
INSERT INTO `jos_finder_terms_common` VALUES ('yet','en');
INSERT INTO `jos_finder_terms_common` VALUES ('you','en');
INSERT INTO `jos_finder_terms_common` VALUES ('your','en');
INSERT INTO `jos_finder_terms_common` VALUES ('yours','en');
/*!40000 ALTER TABLE `jos_finder_terms_common` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_finder_tokens`
--

DROP TABLE IF EXISTS `jos_finder_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_finder_tokens`
--

LOCK TABLES `jos_finder_tokens` WRITE;
/*!40000 ALTER TABLE `jos_finder_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_finder_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_finder_tokens_aggregate`
--

DROP TABLE IF EXISTS `jos_finder_tokens_aggregate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_finder_tokens_aggregate`
--

LOCK TABLES `jos_finder_tokens_aggregate` WRITE;
/*!40000 ALTER TABLE `jos_finder_tokens_aggregate` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_finder_tokens_aggregate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_finder_types`
--

DROP TABLE IF EXISTS `jos_finder_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_finder_types`
--

LOCK TABLES `jos_finder_types` WRITE;
/*!40000 ALTER TABLE `jos_finder_types` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_finder_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_languages`
--

DROP TABLE IF EXISTS `jos_languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_languages`
--

LOCK TABLES `jos_languages` WRITE;
/*!40000 ALTER TABLE `jos_languages` DISABLE KEYS */;
INSERT INTO `jos_languages` VALUES (1,'en-GB','English (UK)','English (UK)','en','en','','','','',1,1,1);
/*!40000 ALTER TABLE `jos_languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_menu`
--

DROP TABLE IF EXISTS `jos_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to jos_menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to jos_extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to jos_users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_menu`
--

LOCK TABLES `jos_menu` WRITE;
/*!40000 ALTER TABLE `jos_menu` DISABLE KEYS */;
INSERT INTO `jos_menu` VALUES (1,'','Menu_Item_Root','root','','','','',1,0,0,0,0,'0000-00-00 00:00:00',0,0,'',0,'',0,89,0,'*',0);
INSERT INTO `jos_menu` VALUES (2,'menu','com_banners','Banners','','Banners','index.php?option=com_banners','component',0,1,1,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',1,10,0,'*',1);
INSERT INTO `jos_menu` VALUES (3,'menu','com_banners','Banners','','Banners/Banners','index.php?option=com_banners','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',2,3,0,'*',1);
INSERT INTO `jos_menu` VALUES (4,'menu','com_banners_categories','Categories','','Banners/Categories','index.php?option=com_categories&extension=com_banners','component',0,2,2,6,0,'0000-00-00 00:00:00',0,0,'class:banners-cat',0,'',4,5,0,'*',1);
INSERT INTO `jos_menu` VALUES (5,'menu','com_banners_clients','Clients','','Banners/Clients','index.php?option=com_banners&view=clients','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-clients',0,'',6,7,0,'*',1);
INSERT INTO `jos_menu` VALUES (6,'menu','com_banners_tracks','Tracks','','Banners/Tracks','index.php?option=com_banners&view=tracks','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-tracks',0,'',8,9,0,'*',1);
INSERT INTO `jos_menu` VALUES (7,'menu','com_contact','Contacts','','Contacts','index.php?option=com_contact','component',0,1,1,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',11,16,0,'*',1);
INSERT INTO `jos_menu` VALUES (8,'menu','com_contact','Contacts','','Contacts/Contacts','index.php?option=com_contact','component',0,7,2,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',12,13,0,'*',1);
INSERT INTO `jos_menu` VALUES (9,'menu','com_contact_categories','Categories','','Contacts/Categories','index.php?option=com_categories&extension=com_contact','component',0,7,2,6,0,'0000-00-00 00:00:00',0,0,'class:contact-cat',0,'',14,15,0,'*',1);
INSERT INTO `jos_menu` VALUES (10,'menu','com_messages','Messaging','','Messaging','index.php?option=com_messages','component',0,1,1,15,0,'0000-00-00 00:00:00',0,0,'class:messages',0,'',17,22,0,'*',1);
INSERT INTO `jos_menu` VALUES (11,'menu','com_messages_add','New Private Message','','Messaging/New Private Message','index.php?option=com_messages&task=message.add','component',0,10,2,15,0,'0000-00-00 00:00:00',0,0,'class:messages-add',0,'',18,19,0,'*',1);
INSERT INTO `jos_menu` VALUES (12,'menu','com_messages_read','Read Private Message','','Messaging/Read Private Message','index.php?option=com_messages','component',0,10,2,15,0,'0000-00-00 00:00:00',0,0,'class:messages-read',0,'',20,21,0,'*',1);
INSERT INTO `jos_menu` VALUES (13,'menu','com_newsfeeds','News Feeds','','News Feeds','index.php?option=com_newsfeeds','component',0,1,1,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',23,28,0,'*',1);
INSERT INTO `jos_menu` VALUES (14,'menu','com_newsfeeds_feeds','Feeds','','News Feeds/Feeds','index.php?option=com_newsfeeds','component',0,13,2,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',24,25,0,'*',1);
INSERT INTO `jos_menu` VALUES (15,'menu','com_newsfeeds_categories','Categories','','News Feeds/Categories','index.php?option=com_categories&extension=com_newsfeeds','component',0,13,2,6,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds-cat',0,'',26,27,0,'*',1);
INSERT INTO `jos_menu` VALUES (16,'menu','com_redirect','Redirect','','Redirect','index.php?option=com_redirect','component',0,1,1,24,0,'0000-00-00 00:00:00',0,0,'class:redirect',0,'',29,30,0,'*',1);
INSERT INTO `jos_menu` VALUES (17,'menu','com_search','Basic Search','','Basic Search','index.php?option=com_search','component',0,1,1,19,0,'0000-00-00 00:00:00',0,0,'class:search',0,'',31,32,0,'*',1);
INSERT INTO `jos_menu` VALUES (18,'menu','com_weblinks','Weblinks','','Weblinks','index.php?option=com_weblinks','component',0,1,1,21,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',33,38,0,'*',1);
INSERT INTO `jos_menu` VALUES (19,'menu','com_weblinks_links','Links','','Weblinks/Links','index.php?option=com_weblinks','component',0,18,2,21,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',34,35,0,'*',1);
INSERT INTO `jos_menu` VALUES (20,'menu','com_weblinks_categories','Categories','','Weblinks/Categories','index.php?option=com_categories&extension=com_weblinks','component',0,18,2,6,0,'0000-00-00 00:00:00',0,0,'class:weblinks-cat',0,'',36,37,0,'*',1);
INSERT INTO `jos_menu` VALUES (21,'menu','com_finder','Smart Search','','Smart Search','index.php?option=com_finder','component',0,1,1,27,0,'0000-00-00 00:00:00',0,0,'class:finder',0,'',39,40,0,'*',1);
INSERT INTO `jos_menu` VALUES (22,'menu','com_joomlaupdate','Joomla! Update','','Joomla! Update','index.php?option=com_joomlaupdate','component',1,1,1,28,0,'0000-00-00 00:00:00',0,0,'class:joomlaupdate',0,'',41,42,0,'*',1);
INSERT INTO `jos_menu` VALUES (23,'main','com_tags','Tags','','Tags','index.php?option=com_tags','component',0,1,1,29,0,'0000-00-00 00:00:00',0,1,'class:tags',0,'',43,44,0,'',1);
INSERT INTO `jos_menu` VALUES (24,'main','com_postinstall','Post-installation messages','','Post-installation messages','index.php?option=com_postinstall','component',0,1,1,32,0,'0000-00-00 00:00:00',0,1,'class:postinstall',0,'',45,46,0,'*',1);
INSERT INTO `jos_menu` VALUES (101,'mainmenu','Главная','homepage','','homepage','index.php?option=com_content&view=featured','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"featured_categories\":[\"\"],\"layout_type\":\"blog\",\"num_leading_articles\":\"\",\"num_intro_articles\":\"\",\"num_columns\":\"\",\"num_links\":\"\",\"multi_column_order\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_title\":\"0\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"0\",\"show_category\":\"0\",\"link_category\":\"0\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"0\",\"show_modify_date\":\"0\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_tags\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\\u0410\\u043d\\u0430\\u043b\\u0438\\u0437\\u0430\\u0442\\u043e\\u0440 \\u043a\\u043e\\u0434\\u0430 1\\u0421\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',47,48,1,'*',0);
INSERT INTO `jos_menu` VALUES (108,'main','JCE','jce','','jce','index.php?option=com_jce','component',0,1,1,10023,0,'0000-00-00 00:00:00',0,1,'components/com_jce/media/img/menu/logo.png',0,'',49,58,0,'',1);
INSERT INTO `jos_menu` VALUES (109,'main','WF_MENU_CPANEL','wf-menu-cpanel','','jce/wf-menu-cpanel','index.php?option=com_jce','component',0,108,2,10023,0,'0000-00-00 00:00:00',0,1,'components/com_jce/media/img/menu/jce-cpanel.png',0,'',50,51,0,'',1);
INSERT INTO `jos_menu` VALUES (110,'main','WF_MENU_CONFIG','wf-menu-config','','jce/wf-menu-config','index.php?option=com_jce&view=config','component',0,108,2,10023,0,'0000-00-00 00:00:00',0,1,'components/com_jce/media/img/menu/jce-config.png',0,'',52,53,0,'',1);
INSERT INTO `jos_menu` VALUES (111,'main','WF_MENU_PROFILES','wf-menu-profiles','','jce/wf-menu-profiles','index.php?option=com_jce&view=profiles','component',0,108,2,10023,0,'0000-00-00 00:00:00',0,1,'components/com_jce/media/img/menu/jce-profiles.png',0,'',54,55,0,'',1);
INSERT INTO `jos_menu` VALUES (112,'main','WF_MENU_INSTALL','wf-menu-install','','jce/wf-menu-install','index.php?option=com_jce&view=installer','component',0,108,2,10023,0,'0000-00-00 00:00:00',0,1,'components/com_jce/media/img/menu/jce-install.png',0,'',56,57,0,'',1);
INSERT INTO `jos_menu` VALUES (113,'mainmenu','Скачать','2014-09-11-09-43-18','','2014-09-11-09-43-18','index.php?option=com_content&view=article&id=3','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',59,60,0,'*',0);
INSERT INTO `jos_menu` VALUES (114,'mainmenu','Купить','2014-09-11-09-43-46','','2014-09-11-09-43-46','index.php?option=com_content&view=article&id=4','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',61,62,0,'*',0);
INSERT INTO `jos_menu` VALUES (115,'mainmenu','Блог','2014-09-11-09-44-09','','2014-09-11-09-44-09','','component',1,1,1,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',63,64,0,'*',0);
INSERT INTO `jos_menu` VALUES (116,'mainmenu','Форум','2014-09-11-09-44-17','','2014-09-11-09-44-17','','component',1,1,1,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',65,66,0,'*',0);
INSERT INTO `jos_menu` VALUES (117,'mainmenu','Поддержка','2014-09-11-09-44-27','','2014-09-11-09-44-27','','component',1,1,1,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',67,68,0,'*',0);
INSERT INTO `jos_menu` VALUES (118,'mainmenu','Войти','2014-09-11-09-59-50','','2014-09-11-09-59-50','index.php?option=com_users&view=login','component',-2,1,1,25,0,'0000-00-00 00:00:00',0,1,'',0,'{\"login_redirect_url\":\"\",\"logindescription_show\":\"1\",\"login_description\":\"\",\"login_image\":\"\",\"logout_redirect_url\":\"\",\"logoutdescription_show\":\"1\",\"logout_description\":\"\",\"logout_image\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',69,70,0,'*',0);
INSERT INTO `jos_menu` VALUES (120,'mainmenu','Выйти','2014-09-11-10-05-19','','2014-09-11-10-05-19','index.php?option=com_quicklogout&view=quicklogout','component',-2,1,1,10024,0,'0000-00-00 00:00:00',0,1,'',0,'{\"quick_logout_redirect\":\"101\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',71,72,0,'*',0);
INSERT INTO `jos_menu` VALUES (121,'mainmenu','Войти','2014-09-11-10-10-19','','2014-09-11-10-10-19','index.php?option=com_users&view=login','component',0,1,1,25,0,'0000-00-00 00:00:00',0,5,'',0,'{\"login_redirect_url\":\"\",\"logindescription_show\":\"0\",\"login_description\":\"\",\"login_image\":\"\",\"logout_redirect_url\":\"\",\"logoutdescription_show\":\"0\",\"logout_description\":\"\",\"logout_image\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\\u0410\\u043d\\u0430\\u043b\\u0438\\u0437\\u0430\\u0442\\u043e\\u0440 \\u043a\\u043e\\u0434\\u0430 1\\u0421\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"2\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"500\",\"colxw\":\"250\\r\\n250\",\"class\":\"\",\"subcontent\":\"modules\",\"mods\":[\"16\"]}',73,74,0,'*',0);
INSERT INTO `jos_menu` VALUES (122,'mainmenu','Выйти','2014-09-11-10-10-45','','2014-09-11-10-10-45','index.php?option=com_quicklogout&view=quicklogout','component',0,1,1,10046,0,'0000-00-00 00:00:00',0,2,'',0,'{\"quick_logout_redirect\":\"101\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',75,76,0,'*',0);
INSERT INTO `jos_menu` VALUES (124,'main','COM_QUICKLOGOUT','com-quicklogout','','com-quicklogout','index.php?option=com_quicklogout','component',0,1,1,10046,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',77,78,0,'',1);
INSERT INTO `jos_menu` VALUES (125,'main','Hello World!','hello-world','','hello-world','index.php?option=com_helloworld','component',0,1,1,10047,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',79,80,0,'',1);
INSERT INTO `jos_menu` VALUES (126,'main','J!Dump','j-dump','','j-dump','index.php?option=com_dump','component',0,1,1,10048,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',81,82,0,'',1);
INSERT INTO `jos_menu` VALUES (127,'mainmenu','Hello','hello','','hello','index.php?option=com_helloworld&view=helloworld','component',1,1,1,10047,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',83,84,0,'*',0);
INSERT INTO `jos_menu` VALUES (128,'mainmenu','123','123','','123','','component',1,1,1,0,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"modules\",\"mods\":[\"99\"]}',85,86,0,'*',0);
INSERT INTO `jos_menu` VALUES (129,'usermenu','reset','reset','','reset','index.php?option=com_users&view=reset','component',1,1,1,25,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"showmenutitle\":\"1\",\"desc\":\"\",\"cols\":\"1\",\"group\":\"0\",\"showgrouptitle\":\"1\",\"cwidth\":\"\",\"colxw\":\"\",\"class\":\"\",\"subcontent\":\"normal\"}',87,88,0,'*',0);
/*!40000 ALTER TABLE `jos_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_menu_types`
--

DROP TABLE IF EXISTS `jos_menu_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_menu_types`
--

LOCK TABLES `jos_menu_types` WRITE;
/*!40000 ALTER TABLE `jos_menu_types` DISABLE KEYS */;
INSERT INTO `jos_menu_types` VALUES (1,'mainmenu','Main Menu','The main menu for the site');
INSERT INTO `jos_menu_types` VALUES (3,'usermenu','User Menu','');
/*!40000 ALTER TABLE `jos_menu_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_messages`
--

DROP TABLE IF EXISTS `jos_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_messages`
--

LOCK TABLES `jos_messages` WRITE;
/*!40000 ALTER TABLE `jos_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_messages_cfg`
--

DROP TABLE IF EXISTS `jos_messages_cfg`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_messages_cfg`
--

LOCK TABLES `jos_messages_cfg` WRITE;
/*!40000 ALTER TABLE `jos_messages_cfg` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_messages_cfg` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_modules`
--

DROP TABLE IF EXISTS `jos_modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the jos_assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_modules`
--

LOCK TABLES `jos_modules` WRITE;
/*!40000 ALTER TABLE `jos_modules` DISABLE KEYS */;
INSERT INTO `jos_modules` VALUES (1,39,'Main Menu','','',1,'position-1',42,'2014-09-12 06:41:25','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',1,1,'{\"menutype\":\"mainmenu\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\" nav-pills\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `jos_modules` VALUES (2,40,'Login','','',1,'login',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'',1,'*');
INSERT INTO `jos_modules` VALUES (3,41,'Popular Articles','','',3,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*');
INSERT INTO `jos_modules` VALUES (4,42,'Recently Added Articles','','',4,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*');
INSERT INTO `jos_modules` VALUES (8,43,'Toolbar','','',1,'toolbar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_toolbar',3,1,'',1,'*');
INSERT INTO `jos_modules` VALUES (9,44,'Quick Icons','','',1,'icon',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_quickicon',3,1,'',1,'*');
INSERT INTO `jos_modules` VALUES (10,45,'Logged-in Users','','',2,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*');
INSERT INTO `jos_modules` VALUES (12,46,'Admin Menu','','',1,'menu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*');
INSERT INTO `jos_modules` VALUES (13,47,'Admin Submenu','','',1,'submenu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_submenu',3,1,'',1,'*');
INSERT INTO `jos_modules` VALUES (14,48,'User Status','','',2,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_status',3,1,'',1,'*');
INSERT INTO `jos_modules` VALUES (15,49,'Title','','',1,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_title',3,1,'',1,'*');
INSERT INTO `jos_modules` VALUES (16,50,'Login Form','','',7,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'{\"greeting\":\"1\",\"name\":\"0\"}',0,'*');
INSERT INTO `jos_modules` VALUES (17,51,'Breadcrumbs','','',1,'position-2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_breadcrumbs',1,1,'{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*');
INSERT INTO `jos_modules` VALUES (79,52,'Multilanguage status','','',1,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*');
INSERT INTO `jos_modules` VALUES (86,53,'Joomla Version','','',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_version',3,1,'{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*');
INSERT INTO `jos_modules` VALUES (87,54,'Popular Tags','','',1,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_tags_popular',1,1,'{\"maximum\":\"10\",\"timeframe\":\"alltime\",\"order_value\":\"count\",\"order_direction\":\"1\",\"display_count\":0,\"no_results_text\":\"0\",\"minsize\":1,\"maxsize\":2,\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"owncache\":\"1\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `jos_modules` VALUES (88,55,'Site Information','','',3,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_stats_admin',3,1,'{\"serverinfo\":\"1\",\"siteinfo\":\"1\",\"counter\":\"0\",\"increase\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',1,'*');
INSERT INTO `jos_modules` VALUES (89,56,'Release News','','',0,'postinstall',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_feed',1,1,'{\"rssurl\":\"http:\\/\\/www.joomla.org\\/announcements\\/release-news.feed\",\"rssrtl\":\"0\",\"rsstitle\":\"1\",\"rssdesc\":\"1\",\"rssimage\":\"1\",\"rssitems\":\"3\",\"rssitemdesc\":\"1\",\"word_count\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',1,'*');
INSERT INTO `jos_modules` VALUES (90,57,'Latest Articles','','',1,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_articles_latest',1,1,'{\"catid\":[\"\"],\"count\":\"5\",\"show_featured\":\"\",\"ordering\":\"c_dsc\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `jos_modules` VALUES (92,59,'Image Module','','<p><img src=\"images/headers/blue-flower.jpg\" alt=\"Blue Flower\" /></p>',0,'position-3',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `jos_modules` VALUES (93,60,'Search','','',0,'position-0',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_search',1,1,'{\"label\":\"\",\"width\":\"20\",\"text\":\"\",\"button\":\"0\",\"button_pos\":\"right\",\"imagebutton\":\"1\",\"button_text\":\"\",\"opensearch\":\"1\",\"opensearch_title\":\"\",\"set_itemid\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `jos_modules` VALUES (94,64,'carusel','','<p>[carousel] [carousel_item] Hello [/carousel_item] [/carousel]</p>',1,'feature',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `jos_modules` VALUES (95,65,'Title','','<p style=\"font-family: \'Times New Roman\', Times, serif; font-size: xx-large; text-align: center;\">Анализатор кода 1С</p>',1,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `jos_modules` VALUES (96,72,'download','','<p style=\"text-align: center;\">[button type=\"success\"]Скачать для Windows[/button]</p>',1,'user1',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"1\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `jos_modules` VALUES (99,80,'Авторизация','','',1,'menu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_sclogin',1,1,'{\"theme\":\"default.css\",\"displayType\":\"modal\",\"modalButtonStyle\":\"text\",\"modalCloseButton\":\"1\",\"socialButtonsLayout\":\"vertical\",\"showLoginForm\":\"1\",\"showForgotUsername\":\"button_white\",\"showForgotPassword\":\"button_white\",\"showRegisterLink\":\"3\",\"showRememberMe\":\"0\",\"register_type\":\"joomla\",\"jlogin\":\"\",\"usesecure\":\"0\",\"enableProfilePic\":\"0\",\"profileWidth\":\"50\",\"profileHeight\":\"50\",\"linkProfile\":\"0\",\"greetingName\":\"0\",\"showUserMenu\":\"usermenu\",\"userMenuStyle\":\"0\",\"showLogoutButton\":\"1\",\"showConnectButton\":\"1\",\"jlogout\":\"\",\"user_intro\":\"\",\"loadJQuery\":\"0\",\"showPoweredByLink\":\"2\",\"moduleclass_sfx\":\" ca_login\",\"cache\":\"0\",\"module_tag\":\"section\",\"bootstrap_size\":\"4\",\"header_tag\":\"h3\",\"header_class\":\" ca_login\",\"style\":\"0\"}',0,'*');
/*!40000 ALTER TABLE `jos_modules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_modules_menu`
--

DROP TABLE IF EXISTS `jos_modules_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_modules_menu`
--

LOCK TABLES `jos_modules_menu` WRITE;
/*!40000 ALTER TABLE `jos_modules_menu` DISABLE KEYS */;
INSERT INTO `jos_modules_menu` VALUES (1,0);
INSERT INTO `jos_modules_menu` VALUES (2,0);
INSERT INTO `jos_modules_menu` VALUES (3,0);
INSERT INTO `jos_modules_menu` VALUES (4,0);
INSERT INTO `jos_modules_menu` VALUES (6,0);
INSERT INTO `jos_modules_menu` VALUES (7,0);
INSERT INTO `jos_modules_menu` VALUES (8,0);
INSERT INTO `jos_modules_menu` VALUES (9,0);
INSERT INTO `jos_modules_menu` VALUES (10,0);
INSERT INTO `jos_modules_menu` VALUES (12,0);
INSERT INTO `jos_modules_menu` VALUES (13,0);
INSERT INTO `jos_modules_menu` VALUES (14,0);
INSERT INTO `jos_modules_menu` VALUES (15,0);
INSERT INTO `jos_modules_menu` VALUES (16,0);
INSERT INTO `jos_modules_menu` VALUES (17,0);
INSERT INTO `jos_modules_menu` VALUES (79,0);
INSERT INTO `jos_modules_menu` VALUES (86,0);
INSERT INTO `jos_modules_menu` VALUES (87,0);
INSERT INTO `jos_modules_menu` VALUES (88,0);
INSERT INTO `jos_modules_menu` VALUES (89,0);
INSERT INTO `jos_modules_menu` VALUES (90,0);
INSERT INTO `jos_modules_menu` VALUES (91,0);
INSERT INTO `jos_modules_menu` VALUES (92,0);
INSERT INTO `jos_modules_menu` VALUES (94,101);
INSERT INTO `jos_modules_menu` VALUES (95,101);
INSERT INTO `jos_modules_menu` VALUES (96,101);
INSERT INTO `jos_modules_menu` VALUES (99,0);
/*!40000 ALTER TABLE `jos_modules_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_newsfeeds`
--

DROP TABLE IF EXISTS `jos_newsfeeds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_newsfeeds`
--

LOCK TABLES `jos_newsfeeds` WRITE;
/*!40000 ALTER TABLE `jos_newsfeeds` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_newsfeeds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_overrider`
--

DROP TABLE IF EXISTS `jos_overrider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_overrider`
--

LOCK TABLES `jos_overrider` WRITE;
/*!40000 ALTER TABLE `jos_overrider` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_overrider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_postinstall_messages`
--

DROP TABLE IF EXISTS `jos_postinstall_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to jos_extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_postinstall_messages`
--

LOCK TABLES `jos_postinstall_messages` WRITE;
/*!40000 ALTER TABLE `jos_postinstall_messages` DISABLE KEYS */;
INSERT INTO `jos_postinstall_messages` VALUES (1,700,'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION','plg_twofactorauth_totp',1,'action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_condition','3.2.0',1);
INSERT INTO `jos_postinstall_messages` VALUES (2,700,'COM_CPANEL_MSG_EACCELERATOR_TITLE','COM_CPANEL_MSG_EACCELERATOR_BODY','COM_CPANEL_MSG_EACCELERATOR_BUTTON','com_cpanel',1,'action','admin://components/com_admin/postinstall/eaccelerator.php','admin_postinstall_eaccelerator_action','admin://components/com_admin/postinstall/eaccelerator.php','admin_postinstall_eaccelerator_condition','3.2.0',1);
INSERT INTO `jos_postinstall_messages` VALUES (3,700,'COM_CPANEL_WELCOME_BEGINNERS_TITLE','COM_CPANEL_WELCOME_BEGINNERS_MESSAGE','','com_cpanel',1,'message','','','','','3.2.0',1);
INSERT INTO `jos_postinstall_messages` VALUES (4,700,'COM_CPANEL_MSG_PHPVERSION_TITLE','COM_CPANEL_MSG_PHPVERSION_BODY','','com_cpanel',1,'message','','','admin://components/com_admin/postinstall/phpversion.php','admin_postinstall_phpversion_condition','3.2.2',1);
/*!40000 ALTER TABLE `jos_postinstall_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_redirect_links`
--

DROP TABLE IF EXISTS `jos_redirect_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_redirect_links`
--

LOCK TABLES `jos_redirect_links` WRITE;
/*!40000 ALTER TABLE `jos_redirect_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_redirect_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_schemas`
--

DROP TABLE IF EXISTS `jos_schemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_schemas`
--

LOCK TABLES `jos_schemas` WRITE;
/*!40000 ALTER TABLE `jos_schemas` DISABLE KEYS */;
INSERT INTO `jos_schemas` VALUES (10047,'0.0.1');
/*!40000 ALTER TABLE `jos_schemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_session`
--

DROP TABLE IF EXISTS `jos_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_session`
--

LOCK TABLES `jos_session` WRITE;
/*!40000 ALTER TABLE `jos_session` DISABLE KEYS */;
INSERT INTO `jos_session` VALUES ('0vfn0bimrrba1v47jtlkqg1hj3',0,1,'1410503716','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410503716;s:18:\"session.timer.last\";i:1410503716;s:17:\"session.timer.now\";i:1410503716;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":1:{s:4:\"dump\";O:8:\"stdClass\":1:{s:5:\"nodes\";a:8:{i:0;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:1;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:2;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:3;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:4;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:5;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:6;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:7;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"994dda411d0fb4fac2594d15911306ee\";}',0,'');
INSERT INTO `jos_session` VALUES ('12gjns3f879ues8pn6g9q1kbh7',0,1,'1410503716','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410503716;s:18:\"session.timer.last\";i:1410503716;s:17:\"session.timer.now\";i:1410503716;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":1:{s:4:\"dump\";O:8:\"stdClass\":1:{s:5:\"nodes\";a:8:{i:0;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:1;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:2;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:3;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:4;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:5;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:6;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:7;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"add8bd19c761f2ab189c08a867cd1ab0\";}',0,'');
INSERT INTO `jos_session` VALUES ('14c1k6hbkd91v4lq83e6di62h6',0,1,'1410509203','__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410509203;s:18:\"session.timer.last\";i:1410509203;s:17:\"session.timer.now\";i:1410509203;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'');
INSERT INTO `jos_session` VALUES ('1fg4vvurlu1n3s1mivp77udtm5',0,1,'1410503715','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410503715;s:18:\"session.timer.last\";i:1410503715;s:17:\"session.timer.now\";i:1410503715;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":1:{s:4:\"dump\";O:8:\"stdClass\":1:{s:5:\"nodes\";a:8:{i:0;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:1;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:2;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:3;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:4;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:5;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:6;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:7;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"dd3bc3a195e819e56d733cc5b2690ff9\";}',0,'');
INSERT INTO `jos_session` VALUES ('1nj065i4sds6r7be063hhdc7f7',0,1,'1410509200','__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410509200;s:18:\"session.timer.last\";i:1410509200;s:17:\"session.timer.now\";i:1410509200;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'');
INSERT INTO `jos_session` VALUES ('1tic2hg8sj7n5l3fsck3282ju6',0,1,'1410503721','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410503721;s:18:\"session.timer.last\";i:1410503721;s:17:\"session.timer.now\";i:1410503721;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":1:{s:4:\"dump\";O:8:\"stdClass\":1:{s:5:\"nodes\";a:8:{i:0;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:1;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:2;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:3;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:4;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:5;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:6;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:7;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"eb3080db8e2837d935c889a684c97025\";}',0,'');
INSERT INTO `jos_session` VALUES ('29gdgt5g9vin0so8f866257441',0,1,'1410509200','__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410509199;s:18:\"session.timer.last\";i:1410509199;s:17:\"session.timer.now\";i:1410509199;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'');
INSERT INTO `jos_session` VALUES ('2fo000a3vkcmk62m9alhudknb4',0,1,'1410503716','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410503716;s:18:\"session.timer.last\";i:1410503716;s:17:\"session.timer.now\";i:1410503716;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":1:{s:4:\"dump\";O:8:\"stdClass\":1:{s:5:\"nodes\";a:8:{i:0;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:1;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:2;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:3;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:4;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:5;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:6;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:7;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"9d70f607b9021372aab0abc2349ded1c\";}',0,'');
INSERT INTO `jos_session` VALUES ('2ln09ghokia3knajo4si9pii33',0,1,'1410503719','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410503719;s:18:\"session.timer.last\";i:1410503719;s:17:\"session.timer.now\";i:1410503719;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":1:{s:4:\"dump\";O:8:\"stdClass\":1:{s:5:\"nodes\";a:8:{i:0;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:1;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:2;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:3;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:4;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:5;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:6;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:7;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"e0dc1d4dea2eed2f69d337d162b39255\";}',0,'');
INSERT INTO `jos_session` VALUES ('3dn12mf6eqov64mj2giesdti45',0,1,'1410509203','__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410509203;s:18:\"session.timer.last\";i:1410509203;s:17:\"session.timer.now\";i:1410509203;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'');
INSERT INTO `jos_session` VALUES ('3spi84r7kflbskrgh39m7b3op0',0,1,'1410503713','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410503712;s:18:\"session.timer.last\";i:1410503712;s:17:\"session.timer.now\";i:1410503712;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":1:{s:4:\"dump\";O:8:\"stdClass\":1:{s:5:\"nodes\";a:8:{i:0;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:1;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:2;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:3;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:4;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:5;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:6;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:7;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"4eb5444f6dba58672291b7afcd02225b\";}',0,'');
INSERT INTO `jos_session` VALUES ('49j56v842uhmf7ulqdq3gldbh0',0,1,'1410509201','__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410509201;s:18:\"session.timer.last\";i:1410509201;s:17:\"session.timer.now\";i:1410509201;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'');
INSERT INTO `jos_session` VALUES ('4cjj68dpiinbu2n7vq0j30ojr0',0,1,'1410508881','__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410508881;s:18:\"session.timer.last\";i:1410508881;s:17:\"session.timer.now\";i:1410508881;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'');
INSERT INTO `jos_session` VALUES ('4pulnjji1c9n6u21o6jkralob0',0,1,'1410503718','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410503718;s:18:\"session.timer.last\";i:1410503718;s:17:\"session.timer.now\";i:1410503718;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":1:{s:4:\"dump\";O:8:\"stdClass\":1:{s:5:\"nodes\";a:8:{i:0;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:1;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:2;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:3;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:4;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:5;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:6;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:7;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"2bbe2f4e124cecf2bddf8f5f06db558b\";}',0,'');
INSERT INTO `jos_session` VALUES ('4vb9fo4v9a7ulq9cnirlbp1jf0',0,1,'1410503718','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410503718;s:18:\"session.timer.last\";i:1410503718;s:17:\"session.timer.now\";i:1410503718;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":1:{s:4:\"dump\";O:8:\"stdClass\":1:{s:5:\"nodes\";a:8:{i:0;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:1;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:2;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:3;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:4;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:5;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:6;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:7;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"37b28df5af1fbc0f094582d78fdbbb30\";}',0,'');
INSERT INTO `jos_session` VALUES ('5ehatbh7alo5jiktanarugjc62',0,1,'1410503698','__default|a:8:{s:15:\"session.counter\";i:2;s:19:\"session.timer.start\";i:1410503688;s:18:\"session.timer.last\";i:1410503688;s:17:\"session.timer.now\";i:1410503698;s:22:\"session.client.browser\";s:109:\"Mozilla/5.0 (Windows NT 6.2; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.120 Safari/537.36\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":1:{s:4:\"dump\";O:8:\"stdClass\":1:{s:5:\"nodes\";a:0:{}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"17a5260b7b7bb71eb8d7dcdb7d52afd0\";}',0,'');
INSERT INTO `jos_session` VALUES ('5m8l169bc8j2f4k67bd29fiu54',0,1,'1410509199','__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410509199;s:18:\"session.timer.last\";i:1410509199;s:17:\"session.timer.now\";i:1410509199;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'');
INSERT INTO `jos_session` VALUES ('5n192q7dgch42jcchadd21dlp3',0,1,'1410509201','__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410509201;s:18:\"session.timer.last\";i:1410509201;s:17:\"session.timer.now\";i:1410509201;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'');
INSERT INTO `jos_session` VALUES ('65m640r402efk86380vb1u09b6',0,1,'1410503709','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410503708;s:18:\"session.timer.last\";i:1410503708;s:17:\"session.timer.now\";i:1410503708;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":1:{s:4:\"dump\";O:8:\"stdClass\":1:{s:5:\"nodes\";a:8:{i:0;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:1;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:2;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:3;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:4;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:5;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:6;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:7;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"9f76950b0a2c4663ab34271ae71e1be0\";}',0,'');
INSERT INTO `jos_session` VALUES ('6fjpk1uh1bdporent91p9241k3',0,1,'1410509203','__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410509203;s:18:\"session.timer.last\";i:1410509203;s:17:\"session.timer.now\";i:1410509203;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'');
INSERT INTO `jos_session` VALUES ('6j2ifh9921h2mrtlmm6pktq1n3',0,1,'1410509199','__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410509199;s:18:\"session.timer.last\";i:1410509199;s:17:\"session.timer.now\";i:1410509199;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'');
INSERT INTO `jos_session` VALUES ('6jlptf1ahn9p2ed0l0tdhbtlv7',0,1,'1410503718','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410503718;s:18:\"session.timer.last\";i:1410503718;s:17:\"session.timer.now\";i:1410503718;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":1:{s:4:\"dump\";O:8:\"stdClass\":1:{s:5:\"nodes\";a:8:{i:0;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:1;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:2;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:3;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:4;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:5;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:6;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:7;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"2c175dbd7acf9f6fdc5bd41add85cc49\";}',0,'');
INSERT INTO `jos_session` VALUES ('6trq78t5rpo31e90u86944rfm3',0,1,'1410509199','__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410509199;s:18:\"session.timer.last\";i:1410509199;s:17:\"session.timer.now\";i:1410509199;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'');
INSERT INTO `jos_session` VALUES ('6uc1c2a7ofv10375hq738l0sn2',0,1,'1410503717','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410503717;s:18:\"session.timer.last\";i:1410503717;s:17:\"session.timer.now\";i:1410503717;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":1:{s:4:\"dump\";O:8:\"stdClass\":1:{s:5:\"nodes\";a:8:{i:0;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:1;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:2;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:3;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:4;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:5;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:6;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:7;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"677e7b3309cc61ea7c295a872c2a1dd0\";}',0,'');
INSERT INTO `jos_session` VALUES ('6ue9ol0j1shfi6mi7v6t55fcr0',0,1,'1410503721','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410503721;s:18:\"session.timer.last\";i:1410503721;s:17:\"session.timer.now\";i:1410503721;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":1:{s:4:\"dump\";O:8:\"stdClass\":1:{s:5:\"nodes\";a:8:{i:0;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:1;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:2;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:3;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:4;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:5;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:6;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:7;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"dc7265f3b4b9e8b3e8125b2100a9fde4\";}',0,'');
INSERT INTO `jos_session` VALUES ('71ql5cacgtck2gctpso17uv9r3',0,1,'1410503715','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410503715;s:18:\"session.timer.last\";i:1410503715;s:17:\"session.timer.now\";i:1410503715;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":1:{s:4:\"dump\";O:8:\"stdClass\":1:{s:5:\"nodes\";a:8:{i:0;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:1;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:2;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:3;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:4;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:5;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:6;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:7;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"be042d8a98a44a6aa6f55db56418f058\";}',0,'');
INSERT INTO `jos_session` VALUES ('7na0uria08cmt92qbr1ok78b52',0,1,'1410503716','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410503716;s:18:\"session.timer.last\";i:1410503716;s:17:\"session.timer.now\";i:1410503716;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":1:{s:4:\"dump\";O:8:\"stdClass\":1:{s:5:\"nodes\";a:8:{i:0;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:1;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:2;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:3;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:4;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:5;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:6;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:7;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"be958f9b7aa5ee2ba36db4b215f0ac98\";}',0,'');
INSERT INTO `jos_session` VALUES ('91g3v3t74a4nc5um5b6gk15m30',0,1,'1410503717','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410503717;s:18:\"session.timer.last\";i:1410503717;s:17:\"session.timer.now\";i:1410503717;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":1:{s:4:\"dump\";O:8:\"stdClass\":1:{s:5:\"nodes\";a:8:{i:0;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:1;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:2;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:3;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:4;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:5;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:6;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:7;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"d76870952bf31c618ba102703edfa383\";}',0,'');
INSERT INTO `jos_session` VALUES ('95lqqv2s3ii396jok84a7oo3q2',0,1,'1410509198','__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410509198;s:18:\"session.timer.last\";i:1410509198;s:17:\"session.timer.now\";i:1410509198;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'');
INSERT INTO `jos_session` VALUES ('9jegafon4dd6bmmvbhv1nad566',0,1,'1410503714','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410503714;s:18:\"session.timer.last\";i:1410503714;s:17:\"session.timer.now\";i:1410503714;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":1:{s:4:\"dump\";O:8:\"stdClass\":1:{s:5:\"nodes\";a:8:{i:0;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:1;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:2;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:3;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:4;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:5;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:6;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:7;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"a852f42402477e8cc21124beea5f3127\";}',0,'');
INSERT INTO `jos_session` VALUES ('9qovevi0eiuglcfacu5if5i4j0',0,1,'1410503721','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410503721;s:18:\"session.timer.last\";i:1410503721;s:17:\"session.timer.now\";i:1410503721;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":1:{s:4:\"dump\";O:8:\"stdClass\":1:{s:5:\"nodes\";a:8:{i:0;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:1;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:2;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:3;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:4;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:5;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:6;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:7;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"a706ffeff9dc38a338fa7a2c44995a88\";}',0,'');
INSERT INTO `jos_session` VALUES ('a1q68g4lskdmglulfp7s23p3r1',0,1,'1410503714','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410503714;s:18:\"session.timer.last\";i:1410503714;s:17:\"session.timer.now\";i:1410503714;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":1:{s:4:\"dump\";O:8:\"stdClass\":1:{s:5:\"nodes\";a:8:{i:0;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:1;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:2;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:3;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:4;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:5;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:6;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:7;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"6bba98486bbe552141681759f745d07f\";}',0,'');
INSERT INTO `jos_session` VALUES ('adsgkup4pjlak3m60jhr4ksav5',0,1,'1410509202','__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410509202;s:18:\"session.timer.last\";i:1410509202;s:17:\"session.timer.now\";i:1410509202;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'');
INSERT INTO `jos_session` VALUES ('bo49qtdjrqnqprr7oaq58bal40',0,1,'1410509204','__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410509204;s:18:\"session.timer.last\";i:1410509204;s:17:\"session.timer.now\";i:1410509204;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'');
INSERT INTO `jos_session` VALUES ('bqde430p61r63cn39qphq2bap7',0,1,'1410503717','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410503716;s:18:\"session.timer.last\";i:1410503716;s:17:\"session.timer.now\";i:1410503716;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":1:{s:4:\"dump\";O:8:\"stdClass\":1:{s:5:\"nodes\";a:8:{i:0;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:1;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:2;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:3;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:4;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:5;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:6;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:7;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"40b370fa4303aa3ae032eaff10619a30\";}',0,'');
INSERT INTO `jos_session` VALUES ('c576h4qppfreg44q7oc0k8of16',0,1,'1410509202','__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410509202;s:18:\"session.timer.last\";i:1410509202;s:17:\"session.timer.now\";i:1410509202;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'');
INSERT INTO `jos_session` VALUES ('cjimpo1nevsmidclgn69digu07',0,1,'1410503720','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410503720;s:18:\"session.timer.last\";i:1410503720;s:17:\"session.timer.now\";i:1410503720;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":1:{s:4:\"dump\";O:8:\"stdClass\":1:{s:5:\"nodes\";a:8:{i:0;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:1;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:2;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:3;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:4;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:5;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:6;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:7;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"b636a9ae5ab04a8c7452316f859004dd\";}',0,'');
INSERT INTO `jos_session` VALUES ('cn2a7nvt2j3q3qo0q0bhf7rde6',0,1,'1410503714','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410503713;s:18:\"session.timer.last\";i:1410503713;s:17:\"session.timer.now\";i:1410503713;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":1:{s:4:\"dump\";O:8:\"stdClass\":1:{s:5:\"nodes\";a:8:{i:0;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:1;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:2;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:3;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:4;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:5;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:6;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:7;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"c35607cc9e7e1a818dc3127b8b40969a\";}',0,'');
INSERT INTO `jos_session` VALUES ('cn39pg5q54r9ijhav3vv2h4ta7',0,1,'1410503720','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410503720;s:18:\"session.timer.last\";i:1410503720;s:17:\"session.timer.now\";i:1410503720;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":1:{s:4:\"dump\";O:8:\"stdClass\":1:{s:5:\"nodes\";a:8:{i:0;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:1;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:2;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:3;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:4;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:5;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:6;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:7;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"817be5e2891c52eb1e63a52452996f23\";}',0,'');
INSERT INTO `jos_session` VALUES ('cnddjflf3f3vgv4bba279e13q2',0,1,'1410503713','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410503713;s:18:\"session.timer.last\";i:1410503713;s:17:\"session.timer.now\";i:1410503713;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":1:{s:4:\"dump\";O:8:\"stdClass\":1:{s:5:\"nodes\";a:8:{i:0;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:1;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:2;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:3;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:4;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:5;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:6;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:7;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"52201e17a326364ba73c36cedb4eba3a\";}',0,'');
INSERT INTO `jos_session` VALUES ('cnpilkbiv4i99hkatg6ubnvj22',0,1,'1410503720','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410503720;s:18:\"session.timer.last\";i:1410503720;s:17:\"session.timer.now\";i:1410503720;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":1:{s:4:\"dump\";O:8:\"stdClass\":1:{s:5:\"nodes\";a:8:{i:0;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:1;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:2;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:3;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:4;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:5;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:6;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:7;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"c5c2ef0646f9206f08cf5eaf10cfeedc\";}',0,'');
INSERT INTO `jos_session` VALUES ('crpoe74ukamrvuhu04777lovq6',0,1,'1410503716','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410503716;s:18:\"session.timer.last\";i:1410503716;s:17:\"session.timer.now\";i:1410503716;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":1:{s:4:\"dump\";O:8:\"stdClass\":1:{s:5:\"nodes\";a:8:{i:0;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:1;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:2;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:3;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:4;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:5;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:6;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:7;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"92b1ad07afab16a440b2e782f6ca9cc7\";}',0,'');
INSERT INTO `jos_session` VALUES ('d1ma92te6l3rbjigb6l9i1bv91',0,1,'1410509205','__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410509205;s:18:\"session.timer.last\";i:1410509205;s:17:\"session.timer.now\";i:1410509205;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'');
INSERT INTO `jos_session` VALUES ('d2kop843kclvj4v233nudvthr4',0,1,'1410509198','__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410509198;s:18:\"session.timer.last\";i:1410509198;s:17:\"session.timer.now\";i:1410509198;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'');
INSERT INTO `jos_session` VALUES ('ecbdpc5bm44kv3shs1qorp2ht1',0,1,'1410509201','__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410509201;s:18:\"session.timer.last\";i:1410509201;s:17:\"session.timer.now\";i:1410509201;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'');
INSERT INTO `jos_session` VALUES ('emiefrqmqvgji8oktnjupabmt5',0,1,'1410503722','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410503722;s:18:\"session.timer.last\";i:1410503722;s:17:\"session.timer.now\";i:1410503722;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":1:{s:4:\"dump\";O:8:\"stdClass\":1:{s:5:\"nodes\";a:8:{i:0;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:1;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:2;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:3;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:4;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:5;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:6;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:7;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"d921c483753cb44b69a7c21371474300\";}',0,'');
INSERT INTO `jos_session` VALUES ('en6s7tk854uk1cvjteevi8srn3',0,1,'1410509198','__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410509197;s:18:\"session.timer.last\";i:1410509197;s:17:\"session.timer.now\";i:1410509197;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'');
INSERT INTO `jos_session` VALUES ('f6i7vnertmobfphaeb9atbple2',0,1,'1410503718','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410503718;s:18:\"session.timer.last\";i:1410503718;s:17:\"session.timer.now\";i:1410503718;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":1:{s:4:\"dump\";O:8:\"stdClass\":1:{s:5:\"nodes\";a:8:{i:0;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:1;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:2;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:3;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:4;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:5;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:6;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:7;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"fc22054b24997f0d02aac85594afb3c0\";}',0,'');
INSERT INTO `jos_session` VALUES ('fiqbkgfnb3uj7c0je59hr85m66',0,1,'1410509198','__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410509198;s:18:\"session.timer.last\";i:1410509198;s:17:\"session.timer.now\";i:1410509198;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'');
INSERT INTO `jos_session` VALUES ('fvg3a7i4bohik3f2j23t8ftm04',0,1,'1410509200','__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410509200;s:18:\"session.timer.last\";i:1410509200;s:17:\"session.timer.now\";i:1410509200;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'');
INSERT INTO `jos_session` VALUES ('gfb730k0qf0bd0mark0o1iaq00',0,1,'1410503716','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410503716;s:18:\"session.timer.last\";i:1410503716;s:17:\"session.timer.now\";i:1410503716;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":1:{s:4:\"dump\";O:8:\"stdClass\":1:{s:5:\"nodes\";a:8:{i:0;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:1;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:2;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:3;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:4;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:5;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:6;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:7;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"10cf33e069b30a644168b103b8a21e7a\";}',0,'');
INSERT INTO `jos_session` VALUES ('gke9ub6kskqd1er4md2j8j23a4',0,1,'1410509202','__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410509201;s:18:\"session.timer.last\";i:1410509201;s:17:\"session.timer.now\";i:1410509201;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'');
INSERT INTO `jos_session` VALUES ('gprknb9b699odqecrfu0i428s4',0,1,'1410509204','__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410509203;s:18:\"session.timer.last\";i:1410509203;s:17:\"session.timer.now\";i:1410509203;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'');
INSERT INTO `jos_session` VALUES ('gta63ndtuqj31p15j7n75cjo21',0,1,'1410503717','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410503717;s:18:\"session.timer.last\";i:1410503717;s:17:\"session.timer.now\";i:1410503717;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":1:{s:4:\"dump\";O:8:\"stdClass\":1:{s:5:\"nodes\";a:8:{i:0;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:1;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:2;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:3;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:4;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:5;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:6;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:7;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"41b6503578cb897b92d56de0f8346d59\";}',0,'');
INSERT INTO `jos_session` VALUES ('hjdem0qhkrbqu03uqb0btajon1',0,1,'1410509533','__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410509533;s:18:\"session.timer.last\";i:1410509533;s:17:\"session.timer.now\";i:1410509533;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'');
INSERT INTO `jos_session` VALUES ('hmka38877de703q0mkemtsa175',0,1,'1410509205','__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410509205;s:18:\"session.timer.last\";i:1410509205;s:17:\"session.timer.now\";i:1410509205;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'');
INSERT INTO `jos_session` VALUES ('i42bhdb22oj2sru9ie21iamf53',0,1,'1410509203','__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410509203;s:18:\"session.timer.last\";i:1410509203;s:17:\"session.timer.now\";i:1410509203;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'');
INSERT INTO `jos_session` VALUES ('ibtpo6esg68dlvbhl9befvn4j5',0,1,'1410509205','__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410509205;s:18:\"session.timer.last\";i:1410509205;s:17:\"session.timer.now\";i:1410509205;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'');
INSERT INTO `jos_session` VALUES ('ilh0uqq7rndqbfaum59pffpdj3',0,1,'1410509202','__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410509202;s:18:\"session.timer.last\";i:1410509202;s:17:\"session.timer.now\";i:1410509202;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'');
INSERT INTO `jos_session` VALUES ('j3b7dp6m51sb777os7aqvpcal1',0,1,'1410509203','__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410509203;s:18:\"session.timer.last\";i:1410509203;s:17:\"session.timer.now\";i:1410509203;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'');
INSERT INTO `jos_session` VALUES ('juje93idrb9dgndpjv4b80r3l5',0,1,'1410503712','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410503712;s:18:\"session.timer.last\";i:1410503712;s:17:\"session.timer.now\";i:1410503712;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":1:{s:4:\"dump\";O:8:\"stdClass\":1:{s:5:\"nodes\";a:8:{i:0;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:1;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:2;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:3;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:4;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:5;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:6;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:7;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"354013dbb5bc6564f13ce5d78bef07df\";}',0,'');
INSERT INTO `jos_session` VALUES ('ksdr6dunfnir5og4tcecj8f3s2',0,1,'1410509204','__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410509204;s:18:\"session.timer.last\";i:1410509204;s:17:\"session.timer.now\";i:1410509204;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'');
INSERT INTO `jos_session` VALUES ('lmcb8en3kvvti2m3qhaca3m4o2',0,1,'1410509205','__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410509204;s:18:\"session.timer.last\";i:1410509204;s:17:\"session.timer.now\";i:1410509204;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'');
INSERT INTO `jos_session` VALUES ('lrpr9q6bh91miaulap72vlgpb4',0,1,'1410509199','__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410509198;s:18:\"session.timer.last\";i:1410509198;s:17:\"session.timer.now\";i:1410509198;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'');
INSERT INTO `jos_session` VALUES ('m2896v3c8ds9185fihjhrk0lq0',0,1,'1410509202','__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410509202;s:18:\"session.timer.last\";i:1410509202;s:17:\"session.timer.now\";i:1410509202;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'');
INSERT INTO `jos_session` VALUES ('mdhsd6rr3c1qtetth2h4uqtlo2',0,1,'1410509205','__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410509205;s:18:\"session.timer.last\";i:1410509205;s:17:\"session.timer.now\";i:1410509205;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'');
INSERT INTO `jos_session` VALUES ('mi22j94qdt7e7bj756dmd5lgi3',0,1,'1410503712','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410503711;s:18:\"session.timer.last\";i:1410503711;s:17:\"session.timer.now\";i:1410503711;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":1:{s:4:\"dump\";O:8:\"stdClass\":1:{s:5:\"nodes\";a:8:{i:0;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:1;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:2;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:3;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:4;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:5;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:6;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:7;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"23bd5ced26bb2340740a7a0f7b4c34b2\";}',0,'');
INSERT INTO `jos_session` VALUES ('n5ne769krco52levgcpvnbque6',0,1,'1410509204','__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410509204;s:18:\"session.timer.last\";i:1410509204;s:17:\"session.timer.now\";i:1410509204;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'');
INSERT INTO `jos_session` VALUES ('nfddn6s5o3a5cme1etf1a8q0u4',0,1,'1410503717','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410503717;s:18:\"session.timer.last\";i:1410503717;s:17:\"session.timer.now\";i:1410503717;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":1:{s:4:\"dump\";O:8:\"stdClass\":1:{s:5:\"nodes\";a:8:{i:0;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:1;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:2;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:3;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:4;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:5;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:6;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:7;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"567dfda7adfd18b887cf7aaf0e620105\";}',0,'');
INSERT INTO `jos_session` VALUES ('nqk11kjvme0drdbsq4r0fa7803',0,1,'1410503714','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410503714;s:18:\"session.timer.last\";i:1410503714;s:17:\"session.timer.now\";i:1410503714;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":1:{s:4:\"dump\";O:8:\"stdClass\":1:{s:5:\"nodes\";a:8:{i:0;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:1;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:2;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:3;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:4;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:5;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:6;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:7;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"e87302066bbc632c08e4e9cdcddd5b4d\";}',0,'');
INSERT INTO `jos_session` VALUES ('nsjqe8fr45504ujbo9n3429oe4',0,1,'1410509200','__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410509200;s:18:\"session.timer.last\";i:1410509200;s:17:\"session.timer.now\";i:1410509200;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'');
INSERT INTO `jos_session` VALUES ('o2n2ppg7eknnjj121pvgsps7n2',0,1,'1410509199','__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410509199;s:18:\"session.timer.last\";i:1410509199;s:17:\"session.timer.now\";i:1410509199;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'');
INSERT INTO `jos_session` VALUES ('oo4jkrjpi7l3e5tualpt0v0gl3',0,1,'1410503719','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410503719;s:18:\"session.timer.last\";i:1410503719;s:17:\"session.timer.now\";i:1410503719;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":1:{s:4:\"dump\";O:8:\"stdClass\":1:{s:5:\"nodes\";a:8:{i:0;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:1;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:2;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:3;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:4;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:5;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:6;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:7;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"34589173837288d3ae2ed40f9b9fef55\";}',0,'');
INSERT INTO `jos_session` VALUES ('oq7f314ipmbj6l01lmf1ds5bn5',0,1,'1410503719','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410503719;s:18:\"session.timer.last\";i:1410503719;s:17:\"session.timer.now\";i:1410503719;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":1:{s:4:\"dump\";O:8:\"stdClass\":1:{s:5:\"nodes\";a:8:{i:0;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:1;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:2;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:3;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:4;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:5;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:6;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:7;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"943ce5a2f9758c61795f456a0cfacf9b\";}',0,'');
INSERT INTO `jos_session` VALUES ('pcjlipgjmbcl19q1q4jehkg7s2',0,1,'1410509682','__default|a:7:{s:15:\"session.counter\";i:30;s:19:\"session.timer.start\";i:1410508051;s:18:\"session.timer.last\";i:1410509679;s:17:\"session.timer.now\";i:1410509682;s:22:\"session.client.browser\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.120 Safari/537.36\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":1:{s:4:\"dump\";O:8:\"stdClass\":1:{s:5:\"nodes\";a:0:{}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'');
INSERT INTO `jos_session` VALUES ('pmssc305j6nsv68rmstutc7pg0',0,1,'1410503719','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410503719;s:18:\"session.timer.last\";i:1410503719;s:17:\"session.timer.now\";i:1410503719;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":1:{s:4:\"dump\";O:8:\"stdClass\":1:{s:5:\"nodes\";a:8:{i:0;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:1;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:2;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:3;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:4;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:5;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:6;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:7;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"fb70b3f102de526f25bf440d95b41ba8\";}',0,'');
INSERT INTO `jos_session` VALUES ('po9uvtl8nelmkc652h8g5qul86',0,1,'1410509201','__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410509201;s:18:\"session.timer.last\";i:1410509201;s:17:\"session.timer.now\";i:1410509201;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'');
INSERT INTO `jos_session` VALUES ('q48f4sgh74tmuaqgdr2cjm6nm4',0,1,'1410503715','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410503715;s:18:\"session.timer.last\";i:1410503715;s:17:\"session.timer.now\";i:1410503715;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":1:{s:4:\"dump\";O:8:\"stdClass\":1:{s:5:\"nodes\";a:8:{i:0;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:1;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:2;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:3;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:4;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:5;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:6;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:7;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"d81059dd1d8d1314df964d11db0c800d\";}',0,'');
INSERT INTO `jos_session` VALUES ('qjkm64v81r301belvd14qo6dp7',0,1,'1410503717','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410503717;s:18:\"session.timer.last\";i:1410503717;s:17:\"session.timer.now\";i:1410503717;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":1:{s:4:\"dump\";O:8:\"stdClass\":1:{s:5:\"nodes\";a:8:{i:0;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:1;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:2;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:3;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:4;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:5;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:6;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:7;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"409ac7e0b3d0be50395614d41b21dded\";}',0,'');
INSERT INTO `jos_session` VALUES ('qlqbepr58q38h5jh37aa2h5581',0,1,'1410509205','__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410509205;s:18:\"session.timer.last\";i:1410509205;s:17:\"session.timer.now\";i:1410509205;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'');
INSERT INTO `jos_session` VALUES ('r3cb2tl6frukkrlse2sh1sq6t5',0,1,'1410509202','__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410509202;s:18:\"session.timer.last\";i:1410509202;s:17:\"session.timer.now\";i:1410509202;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'');
INSERT INTO `jos_session` VALUES ('rsholikmjmouj8ksf0q174u3o2',0,1,'1410503718','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410503718;s:18:\"session.timer.last\";i:1410503718;s:17:\"session.timer.now\";i:1410503718;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":1:{s:4:\"dump\";O:8:\"stdClass\":1:{s:5:\"nodes\";a:8:{i:0;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:1;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:2;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:3;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:4;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:5;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:6;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:7;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"875aad8afbee74b77ae8341d99ab4758\";}',0,'');
INSERT INTO `jos_session` VALUES ('sfus92sj69c83guq0h7ml7jpe6',0,1,'1410509198','__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410509198;s:18:\"session.timer.last\";i:1410509198;s:17:\"session.timer.now\";i:1410509198;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'');
INSERT INTO `jos_session` VALUES ('sukmlnmusgeuqftl8umi8kfv76',0,1,'1410503719','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410503719;s:18:\"session.timer.last\";i:1410503719;s:17:\"session.timer.now\";i:1410503719;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":1:{s:4:\"dump\";O:8:\"stdClass\":1:{s:5:\"nodes\";a:8:{i:0;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:1;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:2;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:3;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:4;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:5;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:6;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:7;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"09ed067ac4e59ebf3a3434d962c31d8a\";}',0,'');
INSERT INTO `jos_session` VALUES ('t34mj6olpblul3mhdghrgo64h2',0,1,'1410509200','__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410509200;s:18:\"session.timer.last\";i:1410509200;s:17:\"session.timer.now\";i:1410509200;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'');
INSERT INTO `jos_session` VALUES ('u26ej76qvl5v16jndfl5pnvp57',1,0,'1410509666','__default|a:8:{s:15:\"session.counter\";i:51;s:19:\"session.timer.start\";i:1410507691;s:18:\"session.timer.last\";i:1410509665;s:17:\"session.timer.now\";i:1410509665;s:22:\"session.client.browser\";s:109:\"Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/37.0.2062.120 Safari/537.36\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":6:{s:11:\"application\";O:8:\"stdClass\":1:{s:4:\"lang\";s:0:\"\";}s:13:\"com_installer\";O:8:\"stdClass\":3:{s:7:\"message\";s:0:\"\";s:17:\"extension_message\";s:0:\"\";s:12:\"redirect_url\";N;}s:11:\"com_plugins\";O:8:\"stdClass\":1:{s:7:\"plugins\";O:8:\"stdClass\":4:{s:6:\"filter\";O:8:\"stdClass\":4:{s:6:\"search\";s:4:\"dump\";s:6:\"access\";i:0;s:7:\"enabled\";s:0:\"\";s:6:\"folder\";s:0:\"\";}s:8:\"ordercol\";s:6:\"folder\";s:9:\"orderdirn\";s:3:\"asc\";s:10:\"limitstart\";i:0;}}s:6:\"global\";O:8:\"stdClass\":1:{s:4:\"list\";O:8:\"stdClass\":1:{s:5:\"limit\";i:20;}}s:4:\"dump\";O:8:\"stdClass\":1:{s:5:\"nodes\";a:0:{}}s:9:\"com_menus\";O:8:\"stdClass\":1:{s:4:\"edit\";O:8:\"stdClass\":2:{s:4:\"menu\";O:8:\"stdClass\":1:{s:4:\"data\";N;}s:4:\"item\";O:8:\"stdClass\":4:{s:4:\"data\";N;s:4:\"type\";N;s:4:\"link\";N;s:2:\"id\";a:0:{}}}}}}s:4:\"user\";O:5:\"JUser\":27:{s:9:\"\\0\\0\\0isRoot\";b:1;s:2:\"id\";s:2:\"42\";s:4:\"name\";s:9:\"User Name\";s:8:\"username\";s:4:\"user\";s:5:\"email\";s:16:\"user@example.com\";s:8:\"password\";s:60:\"$2y$10$z0m5G5kAdyzbzIXw9dAGQOBskSOIJaaMsUIvkLjJr4froItJmEl/.\";s:14:\"password_clear\";s:0:\"\";s:5:\"block\";s:1:\"0\";s:9:\"sendEmail\";s:1:\"1\";s:12:\"registerDate\";s:19:\"2014-09-09 14:46:19\";s:13:\"lastvisitDate\";s:19:\"2014-09-12 07:14:36\";s:10:\"activation\";s:0:\"\";s:6:\"params\";s:2:\"{}\";s:6:\"groups\";a:1:{i:8;s:1:\"8\";}s:5:\"guest\";i:0;s:13:\"lastResetTime\";s:19:\"0000-00-00 00:00:00\";s:10:\"resetCount\";s:1:\"0\";s:12:\"requireReset\";s:1:\"0\";s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:8;}s:14:\"\\0\\0\\0_authLevels\";a:5:{i:0;i:1;i:1;i:1;i:2;i:2;i:3;i:3;i:4;i:6;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;s:6:\"otpKey\";s:0:\"\";s:4:\"otep\";s:0:\"\";}s:13:\"session.token\";s:32:\"f53839a03a93d44e9e5f50bbb8cb0d85\";}__wf|a:1:{s:13:\"session.token\";s:32:\"b90de30ba3a270b2cbe4e1e6675c8cae\";}',42,'user');
INSERT INTO `jos_session` VALUES ('u6gj6o9ur5jd7o9cpfursjprf7',0,1,'1410509206','__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410509206;s:18:\"session.timer.last\";i:1410509206;s:17:\"session.timer.now\";i:1410509206;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'');
INSERT INTO `jos_session` VALUES ('u8iigkrrq0j4pjb93hqo8305j7',0,1,'1410503718','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410503718;s:18:\"session.timer.last\";i:1410503718;s:17:\"session.timer.now\";i:1410503718;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":1:{s:4:\"dump\";O:8:\"stdClass\":1:{s:5:\"nodes\";a:8:{i:0;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:1;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:2;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:3;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:4;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:5;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:6;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:7;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"a7981877d3a7c53c852eb4c306da1e98\";}',0,'');
INSERT INTO `jos_session` VALUES ('uhqq8q9nnsvl6q0pl4igm26ut3',0,1,'1410503707','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410503703;s:18:\"session.timer.last\";i:1410503703;s:17:\"session.timer.now\";i:1410503703;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":1:{s:4:\"dump\";O:8:\"stdClass\":1:{s:5:\"nodes\";a:8:{i:0;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:1;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:2;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:3;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:4;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:5;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:6;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:7;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"84a4b5bfdecd9eb9c1fd67a82da6cf7c\";}',0,'');
INSERT INTO `jos_session` VALUES ('v0pjgcupmeiorf42j7f7bp9su5',0,1,'1410509204','__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410509204;s:18:\"session.timer.last\";i:1410509204;s:17:\"session.timer.now\";i:1410509204;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'');
INSERT INTO `jos_session` VALUES ('va04af8dfhs19f8uvoepp5jht7',0,1,'1410509198','__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410509198;s:18:\"session.timer.last\";i:1410509198;s:17:\"session.timer.now\";i:1410509198;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'');
INSERT INTO `jos_session` VALUES ('vf7gm6tsu4pmhbu8i7mj45d3h7',0,1,'1410503704','__default|a:8:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410503700;s:18:\"session.timer.last\";i:1410503700;s:17:\"session.timer.now\";i:1410503700;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":1:{s:4:\"dump\";O:8:\"stdClass\":1:{s:5:\"nodes\";a:8:{i:0;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:1;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:2;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:3;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:4;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:5;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:6;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}i:7;a:6:{s:4:\"name\";s:14:\"(unknown name)\";s:4:\"type\";s:6:\"string\";s:8:\"children\";a:0:{}s:5:\"level\";i:0;s:6:\"source\";s:111:\"Function: Helix<br />&nbsp;::&nbsp;addCSS()<br />File: plugins/system/helix/core/helix.php<br />Line: 783<br />\";s:5:\"value\";s:57:\"/opt/bitnami/apps/joomla/htdocs/templates/shaper_helix_ii\";}}}}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"14f9d9aed8056104b282834f944ace8e\";}',0,'');
INSERT INTO `jos_session` VALUES ('vk9m79mrkotvai34l6mdji6n13',0,1,'1410509201','__default|a:7:{s:15:\"session.counter\";i:1;s:19:\"session.timer.start\";i:1410509200;s:18:\"session.timer.last\";i:1410509200;s:17:\"session.timer.now\";i:1410509200;s:22:\"session.client.browser\";s:34:\"Serf/1.1.0 mod_pagespeed/1.7.30.4-\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";b:0;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";a:2:{i:0;i:1;i:1;i:9;}s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}}',0,'');
/*!40000 ALTER TABLE `jos_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_tags`
--

DROP TABLE IF EXISTS `jos_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_tags`
--

LOCK TABLES `jos_tags` WRITE;
/*!40000 ALTER TABLE `jos_tags` DISABLE KEYS */;
INSERT INTO `jos_tags` VALUES (1,0,0,1,0,'','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'','','','',0,'2011-01-01 00:00:01','',0,'0000-00-00 00:00:00','','',0,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `jos_tags` VALUES (2,1,1,2,1,'joomla','Joomla','joomla','','',1,0,'0000-00-00 00:00:00',1,'{\"tag_layout\":\"\",\"tag_link_class\":\"label label-info\",\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',849,'2013-11-16 00:00:00','',0,'0000-00-00 00:00:00','','',0,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `jos_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_template_styles`
--

DROP TABLE IF EXISTS `jos_template_styles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_template_styles`
--

LOCK TABLES `jos_template_styles` WRITE;
/*!40000 ALTER TABLE `jos_template_styles` DISABLE KEYS */;
INSERT INTO `jos_template_styles` VALUES (4,'beez3',0,'0','Beez3 - Default','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.gif\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}');
INSERT INTO `jos_template_styles` VALUES (5,'hathor',1,'0','Hathor - Default','{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}');
INSERT INTO `jos_template_styles` VALUES (7,'protostar',0,'0','protostar - Default','{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}');
INSERT INTO `jos_template_styles` VALUES (8,'isis',1,'1','isis - Default','{\"templateColor\":\"\",\"logoFile\":\"\"}');
INSERT INTO `jos_template_styles` VALUES (9,'shaper_helix_ii',0,'1','shaper_helix_ii - Default','{\"layout_width\":\"940\",\"layout_type\":\"responsive\",\"logo_type\":\"no\",\"logo_position\":\"logo\",\"logo_type_image\":\"images\\/title.png\",\"logo_type_text\":\"Helix\",\"logo_type_slogan\":\"Joomla! Templates Framework\",\"logo_width\":\"130\",\"logo_height\":\"50\",\"footer_position\":\"footer1\",\"showcp\":\"1\",\"copyright\":\"Copyright \\u00a9  {year} Shaper Helix - II Demo. All Rights Reserved.\",\"show_helix_logo\":\"0\",\"jcredit\":\"1\",\"credit_link\":\"1\",\"credit_text\":\"Designed by {JoomShaper}\",\"validator\":\"0\",\"showtop\":\"1\",\"totop_position\":\"footer2\",\"preset\":\"preset1\",\"preset1_header\":\"#f8f8f8\",\"preset1_bg\":\"#f2f2f2\",\"preset1_text\":\"#666666\",\"preset1_link\":\"#22b8f0\",\"preset2_header\":\"#eeeeee\",\"preset2_bg\":\"#f5f5f5\",\"preset2_text\":\"#444444\",\"preset2_link\":\"#6d7f1b\",\"preset3_header\":\"#e5ddd5\",\"preset3_bg\":\"#f2f2f2\",\"preset3_text\":\"#333333\",\"preset3_link\":\"#aa824a\",\"layout\":[{\"name\":\"Header\",\"class\":\"container\",\"responsive\":\"\",\"backgroundcolor\":\"rgba(255, 255, 255, 0)\",\"textcolor\":\"rgba(255, 255, 255, 0)\",\"linkcolor\":\"rgba(255, 255, 255, 0)\",\"linkhovercolor\":\"rgba(255, 255, 255, 0)\",\"margin\":\"\",\"padding\":\"20px 0\",\"children\":[{\"span\":\"2\",\"offset\":\"\",\"type\":\"modules\",\"position\":\"logo\",\"style\":\"\",\"customclass\":\"\",\"responsiveclass\":\"\"},{\"span\":\"7\",\"offset\":\"\",\"type\":\"modules\",\"position\":\"menu\",\"style\":\"none\",\"customclass\":\"\",\"responsiveclass\":\"\"},{\"span\":\"3\",\"offset\":\"\",\"type\":\"modules\",\"position\":\"search\",\"style\":\"none\",\"customclass\":\"\",\"responsiveclass\":\"visible-desktop\"}]},{\"name\":\"title\",\"class\":\"container\",\"responsive\":\"visible-desktop\",\"backgroundcolor\":\"rgba(255, 255, 255, 0)\",\"textcolor\":\"rgba(255, 255, 255, 0)\",\"linkcolor\":\"rgba(255, 255, 255, 0)\",\"linkhovercolor\":\"rgba(255, 255, 255, 0)\",\"margin\":\"\",\"padding\":\"10px 0\",\"children\":[{\"span\":\"12\",\"offset\":\"\",\"type\":\"modules\",\"position\":\"title\",\"style\":\"none\",\"customclass\":\"\",\"responsiveclass\":\"\"}]},{\"name\":\"Feature\",\"class\":\"container\",\"responsive\":\"\",\"backgroundcolor\":\"rgba(255, 255, 255, 0)\",\"textcolor\":\"rgba(255, 255, 255, 0)\",\"linkcolor\":\"rgba(255, 255, 255, 0)\",\"linkhovercolor\":\"rgba(255, 255, 255, 0)\",\"margin\":\"\",\"padding\":\"80px 0\",\"children\":[{\"span\":\"12\",\"offset\":\"\",\"type\":\"modules\",\"position\":\"feature\",\"style\":\"none\",\"customclass\":\"\",\"responsiveclass\":\"\"}]},{\"name\":\"Users\",\"class\":\"container\",\"responsive\":\"\",\"backgroundcolor\":\"rgba(255, 255, 255, 0)\",\"textcolor\":\"rgba(255, 255, 255, 0)\",\"linkcolor\":\"rgba(255, 255, 255, 0)\",\"linkhovercolor\":\"rgba(255, 255, 255, 0)\",\"margin\":\"\",\"padding\":\"30px 0\",\"children\":[{\"span\":\"3\",\"offset\":\"\",\"type\":\"modules\",\"position\":\"user1\",\"style\":\"sp_xhtml\",\"customclass\":\"\",\"responsiveclass\":\"\"},{\"span\":\"3\",\"offset\":\"\",\"type\":\"modules\",\"position\":\"user2\",\"style\":\"sp_xhtml\",\"customclass\":\"\",\"responsiveclass\":\"\"},{\"span\":\"3\",\"offset\":\"\",\"type\":\"modules\",\"position\":\"user3\",\"style\":\"sp_xhtml\",\"customclass\":\"\",\"responsiveclass\":\"\"},{\"span\":\"3\",\"offset\":\"\",\"type\":\"modules\",\"position\":\"user4\",\"style\":\"sp_xhtml\",\"customclass\":\"\",\"responsiveclass\":\"\"}]},{\"name\":\"Main Body\",\"class\":\"container\",\"responsive\":\"\",\"backgroundcolor\":\"rgba(246, 180, 74, 0)\",\"textcolor\":\"rgba(255, 255, 255, 0)\",\"linkcolor\":\"rgba(255, 255, 255, 0)\",\"linkhovercolor\":\"rgba(255, 255, 255, 0)\",\"margin\":\"\",\"padding\":\"30px 0\",\"children\":[{\"span\":\"3\",\"offset\":\"\",\"type\":\"modules\",\"position\":\"left\",\"style\":\"xhtml\",\"customclass\":\"\",\"responsiveclass\":\"\"},{\"span\":\"6\",\"offset\":\"\",\"type\":\"component\",\"position\":\"\",\"style\":\"sp_xhtml\",\"customclass\":\"\",\"responsiveclass\":\"\"},{\"span\":\"3\",\"offset\":\"\",\"type\":\"modules\",\"position\":\"right\",\"style\":\"sp_xhtml\",\"customclass\":\"\",\"responsiveclass\":\"\"}]},{\"name\":\"Breadcrumb\",\"class\":\"container\",\"responsive\":\"\",\"backgroundcolor\":\"rgba(255, 255, 255, 0)\",\"textcolor\":\"rgba(255, 255, 255, 0)\",\"linkcolor\":\"rgba(255, 255, 255, 0)\",\"linkhovercolor\":\"rgba(255, 255, 255, 0)\",\"margin\":\"\",\"padding\":\"\",\"children\":[{\"span\":\"12\",\"offset\":\"\",\"type\":\"modules\",\"position\":\"breadcrumb\",\"style\":\"none\",\"customclass\":\"\",\"responsiveclass\":\"\"}]},{\"name\":\"Bottom\",\"class\":\"container\",\"responsive\":\"\",\"backgroundcolor\":\"rgba(255, 255, 255, 0)\",\"textcolor\":\"rgba(255, 255, 255, 0)\",\"linkcolor\":\"rgba(255, 255, 255, 0)\",\"linkhovercolor\":\"rgba(255, 255, 255, 0)\",\"margin\":\"\",\"padding\":\"40px 0\",\"children\":[{\"span\":\"3\",\"offset\":\"\",\"type\":\"modules\",\"position\":\"bottom1\",\"style\":\"sp_flat\",\"customclass\":\"\",\"responsiveclass\":\"\"},{\"span\":\"3\",\"offset\":\"\",\"type\":\"modules\",\"position\":\"bottom2\",\"style\":\"sp_flat\",\"customclass\":\"\",\"responsiveclass\":\"\"},{\"span\":\"3\",\"offset\":\"\",\"type\":\"modules\",\"position\":\"bottom3\",\"style\":\"sp_flat\",\"customclass\":\"\",\"responsiveclass\":\"\"},{\"span\":\"3\",\"offset\":\"\",\"type\":\"modules\",\"position\":\"bottom4\",\"style\":\"sp_flat\",\"customclass\":\"\",\"responsiveclass\":\"\"}]},{\"name\":\"Footer\",\"class\":\"container\",\"responsive\":\"\",\"backgroundcolor\":\"rgba(255, 255, 255, 0)\",\"textcolor\":\"rgba(255, 255, 255, 0)\",\"linkcolor\":\"rgba(255, 255, 255, 0)\",\"linkhovercolor\":\"rgba(255, 255, 255, 0)\",\"margin\":\"\",\"padding\":\"30px 0\",\"children\":[{\"span\":\"8\",\"offset\":\"\",\"type\":\"modules\",\"position\":\"footer1\",\"style\":\"none\",\"customclass\":\"\",\"responsiveclass\":\"\"},{\"span\":\"4\",\"offset\":\"\",\"type\":\"modules\",\"position\":\"footer2\",\"style\":\"none\",\"customclass\":\"\",\"responsiveclass\":\"\"}]}],\"menu\":\"mainmenu\",\"menutype\":\"drop\",\"menu_col_width\":\"200\",\"show_menu_image\":\"1\",\"menu_image_position\":\"1\",\"submenu_position\":\"0\",\"init_x\":\"0\",\"init_y\":\"0\",\"sub_x\":\"0\",\"sub_y\":\"0\",\"body_font\":\"\",\"body_selectors\":\"\",\"header_font\":\"\",\"header_selectors\":\"\",\"other_font\":\"\",\"other_selectors\":\"\",\"cache_time\":\"0\",\"compress_css\":\"0\",\"compress_js\":\"0\",\"enable_ga\":\"0\",\"ga_code\":\"\",\"loadjquery\":\"0\",\"loadfromcdn\":\"0\",\"lessoption\":\"0\",\"hide_component_area\":\"0\"}');
/*!40000 ALTER TABLE `jos_template_styles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_ucm_base`
--

DROP TABLE IF EXISTS `jos_ucm_base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_ucm_base`
--

LOCK TABLES `jos_ucm_base` WRITE;
/*!40000 ALTER TABLE `jos_ucm_base` DISABLE KEYS */;
INSERT INTO `jos_ucm_base` VALUES (1,1,1,0);
/*!40000 ALTER TABLE `jos_ucm_base` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_ucm_content`
--

DROP TABLE IF EXISTS `jos_ucm_content`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the jos_assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_ucm_content`
--

LOCK TABLES `jos_ucm_content` WRITE;
/*!40000 ALTER TABLE `jos_ucm_content` DISABLE KEYS */;
INSERT INTO `jos_ucm_content` VALUES (1,'com_content.article','Getting Started','getting-started','<p>It\'s easy to get started creating your website. Knowing some of the basics will help.</p>\r\n<h3>What is a Content Management System?</h3>\r\n<p>A content management system is software that allows you to create and manage webpages easily by separating the creation of your content from the mechanics required to present it on the web.</p>\r\n<p>In this site, the content is stored in a <em>database</em>. The look and feel are created by a <em>template</em>. Joomla! brings together the template and your content to create web pages.</p>\r\n<h3>Logging in</h3>\r\n<p>To login to your site use the user name and password that were created as part of the installation process. Once logged-in you will be able to create and edit articles and modify some settings.</p>\r\n<h3>Creating an article</h3>\r\n<p>Once you are logged-in, a new menu will be visible. To create a new article, click on the \"Submit Article\" link on that menu.</p>\r\n<p>The new article interface gives you a lot of options, but all you need to do is add a title and put something in the content area. To make it easy to find, set the state to published.</p>\r\n<div>You can edit an existing article by clicking on the edit icon (this only displays to users who have the right to edit).</div>\r\n<h3>Template, site settings, and modules</h3>\r\n<p>The look and feel of your site is controlled by a template. You can change the site name, background colour, highlights colour and more by editing the template settings. Click the \"Template Settings\" in the user menu. </p>\r\n<p>The boxes around the main content of the site are called modules.  You can modify modules on the current page by moving your cursor to the module and clicking the edit link. Always be sure to save and close any module you edit.</p>\r\n<p>You can change some site settings such as the site name and description by clicking on the \"Site Settings\" link.</p>\r\n<p>More advanced options for templates, site settings, modules, and more are available in the site administrator.</p>\r\n<h3>Site and Administrator</h3>\r\n<p>Your site actually has two separate sites. The site (also called the front end) is what visitors to your site will see. The administrator (also called the back end) is only used by people managing your site. You can access the administrator by clicking the \"Site Administrator\" link on the \"User Menu\" menu (visible once you login) or by adding /administrator to the end of your domain name. The same user name and password are used for both sites.</p>\r\n<h3>Learn more</h3>\r\n<p>There is much more to learn about how to use Joomla! to create the web site you envision. You can learn much more at the <a href=\"http://docs.joomla.org\" target=\"_blank\">Joomla! documentation site</a> and on the<a href=\"http://forum.joomla.org\" target=\"_blank\"> Joomla! forums</a>.</p>',0,'',0,1,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\"}',0,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',849,'','2013-11-16 00:00:00',0,'0000-00-00 00:00:00','*','2013-11-16 00:00:00','0000-00-00 00:00:00',1,62,'{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}',0,1,0,'','',2,'',1);
/*!40000 ALTER TABLE `jos_ucm_content` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_ucm_history`
--

DROP TABLE IF EXISTS `jos_ucm_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_ucm_history`
--

LOCK TABLES `jos_ucm_history` WRITE;
/*!40000 ALTER TABLE `jos_ucm_history` DISABLE KEYS */;
INSERT INTO `jos_ucm_history` VALUES (1,2,10,'Initial content','2013-11-16 00:00:00',849,558,'be28228b479aa67bad3dc1db2975232a033d5f0f','{\"id\":2,\"parent_id\":\"1\",\"lft\":\"1\",\"rgt\":2,\"level\":1,\"path\":\"joomla\",\"title\":\"Joomla\",\"alias\":\"joomla\",\"note\":\"\",\"description\":null,\"published\":1,\"checked_out\":\"0\",\"checked_out_time\":\"0000-00-00 00:00:00\",\"access\":1,\"params\":null,\"metadesc\":null,\"metakey\":null,\"metadata\":null,\"created_user_id\":\"849\",\"created_time\":\"2013-11-16 00:00:00\",\"created_by_alias\":\"\",\"modified_user_id\":\"0\",\"modified_time\":\"0000-00-00 00:00:00\",\"images\":null,\"urls\":null,\"hits\":\"0\",\"language\":\"*\",\"version\":\"1\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\"}',0);
INSERT INTO `jos_ucm_history` VALUES (2,1,1,'Initial content','2013-11-16 00:00:00',849,4539,'4f6bf8f67e89553853c3b6e8ed0a6111daaa7a2f','{\"id\":1,\"asset_id\":54,\"title\":\"Getting Started\",\"alias\":\"getting-started\",\"introtext\":\"<p>It\'s easy to get started creating your website. Knowing some of the basics will help.<\\/p>\\r\\n<h3>What is a Content Management System?<\\/h3>\\r\\n<p>A content management system is software that allows you to create and manage webpages easily by separating the creation of your content from the mechanics required to present it on the web.<\\/p>\\r\\n<p>In this site, the content is stored in a <em>database<\\/em>. The look and feel are created by a <em>template<\\/em>. Joomla! brings together the template and your content to create web pages.<\\/p>\\r\\n<h3>Logging in<\\/h3>\\r\\n<p>To login to your site use the user name and password that were created as part of the installation process. Once logged-in you will be able to create and edit articles and modify some settings.<\\/p>\\r\\n<h3>Creating an article<\\/h3>\\r\\n<p>Once you are logged-in, a new menu will be visible. To create a new article, click on the \\\"Submit Article\\\" link on that menu.<\\/p>\\r\\n<p>The new article interface gives you a lot of options, but all you need to do is add a title and put something in the content area. To make it easy to find, set the state to published.<\\/p>\\r\\n<div>You can edit an existing article by clicking on the edit icon (this only displays to users who have the right to edit).<\\/div>\\r\\n<h3>Template, site settings, and modules<\\/h3>\\r\\n<p>The look and feel of your site is controlled by a template. You can change the site name, background colour, highlights colour and more by editing the template settings. Click the \\\"Template Settings\\\" in the user menu.\\u00a0<\\/p>\\r\\n<p>The boxes around the main content of the site are called modules. \\u00a0You can modify modules on the current page by moving your cursor to the module and clicking the edit link. Always be sure to save and close any module you edit.<\\/p>\\r\\n<p>You can change some site settings such as the site name and description by clicking on the \\\"Site Settings\\\" link.<\\/p>\\r\\n<p>More advanced options for templates, site settings, modules, and more are available in the site administrator.<\\/p>\\r\\n<h3>Site and Administrator<\\/h3>\\r\\n<p>Your site actually has two separate sites. The site (also called the front end) is what visitors to your site will see. The administrator (also called the back end) is only used by people managing your site. You can access the administrator by clicking the \\\"Site Administrator\\\" link on the \\\"User Menu\\\" menu (visible once you login) or by adding \\/administrator to the end of your domain name. The same user name and password are used for both sites.<\\/p>\\r\\n<h3>Learn more<\\/h3>\\r\\n<p>There is much more to learn about how to use Joomla! to create the web site you envision. You can learn much more at the <a href=\\\"http:\\/\\/docs.joomla.org\\\" target=\\\"_blank\\\">Joomla! documentation site<\\/a> and on the<a href=\\\"http:\\/\\/forum.joomla.org\\\" target=\\\"_blank\\\"> Joomla! forums<\\/a>.<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2013-11-16 00:00:00\",\"created_by\":\"849\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2013-11-16 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
INSERT INTO `jos_ucm_history` VALUES (3,2,1,'','2014-09-11 09:33:28',42,1707,'3979665d27b87f36bd5be449cf666f181edbeed4','{\"id\":2,\"asset_id\":66,\"title\":\"\\u0413\\u043b\\u0430\\u0432\\u043d\\u0430\\u044f\",\"alias\":\"2014-09-11-09-33-28\",\"introtext\":\"<p>\\u0414\\u043e\\u043c<\\/p>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-09-11 09:33:28\",\"created_by\":\"42\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2014-09-11 09:33:28\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
INSERT INTO `jos_ucm_history` VALUES (4,3,1,'','2014-09-11 09:41:38',42,1681,'2d69ed8faf006932ed78e5543576cc87723cefde','{\"id\":3,\"asset_id\":67,\"title\":\"\\u0421\\u043a\\u0430\\u0447\\u0430\\u0442\\u044c\",\"alias\":\"2014-09-11-09-41-38\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-09-11 09:41:38\",\"created_by\":\"42\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2014-09-11 09:41:38\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
INSERT INTO `jos_ucm_history` VALUES (5,4,1,'','2014-09-11 09:41:51',42,1675,'320307b39cd55a402995b17db914ab88340892bd','{\"id\":4,\"asset_id\":68,\"title\":\"\\u041a\\u0443\\u043f\\u0438\\u0442\\u044c\",\"alias\":\"2014-09-11-09-41-51\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-09-11 09:41:51\",\"created_by\":\"42\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2014-09-11 09:41:51\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
INSERT INTO `jos_ucm_history` VALUES (6,5,1,'','2014-09-11 09:42:08',42,1663,'da240ebb172f198e4956393a1a7c1eca142259aa','{\"id\":5,\"asset_id\":69,\"title\":\"\\u0411\\u043b\\u043e\\u0433\",\"alias\":\"2014-09-11-09-42-08\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-09-11 09:42:08\",\"created_by\":\"42\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2014-09-11 09:42:08\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
INSERT INTO `jos_ucm_history` VALUES (7,6,1,'','2014-09-11 09:42:16',42,1669,'a9cd87288053ed34894b7e3144421f58fe8b6bcc','{\"id\":6,\"asset_id\":70,\"title\":\"\\u0424\\u043e\\u0440\\u0443\\u043c\",\"alias\":\"2014-09-11-09-42-16\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-09-11 09:42:16\",\"created_by\":\"42\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2014-09-11 09:42:16\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
INSERT INTO `jos_ucm_history` VALUES (8,7,1,'','2014-09-11 09:42:24',42,1693,'c8df5a1b6f079acbcc44a25e7ad2895928ad1f2f','{\"id\":7,\"asset_id\":71,\"title\":\"\\u041f\\u043e\\u0434\\u0434\\u0435\\u0440\\u0436\\u043a\\u0430\",\"alias\":\"2014-09-11-09-42-24\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":1,\"catid\":\"2\",\"created\":\"2014-09-11 09:42:24\",\"created_by\":\"42\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2014-09-11 09:42:24\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
/*!40000 ALTER TABLE `jos_ucm_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_update_sites`
--

DROP TABLE IF EXISTS `jos_update_sites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='Update Sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_update_sites`
--

LOCK TABLES `jos_update_sites` WRITE;
/*!40000 ALTER TABLE `jos_update_sites` DISABLE KEYS */;
INSERT INTO `jos_update_sites` VALUES (1,'Joomla! Core','collection','http://update.joomla.org/core/list.xml',0,0,'');
INSERT INTO `jos_update_sites` VALUES (2,'Joomla! Extension Directory','collection','http://update.joomla.org/jed/list.xml',0,0,'');
INSERT INTO `jos_update_sites` VALUES (3,'Accredited Joomla! Translations','collection','http://update.joomla.org/language/translationlist_3.xml',0,0,'');
INSERT INTO `jos_update_sites` VALUES (4,'System - Helix Framework','extension','http://www.joomshaper.com/updates/plg_system_helix.xml',0,0,'');
INSERT INTO `jos_update_sites` VALUES (5,'JCE Editor Updates','extension','https://www.joomlacontenteditor.net/index.php?option=com_updates&view=update&format=xml&id=1&file=extension.xml',0,0,'');
INSERT INTO `jos_update_sites` VALUES (8,'JComments Social Login','extension','http://www.joomlatune.ru/updates/plg-jcomments-slogin.xml',1,1410507865,'');
INSERT INTO `jos_update_sites` VALUES (9,'SCLogin Updates','extension','http://www.sourcecoast.com/updates/sclogin.xml',1,0,'');
/*!40000 ALTER TABLE `jos_update_sites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_update_sites_extensions`
--

DROP TABLE IF EXISTS `jos_update_sites_extensions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_update_sites_extensions`
--

LOCK TABLES `jos_update_sites_extensions` WRITE;
/*!40000 ALTER TABLE `jos_update_sites_extensions` DISABLE KEYS */;
INSERT INTO `jos_update_sites_extensions` VALUES (1,700);
INSERT INTO `jos_update_sites_extensions` VALUES (2,700);
INSERT INTO `jos_update_sites_extensions` VALUES (3,600);
INSERT INTO `jos_update_sites_extensions` VALUES (4,10020);
INSERT INTO `jos_update_sites_extensions` VALUES (5,10023);
INSERT INTO `jos_update_sites_extensions` VALUES (8,10031);
INSERT INTO `jos_update_sites_extensions` VALUES (9,10050);
/*!40000 ALTER TABLE `jos_update_sites_extensions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_updates`
--

DROP TABLE IF EXISTS `jos_updates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Available Updates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_updates`
--

LOCK TABLES `jos_updates` WRITE;
/*!40000 ALTER TABLE `jos_updates` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_updates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_user_keys`
--

DROP TABLE IF EXISTS `jos_user_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_user_keys`
--

LOCK TABLES `jos_user_keys` WRITE;
/*!40000 ALTER TABLE `jos_user_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_user_keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_user_notes`
--

DROP TABLE IF EXISTS `jos_user_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_user_notes`
--

LOCK TABLES `jos_user_notes` WRITE;
/*!40000 ALTER TABLE `jos_user_notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_user_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_user_profiles`
--

DROP TABLE IF EXISTS `jos_user_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_user_profiles`
--

LOCK TABLES `jos_user_profiles` WRITE;
/*!40000 ALTER TABLE `jos_user_profiles` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_user_profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_user_usergroup_map`
--

DROP TABLE IF EXISTS `jos_user_usergroup_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to jos_users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to jos_usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_user_usergroup_map`
--

LOCK TABLES `jos_user_usergroup_map` WRITE;
/*!40000 ALTER TABLE `jos_user_usergroup_map` DISABLE KEYS */;
INSERT INTO `jos_user_usergroup_map` VALUES (42,8);
/*!40000 ALTER TABLE `jos_user_usergroup_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_usergroups`
--

DROP TABLE IF EXISTS `jos_usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_usergroups`
--

LOCK TABLES `jos_usergroups` WRITE;
/*!40000 ALTER TABLE `jos_usergroups` DISABLE KEYS */;
INSERT INTO `jos_usergroups` VALUES (1,0,1,18,'Public');
INSERT INTO `jos_usergroups` VALUES (2,1,8,15,'Registered');
INSERT INTO `jos_usergroups` VALUES (3,2,9,14,'Author');
INSERT INTO `jos_usergroups` VALUES (4,3,10,13,'Editor');
INSERT INTO `jos_usergroups` VALUES (5,4,11,12,'Publisher');
INSERT INTO `jos_usergroups` VALUES (6,1,4,7,'Manager');
INSERT INTO `jos_usergroups` VALUES (7,6,5,6,'Administrator');
INSERT INTO `jos_usergroups` VALUES (8,1,16,17,'Super Users');
INSERT INTO `jos_usergroups` VALUES (9,1,2,3,'Guest');
/*!40000 ALTER TABLE `jos_usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_users`
--

DROP TABLE IF EXISTS `jos_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_users`
--

LOCK TABLES `jos_users` WRITE;
/*!40000 ALTER TABLE `jos_users` DISABLE KEYS */;
INSERT INTO `jos_users` VALUES (42,'User Name','user','user@example.com','$2y$10$z0m5G5kAdyzbzIXw9dAGQOBskSOIJaaMsUIvkLjJr4froItJmEl/.',0,1,'2014-09-09 14:46:19','2014-09-12 05:21:35','','{}','0000-00-00 00:00:00',0,'','',0);
/*!40000 ALTER TABLE `jos_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_viewlevels`
--

DROP TABLE IF EXISTS `jos_viewlevels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_viewlevels`
--

LOCK TABLES `jos_viewlevels` WRITE;
/*!40000 ALTER TABLE `jos_viewlevels` DISABLE KEYS */;
INSERT INTO `jos_viewlevels` VALUES (1,'Public',0,'[1]');
INSERT INTO `jos_viewlevels` VALUES (2,'Registered',1,'[6,2,8]');
INSERT INTO `jos_viewlevels` VALUES (3,'Special',2,'[6,3,8]');
INSERT INTO `jos_viewlevels` VALUES (5,'Guest',0,'[9]');
INSERT INTO `jos_viewlevels` VALUES (6,'Super Users',0,'[8]');
/*!40000 ALTER TABLE `jos_viewlevels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_weblinks`
--

DROP TABLE IF EXISTS `jos_weblinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_weblinks`
--

LOCK TABLES `jos_weblinks` WRITE;
/*!40000 ALTER TABLE `jos_weblinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `jos_weblinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jos_wf_profiles`
--

DROP TABLE IF EXISTS `jos_wf_profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jos_wf_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `users` text NOT NULL,
  `types` text NOT NULL,
  `components` text NOT NULL,
  `area` tinyint(3) NOT NULL,
  `device` varchar(255) NOT NULL,
  `rows` text NOT NULL,
  `plugins` text NOT NULL,
  `published` tinyint(3) NOT NULL,
  `ordering` int(11) NOT NULL,
  `checked_out` tinyint(3) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jos_wf_profiles`
--

LOCK TABLES `jos_wf_profiles` WRITE;
/*!40000 ALTER TABLE `jos_wf_profiles` DISABLE KEYS */;
INSERT INTO `jos_wf_profiles` VALUES (1,'Default','Default Profile for all users','','3,4,5,6,8,7','',0,'desktop,tablet,phone','help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,blockquote,formatselect,styleselect,removeformat,cleanup;fontselect,fontsizeselect,forecolor,backcolor,spacer,clipboard,indent,outdent,lists,sub,sup,textcase,charmap,hr;directionality,fullscreen,preview,source,print,searchreplace,spacer,table;visualaid,visualchars,visualblocks,nonbreaking,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article','charmap,contextmenu,browser,inlinepopups,media,help,clipboard,searchreplace,directionality,fullscreen,preview,source,table,textcase,print,style,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists,formatselect,styleselect,fontselect,fontsizeselect,fontcolor',1,1,0,'0000-00-00 00:00:00','');
INSERT INTO `jos_wf_profiles` VALUES (2,'Front End','Sample Front-end Profile','','3,4,5','',1,'desktop,tablet,phone','help,newdocument,undo,redo,spacer,bold,italic,underline,strikethrough,justifyfull,justifycenter,justifyleft,justifyright,spacer,formatselect,styleselect;clipboard,searchreplace,indent,outdent,lists,cleanup,charmap,removeformat,hr,sub,sup,textcase,nonbreaking,visualchars,visualblocks;fullscreen,preview,print,visualaid,style,xhtmlxtras,anchor,unlink,link,imgmanager,spellchecker,article','charmap,contextmenu,inlinepopups,help,clipboard,searchreplace,fullscreen,preview,print,style,textcase,nonbreaking,visualchars,visualblocks,xhtmlxtras,imgmanager,anchor,link,spellchecker,article,lists,formatselect,styleselect',0,2,0,'0000-00-00 00:00:00','');
INSERT INTO `jos_wf_profiles` VALUES (3,'Blogger','Simple Blogging Profile','','3,4,5,6,8,7','',0,'desktop,tablet,phone','bold,italic,strikethrough,lists,blockquote,spacer,justifyleft,justifycenter,justifyright,spacer,link,unlink,imgmanager,article,spellchecker,fullscreen,kitchensink;formatselect,styleselect,underline,justifyfull,clipboard,removeformat,charmap,indent,outdent,undo,redo,help','link,imgmanager,article,spellchecker,fullscreen,kitchensink,clipboard,contextmenu,inlinepopups,lists,formatselect,styleselect',0,3,0,'0000-00-00 00:00:00','{\"editor\":{\"toggle\":\"0\"}}');
INSERT INTO `jos_wf_profiles` VALUES (4,'Mobile','Sample Mobile Profile','','3,4,5,6,8,7','',0,'tablet,phone','undo,redo,spacer,bold,italic,underline,formatselect,spacer,justifyleft,justifycenter,justifyfull,justifyright,spacer,fullscreen,kitchensink;styleselect,lists,spellchecker,article,link,unlink','fullscreen,kitchensink,spellchecker,article,link,inlinepopups,lists,formatselect,styleselect',0,4,0,'0000-00-00 00:00:00','{\"editor\":{\"toolbar_theme\":\"mobile\",\"resizing\":\"0\",\"resize_horizontal\":\"0\",\"resizing_use_cookie\":\"0\",\"toggle\":\"0\",\"links\":{\"popups\":{\"default\":\"\",\"jcemediabox\":{\"enable\":\"0\"},\"window\":{\"enable\":\"0\"}}}}}');
/*!40000 ALTER TABLE `jos_wf_profiles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-09-12  6:37:43
