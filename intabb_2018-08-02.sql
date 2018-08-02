# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.6.40)
# Database: intabb
# Generation Time: 2018-08-02 08:16:13 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table craft_amnav_navs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_amnav_navs`;

CREATE TABLE `craft_amnav_navs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_amnav_navs_handle_unq_idx` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_amnav_navs` WRITE;
/*!40000 ALTER TABLE `craft_amnav_navs` DISABLE KEYS */;

INSERT INTO `craft_amnav_navs` (`id`, `name`, `handle`, `settings`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'Hoofdnavigatie','mainNav','{\"entrySources\":\"*\",\"maxLevels\":\"1\",\"canMoveFromLevel\":\"\",\"canDeleteFromLevel\":\"\"}','2017-06-13 14:13:41','2017-06-13 14:13:41','ca96b164-fda0-4e11-bb51-b60cc00deb53'),
	(3,'Doormat navigatie','doormatNav','{\"entrySources\":\"*\",\"maxLevels\":\"1\",\"canMoveFromLevel\":\"\",\"canDeleteFromLevel\":\"\"}','2017-06-13 14:21:40','2017-06-13 14:21:40','58529862-1f03-4b5a-9d9b-af0f48e70965'),
	(4,'Service navigatie','serviceNav','{\"entrySources\":\"*\",\"maxLevels\":\"1\",\"canMoveFromLevel\":\"\",\"canDeleteFromLevel\":\"\"}','2018-06-14 07:05:07','2018-06-14 07:05:21','40ae09f3-ceb7-4b60-9870-b925fa7c63a7');

/*!40000 ALTER TABLE `craft_amnav_navs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_amnav_nodes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_amnav_nodes`;

CREATE TABLE `craft_amnav_nodes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `navId` int(10) NOT NULL,
  `parentId` int(10) DEFAULT NULL,
  `order` int(10) DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `listClass` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blank` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `elementId` int(10) DEFAULT NULL,
  `elementType` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_amnav_nodes_elementId_elementType_locale_idx` (`elementId`,`elementType`,`locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_amnav_nodes` WRITE;
/*!40000 ALTER TABLE `craft_amnav_nodes` DISABLE KEYS */;

INSERT INTO `craft_amnav_nodes` (`id`, `navId`, `parentId`, `order`, `name`, `url`, `listClass`, `blank`, `enabled`, `elementId`, `elementType`, `locale`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,1,0,0,'Home',NULL,NULL,0,1,2,'Entry','en_be','2017-06-26 14:18:51','2017-06-26 14:22:51','b21c7546-50c6-4a68-a81e-7b09a0dcfeb2'),
	(2,1,0,1,'Nieuws',NULL,NULL,0,1,7,'Entry','en_be','2017-07-03 07:52:53','2018-05-30 13:48:03','c3099ff3-6603-4c37-8724-72a3d0afcd8b'),
	(3,3,0,0,'Home',NULL,NULL,0,1,2,'Entry','en_be','2017-07-03 11:39:34','2017-07-03 11:39:34','80346191-af9e-4c12-b08d-2fc693f999f6'),
	(4,3,0,1,'Nieuws',NULL,NULL,0,1,7,'Entry','en_be','2017-07-03 11:39:39','2018-05-30 13:48:03','bf4fa3dd-e650-4fb4-96c4-0a9010978db0'),
	(5,1,0,1,'Example Page',NULL,NULL,0,1,17,'Entry','nl_be','2018-05-31 09:19:13','2018-06-04 15:20:20','f8a79968-31fc-46b9-899c-46d50626bd87'),
	(6,1,0,2,'Contact',NULL,NULL,0,1,55,'Entry','nl_be','2018-06-01 07:14:12','2018-06-13 09:45:40','a809fc8b-b1ca-461f-997b-1a48a73a2952'),
	(7,1,0,0,'Nieuws',NULL,NULL,0,1,7,'Entry','nl_be','2018-06-01 07:21:48','2018-06-01 07:21:58','169f9e66-90f6-47ec-a4e4-96116add50c9'),
	(8,4,0,0,'Blog',NULL,NULL,0,1,7,'Entry','en_gb','2018-06-14 07:06:07','2018-06-14 07:06:07','b17d7bca-5b9f-43b9-8608-a0e8d22d05d1');

/*!40000 ALTER TABLE `craft_amnav_nodes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_assetfiles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_assetfiles`;

CREATE TABLE `craft_assetfiles` (
  `id` int(11) NOT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `folderId` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kind` varchar(50) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
  `width` int(11) unsigned DEFAULT NULL,
  `height` int(11) unsigned DEFAULT NULL,
  `size` bigint(20) unsigned DEFAULT NULL,
  `dateModified` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_assetfiles_filename_folderId_unq_idx` (`filename`,`folderId`),
  KEY `craft_assetfiles_sourceId_fk` (`sourceId`),
  KEY `craft_assetfiles_folderId_fk` (`folderId`),
  CONSTRAINT `craft_assetfiles_folderId_fk` FOREIGN KEY (`folderId`) REFERENCES `craft_assetfolders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_assetfiles_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_assetfiles_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_assetfiles` WRITE;
/*!40000 ALTER TABLE `craft_assetfiles` DISABLE KEYS */;

INSERT INTO `craft_assetfiles` (`id`, `sourceId`, `folderId`, `filename`, `kind`, `width`, `height`, `size`, `dateModified`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(83,1,3,'ben-kolde-367194-unsplash.jpg','image',3403,5104,2834340,'2018-05-30 13:27:19','2018-05-30 13:27:21','2018-05-30 13:27:21','1b1b5cc8-e57e-4daa-8e7b-ec3efb0c5cd7'),
	(84,1,3,'dose-media-481603-unsplash.jpg','image',4896,3264,1314086,'2018-05-30 13:27:25','2018-05-30 13:27:26','2018-05-30 13:27:26','e9feba58-1874-4ddf-85d8-71de5fe3c3be'),
	(85,1,3,'kobu-agency-409288-unsplash.jpg','image',5472,3648,1008990,'2018-05-30 13:27:30','2018-05-30 13:27:31','2018-05-30 13:27:31','1e0de8ca-5c9b-44e3-9d42-2bec4714fcb0'),
	(86,1,3,'abbie-bernet-527251-unsplash.jpg','image',5184,3456,1325179,'2018-05-30 13:27:35','2018-05-30 13:27:36','2018-05-30 13:27:36','9337612a-3568-413c-a474-2024710c312c'),
	(89,1,3,'lilly-rum-342740-unsplash.jpg','image',5472,3648,1185542,'2018-05-30 13:27:49','2018-05-30 13:27:51','2018-05-30 13:27:51','f9a5a27b-696a-4d19-8a8c-dcac2a4d54c5'),
	(90,1,3,'kelly-sikkema-411622-unsplash.jpg','image',3000,1987,477780,'2018-05-30 13:27:53','2018-05-30 13:27:54','2018-05-30 13:27:54','4839ce5f-4108-4129-bb18-f5de9ba9a3a3'),
	(91,1,3,'jesus-kiteque-224069-unsplash.jpg','image',4096,2726,371692,'2018-05-30 13:27:57','2018-05-30 13:27:58','2018-05-30 13:27:58','f44c8cec-7850-4da4-94fa-fe7d4618bdef'),
	(92,1,3,'markus-spiske-422788-unsplash.jpg','image',5760,3840,2357943,'2018-05-30 13:28:05','2018-05-30 13:28:07','2018-05-30 13:28:07','65b0fda8-9c6d-4faf-ae65-7bde15ea4167'),
	(100,1,3,'lege_pdf_2017.pdf','pdf',NULL,NULL,1281,'2018-05-30 13:29:06','2018-05-30 13:29:11','2018-05-30 13:29:11','a821d247-a75e-445d-8ce4-336f0d3de192'),
	(124,1,3,'rawpixel-395554-unsplash.jpg','image',6000,3960,800951,'2018-06-01 06:55:25','2018-06-01 06:55:27','2018-06-01 06:55:27','f285060f-f11b-4b57-8738-44dc553f9fc1'),
	(125,1,3,'bruno-van-der-kraan-554245-unsplash.jpg','image',3793,5057,2662141,'2018-06-01 06:55:33','2018-06-01 06:55:34','2018-06-01 06:55:34','7cc0686d-435b-4a19-a3d1-09221798b80a'),
	(126,1,3,'brad-neathery-303623-unsplash.jpg','image',4182,2790,1032977,'2018-06-01 06:55:37','2018-06-01 06:55:38','2018-06-01 06:55:38','a202d8f4-4604-4a87-85b4-569d5060b909'),
	(127,1,3,'hal-gatewood-613602-unsplash.jpg','image',5184,3456,1529769,'2018-06-01 06:55:43','2018-06-01 06:55:45','2018-06-01 06:55:45','5e259c04-7435-491c-bffc-9f187cb19347'),
	(129,1,3,'rawpixel-660716-unsplash.jpg','image',3000,1843,821930,'2018-06-01 06:55:53','2018-06-01 06:55:53','2018-06-01 06:55:53','2159a89d-2e61-41ee-839b-e10b674a342b'),
	(130,1,3,'daniel-hansen-252817-unsplash.jpg','image',4000,2667,1139478,'2018-06-01 06:55:56','2018-06-01 06:55:57','2018-06-01 06:55:57','400f97f7-d1dd-4ae0-b276-ac501a97f9df'),
	(150,1,3,'hal-gatewood-613602-unsplash_cfdab44b847432e5ad380789c920cedc_small.jpg','image',1400,299,125263,'2018-06-06 11:45:03','2018-06-06 11:45:03','2018-06-06 11:45:03','b2dd202a-8fd8-4b21-bd08-d8111e6b7647');

/*!40000 ALTER TABLE `craft_assetfiles` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_assetfolders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_assetfolders`;

CREATE TABLE `craft_assetfolders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parentId` int(11) DEFAULT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_assetfolders_name_parentId_sourceId_unq_idx` (`name`,`parentId`,`sourceId`),
  KEY `craft_assetfolders_parentId_fk` (`parentId`),
  KEY `craft_assetfolders_sourceId_fk` (`sourceId`),
  CONSTRAINT `craft_assetfolders_parentId_fk` FOREIGN KEY (`parentId`) REFERENCES `craft_assetfolders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_assetfolders_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_assetfolders` WRITE;
/*!40000 ALTER TABLE `craft_assetfolders` DISABLE KEYS */;

INSERT INTO `craft_assetfolders` (`id`, `parentId`, `sourceId`, `name`, `path`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,NULL,1,'Files','','2017-03-09 20:00:21','2017-03-09 20:00:21','d80d37fe-5bed-4e3a-a8b3-2ac28c48b889'),
	(3,1,1,'Test','Test/','2018-05-30 13:25:52','2018-05-30 13:25:52','f8bed64e-f239-42e0-855f-ab0059997f25');

/*!40000 ALTER TABLE `craft_assetfolders` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_assetindexdata
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_assetindexdata`;

CREATE TABLE `craft_assetindexdata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sessionId` varchar(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sourceId` int(10) NOT NULL,
  `offset` int(10) NOT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `recordId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_assetindexdata_sessionId_sourceId_offset_unq_idx` (`sessionId`,`sourceId`,`offset`),
  KEY `craft_assetindexdata_sourceId_fk` (`sourceId`),
  CONSTRAINT `craft_assetindexdata_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_assetsources` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_assetsources
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_assetsources`;

CREATE TABLE `craft_assetsources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `fieldLayoutId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_assetsources_name_unq_idx` (`name`),
  UNIQUE KEY `craft_assetsources_handle_unq_idx` (`handle`),
  KEY `craft_assetsources_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_assetsources_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_assetsources` WRITE;
/*!40000 ALTER TABLE `craft_assetsources` DISABLE KEYS */;

INSERT INTO `craft_assetsources` (`id`, `name`, `handle`, `type`, `settings`, `sortOrder`, `fieldLayoutId`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'Files','files','Local','{\"path\":\"{basePath}\\/files\\/\",\"publicURLs\":\"1\",\"url\":\"\\/files\\/\"}',1,439,'2017-03-09 20:00:21','2018-06-08 11:28:41','96cf84fe-f6ab-4e2a-9db5-ccf11507030b');

/*!40000 ALTER TABLE `craft_assetsources` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_assettransformindex
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_assettransformindex`;

CREATE TABLE `craft_assettransformindex` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fileId` int(11) NOT NULL,
  `filename` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sourceId` int(11) DEFAULT NULL,
  `fileExists` tinyint(1) DEFAULT NULL,
  `inProgress` tinyint(1) DEFAULT NULL,
  `dateIndexed` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_assettransformindex_sourceId_fileId_location_idx` (`sourceId`,`fileId`,`location`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_assettransformindex` WRITE;
/*!40000 ALTER TABLE `craft_assettransformindex` DISABLE KEYS */;

INSERT INTO `craft_assettransformindex` (`id`, `fileId`, `filename`, `format`, `location`, `sourceId`, `fileExists`, `inProgress`, `dateIndexed`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,130,'daniel-hansen-252817-unsplash.jpg',NULL,'_hero',1,1,0,'2018-06-01 07:13:44','2018-06-01 07:13:44','2018-06-01 07:13:47','fea02115-92f5-4484-9917-b47c4ad26122');

/*!40000 ALTER TABLE `craft_assettransformindex` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_assettransforms
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_assettransforms`;

CREATE TABLE `craft_assettransforms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mode` enum('stretch','fit','crop') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'crop',
  `position` enum('top-left','top-center','top-right','center-left','center-center','center-right','bottom-left','bottom-center','bottom-right') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'center-center',
  `height` int(10) DEFAULT NULL,
  `width` int(10) DEFAULT NULL,
  `format` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `quality` int(10) DEFAULT NULL,
  `dimensionChangeTime` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_assettransforms_name_unq_idx` (`name`),
  UNIQUE KEY `craft_assettransforms_handle_unq_idx` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_assettransforms` WRITE;
/*!40000 ALTER TABLE `craft_assettransforms` DISABLE KEYS */;

INSERT INTO `craft_assettransforms` (`id`, `name`, `handle`, `mode`, `position`, `height`, `width`, `format`, `quality`, `dimensionChangeTime`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'Hero','hero','crop','center-center',550,1900,NULL,NULL,'2017-07-03 10:36:46','2017-07-03 10:36:46','2017-07-03 10:36:46','7ff57e3a-e5bb-4dff-8b53-f20b8060d791'),
	(2,'Overview News','overviewNews','crop','center-center',350,600,NULL,NULL,'2017-07-03 10:37:44','2017-07-03 10:37:44','2017-07-03 10:37:44','a8ab1904-5bb9-43c9-956f-d06f07b8f548'),
	(3,'Detail Builder ','detailBuilder','fit','center-center',NULL,900,NULL,NULL,'2017-07-03 10:44:07','2017-07-03 10:42:16','2017-07-03 10:44:07','3bc0bfff-4e78-4589-bb8b-3763e7d94658'),
	(4,'Content Builder 50','contentBuilder50','crop','center-center',450,700,NULL,NULL,'2017-07-03 10:43:44','2017-07-03 10:43:44','2017-07-03 10:43:44','26e908c6-fa8f-4bb0-811b-406ed1e01402');

/*!40000 ALTER TABLE `craft_assettransforms` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_categories`;

CREATE TABLE `craft_categories` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_categories_groupId_fk` (`groupId`),
  CONSTRAINT `craft_categories_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_categorygroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_categories_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_categorygroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_categorygroups`;

CREATE TABLE `craft_categorygroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `structureId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasUrls` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_categorygroups_name_unq_idx` (`name`),
  UNIQUE KEY `craft_categorygroups_handle_unq_idx` (`handle`),
  KEY `craft_categorygroups_structureId_fk` (`structureId`),
  KEY `craft_categorygroups_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_categorygroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `craft_categorygroups_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_categorygroups_i18n
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_categorygroups_i18n`;

CREATE TABLE `craft_categorygroups_i18n` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `urlFormat` text COLLATE utf8_unicode_ci,
  `nestedUrlFormat` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_categorygroups_i18n_groupId_locale_unq_idx` (`groupId`,`locale`),
  KEY `craft_categorygroups_i18n_locale_fk` (`locale`),
  CONSTRAINT `craft_categorygroups_i18n_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_categorygroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_categorygroups_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_content
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_content`;

CREATE TABLE `craft_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_intro` text COLLATE utf8_unicode_ci,
  `field_overviewTitle` text COLLATE utf8_unicode_ci,
  `field_facebook` text COLLATE utf8_unicode_ci,
  `field_instagram` text COLLATE utf8_unicode_ci,
  `field_linkedin` text COLLATE utf8_unicode_ci,
  `field_pinterest` text COLLATE utf8_unicode_ci,
  `field_twitter` text COLLATE utf8_unicode_ci,
  `field_youtube` text COLLATE utf8_unicode_ci,
  `field_overviewDescription` text COLLATE utf8_unicode_ci,
  `field_seo` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_content_elementId_locale_unq_idx` (`elementId`,`locale`),
  KEY `craft_content_title_idx` (`title`),
  KEY `craft_content_locale_fk` (`locale`),
  CONSTRAINT `craft_content_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_content_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_content` WRITE;
/*!40000 ALTER TABLE `craft_content` DISABLE KEYS */;

INSERT INTO `craft_content` (`id`, `elementId`, `locale`, `title`, `field_intro`, `field_overviewTitle`, `field_facebook`, `field_instagram`, `field_linkedin`, `field_pinterest`, `field_twitter`, `field_youtube`, `field_overviewDescription`, `field_seo`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,1,'en_gb',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-03-09 09:09:42','2018-06-14 07:31:33','8acfe836-0a5a-4c81-8dbf-6673a3fbc60a'),
	(9,10,'en_gb',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-07-03 19:24:23','2018-06-14 06:54:57','c88401cd-4107-4871-91bb-b8069a212af6'),
	(24,12,'en_gb','Privacy',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-08-20 08:35:51','2018-06-14 06:54:57','a771e94d-3098-4850-95fc-e41ac2a4a0d7'),
	(25,13,'en_gb','Pagina niet gevonden',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2017-08-20 08:35:57','2018-06-14 06:54:57','598cc6b3-4845-4516-abfb-5c78d1f48329'),
	(26,7,'en_gb','Blog','','',NULL,NULL,NULL,NULL,NULL,NULL,'','{\"title\":\"Nieuws \",\"description\":\"\",\"keywords\":\"[]\",\"score\":\"\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}','2017-08-20 08:36:07','2018-06-14 07:05:44','1728e107-4fac-430c-92f9-8cffe30bc5b4'),
	(31,17,'en_gb','Example Page','<p>Example page to test all cases and see if nothing breaks.</p>','',NULL,NULL,NULL,NULL,NULL,NULL,'','{\"title\":\"Example Page \",\"description\":\"\",\"keywords\":\"[]\",\"score\":\"\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}','2017-09-12 14:26:52','2018-06-14 06:54:57','9708ddb2-993c-488b-8be1-2f51c66ae3db'),
	(71,53,'en_gb','Example blog','<p>Test contentje</p>','Example overview title',NULL,NULL,NULL,NULL,NULL,NULL,'','{\"title\":\"Example News \",\"description\":\"\",\"keywords\":\"[]\",\"score\":\"\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}','2017-09-18 15:54:49','2018-06-14 07:07:38','d06cc774-a985-4659-a273-efcc828d442a'),
	(74,55,'en_gb','Contact','<p>Contactpagina</p>','',NULL,NULL,NULL,NULL,NULL,NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>','{\"title\":\"Contact \",\"description\":\"\",\"keywords\":\"[]\",\"score\":\"\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}','2017-12-19 19:58:28','2018-06-14 06:54:57','723bf423-e3cd-4217-adfd-9ddd4fa8c95b'),
	(91,66,'en_gb','2018-02-09 13:01:48',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-02-09 12:01:49','2018-06-14 06:54:57','4f4d62d8-4162-4fdb-88f1-c0ec8359426f'),
	(130,2,'en_gb','Home',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'','{\"title\":\"Home \",\"description\":\"\",\"keywords\":\"[]\",\"score\":\"\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}','2018-05-31 09:17:54','2018-06-14 06:54:57','4abd20b6-d1e5-46ef-be68-b42ca05bcb1f'),
	(145,131,'en_gb','Cookie Policy',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-06-01 07:04:25','2018-06-14 06:54:57','cf4a019a-da75-46ea-88e6-2d828991cc77'),
	(147,132,'en_gb','Terms & conditions',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-06-01 07:05:45','2018-06-14 06:54:57','af26a580-ac4c-4546-abef-31536d418653'),
	(157,147,'en_gb','Content Builder','','',NULL,NULL,NULL,NULL,NULL,NULL,'','{\"title\":\"Content Builder \",\"description\":\"\",\"keywords\":\"[]\",\"score\":\"\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}','2018-06-06 11:39:32','2018-06-14 06:54:57','cc69b73d-d598-40d8-92c0-8ad89e6c9486'),
	(161,161,'en_gb','2018-06-07 15:15:43',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-06-07 13:15:43','2018-06-14 06:54:57','9cfa4b75-ea86-43e2-9ffc-e85e3774107f'),
	(164,83,'en_gb','Ben Kolde 367194 Unsplash',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-06-14 06:54:47','2018-06-14 06:54:47','0403c04e-a0f4-4fcc-a6ba-59bb41ad8337'),
	(165,84,'en_gb','Dose Media 481603 Unsplash',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-06-14 06:54:47','2018-06-14 06:54:47','def953f5-893c-44ef-be8b-6f055acc715d'),
	(166,85,'en_gb','Kobu Agency 409288 Unsplash',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-06-14 06:54:47','2018-06-14 06:54:47','339224e4-19e7-49ea-8d3a-badbb5a9939d'),
	(167,86,'en_gb','Abbie Bernet 527251 Unsplash',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-06-14 06:54:47','2018-06-14 06:54:47','d6786ce0-6b46-4e96-ad99-4b43e15cbfab'),
	(168,89,'en_gb','Lilly Rum 342740 Unsplash',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-06-14 06:54:47','2018-06-14 06:54:47','c448d703-05eb-4a30-9d5d-7101d4fa2437'),
	(169,90,'en_gb','Kelly Sikkema 411622 Unsplash',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-06-14 06:54:47','2018-06-14 06:54:47','a842d870-5699-40d3-945e-34036570739f'),
	(170,91,'en_gb','Jesus Kiteque 224069 Unsplash',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-06-14 06:54:47','2018-06-14 06:54:47','48c82eb6-44aa-4901-a88e-113d1b730ed4'),
	(171,92,'en_gb','Markus Spiske 422788 Unsplash',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-06-14 06:54:47','2018-06-14 06:54:47','6d640c06-dc0c-4eec-a7cd-c52f975976f7'),
	(172,100,'en_gb','Lege Pdf 2017',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-06-14 06:54:47','2018-06-14 06:54:47','da08b81e-6251-40cf-99ed-1ab31a7b702e'),
	(173,124,'en_gb','Rawpixel 395554 Unsplash',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-06-14 06:54:47','2018-06-14 06:54:47','74787af0-d0ae-4a57-a4fb-7f56b72f0246'),
	(174,125,'en_gb','Bruno Van Der Kraan 554245 Unsplash',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-06-14 06:54:47','2018-06-14 06:54:47','3d0589b9-2729-47e1-9052-f9f05d23a1a2'),
	(175,126,'en_gb','Brad Neathery 303623 Unsplash',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-06-14 06:54:47','2018-06-14 06:54:47','637d07ba-fd28-4874-8243-4ffe20dd0abe'),
	(176,127,'en_gb','Hal Gatewood 613602 Unsplash',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-06-14 06:54:47','2018-06-14 06:54:47','fe750ca9-c3ff-4a96-8a3e-90ac01dc5e7c'),
	(177,129,'en_gb','Rawpixel 660716 Unsplash',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-06-14 06:54:47','2018-06-14 06:54:47','94434bcd-bff6-4f9a-8848-eda2765990e4'),
	(178,130,'en_gb','Daniel Hansen 252817 Unsplash',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-06-14 06:54:47','2018-06-14 06:54:47','87059ba7-6591-4241-9587-55fc2606d22b'),
	(179,150,'en_gb','Hal Gatewood 613602 Unsplash Cfdab44B847432E5Ad380789C920Cedc Small',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-06-14 06:54:47','2018-06-14 06:54:47','4626cbf4-f500-48c8-9cbc-651a851f81a0'),
	(180,8,'en_gb',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-06-14 06:54:47','2018-06-14 06:54:47','b7589cb9-2608-4a45-a156-97bc78f6544b'),
	(181,11,'en_gb',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-06-14 06:54:47','2018-06-14 06:54:47','dedbe58c-d6af-4232-963f-f1108dac948c'),
	(182,198,'en_gb','Meer nieuws','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br /></p>','',NULL,NULL,NULL,NULL,NULL,NULL,'','{\"title\":\"Meer nieuws | SmileWise\",\"description\":\"\",\"keywords\":\"[]\",\"score\":\"\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}','2018-06-14 07:10:36','2018-06-14 07:21:33','605de547-81bf-405e-bc41-b4de79b1cd00'),
	(183,201,'en_gb','Historiek',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'','{\"title\":\"Historiek | SmileWise\",\"description\":\"\",\"keywords\":\"\",\"score\":\"neutral\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}','2018-08-02 07:53:07','2018-08-02 07:53:12','c9b1d826-8a66-4759-a162-7651e628db43'),
	(184,202,'en_gb','Over Abbeyfield',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'','{\"title\":\"Over Abbeyfield | SmileWise\",\"description\":\"\",\"keywords\":\"\",\"score\":\"neutral\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}','2018-08-02 07:54:35','2018-08-02 07:54:35','37b8d23b-aa0d-4ad6-95d8-0914c113ca09'),
	(185,203,'en_gb','Visie & Missie',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'','{\"title\":\"Visie & Missie | SmileWise\",\"description\":\"\",\"keywords\":\"\",\"score\":\"neutral\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}','2018-08-02 07:55:51','2018-08-02 07:55:51','36623656-f4c6-4856-be4d-aea9d1a91c19'),
	(186,204,'en_gb','Werking',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'','{\"title\":\"Werking | SmileWise\",\"description\":\"\",\"keywords\":\"\",\"score\":\"neutral\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}','2018-08-02 07:56:17','2018-08-02 07:56:17','e79fab7f-f306-40bb-9277-d7e935efa96f'),
	(187,205,'en_gb','Team',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'','{\"title\":\"Team | SmileWise\",\"description\":\"\",\"keywords\":\"\",\"score\":\"neutral\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}','2018-08-02 07:56:38','2018-08-02 07:56:38','c82d57e7-57b5-473b-893e-3df43cb29088'),
	(188,206,'en_gb','Doe mee',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'','{\"title\":\"Doe mee | SmileWise\",\"description\":\"\",\"keywords\":\"\",\"score\":\"neutral\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}','2018-08-02 07:56:59','2018-08-02 07:56:59','db95adfe-d611-4c99-9c3f-9fe27ed45a34'),
	(189,207,'en_gb','Vrijwilligers gezocht',NULL,'',NULL,NULL,NULL,NULL,NULL,NULL,'','{\"title\":\"Vrijwilligers gezocht | SmileWise\",\"description\":\"\",\"keywords\":\"\",\"score\":\"neutral\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}','2018-08-02 07:57:25','2018-08-02 07:57:25','d66333c8-4aab-404f-8573-2ef0f3f5fa34');

/*!40000 ALTER TABLE `craft_content` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_deprecationerrors
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_deprecationerrors`;

CREATE TABLE `craft_deprecationerrors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fingerprint` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `lastOccurrence` datetime NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `line` smallint(6) unsigned NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `method` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `templateLine` smallint(6) unsigned DEFAULT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `traces` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_deprecationerrors_key_fingerprint_unq_idx` (`key`,`fingerprint`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_deprecationerrors` WRITE;
/*!40000 ALTER TABLE `craft_deprecationerrors` DISABLE KEYS */;

INSERT INTO `craft_deprecationerrors` (`id`, `key`, `fingerprint`, `lastOccurrence`, `file`, `line`, `class`, `method`, `template`, `templateLine`, `message`, `traces`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'BaseElementModel::getChildren()_for_relations','/Users/jhenckens/Sites/crabas/craft/templates/_news/_entry.twig:17','2018-06-06 11:38:06','/Users/jhenckens/Sites/crabas/craft/app/models/BaseElementModel.php',534,'Craft\\BaseElementModel','getChildren','/Users/jhenckens/Sites/crabas/craft/templates/_news/_entry.twig',17,'Calling getChildren() to fetch an element’s target relations has been deprecated. Use the <a href=\"http://craftcms.com/docs/relations#the-relatedTo-param\">relatedTo</a> param instead.','[{\"objectClass\":\"Craft\\\\DeprecatorService\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/models\\/BaseElementModel.php\",\"line\":534,\"class\":\"Craft\\\\DeprecatorService\",\"method\":\"log\",\"args\":\"\\\"BaseElementModel::getChildren()_for_relations\\\", \\\"Calling getChildren() to fetch an element\\u2019s target relations h...\\\"\"},{\"objectClass\":\"Craft\\\\EntryModel\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/base\\/CComponent.php\",\"line\":188,\"class\":\"Craft\\\\BaseElementModel\",\"method\":\"getChildren\",\"args\":null},{\"objectClass\":\"Craft\\\\EntryModel\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/models\\/BaseModel.php\",\"line\":153,\"class\":\"CComponent\",\"method\":\"__isset\",\"args\":\"\\\"children\\\"\"},{\"objectClass\":\"Craft\\\\EntryModel\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/models\\/BaseElementModel.php\",\"line\":118,\"class\":\"Craft\\\\BaseModel\",\"method\":\"__isset\",\"args\":\"\\\"children\\\"\"},{\"objectClass\":\"Craft\\\\EntryModel\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":580,\"class\":\"Craft\\\\BaseElementModel\",\"method\":\"__isset\",\"args\":\"\\\"children\\\"\"},{\"objectClass\":\"__TwigTemplate_2b06aeae502c9ee4f22bf65b03651ae5b93d208ab5b841ed1ed4268226013340\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/etc\\/templating\\/BaseTemplate.php\",\"line\":64,\"class\":\"Twig_Template\",\"method\":\"getAttribute\",\"args\":\"Craft\\\\EntryModel, \\\"children\\\", array(), \\\"any\\\"\"},{\"objectClass\":\"__TwigTemplate_2b06aeae502c9ee4f22bf65b03651ae5b93d208ab5b841ed1ed4268226013340\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/storage\\/runtime\\/compiled_templates\\/50\\/500995e6a8fae159efd282cb5278e122f35453574ca2a63fecb33c3db6a7f91c.php\",\"line\":58,\"class\":\"Craft\\\\BaseTemplate\",\"method\":\"getAttribute\",\"args\":\"Craft\\\\EntryModel, \\\"children\\\", array()\",\"template\":\"_snippet\\/_content\\/_block\\/_overview\",\"templateLine\":17},{\"objectClass\":\"__TwigTemplate_2b06aeae502c9ee4f22bf65b03651ae5b93d208ab5b841ed1ed4268226013340\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":432,\"class\":\"__TwigTemplate_2b06aeae502c9ee4f22bf65b03651ae5b93d208ab5b841ed1ed4268226013340\",\"method\":\"doDisplay\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_2b06aeae502c9ee4f22bf65b03651ae5b93d208ab5b841ed1ed4268226013340\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/etc\\/templating\\/BaseTemplate.php\",\"line\":26,\"class\":\"Twig_Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_2b06aeae502c9ee4f22bf65b03651ae5b93d208ab5b841ed1ed4268226013340\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":403,\"class\":\"Craft\\\\BaseTemplate\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_2b06aeae502c9ee4f22bf65b03651ae5b93d208ab5b841ed1ed4268226013340\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/storage\\/runtime\\/compiled_templates\\/25\\/25e38e8dc42c508f0ac3ff905cad23296b291619542d09172c11353a2543acfe.php\",\"line\":49,\"class\":\"Twig_Template\",\"method\":\"display\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable)\",\"template\":\"_snippet\\/_content\\/_block\\/_overview\",\"templateLine\":14},{\"objectClass\":\"__TwigTemplate_2745981870ad262b18fb2406006c98023a6bd2e7d909fd7e5f5696f0be106e2d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":432,\"class\":\"__TwigTemplate_2745981870ad262b18fb2406006c98023a6bd2e7d909fd7e5f5696f0be106e2d\",\"method\":\"doDisplay\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_2745981870ad262b18fb2406006c98023a6bd2e7d909fd7e5f5696f0be106e2d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/etc\\/templating\\/BaseTemplate.php\",\"line\":26,\"class\":\"Twig_Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_2745981870ad262b18fb2406006c98023a6bd2e7d909fd7e5f5696f0be106e2d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":403,\"class\":\"Craft\\\\BaseTemplate\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_2745981870ad262b18fb2406006c98023a6bd2e7d909fd7e5f5696f0be106e2d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/storage\\/runtime\\/compiled_templates\\/f0\\/f07bda5415cc673083735ec23258e6675bd6f32162167bdcc9e28b80880c097b.php\",\"line\":65,\"class\":\"Twig_Template\",\"method\":\"display\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable)\",\"template\":\"_snippet\\/_content\\/_contentBuilder\",\"templateLine\":10},{\"objectClass\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":215,\"class\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"method\":\"block_content\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"dataComponents\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_dataComponents\\\"), \\\"breadcrumbs\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_breadcrumbs\\\"), \\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/storage\\/runtime\\/compiled_templates\\/68\\/683b0cfa533368bf4382b3bb7a67fd3ad9d28a45d8cf04cfec2f77dc0ff4c80b.php\",\"line\":126,\"class\":\"Twig_Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"dataComponents\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_dataComponents\\\"), \\\"breadcrumbs\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_breadcrumbs\\\"), \\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\",\"template\":\"_layout\",\"templateLine\":52},{\"objectClass\":\"__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":432,\"class\":\"__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde\",\"method\":\"doDisplay\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"dataComponents\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_dataComponents\\\"), \\\"breadcrumbs\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_breadcrumbs\\\"), \\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/etc\\/templating\\/BaseTemplate.php\",\"line\":26,\"class\":\"Twig_Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"dataComponents\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_dataComponents\\\"), \\\"breadcrumbs\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_breadcrumbs\\\"), \\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":403,\"class\":\"Craft\\\\BaseTemplate\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"dataComponents\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_dataComponents\\\"), \\\"breadcrumbs\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_breadcrumbs\\\"), \\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/storage\\/runtime\\/compiled_templates\\/f0\\/f07bda5415cc673083735ec23258e6675bd6f32162167bdcc9e28b80880c097b.php\",\"line\":31,\"class\":\"Twig_Template\",\"method\":\"display\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\",\"template\":\"_layout\",\"templateLine\":5},{\"objectClass\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":432,\"class\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"method\":\"doDisplay\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/etc\\/templating\\/BaseTemplate.php\",\"line\":26,\"class\":\"Twig_Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":403,\"class\":\"Craft\\\\BaseTemplate\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":411,\"class\":\"Twig_Template\",\"method\":\"display\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Environment.php\",\"line\":363,\"class\":\"Twig_Template\",\"method\":\"render\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"Craft\\\\TwigEnvironment\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/services\\/TemplatesService.php\",\"line\":256,\"class\":\"Twig_Environment\",\"method\":\"render\",\"args\":\"\\\"_news\\/_entry\\\", array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"Craft\\\\TemplatesService\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/controllers\\/BaseController.php\",\"line\":74,\"class\":\"Craft\\\\TemplatesService\",\"method\":\"render\",\"args\":\"\\\"_news\\/_entry\\\", array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/controllers\\/TemplatesController.php\",\"line\":68,\"class\":\"Craft\\\\BaseController\",\"method\":\"renderTemplate\",\"args\":\"\\\"_news\\/_entry\\\", array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"Craft\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"_news\\/_entry\\\", array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"ReflectionMethod\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/actions\\/CAction.php\",\"line\":109,\"class\":\"ReflectionMethod\",\"method\":\"invokeArgs\",\"args\":\"Craft\\\\TemplatesController, array(\\\"_news\\/_entry\\\", array(\\\"entry\\\" => Craft\\\\EntryModel))\"},{\"objectClass\":\"CInlineAction\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/actions\\/CInlineAction.php\",\"line\":47,\"class\":\"CAction\",\"method\":\"runWithParamsInternal\",\"args\":\"Craft\\\\TemplatesController, ReflectionMethod, array(\\\"p\\\" => \\\"nieuws\\/content-builder-2-0\\\", \\\"variables\\\" => array(\\\"entry\\\" => Craft\\\\EntryModel), \\\"template\\\" => \\\"_news\\/_entry\\\")\"},{\"objectClass\":\"CInlineAction\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/CController.php\",\"line\":308,\"class\":\"CInlineAction\",\"method\":\"runWithParams\",\"args\":\"array(\\\"p\\\" => \\\"nieuws\\/content-builder-2-0\\\", \\\"variables\\\" => array(\\\"entry\\\" => Craft\\\\EntryModel), \\\"template\\\" => \\\"_news\\/_entry\\\")\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/CController.php\",\"line\":286,\"class\":\"CController\",\"method\":\"runAction\",\"args\":\"CInlineAction\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/CController.php\",\"line\":265,\"class\":\"CController\",\"method\":\"runActionWithFilters\",\"args\":\"CInlineAction, array()\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/CWebApplication.php\",\"line\":282,\"class\":\"CController\",\"method\":\"run\",\"args\":\"\\\"render\\\"\"},{\"objectClass\":\"Craft\\\\WebApp\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/CWebApplication.php\",\"line\":141,\"class\":\"CWebApplication\",\"method\":\"runController\",\"args\":\"\\\"templates\\/render\\\"\"},{\"objectClass\":\"Craft\\\\WebApp\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/etc\\/web\\/WebApp.php\",\"line\":290,\"class\":\"CWebApplication\",\"method\":\"processRequest\",\"args\":null},{\"objectClass\":\"Craft\\\\WebApp\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/base\\/CApplication.php\",\"line\":185,\"class\":\"Craft\\\\WebApp\",\"method\":\"processRequest\",\"args\":null},{\"objectClass\":\"Craft\\\\WebApp\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/index.php\",\"line\":73,\"class\":\"CApplication\",\"method\":\"run\",\"args\":null},{\"objectClass\":null,\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/public\\/index.php\",\"line\":20,\"class\":null,\"method\":\"require_once\",\"args\":\"\\\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/index.php\\\"\"}]','2018-05-31 10:06:47','2018-06-06 11:38:06','0ab19964-e24a-4e60-8044-0d81bdf15ae0'),
	(2,'element_old_relation_params','/Users/jhenckens/Sites/crabas/craft/templates/_news/_entry.twig:9','2018-06-01 09:45:29','/Users/jhenckens/Sites/crabas/craft/app/services/ElementsService.php',825,'Craft\\ElementsService','buildElementsQuery','/Users/jhenckens/Sites/crabas/craft/templates/_news/_entry.twig',9,'The ‘childOf’, ‘childField’, ‘parentOf’, and ‘parentField’ element params have been deprecated. Use ‘relatedTo’ instead.','[{\"objectClass\":\"Craft\\\\DeprecatorService\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/services\\/ElementsService.php\",\"line\":825,\"class\":\"Craft\\\\DeprecatorService\",\"method\":\"log\",\"args\":\"\\\"element_old_relation_params\\\", \\\"The \\u2018childOf\\u2019, \\u2018childField\\u2019, \\u2018parentOf\\u2019, and \\u2018pare...\\\"\"},{\"objectClass\":\"Craft\\\\ElementsService\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/services\\/ElementsService.php\",\"line\":542,\"class\":\"Craft\\\\ElementsService\",\"method\":\"buildElementsQuery\",\"args\":\"Craft\\\\ElementCriteriaModel, \\\"content\\\", array(array(\\\"handle\\\" => \\\"facebook\\\", \\\"column\\\" => \\\"field_facebook\\\"), array(\\\"handle\\\" => \\\"instagram\\\", \\\"column\\\" => \\\"field_instagram\\\"), array(\\\"handle\\\" => \\\"intro\\\", \\\"column\\\" => \\\"field_intro\\\"), array(\\\"handle\\\" => \\\"linkedin\\\", \\\"column\\\" => \\\"field_linkedin\\\")), true\"},{\"objectClass\":\"Craft\\\\ElementsService\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/models\\/ElementCriteriaModel.php\",\"line\":385,\"class\":\"Craft\\\\ElementsService\",\"method\":\"getTotalElements\",\"args\":\"Craft\\\\ElementCriteriaModel\"},{\"objectClass\":\"Craft\\\\ElementCriteriaModel\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/models\\/ElementCriteriaModel.php\",\"line\":174,\"class\":\"Craft\\\\ElementCriteriaModel\",\"method\":\"total\",\"args\":null},{\"objectClass\":\"Craft\\\\ElementCriteriaModel\",\"file\":null,\"line\":null,\"class\":\"Craft\\\\ElementCriteriaModel\",\"method\":\"count\",\"args\":null},{\"objectClass\":null,\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Extension\\/Core.php\",\"line\":1271,\"class\":null,\"method\":\"count\",\"args\":\"Craft\\\\ElementCriteriaModel\"},{\"objectClass\":null,\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/storage\\/runtime\\/compiled_templates\\/50\\/500995e6a8fae159efd282cb5278e122f35453574ca2a63fecb33c3db6a7f91c.php\",\"line\":58,\"class\":null,\"method\":\"twig_length_filter\",\"args\":\"Craft\\\\TwigEnvironment, Craft\\\\ElementCriteriaModel\"},{\"objectClass\":\"__TwigTemplate_2b06aeae502c9ee4f22bf65b03651ae5b93d208ab5b841ed1ed4268226013340\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":432,\"class\":\"__TwigTemplate_2b06aeae502c9ee4f22bf65b03651ae5b93d208ab5b841ed1ed4268226013340\",\"method\":\"doDisplay\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_2b06aeae502c9ee4f22bf65b03651ae5b93d208ab5b841ed1ed4268226013340\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/etc\\/templating\\/BaseTemplate.php\",\"line\":26,\"class\":\"Twig_Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_2b06aeae502c9ee4f22bf65b03651ae5b93d208ab5b841ed1ed4268226013340\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":403,\"class\":\"Craft\\\\BaseTemplate\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_2b06aeae502c9ee4f22bf65b03651ae5b93d208ab5b841ed1ed4268226013340\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/storage\\/runtime\\/compiled_templates\\/25\\/25e38e8dc42c508f0ac3ff905cad23296b291619542d09172c11353a2543acfe.php\",\"line\":39,\"class\":\"Twig_Template\",\"method\":\"display\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable)\",\"template\":\"_snippet\\/_content\\/_block\\/_overview\",\"templateLine\":9},{\"objectClass\":\"__TwigTemplate_2745981870ad262b18fb2406006c98023a6bd2e7d909fd7e5f5696f0be106e2d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":432,\"class\":\"__TwigTemplate_2745981870ad262b18fb2406006c98023a6bd2e7d909fd7e5f5696f0be106e2d\",\"method\":\"doDisplay\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_2745981870ad262b18fb2406006c98023a6bd2e7d909fd7e5f5696f0be106e2d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/etc\\/templating\\/BaseTemplate.php\",\"line\":26,\"class\":\"Twig_Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_2745981870ad262b18fb2406006c98023a6bd2e7d909fd7e5f5696f0be106e2d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":403,\"class\":\"Craft\\\\BaseTemplate\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_2745981870ad262b18fb2406006c98023a6bd2e7d909fd7e5f5696f0be106e2d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/storage\\/runtime\\/compiled_templates\\/f0\\/f07bda5415cc673083735ec23258e6675bd6f32162167bdcc9e28b80880c097b.php\",\"line\":65,\"class\":\"Twig_Template\",\"method\":\"display\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable)\",\"template\":\"_snippet\\/_content\\/_contentBuilder\",\"templateLine\":6},{\"objectClass\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":215,\"class\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"method\":\"block_content\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"dataComponents\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_dataComponents\\\"), \\\"breadcrumbs\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_breadcrumbs\\\"), \\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/storage\\/runtime\\/compiled_templates\\/68\\/683b0cfa533368bf4382b3bb7a67fd3ad9d28a45d8cf04cfec2f77dc0ff4c80b.php\",\"line\":126,\"class\":\"Twig_Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"dataComponents\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_dataComponents\\\"), \\\"breadcrumbs\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_breadcrumbs\\\"), \\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\",\"template\":\"_layout\",\"templateLine\":52},{\"objectClass\":\"__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":432,\"class\":\"__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde\",\"method\":\"doDisplay\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"dataComponents\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_dataComponents\\\"), \\\"breadcrumbs\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_breadcrumbs\\\"), \\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/etc\\/templating\\/BaseTemplate.php\",\"line\":26,\"class\":\"Twig_Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"dataComponents\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_dataComponents\\\"), \\\"breadcrumbs\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_breadcrumbs\\\"), \\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":403,\"class\":\"Craft\\\\BaseTemplate\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"dataComponents\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_dataComponents\\\"), \\\"breadcrumbs\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_breadcrumbs\\\"), \\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/storage\\/runtime\\/compiled_templates\\/f0\\/f07bda5415cc673083735ec23258e6675bd6f32162167bdcc9e28b80880c097b.php\",\"line\":31,\"class\":\"Twig_Template\",\"method\":\"display\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\",\"template\":\"_layout\",\"templateLine\":5},{\"objectClass\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":432,\"class\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"method\":\"doDisplay\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/etc\\/templating\\/BaseTemplate.php\",\"line\":26,\"class\":\"Twig_Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":403,\"class\":\"Craft\\\\BaseTemplate\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":411,\"class\":\"Twig_Template\",\"method\":\"display\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Environment.php\",\"line\":363,\"class\":\"Twig_Template\",\"method\":\"render\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"Craft\\\\TwigEnvironment\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/services\\/TemplatesService.php\",\"line\":256,\"class\":\"Twig_Environment\",\"method\":\"render\",\"args\":\"\\\"_news\\/_entry\\\", array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"Craft\\\\TemplatesService\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/controllers\\/BaseController.php\",\"line\":74,\"class\":\"Craft\\\\TemplatesService\",\"method\":\"render\",\"args\":\"\\\"_news\\/_entry\\\", array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/controllers\\/TemplatesController.php\",\"line\":68,\"class\":\"Craft\\\\BaseController\",\"method\":\"renderTemplate\",\"args\":\"\\\"_news\\/_entry\\\", array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"Craft\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"_news\\/_entry\\\", array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"ReflectionMethod\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/actions\\/CAction.php\",\"line\":109,\"class\":\"ReflectionMethod\",\"method\":\"invokeArgs\",\"args\":\"Craft\\\\TemplatesController, array(\\\"_news\\/_entry\\\", array(\\\"entry\\\" => Craft\\\\EntryModel))\"},{\"objectClass\":\"CInlineAction\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/actions\\/CInlineAction.php\",\"line\":47,\"class\":\"CAction\",\"method\":\"runWithParamsInternal\",\"args\":\"Craft\\\\TemplatesController, ReflectionMethod, array(\\\"p\\\" => \\\"nieuws\\/content-builder-2-0\\\", \\\"variables\\\" => array(\\\"entry\\\" => Craft\\\\EntryModel), \\\"template\\\" => \\\"_news\\/_entry\\\")\"},{\"objectClass\":\"CInlineAction\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/CController.php\",\"line\":308,\"class\":\"CInlineAction\",\"method\":\"runWithParams\",\"args\":\"array(\\\"p\\\" => \\\"nieuws\\/content-builder-2-0\\\", \\\"variables\\\" => array(\\\"entry\\\" => Craft\\\\EntryModel), \\\"template\\\" => \\\"_news\\/_entry\\\")\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/CController.php\",\"line\":286,\"class\":\"CController\",\"method\":\"runAction\",\"args\":\"CInlineAction\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/CController.php\",\"line\":265,\"class\":\"CController\",\"method\":\"runActionWithFilters\",\"args\":\"CInlineAction, array()\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/CWebApplication.php\",\"line\":282,\"class\":\"CController\",\"method\":\"run\",\"args\":\"\\\"render\\\"\"},{\"objectClass\":\"Craft\\\\WebApp\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/CWebApplication.php\",\"line\":141,\"class\":\"CWebApplication\",\"method\":\"runController\",\"args\":\"\\\"templates\\/render\\\"\"},{\"objectClass\":\"Craft\\\\WebApp\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/etc\\/web\\/WebApp.php\",\"line\":290,\"class\":\"CWebApplication\",\"method\":\"processRequest\",\"args\":null},{\"objectClass\":\"Craft\\\\WebApp\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/base\\/CApplication.php\",\"line\":185,\"class\":\"Craft\\\\WebApp\",\"method\":\"processRequest\",\"args\":null},{\"objectClass\":\"Craft\\\\WebApp\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/index.php\",\"line\":73,\"class\":\"CApplication\",\"method\":\"run\",\"args\":null},{\"objectClass\":null,\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/public\\/index.php\",\"line\":20,\"class\":null,\"method\":\"require_once\",\"args\":\"\\\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/index.php\\\"\"}]','2018-05-31 10:06:47','2018-06-01 09:45:29','a893b022-73d4-429a-b09d-f14a53602e83'),
	(40,'element_old_relation_params','/Users/jhenckens/Sites/crabas/craft/templates/_news/_entry.twig:13','2018-06-01 09:46:54','/Users/jhenckens/Sites/crabas/craft/app/services/ElementsService.php',825,'Craft\\ElementsService','buildElementsQuery','/Users/jhenckens/Sites/crabas/craft/templates/_news/_entry.twig',13,'The ‘childOf’, ‘childField’, ‘parentOf’, and ‘parentField’ element params have been deprecated. Use ‘relatedTo’ instead.','[{\"objectClass\":\"Craft\\\\DeprecatorService\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/services\\/ElementsService.php\",\"line\":825,\"class\":\"Craft\\\\DeprecatorService\",\"method\":\"log\",\"args\":\"\\\"element_old_relation_params\\\", \\\"The \\u2018childOf\\u2019, \\u2018childField\\u2019, \\u2018parentOf\\u2019, and \\u2018pare...\\\"\"},{\"objectClass\":\"Craft\\\\ElementsService\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/services\\/ElementsService.php\",\"line\":542,\"class\":\"Craft\\\\ElementsService\",\"method\":\"buildElementsQuery\",\"args\":\"Craft\\\\ElementCriteriaModel, \\\"content\\\", array(array(\\\"handle\\\" => \\\"facebook\\\", \\\"column\\\" => \\\"field_facebook\\\"), array(\\\"handle\\\" => \\\"instagram\\\", \\\"column\\\" => \\\"field_instagram\\\"), array(\\\"handle\\\" => \\\"intro\\\", \\\"column\\\" => \\\"field_intro\\\"), array(\\\"handle\\\" => \\\"linkedin\\\", \\\"column\\\" => \\\"field_linkedin\\\")), true\"},{\"objectClass\":\"Craft\\\\ElementsService\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/models\\/ElementCriteriaModel.php\",\"line\":385,\"class\":\"Craft\\\\ElementsService\",\"method\":\"getTotalElements\",\"args\":\"Craft\\\\ElementCriteriaModel\"},{\"objectClass\":\"Craft\\\\ElementCriteriaModel\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/models\\/ElementCriteriaModel.php\",\"line\":174,\"class\":\"Craft\\\\ElementCriteriaModel\",\"method\":\"total\",\"args\":null},{\"objectClass\":\"Craft\\\\ElementCriteriaModel\",\"file\":null,\"line\":null,\"class\":\"Craft\\\\ElementCriteriaModel\",\"method\":\"count\",\"args\":null},{\"objectClass\":null,\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Extension\\/Core.php\",\"line\":1271,\"class\":null,\"method\":\"count\",\"args\":\"Craft\\\\ElementCriteriaModel\"},{\"objectClass\":null,\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/storage\\/runtime\\/compiled_templates\\/50\\/500995e6a8fae159efd282cb5278e122f35453574ca2a63fecb33c3db6a7f91c.php\",\"line\":58,\"class\":null,\"method\":\"twig_length_filter\",\"args\":\"Craft\\\\TwigEnvironment, Craft\\\\ElementCriteriaModel\"},{\"objectClass\":\"__TwigTemplate_2b06aeae502c9ee4f22bf65b03651ae5b93d208ab5b841ed1ed4268226013340\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":432,\"class\":\"__TwigTemplate_2b06aeae502c9ee4f22bf65b03651ae5b93d208ab5b841ed1ed4268226013340\",\"method\":\"doDisplay\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_2b06aeae502c9ee4f22bf65b03651ae5b93d208ab5b841ed1ed4268226013340\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/etc\\/templating\\/BaseTemplate.php\",\"line\":26,\"class\":\"Twig_Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_2b06aeae502c9ee4f22bf65b03651ae5b93d208ab5b841ed1ed4268226013340\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":403,\"class\":\"Craft\\\\BaseTemplate\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_2b06aeae502c9ee4f22bf65b03651ae5b93d208ab5b841ed1ed4268226013340\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/storage\\/runtime\\/compiled_templates\\/25\\/25e38e8dc42c508f0ac3ff905cad23296b291619542d09172c11353a2543acfe.php\",\"line\":43,\"class\":\"Twig_Template\",\"method\":\"display\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable)\",\"template\":\"_snippet\\/_content\\/_block\\/_overview\",\"templateLine\":13},{\"objectClass\":\"__TwigTemplate_2745981870ad262b18fb2406006c98023a6bd2e7d909fd7e5f5696f0be106e2d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":432,\"class\":\"__TwigTemplate_2745981870ad262b18fb2406006c98023a6bd2e7d909fd7e5f5696f0be106e2d\",\"method\":\"doDisplay\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_2745981870ad262b18fb2406006c98023a6bd2e7d909fd7e5f5696f0be106e2d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/etc\\/templating\\/BaseTemplate.php\",\"line\":26,\"class\":\"Twig_Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_2745981870ad262b18fb2406006c98023a6bd2e7d909fd7e5f5696f0be106e2d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":403,\"class\":\"Craft\\\\BaseTemplate\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_2745981870ad262b18fb2406006c98023a6bd2e7d909fd7e5f5696f0be106e2d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/storage\\/runtime\\/compiled_templates\\/f0\\/f07bda5415cc673083735ec23258e6675bd6f32162167bdcc9e28b80880c097b.php\",\"line\":65,\"class\":\"Twig_Template\",\"method\":\"display\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable)\",\"template\":\"_snippet\\/_content\\/_contentBuilder\",\"templateLine\":7},{\"objectClass\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":215,\"class\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"method\":\"block_content\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"dataComponents\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_dataComponents\\\"), \\\"breadcrumbs\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_breadcrumbs\\\"), \\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/storage\\/runtime\\/compiled_templates\\/68\\/683b0cfa533368bf4382b3bb7a67fd3ad9d28a45d8cf04cfec2f77dc0ff4c80b.php\",\"line\":126,\"class\":\"Twig_Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"dataComponents\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_dataComponents\\\"), \\\"breadcrumbs\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_breadcrumbs\\\"), \\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\",\"template\":\"_layout\",\"templateLine\":52},{\"objectClass\":\"__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":432,\"class\":\"__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde\",\"method\":\"doDisplay\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"dataComponents\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_dataComponents\\\"), \\\"breadcrumbs\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_breadcrumbs\\\"), \\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/etc\\/templating\\/BaseTemplate.php\",\"line\":26,\"class\":\"Twig_Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"dataComponents\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_dataComponents\\\"), \\\"breadcrumbs\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_breadcrumbs\\\"), \\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":403,\"class\":\"Craft\\\\BaseTemplate\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"dataComponents\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_dataComponents\\\"), \\\"breadcrumbs\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_breadcrumbs\\\"), \\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/storage\\/runtime\\/compiled_templates\\/f0\\/f07bda5415cc673083735ec23258e6675bd6f32162167bdcc9e28b80880c097b.php\",\"line\":31,\"class\":\"Twig_Template\",\"method\":\"display\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\",\"template\":\"_layout\",\"templateLine\":5},{\"objectClass\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":432,\"class\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"method\":\"doDisplay\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/etc\\/templating\\/BaseTemplate.php\",\"line\":26,\"class\":\"Twig_Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":403,\"class\":\"Craft\\\\BaseTemplate\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":411,\"class\":\"Twig_Template\",\"method\":\"display\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Environment.php\",\"line\":363,\"class\":\"Twig_Template\",\"method\":\"render\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"Craft\\\\TwigEnvironment\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/services\\/TemplatesService.php\",\"line\":256,\"class\":\"Twig_Environment\",\"method\":\"render\",\"args\":\"\\\"_news\\/_entry\\\", array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"Craft\\\\TemplatesService\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/controllers\\/BaseController.php\",\"line\":74,\"class\":\"Craft\\\\TemplatesService\",\"method\":\"render\",\"args\":\"\\\"_news\\/_entry\\\", array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/controllers\\/TemplatesController.php\",\"line\":68,\"class\":\"Craft\\\\BaseController\",\"method\":\"renderTemplate\",\"args\":\"\\\"_news\\/_entry\\\", array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"Craft\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"_news\\/_entry\\\", array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"ReflectionMethod\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/actions\\/CAction.php\",\"line\":109,\"class\":\"ReflectionMethod\",\"method\":\"invokeArgs\",\"args\":\"Craft\\\\TemplatesController, array(\\\"_news\\/_entry\\\", array(\\\"entry\\\" => Craft\\\\EntryModel))\"},{\"objectClass\":\"CInlineAction\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/actions\\/CInlineAction.php\",\"line\":47,\"class\":\"CAction\",\"method\":\"runWithParamsInternal\",\"args\":\"Craft\\\\TemplatesController, ReflectionMethod, array(\\\"p\\\" => \\\"nieuws\\/content-builder-2-0\\\", \\\"variables\\\" => array(\\\"entry\\\" => Craft\\\\EntryModel), \\\"template\\\" => \\\"_news\\/_entry\\\")\"},{\"objectClass\":\"CInlineAction\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/CController.php\",\"line\":308,\"class\":\"CInlineAction\",\"method\":\"runWithParams\",\"args\":\"array(\\\"p\\\" => \\\"nieuws\\/content-builder-2-0\\\", \\\"variables\\\" => array(\\\"entry\\\" => Craft\\\\EntryModel), \\\"template\\\" => \\\"_news\\/_entry\\\")\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/CController.php\",\"line\":286,\"class\":\"CController\",\"method\":\"runAction\",\"args\":\"CInlineAction\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/CController.php\",\"line\":265,\"class\":\"CController\",\"method\":\"runActionWithFilters\",\"args\":\"CInlineAction, array()\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/CWebApplication.php\",\"line\":282,\"class\":\"CController\",\"method\":\"run\",\"args\":\"\\\"render\\\"\"},{\"objectClass\":\"Craft\\\\WebApp\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/CWebApplication.php\",\"line\":141,\"class\":\"CWebApplication\",\"method\":\"runController\",\"args\":\"\\\"templates\\/render\\\"\"},{\"objectClass\":\"Craft\\\\WebApp\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/etc\\/web\\/WebApp.php\",\"line\":290,\"class\":\"CWebApplication\",\"method\":\"processRequest\",\"args\":null},{\"objectClass\":\"Craft\\\\WebApp\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/base\\/CApplication.php\",\"line\":185,\"class\":\"Craft\\\\WebApp\",\"method\":\"processRequest\",\"args\":null},{\"objectClass\":\"Craft\\\\WebApp\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/index.php\",\"line\":73,\"class\":\"CApplication\",\"method\":\"run\",\"args\":null},{\"objectClass\":null,\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/public\\/index.php\",\"line\":20,\"class\":null,\"method\":\"require_once\",\"args\":\"\\\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/index.php\\\"\"}]','2018-06-01 09:46:00','2018-06-01 09:46:54','1ad21cc4-97f6-4385-ac0c-e629d3c5931e'),
	(44,'element_old_relation_params','/Users/jhenckens/Sites/crabas/craft/templates/_news/_entry.twig:14','2018-06-06 11:38:06','/Users/jhenckens/Sites/crabas/craft/app/services/ElementsService.php',825,'Craft\\ElementsService','buildElementsQuery','/Users/jhenckens/Sites/crabas/craft/templates/_news/_entry.twig',14,'The ‘childOf’, ‘childField’, ‘parentOf’, and ‘parentField’ element params have been deprecated. Use ‘relatedTo’ instead.','[{\"objectClass\":\"Craft\\\\DeprecatorService\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/services\\/ElementsService.php\",\"line\":825,\"class\":\"Craft\\\\DeprecatorService\",\"method\":\"log\",\"args\":\"\\\"element_old_relation_params\\\", \\\"The \\u2018childOf\\u2019, \\u2018childField\\u2019, \\u2018parentOf\\u2019, and \\u2018pare...\\\"\"},{\"objectClass\":\"Craft\\\\ElementsService\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/services\\/ElementsService.php\",\"line\":542,\"class\":\"Craft\\\\ElementsService\",\"method\":\"buildElementsQuery\",\"args\":\"Craft\\\\ElementCriteriaModel, \\\"content\\\", array(array(\\\"handle\\\" => \\\"facebook\\\", \\\"column\\\" => \\\"field_facebook\\\"), array(\\\"handle\\\" => \\\"instagram\\\", \\\"column\\\" => \\\"field_instagram\\\"), array(\\\"handle\\\" => \\\"intro\\\", \\\"column\\\" => \\\"field_intro\\\"), array(\\\"handle\\\" => \\\"linkedin\\\", \\\"column\\\" => \\\"field_linkedin\\\")), true\"},{\"objectClass\":\"Craft\\\\ElementsService\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/models\\/ElementCriteriaModel.php\",\"line\":392,\"class\":\"Craft\\\\ElementsService\",\"method\":\"getTotalElements\",\"args\":\"Craft\\\\ElementCriteriaModel\"},{\"objectClass\":\"Craft\\\\ElementCriteriaModel\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/models\\/ElementCriteriaModel.php\",\"line\":174,\"class\":\"Craft\\\\ElementCriteriaModel\",\"method\":\"total\",\"args\":null},{\"objectClass\":\"Craft\\\\ElementCriteriaModel\",\"file\":null,\"line\":null,\"class\":\"Craft\\\\ElementCriteriaModel\",\"method\":\"count\",\"args\":null},{\"objectClass\":null,\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Extension\\/Core.php\",\"line\":1271,\"class\":null,\"method\":\"count\",\"args\":\"Craft\\\\ElementCriteriaModel\"},{\"objectClass\":null,\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/storage\\/runtime\\/compiled_templates\\/50\\/500995e6a8fae159efd282cb5278e122f35453574ca2a63fecb33c3db6a7f91c.php\",\"line\":58,\"class\":null,\"method\":\"twig_length_filter\",\"args\":\"Craft\\\\TwigEnvironment, Craft\\\\ElementCriteriaModel\"},{\"objectClass\":\"__TwigTemplate_2b06aeae502c9ee4f22bf65b03651ae5b93d208ab5b841ed1ed4268226013340\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":432,\"class\":\"__TwigTemplate_2b06aeae502c9ee4f22bf65b03651ae5b93d208ab5b841ed1ed4268226013340\",\"method\":\"doDisplay\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_2b06aeae502c9ee4f22bf65b03651ae5b93d208ab5b841ed1ed4268226013340\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/etc\\/templating\\/BaseTemplate.php\",\"line\":26,\"class\":\"Twig_Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_2b06aeae502c9ee4f22bf65b03651ae5b93d208ab5b841ed1ed4268226013340\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":403,\"class\":\"Craft\\\\BaseTemplate\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_2b06aeae502c9ee4f22bf65b03651ae5b93d208ab5b841ed1ed4268226013340\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/storage\\/runtime\\/compiled_templates\\/25\\/25e38e8dc42c508f0ac3ff905cad23296b291619542d09172c11353a2543acfe.php\",\"line\":49,\"class\":\"Twig_Template\",\"method\":\"display\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable)\",\"template\":\"_snippet\\/_content\\/_block\\/_overview\",\"templateLine\":14},{\"objectClass\":\"__TwigTemplate_2745981870ad262b18fb2406006c98023a6bd2e7d909fd7e5f5696f0be106e2d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":432,\"class\":\"__TwigTemplate_2745981870ad262b18fb2406006c98023a6bd2e7d909fd7e5f5696f0be106e2d\",\"method\":\"doDisplay\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_2745981870ad262b18fb2406006c98023a6bd2e7d909fd7e5f5696f0be106e2d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/etc\\/templating\\/BaseTemplate.php\",\"line\":26,\"class\":\"Twig_Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_2745981870ad262b18fb2406006c98023a6bd2e7d909fd7e5f5696f0be106e2d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":403,\"class\":\"Craft\\\\BaseTemplate\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_2745981870ad262b18fb2406006c98023a6bd2e7d909fd7e5f5696f0be106e2d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/storage\\/runtime\\/compiled_templates\\/f0\\/f07bda5415cc673083735ec23258e6675bd6f32162167bdcc9e28b80880c097b.php\",\"line\":65,\"class\":\"Twig_Template\",\"method\":\"display\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable)\",\"template\":\"_snippet\\/_content\\/_contentBuilder\",\"templateLine\":10},{\"objectClass\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":215,\"class\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"method\":\"block_content\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"dataComponents\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_dataComponents\\\"), \\\"breadcrumbs\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_breadcrumbs\\\"), \\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/storage\\/runtime\\/compiled_templates\\/68\\/683b0cfa533368bf4382b3bb7a67fd3ad9d28a45d8cf04cfec2f77dc0ff4c80b.php\",\"line\":126,\"class\":\"Twig_Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"dataComponents\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_dataComponents\\\"), \\\"breadcrumbs\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_breadcrumbs\\\"), \\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\",\"template\":\"_layout\",\"templateLine\":52},{\"objectClass\":\"__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":432,\"class\":\"__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde\",\"method\":\"doDisplay\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"dataComponents\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_dataComponents\\\"), \\\"breadcrumbs\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_breadcrumbs\\\"), \\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/etc\\/templating\\/BaseTemplate.php\",\"line\":26,\"class\":\"Twig_Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"dataComponents\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_dataComponents\\\"), \\\"breadcrumbs\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_breadcrumbs\\\"), \\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":403,\"class\":\"Craft\\\\BaseTemplate\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"dataComponents\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_dataComponents\\\"), \\\"breadcrumbs\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_breadcrumbs\\\"), \\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/storage\\/runtime\\/compiled_templates\\/f0\\/f07bda5415cc673083735ec23258e6675bd6f32162167bdcc9e28b80880c097b.php\",\"line\":31,\"class\":\"Twig_Template\",\"method\":\"display\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\",\"template\":\"_layout\",\"templateLine\":5},{\"objectClass\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":432,\"class\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"method\":\"doDisplay\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/etc\\/templating\\/BaseTemplate.php\",\"line\":26,\"class\":\"Twig_Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":403,\"class\":\"Craft\\\\BaseTemplate\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":411,\"class\":\"Twig_Template\",\"method\":\"display\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Environment.php\",\"line\":363,\"class\":\"Twig_Template\",\"method\":\"render\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"Craft\\\\TwigEnvironment\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/services\\/TemplatesService.php\",\"line\":256,\"class\":\"Twig_Environment\",\"method\":\"render\",\"args\":\"\\\"_news\\/_entry\\\", array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"Craft\\\\TemplatesService\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/controllers\\/BaseController.php\",\"line\":74,\"class\":\"Craft\\\\TemplatesService\",\"method\":\"render\",\"args\":\"\\\"_news\\/_entry\\\", array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/controllers\\/TemplatesController.php\",\"line\":68,\"class\":\"Craft\\\\BaseController\",\"method\":\"renderTemplate\",\"args\":\"\\\"_news\\/_entry\\\", array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"Craft\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"_news\\/_entry\\\", array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"ReflectionMethod\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/actions\\/CAction.php\",\"line\":109,\"class\":\"ReflectionMethod\",\"method\":\"invokeArgs\",\"args\":\"Craft\\\\TemplatesController, array(\\\"_news\\/_entry\\\", array(\\\"entry\\\" => Craft\\\\EntryModel))\"},{\"objectClass\":\"CInlineAction\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/actions\\/CInlineAction.php\",\"line\":47,\"class\":\"CAction\",\"method\":\"runWithParamsInternal\",\"args\":\"Craft\\\\TemplatesController, ReflectionMethod, array(\\\"p\\\" => \\\"nieuws\\/content-builder-2-0\\\", \\\"variables\\\" => array(\\\"entry\\\" => Craft\\\\EntryModel), \\\"template\\\" => \\\"_news\\/_entry\\\")\"},{\"objectClass\":\"CInlineAction\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/CController.php\",\"line\":308,\"class\":\"CInlineAction\",\"method\":\"runWithParams\",\"args\":\"array(\\\"p\\\" => \\\"nieuws\\/content-builder-2-0\\\", \\\"variables\\\" => array(\\\"entry\\\" => Craft\\\\EntryModel), \\\"template\\\" => \\\"_news\\/_entry\\\")\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/CController.php\",\"line\":286,\"class\":\"CController\",\"method\":\"runAction\",\"args\":\"CInlineAction\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/CController.php\",\"line\":265,\"class\":\"CController\",\"method\":\"runActionWithFilters\",\"args\":\"CInlineAction, array()\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/CWebApplication.php\",\"line\":282,\"class\":\"CController\",\"method\":\"run\",\"args\":\"\\\"render\\\"\"},{\"objectClass\":\"Craft\\\\WebApp\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/CWebApplication.php\",\"line\":141,\"class\":\"CWebApplication\",\"method\":\"runController\",\"args\":\"\\\"templates\\/render\\\"\"},{\"objectClass\":\"Craft\\\\WebApp\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/etc\\/web\\/WebApp.php\",\"line\":290,\"class\":\"CWebApplication\",\"method\":\"processRequest\",\"args\":null},{\"objectClass\":\"Craft\\\\WebApp\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/base\\/CApplication.php\",\"line\":185,\"class\":\"Craft\\\\WebApp\",\"method\":\"processRequest\",\"args\":null},{\"objectClass\":\"Craft\\\\WebApp\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/index.php\",\"line\":73,\"class\":\"CApplication\",\"method\":\"run\",\"args\":null},{\"objectClass\":null,\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/public\\/index.php\",\"line\":20,\"class\":null,\"method\":\"require_once\",\"args\":\"\\\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/index.php\\\"\"}]','2018-06-01 09:47:24','2018-06-06 11:38:06','f212b580-9305-46ee-a130-1eaf9e593178'),
	(46,'element_old_relation_params','/Users/jhenckens/Sites/crabas/craft/templates/_news/_entry.twig:18','2018-06-01 13:36:32','/Users/jhenckens/Sites/crabas/craft/app/services/ElementsService.php',825,'Craft\\ElementsService','buildElementsQuery','/Users/jhenckens/Sites/crabas/craft/templates/_news/_entry.twig',18,'The ‘childOf’, ‘childField’, ‘parentOf’, and ‘parentField’ element params have been deprecated. Use ‘relatedTo’ instead.','[{\"objectClass\":\"Craft\\\\DeprecatorService\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/services\\/ElementsService.php\",\"line\":825,\"class\":\"Craft\\\\DeprecatorService\",\"method\":\"log\",\"args\":\"\\\"element_old_relation_params\\\", \\\"The \\u2018childOf\\u2019, \\u2018childField\\u2019, \\u2018parentOf\\u2019, and \\u2018pare...\\\"\"},{\"objectClass\":\"Craft\\\\ElementsService\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/services\\/ElementsService.php\",\"line\":542,\"class\":\"Craft\\\\ElementsService\",\"method\":\"buildElementsQuery\",\"args\":\"Craft\\\\ElementCriteriaModel, \\\"content\\\", array(array(\\\"handle\\\" => \\\"facebook\\\", \\\"column\\\" => \\\"field_facebook\\\"), array(\\\"handle\\\" => \\\"instagram\\\", \\\"column\\\" => \\\"field_instagram\\\"), array(\\\"handle\\\" => \\\"intro\\\", \\\"column\\\" => \\\"field_intro\\\"), array(\\\"handle\\\" => \\\"linkedin\\\", \\\"column\\\" => \\\"field_linkedin\\\")), true\"},{\"objectClass\":\"Craft\\\\ElementsService\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/models\\/ElementCriteriaModel.php\",\"line\":385,\"class\":\"Craft\\\\ElementsService\",\"method\":\"getTotalElements\",\"args\":\"Craft\\\\ElementCriteriaModel\"},{\"objectClass\":\"Craft\\\\ElementCriteriaModel\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/models\\/ElementCriteriaModel.php\",\"line\":174,\"class\":\"Craft\\\\ElementCriteriaModel\",\"method\":\"total\",\"args\":null},{\"objectClass\":\"Craft\\\\ElementCriteriaModel\",\"file\":null,\"line\":null,\"class\":\"Craft\\\\ElementCriteriaModel\",\"method\":\"count\",\"args\":null},{\"objectClass\":null,\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Extension\\/Core.php\",\"line\":1271,\"class\":null,\"method\":\"count\",\"args\":\"Craft\\\\ElementCriteriaModel\"},{\"objectClass\":null,\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/storage\\/runtime\\/compiled_templates\\/50\\/500995e6a8fae159efd282cb5278e122f35453574ca2a63fecb33c3db6a7f91c.php\",\"line\":58,\"class\":null,\"method\":\"twig_length_filter\",\"args\":\"Craft\\\\TwigEnvironment, Craft\\\\ElementCriteriaModel\"},{\"objectClass\":\"__TwigTemplate_2b06aeae502c9ee4f22bf65b03651ae5b93d208ab5b841ed1ed4268226013340\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":432,\"class\":\"__TwigTemplate_2b06aeae502c9ee4f22bf65b03651ae5b93d208ab5b841ed1ed4268226013340\",\"method\":\"doDisplay\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => null, \\\"currentUser\\\" => null, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_2b06aeae502c9ee4f22bf65b03651ae5b93d208ab5b841ed1ed4268226013340\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/etc\\/templating\\/BaseTemplate.php\",\"line\":26,\"class\":\"Twig_Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => null, \\\"currentUser\\\" => null, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_2b06aeae502c9ee4f22bf65b03651ae5b93d208ab5b841ed1ed4268226013340\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":403,\"class\":\"Craft\\\\BaseTemplate\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => null, \\\"currentUser\\\" => null, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_2b06aeae502c9ee4f22bf65b03651ae5b93d208ab5b841ed1ed4268226013340\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/storage\\/runtime\\/compiled_templates\\/25\\/25e38e8dc42c508f0ac3ff905cad23296b291619542d09172c11353a2543acfe.php\",\"line\":62,\"class\":\"Twig_Template\",\"method\":\"display\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => null, \\\"currentUser\\\" => null, \\\"craft\\\" => Craft\\\\CraftVariable)\",\"template\":\"_snippet\\/_content\\/_block\\/_overview\",\"templateLine\":18},{\"objectClass\":\"__TwigTemplate_2745981870ad262b18fb2406006c98023a6bd2e7d909fd7e5f5696f0be106e2d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":432,\"class\":\"__TwigTemplate_2745981870ad262b18fb2406006c98023a6bd2e7d909fd7e5f5696f0be106e2d\",\"method\":\"doDisplay\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => null, \\\"currentUser\\\" => null, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_2745981870ad262b18fb2406006c98023a6bd2e7d909fd7e5f5696f0be106e2d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/etc\\/templating\\/BaseTemplate.php\",\"line\":26,\"class\":\"Twig_Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => null, \\\"currentUser\\\" => null, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_2745981870ad262b18fb2406006c98023a6bd2e7d909fd7e5f5696f0be106e2d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":403,\"class\":\"Craft\\\\BaseTemplate\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => null, \\\"currentUser\\\" => null, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_2745981870ad262b18fb2406006c98023a6bd2e7d909fd7e5f5696f0be106e2d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/storage\\/runtime\\/compiled_templates\\/f0\\/f07bda5415cc673083735ec23258e6675bd6f32162167bdcc9e28b80880c097b.php\",\"line\":62,\"class\":\"Twig_Template\",\"method\":\"display\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => null, \\\"currentUser\\\" => null, \\\"craft\\\" => Craft\\\\CraftVariable)\",\"template\":\"_snippet\\/_content\\/_contentBuilder\",\"templateLine\":15},{\"objectClass\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":215,\"class\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"method\":\"block_content\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => null, \\\"currentUser\\\" => null, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"dataComponents\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_dataComponents\\\"), \\\"breadcrumbs\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_breadcrumbs\\\"), \\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/storage\\/runtime\\/compiled_templates\\/68\\/683b0cfa533368bf4382b3bb7a67fd3ad9d28a45d8cf04cfec2f77dc0ff4c80b.php\",\"line\":126,\"class\":\"Twig_Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => null, \\\"currentUser\\\" => null, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"dataComponents\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_dataComponents\\\"), \\\"breadcrumbs\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_breadcrumbs\\\"), \\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\",\"template\":\"_layout\",\"templateLine\":52},{\"objectClass\":\"__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":432,\"class\":\"__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde\",\"method\":\"doDisplay\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => null, \\\"currentUser\\\" => null, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"dataComponents\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_dataComponents\\\"), \\\"breadcrumbs\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_breadcrumbs\\\"), \\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/etc\\/templating\\/BaseTemplate.php\",\"line\":26,\"class\":\"Twig_Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => null, \\\"currentUser\\\" => null, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"dataComponents\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_dataComponents\\\"), \\\"breadcrumbs\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_breadcrumbs\\\"), \\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":403,\"class\":\"Craft\\\\BaseTemplate\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => null, \\\"currentUser\\\" => null, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"dataComponents\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_dataComponents\\\"), \\\"breadcrumbs\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_breadcrumbs\\\"), \\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/storage\\/runtime\\/compiled_templates\\/f0\\/f07bda5415cc673083735ec23258e6675bd6f32162167bdcc9e28b80880c097b.php\",\"line\":31,\"class\":\"Twig_Template\",\"method\":\"display\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => null, \\\"currentUser\\\" => null, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\",\"template\":\"_layout\",\"templateLine\":5},{\"objectClass\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":432,\"class\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"method\":\"doDisplay\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => null, \\\"currentUser\\\" => null, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/etc\\/templating\\/BaseTemplate.php\",\"line\":26,\"class\":\"Twig_Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => null, \\\"currentUser\\\" => null, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":403,\"class\":\"Craft\\\\BaseTemplate\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => null, \\\"currentUser\\\" => null, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":411,\"class\":\"Twig_Template\",\"method\":\"display\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Environment.php\",\"line\":363,\"class\":\"Twig_Template\",\"method\":\"render\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"Craft\\\\TwigEnvironment\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/services\\/TemplatesService.php\",\"line\":256,\"class\":\"Twig_Environment\",\"method\":\"render\",\"args\":\"\\\"_news\\/_entry\\\", array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"Craft\\\\TemplatesService\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/controllers\\/BaseController.php\",\"line\":74,\"class\":\"Craft\\\\TemplatesService\",\"method\":\"render\",\"args\":\"\\\"_news\\/_entry\\\", array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/controllers\\/TemplatesController.php\",\"line\":68,\"class\":\"Craft\\\\BaseController\",\"method\":\"renderTemplate\",\"args\":\"\\\"_news\\/_entry\\\", array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"Craft\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"_news\\/_entry\\\", array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"ReflectionMethod\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/actions\\/CAction.php\",\"line\":109,\"class\":\"ReflectionMethod\",\"method\":\"invokeArgs\",\"args\":\"Craft\\\\TemplatesController, array(\\\"_news\\/_entry\\\", array(\\\"entry\\\" => Craft\\\\EntryModel))\"},{\"objectClass\":\"CInlineAction\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/actions\\/CInlineAction.php\",\"line\":47,\"class\":\"CAction\",\"method\":\"runWithParamsInternal\",\"args\":\"Craft\\\\TemplatesController, ReflectionMethod, array(\\\"p\\\" => \\\"nieuws\\/content-builder-2-0\\\", \\\"variables\\\" => array(\\\"entry\\\" => Craft\\\\EntryModel), \\\"template\\\" => \\\"_news\\/_entry\\\")\"},{\"objectClass\":\"CInlineAction\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/CController.php\",\"line\":308,\"class\":\"CInlineAction\",\"method\":\"runWithParams\",\"args\":\"array(\\\"p\\\" => \\\"nieuws\\/content-builder-2-0\\\", \\\"variables\\\" => array(\\\"entry\\\" => Craft\\\\EntryModel), \\\"template\\\" => \\\"_news\\/_entry\\\")\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/CController.php\",\"line\":286,\"class\":\"CController\",\"method\":\"runAction\",\"args\":\"CInlineAction\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/CController.php\",\"line\":265,\"class\":\"CController\",\"method\":\"runActionWithFilters\",\"args\":\"CInlineAction, array()\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/CWebApplication.php\",\"line\":282,\"class\":\"CController\",\"method\":\"run\",\"args\":\"\\\"render\\\"\"},{\"objectClass\":\"Craft\\\\WebApp\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/CWebApplication.php\",\"line\":141,\"class\":\"CWebApplication\",\"method\":\"runController\",\"args\":\"\\\"templates\\/render\\\"\"},{\"objectClass\":\"Craft\\\\WebApp\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/etc\\/web\\/WebApp.php\",\"line\":290,\"class\":\"CWebApplication\",\"method\":\"processRequest\",\"args\":null},{\"objectClass\":\"Craft\\\\WebApp\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/base\\/CApplication.php\",\"line\":185,\"class\":\"Craft\\\\WebApp\",\"method\":\"processRequest\",\"args\":null},{\"objectClass\":\"Craft\\\\WebApp\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/index.php\",\"line\":73,\"class\":\"CApplication\",\"method\":\"run\",\"args\":null},{\"objectClass\":null,\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/public\\/index.php\",\"line\":20,\"class\":null,\"method\":\"require_once\",\"args\":\"\\\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/index.php\\\"\"}]','2018-06-01 13:36:06','2018-06-01 13:36:32','62bdc475-04e5-4dc5-b872-0f9c96a65945'),
	(54,'element_old_relation_params','/Users/jhenckens/Sites/crabas/craft/templates/_news/_entry.twig:19','2018-06-01 13:38:18','/Users/jhenckens/Sites/crabas/craft/app/services/ElementsService.php',825,'Craft\\ElementsService','buildElementsQuery','/Users/jhenckens/Sites/crabas/craft/templates/_news/_entry.twig',19,'The ‘childOf’, ‘childField’, ‘parentOf’, and ‘parentField’ element params have been deprecated. Use ‘relatedTo’ instead.','[{\"objectClass\":\"Craft\\\\DeprecatorService\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/services\\/ElementsService.php\",\"line\":825,\"class\":\"Craft\\\\DeprecatorService\",\"method\":\"log\",\"args\":\"\\\"element_old_relation_params\\\", \\\"The \\u2018childOf\\u2019, \\u2018childField\\u2019, \\u2018parentOf\\u2019, and \\u2018pare...\\\"\"},{\"objectClass\":\"Craft\\\\ElementsService\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/services\\/ElementsService.php\",\"line\":542,\"class\":\"Craft\\\\ElementsService\",\"method\":\"buildElementsQuery\",\"args\":\"Craft\\\\ElementCriteriaModel, \\\"content\\\", array(array(\\\"handle\\\" => \\\"facebook\\\", \\\"column\\\" => \\\"field_facebook\\\"), array(\\\"handle\\\" => \\\"instagram\\\", \\\"column\\\" => \\\"field_instagram\\\"), array(\\\"handle\\\" => \\\"intro\\\", \\\"column\\\" => \\\"field_intro\\\"), array(\\\"handle\\\" => \\\"linkedin\\\", \\\"column\\\" => \\\"field_linkedin\\\")), true\"},{\"objectClass\":\"Craft\\\\ElementsService\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/models\\/ElementCriteriaModel.php\",\"line\":385,\"class\":\"Craft\\\\ElementsService\",\"method\":\"getTotalElements\",\"args\":\"Craft\\\\ElementCriteriaModel\"},{\"objectClass\":\"Craft\\\\ElementCriteriaModel\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/models\\/ElementCriteriaModel.php\",\"line\":174,\"class\":\"Craft\\\\ElementCriteriaModel\",\"method\":\"total\",\"args\":null},{\"objectClass\":\"Craft\\\\ElementCriteriaModel\",\"file\":null,\"line\":null,\"class\":\"Craft\\\\ElementCriteriaModel\",\"method\":\"count\",\"args\":null},{\"objectClass\":null,\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Extension\\/Core.php\",\"line\":1271,\"class\":null,\"method\":\"count\",\"args\":\"Craft\\\\ElementCriteriaModel\"},{\"objectClass\":null,\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/storage\\/runtime\\/compiled_templates\\/50\\/500995e6a8fae159efd282cb5278e122f35453574ca2a63fecb33c3db6a7f91c.php\",\"line\":58,\"class\":null,\"method\":\"twig_length_filter\",\"args\":\"Craft\\\\TwigEnvironment, Craft\\\\ElementCriteriaModel\"},{\"objectClass\":\"__TwigTemplate_2b06aeae502c9ee4f22bf65b03651ae5b93d208ab5b841ed1ed4268226013340\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":432,\"class\":\"__TwigTemplate_2b06aeae502c9ee4f22bf65b03651ae5b93d208ab5b841ed1ed4268226013340\",\"method\":\"doDisplay\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => null, \\\"currentUser\\\" => null, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_2b06aeae502c9ee4f22bf65b03651ae5b93d208ab5b841ed1ed4268226013340\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/etc\\/templating\\/BaseTemplate.php\",\"line\":26,\"class\":\"Twig_Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => null, \\\"currentUser\\\" => null, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_2b06aeae502c9ee4f22bf65b03651ae5b93d208ab5b841ed1ed4268226013340\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":403,\"class\":\"Craft\\\\BaseTemplate\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => null, \\\"currentUser\\\" => null, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_2b06aeae502c9ee4f22bf65b03651ae5b93d208ab5b841ed1ed4268226013340\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/storage\\/runtime\\/compiled_templates\\/25\\/25e38e8dc42c508f0ac3ff905cad23296b291619542d09172c11353a2543acfe.php\",\"line\":64,\"class\":\"Twig_Template\",\"method\":\"display\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => null, \\\"currentUser\\\" => null, \\\"craft\\\" => Craft\\\\CraftVariable)\",\"template\":\"_snippet\\/_content\\/_block\\/_overview\",\"templateLine\":19},{\"objectClass\":\"__TwigTemplate_2745981870ad262b18fb2406006c98023a6bd2e7d909fd7e5f5696f0be106e2d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":432,\"class\":\"__TwigTemplate_2745981870ad262b18fb2406006c98023a6bd2e7d909fd7e5f5696f0be106e2d\",\"method\":\"doDisplay\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => null, \\\"currentUser\\\" => null, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_2745981870ad262b18fb2406006c98023a6bd2e7d909fd7e5f5696f0be106e2d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/etc\\/templating\\/BaseTemplate.php\",\"line\":26,\"class\":\"Twig_Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => null, \\\"currentUser\\\" => null, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_2745981870ad262b18fb2406006c98023a6bd2e7d909fd7e5f5696f0be106e2d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":403,\"class\":\"Craft\\\\BaseTemplate\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => null, \\\"currentUser\\\" => null, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_2745981870ad262b18fb2406006c98023a6bd2e7d909fd7e5f5696f0be106e2d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/storage\\/runtime\\/compiled_templates\\/f0\\/f07bda5415cc673083735ec23258e6675bd6f32162167bdcc9e28b80880c097b.php\",\"line\":62,\"class\":\"Twig_Template\",\"method\":\"display\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => null, \\\"currentUser\\\" => null, \\\"craft\\\" => Craft\\\\CraftVariable)\",\"template\":\"_snippet\\/_content\\/_contentBuilder\",\"templateLine\":14},{\"objectClass\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":215,\"class\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"method\":\"block_content\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => null, \\\"currentUser\\\" => null, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"dataComponents\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_dataComponents\\\"), \\\"breadcrumbs\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_breadcrumbs\\\"), \\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/storage\\/runtime\\/compiled_templates\\/68\\/683b0cfa533368bf4382b3bb7a67fd3ad9d28a45d8cf04cfec2f77dc0ff4c80b.php\",\"line\":126,\"class\":\"Twig_Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => null, \\\"currentUser\\\" => null, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"dataComponents\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_dataComponents\\\"), \\\"breadcrumbs\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_breadcrumbs\\\"), \\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\",\"template\":\"_layout\",\"templateLine\":52},{\"objectClass\":\"__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":432,\"class\":\"__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde\",\"method\":\"doDisplay\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => null, \\\"currentUser\\\" => null, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"dataComponents\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_dataComponents\\\"), \\\"breadcrumbs\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_breadcrumbs\\\"), \\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/etc\\/templating\\/BaseTemplate.php\",\"line\":26,\"class\":\"Twig_Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => null, \\\"currentUser\\\" => null, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"dataComponents\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_dataComponents\\\"), \\\"breadcrumbs\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_breadcrumbs\\\"), \\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":403,\"class\":\"Craft\\\\BaseTemplate\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => null, \\\"currentUser\\\" => null, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"dataComponents\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_dataComponents\\\"), \\\"breadcrumbs\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_breadcrumbs\\\"), \\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/storage\\/runtime\\/compiled_templates\\/f0\\/f07bda5415cc673083735ec23258e6675bd6f32162167bdcc9e28b80880c097b.php\",\"line\":31,\"class\":\"Twig_Template\",\"method\":\"display\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => null, \\\"currentUser\\\" => null, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\",\"template\":\"_layout\",\"templateLine\":5},{\"objectClass\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":432,\"class\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"method\":\"doDisplay\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => null, \\\"currentUser\\\" => null, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/etc\\/templating\\/BaseTemplate.php\",\"line\":26,\"class\":\"Twig_Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => null, \\\"currentUser\\\" => null, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":403,\"class\":\"Craft\\\\BaseTemplate\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => null, \\\"currentUser\\\" => null, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":411,\"class\":\"Twig_Template\",\"method\":\"display\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Environment.php\",\"line\":363,\"class\":\"Twig_Template\",\"method\":\"render\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"Craft\\\\TwigEnvironment\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/services\\/TemplatesService.php\",\"line\":256,\"class\":\"Twig_Environment\",\"method\":\"render\",\"args\":\"\\\"_news\\/_entry\\\", array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"Craft\\\\TemplatesService\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/controllers\\/BaseController.php\",\"line\":74,\"class\":\"Craft\\\\TemplatesService\",\"method\":\"render\",\"args\":\"\\\"_news\\/_entry\\\", array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/controllers\\/TemplatesController.php\",\"line\":68,\"class\":\"Craft\\\\BaseController\",\"method\":\"renderTemplate\",\"args\":\"\\\"_news\\/_entry\\\", array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"Craft\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"_news\\/_entry\\\", array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"ReflectionMethod\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/actions\\/CAction.php\",\"line\":109,\"class\":\"ReflectionMethod\",\"method\":\"invokeArgs\",\"args\":\"Craft\\\\TemplatesController, array(\\\"_news\\/_entry\\\", array(\\\"entry\\\" => Craft\\\\EntryModel))\"},{\"objectClass\":\"CInlineAction\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/actions\\/CInlineAction.php\",\"line\":47,\"class\":\"CAction\",\"method\":\"runWithParamsInternal\",\"args\":\"Craft\\\\TemplatesController, ReflectionMethod, array(\\\"p\\\" => \\\"nieuws\\/content-builder-2-0\\\", \\\"variables\\\" => array(\\\"entry\\\" => Craft\\\\EntryModel), \\\"template\\\" => \\\"_news\\/_entry\\\")\"},{\"objectClass\":\"CInlineAction\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/CController.php\",\"line\":308,\"class\":\"CInlineAction\",\"method\":\"runWithParams\",\"args\":\"array(\\\"p\\\" => \\\"nieuws\\/content-builder-2-0\\\", \\\"variables\\\" => array(\\\"entry\\\" => Craft\\\\EntryModel), \\\"template\\\" => \\\"_news\\/_entry\\\")\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/CController.php\",\"line\":286,\"class\":\"CController\",\"method\":\"runAction\",\"args\":\"CInlineAction\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/CController.php\",\"line\":265,\"class\":\"CController\",\"method\":\"runActionWithFilters\",\"args\":\"CInlineAction, array()\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/CWebApplication.php\",\"line\":282,\"class\":\"CController\",\"method\":\"run\",\"args\":\"\\\"render\\\"\"},{\"objectClass\":\"Craft\\\\WebApp\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/CWebApplication.php\",\"line\":141,\"class\":\"CWebApplication\",\"method\":\"runController\",\"args\":\"\\\"templates\\/render\\\"\"},{\"objectClass\":\"Craft\\\\WebApp\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/etc\\/web\\/WebApp.php\",\"line\":290,\"class\":\"CWebApplication\",\"method\":\"processRequest\",\"args\":null},{\"objectClass\":\"Craft\\\\WebApp\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/base\\/CApplication.php\",\"line\":185,\"class\":\"Craft\\\\WebApp\",\"method\":\"processRequest\",\"args\":null},{\"objectClass\":\"Craft\\\\WebApp\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/index.php\",\"line\":73,\"class\":\"CApplication\",\"method\":\"run\",\"args\":null},{\"objectClass\":null,\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/public\\/index.php\",\"line\":20,\"class\":null,\"method\":\"require_once\",\"args\":\"\\\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/index.php\\\"\"}]','2018-06-01 13:37:41','2018-06-01 13:38:18','7fbe564f-fde2-4110-a461-57ccef760e8e'),
	(55,'BaseElementModel::getChildren()_for_relations','/Users/jhenckens/Sites/crabas/craft/templates/_news/_entry.twig:25','2018-06-07 14:18:01','/Users/jhenckens/Sites/crabas/craft/app/models/BaseElementModel.php',534,'Craft\\BaseElementModel','getChildren','/Users/jhenckens/Sites/crabas/craft/templates/_news/_entry.twig',25,'Calling getChildren() to fetch an element’s target relations has been deprecated. Use the <a href=\"http://craftcms.com/docs/relations#the-relatedTo-param\">relatedTo</a> param instead.','[{\"objectClass\":\"Craft\\\\DeprecatorService\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/models\\/BaseElementModel.php\",\"line\":534,\"class\":\"Craft\\\\DeprecatorService\",\"method\":\"log\",\"args\":\"\\\"BaseElementModel::getChildren()_for_relations\\\", \\\"Calling getChildren() to fetch an element\\u2019s target relations h...\\\"\"},{\"objectClass\":\"Craft\\\\EntryModel\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/base\\/CComponent.php\",\"line\":188,\"class\":\"Craft\\\\BaseElementModel\",\"method\":\"getChildren\",\"args\":null},{\"objectClass\":\"Craft\\\\EntryModel\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/models\\/BaseModel.php\",\"line\":153,\"class\":\"CComponent\",\"method\":\"__isset\",\"args\":\"\\\"children\\\"\"},{\"objectClass\":\"Craft\\\\EntryModel\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/models\\/BaseElementModel.php\",\"line\":118,\"class\":\"Craft\\\\BaseModel\",\"method\":\"__isset\",\"args\":\"\\\"children\\\"\"},{\"objectClass\":\"Craft\\\\EntryModel\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":580,\"class\":\"Craft\\\\BaseElementModel\",\"method\":\"__isset\",\"args\":\"\\\"children\\\"\"},{\"objectClass\":\"__TwigTemplate_2b06aeae502c9ee4f22bf65b03651ae5b93d208ab5b841ed1ed4268226013340\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/etc\\/templating\\/BaseTemplate.php\",\"line\":64,\"class\":\"Twig_Template\",\"method\":\"getAttribute\",\"args\":\"Craft\\\\EntryModel, \\\"children\\\", array(), \\\"any\\\"\"},{\"objectClass\":\"__TwigTemplate_2b06aeae502c9ee4f22bf65b03651ae5b93d208ab5b841ed1ed4268226013340\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/storage\\/runtime\\/compiled_templates\\/50\\/500995e6a8fae159efd282cb5278e122f35453574ca2a63fecb33c3db6a7f91c.php\",\"line\":78,\"class\":\"Craft\\\\BaseTemplate\",\"method\":\"getAttribute\",\"args\":\"Craft\\\\EntryModel, \\\"children\\\", array()\",\"template\":\"_snippet\\/_content\\/_block\\/_overview\",\"templateLine\":25},{\"objectClass\":\"__TwigTemplate_2b06aeae502c9ee4f22bf65b03651ae5b93d208ab5b841ed1ed4268226013340\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":432,\"class\":\"__TwigTemplate_2b06aeae502c9ee4f22bf65b03651ae5b93d208ab5b841ed1ed4268226013340\",\"method\":\"doDisplay\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_2b06aeae502c9ee4f22bf65b03651ae5b93d208ab5b841ed1ed4268226013340\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/etc\\/templating\\/BaseTemplate.php\",\"line\":26,\"class\":\"Twig_Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_2b06aeae502c9ee4f22bf65b03651ae5b93d208ab5b841ed1ed4268226013340\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":403,\"class\":\"Craft\\\\BaseTemplate\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_2b06aeae502c9ee4f22bf65b03651ae5b93d208ab5b841ed1ed4268226013340\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/storage\\/runtime\\/compiled_templates\\/25\\/25e38e8dc42c508f0ac3ff905cad23296b291619542d09172c11353a2543acfe.php\",\"line\":77,\"class\":\"Twig_Template\",\"method\":\"display\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable)\",\"template\":\"_snippet\\/_content\\/_block\\/_overview\",\"templateLine\":24},{\"objectClass\":\"__TwigTemplate_2745981870ad262b18fb2406006c98023a6bd2e7d909fd7e5f5696f0be106e2d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":432,\"class\":\"__TwigTemplate_2745981870ad262b18fb2406006c98023a6bd2e7d909fd7e5f5696f0be106e2d\",\"method\":\"doDisplay\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_2745981870ad262b18fb2406006c98023a6bd2e7d909fd7e5f5696f0be106e2d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/etc\\/templating\\/BaseTemplate.php\",\"line\":26,\"class\":\"Twig_Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_2745981870ad262b18fb2406006c98023a6bd2e7d909fd7e5f5696f0be106e2d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":403,\"class\":\"Craft\\\\BaseTemplate\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_2745981870ad262b18fb2406006c98023a6bd2e7d909fd7e5f5696f0be106e2d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/storage\\/runtime\\/compiled_templates\\/f0\\/f07bda5415cc673083735ec23258e6675bd6f32162167bdcc9e28b80880c097b.php\",\"line\":65,\"class\":\"Twig_Template\",\"method\":\"display\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable)\",\"template\":\"_snippet\\/_content\\/_contentBuilder\",\"templateLine\":13},{\"objectClass\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":215,\"class\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"method\":\"block_content\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"dataComponents\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_dataComponents\\\"), \\\"breadcrumbs\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_breadcrumbs\\\"), \\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/storage\\/runtime\\/compiled_templates\\/68\\/683b0cfa533368bf4382b3bb7a67fd3ad9d28a45d8cf04cfec2f77dc0ff4c80b.php\",\"line\":126,\"class\":\"Twig_Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"dataComponents\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_dataComponents\\\"), \\\"breadcrumbs\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_breadcrumbs\\\"), \\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\",\"template\":\"_layout\",\"templateLine\":52},{\"objectClass\":\"__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":432,\"class\":\"__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde\",\"method\":\"doDisplay\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"dataComponents\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_dataComponents\\\"), \\\"breadcrumbs\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_breadcrumbs\\\"), \\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/etc\\/templating\\/BaseTemplate.php\",\"line\":26,\"class\":\"Twig_Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"dataComponents\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_dataComponents\\\"), \\\"breadcrumbs\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_breadcrumbs\\\"), \\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":403,\"class\":\"Craft\\\\BaseTemplate\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"dataComponents\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_dataComponents\\\"), \\\"breadcrumbs\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_breadcrumbs\\\"), \\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/storage\\/runtime\\/compiled_templates\\/f0\\/f07bda5415cc673083735ec23258e6675bd6f32162167bdcc9e28b80880c097b.php\",\"line\":31,\"class\":\"Twig_Template\",\"method\":\"display\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\",\"template\":\"_layout\",\"templateLine\":5},{\"objectClass\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":432,\"class\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"method\":\"doDisplay\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/etc\\/templating\\/BaseTemplate.php\",\"line\":26,\"class\":\"Twig_Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":403,\"class\":\"Craft\\\\BaseTemplate\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":411,\"class\":\"Twig_Template\",\"method\":\"display\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Environment.php\",\"line\":363,\"class\":\"Twig_Template\",\"method\":\"render\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"Craft\\\\TwigEnvironment\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/services\\/TemplatesService.php\",\"line\":256,\"class\":\"Twig_Environment\",\"method\":\"render\",\"args\":\"\\\"_news\\/_entry\\\", array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"Craft\\\\TemplatesService\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/controllers\\/BaseController.php\",\"line\":74,\"class\":\"Craft\\\\TemplatesService\",\"method\":\"render\",\"args\":\"\\\"_news\\/_entry\\\", array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/controllers\\/TemplatesController.php\",\"line\":68,\"class\":\"Craft\\\\BaseController\",\"method\":\"renderTemplate\",\"args\":\"\\\"_news\\/_entry\\\", array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"Craft\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"_news\\/_entry\\\", array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"ReflectionMethod\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/actions\\/CAction.php\",\"line\":109,\"class\":\"ReflectionMethod\",\"method\":\"invokeArgs\",\"args\":\"Craft\\\\TemplatesController, array(\\\"_news\\/_entry\\\", array(\\\"entry\\\" => Craft\\\\EntryModel))\"},{\"objectClass\":\"CInlineAction\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/actions\\/CInlineAction.php\",\"line\":47,\"class\":\"CAction\",\"method\":\"runWithParamsInternal\",\"args\":\"Craft\\\\TemplatesController, ReflectionMethod, array(\\\"p\\\" => \\\"nieuws\\/content-builder-2-0\\\", \\\"variables\\\" => array(\\\"entry\\\" => Craft\\\\EntryModel), \\\"template\\\" => \\\"_news\\/_entry\\\")\"},{\"objectClass\":\"CInlineAction\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/CController.php\",\"line\":308,\"class\":\"CInlineAction\",\"method\":\"runWithParams\",\"args\":\"array(\\\"p\\\" => \\\"nieuws\\/content-builder-2-0\\\", \\\"variables\\\" => array(\\\"entry\\\" => Craft\\\\EntryModel), \\\"template\\\" => \\\"_news\\/_entry\\\")\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/CController.php\",\"line\":286,\"class\":\"CController\",\"method\":\"runAction\",\"args\":\"CInlineAction\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/CController.php\",\"line\":265,\"class\":\"CController\",\"method\":\"runActionWithFilters\",\"args\":\"CInlineAction, array()\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/CWebApplication.php\",\"line\":282,\"class\":\"CController\",\"method\":\"run\",\"args\":\"\\\"render\\\"\"},{\"objectClass\":\"Craft\\\\WebApp\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/CWebApplication.php\",\"line\":141,\"class\":\"CWebApplication\",\"method\":\"runController\",\"args\":\"\\\"templates\\/render\\\"\"},{\"objectClass\":\"Craft\\\\WebApp\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/etc\\/web\\/WebApp.php\",\"line\":290,\"class\":\"CWebApplication\",\"method\":\"processRequest\",\"args\":null},{\"objectClass\":\"Craft\\\\WebApp\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/base\\/CApplication.php\",\"line\":185,\"class\":\"Craft\\\\WebApp\",\"method\":\"processRequest\",\"args\":null},{\"objectClass\":\"Craft\\\\WebApp\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/index.php\",\"line\":73,\"class\":\"CApplication\",\"method\":\"run\",\"args\":null},{\"objectClass\":null,\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/public\\/index.php\",\"line\":20,\"class\":null,\"method\":\"require_once\",\"args\":\"\\\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/index.php\\\"\"}]','2018-06-07 14:04:18','2018-06-07 14:18:01','ce26aafa-d899-479d-950f-866326b48b2a'),
	(56,'element_old_relation_params','/Users/jhenckens/Sites/crabas/craft/templates/_news/_entry.twig:24','2018-06-07 14:18:01','/Users/jhenckens/Sites/crabas/craft/app/services/ElementsService.php',825,'Craft\\ElementsService','buildElementsQuery','/Users/jhenckens/Sites/crabas/craft/templates/_news/_entry.twig',24,'The ‘childOf’, ‘childField’, ‘parentOf’, and ‘parentField’ element params have been deprecated. Use ‘relatedTo’ instead.','[{\"objectClass\":\"Craft\\\\DeprecatorService\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/services\\/ElementsService.php\",\"line\":825,\"class\":\"Craft\\\\DeprecatorService\",\"method\":\"log\",\"args\":\"\\\"element_old_relation_params\\\", \\\"The \\u2018childOf\\u2019, \\u2018childField\\u2019, \\u2018parentOf\\u2019, and \\u2018pare...\\\"\"},{\"objectClass\":\"Craft\\\\ElementsService\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/services\\/ElementsService.php\",\"line\":542,\"class\":\"Craft\\\\ElementsService\",\"method\":\"buildElementsQuery\",\"args\":\"Craft\\\\ElementCriteriaModel, \\\"content\\\", array(array(\\\"handle\\\" => \\\"facebook\\\", \\\"column\\\" => \\\"field_facebook\\\"), array(\\\"handle\\\" => \\\"instagram\\\", \\\"column\\\" => \\\"field_instagram\\\"), array(\\\"handle\\\" => \\\"intro\\\", \\\"column\\\" => \\\"field_intro\\\"), array(\\\"handle\\\" => \\\"linkedin\\\", \\\"column\\\" => \\\"field_linkedin\\\")), true\"},{\"objectClass\":\"Craft\\\\ElementsService\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/models\\/ElementCriteriaModel.php\",\"line\":392,\"class\":\"Craft\\\\ElementsService\",\"method\":\"getTotalElements\",\"args\":\"Craft\\\\ElementCriteriaModel\"},{\"objectClass\":\"Craft\\\\ElementCriteriaModel\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/models\\/ElementCriteriaModel.php\",\"line\":174,\"class\":\"Craft\\\\ElementCriteriaModel\",\"method\":\"total\",\"args\":null},{\"objectClass\":\"Craft\\\\ElementCriteriaModel\",\"file\":null,\"line\":null,\"class\":\"Craft\\\\ElementCriteriaModel\",\"method\":\"count\",\"args\":null},{\"objectClass\":null,\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Extension\\/Core.php\",\"line\":1271,\"class\":null,\"method\":\"count\",\"args\":\"Craft\\\\ElementCriteriaModel\"},{\"objectClass\":null,\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/storage\\/runtime\\/compiled_templates\\/50\\/500995e6a8fae159efd282cb5278e122f35453574ca2a63fecb33c3db6a7f91c.php\",\"line\":78,\"class\":null,\"method\":\"twig_length_filter\",\"args\":\"Craft\\\\TwigEnvironment, Craft\\\\ElementCriteriaModel\"},{\"objectClass\":\"__TwigTemplate_2b06aeae502c9ee4f22bf65b03651ae5b93d208ab5b841ed1ed4268226013340\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":432,\"class\":\"__TwigTemplate_2b06aeae502c9ee4f22bf65b03651ae5b93d208ab5b841ed1ed4268226013340\",\"method\":\"doDisplay\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_2b06aeae502c9ee4f22bf65b03651ae5b93d208ab5b841ed1ed4268226013340\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/etc\\/templating\\/BaseTemplate.php\",\"line\":26,\"class\":\"Twig_Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_2b06aeae502c9ee4f22bf65b03651ae5b93d208ab5b841ed1ed4268226013340\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":403,\"class\":\"Craft\\\\BaseTemplate\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_2b06aeae502c9ee4f22bf65b03651ae5b93d208ab5b841ed1ed4268226013340\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/storage\\/runtime\\/compiled_templates\\/25\\/25e38e8dc42c508f0ac3ff905cad23296b291619542d09172c11353a2543acfe.php\",\"line\":77,\"class\":\"Twig_Template\",\"method\":\"display\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable)\",\"template\":\"_snippet\\/_content\\/_block\\/_overview\",\"templateLine\":24},{\"objectClass\":\"__TwigTemplate_2745981870ad262b18fb2406006c98023a6bd2e7d909fd7e5f5696f0be106e2d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":432,\"class\":\"__TwigTemplate_2745981870ad262b18fb2406006c98023a6bd2e7d909fd7e5f5696f0be106e2d\",\"method\":\"doDisplay\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_2745981870ad262b18fb2406006c98023a6bd2e7d909fd7e5f5696f0be106e2d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/etc\\/templating\\/BaseTemplate.php\",\"line\":26,\"class\":\"Twig_Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_2745981870ad262b18fb2406006c98023a6bd2e7d909fd7e5f5696f0be106e2d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":403,\"class\":\"Craft\\\\BaseTemplate\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_2745981870ad262b18fb2406006c98023a6bd2e7d909fd7e5f5696f0be106e2d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/storage\\/runtime\\/compiled_templates\\/f0\\/f07bda5415cc673083735ec23258e6675bd6f32162167bdcc9e28b80880c097b.php\",\"line\":65,\"class\":\"Twig_Template\",\"method\":\"display\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable)\",\"template\":\"_snippet\\/_content\\/_contentBuilder\",\"templateLine\":13},{\"objectClass\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":215,\"class\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"method\":\"block_content\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"dataComponents\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_dataComponents\\\"), \\\"breadcrumbs\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_breadcrumbs\\\"), \\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/storage\\/runtime\\/compiled_templates\\/68\\/683b0cfa533368bf4382b3bb7a67fd3ad9d28a45d8cf04cfec2f77dc0ff4c80b.php\",\"line\":126,\"class\":\"Twig_Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"dataComponents\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_dataComponents\\\"), \\\"breadcrumbs\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_breadcrumbs\\\"), \\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\",\"template\":\"_layout\",\"templateLine\":52},{\"objectClass\":\"__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":432,\"class\":\"__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde\",\"method\":\"doDisplay\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"dataComponents\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_dataComponents\\\"), \\\"breadcrumbs\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_breadcrumbs\\\"), \\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/etc\\/templating\\/BaseTemplate.php\",\"line\":26,\"class\":\"Twig_Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"dataComponents\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_dataComponents\\\"), \\\"breadcrumbs\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_breadcrumbs\\\"), \\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":403,\"class\":\"Craft\\\\BaseTemplate\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"dataComponents\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_dataComponents\\\"), \\\"breadcrumbs\\\" => array(__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde, \\\"block_breadcrumbs\\\"), \\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_7bc7b830bbaf32ef09ceb03017179d2ba40280ac1df67e2e838895dbbba59dde\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/storage\\/runtime\\/compiled_templates\\/f0\\/f07bda5415cc673083735ec23258e6675bd6f32162167bdcc9e28b80880c097b.php\",\"line\":31,\"class\":\"Twig_Template\",\"method\":\"display\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\",\"template\":\"_layout\",\"templateLine\":5},{\"objectClass\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":432,\"class\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"method\":\"doDisplay\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/etc\\/templating\\/BaseTemplate.php\",\"line\":26,\"class\":\"Twig_Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":403,\"class\":\"Craft\\\\BaseTemplate\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"content\\\" => array(__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":411,\"class\":\"Twig_Template\",\"method\":\"display\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"__TwigTemplate_952914b9032ebda521be613ff074ef2e2f5bbeec55fd605bd92a3c5f284ed15d\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Environment.php\",\"line\":363,\"class\":\"Twig_Template\",\"method\":\"render\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"Craft\\\\TwigEnvironment\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/services\\/TemplatesService.php\",\"line\":256,\"class\":\"Twig_Environment\",\"method\":\"render\",\"args\":\"\\\"_news\\/_entry\\\", array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"Craft\\\\TemplatesService\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/controllers\\/BaseController.php\",\"line\":74,\"class\":\"Craft\\\\TemplatesService\",\"method\":\"render\",\"args\":\"\\\"_news\\/_entry\\\", array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/controllers\\/TemplatesController.php\",\"line\":68,\"class\":\"Craft\\\\BaseController\",\"method\":\"renderTemplate\",\"args\":\"\\\"_news\\/_entry\\\", array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"Craft\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"_news\\/_entry\\\", array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"ReflectionMethod\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/actions\\/CAction.php\",\"line\":109,\"class\":\"ReflectionMethod\",\"method\":\"invokeArgs\",\"args\":\"Craft\\\\TemplatesController, array(\\\"_news\\/_entry\\\", array(\\\"entry\\\" => Craft\\\\EntryModel))\"},{\"objectClass\":\"CInlineAction\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/actions\\/CInlineAction.php\",\"line\":47,\"class\":\"CAction\",\"method\":\"runWithParamsInternal\",\"args\":\"Craft\\\\TemplatesController, ReflectionMethod, array(\\\"p\\\" => \\\"nieuws\\/content-builder-2-0\\\", \\\"variables\\\" => array(\\\"entry\\\" => Craft\\\\EntryModel), \\\"template\\\" => \\\"_news\\/_entry\\\")\"},{\"objectClass\":\"CInlineAction\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/CController.php\",\"line\":308,\"class\":\"CInlineAction\",\"method\":\"runWithParams\",\"args\":\"array(\\\"p\\\" => \\\"nieuws\\/content-builder-2-0\\\", \\\"variables\\\" => array(\\\"entry\\\" => Craft\\\\EntryModel), \\\"template\\\" => \\\"_news\\/_entry\\\")\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/CController.php\",\"line\":286,\"class\":\"CController\",\"method\":\"runAction\",\"args\":\"CInlineAction\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/CController.php\",\"line\":265,\"class\":\"CController\",\"method\":\"runActionWithFilters\",\"args\":\"CInlineAction, array()\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/CWebApplication.php\",\"line\":282,\"class\":\"CController\",\"method\":\"run\",\"args\":\"\\\"render\\\"\"},{\"objectClass\":\"Craft\\\\WebApp\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/web\\/CWebApplication.php\",\"line\":141,\"class\":\"CWebApplication\",\"method\":\"runController\",\"args\":\"\\\"templates\\/render\\\"\"},{\"objectClass\":\"Craft\\\\WebApp\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/etc\\/web\\/WebApp.php\",\"line\":290,\"class\":\"CWebApplication\",\"method\":\"processRequest\",\"args\":null},{\"objectClass\":\"Craft\\\\WebApp\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/framework\\/base\\/CApplication.php\",\"line\":185,\"class\":\"Craft\\\\WebApp\",\"method\":\"processRequest\",\"args\":null},{\"objectClass\":\"Craft\\\\WebApp\",\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/index.php\",\"line\":73,\"class\":\"CApplication\",\"method\":\"run\",\"args\":null},{\"objectClass\":null,\"file\":\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/public\\/index.php\",\"line\":20,\"class\":null,\"method\":\"require_once\",\"args\":\"\\\"\\/Users\\/jhenckens\\/Sites\\/crabas\\/craft\\/app\\/index.php\\\"\"}]','2018-06-07 14:04:18','2018-06-07 14:18:01','b870c87e-083b-4b15-b536-0317b481d83d'),
	(57,'BaseElementModel::getChildren()_for_relations','/data/sites/web/crabaslivestatikbe/subsites/crabas.staging.statik.be/craft/templates/_debug.twig:25','2018-06-13 09:57:22','/data/sites/web/crabaslivestatikbe/subsites/crabas.staging.statik.be/craft/app/models/BaseElementModel.php',534,'Craft\\BaseElementModel','getChildren','/data/sites/web/crabaslivestatikbe/subsites/crabas.staging.statik.be/craft/templates/_debug.twig',25,'Calling getChildren() to fetch an element’s target relations has been deprecated. Use the <a href=\"http://craftcms.com/docs/relations#the-relatedTo-param\">relatedTo</a> param instead.','[{\"objectClass\":\"Craft\\\\DeprecatorService\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/models\\/BaseElementModel.php\",\"line\":534,\"class\":\"Craft\\\\DeprecatorService\",\"method\":\"log\",\"args\":\"\\\"BaseElementModel::getChildren()_for_relations\\\", \\\"Calling getChildren() to fetch an element\\u2019s target relations h...\\\"\"},{\"objectClass\":\"Craft\\\\EntryModel\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/framework\\/base\\/CComponent.php\",\"line\":188,\"class\":\"Craft\\\\BaseElementModel\",\"method\":\"getChildren\",\"args\":null},{\"objectClass\":\"Craft\\\\EntryModel\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/models\\/BaseModel.php\",\"line\":153,\"class\":\"CComponent\",\"method\":\"__isset\",\"args\":\"\\\"children\\\"\"},{\"objectClass\":\"Craft\\\\EntryModel\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/models\\/BaseElementModel.php\",\"line\":118,\"class\":\"Craft\\\\BaseModel\",\"method\":\"__isset\",\"args\":\"\\\"children\\\"\"},{\"objectClass\":\"Craft\\\\EntryModel\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":580,\"class\":\"Craft\\\\BaseElementModel\",\"method\":\"__isset\",\"args\":\"\\\"children\\\"\"},{\"objectClass\":\"__TwigTemplate_194d714e0f24e208b352906ae23a420ac0837c1392ae79aedfd14a60626bfbb4\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/etc\\/templating\\/BaseTemplate.php\",\"line\":64,\"class\":\"Twig_Template\",\"method\":\"getAttribute\",\"args\":\"Craft\\\\EntryModel, \\\"children\\\", array(), \\\"any\\\"\"},{\"objectClass\":\"__TwigTemplate_194d714e0f24e208b352906ae23a420ac0837c1392ae79aedfd14a60626bfbb4\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/storage\\/runtime\\/compiled_templates\\/f8\\/f88b9304f1f89916aeadbca47499bf8c88d567bec758c8edcf2e330dfcfb1b45.php\",\"line\":78,\"class\":\"Craft\\\\BaseTemplate\",\"method\":\"getAttribute\",\"args\":\"Craft\\\\EntryModel, \\\"children\\\", array()\",\"template\":\"_snippet\\/_content\\/_block\\/_overview\",\"templateLine\":25},{\"objectClass\":\"__TwigTemplate_194d714e0f24e208b352906ae23a420ac0837c1392ae79aedfd14a60626bfbb4\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":432,\"class\":\"__TwigTemplate_194d714e0f24e208b352906ae23a420ac0837c1392ae79aedfd14a60626bfbb4\",\"method\":\"doDisplay\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_194d714e0f24e208b352906ae23a420ac0837c1392ae79aedfd14a60626bfbb4\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/etc\\/templating\\/BaseTemplate.php\",\"line\":26,\"class\":\"Twig_Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_194d714e0f24e208b352906ae23a420ac0837c1392ae79aedfd14a60626bfbb4\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":403,\"class\":\"Craft\\\\BaseTemplate\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_194d714e0f24e208b352906ae23a420ac0837c1392ae79aedfd14a60626bfbb4\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/storage\\/runtime\\/compiled_templates\\/44\\/44a5a539a846e4e06ee80392e569ab23aec63794471772bab27101400e0490d8.php\",\"line\":77,\"class\":\"Twig_Template\",\"method\":\"display\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable)\",\"template\":\"_snippet\\/_content\\/_block\\/_overview\",\"templateLine\":24},{\"objectClass\":\"__TwigTemplate_d6a02298d6c3a2c5d2e4fb0aa1e3411ae15dba877b8266f62c7f5f5cd7c12463\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":432,\"class\":\"__TwigTemplate_d6a02298d6c3a2c5d2e4fb0aa1e3411ae15dba877b8266f62c7f5f5cd7c12463\",\"method\":\"doDisplay\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_d6a02298d6c3a2c5d2e4fb0aa1e3411ae15dba877b8266f62c7f5f5cd7c12463\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/etc\\/templating\\/BaseTemplate.php\",\"line\":26,\"class\":\"Twig_Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_d6a02298d6c3a2c5d2e4fb0aa1e3411ae15dba877b8266f62c7f5f5cd7c12463\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":403,\"class\":\"Craft\\\\BaseTemplate\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_d6a02298d6c3a2c5d2e4fb0aa1e3411ae15dba877b8266f62c7f5f5cd7c12463\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/storage\\/runtime\\/compiled_templates\\/bf\\/bf9ec973261d77657934752a355f8eb5e573eed2ddecfd3ae71c92bd4b2e8cc6.php\",\"line\":54,\"class\":\"Twig_Template\",\"method\":\"display\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable)\",\"template\":\"_snippet\\/_content\\/_contentBuilder\",\"templateLine\":9},{\"objectClass\":\"__TwigTemplate_edc47c848e6f0c6ad9b261d6ac9d637f477f856d9690301f6de51078ce6fa4b0\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":215,\"class\":\"__TwigTemplate_edc47c848e6f0c6ad9b261d6ac9d637f477f856d9690301f6de51078ce6fa4b0\",\"method\":\"block_content\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"dataComponents\\\" => array(__TwigTemplate_64b142162cba72dafa42e309884e0c3ef1ec17d4d5e91f2993ab7322c475a5d2, \\\"block_dataComponents\\\"), \\\"breadcrumbs\\\" => array(__TwigTemplate_64b142162cba72dafa42e309884e0c3ef1ec17d4d5e91f2993ab7322c475a5d2, \\\"block_breadcrumbs\\\"), \\\"content\\\" => array(__TwigTemplate_edc47c848e6f0c6ad9b261d6ac9d637f477f856d9690301f6de51078ce6fa4b0, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_64b142162cba72dafa42e309884e0c3ef1ec17d4d5e91f2993ab7322c475a5d2\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/storage\\/runtime\\/compiled_templates\\/de\\/de250ab49ef204cbf6a3a71bc523cbfaaba63d14a3da01ced99b497f808e1cd7.php\",\"line\":126,\"class\":\"Twig_Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"dataComponents\\\" => array(__TwigTemplate_64b142162cba72dafa42e309884e0c3ef1ec17d4d5e91f2993ab7322c475a5d2, \\\"block_dataComponents\\\"), \\\"breadcrumbs\\\" => array(__TwigTemplate_64b142162cba72dafa42e309884e0c3ef1ec17d4d5e91f2993ab7322c475a5d2, \\\"block_breadcrumbs\\\"), \\\"content\\\" => array(__TwigTemplate_edc47c848e6f0c6ad9b261d6ac9d637f477f856d9690301f6de51078ce6fa4b0, \\\"block_content\\\"))\",\"template\":\"_layout\",\"templateLine\":52},{\"objectClass\":\"__TwigTemplate_64b142162cba72dafa42e309884e0c3ef1ec17d4d5e91f2993ab7322c475a5d2\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":432,\"class\":\"__TwigTemplate_64b142162cba72dafa42e309884e0c3ef1ec17d4d5e91f2993ab7322c475a5d2\",\"method\":\"doDisplay\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"dataComponents\\\" => array(__TwigTemplate_64b142162cba72dafa42e309884e0c3ef1ec17d4d5e91f2993ab7322c475a5d2, \\\"block_dataComponents\\\"), \\\"breadcrumbs\\\" => array(__TwigTemplate_64b142162cba72dafa42e309884e0c3ef1ec17d4d5e91f2993ab7322c475a5d2, \\\"block_breadcrumbs\\\"), \\\"content\\\" => array(__TwigTemplate_edc47c848e6f0c6ad9b261d6ac9d637f477f856d9690301f6de51078ce6fa4b0, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_64b142162cba72dafa42e309884e0c3ef1ec17d4d5e91f2993ab7322c475a5d2\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/etc\\/templating\\/BaseTemplate.php\",\"line\":26,\"class\":\"Twig_Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"dataComponents\\\" => array(__TwigTemplate_64b142162cba72dafa42e309884e0c3ef1ec17d4d5e91f2993ab7322c475a5d2, \\\"block_dataComponents\\\"), \\\"breadcrumbs\\\" => array(__TwigTemplate_64b142162cba72dafa42e309884e0c3ef1ec17d4d5e91f2993ab7322c475a5d2, \\\"block_breadcrumbs\\\"), \\\"content\\\" => array(__TwigTemplate_edc47c848e6f0c6ad9b261d6ac9d637f477f856d9690301f6de51078ce6fa4b0, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_64b142162cba72dafa42e309884e0c3ef1ec17d4d5e91f2993ab7322c475a5d2\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":403,\"class\":\"Craft\\\\BaseTemplate\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"dataComponents\\\" => array(__TwigTemplate_64b142162cba72dafa42e309884e0c3ef1ec17d4d5e91f2993ab7322c475a5d2, \\\"block_dataComponents\\\"), \\\"breadcrumbs\\\" => array(__TwigTemplate_64b142162cba72dafa42e309884e0c3ef1ec17d4d5e91f2993ab7322c475a5d2, \\\"block_breadcrumbs\\\"), \\\"content\\\" => array(__TwigTemplate_edc47c848e6f0c6ad9b261d6ac9d637f477f856d9690301f6de51078ce6fa4b0, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_64b142162cba72dafa42e309884e0c3ef1ec17d4d5e91f2993ab7322c475a5d2\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/storage\\/runtime\\/compiled_templates\\/bf\\/bf9ec973261d77657934752a355f8eb5e573eed2ddecfd3ae71c92bd4b2e8cc6.php\",\"line\":30,\"class\":\"Twig_Template\",\"method\":\"display\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"content\\\" => array(__TwigTemplate_edc47c848e6f0c6ad9b261d6ac9d637f477f856d9690301f6de51078ce6fa4b0, \\\"block_content\\\"))\",\"template\":\"_layout\",\"templateLine\":5},{\"objectClass\":\"__TwigTemplate_edc47c848e6f0c6ad9b261d6ac9d637f477f856d9690301f6de51078ce6fa4b0\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":432,\"class\":\"__TwigTemplate_edc47c848e6f0c6ad9b261d6ac9d637f477f856d9690301f6de51078ce6fa4b0\",\"method\":\"doDisplay\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"content\\\" => array(__TwigTemplate_edc47c848e6f0c6ad9b261d6ac9d637f477f856d9690301f6de51078ce6fa4b0, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_edc47c848e6f0c6ad9b261d6ac9d637f477f856d9690301f6de51078ce6fa4b0\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/etc\\/templating\\/BaseTemplate.php\",\"line\":26,\"class\":\"Twig_Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"content\\\" => array(__TwigTemplate_edc47c848e6f0c6ad9b261d6ac9d637f477f856d9690301f6de51078ce6fa4b0, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_edc47c848e6f0c6ad9b261d6ac9d637f477f856d9690301f6de51078ce6fa4b0\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":403,\"class\":\"Craft\\\\BaseTemplate\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"content\\\" => array(__TwigTemplate_edc47c848e6f0c6ad9b261d6ac9d637f477f856d9690301f6de51078ce6fa4b0, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_edc47c848e6f0c6ad9b261d6ac9d637f477f856d9690301f6de51078ce6fa4b0\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":411,\"class\":\"Twig_Template\",\"method\":\"display\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"__TwigTemplate_edc47c848e6f0c6ad9b261d6ac9d637f477f856d9690301f6de51078ce6fa4b0\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Environment.php\",\"line\":363,\"class\":\"Twig_Template\",\"method\":\"render\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"Craft\\\\TwigEnvironment\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/services\\/TemplatesService.php\",\"line\":256,\"class\":\"Twig_Environment\",\"method\":\"render\",\"args\":\"\\\"_debug\\\", array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"Craft\\\\TemplatesService\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/controllers\\/BaseController.php\",\"line\":74,\"class\":\"Craft\\\\TemplatesService\",\"method\":\"render\",\"args\":\"\\\"_debug\\\", array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/controllers\\/TemplatesController.php\",\"line\":68,\"class\":\"Craft\\\\BaseController\",\"method\":\"renderTemplate\",\"args\":\"\\\"_debug\\\", array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"Craft\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"_debug\\\", array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"ReflectionMethod\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/framework\\/web\\/actions\\/CAction.php\",\"line\":109,\"class\":\"ReflectionMethod\",\"method\":\"invokeArgs\",\"args\":\"Craft\\\\TemplatesController, array(\\\"_debug\\\", array(\\\"entry\\\" => Craft\\\\EntryModel))\"},{\"objectClass\":\"CInlineAction\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/framework\\/web\\/actions\\/CInlineAction.php\",\"line\":47,\"class\":\"CAction\",\"method\":\"runWithParamsInternal\",\"args\":\"Craft\\\\TemplatesController, ReflectionMethod, array(\\\"p\\\" => \\\"debug\\\", \\\"variables\\\" => array(\\\"entry\\\" => Craft\\\\EntryModel), \\\"template\\\" => \\\"_debug\\\")\"},{\"objectClass\":\"CInlineAction\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/framework\\/web\\/CController.php\",\"line\":308,\"class\":\"CInlineAction\",\"method\":\"runWithParams\",\"args\":\"array(\\\"p\\\" => \\\"debug\\\", \\\"variables\\\" => array(\\\"entry\\\" => Craft\\\\EntryModel), \\\"template\\\" => \\\"_debug\\\")\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/framework\\/web\\/CController.php\",\"line\":286,\"class\":\"CController\",\"method\":\"runAction\",\"args\":\"CInlineAction\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/framework\\/web\\/CController.php\",\"line\":265,\"class\":\"CController\",\"method\":\"runActionWithFilters\",\"args\":\"CInlineAction, array()\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/framework\\/web\\/CWebApplication.php\",\"line\":282,\"class\":\"CController\",\"method\":\"run\",\"args\":\"\\\"render\\\"\"},{\"objectClass\":\"Craft\\\\WebApp\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/framework\\/web\\/CWebApplication.php\",\"line\":141,\"class\":\"CWebApplication\",\"method\":\"runController\",\"args\":\"\\\"templates\\/render\\\"\"},{\"objectClass\":\"Craft\\\\WebApp\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/etc\\/web\\/WebApp.php\",\"line\":290,\"class\":\"CWebApplication\",\"method\":\"processRequest\",\"args\":null},{\"objectClass\":\"Craft\\\\WebApp\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/framework\\/base\\/CApplication.php\",\"line\":185,\"class\":\"Craft\\\\WebApp\",\"method\":\"processRequest\",\"args\":null},{\"objectClass\":\"Craft\\\\WebApp\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/index.php\",\"line\":73,\"class\":\"CApplication\",\"method\":\"run\",\"args\":null},{\"objectClass\":null,\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/public\\/index.php\",\"line\":20,\"class\":null,\"method\":\"require_once\",\"args\":\"\\\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.stati...\\\"\"}]','2018-06-13 09:46:08','2018-06-13 09:57:22','476c788b-d900-45ee-aa30-fd5bb177019c'),
	(58,'element_old_relation_params','/data/sites/web/crabaslivestatikbe/subsites/crabas.staging.statik.be/craft/templates/_debug.twig:24','2018-06-13 09:57:22','/data/sites/web/crabaslivestatikbe/subsites/crabas.staging.statik.be/craft/app/services/ElementsService.php',825,'Craft\\ElementsService','buildElementsQuery','/data/sites/web/crabaslivestatikbe/subsites/crabas.staging.statik.be/craft/templates/_debug.twig',24,'The ‘childOf’, ‘childField’, ‘parentOf’, and ‘parentField’ element params have been deprecated. Use ‘relatedTo’ instead.','[{\"objectClass\":\"Craft\\\\DeprecatorService\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/services\\/ElementsService.php\",\"line\":825,\"class\":\"Craft\\\\DeprecatorService\",\"method\":\"log\",\"args\":\"\\\"element_old_relation_params\\\", \\\"The \\u2018childOf\\u2019, \\u2018childField\\u2019, \\u2018parentOf\\u2019, and \\u2018pare...\\\"\"},{\"objectClass\":\"Craft\\\\ElementsService\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/services\\/ElementsService.php\",\"line\":542,\"class\":\"Craft\\\\ElementsService\",\"method\":\"buildElementsQuery\",\"args\":\"Craft\\\\ElementCriteriaModel, \\\"content\\\", array(array(\\\"handle\\\" => \\\"facebook\\\", \\\"column\\\" => \\\"field_facebook\\\"), array(\\\"handle\\\" => \\\"instagram\\\", \\\"column\\\" => \\\"field_instagram\\\"), array(\\\"handle\\\" => \\\"intro\\\", \\\"column\\\" => \\\"field_intro\\\"), array(\\\"handle\\\" => \\\"linkedin\\\", \\\"column\\\" => \\\"field_linkedin\\\")), true\"},{\"objectClass\":\"Craft\\\\ElementsService\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/models\\/ElementCriteriaModel.php\",\"line\":392,\"class\":\"Craft\\\\ElementsService\",\"method\":\"getTotalElements\",\"args\":\"Craft\\\\ElementCriteriaModel\"},{\"objectClass\":\"Craft\\\\ElementCriteriaModel\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/models\\/ElementCriteriaModel.php\",\"line\":174,\"class\":\"Craft\\\\ElementCriteriaModel\",\"method\":\"total\",\"args\":null},{\"objectClass\":\"Craft\\\\ElementCriteriaModel\",\"file\":null,\"line\":null,\"class\":\"Craft\\\\ElementCriteriaModel\",\"method\":\"count\",\"args\":null},{\"objectClass\":null,\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Extension\\/Core.php\",\"line\":1271,\"class\":null,\"method\":\"count\",\"args\":\"Craft\\\\ElementCriteriaModel\"},{\"objectClass\":null,\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/storage\\/runtime\\/compiled_templates\\/f8\\/f88b9304f1f89916aeadbca47499bf8c88d567bec758c8edcf2e330dfcfb1b45.php\",\"line\":78,\"class\":null,\"method\":\"twig_length_filter\",\"args\":\"Craft\\\\TwigEnvironment, Craft\\\\ElementCriteriaModel\"},{\"objectClass\":\"__TwigTemplate_194d714e0f24e208b352906ae23a420ac0837c1392ae79aedfd14a60626bfbb4\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":432,\"class\":\"__TwigTemplate_194d714e0f24e208b352906ae23a420ac0837c1392ae79aedfd14a60626bfbb4\",\"method\":\"doDisplay\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_194d714e0f24e208b352906ae23a420ac0837c1392ae79aedfd14a60626bfbb4\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/etc\\/templating\\/BaseTemplate.php\",\"line\":26,\"class\":\"Twig_Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_194d714e0f24e208b352906ae23a420ac0837c1392ae79aedfd14a60626bfbb4\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":403,\"class\":\"Craft\\\\BaseTemplate\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_194d714e0f24e208b352906ae23a420ac0837c1392ae79aedfd14a60626bfbb4\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/storage\\/runtime\\/compiled_templates\\/44\\/44a5a539a846e4e06ee80392e569ab23aec63794471772bab27101400e0490d8.php\",\"line\":77,\"class\":\"Twig_Template\",\"method\":\"display\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable)\",\"template\":\"_snippet\\/_content\\/_block\\/_overview\",\"templateLine\":24},{\"objectClass\":\"__TwigTemplate_d6a02298d6c3a2c5d2e4fb0aa1e3411ae15dba877b8266f62c7f5f5cd7c12463\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":432,\"class\":\"__TwigTemplate_d6a02298d6c3a2c5d2e4fb0aa1e3411ae15dba877b8266f62c7f5f5cd7c12463\",\"method\":\"doDisplay\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_d6a02298d6c3a2c5d2e4fb0aa1e3411ae15dba877b8266f62c7f5f5cd7c12463\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/etc\\/templating\\/BaseTemplate.php\",\"line\":26,\"class\":\"Twig_Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_d6a02298d6c3a2c5d2e4fb0aa1e3411ae15dba877b8266f62c7f5f5cd7c12463\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":403,\"class\":\"Craft\\\\BaseTemplate\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array()\"},{\"objectClass\":\"__TwigTemplate_d6a02298d6c3a2c5d2e4fb0aa1e3411ae15dba877b8266f62c7f5f5cd7c12463\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/storage\\/runtime\\/compiled_templates\\/bf\\/bf9ec973261d77657934752a355f8eb5e573eed2ddecfd3ae71c92bd4b2e8cc6.php\",\"line\":54,\"class\":\"Twig_Template\",\"method\":\"display\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable)\",\"template\":\"_snippet\\/_content\\/_contentBuilder\",\"templateLine\":9},{\"objectClass\":\"__TwigTemplate_edc47c848e6f0c6ad9b261d6ac9d637f477f856d9690301f6de51078ce6fa4b0\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":215,\"class\":\"__TwigTemplate_edc47c848e6f0c6ad9b261d6ac9d637f477f856d9690301f6de51078ce6fa4b0\",\"method\":\"block_content\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"dataComponents\\\" => array(__TwigTemplate_64b142162cba72dafa42e309884e0c3ef1ec17d4d5e91f2993ab7322c475a5d2, \\\"block_dataComponents\\\"), \\\"breadcrumbs\\\" => array(__TwigTemplate_64b142162cba72dafa42e309884e0c3ef1ec17d4d5e91f2993ab7322c475a5d2, \\\"block_breadcrumbs\\\"), \\\"content\\\" => array(__TwigTemplate_edc47c848e6f0c6ad9b261d6ac9d637f477f856d9690301f6de51078ce6fa4b0, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_64b142162cba72dafa42e309884e0c3ef1ec17d4d5e91f2993ab7322c475a5d2\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/storage\\/runtime\\/compiled_templates\\/de\\/de250ab49ef204cbf6a3a71bc523cbfaaba63d14a3da01ced99b497f808e1cd7.php\",\"line\":126,\"class\":\"Twig_Template\",\"method\":\"displayBlock\",\"args\":\"\\\"content\\\", array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"dataComponents\\\" => array(__TwigTemplate_64b142162cba72dafa42e309884e0c3ef1ec17d4d5e91f2993ab7322c475a5d2, \\\"block_dataComponents\\\"), \\\"breadcrumbs\\\" => array(__TwigTemplate_64b142162cba72dafa42e309884e0c3ef1ec17d4d5e91f2993ab7322c475a5d2, \\\"block_breadcrumbs\\\"), \\\"content\\\" => array(__TwigTemplate_edc47c848e6f0c6ad9b261d6ac9d637f477f856d9690301f6de51078ce6fa4b0, \\\"block_content\\\"))\",\"template\":\"_layout\",\"templateLine\":52},{\"objectClass\":\"__TwigTemplate_64b142162cba72dafa42e309884e0c3ef1ec17d4d5e91f2993ab7322c475a5d2\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":432,\"class\":\"__TwigTemplate_64b142162cba72dafa42e309884e0c3ef1ec17d4d5e91f2993ab7322c475a5d2\",\"method\":\"doDisplay\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"dataComponents\\\" => array(__TwigTemplate_64b142162cba72dafa42e309884e0c3ef1ec17d4d5e91f2993ab7322c475a5d2, \\\"block_dataComponents\\\"), \\\"breadcrumbs\\\" => array(__TwigTemplate_64b142162cba72dafa42e309884e0c3ef1ec17d4d5e91f2993ab7322c475a5d2, \\\"block_breadcrumbs\\\"), \\\"content\\\" => array(__TwigTemplate_edc47c848e6f0c6ad9b261d6ac9d637f477f856d9690301f6de51078ce6fa4b0, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_64b142162cba72dafa42e309884e0c3ef1ec17d4d5e91f2993ab7322c475a5d2\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/etc\\/templating\\/BaseTemplate.php\",\"line\":26,\"class\":\"Twig_Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"dataComponents\\\" => array(__TwigTemplate_64b142162cba72dafa42e309884e0c3ef1ec17d4d5e91f2993ab7322c475a5d2, \\\"block_dataComponents\\\"), \\\"breadcrumbs\\\" => array(__TwigTemplate_64b142162cba72dafa42e309884e0c3ef1ec17d4d5e91f2993ab7322c475a5d2, \\\"block_breadcrumbs\\\"), \\\"content\\\" => array(__TwigTemplate_edc47c848e6f0c6ad9b261d6ac9d637f477f856d9690301f6de51078ce6fa4b0, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_64b142162cba72dafa42e309884e0c3ef1ec17d4d5e91f2993ab7322c475a5d2\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":403,\"class\":\"Craft\\\\BaseTemplate\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"dataComponents\\\" => array(__TwigTemplate_64b142162cba72dafa42e309884e0c3ef1ec17d4d5e91f2993ab7322c475a5d2, \\\"block_dataComponents\\\"), \\\"breadcrumbs\\\" => array(__TwigTemplate_64b142162cba72dafa42e309884e0c3ef1ec17d4d5e91f2993ab7322c475a5d2, \\\"block_breadcrumbs\\\"), \\\"content\\\" => array(__TwigTemplate_edc47c848e6f0c6ad9b261d6ac9d637f477f856d9690301f6de51078ce6fa4b0, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_64b142162cba72dafa42e309884e0c3ef1ec17d4d5e91f2993ab7322c475a5d2\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/storage\\/runtime\\/compiled_templates\\/bf\\/bf9ec973261d77657934752a355f8eb5e573eed2ddecfd3ae71c92bd4b2e8cc6.php\",\"line\":30,\"class\":\"Twig_Template\",\"method\":\"display\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"content\\\" => array(__TwigTemplate_edc47c848e6f0c6ad9b261d6ac9d637f477f856d9690301f6de51078ce6fa4b0, \\\"block_content\\\"))\",\"template\":\"_layout\",\"templateLine\":5},{\"objectClass\":\"__TwigTemplate_edc47c848e6f0c6ad9b261d6ac9d637f477f856d9690301f6de51078ce6fa4b0\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":432,\"class\":\"__TwigTemplate_edc47c848e6f0c6ad9b261d6ac9d637f477f856d9690301f6de51078ce6fa4b0\",\"method\":\"doDisplay\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"content\\\" => array(__TwigTemplate_edc47c848e6f0c6ad9b261d6ac9d637f477f856d9690301f6de51078ce6fa4b0, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_edc47c848e6f0c6ad9b261d6ac9d637f477f856d9690301f6de51078ce6fa4b0\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/etc\\/templating\\/BaseTemplate.php\",\"line\":26,\"class\":\"Twig_Template\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"content\\\" => array(__TwigTemplate_edc47c848e6f0c6ad9b261d6ac9d637f477f856d9690301f6de51078ce6fa4b0, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_edc47c848e6f0c6ad9b261d6ac9d637f477f856d9690301f6de51078ce6fa4b0\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":403,\"class\":\"Craft\\\\BaseTemplate\",\"method\":\"displayWithErrorHandling\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel, \\\"user\\\" => Craft\\\\UserModel, \\\"currentUser\\\" => Craft\\\\UserModel, \\\"craft\\\" => Craft\\\\CraftVariable), array(\\\"content\\\" => array(__TwigTemplate_edc47c848e6f0c6ad9b261d6ac9d637f477f856d9690301f6de51078ce6fa4b0, \\\"block_content\\\"))\"},{\"objectClass\":\"__TwigTemplate_edc47c848e6f0c6ad9b261d6ac9d637f477f856d9690301f6de51078ce6fa4b0\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Template.php\",\"line\":411,\"class\":\"Twig_Template\",\"method\":\"display\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"__TwigTemplate_edc47c848e6f0c6ad9b261d6ac9d637f477f856d9690301f6de51078ce6fa4b0\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/vendor\\/twig\\/twig\\/lib\\/Twig\\/Environment.php\",\"line\":363,\"class\":\"Twig_Template\",\"method\":\"render\",\"args\":\"array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"Craft\\\\TwigEnvironment\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/services\\/TemplatesService.php\",\"line\":256,\"class\":\"Twig_Environment\",\"method\":\"render\",\"args\":\"\\\"_debug\\\", array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"Craft\\\\TemplatesService\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/controllers\\/BaseController.php\",\"line\":74,\"class\":\"Craft\\\\TemplatesService\",\"method\":\"render\",\"args\":\"\\\"_debug\\\", array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/controllers\\/TemplatesController.php\",\"line\":68,\"class\":\"Craft\\\\BaseController\",\"method\":\"renderTemplate\",\"args\":\"\\\"_debug\\\", array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":null,\"line\":null,\"class\":\"Craft\\\\TemplatesController\",\"method\":\"actionRender\",\"args\":\"\\\"_debug\\\", array(\\\"entry\\\" => Craft\\\\EntryModel)\"},{\"objectClass\":\"ReflectionMethod\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/framework\\/web\\/actions\\/CAction.php\",\"line\":109,\"class\":\"ReflectionMethod\",\"method\":\"invokeArgs\",\"args\":\"Craft\\\\TemplatesController, array(\\\"_debug\\\", array(\\\"entry\\\" => Craft\\\\EntryModel))\"},{\"objectClass\":\"CInlineAction\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/framework\\/web\\/actions\\/CInlineAction.php\",\"line\":47,\"class\":\"CAction\",\"method\":\"runWithParamsInternal\",\"args\":\"Craft\\\\TemplatesController, ReflectionMethod, array(\\\"p\\\" => \\\"debug\\\", \\\"variables\\\" => array(\\\"entry\\\" => Craft\\\\EntryModel), \\\"template\\\" => \\\"_debug\\\")\"},{\"objectClass\":\"CInlineAction\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/framework\\/web\\/CController.php\",\"line\":308,\"class\":\"CInlineAction\",\"method\":\"runWithParams\",\"args\":\"array(\\\"p\\\" => \\\"debug\\\", \\\"variables\\\" => array(\\\"entry\\\" => Craft\\\\EntryModel), \\\"template\\\" => \\\"_debug\\\")\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/framework\\/web\\/CController.php\",\"line\":286,\"class\":\"CController\",\"method\":\"runAction\",\"args\":\"CInlineAction\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/framework\\/web\\/CController.php\",\"line\":265,\"class\":\"CController\",\"method\":\"runActionWithFilters\",\"args\":\"CInlineAction, array()\"},{\"objectClass\":\"Craft\\\\TemplatesController\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/framework\\/web\\/CWebApplication.php\",\"line\":282,\"class\":\"CController\",\"method\":\"run\",\"args\":\"\\\"render\\\"\"},{\"objectClass\":\"Craft\\\\WebApp\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/framework\\/web\\/CWebApplication.php\",\"line\":141,\"class\":\"CWebApplication\",\"method\":\"runController\",\"args\":\"\\\"templates\\/render\\\"\"},{\"objectClass\":\"Craft\\\\WebApp\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/etc\\/web\\/WebApp.php\",\"line\":290,\"class\":\"CWebApplication\",\"method\":\"processRequest\",\"args\":null},{\"objectClass\":\"Craft\\\\WebApp\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/framework\\/base\\/CApplication.php\",\"line\":185,\"class\":\"Craft\\\\WebApp\",\"method\":\"processRequest\",\"args\":null},{\"objectClass\":\"Craft\\\\WebApp\",\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/craft\\/app\\/index.php\",\"line\":73,\"class\":\"CApplication\",\"method\":\"run\",\"args\":null},{\"objectClass\":null,\"file\":\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.statik.be\\/public\\/index.php\",\"line\":20,\"class\":null,\"method\":\"require_once\",\"args\":\"\\\"\\/data\\/sites\\/web\\/crabaslivestatikbe\\/subsites\\/crabas.staging.stati...\\\"\"}]','2018-06-13 09:46:08','2018-06-13 09:57:22','a0492e02-a6dd-4839-9c77-3d1edaf42abd');

/*!40000 ALTER TABLE `craft_deprecationerrors` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_elementindexsettings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_elementindexsettings`;

CREATE TABLE `craft_elementindexsettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_elementindexsettings_type_unq_idx` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_elementindexsettings` WRITE;
/*!40000 ALTER TABLE `craft_elementindexsettings` DISABLE KEYS */;

INSERT INTO `craft_elementindexsettings` (`id`, `type`, `settings`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'Entry','{\"sources\":{\"*\":{\"tableAttributes\":{\"1\":\"section\",\"2\":\"author\",\"3\":\"uri\"}},\"singles\":{\"tableAttributes\":{\"1\":\"section\",\"2\":\"author\",\"3\":\"uri\"}},\"section:3\":{\"tableAttributes\":{\"1\":\"postDate\",\"2\":\"expiryDate\",\"3\":\"dateCreated\",\"4\":\"dateUpdated\",\"5\":\"author\",\"6\":\"uri\"}}}}','2017-07-04 08:43:46','2017-07-04 08:46:24','05156450-33cf-427e-8c2a-a05e6c3ee310');

/*!40000 ALTER TABLE `craft_elementindexsettings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_elements
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_elements`;

CREATE TABLE `craft_elements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `archived` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_elements_type_idx` (`type`),
  KEY `craft_elements_enabled_idx` (`enabled`),
  KEY `craft_elements_archived_dateCreated_idx` (`archived`,`dateCreated`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_elements` WRITE;
/*!40000 ALTER TABLE `craft_elements` DISABLE KEYS */;

INSERT INTO `craft_elements` (`id`, `type`, `enabled`, `archived`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'User',1,0,'2017-03-09 09:09:42','2018-06-14 07:31:33','e61e4f80-0af1-4a38-96d9-ce1f64e3304c'),
	(2,'Entry',1,0,'2017-03-09 09:09:45','2018-06-14 06:54:47','9af828cc-fa74-4ca6-afae-d3dd9f39693d'),
	(5,'SuperTable_Block',1,0,'2017-06-26 13:34:38','2017-08-18 12:25:32','09008a4a-47f0-4b11-9285-5a09fcfe37ff'),
	(7,'Entry',1,0,'2017-07-03 07:13:09','2018-06-14 07:05:44','596033cc-2044-44f2-9ebd-4acb71fe0aa9'),
	(8,'GlobalSet',1,0,'2017-07-03 13:22:42','2018-06-14 06:54:47','bc5a3d8a-0f42-4afc-9a57-a1327e99ab7c'),
	(10,'User',1,0,'2017-07-03 19:24:23','2017-07-03 19:24:23','c4a56a14-5be0-49d7-b857-08659a6b462e'),
	(11,'GlobalSet',1,0,'2017-07-04 07:48:50','2018-06-14 06:54:47','812423e1-4e56-4cac-b5e1-95e0a02f8594'),
	(12,'Entry',1,0,'2017-07-04 08:40:55','2018-06-14 06:54:47','05a4d4ef-66f7-4491-8135-b23f656247a1'),
	(13,'Entry',1,0,'2017-07-04 09:21:57','2018-06-14 06:54:47','04632e43-7f5f-4b67-9bd1-c399fd041b8c'),
	(15,'Neo_Block',1,0,'2017-09-08 20:41:31','2017-09-08 20:41:31','fbdeb6ce-9c47-44a2-95aa-f1a1904a3a17'),
	(17,'Entry',1,0,'2017-09-12 14:26:52','2018-06-14 06:54:47','1cb994d6-6fe0-4b2e-a8a6-3ca3f0c692c7'),
	(53,'Entry',1,0,'2017-09-18 15:54:49','2018-06-14 07:07:38','240f8328-8f31-402c-85bb-415e34800a95'),
	(55,'Entry',1,0,'2017-12-19 19:58:28','2018-06-14 06:54:47','88b2e24e-d98f-4296-9e7b-dfbc5ed5021f'),
	(66,'Freeform_Submission',1,0,'2018-02-09 12:01:49','2018-02-09 12:01:49','8af2640b-5177-47dd-9c83-053b144e0779'),
	(75,'MatrixBlock',1,0,'2018-05-18 14:42:48','2018-05-30 13:45:13','3b160ea0-dd4b-4c19-99c3-c5c605a6d261'),
	(76,'MatrixBlock',1,0,'2018-05-18 14:42:48','2018-05-30 13:45:13','8ee9ffd6-dd28-42d5-b6ac-66246db9dbe8'),
	(77,'MatrixBlock',1,0,'2018-05-18 14:42:48','2018-05-30 13:45:13','75303f45-fd0d-4a46-a071-274b233e6c77'),
	(78,'MatrixBlock',1,0,'2018-05-18 14:42:48','2018-05-30 13:45:13','73d4f7e0-f65f-4439-a8ed-a4a490c22a04'),
	(79,'MatrixBlock',1,0,'2018-05-18 14:42:48','2018-05-30 13:45:13','8d618042-6cf1-4917-b077-561cb22d5348'),
	(80,'MatrixBlock',1,0,'2018-05-18 14:42:48','2018-05-30 13:45:13','42dbd63d-cf34-46ad-b916-1f95eede775b'),
	(81,'MatrixBlock',1,0,'2018-05-18 14:42:48','2018-05-30 13:45:13','22413bf2-cd78-44dd-9d69-2905151299db'),
	(82,'MatrixBlock',1,0,'2018-05-18 14:42:48','2018-05-30 13:45:13','b4e56d2c-ad06-4a2b-9786-a65c05e0de49'),
	(83,'Asset',1,0,'2018-05-30 13:27:21','2018-06-14 06:54:47','eaa7d6aa-a967-4b53-9325-e112b66df7b5'),
	(84,'Asset',1,0,'2018-05-30 13:27:26','2018-06-14 06:54:47','d014c2ed-fbd1-4805-b625-ea6e902f1769'),
	(85,'Asset',1,0,'2018-05-30 13:27:31','2018-06-14 06:54:47','64aaa242-b4e2-4613-b6bf-bbf0e886ed35'),
	(86,'Asset',1,0,'2018-05-30 13:27:36','2018-06-14 06:54:47','d1d385eb-53c4-4e9e-8052-559677cea2d0'),
	(89,'Asset',1,0,'2018-05-30 13:27:51','2018-06-14 06:54:47','2dae5008-3eb4-480d-8f28-784b1065195a'),
	(90,'Asset',1,0,'2018-05-30 13:27:54','2018-06-14 06:54:47','f1ec0bb8-ba45-4956-88ca-915b49ac6d95'),
	(91,'Asset',1,0,'2018-05-30 13:27:58','2018-06-14 06:54:47','9ea113c4-b0c3-47b8-aced-e54e279d3f3b'),
	(92,'Asset',1,0,'2018-05-30 13:28:07','2018-06-14 06:54:47','625efd3b-c426-4a68-bdae-f194e309cd62'),
	(100,'Asset',1,0,'2018-05-30 13:29:10','2018-06-14 06:54:47','37e87b67-bd7c-45ec-b0a3-b80990c52f89'),
	(101,'MatrixBlock',1,0,'2018-05-30 13:33:51','2018-05-30 13:33:51','2d375778-c029-422e-9047-637d971528a8'),
	(102,'MatrixBlock',1,0,'2018-05-30 13:33:51','2018-05-30 13:33:51','ebe0804f-0d36-449c-ac65-4a80e6066abd'),
	(103,'MatrixBlock',1,0,'2018-05-30 13:33:51','2018-05-30 13:33:51','92090f52-9862-4bdb-89ff-9d9637c43dba'),
	(104,'MatrixBlock',1,0,'2018-05-30 13:33:51','2018-05-30 13:33:51','0c64dd74-cab2-4796-8a93-b2edd4672eec'),
	(105,'MatrixBlock',1,0,'2018-05-30 13:33:51','2018-05-30 13:33:51','b8c69d5a-fab8-4a83-9cc4-d24c6d421801'),
	(113,'MatrixBlock',1,0,'2018-05-30 13:44:30','2018-06-14 07:07:38','faf5751b-236f-4b1f-8551-54b24a8d5496'),
	(114,'MatrixBlock',1,0,'2018-05-30 13:50:53','2018-06-14 06:54:48','6e64a99b-30c9-49e2-80e5-5a001eb3983a'),
	(115,'MatrixBlock',1,0,'2018-05-30 13:50:53','2018-06-14 06:54:48','bbd56901-ad5a-4dd1-8ce8-03dfb9ed1234'),
	(116,'MatrixBlock',1,0,'2018-05-30 13:50:54','2018-06-14 06:54:48','4d47780d-1fd0-4898-bbf6-bc8e5d70322b'),
	(117,'MatrixBlock',1,0,'2018-05-30 13:50:54','2018-06-14 06:54:48','c091cee9-4df4-4230-b9dd-b692d3b683df'),
	(124,'Asset',1,0,'2018-06-01 06:55:27','2018-06-14 06:54:47','3e530487-4ea3-4a67-8d57-b331f6f9f225'),
	(125,'Asset',1,0,'2018-06-01 06:55:34','2018-06-14 06:54:47','c1607475-8cc0-462c-b9e3-a953ab9040bd'),
	(126,'Asset',1,0,'2018-06-01 06:55:38','2018-06-14 06:54:47','1728b36d-4560-4663-b685-e418398b3591'),
	(127,'Asset',1,0,'2018-06-01 06:55:45','2018-06-14 06:54:47','0a7ef95f-9a34-4ebf-ab1b-5f0d9cc60958'),
	(129,'Asset',1,0,'2018-06-01 06:55:53','2018-06-14 06:54:47','41e762cc-d4eb-401e-975c-a4f6555a271e'),
	(130,'Asset',1,0,'2018-06-01 06:55:57','2018-06-14 06:54:47','370c35fb-126b-4a59-9c1a-e8f6c14ac0fc'),
	(131,'Entry',1,0,'2018-06-01 07:04:25','2018-06-14 06:54:48','8b80378c-9258-4553-9113-38e0a2ef95e4'),
	(132,'Entry',1,0,'2018-06-01 07:05:45','2018-06-14 06:54:48','106d0e68-b7a7-446c-96e6-90ce26a46859'),
	(133,'SuperTable_Block',1,0,'2018-06-01 07:13:41','2018-06-14 06:54:48','65a2a745-2aa5-4093-a47d-b9be62704186'),
	(134,'MatrixBlock',1,0,'2018-06-01 07:14:57','2018-06-14 06:54:48','0a8135c4-3fa7-4e61-99cd-4c9a8715a258'),
	(147,'Entry',1,0,'2018-06-06 11:39:32','2018-06-14 06:54:48','341a6354-5fdc-42c2-b498-913b74c66ff9'),
	(148,'MatrixBlock',1,0,'2018-06-06 11:40:22','2018-06-14 06:54:48','3c3f95ff-1846-445a-93ff-3a177010eda3'),
	(149,'MatrixBlock',1,0,'2018-06-06 11:40:22','2018-06-14 06:54:48','cf476e84-9b62-4625-8036-f2ab0ae116a9'),
	(150,'Asset',1,0,'2018-06-06 11:45:03','2018-06-14 06:54:47','ee594aed-6c07-4099-ba76-6f37fcc77d52'),
	(151,'MatrixBlock',1,0,'2018-06-06 13:03:37','2018-06-14 06:54:48','a937b841-24bb-417f-aec2-853cf16b0443'),
	(152,'MatrixBlock',1,0,'2018-06-06 13:03:37','2018-06-14 06:54:48','9627cf1a-f684-45df-aaf6-41c72ecadcf4'),
	(153,'SuperTable_Block',1,0,'2018-06-06 13:18:31','2018-06-14 06:54:49','70dba0d1-b294-4d09-bb57-9126f60904bb'),
	(154,'SuperTable_Block',1,0,'2018-06-06 13:18:32','2018-06-14 06:54:49','ce42cfef-0c2c-49ee-9607-dcd8f4cde63a'),
	(155,'MatrixBlock',1,0,'2018-06-06 13:21:37','2018-06-14 06:54:48','123596a8-549e-48f3-a729-55dc85061ab2'),
	(156,'SuperTable_Block',1,0,'2018-06-07 12:50:50','2018-06-14 06:54:49','9cd676aa-57b3-473b-82fe-a58ec9957b38'),
	(157,'MatrixBlock',1,0,'2018-06-07 12:53:43','2018-06-14 06:54:48','768fcc1d-de3a-4802-8d44-bfc677a66be8'),
	(158,'SuperTable_Block',1,0,'2018-06-07 12:53:43','2018-06-14 06:54:49','4d06835c-ec29-4e2b-9c9c-7040f445c680'),
	(159,'SuperTable_Block',1,0,'2018-06-07 12:56:16','2018-06-14 06:54:49','d9678d24-2eba-454f-abff-58fd857c4f17'),
	(160,'MatrixBlock',1,0,'2018-06-07 13:06:43','2018-06-14 06:54:48','9b1b372d-03cb-408f-ab6f-e445c7bf0f44'),
	(161,'Freeform_Submission',1,0,'2018-06-07 13:15:43','2018-06-07 13:15:43','61f330ab-911d-477b-b9c9-47103b19acc1'),
	(165,'MatrixBlock',1,0,'2018-06-13 07:34:28','2018-06-14 06:54:48','da23b9f2-806c-4064-a97d-b392240eef2e'),
	(166,'SuperTable_Block',1,0,'2018-06-13 07:34:28','2018-06-14 06:54:49','dcd0d779-4560-47c8-b4fa-669eabc443f0'),
	(167,'SuperTable_Block',1,0,'2018-06-13 07:34:28','2018-06-14 06:54:49','9b732df9-dc92-480d-b451-4cc9bedb3f00'),
	(168,'SuperTable_Block',1,0,'2018-06-13 07:34:28','2018-06-14 06:54:49','6ad7a7d4-e7e7-4dc1-a6de-1a38746eadbd'),
	(169,'SuperTable_Block',1,0,'2018-06-13 07:34:29','2018-06-14 06:54:49','8bce780a-b3cc-4c31-a9c7-532eab011def'),
	(170,'SuperTable_Block',1,0,'2018-06-13 07:34:29','2018-06-14 06:54:49','44ff00de-b293-4a06-ba7b-86e6645498e0'),
	(171,'MatrixBlock',1,0,'2018-06-13 07:34:29','2018-06-14 06:54:48','e9220f84-c450-419b-8bfb-4a4bbdc65ac1'),
	(172,'MatrixBlock',1,0,'2018-06-13 07:34:29','2018-06-14 06:54:48','027ab26f-bba2-48a8-840a-b27fe5aeadd9'),
	(174,'MatrixBlock',1,0,'2018-06-13 08:26:21','2018-06-14 06:54:48','d727b0b4-5a85-4182-937b-14ae1bcdbb54'),
	(177,'MatrixBlock',1,0,'2018-06-13 08:26:21','2018-06-14 06:54:48','aa3db639-a7ef-4b0d-ad9d-3722801004f0'),
	(178,'SuperTable_Block',1,0,'2018-06-13 08:26:21','2018-06-14 06:54:49','120bce4f-6555-4aa7-be33-9d8369500bca'),
	(179,'MatrixBlock',1,0,'2018-06-13 08:26:21','2018-06-14 06:54:48','68156441-f642-4597-b7c2-65f8efa03fa8'),
	(180,'MatrixBlock',1,0,'2018-06-13 08:26:21','2018-06-14 06:54:48','ea1a893b-78f8-4b85-a11d-9655ce72a11a'),
	(181,'SuperTable_Block',1,0,'2018-06-13 09:11:42','2018-06-14 06:54:49','dcec3f68-0ee8-46dd-9c4a-964b221b42dc'),
	(183,'MatrixBlock',1,0,'2018-06-13 09:11:42','2018-06-14 06:54:48','326a648f-a446-4fe1-90ce-156978ed1427'),
	(186,'MatrixBlock',1,0,'2018-06-13 09:11:42','2018-06-14 06:54:48','4349d3c8-2556-43f8-8e4f-280eae6786ad'),
	(187,'MatrixBlock',1,0,'2018-06-13 09:11:42','2018-06-14 06:54:48','282d3e73-4e2e-4b6c-ad98-d853f9e2b623'),
	(189,'SuperTable_Block',1,0,'2018-06-13 09:11:42','2018-06-14 06:54:49','a5f9e6ed-bf22-4805-aa4e-6b5d023ae73e'),
	(190,'MatrixBlock',1,0,'2018-06-13 09:11:42','2018-06-14 06:54:48','7649e05f-3ca5-483b-96eb-3174f6a5cd61'),
	(192,'MatrixBlock',1,0,'2018-06-13 09:11:42','2018-06-14 06:54:48','45866860-36d8-46b3-8dfd-0ed08fc34e98'),
	(193,'MatrixBlock',1,0,'2018-06-13 09:11:42','2018-06-14 06:54:48','1a53fced-5fa0-4467-a01a-ed5b1fad3c30'),
	(194,'MatrixBlock',1,0,'2018-06-13 09:11:42','2018-06-14 06:54:48','a35e5ca7-bfca-4927-888d-31d1a73c0c9c'),
	(195,'MatrixBlock',1,0,'2018-06-13 09:21:04','2018-06-14 06:54:48','2c97c584-3a2a-42fa-9a29-bb2ee13bc986'),
	(196,'MatrixBlock',1,0,'2018-06-13 09:21:04','2018-06-14 06:54:48','e13e5819-5260-4962-957d-50977e80a322'),
	(197,'MatrixBlock',1,0,'2018-06-13 09:21:04','2018-06-14 06:54:48','261c1a07-df80-49b5-adfb-745707be0635'),
	(198,'Entry',1,0,'2018-06-14 07:10:36','2018-06-14 07:21:33','e5301392-0db4-431d-9e24-91ffd4e24c46'),
	(199,'MatrixBlock',1,0,'2018-06-14 07:10:36','2018-06-14 07:21:33','5654de9c-2a25-4ac0-9e86-5259725e583a'),
	(200,'MatrixBlock',1,0,'2018-06-14 07:10:36','2018-06-14 07:21:33','81d68220-d046-4674-a8a0-8efadb5dabd4'),
	(201,'Entry',1,0,'2018-08-02 07:53:07','2018-08-02 07:53:12','0dc625c4-86bc-4018-9ee8-b4e3d6fecbfe'),
	(202,'Entry',1,0,'2018-08-02 07:54:35','2018-08-02 07:54:35','cc3f79fd-df1c-402e-a8a9-d6f23f570721'),
	(203,'Entry',1,0,'2018-08-02 07:55:51','2018-08-02 07:55:51','dd16f2f4-9309-4df0-98d2-269462751a3b'),
	(204,'Entry',1,0,'2018-08-02 07:56:17','2018-08-02 07:56:17','f5ea145b-ccfa-4c4b-a22b-e543ff6f3d8e'),
	(205,'Entry',1,0,'2018-08-02 07:56:38','2018-08-02 07:56:38','8c12d8c2-bc09-443f-a168-f6d348d98fa2'),
	(206,'Entry',1,0,'2018-08-02 07:56:59','2018-08-02 07:56:59','b1283e49-c290-4758-9cdb-46bdc2cabff5'),
	(207,'Entry',1,0,'2018-08-02 07:57:25','2018-08-02 07:57:25','c3046aa0-18c4-4266-9e8a-5daf0a778da0');

/*!40000 ALTER TABLE `craft_elements` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_elements_i18n
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_elements_i18n`;

CREATE TABLE `craft_elements_i18n` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uri` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_elements_i18n_elementId_locale_unq_idx` (`elementId`,`locale`),
  UNIQUE KEY `craft_elements_i18n_uri_locale_unq_idx` (`uri`,`locale`),
  KEY `craft_elements_i18n_slug_locale_idx` (`slug`,`locale`),
  KEY `craft_elements_i18n_enabled_idx` (`enabled`),
  KEY `craft_elements_i18n_locale_fk` (`locale`),
  CONSTRAINT `craft_elements_i18n_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_elements_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_elements_i18n` WRITE;
/*!40000 ALTER TABLE `craft_elements_i18n` DISABLE KEYS */;

INSERT INTO `craft_elements_i18n` (`id`, `elementId`, `locale`, `slug`, `uri`, `enabled`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,1,'en_gb','',NULL,1,'2017-03-09 09:09:42','2018-06-14 07:31:33','7251b8c9-665d-4c6c-9c1c-5b96659d2c28'),
	(10,10,'en_gb','',NULL,1,'2017-07-03 19:24:23','2018-06-14 06:54:57','c6f05fff-8bd7-42c4-b5c8-b612bfe3863b'),
	(38,12,'en_gb','privacy','privacy',1,'2017-08-20 08:35:51','2018-06-14 06:54:57','0bfbea3b-4d55-4dac-86e2-c6ad882f8155'),
	(39,13,'en_gb','pagina-niet-gevonden','pagina-niet-gevonden',1,'2017-08-20 08:35:57','2018-06-14 06:54:57','6bfdcb93-8300-4256-b799-3fc0859e0063'),
	(40,7,'en_gb','nieuws-overzicht','blog',1,'2017-08-20 08:36:07','2018-06-14 07:05:44','51d390cd-7612-4cb5-9dc2-75b001e95125'),
	(46,17,'en_gb','example-page','example-page',1,'2017-09-12 14:26:53','2018-06-14 06:54:57','499389d1-0ce0-4e0e-97bb-c0441bc50d44'),
	(90,53,'en_gb','example-blog','blog/example-blog',1,'2017-09-18 15:54:49','2018-06-14 07:07:38','9cc4bdc3-e0f6-4f4c-b8d7-816e8f7e8bd0'),
	(93,55,'en_gb','contact','contact',1,'2017-12-19 19:58:28','2018-06-14 06:54:57','ccde076a-cd04-4446-96bc-5a71f7cd26a4'),
	(106,66,'en_gb','2018-02-09-130148',NULL,1,'2018-02-09 12:01:49','2018-06-14 06:54:57','34e4fd62-1519-45f2-913e-336344fb6825'),
	(172,113,'en_gb','',NULL,1,'2018-05-30 13:44:30','2018-06-14 07:07:38','e4fbfbc9-a992-4c90-9345-850e600f39cd'),
	(173,114,'en_gb','',NULL,1,'2018-05-30 13:50:53','2018-06-14 06:54:57','997716e8-7610-4c62-ae33-b88dfff75df4'),
	(174,115,'en_gb','',NULL,1,'2018-05-30 13:50:54','2018-06-14 06:54:57','c0a16eab-559c-43a6-bdbd-97235dae555f'),
	(175,116,'en_gb','',NULL,1,'2018-05-30 13:50:54','2018-06-14 06:54:57','2b9b3e8a-b879-4c14-8bb6-df8206e32a52'),
	(176,117,'en_gb','',NULL,1,'2018-05-30 13:50:54','2018-06-14 06:54:57','dc5e46f0-bce2-40fe-abed-fb0e23997773'),
	(180,2,'en_gb','homepage','__home__',1,'2018-05-31 09:17:54','2018-06-14 06:54:57','60fbb023-9b15-4c1e-ae10-c7c7fce4d8b2'),
	(198,131,'en_gb','cookie-policy','cookie-policy',1,'2018-06-01 07:04:25','2018-06-14 06:54:57','7d2a596e-a8f9-4a5f-8d55-59447a53c6d9'),
	(200,132,'en_gb','terms-conditions','algemene-voorwaarden',1,'2018-06-01 07:05:45','2018-06-14 06:54:57','aef12830-0cf2-45e1-bbbb-88a5ab439100'),
	(203,134,'en_gb','',NULL,1,'2018-06-01 07:14:57','2018-06-14 06:54:57','525367c3-862c-4268-bb5f-c09b16fd8daa'),
	(220,147,'en_gb','content-builder','debug',1,'2018-06-06 11:39:32','2018-06-14 06:54:57','d8e70d9a-31dd-4f2f-b41c-caaab214d03a'),
	(222,148,'en_gb','',NULL,1,'2018-06-06 11:40:22','2018-06-14 06:54:57','c8647b18-001c-478c-a523-e81290520ae1'),
	(223,149,'en_gb','',NULL,1,'2018-06-06 11:40:22','2018-06-14 06:54:57','22df4692-228e-476f-9315-57cb669ef2d6'),
	(226,151,'en_gb','',NULL,1,'2018-06-06 13:03:37','2018-06-14 06:54:57','3aa624a3-3755-4fda-ac7b-b7530b5825cb'),
	(227,152,'en_gb','',NULL,1,'2018-06-06 13:03:37','2018-06-14 06:54:57','54e05a7e-7db6-45f9-946f-bc0dc119c2d5'),
	(230,155,'en_gb','',NULL,1,'2018-06-06 13:21:37','2018-06-14 06:54:57','79cb2952-2849-4c1f-b0e5-8bf00fd710ba'),
	(232,157,'en_gb','',NULL,1,'2018-06-07 12:53:43','2018-06-14 06:54:57','cf9ee789-3f22-4580-8b29-982148b5a45a'),
	(235,160,'en_gb','',NULL,1,'2018-06-07 13:06:43','2018-06-14 06:54:57','a7dad31e-de23-4459-abda-7e7011595467'),
	(236,161,'en_gb','2018-06-07-151543',NULL,1,'2018-06-07 13:15:43','2018-06-14 06:54:57','7d37152d-1af4-4c52-8d5b-23ec6ec94158'),
	(241,165,'en_gb','',NULL,1,'2018-06-13 07:34:28','2018-06-14 06:54:57','6375ade3-9d0d-42e8-a494-65c7f10a0446'),
	(247,171,'en_gb','',NULL,1,'2018-06-13 07:34:29','2018-06-14 06:54:57','05d38f23-a832-4021-83ee-65e659759540'),
	(248,172,'en_gb','',NULL,1,'2018-06-13 07:34:29','2018-06-14 06:54:57','780e52f6-e4e3-4e9d-8765-b4fc5d3620e9'),
	(250,174,'en_gb','',NULL,1,'2018-06-13 08:26:21','2018-06-14 06:54:57','00e1e095-d471-44bc-9331-b23d40fd5da7'),
	(253,177,'en_gb','',NULL,1,'2018-06-13 08:26:21','2018-06-14 06:54:57','a36386d3-c2f2-497e-9733-273ce90c42e5'),
	(255,179,'en_gb','',NULL,1,'2018-06-13 08:26:21','2018-06-14 06:54:57','4cffd87f-15f3-4df9-8c05-4a117bfe4f46'),
	(256,180,'en_gb','',NULL,1,'2018-06-13 08:26:21','2018-06-14 06:54:57','3a2254cf-a65f-4dcd-8138-008a201f2bac'),
	(259,183,'en_gb','',NULL,1,'2018-06-13 09:11:42','2018-06-14 06:54:57','14b11a55-429b-463c-9915-7a54b6c538aa'),
	(262,186,'en_gb','',NULL,1,'2018-06-13 09:11:42','2018-06-14 06:54:57','bd42545d-96a1-4fa0-bf4c-8e65eb78f957'),
	(263,187,'en_gb','',NULL,1,'2018-06-13 09:11:42','2018-06-14 06:54:57','ee399a98-8c28-43a1-8ab6-5c320f3c40f2'),
	(266,190,'en_gb','',NULL,1,'2018-06-13 09:11:42','2018-06-14 06:54:57','10aa1501-cb40-4e54-8ccc-5bd532e06a9a'),
	(268,192,'en_gb','',NULL,1,'2018-06-13 09:11:42','2018-06-14 06:54:57','ae1d1252-ea2d-4b64-8aaf-6a634daf7de4'),
	(269,193,'en_gb','',NULL,1,'2018-06-13 09:11:42','2018-06-14 06:54:57','9affd0c6-2dcc-4d87-b347-83b266b70a1b'),
	(270,194,'en_gb','',NULL,1,'2018-06-13 09:11:42','2018-06-14 06:54:57','bfc3fc01-8d59-408e-97de-07139917d87d'),
	(271,195,'en_gb','',NULL,1,'2018-06-13 09:21:04','2018-06-14 06:54:57','7980a463-4aec-4d2a-9e5f-0198d34191cd'),
	(272,196,'en_gb','',NULL,1,'2018-06-13 09:21:04','2018-06-14 06:54:57','7fdbeaf4-c47a-4e26-92e2-4894bdf24ce4'),
	(273,197,'en_gb','',NULL,1,'2018-06-13 09:21:04','2018-06-14 06:54:57','d7d8e116-2372-4935-95e1-62ee2bc8bd73'),
	(274,83,'en_gb','ben-kolde-367194-unsplash',NULL,1,'2018-06-14 06:54:47','2018-06-14 06:54:47','951d702f-8669-4375-b1ab-67bdbd7436ee'),
	(275,84,'en_gb','dose-media-481603-unsplash',NULL,1,'2018-06-14 06:54:47','2018-06-14 06:54:47','9da4e065-e098-4d73-836b-69e2a25deefa'),
	(276,85,'en_gb','kobu-agency-409288-unsplash',NULL,1,'2018-06-14 06:54:47','2018-06-14 06:54:47','24d267d6-a1c5-4bab-8dc7-cabfd56da8c5'),
	(277,86,'en_gb','abbie-bernet-527251-unsplash',NULL,1,'2018-06-14 06:54:47','2018-06-14 06:54:47','e1235461-6eee-4668-bf60-4797278d91d0'),
	(278,89,'en_gb','lilly-rum-342740-unsplash',NULL,1,'2018-06-14 06:54:47','2018-06-14 06:54:47','730aeafa-4e55-4d36-8e15-d352e7554f88'),
	(279,90,'en_gb','kelly-sikkema-411622-unsplash',NULL,1,'2018-06-14 06:54:47','2018-06-14 06:54:47','4cdcab1e-a7e6-4002-855c-99113f2b24b0'),
	(280,91,'en_gb','jesus-kiteque-224069-unsplash',NULL,1,'2018-06-14 06:54:47','2018-06-14 06:54:47','c6eee484-3ce1-464f-be14-2f9b38d16f1a'),
	(281,92,'en_gb','markus-spiske-422788-unsplash',NULL,1,'2018-06-14 06:54:47','2018-06-14 06:54:47','97d67aa7-3e81-45d1-b564-c650d9e70456'),
	(282,100,'en_gb','lege-pdf-2017',NULL,1,'2018-06-14 06:54:47','2018-06-14 06:54:47','49b664bb-0a93-436b-8627-839873202d18'),
	(283,124,'en_gb','rawpixel-395554-unsplash',NULL,1,'2018-06-14 06:54:47','2018-06-14 06:54:47','bc624d7b-fec5-468b-a966-135f2a42d0bb'),
	(284,125,'en_gb','bruno-van-der-kraan-554245-unsplash',NULL,1,'2018-06-14 06:54:47','2018-06-14 06:54:47','8b2971f5-bf67-47d8-972c-3b2dece19a20'),
	(285,126,'en_gb','brad-neathery-303623-unsplash',NULL,1,'2018-06-14 06:54:47','2018-06-14 06:54:47','cb3558ca-cb91-46f6-a22c-af9530356357'),
	(286,127,'en_gb','hal-gatewood-613602-unsplash',NULL,1,'2018-06-14 06:54:47','2018-06-14 06:54:47','d44ebdc7-2b4c-46c6-815c-3271ab450b4e'),
	(287,129,'en_gb','rawpixel-660716-unsplash',NULL,1,'2018-06-14 06:54:47','2018-06-14 06:54:47','38390795-fb3a-4b21-88f3-2fd5a4791c79'),
	(288,130,'en_gb','daniel-hansen-252817-unsplash',NULL,1,'2018-06-14 06:54:47','2018-06-14 06:54:47','f4ce58d1-9d7e-4ab2-9b10-764c8ca240f8'),
	(289,150,'en_gb','hal-gatewood-613602-unsplash-cfdab44b847432e5ad380789c920cedc-small',NULL,1,'2018-06-14 06:54:47','2018-06-14 06:54:47','6a510d49-89a8-4277-9393-5ed66bc4961d'),
	(290,8,'en_gb','',NULL,1,'2018-06-14 06:54:47','2018-06-14 06:54:47','3e89599b-6aa9-49d6-b30c-5036598b0500'),
	(291,11,'en_gb','',NULL,1,'2018-06-14 06:54:47','2018-06-14 06:54:47','fd36ce0f-637d-4855-bd25-0681e4f38c5a'),
	(292,198,'en_gb','meer-nieuws','blog/meer-nieuws',1,'2018-06-14 07:10:36','2018-06-14 07:21:33','1cadad70-7a33-4ec2-ae76-058a1d7ac042'),
	(293,199,'en_gb','',NULL,1,'2018-06-14 07:10:36','2018-06-14 07:21:33','da989e45-e86f-48e7-8e8f-983d04e427b5'),
	(294,200,'en_gb','',NULL,1,'2018-06-14 07:10:36','2018-06-14 07:21:33','dd7a0691-9020-45cc-aa51-8aa307c6e34c'),
	(295,201,'en_gb','historiek','over-abbeyfield/historiek',1,'2018-08-02 07:53:07','2018-08-02 07:53:12','fedae1d4-8921-4829-8539-cee7281ad403'),
	(296,202,'en_gb','over-abbeyfield','over-abbeyfield/historiek/over-abbeyfield',1,'2018-08-02 07:54:35','2018-08-02 07:54:40','64d9953d-4682-450e-bc00-ae4a111c82fd'),
	(297,203,'en_gb','visie-missie','over-abbeyfield/historiek/visie-missie',1,'2018-08-02 07:55:51','2018-08-02 07:55:58','00bc44ba-bb35-4683-8f5d-6cc31d84891b'),
	(298,204,'en_gb','werking','over-abbeyfield/historiek/werking',1,'2018-08-02 07:56:17','2018-08-02 07:56:18','2b9888f3-995c-4816-a286-c5bc848e0f0e'),
	(299,205,'en_gb','team','over-abbeyfield/historiek/team',1,'2018-08-02 07:56:38','2018-08-02 07:58:10','29656009-efbb-4648-a3bb-51384817d51f'),
	(300,206,'en_gb','doe-mee','over-abbeyfield/historiek/doe-mee',1,'2018-08-02 07:56:59','2018-08-02 07:58:12','8798277b-158d-4680-8256-c4cc3e1f78b7'),
	(301,207,'en_gb','vrijwilligers-gezocht','over-abbeyfield/historiek/vrijwilligers-gezocht',1,'2018-08-02 07:57:25','2018-08-02 07:58:14','ba2ffed1-259d-43c6-8b63-d96f4cbdcea6');

/*!40000 ALTER TABLE `craft_elements_i18n` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_emailmessages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_emailmessages`;

CREATE TABLE `craft_emailmessages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` char(150) COLLATE utf8_unicode_ci NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `subject` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_emailmessages_key_locale_unq_idx` (`key`,`locale`),
  KEY `craft_emailmessages_locale_fk` (`locale`),
  CONSTRAINT `craft_emailmessages_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_entries
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_entries`;

CREATE TABLE `craft_entries` (
  `id` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `authorId` int(11) DEFAULT NULL,
  `postDate` datetime DEFAULT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_entries_sectionId_idx` (`sectionId`),
  KEY `craft_entries_typeId_idx` (`typeId`),
  KEY `craft_entries_postDate_idx` (`postDate`),
  KEY `craft_entries_expiryDate_idx` (`expiryDate`),
  KEY `craft_entries_authorId_fk` (`authorId`),
  CONSTRAINT `craft_entries_authorId_fk` FOREIGN KEY (`authorId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entries_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entries_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entries_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_entrytypes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_entries` WRITE;
/*!40000 ALTER TABLE `craft_entries` DISABLE KEYS */;

INSERT INTO `craft_entries` (`id`, `sectionId`, `typeId`, `authorId`, `postDate`, `expiryDate`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(2,1,1,NULL,'2018-05-31 09:17:51',NULL,'2017-03-09 09:09:45','2018-06-01 07:13:52','41772e14-93b8-46d9-a9e3-78f288477832'),
	(7,4,4,NULL,'2018-06-14 06:55:58',NULL,'2017-07-03 07:13:09','2018-06-14 07:05:44','86d306b4-36ea-429e-98ee-6f09959eee86'),
	(12,5,5,NULL,'2018-06-01 07:04:01',NULL,'2017-07-04 08:40:55','2018-06-01 07:04:01','50ce610c-c2e1-4ccf-b7b0-4af11dd3118f'),
	(13,6,6,NULL,'2017-08-20 08:35:57',NULL,'2017-07-04 09:21:57','2017-08-20 08:35:57','5b612592-c4fd-484e-a473-3bbed9999df2'),
	(17,7,7,1,'2017-09-12 14:26:00',NULL,'2017-09-12 14:26:53','2018-06-04 15:20:20','a1212e09-3538-4c51-9fdf-f8f8078e6349'),
	(53,3,3,1,'2017-09-18 15:54:00',NULL,'2017-09-18 15:54:49','2018-06-14 07:07:38','8d57d8a3-dd30-4eb8-ad39-632650047bd5'),
	(55,8,NULL,NULL,'2017-12-19 19:58:28',NULL,'2017-12-19 19:58:28','2018-06-13 09:45:40','95cc8fb8-69f6-4473-afdf-825ae620a1d0'),
	(131,9,NULL,NULL,'2018-06-01 07:04:25',NULL,'2018-06-01 07:04:25','2018-06-01 07:04:25','48c1ae3f-9c95-496a-91e8-cebba1b22df3'),
	(132,10,NULL,NULL,'2018-06-01 07:05:45',NULL,'2018-06-01 07:05:45','2018-06-01 07:05:45','b6eb1fc7-7cc7-4886-b44c-a5ed4b572044'),
	(147,11,NULL,NULL,'2018-06-06 11:39:32',NULL,'2018-06-06 11:39:32','2018-06-13 09:54:58','6a754395-05cb-480e-8e56-8a4d846be095'),
	(198,3,3,1,'2018-06-14 07:10:00',NULL,'2018-06-14 07:10:36','2018-06-14 07:21:33','5825e71a-9024-46af-8361-a2bc0865c145'),
	(201,12,12,1,'2018-08-02 07:53:00',NULL,'2018-08-02 07:53:08','2018-08-02 07:53:12','a0baf749-9ec9-44ea-bd7e-4fcfdd08189d'),
	(202,12,12,1,'2018-08-02 07:54:35',NULL,'2018-08-02 07:54:35','2018-08-02 07:54:35','6d1d9d58-6903-4ef9-9696-31b322e4b9df'),
	(203,12,12,1,'2018-08-02 07:55:51',NULL,'2018-08-02 07:55:51','2018-08-02 07:55:51','d244834f-0e15-42f4-99a7-8f84ce0fb3b4'),
	(204,12,12,1,'2018-08-02 07:56:17',NULL,'2018-08-02 07:56:17','2018-08-02 07:56:17','eb100859-5752-48ab-a9ec-f18bb8241f69'),
	(205,12,12,1,'2018-08-02 07:56:38',NULL,'2018-08-02 07:56:38','2018-08-02 07:56:38','f25325b9-3a0c-4e5a-af32-de710f739e50'),
	(206,12,12,1,'2018-08-02 07:56:59',NULL,'2018-08-02 07:56:59','2018-08-02 07:56:59','9920d971-0204-4693-b743-e0bbfd4bbfda'),
	(207,12,12,1,'2018-08-02 07:57:25',NULL,'2018-08-02 07:57:25','2018-08-02 07:57:25','ffd32e6e-4851-4287-8133-a54b87db1ca2');

/*!40000 ALTER TABLE `craft_entries` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_entrydrafts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_entrydrafts`;

CREATE TABLE `craft_entrydrafts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entryId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `creatorId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes` tinytext COLLATE utf8_unicode_ci,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_entrydrafts_entryId_locale_idx` (`entryId`,`locale`),
  KEY `craft_entrydrafts_sectionId_fk` (`sectionId`),
  KEY `craft_entrydrafts_creatorId_fk` (`creatorId`),
  KEY `craft_entrydrafts_locale_fk` (`locale`),
  CONSTRAINT `craft_entrydrafts_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entrydrafts_entryId_fk` FOREIGN KEY (`entryId`) REFERENCES `craft_entries` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entrydrafts_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `craft_entrydrafts_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_entrytypes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_entrytypes`;

CREATE TABLE `craft_entrytypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sectionId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `hasTitleField` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `titleLabel` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'Title',
  `titleFormat` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_entrytypes_name_sectionId_unq_idx` (`name`,`sectionId`),
  UNIQUE KEY `craft_entrytypes_handle_sectionId_unq_idx` (`handle`,`sectionId`),
  KEY `craft_entrytypes_sectionId_fk` (`sectionId`),
  KEY `craft_entrytypes_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_entrytypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `craft_entrytypes_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_entrytypes` WRITE;
/*!40000 ALTER TABLE `craft_entrytypes` DISABLE KEYS */;

INSERT INTO `craft_entrytypes` (`id`, `sectionId`, `fieldLayoutId`, `name`, `handle`, `hasTitleField`, `titleLabel`, `titleFormat`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,1,279,'Home','homepage',1,'Title',NULL,1,'2017-03-09 09:09:45','2018-05-18 14:39:28','72bbb53a-8af1-4916-b316-64839e7fe388'),
	(3,3,290,'Nieuws','news',1,'Title',NULL,1,'2017-07-03 07:11:18','2018-05-30 13:45:35','13e2f04a-2954-437d-825c-68db2bce18eb'),
	(4,4,329,'Blog overview','newsOverview',1,'Title',NULL,1,'2017-07-03 07:13:09','2018-06-14 06:55:58','a330486a-464b-4ac5-b813-f9135caf0301'),
	(5,5,331,'Privacy','privacy',1,'Title',NULL,1,'2017-07-04 08:40:55','2018-06-01 07:11:34','5a41d3c4-e0a6-40ec-af60-f24d6959889e'),
	(6,6,276,'Pagina niet gevonden','pageNotFound',1,'Title',NULL,1,'2017-07-04 09:21:57','2018-05-18 14:38:15','1db1d6c6-fe77-4103-ad9c-c70736fd8cc6'),
	(7,7,330,'Pages','pages',1,'Title',NULL,1,'2017-08-18 12:43:31','2018-06-01 07:11:25','5244d339-752c-4d23-845a-d9448ecb37e4'),
	(8,8,328,'Contact','contact',1,'',NULL,1,'2017-12-19 19:58:28','2018-06-01 07:11:02','e126cd69-8e9c-4146-8463-cfcf6bb8617b'),
	(9,9,327,'Cookie Policy','cookiePolicy',1,'Titel',NULL,1,'2018-06-01 07:04:25','2018-06-01 07:10:52','e4c9877d-764f-4967-a527-cb16c4e54bd2'),
	(10,10,326,'Terms & conditions','termsConditions',1,'Title',NULL,1,'2018-06-01 07:05:45','2018-06-01 07:10:33','78298b43-dab7-4566-b286-22152a23f15b'),
	(11,11,364,'Content Builder','contentBuilder',1,'',NULL,1,'2018-06-06 11:39:32','2018-06-06 11:39:41','4ae5272c-2ad9-4cd4-a03c-7906a0c722cf'),
	(12,12,573,'Over Abbeyfield','overAbbeyfield',1,'Title',NULL,1,'2018-08-02 07:47:14','2018-08-02 07:47:14','c6ddd37d-97d1-4136-a818-a31b33db95b9');

/*!40000 ALTER TABLE `craft_entrytypes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_entryversions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_entryversions`;

CREATE TABLE `craft_entryversions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entryId` int(11) NOT NULL,
  `sectionId` int(11) NOT NULL,
  `creatorId` int(11) DEFAULT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `num` smallint(6) unsigned NOT NULL,
  `notes` tinytext COLLATE utf8_unicode_ci,
  `data` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_entryversions_entryId_locale_idx` (`entryId`,`locale`),
  KEY `craft_entryversions_sectionId_fk` (`sectionId`),
  KEY `craft_entryversions_creatorId_fk` (`creatorId`),
  KEY `craft_entryversions_locale_fk` (`locale`),
  CONSTRAINT `craft_entryversions_creatorId_fk` FOREIGN KEY (`creatorId`) REFERENCES `craft_users` (`id`) ON DELETE SET NULL,
  CONSTRAINT `craft_entryversions_entryId_fk` FOREIGN KEY (`entryId`) REFERENCES `craft_entries` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_entryversions_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `craft_entryversions_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_entryversions` WRITE;
/*!40000 ALTER TABLE `craft_entryversions` DISABLE KEYS */;

INSERT INTO `craft_entryversions` (`id`, `entryId`, `sectionId`, `creatorId`, `locale`, `num`, `notes`, `data`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(47,53,3,1,'en_gb',1,'','{\"typeId\":\"3\",\"authorId\":\"1\",\"title\":\"Example News\",\"slug\":\"example-news\",\"postDate\":1505750040,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"86\":[],\"41\":\"<p>Test contentje<\\/p>\",\"42\":[\"84\"],\"43\":\"Example overview title\",\"85\":{\"title\":\"Example News \",\"description\":\"\",\"keywords\":\"[]\",\"score\":\"\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-05-30 13:44:17','2018-06-14 06:54:57','595b99e0-15eb-455e-be31-47e58668adf9'),
	(48,53,3,1,'en_gb',2,'','{\"typeId\":\"3\",\"authorId\":\"1\",\"title\":\"Example News\",\"slug\":\"example-news\",\"postDate\":1505750040,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"86\":{\"113\":{\"type\":\"textOneColumn\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\"}}},\"41\":\"<p>Test contentje<\\/p>\",\"42\":[\"84\"],\"43\":\"Example overview title\",\"85\":{\"title\":\"Example News \",\"description\":\"\",\"keywords\":\"[]\",\"score\":\"\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-05-30 13:44:30','2018-06-14 06:54:57','a8a82544-00a2-4aae-93fe-4186f166ff66'),
	(53,7,4,1,'en_gb',1,'','{\"typeId\":\"4\",\"authorId\":null,\"title\":\"Nieuws\",\"slug\":\"nieuws-overzicht\",\"postDate\":1503218167,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"86\":[],\"41\":\"\",\"82\":\"\",\"43\":\"\",\"85\":{\"title\":\"Nieuws \",\"description\":\"\",\"keywords\":\"[]\",\"score\":\"\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-05-30 13:48:19','2018-06-14 06:54:57','b64a2ca0-3176-418c-ab1c-56c1ac237b42'),
	(54,17,7,1,'en_gb',1,'','{\"typeId\":\"7\",\"authorId\":\"1\",\"title\":\"Example Page\",\"slug\":\"example-page\",\"postDate\":1505226360,\"expiryDate\":null,\"enabled\":1,\"parentId\":\"\",\"fields\":{\"86\":{\"114\":{\"type\":\"textOneColumn\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\"}},\"115\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":{\"0\":\"92\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]}}},\"116\":{\"type\":\"textTwoColumns\",\"enabled\":\"1\",\"fields\":{\"textColumn1\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"textColumn2\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in.<br><\\/p>\"}},\"117\":{\"type\":\"form\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Formulier title\",\"text\":\"\",\"form\":\"1\"}}},\"41\":\"<p>Example page to test all cases and see if nothing breaks.<\\/p>\",\"82\":\"\",\"43\":\"\",\"85\":{\"title\":\"Example Page \",\"description\":\"\",\"keywords\":\"[]\",\"score\":\"\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-05-30 13:50:54','2018-06-14 06:54:57','8ac4cbea-0b00-41af-85b4-e5da7b63b95c'),
	(63,131,9,1,'en_gb',1,NULL,'{\"typeId\":\"9\",\"authorId\":null,\"title\":\"Cookie Policy\",\"slug\":\"cookie-policy\",\"postDate\":1527836665,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":[]}','2018-06-01 07:04:25','2018-06-14 06:54:57','065b2284-192a-4653-80ea-58978c47ec0f'),
	(64,132,10,1,'en_gb',1,NULL,'{\"typeId\":\"10\",\"authorId\":null,\"title\":\"Terms & conditions\",\"slug\":\"terms-conditions\",\"postDate\":1527836745,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":[]}','2018-06-01 07:05:45','2018-06-14 06:54:57','b0b96c0d-2db5-42a0-9504-575cbcc5c290'),
	(65,2,1,1,'en_gb',1,'','{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Home\",\"slug\":\"homepage\",\"postDate\":1527758271,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"86\":[],\"13\":{\"new1\":{\"type\":\"2\",\"fields\":{\"image\":[\"130\"],\"textColor\":\"dark\",\"heading\":\"Hero title\",\"description\":\"<p><strong><\\/strong>Lorem ipsum dolor sit amet, <strong>consectetur<\\/strong> adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore <em>magna<\\/em> aliqua. Ut enim ad minim <br><\\/p>\"}}},\"82\":\"\",\"43\":\"\",\"85\":{\"title\":\"Home \",\"description\":\"\",\"keywords\":\"[]\",\"score\":\"\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-06-01 07:13:41','2018-06-14 06:54:57','09ab37de-36c4-4f10-8c13-63eb274264fd'),
	(66,2,1,1,'en_gb',2,'','{\"typeId\":\"1\",\"authorId\":null,\"title\":\"Home\",\"slug\":\"homepage\",\"postDate\":1527758271,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"86\":[],\"13\":{\"133\":{\"type\":\"2\",\"fields\":{\"image\":[\"130\"],\"textColor\":\"light\",\"heading\":\"Hero title\",\"description\":\"<p>Lorem ipsum dolor sit amet, <strong>consectetur<\\/strong> adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore <em>magna<\\/em> aliqua. Ut enim ad minim <br><\\/p>\"}}},\"82\":\"\",\"43\":\"\",\"85\":{\"title\":\"Home \",\"description\":\"\",\"keywords\":\"[]\",\"score\":\"\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-06-01 07:13:52','2018-06-14 06:54:57','908d63bb-daf2-4386-98d0-a5445480a85b'),
	(67,55,8,1,'en_gb',1,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Contact\",\"slug\":\"contact\",\"postDate\":1513713508,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"86\":{\"134\":{\"type\":\"textOneColumn\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"cta\":\"\"}}},\"41\":\"\",\"82\":\"\",\"42\":\"\",\"43\":\"\",\"85\":{\"title\":\"Contact \",\"description\":\"\",\"keywords\":\"[]\",\"score\":\"\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-06-01 07:14:57','2018-06-14 06:54:57','b171b82d-8b25-4fb9-aee8-a29583a88373'),
	(75,17,7,1,'en_gb',2,'','{\"typeId\":\"7\",\"authorId\":\"1\",\"title\":\"Example Page\",\"slug\":\"example-page\",\"postDate\":1505226360,\"expiryDate\":null,\"enabled\":1,\"parentId\":\"\",\"fields\":{\"86\":{\"114\":{\"type\":\"textOneColumn\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"cta\":\"\",\"backgroundColour\":\"--dark\"}},\"115\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":{\"0\":\"92\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]}}},\"116\":{\"type\":\"textTwoColumns\",\"enabled\":\"1\",\"fields\":{\"textColumn1\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"textColumn2\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in.<br><\\/p>\"}},\"117\":{\"type\":\"form\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Formulier title\",\"text\":\"\",\"form\":\"1\"}}},\"41\":\"<p>Example page to test all cases and see if nothing breaks.<\\/p>\",\"82\":\"\",\"43\":\"\",\"85\":{\"title\":\"Example Page \",\"description\":\"\",\"keywords\":\"[]\",\"score\":\"\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-06-01 14:04:32','2018-06-14 06:54:57','81da4f25-3b8e-46fd-9ef7-ecf85cb2c0f1'),
	(76,17,7,1,'en_gb',3,'','{\"typeId\":\"7\",\"authorId\":\"1\",\"title\":\"Example Page\",\"slug\":\"example-page\",\"postDate\":1505226360,\"expiryDate\":null,\"enabled\":1,\"parentId\":\"\",\"fields\":{\"86\":{\"114\":{\"type\":\"textOneColumn\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"cta\":\"\",\"backgroundColor\":\"--dark\"}},\"115\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":{\"0\":\"92\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]}}},\"116\":{\"type\":\"textTwoColumns\",\"enabled\":\"1\",\"fields\":{\"textColumn1\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"textColumn2\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in.<br><\\/p>\"}},\"117\":{\"type\":\"form\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Formulier title\",\"text\":\"\",\"form\":\"1\"}}},\"41\":\"<p>Example page to test all cases and see if nothing breaks.<\\/p>\",\"82\":\"\",\"43\":\"\",\"85\":{\"title\":\"Example Page \",\"description\":\"\",\"keywords\":\"[]\",\"score\":\"\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-06-01 14:13:29','2018-06-14 06:54:57','0438ce3b-325b-4643-9234-7788c5fa4303'),
	(77,17,7,1,'en_gb',4,'','{\"typeId\":\"7\",\"authorId\":\"1\",\"title\":\"Example Page\",\"slug\":\"example-page\",\"postDate\":1505226360,\"expiryDate\":null,\"enabled\":1,\"parentId\":\"\",\"fields\":{\"86\":{\"114\":{\"type\":\"textOneColumn\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"cta\":\"\",\"backgroundColor\":\"--dark\"}},\"115\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":{\"0\":\"92\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]}}},\"116\":{\"type\":\"textTwoColumns\",\"enabled\":\"1\",\"fields\":{\"textColumn1\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"textColumn2\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in.<br><\\/p>\"}},\"117\":{\"type\":\"form\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Formulier title\",\"text\":\"\",\"form\":\"1\"}}},\"41\":\"<p>Example page to test all cases and see if nothing breaks.<\\/p>\",\"82\":\"\",\"43\":\"\",\"85\":{\"title\":\"Example Page \",\"description\":\"\",\"keywords\":\"[]\",\"score\":\"\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-06-04 14:52:42','2018-06-14 06:54:57','33c4501a-ebae-474c-a318-7068fe288ff8'),
	(78,17,7,1,'en_gb',5,'','{\"typeId\":\"7\",\"authorId\":\"1\",\"title\":\"Example Page\",\"slug\":\"example-page\",\"postDate\":1505226360,\"expiryDate\":null,\"enabled\":1,\"parentId\":\"\",\"fields\":{\"86\":{\"114\":{\"type\":\"textOneColumn\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"cta\":\"\",\"backgroundColor\":\"--dark\"}},\"115\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":{\"0\":\"92\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]}}},\"116\":{\"type\":\"textTwoColumns\",\"enabled\":\"1\",\"fields\":{\"textColumn1\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"textColumn2\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in.<br><\\/p>\"}},\"117\":{\"type\":\"form\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Formulier title\",\"text\":\"\",\"form\":\"1\"}}},\"41\":\"<p>Example page to test all cases and see if nothing breaks.<\\/p>\",\"82\":\"\",\"43\":\"\",\"85\":{\"title\":\"Example Page \",\"description\":\"\",\"keywords\":\"[]\",\"score\":\"\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-06-04 15:20:20','2018-06-14 06:54:57','d35412d9-3d72-4c9f-943f-8311c7b3cf9d'),
	(82,147,11,1,'en_gb',1,NULL,'{\"typeId\":\"11\",\"authorId\":null,\"title\":\"Content Builder\",\"slug\":\"content-builder\",\"postDate\":1528285172,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":[]}','2018-06-06 11:39:32','2018-06-14 06:54:57','dd4ad644-2ea0-4305-8f62-66d482d1ed56'),
	(83,147,11,1,'en_gb',2,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Content Builder\",\"slug\":\"content-builder\",\"postDate\":1528285172,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"86\":{\"148\":{\"type\":\"textOneColumn\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Title<\\/strong><br><\\/p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"cta\":\"\",\"backgroundColor\":\"--default\"}},\"149\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":{\"0\":\"127\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]}}}},\"41\":\"\",\"82\":\"\",\"42\":\"\",\"43\":\"\",\"85\":{\"title\":\"Content Builder \",\"description\":\"\",\"keywords\":\"[]\",\"score\":\"\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-06-06 11:40:23','2018-06-14 06:54:57','5a1a2c99-8b31-4a31-877c-611cb0faec03'),
	(84,147,11,1,'en_gb',3,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Content Builder\",\"slug\":\"content-builder\",\"postDate\":1528285172,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"86\":{\"148\":{\"type\":\"textOneColumn\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Title<\\/strong><br><\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"cta\":\"\",\"backgroundColor\":\"--default\"}},\"149\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":{\"0\":\"150\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]}}}},\"41\":\"\",\"82\":\"\",\"42\":\"\",\"43\":\"\",\"85\":{\"title\":\"Content Builder \",\"description\":\"\",\"keywords\":\"[]\",\"score\":\"\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-06-06 11:45:08','2018-06-14 06:54:57','1910580d-2cc9-4527-b686-ceed778664f1'),
	(85,147,11,1,'en_gb',4,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Content Builder\",\"slug\":\"content-builder\",\"postDate\":1528285172,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"86\":{\"148\":{\"type\":\"textOneColumn\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Title<\\/strong><br><\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"cta\":\"\",\"backgroundColor\":\"--light\"}},\"149\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":{\"0\":\"150\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]}}}},\"41\":\"\",\"82\":\"\",\"42\":\"\",\"43\":\"\",\"85\":{\"title\":\"Content Builder \",\"description\":\"\",\"keywords\":\"[]\",\"score\":\"\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-06-06 11:45:26','2018-06-14 06:54:57','eb415b0b-e7ed-49ee-9ca5-22bb109345ad'),
	(86,147,11,1,'en_gb',5,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Content Builder\",\"slug\":\"content-builder\",\"postDate\":1528285172,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"86\":{\"148\":{\"type\":\"textOneColumn\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Title<\\/strong><br><\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"cta\":\"\",\"backgroundColor\":\"section--default\"}},\"149\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":{\"0\":\"150\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"backgroundColor\":\"section--dark\"}}},\"41\":\"\",\"82\":\"\",\"42\":\"\",\"43\":\"\",\"85\":{\"title\":\"Content Builder \",\"description\":\"\",\"keywords\":\"[]\",\"score\":\"\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-06-06 12:08:03','2018-06-14 06:54:57','46099b43-38af-429d-9378-050dff985a53'),
	(87,147,11,1,'en_gb',6,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Content Builder\",\"slug\":\"content-builder\",\"postDate\":1528285172,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"86\":{\"148\":{\"type\":\"textOneColumn\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Title<\\/strong><br><\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"cta\":\"\",\"backgroundColor\":\"section--light\"}},\"149\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":{\"0\":\"150\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"backgroundColor\":\"section--dark\"}}},\"41\":\"\",\"82\":\"\",\"42\":\"\",\"43\":\"\",\"85\":{\"title\":\"Content Builder \",\"description\":\"\",\"keywords\":\"[]\",\"score\":\"\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-06-06 12:08:16','2018-06-14 06:54:57','c214f1ac-5a09-4ad6-b379-6347e04f7bda'),
	(88,147,11,1,'en_gb',7,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Content Builder\",\"slug\":\"content-builder\",\"postDate\":1528285172,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"86\":{\"148\":{\"type\":\"textOneColumn\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Title<\\/strong><br><\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"cta\":\"\",\"backgroundColor\":\"light\"}},\"149\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":{\"0\":\"150\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"backgroundColor\":\"dark\"}}},\"41\":\"\",\"82\":\"\",\"42\":\"\",\"43\":\"\",\"85\":{\"title\":\"Content Builder \",\"description\":\"\",\"keywords\":\"[]\",\"score\":\"\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-06-06 12:35:09','2018-06-14 06:54:57','065e7f74-d755-46c8-8511-2708fadb048c'),
	(89,147,11,1,'en_gb',8,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Content Builder\",\"slug\":\"content-builder\",\"postDate\":1528285172,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"86\":{\"148\":{\"type\":\"textOneColumn\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Title<\\/strong><br><\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"cta\":\"\",\"backgroundColor\":\"light\"}},\"149\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":{\"0\":\"150\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"backgroundColor\":\"dark\"}},\"151\":{\"type\":\"textTwoColumns\",\"enabled\":\"1\",\"fields\":{\"textColumn1\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"textColumn2\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"backgroundColor\":\"default\"}},\"152\":{\"type\":\"textImage\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"image\":{\"0\":\"130\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"imagePosition\":\"left\",\"backgroundColor\":\"dark\"}}},\"41\":\"\",\"82\":\"\",\"42\":\"\",\"43\":\"\",\"85\":{\"title\":\"Content Builder \",\"description\":\"\",\"keywords\":\"[]\",\"score\":\"\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-06-06 13:03:37','2018-06-14 06:54:57','e9fcefdb-3715-4203-89db-1fede26863c9'),
	(90,147,11,1,'en_gb',9,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Content Builder\",\"slug\":\"content-builder\",\"postDate\":1528285172,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"86\":{\"148\":{\"type\":\"textOneColumn\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Title<\\/strong><br><\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"cta\":\"\",\"backgroundColor\":\"light\"}},\"149\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":{\"0\":\"150\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"backgroundColor\":\"dark\"}},\"151\":{\"type\":\"textTwoColumns\",\"enabled\":\"1\",\"fields\":{\"textColumn1\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"textColumn2\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"backgroundColor\":\"light\"}},\"152\":{\"type\":\"textImage\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"image\":{\"0\":\"130\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"imagePosition\":\"left\",\"backgroundColor\":\"dark\"}}},\"41\":\"\",\"82\":\"\",\"42\":\"\",\"43\":\"\",\"85\":{\"title\":\"Content Builder \",\"description\":\"\",\"keywords\":\"[]\",\"score\":\"\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-06-06 13:13:59','2018-06-14 06:54:57','220ad141-cc3d-45f4-bb14-e43437602a6a'),
	(91,147,11,1,'en_gb',10,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Content Builder\",\"slug\":\"content-builder\",\"postDate\":1528285172,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"86\":{\"148\":{\"type\":\"textOneColumn\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Title<\\/strong><br><\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"cta\":{\"new1\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"131\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Call To Action Test\",\"target\":\"\"}}},\"new2\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"142\"],\"asset\":\"\",\"class\":\"btn btn--secondary\",\"customText\":\"En nog een CTA\",\"target\":\"\"}}}},\"backgroundColor\":\"light\"}},\"149\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":{\"0\":\"150\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"backgroundColor\":\"dark\"}},\"151\":{\"type\":\"textTwoColumns\",\"enabled\":\"1\",\"fields\":{\"textColumn1\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"textColumn2\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"backgroundColor\":\"light\"}},\"152\":{\"type\":\"textImage\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"image\":{\"0\":\"130\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"imagePosition\":\"left\",\"backgroundColor\":\"dark\"}}},\"41\":\"\",\"82\":\"\",\"42\":\"\",\"43\":\"\",\"85\":{\"title\":\"Content Builder \",\"description\":\"\",\"keywords\":\"[]\",\"score\":\"\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-06-06 13:18:32','2018-06-14 06:54:57','fa9eee55-e011-44f3-ac80-564a7c6768ae'),
	(92,147,11,1,'en_gb',11,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Content Builder\",\"slug\":\"content-builder\",\"postDate\":1528285172,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"86\":{\"148\":{\"type\":\"textOneColumn\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Title<\\/strong><br><\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"cta\":{\"153\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"131\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Call To Action Test\",\"target\":\"\"}}},\"154\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"142\"],\"asset\":\"\",\"class\":\"btn btn--secondary\",\"customText\":\"En nog een CTA\",\"target\":\"\"}}}},\"backgroundColor\":\"light\"}},\"149\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":{\"0\":\"150\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"backgroundColor\":\"dark\"}},\"151\":{\"type\":\"textTwoColumns\",\"enabled\":\"1\",\"fields\":{\"textColumn1\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"textColumn2\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"backgroundColor\":\"light\"}},\"152\":{\"type\":\"textImage\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"image\":{\"0\":\"130\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"imagePosition\":\"left\",\"backgroundColor\":\"dark\"}},\"155\":{\"type\":\"video\",\"enabled\":\"1\",\"fields\":{\"video\":\"https:\\/\\/www.youtube.com\\/watch?v=Q0CbN8sfihY\",\"backgroundColor\":\"light\"}}},\"41\":\"\",\"82\":\"\",\"42\":\"\",\"43\":\"\",\"85\":{\"title\":\"Content Builder \",\"description\":\"\",\"keywords\":\"[]\",\"score\":\"\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-06-06 13:21:37','2018-06-14 06:54:57','f370bb15-d792-4452-93f3-b52d717171d7'),
	(93,147,11,1,'en_gb',12,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Content Builder\",\"slug\":\"content-builder\",\"postDate\":1528285172,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"86\":{\"148\":{\"type\":\"textOneColumn\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Title<\\/strong><br><\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"cta\":{\"153\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"131\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Call To Action Test\",\"target\":\"\"}}},\"154\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"142\"],\"asset\":\"\",\"class\":\"btn btn--secondary\",\"customText\":\"En nog een CTA\",\"target\":\"\"}}}},\"backgroundColor\":\"light\"}},\"149\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":{\"0\":\"150\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"backgroundColor\":\"dark\"}},\"151\":{\"type\":\"textTwoColumns\",\"enabled\":\"1\",\"fields\":{\"textColumn1\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"textColumn2\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"backgroundColor\":\"light\"}},\"152\":{\"type\":\"textImage\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"image\":{\"0\":\"130\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"imagePosition\":\"left\",\"backgroundColor\":\"dark\"}},\"155\":{\"type\":\"video\",\"enabled\":\"1\",\"fields\":{\"video\":\"https:\\/\\/www.youtube.com\\/watch?v=Q0CbN8sfihY\",\"backgroundColor\":\"light\"}}},\"41\":\"\",\"82\":\"\",\"42\":\"\",\"43\":\"\",\"85\":{\"title\":\"Content Builder \",\"description\":\"\",\"keywords\":\"[]\",\"score\":\"\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-06-06 13:32:22','2018-06-14 06:54:57','95787235-6b8a-4a22-948a-8ddb03fea660'),
	(94,147,11,1,'en_gb',13,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Content Builder\",\"slug\":\"content-builder\",\"postDate\":1528285172,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"86\":{\"148\":{\"type\":\"textOneColumn\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Title<\\/strong><br><\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"cta\":{\"153\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"131\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Call To Action Test\",\"target\":\"\"}}},\"154\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"142\"],\"asset\":\"\",\"class\":\"btn btn--secondary\",\"customText\":\"En nog een CTA\",\"target\":\"\"}}}},\"backgroundColor\":\"light\"}},\"149\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":{\"0\":\"150\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"backgroundColor\":\"dark\"}},\"151\":{\"type\":\"textTwoColumns\",\"enabled\":\"1\",\"fields\":{\"textColumn1\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"textColumn2\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"backgroundColor\":\"light\"}},\"152\":{\"type\":\"textImage\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"image\":{\"0\":\"130\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"imagePosition\":\"left\",\"backgroundColor\":\"dark\",\"cta\":{\"new1\":{\"type\":\"4\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"2\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Test\",\"target\":\"\"}}}}}},\"155\":{\"type\":\"video\",\"enabled\":\"1\",\"fields\":{\"video\":\"https:\\/\\/www.youtube.com\\/watch?v=Q0CbN8sfihY\",\"backgroundColor\":\"light\"}}},\"41\":\"\",\"82\":\"\",\"42\":\"\",\"43\":\"\",\"85\":{\"title\":\"Content Builder \",\"description\":\"\",\"keywords\":\"[]\",\"score\":\"\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-06-07 12:50:51','2018-06-14 06:54:57','74cfe7ba-0bd3-47cc-8be2-3ae3e5da4014'),
	(95,147,11,1,'en_gb',14,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Content Builder\",\"slug\":\"content-builder\",\"postDate\":1528285172,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"86\":{\"148\":{\"type\":\"textOneColumn\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Title<\\/strong><br><\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"cta\":{\"153\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"131\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Call To Action Test\",\"target\":\"\"}}},\"154\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"142\"],\"asset\":\"\",\"class\":\"btn btn--secondary\",\"customText\":\"En nog een CTA\",\"target\":\"\"}}}},\"backgroundColor\":\"light\"}},\"149\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":{\"0\":\"150\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"backgroundColor\":\"dark\"}},\"151\":{\"type\":\"textTwoColumns\",\"enabled\":\"1\",\"fields\":{\"textColumn1\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"textColumn2\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"backgroundColor\":\"light\"}},\"157\":{\"type\":\"textVideo\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"video\":\"https:\\/\\/www.youtube.com\\/watch?v=zgDbp5C74sU\",\"videoPosition\":\"left\",\"backgroundColor\":\"default\",\"cta\":{\"new1\":{\"type\":\"5\",\"fields\":{\"linkit\":{\"type\":\"custom\",\"email\":\"\",\"tel\":\"\",\"custom\":\"https:\\/\\/www.statik.be\",\"entry\":\"\",\"asset\":\"\",\"class\":\"btn btn--ghost\",\"customText\":\"Statik\",\"target\":\"\"}}}}}},\"152\":{\"type\":\"textImage\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"image\":{\"0\":\"130\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"imagePosition\":\"left\",\"backgroundColor\":\"dark\",\"cta\":{\"156\":{\"type\":\"4\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"2\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Test\",\"target\":\"\"}}}}}},\"155\":{\"type\":\"video\",\"enabled\":\"1\",\"fields\":{\"video\":\"https:\\/\\/www.youtube.com\\/watch?v=Q0CbN8sfihY\",\"backgroundColor\":\"light\"}}},\"41\":\"\",\"82\":\"\",\"42\":\"\",\"43\":\"\",\"85\":{\"title\":\"Content Builder \",\"description\":\"\",\"keywords\":\"[]\",\"score\":\"\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-06-07 12:53:43','2018-06-14 06:54:57','9c40d7da-b12c-4e10-9e81-4f110f79979d'),
	(96,147,11,1,'en_gb',15,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Content Builder\",\"slug\":\"content-builder\",\"postDate\":1528285172,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"86\":{\"148\":{\"type\":\"textOneColumn\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Title<\\/strong><br><\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"cta\":{\"153\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"131\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Call To Action Test\",\"target\":\"\"}}},\"154\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"142\"],\"asset\":\"\",\"class\":\"btn btn--secondary\",\"customText\":\"En nog een CTA\",\"target\":\"\"}}}},\"backgroundColor\":\"light\"}},\"149\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":{\"0\":\"150\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"backgroundColor\":\"dark\"}},\"151\":{\"type\":\"textTwoColumns\",\"enabled\":\"1\",\"fields\":{\"textColumn1\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"textColumn2\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"backgroundColor\":\"light\"}},\"157\":{\"type\":\"textVideo\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"video\":\"https:\\/\\/www.youtube.com\\/watch?v=zgDbp5C74sU\",\"videoPosition\":\"left\",\"backgroundColor\":\"default\",\"cta\":{\"158\":{\"type\":\"5\",\"fields\":{\"linkit\":{\"type\":\"custom\",\"email\":\"\",\"tel\":\"\",\"custom\":\"https:\\/\\/www.statik.be\",\"entry\":\"\",\"asset\":\"\",\"class\":\"btn btn--ghost\",\"customText\":\"Statik\",\"target\":\"_blank\"}}}}}},\"152\":{\"type\":\"textImage\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"image\":{\"0\":\"130\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"imagePosition\":\"left\",\"backgroundColor\":\"dark\",\"cta\":{\"156\":{\"type\":\"4\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"2\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Test\",\"target\":\"\"}}}}}},\"155\":{\"type\":\"video\",\"enabled\":\"1\",\"fields\":{\"video\":\"https:\\/\\/www.youtube.com\\/watch?v=Q0CbN8sfihY\",\"backgroundColor\":\"light\"}}},\"41\":\"\",\"82\":\"\",\"42\":\"\",\"43\":\"\",\"85\":{\"title\":\"Content Builder \",\"description\":\"\",\"keywords\":\"[]\",\"score\":\"\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-06-07 12:54:05','2018-06-14 06:54:57','1d5d6eaa-47d7-4df4-959c-f8792cd340fe'),
	(97,147,11,1,'en_gb',16,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Content Builder\",\"slug\":\"content-builder\",\"postDate\":1528285172,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"86\":{\"148\":{\"type\":\"textOneColumn\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Title<\\/strong><br><\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"cta\":{\"153\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"131\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Call To Action Test\",\"target\":\"\"}}},\"154\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"142\"],\"asset\":\"\",\"class\":\"btn btn--secondary\",\"customText\":\"En nog een CTA\",\"target\":\"\"}}}},\"backgroundColor\":\"light\"}},\"149\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":{\"0\":\"150\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"backgroundColor\":\"dark\"}},\"151\":{\"type\":\"textTwoColumns\",\"enabled\":\"1\",\"fields\":{\"textColumn1\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"textColumn2\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"backgroundColor\":\"light\"}},\"157\":{\"type\":\"textVideo\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"video\":\"https:\\/\\/www.youtube.com\\/watch?v=zgDbp5C74sU\",\"videoPosition\":\"right\",\"backgroundColor\":\"default\",\"cta\":{\"158\":{\"type\":\"5\",\"fields\":{\"linkit\":{\"type\":\"custom\",\"email\":\"\",\"tel\":\"\",\"custom\":\"https:\\/\\/www.statik.be\",\"entry\":\"\",\"asset\":\"\",\"class\":\"btn btn--ghost\",\"customText\":\"Statik\",\"target\":\"_blank\"}}}}}},\"152\":{\"type\":\"textImage\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"image\":{\"0\":\"130\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"imagePosition\":\"left\",\"backgroundColor\":\"dark\",\"cta\":{\"156\":{\"type\":\"4\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"2\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Test\",\"target\":\"\"}}}}}},\"155\":{\"type\":\"video\",\"enabled\":\"1\",\"fields\":{\"video\":\"https:\\/\\/www.youtube.com\\/watch?v=Q0CbN8sfihY\",\"backgroundColor\":\"light\"}}},\"41\":\"\",\"82\":\"\",\"42\":\"\",\"43\":\"\",\"85\":{\"title\":\"Content Builder \",\"description\":\"\",\"keywords\":\"[]\",\"score\":\"\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-06-07 12:54:21','2018-06-14 06:54:57','4e55eb46-4ce4-4d5e-a541-bbe22b92e480'),
	(98,147,11,1,'en_gb',17,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Content Builder\",\"slug\":\"content-builder\",\"postDate\":1528285172,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"86\":{\"148\":{\"type\":\"textOneColumn\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Title<\\/strong><br><\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"cta\":{\"153\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"131\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Call To Action Test\",\"target\":\"\"}}},\"154\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"142\"],\"asset\":\"\",\"class\":\"btn btn--secondary\",\"customText\":\"En nog een CTA\",\"target\":\"\"}}}},\"backgroundColor\":\"light\"}},\"149\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":{\"0\":\"150\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"backgroundColor\":\"dark\"}},\"151\":{\"type\":\"textTwoColumns\",\"enabled\":\"1\",\"fields\":{\"textColumn1\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"textColumn2\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"backgroundColor\":\"light\"}},\"157\":{\"type\":\"textVideo\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"video\":\"https:\\/\\/www.youtube.com\\/watch?v=zgDbp5C74sU\",\"videoPosition\":\"right\",\"backgroundColor\":\"default\",\"cta\":{\"158\":{\"type\":\"5\",\"fields\":{\"linkit\":{\"type\":\"custom\",\"email\":\"\",\"tel\":\"\",\"custom\":\"https:\\/\\/www.statik.be\",\"entry\":\"\",\"asset\":\"\",\"class\":\"btn btn--ghost\",\"customText\":\"Statik\",\"target\":\"_blank\"}}},\"new1\":{\"type\":\"5\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"53\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Nieuwsbericht!\",\"target\":\"\"}}}}}},\"152\":{\"type\":\"textImage\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"image\":{\"0\":\"130\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"imagePosition\":\"left\",\"backgroundColor\":\"dark\",\"cta\":{\"156\":{\"type\":\"4\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"2\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Test\",\"target\":\"\"}}}}}},\"155\":{\"type\":\"video\",\"enabled\":\"1\",\"fields\":{\"video\":\"https:\\/\\/www.youtube.com\\/watch?v=Q0CbN8sfihY\",\"backgroundColor\":\"light\"}}},\"41\":\"\",\"82\":\"\",\"42\":\"\",\"43\":\"\",\"85\":{\"title\":\"Content Builder \",\"description\":\"\",\"keywords\":\"[]\",\"score\":\"\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-06-07 12:56:16','2018-06-14 06:54:57','3f7ef79f-8fa6-4041-9cc9-46093f0e2c78'),
	(99,147,11,1,'en_gb',18,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Content Builder\",\"slug\":\"content-builder\",\"postDate\":1528285172,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"86\":{\"148\":{\"type\":\"textOneColumn\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Title<\\/strong><br><\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"cta\":{\"153\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"131\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Call To Action Test\",\"target\":\"\"}}},\"154\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"142\"],\"asset\":\"\",\"class\":\"btn btn--secondary\",\"customText\":\"En nog een CTA\",\"target\":\"\"}}}},\"backgroundColor\":\"light\"}},\"149\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":{\"0\":\"150\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"backgroundColor\":\"dark\"}},\"151\":{\"type\":\"textTwoColumns\",\"enabled\":\"1\",\"fields\":{\"textColumn1\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"textColumn2\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"backgroundColor\":\"light\"}},\"157\":{\"type\":\"textVideo\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"video\":\"https:\\/\\/www.youtube.com\\/watch?v=zgDbp5C74sU\",\"videoPosition\":\"right\",\"backgroundColor\":\"default\",\"cta\":{\"158\":{\"type\":\"5\",\"fields\":{\"linkit\":{\"type\":\"custom\",\"email\":\"\",\"tel\":\"\",\"custom\":\"https:\\/\\/www.statik.be\",\"entry\":\"\",\"asset\":\"\",\"class\":\"btn btn--ghost\",\"customText\":\"Statik\",\"target\":\"_blank\"}}},\"159\":{\"type\":\"5\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"53\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Nieuwsbericht!\",\"target\":\"\"}}}}}},\"152\":{\"type\":\"textImage\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"image\":{\"0\":\"130\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"imagePosition\":\"left\",\"backgroundColor\":\"dark\",\"cta\":{\"156\":{\"type\":\"4\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"2\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Test\",\"target\":\"\"}}}}}},\"155\":{\"type\":\"video\",\"enabled\":\"1\",\"fields\":{\"video\":\"https:\\/\\/www.youtube.com\\/watch?v=Q0CbN8sfihY\",\"backgroundColor\":\"light\"}},\"160\":{\"type\":\"form\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Formulier Title hier\",\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"form\":\"1\",\"backgroundColor\":\"light\"}}},\"41\":\"\",\"82\":\"\",\"42\":\"\",\"43\":\"\",\"85\":{\"title\":\"Content Builder \",\"description\":\"\",\"keywords\":\"[]\",\"score\":\"\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-06-07 13:06:43','2018-06-14 06:54:57','01decc1f-ed00-4275-83e7-0f3745837e90'),
	(100,147,11,1,'en_gb',19,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Content Builder\",\"slug\":\"content-builder\",\"postDate\":1528285172,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"86\":{\"148\":{\"type\":\"textOneColumn\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Title<\\/strong><br><\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"cta\":{\"153\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"131\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Call To Action Test\",\"target\":\"\"}}},\"154\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"142\"],\"asset\":\"\",\"class\":\"btn btn--secondary\",\"customText\":\"En nog een CTA\",\"target\":\"\"}}}},\"backgroundColor\":\"light\"}},\"149\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":{\"0\":\"150\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"backgroundColor\":\"dark\"}},\"151\":{\"type\":\"textTwoColumns\",\"enabled\":\"1\",\"fields\":{\"textColumn1\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"textColumn2\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"backgroundColor\":\"light\"}},\"157\":{\"type\":\"textVideo\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"video\":\"https:\\/\\/www.youtube.com\\/watch?v=zgDbp5C74sU\",\"videoPosition\":\"right\",\"backgroundColor\":\"default\",\"cta\":{\"158\":{\"type\":\"5\",\"fields\":{\"linkit\":{\"type\":\"custom\",\"email\":\"\",\"tel\":\"\",\"custom\":\"https:\\/\\/www.statik.be\",\"entry\":\"\",\"asset\":\"\",\"class\":\"btn btn--ghost\",\"customText\":\"Statik\",\"target\":\"_blank\"}}},\"159\":{\"type\":\"5\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"53\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Nieuwsbericht!\",\"target\":\"\"}}}}}},\"152\":{\"type\":\"textImage\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"image\":{\"0\":\"130\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"imagePosition\":\"left\",\"backgroundColor\":\"dark\",\"cta\":{\"156\":{\"type\":\"4\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"2\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Test\",\"target\":\"\"}}}}}},\"155\":{\"type\":\"video\",\"enabled\":\"1\",\"fields\":{\"video\":\"https:\\/\\/www.youtube.com\\/watch?v=Q0CbN8sfihY\",\"backgroundColor\":\"light\"}},\"160\":{\"type\":\"form\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Formulier Title hier\",\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"form\":\"1\",\"backgroundColor\":\"light\"}}},\"41\":\"\",\"82\":\"\",\"42\":\"\",\"43\":\"\",\"85\":{\"title\":\"Content Builder \",\"description\":\"\",\"keywords\":\"[]\",\"score\":\"\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-06-07 13:19:33','2018-06-14 06:54:57','076248e0-6bea-4b5a-98d3-e46dd5998e6d'),
	(103,147,11,1,'en_gb',20,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Content Builder\",\"slug\":\"content-builder\",\"postDate\":1528285172,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"86\":{\"148\":{\"type\":\"textOneColumn\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Title<\\/strong><br><\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"cta\":{\"153\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"131\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Call To Action Test\",\"target\":\"\"}}},\"154\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"142\"],\"asset\":\"\",\"class\":\"btn btn--secondary\",\"customText\":\"En nog een CTA\",\"target\":\"\"}}}},\"backgroundColor\":\"light\"}},\"149\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"150\"],\"backgroundColor\":\"dark\"}},\"151\":{\"type\":\"textTwoColumns\",\"enabled\":\"1\",\"fields\":{\"textColumn1\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"textColumn2\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"backgroundColor\":\"light\"}},\"157\":{\"type\":\"textVideo\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"video\":\"https:\\/\\/www.youtube.com\\/watch?v=zgDbp5C74sU\",\"videoPosition\":\"right\",\"backgroundColor\":\"default\",\"cta\":{\"158\":{\"type\":\"5\",\"fields\":{\"linkit\":{\"type\":\"custom\",\"email\":\"\",\"tel\":\"\",\"custom\":\"https:\\/\\/www.statik.be\",\"entry\":\"\",\"asset\":\"\",\"class\":\"btn btn--ghost\",\"customText\":\"Statik\",\"target\":\"_blank\"}}},\"159\":{\"type\":\"5\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"53\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Nieuwsbericht!\",\"target\":\"\"}}}}}},\"152\":{\"type\":\"textImage\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"image\":{\"0\":\"130\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"imagePosition\":\"left\",\"backgroundColor\":\"dark\",\"cta\":{\"156\":{\"type\":\"4\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"2\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Test\",\"target\":\"\"}}}}}},\"155\":{\"type\":\"video\",\"enabled\":\"1\",\"fields\":{\"video\":\"https:\\/\\/www.youtube.com\\/watch?v=Q0CbN8sfihY\",\"backgroundColor\":\"light\"}},\"160\":{\"type\":\"form\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Formulier Title hier\",\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"form\":\"1\",\"backgroundColor\":\"light\"}},\"165\":{\"type\":\"textOneColumn\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Kir test de contentbuilder<\\/p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<br><\\/p>\",\"cta\":{\"new1\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"163\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Knop 1\",\"target\":\"\"}}},\"new2\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"custom\",\"email\":\"\",\"tel\":\"\",\"custom\":\"www.statik.be\",\"entry\":\"\",\"asset\":\"\",\"class\":\"btn btn--secondary\",\"customText\":\"Website statik\",\"target\":\"_blank\"}}},\"new5\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"asset\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":\"\",\"asset\":[\"100\"],\"class\":\"btn btn--ghost\",\"customText\":\"Dowload mij\",\"target\":\"\"}}},\"new3\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"email\",\"email\":\"kirsten@statik.be\",\"tel\":\"\",\"custom\":\"\",\"entry\":\"\",\"asset\":\"\",\"class\":\"link link--ext\",\"customText\":\"mail mij\",\"target\":\"\"}}},\"new4\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"tel\",\"email\":\"\",\"tel\":\"0485501820\",\"custom\":\"\",\"entry\":\"\",\"asset\":\"\",\"class\":\"link\",\"customText\":\"bel mij\",\"target\":\"\"}}}},\"backgroundColor\":\"default\"}},\"171\":{\"type\":\"textTwoColumns\",\"enabled\":\"1\",\"fields\":{\"textColumn1\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"textColumn2\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"backgroundColor\":\"light\"}},\"172\":{\"type\":\"textThreeColumns\",\"enabled\":\"1\",\"fields\":{\"textColumn1\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"textColumn2\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;<\\/p>\",\"textColumn3\":\"<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p><p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"backgroundColor\":\"dark\"}}},\"41\":\"\",\"82\":\"\",\"42\":\"\",\"43\":\"\",\"85\":{\"title\":\"Content Builder \",\"description\":\"\",\"keywords\":\"[]\",\"score\":\"\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-06-13 07:34:29','2018-06-14 06:54:57','bc974778-2458-44f8-aa1d-4dba5a564375'),
	(104,147,11,1,'en_gb',21,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Content Builder\",\"slug\":\"content-builder\",\"postDate\":1528285172,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"86\":{\"148\":{\"type\":\"textOneColumn\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Title<\\/strong><br><\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"cta\":{\"153\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"131\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Call To Action Test\",\"target\":\"\"}}},\"154\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"142\"],\"asset\":\"\",\"class\":\"btn btn--secondary\",\"customText\":\"En nog een CTA\",\"target\":\"\"}}}},\"backgroundColor\":\"light\"}},\"149\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"150\"],\"backgroundColor\":\"dark\"}},\"151\":{\"type\":\"textTwoColumns\",\"enabled\":\"1\",\"fields\":{\"textColumn1\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"textColumn2\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"backgroundColor\":\"light\"}},\"157\":{\"type\":\"textVideo\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"video\":\"https:\\/\\/www.youtube.com\\/watch?v=zgDbp5C74sU\",\"videoPosition\":\"right\",\"backgroundColor\":\"default\",\"cta\":{\"158\":{\"type\":\"5\",\"fields\":{\"linkit\":{\"type\":\"custom\",\"email\":\"\",\"tel\":\"\",\"custom\":\"https:\\/\\/www.statik.be\",\"entry\":\"\",\"asset\":\"\",\"class\":\"btn btn--ghost\",\"customText\":\"Statik\",\"target\":\"_blank\"}}},\"159\":{\"type\":\"5\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"53\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Nieuwsbericht!\",\"target\":\"\"}}}}}},\"152\":{\"type\":\"textImage\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"image\":{\"0\":\"130\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"imagePosition\":\"left\",\"backgroundColor\":\"dark\",\"cta\":{\"156\":{\"type\":\"4\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"2\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Test\",\"target\":\"\"}}}}}},\"155\":{\"type\":\"video\",\"enabled\":\"1\",\"fields\":{\"video\":\"https:\\/\\/www.youtube.com\\/watch?v=Q0CbN8sfihY\",\"backgroundColor\":\"light\"}},\"160\":{\"type\":\"form\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Formulier Title hier\",\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"form\":\"1\",\"backgroundColor\":\"light\"}},\"165\":{\"type\":\"textOneColumn\",\"enabled\":\"1\",\"fields\":{\"text\":\"<h2>Kir test de contentbuilder<\\/h2><h3>heading 3<\\/h3><h4>heading 4<\\/h4><h5>heading 5<\\/h5>\\r\\n<p><strong>Lorem ipsum<\\/strong> <em>dolor sit amet, consectetur adipi<\\/em>scing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.&nbsp;<\\/p><ul><li>Duis aute irure dolor&nbsp;<ul><li>in reprehenderit in voluptate<\\/li><\\/ul><ul><li>&nbsp;velit esse cillum dolore eu<\\/li><\\/ul><\\/li><li>Duis aute irure dolor&nbsp;<br>\\r\\n<\\/li><li>in reprehenderit in voluptate\\r\\n<\\/li><li>&nbsp;velit esse cillum dolore eu\\r\\n<\\/li><\\/ul><p><\\/p><ol><li>Duis aute irure dolor&nbsp;\\r\\n<ol><li>in reprehenderit in voluptate<\\/li><\\/ol><\\/li><li>velit esse cillum dolore eu<ol><li>Duis aute irure dolor&nbsp;<\\/li><\\/ol><\\/li><li>in reprehenderit in voluptate<\\/li><li>velit esse cillum dolore eu<\\/li><\\/ol><p><a href=\\\"https:\\/\\/crabas.staging.statik.be\\/cookie-policy#entry:131\\\">fugiat nulla pariatur.<\\/a> Excepteur sint <a href=\\\"http:\\/\\/www.statik.be\\\" target=\\\"_blank\\\">occaecat cupidatat<\\/a> non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<br><\\/p>\",\"cta\":{\"166\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"163\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Knop 1\",\"target\":\"\"}}},\"167\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"custom\",\"email\":\"\",\"tel\":\"\",\"custom\":\"www.statik.be\",\"entry\":\"\",\"asset\":\"\",\"class\":\"btn btn--secondary\",\"customText\":\"Website statik\",\"target\":\"_blank\"}}},\"168\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"asset\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":\"\",\"asset\":[\"100\"],\"class\":\"btn btn--ghost\",\"customText\":\"Dowload mij\",\"target\":\"\"}}},\"169\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"email\",\"email\":\"kirsten@statik.be\",\"tel\":\"\",\"custom\":\"\",\"entry\":\"\",\"asset\":\"\",\"class\":\"link link--ext\",\"customText\":\"mail mij\",\"target\":\"\"}}},\"170\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"tel\",\"email\":\"\",\"tel\":\"0485501820\",\"custom\":\"\",\"entry\":\"\",\"asset\":\"\",\"class\":\"link\",\"customText\":\"bel mij\",\"target\":\"\"}}}},\"backgroundColor\":\"default\"}},\"171\":{\"type\":\"textTwoColumns\",\"enabled\":\"1\",\"fields\":{\"textColumn1\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"textColumn2\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"backgroundColor\":\"light\"}},\"172\":{\"type\":\"textThreeColumns\",\"enabled\":\"1\",\"fields\":{\"textColumn1\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"textColumn2\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. <\\/p>\",\"textColumn3\":\"<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"backgroundColor\":\"dark\"}}},\"41\":\"\",\"82\":\"\",\"42\":\"\",\"43\":\"\",\"85\":{\"title\":\"Content Builder \",\"description\":\"\",\"keywords\":\"[]\",\"score\":\"\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-06-13 07:44:59','2018-06-14 06:54:57','79a2a7b4-4eff-4f59-991f-f9f10192f8b2'),
	(105,147,11,1,'en_gb',22,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Content Builder\",\"slug\":\"content-builder\",\"postDate\":1528285172,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"86\":{\"148\":{\"type\":\"textOneColumn\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Title<\\/strong><br><\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"cta\":{\"153\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"131\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Call To Action Test\",\"target\":\"\"}}},\"154\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"142\"],\"asset\":\"\",\"class\":\"btn btn--secondary\",\"customText\":\"En nog een CTA\",\"target\":\"\"}}}},\"backgroundColor\":\"light\"}},\"149\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"150\"],\"backgroundColor\":\"dark\"}},\"151\":{\"type\":\"textTwoColumns\",\"enabled\":\"1\",\"fields\":{\"textColumn1\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"textColumn2\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"backgroundColor\":\"light\"}},\"157\":{\"type\":\"textVideo\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"video\":\"https:\\/\\/www.youtube.com\\/watch?v=zgDbp5C74sU\",\"videoPosition\":\"right\",\"backgroundColor\":\"default\",\"cta\":{\"158\":{\"type\":\"5\",\"fields\":{\"linkit\":{\"type\":\"custom\",\"email\":\"\",\"tel\":\"\",\"custom\":\"https:\\/\\/www.statik.be\",\"entry\":\"\",\"asset\":\"\",\"class\":\"btn btn--ghost\",\"customText\":\"Statik\",\"target\":\"_blank\"}}},\"159\":{\"type\":\"5\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"53\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Nieuwsbericht!\",\"target\":\"\"}}}}}},\"152\":{\"type\":\"textImage\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"image\":{\"0\":\"130\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"imagePosition\":\"left\",\"backgroundColor\":\"dark\",\"cta\":{\"156\":{\"type\":\"4\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"2\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Test\",\"target\":\"\"}}}}}},\"155\":{\"type\":\"video\",\"enabled\":\"1\",\"fields\":{\"video\":\"https:\\/\\/www.youtube.com\\/watch?v=Q0CbN8sfihY\",\"backgroundColor\":\"light\"}},\"160\":{\"type\":\"form\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Formulier Title hier\",\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"form\":\"1\",\"backgroundColor\":\"light\"}},\"165\":{\"type\":\"textOneColumn\",\"enabled\":\"1\",\"fields\":{\"text\":\"<h2>Kir test de contentbuilder<\\/h2>\\r\\n<h3>heading 3<\\/h3>\\r\\n<h4>heading 4<\\/h4>\\r\\n<h5>heading 5<\\/h5>\\r\\n<p><strong>Lorem ipsum<\\/strong> <em>dolor sit amet, consectetur adipi<\\/em>scing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <\\/p>\\r\\n<ul><li>Duis aute irure dolor <ul><li>in reprehenderit in voluptate<\\/li><\\/ul><ul><li> velit esse cillum dolore eu<\\/li><\\/ul><\\/li><li>Duis aute irure dolor <\\/li><li>in reprehenderit in voluptate\\r\\n<\\/li><li> velit esse cillum dolore eu\\r\\n<\\/li><\\/ul>\\r\\n<ol><li>Duis aute irure dolor \\r\\n<ol><li>in reprehenderit in voluptate<\\/li><\\/ol><\\/li><li>velit esse cillum dolore eu<ol><li>Duis aute irure dolor <\\/li><\\/ol><\\/li><li>in reprehenderit in voluptate<\\/li><li>velit esse cillum dolore eu<\\/li><\\/ol>\\r\\n<p><a href=\\\"https:\\/\\/crabas.staging.statik.be\\/cookie-policy#entry:131:url\\\">fugiat nulla pariatur.<\\/a> Excepteur sint <a href=\\\"http:\\/\\/www.statik.be\\\" target=\\\"_blank\\\" rel=\\\"noreferrer noopener\\\">occaecat cupidatat<\\/a> non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<br><\\/p>\",\"cta\":{\"166\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"163\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Knop 1\",\"target\":\"\"}}},\"167\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"custom\",\"email\":\"\",\"tel\":\"\",\"custom\":\"http:\\/\\/www.statik.be\",\"entry\":\"\",\"asset\":\"\",\"class\":\"btn btn--secondary\",\"customText\":\"Website statik\",\"target\":\"_blank\"}}},\"168\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"asset\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":\"\",\"asset\":[\"100\"],\"class\":\"btn btn--ghost\",\"customText\":\"Dowload mij\",\"target\":\"_blank\"}}},\"169\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"email\",\"email\":\"kirsten@statik.be\",\"tel\":\"\",\"custom\":\"\",\"entry\":\"\",\"asset\":\"\",\"class\":\"link link--ext\",\"customText\":\"mail mij\",\"target\":\"\"}}},\"170\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"tel\",\"email\":\"\",\"tel\":\"0485501820\",\"custom\":\"\",\"entry\":\"\",\"asset\":\"\",\"class\":\"link\",\"customText\":\"bel mij\",\"target\":\"\"}}}},\"backgroundColor\":\"default\"}},\"171\":{\"type\":\"textTwoColumns\",\"enabled\":\"1\",\"fields\":{\"textColumn1\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"textColumn2\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"backgroundColor\":\"light\"}},\"172\":{\"type\":\"textThreeColumns\",\"enabled\":\"1\",\"fields\":{\"textColumn1\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"textColumn2\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. <\\/p>\",\"textColumn3\":\"<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"backgroundColor\":\"dark\"}}},\"41\":\"\",\"82\":\"\",\"42\":\"\",\"43\":\"\",\"85\":{\"title\":\"Content Builder \",\"description\":\"\",\"keywords\":\"[]\",\"score\":\"\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-06-13 07:50:57','2018-06-14 06:54:57','714592f9-1428-4066-a951-2d553ada39a6'),
	(106,147,11,1,'en_gb',23,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Content Builder\",\"slug\":\"content-builder\",\"postDate\":1528285172,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"86\":{\"148\":{\"type\":\"textOneColumn\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Title<\\/strong><br><\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"cta\":{\"153\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"131\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Call To Action Test\",\"target\":\"\"}}},\"154\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"142\"],\"asset\":\"\",\"class\":\"btn btn--secondary\",\"customText\":\"En nog een CTA\",\"target\":\"\"}}}},\"backgroundColor\":\"light\"}},\"149\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"150\"],\"backgroundColor\":\"dark\"}},\"151\":{\"type\":\"textTwoColumns\",\"enabled\":\"1\",\"fields\":{\"textColumn1\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"textColumn2\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"backgroundColor\":\"light\"}},\"157\":{\"type\":\"textVideo\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"video\":\"https:\\/\\/www.youtube.com\\/watch?v=zgDbp5C74sU\",\"videoPosition\":\"right\",\"backgroundColor\":\"default\",\"cta\":{\"158\":{\"type\":\"5\",\"fields\":{\"linkit\":{\"type\":\"custom\",\"email\":\"\",\"tel\":\"\",\"custom\":\"https:\\/\\/www.statik.be\",\"entry\":\"\",\"asset\":\"\",\"class\":\"btn btn--ghost\",\"customText\":\"Statik\",\"target\":\"_blank\"}}},\"159\":{\"type\":\"5\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"53\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Nieuwsbericht!\",\"target\":\"\"}}}}}},\"152\":{\"type\":\"textImage\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"image\":{\"0\":\"130\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"imagePosition\":\"left\",\"backgroundColor\":\"dark\",\"cta\":{\"156\":{\"type\":\"4\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"2\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Test\",\"target\":\"\"}}}}}},\"155\":{\"type\":\"video\",\"enabled\":\"1\",\"fields\":{\"video\":\"https:\\/\\/www.youtube.com\\/watch?v=Q0CbN8sfihY\",\"backgroundColor\":\"light\"}},\"160\":{\"type\":\"form\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Formulier Title hier\",\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"form\":\"1\",\"backgroundColor\":\"light\"}},\"165\":{\"type\":\"textOneColumn\",\"enabled\":\"1\",\"fields\":{\"text\":\"<h2>Kir test de contentbuilder<\\/h2>\\r\\n<h3>heading 3<\\/h3>\\r\\n<h4>heading 4<\\/h4>\\r\\n<h5>heading 5<\\/h5>\\r\\n<p><strong>Lorem ipsum<\\/strong> <em>dolor sit amet, consectetur adipi<\\/em>scing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <\\/p>\\r\\n<ul><li>Duis aute irure dolor <ul><li>in reprehenderit in voluptate<\\/li><\\/ul><ul><li> velit esse cillum dolore eu<\\/li><\\/ul><\\/li><li>Duis aute irure dolor <\\/li><li>in reprehenderit in voluptate\\r\\n<\\/li><li> velit esse cillum dolore eu\\r\\n<\\/li><\\/ul>\\r\\n<ol><li>Duis aute irure dolor \\r\\n<ol><li>in reprehenderit in voluptate<\\/li><\\/ol><\\/li><li>velit esse cillum dolore eu<ol><li>Duis aute irure dolor <\\/li><\\/ol><\\/li><li>in reprehenderit in voluptate<\\/li><li>velit esse cillum dolore eu<\\/li><\\/ol>\\r\\n<p><a href=\\\"https:\\/\\/crabas.staging.statik.be\\/cookie-policy#entry:131:url\\\">fugiat nulla pariatur.<\\/a> Excepteur sint <a href=\\\"http:\\/\\/www.statik.be\\\" target=\\\"_blank\\\" rel=\\\"noreferrer noopener\\\">occaecat cupidatat<\\/a> non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<br><\\/p>\",\"cta\":{\"166\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"163\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Knop 1\",\"target\":\"\"}}},\"167\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"custom\",\"email\":\"\",\"tel\":\"\",\"custom\":\"http:\\/\\/www.statik.be\",\"entry\":\"\",\"asset\":\"\",\"class\":\"btn btn--secondary\",\"customText\":\"Website statik\",\"target\":\"_blank\"}}},\"168\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"asset\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":\"\",\"asset\":[\"100\"],\"class\":\"btn btn--ghost\",\"customText\":\"Dowload mij\",\"target\":\"_blank\"}}},\"169\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"email\",\"email\":\"kirsten@statik.be\",\"tel\":\"\",\"custom\":\"\",\"entry\":\"\",\"asset\":\"\",\"class\":\"link link--ext\",\"customText\":\"mail mij\",\"target\":\"\"}}},\"170\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"tel\",\"email\":\"\",\"tel\":\"0485501820\",\"custom\":\"\",\"entry\":\"\",\"asset\":\"\",\"class\":\"link\",\"customText\":\"bel mij\",\"target\":\"\"}}},\"new1\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":\"\",\"asset\":\"\",\"class\":\"btn\",\"customText\":\"\",\"target\":\"\"}}}},\"backgroundColor\":\"default\"}},\"171\":{\"type\":\"textTwoColumns\",\"enabled\":\"1\",\"fields\":{\"textColumn1\":\"<h2>Lorem ipsum <\\/h2>\\r\\n<p><strong>dolor sit amet,<\\/strong> <em>consectetur adipiscing elit<\\/em>, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <\\/p>\\r\\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, <a href=\\\"https:\\/\\/crabas.staging.statik.be\\/privacy#entry:12:url\\\">sunt in culpa qui officia deserunt mollit anim id est laborum<\\/a><\\/p>\",\"textColumn2\":\"<ul><li>Lorem ipsum dolor sit amet, <\\/li><li>consectetur <\\/li><li>adipiscing elit<\\/li><\\/ul>\\r\\n<p>, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"backgroundColor\":\"light\"}},\"172\":{\"type\":\"textThreeColumns\",\"enabled\":\"1\",\"fields\":{\"textColumn1\":\"<h2>Lorem ipsum dolor<\\/h2>\\r\\n<p> sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"textColumn2\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. <\\/p>\",\"textColumn3\":\"<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"backgroundColor\":\"dark\"}},\"174\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"86\"],\"backgroundColor\":\"default\"}},\"175\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"86\"],\"backgroundColor\":\"light\"}},\"176\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"86\"],\"backgroundColor\":\"dark\"}},\"177\":{\"type\":\"textImage\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\\r\\n<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\\r\\n<\\/p>\",\"image\":{\"0\":\"86\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"imagePosition\":\"left\",\"backgroundColor\":\"default\",\"cta\":{\"new1\":{\"type\":\"4\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"147\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"\",\"target\":\"\"}}}}}},\"179\":{\"type\":\"textImage\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"image\":{\"0\":\"86\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"imagePosition\":\"right\",\"backgroundColor\":\"light\",\"cta\":\"\"}},\"180\":{\"type\":\"textImage\",\"enabled\":\"1\",\"fields\":{\"text\":\"\",\"image\":{\"0\":\"86\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"imagePosition\":\"left\",\"backgroundColor\":\"dark\",\"cta\":\"\"}}},\"41\":\"\",\"82\":\"\",\"42\":\"\",\"43\":\"\",\"85\":{\"title\":\"Content Builder \",\"description\":\"\",\"keywords\":\"[]\",\"score\":\"\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-06-13 08:26:21','2018-06-14 06:54:57','56487f34-ba70-4356-ada0-fd6ff76d85fe'),
	(107,147,11,1,'en_gb',24,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Content Builder\",\"slug\":\"content-builder\",\"postDate\":1528285172,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"86\":{\"148\":{\"type\":\"textOneColumn\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Title<\\/strong><br><\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"cta\":{\"153\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"131\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Call To Action Test\",\"target\":\"\"}}},\"154\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"142\"],\"asset\":\"\",\"class\":\"btn btn--secondary\",\"customText\":\"En nog een CTA\",\"target\":\"\"}}}},\"backgroundColor\":\"light\"}},\"149\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"150\"],\"backgroundColor\":\"dark\"}},\"151\":{\"type\":\"textTwoColumns\",\"enabled\":\"1\",\"fields\":{\"textColumn1\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"textColumn2\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"backgroundColor\":\"light\"}},\"157\":{\"type\":\"textVideo\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"video\":\"https:\\/\\/www.youtube.com\\/watch?v=zgDbp5C74sU\",\"videoPosition\":\"right\",\"backgroundColor\":\"default\",\"cta\":{\"158\":{\"type\":\"5\",\"fields\":{\"linkit\":{\"type\":\"custom\",\"email\":\"\",\"tel\":\"\",\"custom\":\"https:\\/\\/www.statik.be\",\"entry\":\"\",\"asset\":\"\",\"class\":\"btn btn--ghost\",\"customText\":\"Statik\",\"target\":\"_blank\"}}},\"159\":{\"type\":\"5\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"53\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Nieuwsbericht!\",\"target\":\"\"}}}}}},\"152\":{\"type\":\"textImage\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"image\":{\"0\":\"130\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"imagePosition\":\"left\",\"backgroundColor\":\"dark\",\"cta\":{\"156\":{\"type\":\"4\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"2\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Test\",\"target\":\"\"}}}}}},\"155\":{\"type\":\"video\",\"enabled\":\"1\",\"fields\":{\"video\":\"https:\\/\\/www.youtube.com\\/watch?v=Q0CbN8sfihY\",\"backgroundColor\":\"light\"}},\"160\":{\"type\":\"form\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Formulier Title hier\",\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"form\":\"1\",\"backgroundColor\":\"light\"}},\"165\":{\"type\":\"textOneColumn\",\"enabled\":\"1\",\"fields\":{\"text\":\"<h2>Kir test de contentbuilder<\\/h2>\\r\\n<h3>heading 3<\\/h3>\\r\\n<h4>heading 4<\\/h4>\\r\\n<h5>heading 5<\\/h5>\\r\\n<p><strong>Lorem ipsum<\\/strong> <em>dolor sit amet, consectetur adipi<\\/em>scing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <\\/p>\\r\\n<ul><li>Duis aute irure dolor <ul><li>in reprehenderit in voluptate<\\/li><\\/ul><ul><li> velit esse cillum dolore eu<\\/li><\\/ul><\\/li><li>Duis aute irure dolor <\\/li><li>in reprehenderit in voluptate\\r\\n<\\/li><li> velit esse cillum dolore eu\\r\\n<\\/li><\\/ul>\\r\\n<ol><li>Duis aute irure dolor \\r\\n<ol><li>in reprehenderit in voluptate<\\/li><\\/ol><\\/li><li>velit esse cillum dolore eu<ol><li>Duis aute irure dolor <\\/li><\\/ol><\\/li><li>in reprehenderit in voluptate<\\/li><li>velit esse cillum dolore eu<\\/li><\\/ol>\\r\\n<p><a href=\\\"https:\\/\\/crabas.staging.statik.be\\/cookie-policy#entry:131:url\\\">fugiat nulla pariatur.<\\/a> Excepteur sint <a href=\\\"http:\\/\\/www.statik.be\\\" target=\\\"_blank\\\" rel=\\\"noreferrer noopener\\\">occaecat cupidatat<\\/a> non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<br><\\/p>\",\"cta\":{\"166\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"163\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Knop 1\",\"target\":\"\"}}},\"167\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"custom\",\"email\":\"\",\"tel\":\"\",\"custom\":\"http:\\/\\/www.statik.be\",\"entry\":\"\",\"asset\":\"\",\"class\":\"btn btn--secondary\",\"customText\":\"Website statik\",\"target\":\"_blank\"}}},\"168\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"asset\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":\"\",\"asset\":[\"100\"],\"class\":\"btn btn--ghost\",\"customText\":\"Dowload mij\",\"target\":\"_blank\"}}},\"169\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"email\",\"email\":\"kirsten@statik.be\",\"tel\":\"\",\"custom\":\"\",\"entry\":\"\",\"asset\":\"\",\"class\":\"link link--ext\",\"customText\":\"mail mij\",\"target\":\"\"}}},\"170\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"tel\",\"email\":\"\",\"tel\":\"0485501820\",\"custom\":\"\",\"entry\":\"\",\"asset\":\"\",\"class\":\"link\",\"customText\":\"bel mij\",\"target\":\"\"}}},\"173\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":\"\",\"asset\":\"\",\"class\":\"btn\",\"customText\":\"\",\"target\":\"\"}}}},\"backgroundColor\":\"default\"}},\"171\":{\"type\":\"textTwoColumns\",\"enabled\":\"1\",\"fields\":{\"textColumn1\":\"<h2>Lorem ipsum <\\/h2>\\r\\n<p><strong>dolor sit amet,<\\/strong> <em>consectetur adipiscing elit<\\/em>, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <\\/p>\\r\\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, <a href=\\\"https:\\/\\/crabas.staging.statik.be\\/privacy#entry:12:url\\\">sunt in culpa qui officia deserunt mollit anim id est laborum<\\/a><\\/p>\",\"textColumn2\":\"<ul><li>Lorem ipsum dolor sit amet, <\\/li><li>consectetur <\\/li><li>adipiscing elit<\\/li><\\/ul>\\r\\n<p>, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"backgroundColor\":\"light\"}},\"172\":{\"type\":\"textThreeColumns\",\"enabled\":\"1\",\"fields\":{\"textColumn1\":\"<h2>Lorem ipsum dolor<\\/h2>\\r\\n<p> sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"textColumn2\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. <\\/p>\",\"textColumn3\":\"<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"backgroundColor\":\"dark\"}},\"174\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"86\"],\"backgroundColor\":\"default\"}},\"175\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"86\"],\"backgroundColor\":\"light\"}},\"176\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"86\"],\"backgroundColor\":\"dark\"}},\"177\":{\"type\":\"textImage\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\\r\\n<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\\r\\n<\\/p>\",\"image\":{\"0\":\"86\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"imagePosition\":\"left\",\"backgroundColor\":\"default\",\"cta\":{\"178\":{\"type\":\"4\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"147\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"\",\"target\":\"\"}}}}}},\"179\":{\"type\":\"textImage\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"image\":{\"0\":\"86\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"imagePosition\":\"right\",\"backgroundColor\":\"light\",\"cta\":\"\"}},\"180\":{\"type\":\"textImage\",\"enabled\":\"1\",\"fields\":{\"text\":\"\",\"image\":{\"0\":\"86\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"imagePosition\":\"left\",\"backgroundColor\":\"dark\",\"cta\":\"\"}}},\"41\":\"\",\"82\":\"\",\"42\":\"\",\"43\":\"\",\"85\":{\"title\":\"Content Builder \",\"description\":\"\",\"keywords\":\"[]\",\"score\":\"\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-06-13 08:28:31','2018-06-14 06:54:57','f33b9c1a-32f4-4dbc-afd7-c165572340ce'),
	(108,147,11,1,'en_gb',25,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Content Builder\",\"slug\":\"content-builder\",\"postDate\":1528285172,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"86\":{\"148\":{\"type\":\"textOneColumn\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Title<\\/strong><br><\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"cta\":{\"153\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"131\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Call To Action Test\",\"target\":\"\"}}},\"154\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"142\"],\"asset\":\"\",\"class\":\"btn btn--secondary\",\"customText\":\"En nog een CTA\",\"target\":\"\"}}}},\"backgroundColor\":\"light\"}},\"149\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"150\"],\"backgroundColor\":\"dark\"}},\"151\":{\"type\":\"textTwoColumns\",\"enabled\":\"1\",\"fields\":{\"textColumn1\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"textColumn2\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"backgroundColor\":\"light\"}},\"157\":{\"type\":\"textVideo\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"video\":\"https:\\/\\/www.youtube.com\\/watch?v=zgDbp5C74sU\",\"videoPosition\":\"right\",\"backgroundColor\":\"default\",\"cta\":{\"158\":{\"type\":\"5\",\"fields\":{\"linkit\":{\"type\":\"custom\",\"email\":\"\",\"tel\":\"\",\"custom\":\"https:\\/\\/www.statik.be\",\"entry\":\"\",\"asset\":\"\",\"class\":\"btn btn--ghost\",\"customText\":\"Statik\",\"target\":\"_blank\"}}},\"159\":{\"type\":\"5\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"53\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Nieuwsbericht!\",\"target\":\"\"}}}}}},\"152\":{\"type\":\"textImage\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"image\":{\"0\":\"130\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"imagePosition\":\"left\",\"backgroundColor\":\"dark\",\"cta\":{\"156\":{\"type\":\"4\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"2\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Test\",\"target\":\"\"}}}}}},\"155\":{\"type\":\"video\",\"enabled\":\"1\",\"fields\":{\"video\":\"https:\\/\\/www.youtube.com\\/watch?v=Q0CbN8sfihY\",\"backgroundColor\":\"light\"}},\"160\":{\"type\":\"form\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Formulier Title hier\",\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"form\":\"1\",\"backgroundColor\":\"light\"}},\"165\":{\"type\":\"textOneColumn\",\"enabled\":\"1\",\"fields\":{\"text\":\"<h2>Kir test de contentbuilder<\\/h2>\\r\\n<h3>heading 3<\\/h3>\\r\\n<h4>heading 4<\\/h4>\\r\\n<h5>heading 5<\\/h5>\\r\\n<p><strong>Lorem ipsum<\\/strong> <em>dolor sit amet, consectetur adipi<\\/em>scing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <\\/p>\\r\\n<ul><li>Duis aute irure dolor <ul><li>in reprehenderit in voluptate<\\/li><\\/ul><ul><li> velit esse cillum dolore eu<\\/li><\\/ul><\\/li><li>Duis aute irure dolor <\\/li><li>in reprehenderit in voluptate\\r\\n<\\/li><li> velit esse cillum dolore eu\\r\\n<\\/li><\\/ul>\\r\\n<ol><li>Duis aute irure dolor \\r\\n<ol><li>in reprehenderit in voluptate<\\/li><\\/ol><\\/li><li>velit esse cillum dolore eu<ol><li>Duis aute irure dolor <\\/li><\\/ol><\\/li><li>in reprehenderit in voluptate<\\/li><li>velit esse cillum dolore eu<\\/li><\\/ol>\\r\\n<p><a href=\\\"https:\\/\\/crabas.staging.statik.be\\/cookie-policy#entry:131:url\\\">fugiat nulla pariatur.<\\/a> Excepteur sint <a href=\\\"http:\\/\\/www.statik.be\\\" target=\\\"_blank\\\" rel=\\\"noreferrer noopener\\\">occaecat cupidatat<\\/a> non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<br><\\/p>\",\"cta\":{\"166\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"163\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Knop 1\",\"target\":\"\"}}},\"167\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"custom\",\"email\":\"\",\"tel\":\"\",\"custom\":\"http:\\/\\/www.statik.be\",\"entry\":\"\",\"asset\":\"\",\"class\":\"btn btn--secondary\",\"customText\":\"Website statik\",\"target\":\"_blank\"}}},\"168\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"asset\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":\"\",\"asset\":[\"100\"],\"class\":\"btn btn--ghost\",\"customText\":\"Dowload mij\",\"target\":\"_blank\"}}},\"169\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"email\",\"email\":\"kirsten@statik.be\",\"tel\":\"\",\"custom\":\"\",\"entry\":\"\",\"asset\":\"\",\"class\":\"link link--ext\",\"customText\":\"mail mij\",\"target\":\"\"}}},\"170\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"tel\",\"email\":\"\",\"tel\":\"0485501820\",\"custom\":\"\",\"entry\":\"\",\"asset\":\"\",\"class\":\"link\",\"customText\":\"bel mij\",\"target\":\"\"}}},\"173\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":\"\",\"asset\":\"\",\"class\":\"btn\",\"customText\":\"\",\"target\":\"\"}}}},\"backgroundColor\":\"default\"}},\"171\":{\"type\":\"textTwoColumns\",\"enabled\":\"1\",\"fields\":{\"textColumn1\":\"<h2>Lorem ipsum <\\/h2>\\r\\n<p><strong>dolor sit amet,<\\/strong> <em>consectetur adipiscing elit<\\/em>, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <\\/p>\\r\\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, <a href=\\\"https:\\/\\/crabas.staging.statik.be\\/privacy#entry:12:url\\\">sunt in culpa qui officia deserunt mollit anim id est laborum<\\/a><\\/p>\",\"textColumn2\":\"<ul><li>Lorem ipsum dolor sit amet, <\\/li><li>consectetur <\\/li><li>adipiscing elit<\\/li><\\/ul>\\r\\n<p>, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"backgroundColor\":\"light\"}},\"172\":{\"type\":\"textThreeColumns\",\"enabled\":\"1\",\"fields\":{\"textColumn1\":\"<h2>Lorem ipsum dolor<\\/h2>\\r\\n<p> sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"textColumn2\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. <\\/p>\",\"textColumn3\":\"<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"backgroundColor\":\"dark\"}},\"174\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"86\"],\"backgroundColor\":\"default\"}},\"175\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"86\"],\"backgroundColor\":\"light\"}},\"176\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"86\"],\"backgroundColor\":\"dark\"}},\"177\":{\"type\":\"textImage\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\\r\\n<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\\r\\n<\\/p>\",\"image\":{\"0\":\"86\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"imagePosition\":\"left\",\"backgroundColor\":\"default\",\"cta\":{\"178\":{\"type\":\"4\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"147\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"\",\"target\":\"\"}}},\"new1\":{\"type\":\"4\",\"fields\":{\"linkit\":{\"type\":\"asset\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":\"\",\"asset\":[\"100\"],\"class\":\"btn btn--secondary\",\"customText\":\"\",\"target\":\"_blank\"}}}}}},\"179\":{\"type\":\"textImage\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"image\":{\"0\":\"86\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"imagePosition\":\"right\",\"backgroundColor\":\"light\",\"cta\":{\"new1\":{\"type\":\"4\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"142\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"\",\"target\":\"\"}}}}}},\"180\":{\"type\":\"textImage\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"image\":{\"0\":\"86\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"imagePosition\":\"left\",\"backgroundColor\":\"dark\",\"cta\":\"\"}},\"183\":{\"type\":\"video\",\"enabled\":\"1\",\"fields\":{\"video\":\"https:\\/\\/vimeo.com\\/70591644\",\"backgroundColor\":\"default\"}},\"184\":{\"type\":\"video\",\"enabled\":\"1\",\"fields\":{\"video\":\"https:\\/\\/vimeo.com\\/70591644\",\"backgroundColor\":\"light\"}},\"185\":{\"type\":\"video\",\"enabled\":\"1\",\"fields\":{\"video\":\"https:\\/\\/vimeo.com\\/70591644\",\"backgroundColor\":\"dark\"}},\"186\":{\"type\":\"textVideo\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"video\":\"https:\\/\\/vimeo.com\\/70591644\",\"videoPosition\":\"left\",\"backgroundColor\":\"default\",\"cta\":\"\"}},\"187\":{\"type\":\"textVideo\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"video\":\"https:\\/\\/vimeo.com\\/70591644\",\"videoPosition\":\"left\",\"backgroundColor\":\"light\",\"cta\":{\"new1\":{\"type\":\"5\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"142\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"\",\"target\":\"\"}}},\"new2\":{\"type\":\"5\",\"fields\":{\"linkit\":{\"type\":\"asset\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":\"\",\"asset\":[\"100\"],\"class\":\"btn btn--secondary\",\"customText\":\"\",\"target\":\"\"}}}}}},\"190\":{\"type\":\"textVideo\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit&nbsp;<\\/p><p>amet, consectetur adipiscing eli, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<span><\\/span><\\/p>\",\"video\":\"https:\\/\\/vimeo.com\\/70591644\",\"videoPosition\":\"right\",\"backgroundColor\":\"dark\",\"cta\":{\"new1\":{\"type\":\"5\",\"fields\":{\"linkit\":{\"type\":\"\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":\"\",\"asset\":\"\",\"class\":\"btn\",\"customText\":\"\",\"target\":\"\"}}}}}},\"192\":{\"type\":\"form\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Contactformulier\",\"text\":\"<p>Lorem ipsum dolor sit&nbsp;\\r\\n<\\/p>\\r\\n<p>amet, consectetur adipiscing eli, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\\r\\n<\\/p>\",\"form\":\"1\",\"backgroundColor\":\"default\"}},\"193\":{\"type\":\"form\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Magazine formulier\",\"text\":\"<p>Lorem ipsum dolor sit&nbsp;<\\/p>\\r\\n<p>amet, consectetur adipiscing eli, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\\r\\n<\\/p>\",\"form\":\"1\",\"backgroundColor\":\"light\"}},\"194\":{\"type\":\"form\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Titel\",\"text\":\"<p>Lorem ipsum dolor sit&nbsp;\\r\\n<\\/p>\\r\\n<p>amet, consectetur adipiscing eli, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\\r\\n<\\/p>\",\"form\":\"1\",\"backgroundColor\":\"dark\"}}},\"41\":\"\",\"82\":\"\",\"42\":\"\",\"43\":\"\",\"85\":{\"title\":\"Content Builder \",\"description\":\"\",\"keywords\":\"[]\",\"score\":\"\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-06-13 09:11:42','2018-06-14 06:54:57','d5714eac-7d00-40a8-8338-3efd16463e8c'),
	(109,147,11,1,'en_gb',26,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Content Builder\",\"slug\":\"content-builder\",\"postDate\":1528285172,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"86\":{\"148\":{\"type\":\"textOneColumn\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Title<\\/strong><br><\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"cta\":{\"153\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"131\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Call To Action Test\",\"target\":\"\"}}},\"154\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"142\"],\"asset\":\"\",\"class\":\"btn btn--secondary\",\"customText\":\"En nog een CTA\",\"target\":\"\"}}}},\"backgroundColor\":\"light\"}},\"149\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"150\"],\"backgroundColor\":\"dark\"}},\"151\":{\"type\":\"textTwoColumns\",\"enabled\":\"1\",\"fields\":{\"textColumn1\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"textColumn2\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"backgroundColor\":\"light\"}},\"157\":{\"type\":\"textVideo\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"video\":\"https:\\/\\/www.youtube.com\\/watch?v=zgDbp5C74sU\",\"videoPosition\":\"right\",\"backgroundColor\":\"default\",\"cta\":{\"158\":{\"type\":\"5\",\"fields\":{\"linkit\":{\"type\":\"custom\",\"email\":\"\",\"tel\":\"\",\"custom\":\"https:\\/\\/www.statik.be\",\"entry\":\"\",\"asset\":\"\",\"class\":\"btn btn--ghost\",\"customText\":\"Statik\",\"target\":\"_blank\"}}},\"159\":{\"type\":\"5\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"53\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Nieuwsbericht!\",\"target\":\"\"}}}}}},\"152\":{\"type\":\"textImage\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"image\":{\"0\":\"130\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"imagePosition\":\"left\",\"backgroundColor\":\"dark\",\"cta\":{\"156\":{\"type\":\"4\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"2\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Test\",\"target\":\"\"}}}}}},\"155\":{\"type\":\"video\",\"enabled\":\"1\",\"fields\":{\"video\":\"https:\\/\\/www.youtube.com\\/watch?v=Q0CbN8sfihY\",\"backgroundColor\":\"light\"}},\"160\":{\"type\":\"form\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Formulier Title hier\",\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"form\":\"1\",\"backgroundColor\":\"light\"}},\"165\":{\"type\":\"textOneColumn\",\"enabled\":\"1\",\"fields\":{\"text\":\"<h2>Kir test de contentbuilder<\\/h2>\\r\\n<h3>heading 3<\\/h3>\\r\\n<h4>heading 4<\\/h4>\\r\\n<h5>heading 5<\\/h5>\\r\\n<p><strong>Lorem ipsum<\\/strong> <em>dolor sit amet, consectetur adipi<\\/em>scing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <\\/p>\\r\\n<ul><li>Duis aute irure dolor <ul><li>in reprehenderit in voluptate<\\/li><\\/ul><ul><li> velit esse cillum dolore eu<\\/li><\\/ul><\\/li><li>Duis aute irure dolor <\\/li><li>in reprehenderit in voluptate\\r\\n<\\/li><li> velit esse cillum dolore eu\\r\\n<\\/li><\\/ul>\\r\\n<ol><li>Duis aute irure dolor \\r\\n<ol><li>in reprehenderit in voluptate<\\/li><\\/ol><\\/li><li>velit esse cillum dolore eu<ol><li>Duis aute irure dolor <\\/li><\\/ol><\\/li><li>in reprehenderit in voluptate<\\/li><li>velit esse cillum dolore eu<\\/li><\\/ol>\\r\\n<p><a href=\\\"https:\\/\\/crabas.staging.statik.be\\/cookie-policy#entry:131:url\\\">fugiat nulla pariatur.<\\/a> Excepteur sint <a href=\\\"http:\\/\\/www.statik.be\\\" target=\\\"_blank\\\" rel=\\\"noreferrer noopener\\\">occaecat cupidatat<\\/a> non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<br><\\/p>\",\"cta\":{\"166\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"163\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Knop 1\",\"target\":\"\"}}},\"167\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"custom\",\"email\":\"\",\"tel\":\"\",\"custom\":\"http:\\/\\/www.statik.be\",\"entry\":\"\",\"asset\":\"\",\"class\":\"btn btn--secondary\",\"customText\":\"Website statik\",\"target\":\"_blank\"}}},\"168\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"asset\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":\"\",\"asset\":[\"100\"],\"class\":\"btn btn--ghost\",\"customText\":\"Dowload mij\",\"target\":\"_blank\"}}},\"169\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"email\",\"email\":\"kirsten@statik.be\",\"tel\":\"\",\"custom\":\"\",\"entry\":\"\",\"asset\":\"\",\"class\":\"link link--ext\",\"customText\":\"mail mij\",\"target\":\"\"}}},\"170\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"tel\",\"email\":\"\",\"tel\":\"0485501820\",\"custom\":\"\",\"entry\":\"\",\"asset\":\"\",\"class\":\"link\",\"customText\":\"bel mij\",\"target\":\"\"}}},\"173\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":\"\",\"asset\":\"\",\"class\":\"btn\",\"customText\":\"\",\"target\":\"\"}}}},\"backgroundColor\":\"default\"}},\"171\":{\"type\":\"textTwoColumns\",\"enabled\":\"1\",\"fields\":{\"textColumn1\":\"<h2>Lorem ipsum <\\/h2>\\r\\n<p><strong>dolor sit amet,<\\/strong> <em>consectetur adipiscing elit<\\/em>, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <\\/p>\\r\\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, <a href=\\\"https:\\/\\/crabas.staging.statik.be\\/privacy#entry:12:url\\\">sunt in culpa qui officia deserunt mollit anim id est laborum<\\/a><\\/p>\",\"textColumn2\":\"<ul><li>Lorem ipsum dolor sit amet, <\\/li><li>consectetur <\\/li><li>adipiscing elit<\\/li><\\/ul>\\r\\n<p>, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"backgroundColor\":\"light\"}},\"172\":{\"type\":\"textThreeColumns\",\"enabled\":\"1\",\"fields\":{\"textColumn1\":\"<h2>Lorem ipsum dolor<\\/h2>\\r\\n<p> sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"textColumn2\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. <\\/p>\",\"textColumn3\":\"<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"backgroundColor\":\"dark\"}},\"174\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"86\"],\"backgroundColor\":\"default\"}},\"175\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"86\"],\"backgroundColor\":\"light\"}},\"176\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"86\"],\"backgroundColor\":\"dark\"}},\"177\":{\"type\":\"textImage\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\\r\\n<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\\r\\n<\\/p>\",\"image\":{\"0\":\"86\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"imagePosition\":\"left\",\"backgroundColor\":\"default\",\"cta\":{\"178\":{\"type\":\"4\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"147\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"\",\"target\":\"\"}}},\"181\":{\"type\":\"4\",\"fields\":{\"linkit\":{\"type\":\"asset\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":\"\",\"asset\":[\"100\"],\"class\":\"btn btn--secondary\",\"customText\":\"\",\"target\":\"_blank\"}}}}}},\"179\":{\"type\":\"textImage\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"image\":{\"0\":\"86\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"imagePosition\":\"right\",\"backgroundColor\":\"light\",\"cta\":{\"182\":{\"type\":\"4\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"142\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"\",\"target\":\"\"}}}}}},\"180\":{\"type\":\"textImage\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"image\":{\"0\":\"86\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"imagePosition\":\"left\",\"backgroundColor\":\"dark\",\"cta\":\"\"}},\"183\":{\"type\":\"video\",\"enabled\":\"1\",\"fields\":{\"video\":\"https:\\/\\/vimeo.com\\/70591644\",\"backgroundColor\":\"default\"}},\"184\":{\"type\":\"video\",\"enabled\":\"1\",\"fields\":{\"video\":\"https:\\/\\/vimeo.com\\/70591644\",\"backgroundColor\":\"light\"}},\"185\":{\"type\":\"video\",\"enabled\":\"1\",\"fields\":{\"video\":\"https:\\/\\/vimeo.com\\/70591644\",\"backgroundColor\":\"dark\"}},\"186\":{\"type\":\"textVideo\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"video\":\"https:\\/\\/vimeo.com\\/70591644\",\"videoPosition\":\"left\",\"backgroundColor\":\"default\",\"cta\":\"\"}},\"187\":{\"type\":\"textVideo\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"video\":\"https:\\/\\/vimeo.com\\/70591644\",\"videoPosition\":\"left\",\"backgroundColor\":\"light\",\"cta\":{\"188\":{\"type\":\"5\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"142\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"\",\"target\":\"\"}}},\"189\":{\"type\":\"5\",\"fields\":{\"linkit\":{\"type\":\"asset\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":\"\",\"asset\":[\"100\"],\"class\":\"btn btn--secondary\",\"customText\":\"\",\"target\":\"\"}}}}}},\"190\":{\"type\":\"textVideo\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit <\\/p>\\r\\n<p>amet, consectetur adipiscing eli, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"video\":\"https:\\/\\/vimeo.com\\/70591644\",\"videoPosition\":\"right\",\"backgroundColor\":\"dark\",\"cta\":{\"191\":{\"type\":\"5\",\"fields\":{\"linkit\":{\"type\":\"\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":\"\",\"asset\":\"\",\"class\":\"btn\",\"customText\":\"\",\"target\":\"\"}}}}}},\"192\":{\"type\":\"form\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Contactformulier\",\"text\":\"<p>Lorem ipsum dolor sit \\r\\n<\\/p>\\r\\n<p>amet, consectetur adipiscing eli, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\\r\\n<\\/p>\",\"form\":\"1\",\"backgroundColor\":\"default\"}},\"193\":{\"type\":\"form\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Magazine formulier\",\"text\":\"<p>Lorem ipsum dolor sit <\\/p>\\r\\n<p>amet, consectetur adipiscing eli, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\\r\\n<\\/p>\",\"form\":\"1\",\"backgroundColor\":\"light\"}},\"194\":{\"type\":\"form\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Titel\",\"text\":\"<p>Lorem ipsum dolor sit \\r\\n<\\/p>\\r\\n<p>amet, consectetur adipiscing eli, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\\r\\n<\\/p>\",\"form\":\"1\",\"backgroundColor\":\"dark\"}}},\"41\":\"\",\"82\":\"\",\"42\":\"\",\"43\":\"\",\"85\":{\"title\":\"Content Builder \",\"description\":\"\",\"keywords\":\"[]\",\"score\":\"\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-06-13 09:12:20','2018-06-14 06:54:57','0367db1a-3d9f-4621-ba1b-55173e9a4217'),
	(110,147,11,1,'en_gb',27,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Content Builder\",\"slug\":\"content-builder\",\"postDate\":1528285172,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"86\":{\"148\":{\"type\":\"textOneColumn\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Title<\\/strong><br><\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"cta\":{\"153\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"131\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Call To Action Test\",\"target\":\"\"}}},\"154\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"142\"],\"asset\":\"\",\"class\":\"btn btn--secondary\",\"customText\":\"En nog een CTA\",\"target\":\"\"}}}},\"backgroundColor\":\"light\"}},\"149\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"150\"],\"backgroundColor\":\"dark\"}},\"151\":{\"type\":\"textTwoColumns\",\"enabled\":\"1\",\"fields\":{\"textColumn1\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"textColumn2\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"backgroundColor\":\"light\"}},\"157\":{\"type\":\"textVideo\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"video\":\"https:\\/\\/www.youtube.com\\/watch?v=zgDbp5C74sU\",\"videoPosition\":\"right\",\"backgroundColor\":\"default\",\"cta\":{\"158\":{\"type\":\"5\",\"fields\":{\"linkit\":{\"type\":\"custom\",\"email\":\"\",\"tel\":\"\",\"custom\":\"https:\\/\\/www.statik.be\",\"entry\":\"\",\"asset\":\"\",\"class\":\"btn btn--ghost\",\"customText\":\"Statik\",\"target\":\"_blank\"}}},\"159\":{\"type\":\"5\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"53\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Nieuwsbericht!\",\"target\":\"\"}}}}}},\"152\":{\"type\":\"textImage\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"image\":{\"0\":\"130\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"imagePosition\":\"left\",\"backgroundColor\":\"dark\",\"cta\":{\"156\":{\"type\":\"4\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"2\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Test\",\"target\":\"\"}}}}}},\"155\":{\"type\":\"video\",\"enabled\":\"1\",\"fields\":{\"video\":\"https:\\/\\/www.youtube.com\\/watch?v=Q0CbN8sfihY\",\"backgroundColor\":\"light\"}},\"160\":{\"type\":\"form\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Formulier Title hier\",\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"form\":\"1\",\"backgroundColor\":\"light\"}},\"165\":{\"type\":\"textOneColumn\",\"enabled\":\"1\",\"fields\":{\"text\":\"<h2>Kir test de contentbuilder<\\/h2>\\r\\n<h3>heading 3<\\/h3>\\r\\n<h4>heading 4<\\/h4>\\r\\n<h5>heading 5<\\/h5>\\r\\n<p><strong>Lorem ipsum<\\/strong> <em>dolor sit amet, consectetur adipi<\\/em>scing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <\\/p>\\r\\n<ul><li>Duis aute irure dolor <ul><li>in reprehenderit in voluptate<\\/li><\\/ul><ul><li> velit esse cillum dolore eu<\\/li><\\/ul><\\/li><li>Duis aute irure dolor <\\/li><li>in reprehenderit in voluptate\\r\\n<\\/li><li> velit esse cillum dolore eu\\r\\n<\\/li><\\/ul>\\r\\n<ol><li>Duis aute irure dolor \\r\\n<ol><li>in reprehenderit in voluptate<\\/li><\\/ol><\\/li><li>velit esse cillum dolore eu<ol><li>Duis aute irure dolor <\\/li><\\/ol><\\/li><li>in reprehenderit in voluptate<\\/li><li>velit esse cillum dolore eu<\\/li><\\/ol>\\r\\n<p><a href=\\\"https:\\/\\/crabas.staging.statik.be\\/cookie-policy#entry:131:url\\\">fugiat nulla pariatur.<\\/a> Excepteur sint <a href=\\\"http:\\/\\/www.statik.be\\\" target=\\\"_blank\\\" rel=\\\"noreferrer noopener\\\">occaecat cupidatat<\\/a> non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<br><\\/p>\",\"cta\":{\"166\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"163\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Knop 1\",\"target\":\"\"}}},\"167\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"custom\",\"email\":\"\",\"tel\":\"\",\"custom\":\"http:\\/\\/www.statik.be\",\"entry\":\"\",\"asset\":\"\",\"class\":\"btn btn--secondary\",\"customText\":\"Website statik\",\"target\":\"_blank\"}}},\"168\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"asset\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":\"\",\"asset\":[\"100\"],\"class\":\"btn btn--ghost\",\"customText\":\"Dowload mij\",\"target\":\"_blank\"}}},\"169\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"email\",\"email\":\"kirsten@statik.be\",\"tel\":\"\",\"custom\":\"\",\"entry\":\"\",\"asset\":\"\",\"class\":\"link link--ext\",\"customText\":\"mail mij\",\"target\":\"\"}}},\"170\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"tel\",\"email\":\"\",\"tel\":\"0485501820\",\"custom\":\"\",\"entry\":\"\",\"asset\":\"\",\"class\":\"link\",\"customText\":\"bel mij\",\"target\":\"\"}}}},\"backgroundColor\":\"default\"}},\"171\":{\"type\":\"textTwoColumns\",\"enabled\":\"1\",\"fields\":{\"textColumn1\":\"<h2>Lorem ipsum <\\/h2>\\r\\n<p><strong>dolor sit amet,<\\/strong> <em>consectetur adipiscing elit<\\/em>, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <\\/p>\\r\\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, <a href=\\\"https:\\/\\/crabas.staging.statik.be\\/privacy#entry:12:url\\\">sunt in culpa qui officia deserunt mollit anim id est laborum<\\/a><\\/p>\",\"textColumn2\":\"<ul><li>Lorem ipsum dolor sit amet, <\\/li><li>consectetur <\\/li><li>adipiscing elit<\\/li><\\/ul>\\r\\n<p>, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"backgroundColor\":\"light\"}},\"172\":{\"type\":\"textThreeColumns\",\"enabled\":\"1\",\"fields\":{\"textColumn1\":\"<h2>Lorem ipsum dolor<\\/h2>\\r\\n<p> sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"textColumn2\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. <\\/p>\",\"textColumn3\":\"<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"backgroundColor\":\"dark\"}},\"174\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"86\"],\"backgroundColor\":\"default\"}},\"175\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"86\"],\"backgroundColor\":\"light\"}},\"176\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"86\"],\"backgroundColor\":\"dark\"}},\"177\":{\"type\":\"textImage\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\\r\\n<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\\r\\n<\\/p>\",\"image\":{\"0\":\"86\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"imagePosition\":\"left\",\"backgroundColor\":\"default\",\"cta\":{\"178\":{\"type\":\"4\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"147\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"\",\"target\":\"\"}}},\"181\":{\"type\":\"4\",\"fields\":{\"linkit\":{\"type\":\"asset\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":\"\",\"asset\":[\"100\"],\"class\":\"btn btn--secondary\",\"customText\":\"\",\"target\":\"_blank\"}}}}}},\"179\":{\"type\":\"textImage\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"image\":{\"0\":\"86\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"imagePosition\":\"right\",\"backgroundColor\":\"light\",\"cta\":{\"182\":{\"type\":\"4\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"142\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"\",\"target\":\"\"}}}}}},\"180\":{\"type\":\"textImage\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"image\":{\"0\":\"86\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"imagePosition\":\"left\",\"backgroundColor\":\"dark\",\"cta\":\"\"}},\"183\":{\"type\":\"video\",\"enabled\":\"1\",\"fields\":{\"video\":\"https:\\/\\/vimeo.com\\/70591644\",\"backgroundColor\":\"default\"}},\"184\":{\"type\":\"video\",\"enabled\":\"1\",\"fields\":{\"video\":\"https:\\/\\/vimeo.com\\/70591644\",\"backgroundColor\":\"light\"}},\"185\":{\"type\":\"video\",\"enabled\":\"1\",\"fields\":{\"video\":\"https:\\/\\/vimeo.com\\/70591644\",\"backgroundColor\":\"dark\"}},\"186\":{\"type\":\"textVideo\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"video\":\"https:\\/\\/vimeo.com\\/70591644\",\"videoPosition\":\"left\",\"backgroundColor\":\"default\",\"cta\":\"\"}},\"187\":{\"type\":\"textVideo\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"video\":\"https:\\/\\/vimeo.com\\/70591644\",\"videoPosition\":\"left\",\"backgroundColor\":\"light\",\"cta\":{\"188\":{\"type\":\"5\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"142\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"\",\"target\":\"\"}}},\"189\":{\"type\":\"5\",\"fields\":{\"linkit\":{\"type\":\"asset\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":\"\",\"asset\":[\"100\"],\"class\":\"btn btn--secondary\",\"customText\":\"\",\"target\":\"\"}}}}}},\"190\":{\"type\":\"textVideo\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit <\\/p>\\r\\n<p>amet, consectetur adipiscing eli, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"video\":\"https:\\/\\/vimeo.com\\/70591644\",\"videoPosition\":\"right\",\"backgroundColor\":\"dark\",\"cta\":\"\"}},\"192\":{\"type\":\"form\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Contactformulier\",\"text\":\"<p>Lorem ipsum dolor sit \\r\\n<\\/p>\\r\\n<p>amet, consectetur adipiscing eli, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\\r\\n<\\/p>\",\"form\":\"1\",\"backgroundColor\":\"default\"}},\"193\":{\"type\":\"form\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Magazine formulier\",\"text\":\"<p>Lorem ipsum dolor sit <\\/p>\\r\\n<p>amet, consectetur adipiscing eli, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\\r\\n<\\/p>\",\"form\":\"1\",\"backgroundColor\":\"light\"}},\"194\":{\"type\":\"form\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Titel\",\"text\":\"<p>Lorem ipsum dolor sit \\r\\n<\\/p>\\r\\n<p>amet, consectetur adipiscing eli, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\\r\\n<\\/p>\",\"form\":\"1\",\"backgroundColor\":\"dark\"}}},\"41\":\"\",\"82\":\"\",\"42\":\"\",\"43\":\"\",\"85\":{\"title\":\"Content Builder \",\"description\":\"\",\"keywords\":\"[]\",\"score\":\"\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-06-13 09:14:35','2018-06-14 06:54:57','f3a5adf5-eb4b-4b0c-9ef8-956e5f7c827a'),
	(111,147,11,1,'en_gb',28,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Content Builder\",\"slug\":\"content-builder\",\"postDate\":1528285172,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"86\":{\"148\":{\"type\":\"textOneColumn\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Title<\\/strong><br><\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"cta\":{\"153\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"131\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Call To Action Test\",\"target\":\"\"}}},\"154\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"142\"],\"asset\":\"\",\"class\":\"btn btn--secondary\",\"customText\":\"En nog een CTA\",\"target\":\"\"}}}},\"backgroundColor\":\"light\"}},\"149\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"150\"],\"backgroundColor\":\"dark\"}},\"151\":{\"type\":\"textTwoColumns\",\"enabled\":\"1\",\"fields\":{\"textColumn1\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"textColumn2\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"backgroundColor\":\"light\"}},\"157\":{\"type\":\"textVideo\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"video\":\"https:\\/\\/www.youtube.com\\/watch?v=zgDbp5C74sU\",\"videoPosition\":\"right\",\"backgroundColor\":\"default\",\"cta\":{\"158\":{\"type\":\"5\",\"fields\":{\"linkit\":{\"type\":\"custom\",\"email\":\"\",\"tel\":\"\",\"custom\":\"https:\\/\\/www.statik.be\",\"entry\":\"\",\"asset\":\"\",\"class\":\"btn btn--ghost\",\"customText\":\"Statik\",\"target\":\"_blank\"}}},\"159\":{\"type\":\"5\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"53\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Nieuwsbericht!\",\"target\":\"\"}}}}}},\"152\":{\"type\":\"textImage\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"image\":{\"0\":\"130\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"imagePosition\":\"left\",\"backgroundColor\":\"dark\",\"cta\":{\"156\":{\"type\":\"4\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"2\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Test\",\"target\":\"\"}}}}}},\"155\":{\"type\":\"video\",\"enabled\":\"1\",\"fields\":{\"video\":\"https:\\/\\/www.youtube.com\\/watch?v=Q0CbN8sfihY\",\"backgroundColor\":\"light\"}},\"160\":{\"type\":\"form\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Formulier Title hier\",\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"form\":\"1\",\"backgroundColor\":\"light\"}},\"165\":{\"type\":\"textOneColumn\",\"enabled\":\"1\",\"fields\":{\"text\":\"<h2>Kir test de contentbuilder<\\/h2>\\r\\n<h3>heading 3<\\/h3>\\r\\n<h4>heading 4<\\/h4>\\r\\n<h5>heading 5<\\/h5>\\r\\n<p><strong>Lorem ipsum<\\/strong> <em>dolor sit amet, consectetur adipi<\\/em>scing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <\\/p>\\r\\n<ul><li>Duis aute irure dolor <ul><li>in reprehenderit in voluptate<\\/li><\\/ul><ul><li> velit esse cillum dolore eu<\\/li><\\/ul><\\/li><li>Duis aute irure dolor <\\/li><li>in reprehenderit in voluptate\\r\\n<\\/li><li> velit esse cillum dolore eu\\r\\n<\\/li><\\/ul>\\r\\n<ol><li>Duis aute irure dolor \\r\\n<ol><li>in reprehenderit in voluptate<\\/li><\\/ol><\\/li><li>velit esse cillum dolore eu<ol><li>Duis aute irure dolor <\\/li><\\/ol><\\/li><li>in reprehenderit in voluptate<\\/li><li>velit esse cillum dolore eu<\\/li><\\/ol>\\r\\n<p><a href=\\\"https:\\/\\/crabas.staging.statik.be\\/cookie-policy#entry:131:url\\\">fugiat nulla pariatur.<\\/a> Excepteur sint <a href=\\\"http:\\/\\/www.statik.be\\\" target=\\\"_blank\\\" rel=\\\"noreferrer noopener\\\">occaecat cupidatat<\\/a> non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<br><\\/p>\",\"cta\":{\"166\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"163\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Knop 1\",\"target\":\"\"}}},\"167\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"custom\",\"email\":\"\",\"tel\":\"\",\"custom\":\"http:\\/\\/www.statik.be\",\"entry\":\"\",\"asset\":\"\",\"class\":\"btn btn--secondary\",\"customText\":\"Website statik\",\"target\":\"_blank\"}}},\"168\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"asset\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":\"\",\"asset\":[\"100\"],\"class\":\"btn btn--ghost\",\"customText\":\"Dowload mij\",\"target\":\"_blank\"}}},\"169\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"email\",\"email\":\"kirsten@statik.be\",\"tel\":\"\",\"custom\":\"\",\"entry\":\"\",\"asset\":\"\",\"class\":\"link link--ext\",\"customText\":\"mail mij\",\"target\":\"\"}}},\"170\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"tel\",\"email\":\"\",\"tel\":\"0485501820\",\"custom\":\"\",\"entry\":\"\",\"asset\":\"\",\"class\":\"link\",\"customText\":\"bel mij\",\"target\":\"\"}}}},\"backgroundColor\":\"default\"}},\"171\":{\"type\":\"textTwoColumns\",\"enabled\":\"1\",\"fields\":{\"textColumn1\":\"<h2>Lorem ipsum <\\/h2>\\r\\n<p><strong>dolor sit amet,<\\/strong> <em>consectetur adipiscing elit<\\/em>, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <\\/p>\\r\\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, <a href=\\\"https:\\/\\/crabas.staging.statik.be\\/privacy#entry:12:url\\\">sunt in culpa qui officia deserunt mollit anim id est laborum<\\/a><\\/p>\",\"textColumn2\":\"<ul><li>Lorem ipsum dolor sit amet, <\\/li><li>consectetur <\\/li><li>adipiscing elit<\\/li><\\/ul>\\r\\n<p>, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"backgroundColor\":\"light\"}},\"172\":{\"type\":\"textThreeColumns\",\"enabled\":\"1\",\"fields\":{\"textColumn1\":\"<h2>Lorem ipsum dolor<\\/h2>\\r\\n<p> sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"textColumn2\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. <\\/p>\",\"textColumn3\":\"<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"backgroundColor\":\"dark\"}},\"174\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"86\"],\"backgroundColor\":\"default\"}},\"177\":{\"type\":\"textImage\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\\r\\n<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\\r\\n<\\/p>\",\"image\":{\"0\":\"86\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"imagePosition\":\"left\",\"backgroundColor\":\"default\",\"cta\":{\"178\":{\"type\":\"4\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"147\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"\",\"target\":\"\"}}},\"181\":{\"type\":\"4\",\"fields\":{\"linkit\":{\"type\":\"asset\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":\"\",\"asset\":[\"100\"],\"class\":\"btn btn--secondary\",\"customText\":\"\",\"target\":\"_blank\"}}}}}},\"179\":{\"type\":\"textImage\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"image\":{\"0\":\"86\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"imagePosition\":\"right\",\"backgroundColor\":\"light\",\"cta\":{\"182\":{\"type\":\"4\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"142\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"\",\"target\":\"\"}}}}}},\"180\":{\"type\":\"textImage\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"image\":{\"0\":\"86\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"imagePosition\":\"left\",\"backgroundColor\":\"dark\",\"cta\":\"\"}},\"183\":{\"type\":\"video\",\"enabled\":\"1\",\"fields\":{\"video\":\"https:\\/\\/vimeo.com\\/70591644\",\"backgroundColor\":\"default\"}},\"186\":{\"type\":\"textVideo\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"video\":\"https:\\/\\/vimeo.com\\/70591644\",\"videoPosition\":\"left\",\"backgroundColor\":\"default\",\"cta\":\"\"}},\"187\":{\"type\":\"textVideo\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"video\":\"https:\\/\\/vimeo.com\\/70591644\",\"videoPosition\":\"left\",\"backgroundColor\":\"light\",\"cta\":{\"188\":{\"type\":\"5\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"142\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"\",\"target\":\"\"}}},\"189\":{\"type\":\"5\",\"fields\":{\"linkit\":{\"type\":\"asset\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":\"\",\"asset\":[\"100\"],\"class\":\"btn btn--secondary\",\"customText\":\"\",\"target\":\"\"}}}}}},\"190\":{\"type\":\"textVideo\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit <\\/p>\\r\\n<p>amet, consectetur adipiscing eli, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"video\":\"https:\\/\\/vimeo.com\\/70591644\",\"videoPosition\":\"right\",\"backgroundColor\":\"dark\",\"cta\":\"\"}},\"192\":{\"type\":\"form\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Contactformulier\",\"text\":\"<p>Lorem ipsum dolor sit \\r\\n<\\/p>\\r\\n<p>amet, consectetur adipiscing eli, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\\r\\n<\\/p>\",\"form\":\"1\",\"backgroundColor\":\"default\"}},\"193\":{\"type\":\"form\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Magazine formulier\",\"text\":\"<p>Lorem ipsum dolor sit <\\/p>\\r\\n<p>amet, consectetur adipiscing eli, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\\r\\n<\\/p>\",\"form\":\"1\",\"backgroundColor\":\"light\"}},\"194\":{\"type\":\"form\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Titel\",\"text\":\"<p>Lorem ipsum dolor sit \\r\\n<\\/p>\\r\\n<p>amet, consectetur adipiscing eli, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\\r\\n<\\/p>\",\"form\":\"1\",\"backgroundColor\":\"dark\"}}},\"41\":\"\",\"82\":\"\",\"42\":\"\",\"43\":\"\",\"85\":{\"title\":\"Content Builder \",\"description\":\"\",\"keywords\":\"[]\",\"score\":\"\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-06-13 09:18:19','2018-06-14 06:54:57','dc9ef64a-260a-4940-b09a-9abed4b2bd28'),
	(112,147,11,1,'en_gb',29,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Content Builder\",\"slug\":\"content-builder\",\"postDate\":1528285172,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"86\":{\"148\":{\"type\":\"textOneColumn\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Title<\\/strong><br><\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"cta\":{\"153\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"131\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Call To Action Test\",\"target\":\"\"}}},\"154\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"142\"],\"asset\":\"\",\"class\":\"btn btn--secondary\",\"customText\":\"En nog een CTA\",\"target\":\"\"}}}},\"backgroundColor\":\"light\"}},\"149\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"150\"],\"backgroundColor\":\"dark\"}},\"151\":{\"type\":\"textTwoColumns\",\"enabled\":\"1\",\"fields\":{\"textColumn1\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"textColumn2\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"backgroundColor\":\"light\"}},\"157\":{\"type\":\"textVideo\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"video\":\"https:\\/\\/www.youtube.com\\/watch?v=zgDbp5C74sU\",\"videoPosition\":\"right\",\"backgroundColor\":\"default\",\"cta\":{\"158\":{\"type\":\"5\",\"fields\":{\"linkit\":{\"type\":\"custom\",\"email\":\"\",\"tel\":\"\",\"custom\":\"https:\\/\\/www.statik.be\",\"entry\":\"\",\"asset\":\"\",\"class\":\"btn btn--ghost\",\"customText\":\"Statik\",\"target\":\"_blank\"}}},\"159\":{\"type\":\"5\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"53\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Nieuwsbericht!\",\"target\":\"\"}}}}}},\"152\":{\"type\":\"textImage\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"image\":{\"0\":\"130\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"imagePosition\":\"left\",\"backgroundColor\":\"dark\",\"cta\":{\"156\":{\"type\":\"4\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"2\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Test\",\"target\":\"\"}}}}}},\"155\":{\"type\":\"video\",\"enabled\":\"1\",\"fields\":{\"video\":\"https:\\/\\/www.youtube.com\\/watch?v=Q0CbN8sfihY\",\"backgroundColor\":\"light\"}},\"160\":{\"type\":\"form\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Formulier Title hier\",\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"form\":\"1\",\"backgroundColor\":\"light\"}},\"165\":{\"type\":\"textOneColumn\",\"enabled\":\"1\",\"fields\":{\"text\":\"<h2>Kir test de contentbuilder<\\/h2>\\r\\n<h3>heading 3<\\/h3>\\r\\n<h4>heading 4<\\/h4>\\r\\n<h5>heading 5<\\/h5>\\r\\n<p><strong>Lorem ipsum<\\/strong> <em>dolor sit amet, consectetur adipi<\\/em>scing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <\\/p>\\r\\n<ul><li>Duis aute irure dolor <ul><li>in reprehenderit in voluptate<\\/li><\\/ul><ul><li> velit esse cillum dolore eu<\\/li><\\/ul><\\/li><li>Duis aute irure dolor <\\/li><li>in reprehenderit in voluptate\\r\\n<\\/li><li> velit esse cillum dolore eu\\r\\n<\\/li><\\/ul>\\r\\n<ol><li>Duis aute irure dolor \\r\\n<ol><li>in reprehenderit in voluptate<\\/li><\\/ol><\\/li><li>velit esse cillum dolore eu<ol><li>Duis aute irure dolor <\\/li><\\/ol><\\/li><li>in reprehenderit in voluptate<\\/li><li>velit esse cillum dolore eu<\\/li><\\/ol>\\r\\n<p><a href=\\\"https:\\/\\/crabas.staging.statik.be\\/cookie-policy#entry:131:url\\\">fugiat nulla pariatur.<\\/a> Excepteur sint <a href=\\\"http:\\/\\/www.statik.be\\\" target=\\\"_blank\\\" rel=\\\"noreferrer noopener\\\">occaecat cupidatat<\\/a> non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<br><\\/p>\",\"cta\":{\"166\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"163\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Knop 1\",\"target\":\"\"}}},\"167\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"custom\",\"email\":\"\",\"tel\":\"\",\"custom\":\"http:\\/\\/www.statik.be\",\"entry\":\"\",\"asset\":\"\",\"class\":\"btn btn--secondary\",\"customText\":\"Website statik\",\"target\":\"_blank\"}}},\"168\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"asset\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":\"\",\"asset\":[\"100\"],\"class\":\"btn btn--ghost\",\"customText\":\"Dowload mij\",\"target\":\"_blank\"}}},\"169\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"email\",\"email\":\"kirsten@statik.be\",\"tel\":\"\",\"custom\":\"\",\"entry\":\"\",\"asset\":\"\",\"class\":\"link link--ext\",\"customText\":\"mail mij\",\"target\":\"\"}}},\"170\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"tel\",\"email\":\"\",\"tel\":\"0485501820\",\"custom\":\"\",\"entry\":\"\",\"asset\":\"\",\"class\":\"link\",\"customText\":\"bel mij\",\"target\":\"\"}}}},\"backgroundColor\":\"light\"}},\"171\":{\"type\":\"textTwoColumns\",\"enabled\":\"1\",\"fields\":{\"textColumn1\":\"<h2>Lorem ipsum <\\/h2>\\r\\n<p><strong>dolor sit amet,<\\/strong> <em>consectetur adipiscing elit<\\/em>, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <\\/p>\\r\\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, <a href=\\\"https:\\/\\/crabas.staging.statik.be\\/privacy#entry:12:url\\\">sunt in culpa qui officia deserunt mollit anim id est laborum<\\/a><\\/p>\",\"textColumn2\":\"<ul><li>Lorem ipsum dolor sit amet, <\\/li><li>consectetur <\\/li><li>adipiscing elit<\\/li><\\/ul>\\r\\n<p>, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"backgroundColor\":\"light\"}},\"172\":{\"type\":\"textThreeColumns\",\"enabled\":\"1\",\"fields\":{\"textColumn1\":\"<h2>Lorem ipsum dolor<\\/h2>\\r\\n<p> sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"textColumn2\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. <\\/p>\",\"textColumn3\":\"<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"backgroundColor\":\"dark\"}},\"174\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"86\"],\"backgroundColor\":\"default\"}},\"177\":{\"type\":\"textImage\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\\r\\n<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\\r\\n<\\/p>\",\"image\":{\"0\":\"86\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"imagePosition\":\"left\",\"backgroundColor\":\"default\",\"cta\":{\"178\":{\"type\":\"4\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"147\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"\",\"target\":\"\"}}},\"181\":{\"type\":\"4\",\"fields\":{\"linkit\":{\"type\":\"asset\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":\"\",\"asset\":[\"100\"],\"class\":\"btn btn--secondary\",\"customText\":\"\",\"target\":\"_blank\"}}}}}},\"179\":{\"type\":\"textImage\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"image\":{\"0\":\"86\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"imagePosition\":\"right\",\"backgroundColor\":\"light\",\"cta\":{\"182\":{\"type\":\"4\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"142\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"\",\"target\":\"\"}}}}}},\"180\":{\"type\":\"textImage\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"image\":{\"0\":\"86\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"imagePosition\":\"left\",\"backgroundColor\":\"dark\",\"cta\":\"\"}},\"183\":{\"type\":\"video\",\"enabled\":\"1\",\"fields\":{\"video\":\"https:\\/\\/vimeo.com\\/70591644\",\"backgroundColor\":\"default\"}},\"186\":{\"type\":\"textVideo\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"video\":\"https:\\/\\/vimeo.com\\/70591644\",\"videoPosition\":\"left\",\"backgroundColor\":\"default\",\"cta\":\"\"}},\"187\":{\"type\":\"textVideo\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"video\":\"https:\\/\\/vimeo.com\\/70591644\",\"videoPosition\":\"left\",\"backgroundColor\":\"light\",\"cta\":{\"188\":{\"type\":\"5\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"142\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"\",\"target\":\"\"}}},\"189\":{\"type\":\"5\",\"fields\":{\"linkit\":{\"type\":\"asset\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":\"\",\"asset\":[\"100\"],\"class\":\"btn btn--secondary\",\"customText\":\"\",\"target\":\"\"}}}}}},\"190\":{\"type\":\"textVideo\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit <\\/p>\\r\\n<p>amet, consectetur adipiscing eli, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"video\":\"https:\\/\\/vimeo.com\\/70591644\",\"videoPosition\":\"right\",\"backgroundColor\":\"dark\",\"cta\":\"\"}},\"192\":{\"type\":\"form\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Contactformulier\",\"text\":\"<p>Lorem ipsum dolor sit \\r\\n<\\/p>\\r\\n<p>amet, consectetur adipiscing eli, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\\r\\n<\\/p>\",\"form\":\"1\",\"backgroundColor\":\"default\"}},\"193\":{\"type\":\"form\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Magazine formulier\",\"text\":\"<p>Lorem ipsum dolor sit <\\/p>\\r\\n<p>amet, consectetur adipiscing eli, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\\r\\n<\\/p>\",\"form\":\"1\",\"backgroundColor\":\"light\"}},\"194\":{\"type\":\"form\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Titel\",\"text\":\"<p>Lorem ipsum dolor sit \\r\\n<\\/p>\\r\\n<p>amet, consectetur adipiscing eli, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\\r\\n<\\/p>\",\"form\":\"1\",\"backgroundColor\":\"dark\"}},\"195\":{\"type\":\"overview\",\"enabled\":\"1\",\"fields\":{\"entries\":[\"131\",\"12\",\"2\"],\"backgroundColor\":\"default\"}},\"196\":{\"type\":\"overview\",\"enabled\":\"1\",\"fields\":{\"entries\":[\"131\",\"12\",\"2\"],\"backgroundColor\":\"light\"}},\"197\":{\"type\":\"overview\",\"enabled\":\"1\",\"fields\":{\"entries\":[\"131\",\"12\",\"2\"],\"backgroundColor\":\"dark\"}}},\"41\":\"\",\"82\":\"\",\"42\":\"\",\"43\":\"\",\"85\":{\"title\":\"Content Builder \",\"description\":\"\",\"keywords\":\"[]\",\"score\":\"\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-06-13 09:21:04','2018-06-14 06:54:57','21b7a238-5ef2-4fac-9532-6447ed20ce94'),
	(113,55,8,1,'en_gb',2,NULL,'{\"typeId\":null,\"authorId\":null,\"title\":\"Contact\",\"slug\":\"contact\",\"postDate\":1513713508,\"expiryDate\":null,\"enabled\":\"1\",\"parentId\":null,\"fields\":{\"86\":{\"134\":{\"type\":\"textOneColumn\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"cta\":\"\",\"backgroundColor\":\"default\"}}},\"41\":\"<p>Contactpagina<\\/p>\",\"82\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.&nbsp;<\\/p>\",\"42\":[\"130\"],\"43\":\"\",\"85\":{\"title\":\"Contact \",\"description\":\"\",\"keywords\":\"[]\",\"score\":\"\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-06-13 09:45:40','2018-06-14 06:54:57','1c485629-1e1d-48ea-b660-44f4cf1483ec'),
	(114,147,11,1,'en_gb',30,'','{\"typeId\":null,\"authorId\":null,\"title\":\"Content Builder\",\"slug\":\"content-builder\",\"postDate\":1528285172,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"86\":{\"148\":{\"type\":\"textOneColumn\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p><strong>Title<\\/strong><br><\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"cta\":{\"153\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"131\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Call To Action Test\",\"target\":\"\"}}},\"154\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"12\"],\"asset\":\"\",\"class\":\"btn btn--secondary\",\"customText\":\"En nog een CTA\",\"target\":\"\"}}}},\"backgroundColor\":\"light\"}},\"149\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"150\"],\"backgroundColor\":\"dark\"}},\"151\":{\"type\":\"textTwoColumns\",\"enabled\":\"1\",\"fields\":{\"textColumn1\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"textColumn2\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"backgroundColor\":\"light\"}},\"157\":{\"type\":\"textVideo\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"video\":\"https:\\/\\/www.youtube.com\\/watch?v=zgDbp5C74sU\",\"videoPosition\":\"right\",\"backgroundColor\":\"default\",\"cta\":{\"158\":{\"type\":\"5\",\"fields\":{\"linkit\":{\"type\":\"custom\",\"email\":\"\",\"tel\":\"\",\"custom\":\"https:\\/\\/www.statik.be\",\"entry\":\"\",\"asset\":\"\",\"class\":\"btn btn--ghost\",\"customText\":\"Statik\",\"target\":\"_blank\"}}},\"159\":{\"type\":\"5\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"53\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Nieuwsbericht!\",\"target\":\"\"}}}}}},\"152\":{\"type\":\"textImage\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"image\":{\"0\":\"130\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"imagePosition\":\"left\",\"backgroundColor\":\"dark\",\"cta\":{\"156\":{\"type\":\"4\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"2\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Test\",\"target\":\"\"}}}}}},\"155\":{\"type\":\"video\",\"enabled\":\"1\",\"fields\":{\"video\":\"https:\\/\\/www.youtube.com\\/watch?v=Q0CbN8sfihY\",\"backgroundColor\":\"light\"}},\"160\":{\"type\":\"form\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Formulier Title hier\",\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"form\":\"1\",\"backgroundColor\":\"light\"}},\"165\":{\"type\":\"textOneColumn\",\"enabled\":\"1\",\"fields\":{\"text\":\"<h2>Kir test de contentbuilder<\\/h2>\\r\\n<h3>heading 3<\\/h3>\\r\\n<h4>heading 4<\\/h4>\\r\\n<h5>heading 5<\\/h5>\\r\\n<p><strong>Lorem ipsum<\\/strong> <em>dolor sit amet, consectetur adipi<\\/em>scing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <\\/p>\\r\\n<ul><li>Duis aute irure dolor <ul><li>in reprehenderit in voluptate<\\/li><\\/ul><ul><li> velit esse cillum dolore eu<\\/li><\\/ul><\\/li><li>Duis aute irure dolor <\\/li><li>in reprehenderit in voluptate\\r\\n<\\/li><li> velit esse cillum dolore eu\\r\\n<\\/li><\\/ul>\\r\\n<ol><li>Duis aute irure dolor \\r\\n<ol><li>in reprehenderit in voluptate<\\/li><\\/ol><\\/li><li>velit esse cillum dolore eu<ol><li>Duis aute irure dolor <\\/li><\\/ol><\\/li><li>in reprehenderit in voluptate<\\/li><li>velit esse cillum dolore eu<\\/li><\\/ol>\\r\\n<p><a href=\\\"https:\\/\\/crabas.staging.statik.be\\/cookie-policy#entry:131:url\\\">fugiat nulla pariatur.<\\/a> Excepteur sint <a href=\\\"http:\\/\\/www.statik.be\\\" target=\\\"_blank\\\" rel=\\\"noreferrer noopener\\\">occaecat cupidatat<\\/a> non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<br><\\/p>\",\"cta\":{\"166\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"163\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"Knop 1\",\"target\":\"\"}}},\"167\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"custom\",\"email\":\"\",\"tel\":\"\",\"custom\":\"http:\\/\\/www.statik.be\",\"entry\":\"\",\"asset\":\"\",\"class\":\"btn btn--secondary\",\"customText\":\"Website statik\",\"target\":\"_blank\"}}},\"168\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"asset\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":\"\",\"asset\":[\"100\"],\"class\":\"btn btn--ghost\",\"customText\":\"Dowload mij\",\"target\":\"_blank\"}}},\"169\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"email\",\"email\":\"kirsten@statik.be\",\"tel\":\"\",\"custom\":\"\",\"entry\":\"\",\"asset\":\"\",\"class\":\"link link--ext\",\"customText\":\"mail mij\",\"target\":\"\"}}},\"170\":{\"type\":\"3\",\"fields\":{\"linkit\":{\"type\":\"tel\",\"email\":\"\",\"tel\":\"0485501820\",\"custom\":\"\",\"entry\":\"\",\"asset\":\"\",\"class\":\"link\",\"customText\":\"bel mij\",\"target\":\"\"}}}},\"backgroundColor\":\"light\"}},\"171\":{\"type\":\"textTwoColumns\",\"enabled\":\"1\",\"fields\":{\"textColumn1\":\"<h2>Lorem ipsum <\\/h2>\\r\\n<p><strong>dolor sit amet,<\\/strong> <em>consectetur adipiscing elit<\\/em>, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. <\\/p>\\r\\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, <a href=\\\"https:\\/\\/crabas.staging.statik.be\\/privacy#entry:12:url\\\">sunt in culpa qui officia deserunt mollit anim id est laborum<\\/a><\\/p>\",\"textColumn2\":\"<ul><li>Lorem ipsum dolor sit amet, <\\/li><li>consectetur <\\/li><li>adipiscing elit<\\/li><\\/ul>\\r\\n<p>, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"backgroundColor\":\"light\"}},\"172\":{\"type\":\"textThreeColumns\",\"enabled\":\"1\",\"fields\":{\"textColumn1\":\"<h2>Lorem ipsum dolor<\\/h2>\\r\\n<p> sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"textColumn2\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. <\\/p>\",\"textColumn3\":\"<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"backgroundColor\":\"dark\"}},\"174\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"86\"],\"backgroundColor\":\"default\"}},\"177\":{\"type\":\"textImage\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\\r\\n<\\/p>\\r\\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\\r\\n<\\/p>\",\"image\":{\"0\":\"86\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"imagePosition\":\"left\",\"backgroundColor\":\"default\",\"cta\":{\"178\":{\"type\":\"4\",\"fields\":{\"linkit\":{\"type\":\"entry\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":[\"147\"],\"asset\":\"\",\"class\":\"btn\",\"customText\":\"\",\"target\":\"\"}}},\"181\":{\"type\":\"4\",\"fields\":{\"linkit\":{\"type\":\"asset\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":\"\",\"asset\":[\"100\"],\"class\":\"btn btn--secondary\",\"customText\":\"\",\"target\":\"_blank\"}}}}}},\"179\":{\"type\":\"textImage\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"image\":{\"0\":\"86\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"imagePosition\":\"right\",\"backgroundColor\":\"light\",\"cta\":\"\"}},\"180\":{\"type\":\"textImage\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"image\":{\"0\":\"86\",\"focus-attr\":[{\"data-focus-x\":\"0.00\",\"data-focus-y\":\"0.00\"}]},\"imagePosition\":\"left\",\"backgroundColor\":\"dark\",\"cta\":\"\"}},\"183\":{\"type\":\"video\",\"enabled\":\"1\",\"fields\":{\"video\":\"https:\\/\\/vimeo.com\\/70591644\",\"backgroundColor\":\"default\"}},\"186\":{\"type\":\"textVideo\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"video\":\"https:\\/\\/vimeo.com\\/70591644\",\"videoPosition\":\"left\",\"backgroundColor\":\"default\",\"cta\":\"\"}},\"187\":{\"type\":\"textVideo\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"video\":\"https:\\/\\/vimeo.com\\/70591644\",\"videoPosition\":\"left\",\"backgroundColor\":\"light\",\"cta\":{\"189\":{\"type\":\"5\",\"fields\":{\"linkit\":{\"type\":\"asset\",\"email\":\"\",\"tel\":\"\",\"custom\":\"\",\"entry\":\"\",\"asset\":[\"100\"],\"class\":\"btn btn--secondary\",\"customText\":\"\",\"target\":\"\"}}}}}},\"190\":{\"type\":\"textVideo\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit <\\/p>\\r\\n<p>amet, consectetur adipiscing eli, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<\\/p>\",\"video\":\"https:\\/\\/vimeo.com\\/70591644\",\"videoPosition\":\"right\",\"backgroundColor\":\"dark\",\"cta\":\"\"}},\"192\":{\"type\":\"form\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Contactformulier\",\"text\":\"<p>Lorem ipsum dolor sit \\r\\n<\\/p>\\r\\n<p>amet, consectetur adipiscing eli, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\\r\\n<\\/p>\",\"form\":\"1\",\"backgroundColor\":\"default\"}},\"193\":{\"type\":\"form\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Magazine formulier\",\"text\":\"<p>Lorem ipsum dolor sit <\\/p>\\r\\n<p>amet, consectetur adipiscing eli, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\\r\\n<\\/p>\",\"form\":\"1\",\"backgroundColor\":\"light\"}},\"194\":{\"type\":\"form\",\"enabled\":\"1\",\"fields\":{\"heading\":\"Titel\",\"text\":\"<p>Lorem ipsum dolor sit \\r\\n<\\/p>\\r\\n<p>amet, consectetur adipiscing eli, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\\r\\n<\\/p>\",\"form\":\"1\",\"backgroundColor\":\"dark\"}},\"195\":{\"type\":\"overview\",\"enabled\":\"1\",\"fields\":{\"entries\":[\"131\",\"12\",\"2\",\"55\"],\"backgroundColor\":\"default\"}},\"196\":{\"type\":\"overview\",\"enabled\":\"1\",\"fields\":{\"entries\":[\"2\",\"55\",\"163\"],\"backgroundColor\":\"light\"}},\"197\":{\"type\":\"overview\",\"enabled\":\"1\",\"fields\":{\"entries\":[\"2\",\"55\",\"7\"],\"backgroundColor\":\"dark\"}}},\"41\":\"\",\"82\":\"\",\"42\":\"\",\"43\":\"\",\"85\":{\"title\":\"Content Builder \",\"description\":\"\",\"keywords\":\"[]\",\"score\":\"\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-06-13 09:54:58','2018-06-14 06:54:57','08e863d6-4741-4cd2-8893-51feea308a10');

INSERT INTO `craft_entryversions` (`id`, `entryId`, `sectionId`, `creatorId`, `locale`, `num`, `notes`, `data`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(115,7,4,1,'en_gb',2,'','{\"typeId\":\"4\",\"authorId\":null,\"title\":\"Blog\",\"slug\":\"nieuws-overzicht\",\"postDate\":1528959358,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"86\":[],\"41\":\"\",\"82\":\"\",\"43\":\"\",\"85\":{\"title\":\"Nieuws \",\"description\":\"\",\"keywords\":\"[]\",\"score\":\"\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-06-14 07:05:44','2018-06-14 07:05:44','f6ba73bb-2f77-4ba3-88db-a2dbb831113b'),
	(116,53,3,1,'en_gb',3,'','{\"typeId\":\"3\",\"authorId\":\"1\",\"title\":\"Example blog\",\"slug\":\"example-blog\",\"postDate\":1505750040,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"86\":{\"113\":{\"type\":\"textOneColumn\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"cta\":\"\",\"backgroundColor\":\"default\"}}},\"41\":\"<p>Test contentje<\\/p>\",\"82\":\"\",\"42\":[\"84\"],\"43\":\"Example overview title\",\"85\":{\"title\":\"Example News \",\"description\":\"\",\"keywords\":\"[]\",\"score\":\"\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-06-14 07:07:38','2018-06-14 07:07:38','9d890ec3-3ccf-42fb-a769-96b2086081cf'),
	(117,198,3,1,'en_gb',1,'','{\"typeId\":null,\"authorId\":\"1\",\"title\":\"Meer nieuws\",\"slug\":\"meer-nieuws\",\"postDate\":1528960236,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"86\":{\"199\":{\"type\":\"textOneColumn\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"cta\":\"\",\"backgroundColor\":\"default\"}},\"200\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"150\"],\"backgroundColor\":\"default\"}}},\"41\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br><\\/p>\",\"82\":\"\",\"42\":\"\",\"43\":\"\",\"85\":{\"title\":\"Meer nieuws | SmileWise\",\"description\":\"\",\"keywords\":\"[]\",\"score\":\"\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-06-14 07:10:36','2018-06-14 07:10:36','6551a251-0172-4d04-b46e-010c7d325fd5'),
	(118,198,3,1,'en_gb',2,'','{\"typeId\":\"3\",\"authorId\":\"1\",\"title\":\"Meer nieuws\",\"slug\":\"meer-nieuws\",\"postDate\":1528960200,\"expiryDate\":null,\"enabled\":1,\"parentId\":null,\"fields\":{\"86\":{\"199\":{\"type\":\"textOneColumn\",\"enabled\":\"1\",\"fields\":{\"text\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.<\\/p>\",\"cta\":\"\",\"backgroundColor\":\"default\"}},\"200\":{\"type\":\"image\",\"enabled\":\"1\",\"fields\":{\"image\":[\"150\"],\"backgroundColor\":\"default\"}}},\"41\":\"<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br><\\/p>\",\"82\":\"\",\"42\":[\"129\"],\"43\":\"\",\"85\":{\"title\":\"Meer nieuws | SmileWise\",\"description\":\"\",\"keywords\":\"[]\",\"score\":\"\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-06-14 07:21:33','2018-06-14 07:21:33','d5f8bdf9-6989-4aac-899f-f2cadec9dcec'),
	(119,201,12,1,'en_gb',1,'','{\"typeId\":null,\"authorId\":\"1\",\"title\":\"Historiek\",\"slug\":\"historiek\",\"postDate\":1533196387,\"expiryDate\":null,\"enabled\":1,\"parentId\":\"\",\"fields\":{\"82\":\"\",\"42\":\"\",\"43\":\"\",\"85\":{\"title\":\"Historiek | SmileWise\",\"description\":\"\",\"keywords\":\"\",\"score\":\"neutral\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-08-02 07:53:08','2018-08-02 07:53:08','2121b2a7-178f-4584-89c6-7dcf0d0f3d6e'),
	(120,201,12,1,'en_gb',2,'','{\"typeId\":\"12\",\"authorId\":\"1\",\"title\":\"Historiek\",\"slug\":\"historiek\",\"postDate\":1533196380,\"expiryDate\":null,\"enabled\":1,\"parentId\":\"\",\"fields\":{\"82\":\"\",\"42\":\"\",\"43\":\"\",\"85\":{\"title\":\"Historiek | SmileWise\",\"description\":\"\",\"keywords\":\"\",\"score\":\"neutral\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-08-02 07:53:12','2018-08-02 07:53:12','3ea69cbf-9d2a-4ec9-afd4-b5fbf6546d36'),
	(121,202,12,1,'en_gb',1,'','{\"typeId\":null,\"authorId\":\"1\",\"title\":\"Over Abbeyfield\",\"slug\":\"over-abbeyfield\",\"postDate\":1533196475,\"expiryDate\":null,\"enabled\":1,\"parentId\":\"\",\"fields\":{\"82\":\"\",\"42\":\"\",\"43\":\"\",\"85\":{\"title\":\"Over Abbeyfield | SmileWise\",\"description\":\"\",\"keywords\":\"\",\"score\":\"neutral\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-08-02 07:54:35','2018-08-02 07:54:35','283be340-3f23-4c87-893b-92efa4b87432'),
	(122,203,12,1,'en_gb',1,'','{\"typeId\":null,\"authorId\":\"1\",\"title\":\"Visie & Missie\",\"slug\":\"visie-missie\",\"postDate\":1533196551,\"expiryDate\":null,\"enabled\":1,\"parentId\":\"\",\"fields\":{\"82\":\"\",\"42\":\"\",\"43\":\"\",\"85\":{\"title\":\"Visie & Missie | SmileWise\",\"description\":\"\",\"keywords\":\"\",\"score\":\"neutral\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-08-02 07:55:51','2018-08-02 07:55:51','4c32f367-4e5d-4d69-a36f-9d9e035ba40c'),
	(123,204,12,1,'en_gb',1,'','{\"typeId\":null,\"authorId\":\"1\",\"title\":\"Werking\",\"slug\":\"werking\",\"postDate\":1533196577,\"expiryDate\":null,\"enabled\":1,\"parentId\":\"201\",\"fields\":{\"82\":\"\",\"42\":\"\",\"43\":\"\",\"85\":{\"title\":\"Werking | SmileWise\",\"description\":\"\",\"keywords\":\"\",\"score\":\"neutral\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-08-02 07:56:17','2018-08-02 07:56:17','a5f892fb-6f48-45b4-8aa1-1409bf797c61'),
	(124,205,12,1,'en_gb',1,'','{\"typeId\":null,\"authorId\":\"1\",\"title\":\"Team\",\"slug\":\"team\",\"postDate\":1533196598,\"expiryDate\":null,\"enabled\":1,\"parentId\":\"\",\"fields\":{\"82\":\"\",\"42\":\"\",\"43\":\"\",\"85\":{\"title\":\"Team | SmileWise\",\"description\":\"\",\"keywords\":\"\",\"score\":\"neutral\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-08-02 07:56:38','2018-08-02 07:56:38','8d5ffe81-f826-442c-8532-6fb5944708ff'),
	(125,206,12,1,'en_gb',1,'','{\"typeId\":null,\"authorId\":\"1\",\"title\":\"Doe mee\",\"slug\":\"doe-mee\",\"postDate\":1533196619,\"expiryDate\":null,\"enabled\":1,\"parentId\":\"\",\"fields\":{\"82\":\"\",\"42\":\"\",\"43\":\"\",\"85\":{\"title\":\"Doe mee | SmileWise\",\"description\":\"\",\"keywords\":\"\",\"score\":\"neutral\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-08-02 07:56:59','2018-08-02 07:56:59','3f743035-6018-4d4a-9482-6a100a9e39e4'),
	(126,207,12,1,'en_gb',1,'','{\"typeId\":null,\"authorId\":\"1\",\"title\":\"Vrijwilligers gezocht\",\"slug\":\"vrijwilligers-gezocht\",\"postDate\":1533196645,\"expiryDate\":null,\"enabled\":1,\"parentId\":\"\",\"fields\":{\"82\":\"\",\"42\":\"\",\"43\":\"\",\"85\":{\"title\":\"Vrijwilligers gezocht | SmileWise\",\"description\":\"\",\"keywords\":\"\",\"score\":\"neutral\",\"social\":{\"twitter\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"},\"facebook\":{\"image\":\"\",\"title\":\"\",\"description\":\"\"}}}}}','2018-08-02 07:57:25','2018-08-02 07:57:25','4f7e29bf-b23e-4e04-a1c6-804bf0edf682');

/*!40000 ALTER TABLE `craft_entryversions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_fieldgroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_fieldgroups`;

CREATE TABLE `craft_fieldgroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_fieldgroups_name_unq_idx` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_fieldgroups` WRITE;
/*!40000 ALTER TABLE `craft_fieldgroups` DISABLE KEYS */;

INSERT INTO `craft_fieldgroups` (`id`, `name`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'Content','2017-03-09 09:09:45','2017-06-26 12:42:59','6409376c-f7e3-4fbd-af6a-73d549a247cd'),
	(2,'SEO','2017-06-14 05:42:42','2018-05-30 13:56:52','e813c44a-d6e3-44e0-8676-0fad799a7d3d'),
	(3,'Overview','2017-07-03 09:01:47','2017-07-03 09:01:47','3f8c843a-76b8-4458-a23e-0f705d10d19f'),
	(4,'Social media','2017-07-04 07:41:15','2017-07-04 07:41:15','c0c68de7-43f7-4966-b839-5c2f56755c88');

/*!40000 ALTER TABLE `craft_fieldgroups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_fieldlayoutfields
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_fieldlayoutfields`;

CREATE TABLE `craft_fieldlayoutfields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `layoutId` int(11) NOT NULL,
  `tabId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_fieldlayoutfields_layoutId_fieldId_unq_idx` (`layoutId`,`fieldId`),
  KEY `craft_fieldlayoutfields_sortOrder_idx` (`sortOrder`),
  KEY `craft_fieldlayoutfields_tabId_fk` (`tabId`),
  KEY `craft_fieldlayoutfields_fieldId_fk` (`fieldId`),
  CONSTRAINT `craft_fieldlayoutfields_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_fieldlayoutfields_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_fieldlayoutfields_tabId_fk` FOREIGN KEY (`tabId`) REFERENCES `craft_fieldlayouttabs` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_fieldlayoutfields` WRITE;
/*!40000 ALTER TABLE `craft_fieldlayoutfields` DISABLE KEYS */;

INSERT INTO `craft_fieldlayoutfields` (`id`, `layoutId`, `tabId`, `fieldId`, `required`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(98,47,47,42,0,1,'2017-07-03 13:22:43','2017-07-03 13:22:43','403bfff7-7d9f-4b00-abe2-ed0f52deecce'),
	(124,57,57,50,0,1,'2017-07-04 07:48:50','2017-07-04 07:48:50','e8bcae49-8483-499b-b79c-04923438c1f9'),
	(126,57,57,52,0,3,'2017-07-04 07:48:50','2017-07-04 07:48:50','7ffcbc75-b3d1-4ae3-bceb-d950e1e5db5b'),
	(127,57,57,53,0,4,'2017-07-04 07:48:50','2017-07-04 07:48:50','bb636ea5-8e21-4969-8fc8-0fd20634d52a'),
	(128,57,57,54,0,5,'2017-07-04 07:48:50','2017-07-04 07:48:50','d3f53d80-103d-48c8-a37a-684c18daa24e'),
	(129,57,57,55,0,6,'2017-07-04 07:48:50','2017-07-04 07:48:50','5a2d496b-9af7-4fac-acb6-03dddea0d6bb'),
	(130,57,57,56,0,7,'2017-07-04 07:48:50','2017-07-04 07:48:50','67318934-1f9e-44be-9d0b-ce9ffa32b9fb'),
	(164,71,69,21,1,1,'2017-08-20 08:34:12','2017-08-20 08:34:12','e536a503-3ddd-4c7b-a5f0-c713735c0ea8'),
	(165,72,70,22,1,1,'2017-08-20 08:34:12','2017-08-20 08:34:12','1455a0ca-4e4b-4ff3-9600-4f7795363315'),
	(166,73,71,45,0,1,'2017-08-20 08:34:12','2017-08-20 08:34:12','5905f963-e97a-4796-8d0e-e2c2e1537e64'),
	(167,73,71,46,0,2,'2017-08-20 08:34:12','2017-08-20 08:34:12','0f61219f-bf25-49d9-86af-fd59d5165033'),
	(168,73,71,44,1,3,'2017-08-20 08:34:12','2017-08-20 08:34:12','54954251-6df0-4060-b17e-6b74dd9e09e1'),
	(529,179,260,14,1,1,'2018-04-19 13:30:54','2018-04-19 13:30:54','3292df13-bf1c-4ac9-98d6-92e7f9723303'),
	(530,179,260,17,0,2,'2018-04-19 13:30:54','2018-04-19 13:30:54','6411430d-8fb7-4345-a38e-9b4ccef17b74'),
	(531,179,260,15,0,3,'2018-04-19 13:30:54','2018-04-19 13:30:54','318e55cb-57ff-492a-b481-026b108f7762'),
	(532,179,260,16,0,4,'2018-04-19 13:30:54','2018-04-19 13:30:54','f235de82-1a50-475f-8280-07c109af74af'),
	(732,276,370,41,0,1,'2018-05-18 14:38:15','2018-05-18 14:38:15','f24eb1f4-fa1c-4919-b813-c050cfa358e1'),
	(733,276,370,86,0,2,'2018-05-18 14:38:15','2018-05-18 14:38:15','563ef90d-492c-4549-8d08-8c6efdbb0573'),
	(744,279,377,13,0,1,'2018-05-18 14:39:28','2018-05-18 14:39:28','75073d13-747e-4045-a422-98d8fae387b3'),
	(745,279,377,86,0,2,'2018-05-18 14:39:28','2018-05-18 14:39:28','b7fe7482-a7c0-41b6-98d4-05fcfd97465e'),
	(746,279,378,43,0,1,'2018-05-18 14:39:28','2018-05-18 14:39:28','ace1be5e-8386-4930-a345-2a0fb8d5a7f5'),
	(747,279,378,82,0,2,'2018-05-18 14:39:28','2018-05-18 14:39:28','adf9caef-858a-4ae5-a74d-bd892bbd6ab0'),
	(748,279,379,85,0,1,'2018-05-18 14:39:28','2018-05-18 14:39:28','26a413cb-6b96-4fcb-b2df-31a250d21341'),
	(773,290,392,41,0,1,'2018-05-30 13:45:35','2018-05-30 13:45:35','fba78f5d-bd15-48f5-9fbd-e00765b3ed75'),
	(774,290,392,86,0,2,'2018-05-30 13:45:35','2018-05-30 13:45:35','39c6d981-41cb-4775-a348-6dd1419d1f97'),
	(775,290,393,43,0,1,'2018-05-30 13:45:35','2018-05-30 13:45:35','0ff61701-d20d-4b6d-a8f6-f3cef2ac6ad9'),
	(776,290,393,82,0,2,'2018-05-30 13:45:35','2018-05-30 13:45:35','9224c903-2044-4a81-863a-7b9dfb6c1b00'),
	(777,290,393,42,0,3,'2018-05-30 13:45:35','2018-05-30 13:45:35','4360b6a4-10c7-4fe6-8710-4bcb963e9f06'),
	(778,290,394,85,0,1,'2018-05-30 13:45:35','2018-05-30 13:45:35','449f78db-4d40-48ed-954c-76e2a156f8a4'),
	(849,326,432,41,0,1,'2018-06-01 07:10:33','2018-06-01 07:10:33','4b509f69-0bd7-42bf-9318-af01fe124b64'),
	(850,326,432,86,0,2,'2018-06-01 07:10:33','2018-06-01 07:10:33','398a6532-4cae-4f57-b9b1-ccf9eb216bba'),
	(851,327,433,41,0,1,'2018-06-01 07:10:52','2018-06-01 07:10:52','eadb7ff0-b473-4c3c-87f7-4ab9b52d8bfd'),
	(852,327,433,86,0,2,'2018-06-01 07:10:52','2018-06-01 07:10:52','efa627a7-4a6f-42a5-808a-fb6607e6772f'),
	(853,328,434,41,0,1,'2018-06-01 07:11:02','2018-06-01 07:11:02','99d2744c-3e69-49e1-8eb6-6198e1fd983b'),
	(854,328,434,86,0,2,'2018-06-01 07:11:02','2018-06-01 07:11:02','5b0ba9f3-b0f7-4936-950d-1ae0f91188b2'),
	(855,328,435,82,0,1,'2018-06-01 07:11:02','2018-06-01 07:11:02','22a09aca-16b0-48c9-8f5d-97309ed3e15d'),
	(856,328,435,42,0,2,'2018-06-01 07:11:02','2018-06-01 07:11:02','ec78207b-2068-4ee2-b43b-d8360d945068'),
	(857,328,435,43,0,3,'2018-06-01 07:11:02','2018-06-01 07:11:02','a62134f9-4e35-4d82-b9e5-5ca643120774'),
	(858,328,436,85,0,1,'2018-06-01 07:11:02','2018-06-01 07:11:02','107db0ff-0f10-45b3-b11e-844942bd0669'),
	(859,329,437,41,0,1,'2018-06-01 07:11:19','2018-06-01 07:11:19','fc206744-4781-4126-b6fe-c74a78ca917e'),
	(860,329,437,86,0,2,'2018-06-01 07:11:19','2018-06-01 07:11:19','fea59fb4-cb6c-490e-8a35-4995dc4c11f8'),
	(861,329,438,43,0,1,'2018-06-01 07:11:19','2018-06-01 07:11:19','b1b8c315-593e-401e-8d5c-9c61b109f96c'),
	(862,329,438,82,0,2,'2018-06-01 07:11:19','2018-06-01 07:11:19','a5e09e51-e8a0-424d-a5df-7086e48e2442'),
	(863,329,439,85,0,1,'2018-06-01 07:11:19','2018-06-01 07:11:19','092dbfb5-ca42-497e-97aa-fc4aa7a3192f'),
	(864,330,440,41,0,1,'2018-06-01 07:11:25','2018-06-01 07:11:25','e4100fa3-af61-46d5-a42b-18d4e90b20a3'),
	(865,330,440,86,0,2,'2018-06-01 07:11:25','2018-06-01 07:11:25','b9d46f49-e104-48a0-a242-3333ec8bcafe'),
	(866,330,441,43,0,1,'2018-06-01 07:11:25','2018-06-01 07:11:25','2d0e5620-962a-4379-ad03-295f2ce57b7d'),
	(867,330,441,82,0,2,'2018-06-01 07:11:25','2018-06-01 07:11:25','6347b1f8-3eb8-4d5f-a57a-967c6176c320'),
	(868,330,442,85,0,1,'2018-06-01 07:11:25','2018-06-01 07:11:25','da304e04-4feb-4dca-a391-fc858d7bb566'),
	(869,331,443,41,0,1,'2018-06-01 07:11:34','2018-06-01 07:11:34','9d121498-aa9f-4172-804d-839f503c0b32'),
	(870,331,443,86,0,2,'2018-06-01 07:11:34','2018-06-01 07:11:34','29067bfa-f355-4761-a6e4-74e266aceb8c'),
	(938,364,477,41,0,1,'2018-06-06 11:39:41','2018-06-06 11:39:41','8a1e679d-8fc8-4468-82ea-6e14fdca3261'),
	(939,364,477,86,0,2,'2018-06-06 11:39:41','2018-06-06 11:39:41','58569e8e-c004-49ee-9d6e-e1e510987379'),
	(940,364,478,82,0,1,'2018-06-06 11:39:41','2018-06-06 11:39:41','3717594f-cac4-4f41-8d45-b0969344206c'),
	(941,364,478,42,0,2,'2018-06-06 11:39:41','2018-06-06 11:39:41','d3f6b3d4-5fcd-4545-a1f3-5914985f9e9a'),
	(942,364,478,43,0,3,'2018-06-06 11:39:41','2018-06-06 11:39:41','ad1ba317-ea29-40fa-b614-3153cd50a33f'),
	(943,364,479,85,0,1,'2018-06-06 11:39:41','2018-06-06 11:39:41','0375e3a7-089a-49b4-8e8f-0f2cd7f0edb9'),
	(1457,560,674,107,1,1,'2018-06-13 09:13:44','2018-06-13 09:13:44','8768114d-8261-4ca9-aa67-3f63e298f513'),
	(1458,561,675,88,1,1,'2018-06-13 09:13:44','2018-06-13 09:13:44','d4f18395-bf9b-4043-b3e4-daa3b8bd9584'),
	(1459,561,675,106,0,2,'2018-06-13 09:13:44','2018-06-13 09:13:44','43edffca-d9d9-4cb4-a525-efd1ae285f68'),
	(1460,561,675,108,0,3,'2018-06-13 09:13:44','2018-06-13 09:13:44','2abf0b92-5e31-41c6-a89c-bd38cee5b9fc'),
	(1461,562,676,89,1,1,'2018-06-13 09:13:44','2018-06-13 09:13:44','d714b602-a6c1-4028-a0ff-58588d58c59f'),
	(1462,562,676,90,0,2,'2018-06-13 09:13:44','2018-06-13 09:13:44','36ba2126-c82a-4d42-96ba-d71329a6f91f'),
	(1463,562,676,111,0,3,'2018-06-13 09:13:44','2018-06-13 09:13:44','cfac140c-63bc-4fb1-89d1-adfe6ccd4b15'),
	(1464,563,677,102,1,1,'2018-06-13 09:13:44','2018-06-13 09:13:44','e149774e-7d20-4ac9-a8d0-7f833e2b6d8d'),
	(1465,563,677,103,0,2,'2018-06-13 09:13:44','2018-06-13 09:13:44','bace10fc-1779-4aed-85a1-67d80152bcf5'),
	(1466,563,677,104,0,3,'2018-06-13 09:13:44','2018-06-13 09:13:44','251cd900-2480-4446-b71c-e01d497eeab8'),
	(1467,563,677,112,0,4,'2018-06-13 09:13:44','2018-06-13 09:13:44','758b4cb6-9f7d-4d60-84a6-17a0de4eeee4'),
	(1468,564,678,87,1,1,'2018-06-13 09:13:44','2018-06-13 09:13:44','7a003677-c839-4faf-b263-99af0d9b20bb'),
	(1469,564,678,109,0,2,'2018-06-13 09:13:44','2018-06-13 09:13:44','645d1800-cb43-4f88-8183-b9765aa9a643'),
	(1470,565,679,118,1,1,'2018-06-13 09:13:45','2018-06-13 09:13:45','5d827652-298e-4b9d-beea-c5705a918da5'),
	(1471,566,680,95,0,1,'2018-06-13 09:13:45','2018-06-13 09:13:45','9ad745ff-e877-4ab6-b772-fa023a06c0a6'),
	(1472,566,680,96,1,2,'2018-06-13 09:13:45','2018-06-13 09:13:45','56ebe2c5-8269-4324-97f7-aa5c768bb839'),
	(1473,566,680,97,0,3,'2018-06-13 09:13:45','2018-06-13 09:13:45','95fc28df-e7df-4163-9d81-fc6257704cc8'),
	(1474,566,680,110,0,4,'2018-06-13 09:13:45','2018-06-13 09:13:45','98de95af-edf2-4923-9889-092452d31b1e'),
	(1475,566,680,117,0,5,'2018-06-13 09:13:45','2018-06-13 09:13:45','eeef2095-5e8b-4e05-8973-597ba2f9dc06'),
	(1476,567,681,98,1,1,'2018-06-13 09:13:45','2018-06-13 09:13:45','7dfb14e3-8390-4525-995c-b4706fafd415'),
	(1477,567,681,113,0,2,'2018-06-13 09:13:45','2018-06-13 09:13:45','e77bef11-0656-4098-ad51-5861902dbbf7'),
	(1478,568,682,120,1,1,'2018-06-13 09:13:45','2018-06-13 09:13:45','3107b598-ac2e-4bc2-8fb5-0a9ffd5dafc0'),
	(1479,569,683,99,0,1,'2018-06-13 09:13:45','2018-06-13 09:13:45','2502ad9f-81ca-44c5-8408-05c3375390e5'),
	(1480,569,683,100,1,2,'2018-06-13 09:13:45','2018-06-13 09:13:45','78218d38-0b77-4d6a-a90d-a4b70b04cc1e'),
	(1481,569,683,105,0,3,'2018-06-13 09:13:45','2018-06-13 09:13:45','934f88a1-6d86-4801-8af5-d5b09c75b805'),
	(1482,569,683,114,0,4,'2018-06-13 09:13:45','2018-06-13 09:13:45','d8580138-3ca0-4a62-8491-d6003a61edaa'),
	(1483,569,683,119,0,5,'2018-06-13 09:13:45','2018-06-13 09:13:45','dcaf2ebe-e4f2-4862-a1ca-284ac88a3901'),
	(1484,570,684,92,0,1,'2018-06-13 09:13:45','2018-06-13 09:13:45','e97c20c7-7bdc-4afc-959a-796c090603d7'),
	(1485,570,684,93,0,2,'2018-06-13 09:13:45','2018-06-13 09:13:45','f475478e-94eb-4a13-80c2-ab81a713f7b0'),
	(1486,570,684,94,1,3,'2018-06-13 09:13:45','2018-06-13 09:13:45','2773c614-b069-4db5-9dc1-2d9601ec115c'),
	(1487,570,684,115,0,4,'2018-06-13 09:13:45','2018-06-13 09:13:45','81ec2373-707d-41c0-9cc7-831d96b6647f'),
	(1488,571,685,101,1,1,'2018-06-13 09:13:45','2018-06-13 09:13:45','a5a70bde-524d-4fb0-bc0b-791c3f3c88b5'),
	(1489,571,685,116,0,2,'2018-06-13 09:13:45','2018-06-13 09:13:45','76eb1dab-b02b-4552-9237-1278ad1420d6'),
	(1490,573,687,82,0,1,'2018-08-02 07:47:14','2018-08-02 07:47:14','f528e454-0a12-4afc-b32d-fa8f6d4072fb'),
	(1491,573,687,42,0,2,'2018-08-02 07:47:14','2018-08-02 07:47:14','1371d079-1221-4934-a0dc-13a13eeec368'),
	(1492,573,687,43,0,3,'2018-08-02 07:47:14','2018-08-02 07:47:14','35a4aeb7-c615-474e-a49e-d9162d77a742'),
	(1493,573,688,85,0,1,'2018-08-02 07:47:14','2018-08-02 07:47:14','2c14ee3f-1c38-4a4e-b2e6-22623ea4133d');

/*!40000 ALTER TABLE `craft_fieldlayoutfields` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_fieldlayouts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_fieldlayouts`;

CREATE TABLE `craft_fieldlayouts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_fieldlayouts_type_idx` (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_fieldlayouts` WRITE;
/*!40000 ALTER TABLE `craft_fieldlayouts` DISABLE KEYS */;

INSERT INTO `craft_fieldlayouts` (`id`, `type`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'Tag','2017-03-09 09:09:45','2017-03-09 09:09:45','1706b869-9f28-4b0a-8525-52269d2bebb2'),
	(47,'GlobalSet','2017-07-03 13:22:43','2017-07-03 13:22:43','55936446-36b1-47be-ac99-9988906f0106'),
	(57,'GlobalSet','2017-07-04 07:48:50','2017-07-04 07:48:50','9dc9fe75-9494-4620-8f01-424193286f27'),
	(71,'MatrixBlock','2017-08-20 08:34:12','2017-08-20 08:34:12','5249e714-abc2-47b9-bd77-ead241bbf2af'),
	(72,'MatrixBlock','2017-08-20 08:34:12','2017-08-20 08:34:12','75d52fd3-52f6-43f9-b749-541b290ed9b6'),
	(73,'MatrixBlock','2017-08-20 08:34:12','2017-08-20 08:34:12','53684cff-d7c4-4640-b84d-ed1ee1587903'),
	(179,'SuperTable_Block','2018-04-19 13:30:54','2018-04-19 13:30:54','14ebb197-ff61-47b2-9a63-876556ca8684'),
	(276,'Entry','2018-05-18 14:38:15','2018-05-18 14:38:15','76924f82-1546-49b0-8c17-fcef15c6eaac'),
	(279,'Entry','2018-05-18 14:39:28','2018-05-18 14:39:28','d2c8ccdc-73d8-4412-9f0b-43bc6c3d494d'),
	(290,'Entry','2018-05-30 13:45:35','2018-05-30 13:45:35','647fe3d9-0b8a-43b4-8d5f-da0ff959dfe4'),
	(326,'Entry','2018-06-01 07:10:33','2018-06-01 07:10:33','a0d0f749-197a-4ffe-b0e6-2ae0a7462e21'),
	(327,'Entry','2018-06-01 07:10:52','2018-06-01 07:10:52','a2d76fc0-ff2e-45b0-b348-b3f20ddba1c4'),
	(328,'Entry','2018-06-01 07:11:02','2018-06-01 07:11:02','ea7bda3d-a043-4ee4-99d1-a982e8460e62'),
	(329,'Entry','2018-06-01 07:11:19','2018-06-01 07:11:19','a3197dd8-14a0-4f9e-8d74-5a73e09f13a5'),
	(330,'Entry','2018-06-01 07:11:25','2018-06-01 07:11:25','b7f1df1f-89d2-437c-92dd-9aeb601dd1e8'),
	(331,'Entry','2018-06-01 07:11:34','2018-06-01 07:11:34','6a9a4e25-f0b1-4ea4-855d-6f2840daef6a'),
	(364,'Entry','2018-06-06 11:39:41','2018-06-06 11:39:41','2de0138c-7e58-4c8c-93a6-fb1d1a9fea05'),
	(439,'Asset','2018-06-08 11:28:41','2018-06-08 11:28:41','50882db4-2a0d-4d22-971c-d5eaa5d2f7c8'),
	(560,'SuperTable_Block','2018-06-13 09:13:44','2018-06-13 09:13:44','8cb2c921-ed57-42ac-bb62-c6cf9a0653cb'),
	(561,'MatrixBlock','2018-06-13 09:13:44','2018-06-13 09:13:44','eb0dea16-70f0-41df-b9cd-075e5629bcda'),
	(562,'MatrixBlock','2018-06-13 09:13:44','2018-06-13 09:13:44','75f925cf-e385-44d8-9fbf-10217dbaaeeb'),
	(563,'MatrixBlock','2018-06-13 09:13:44','2018-06-13 09:13:44','762c0402-5dd7-43d6-a137-f48f950a8585'),
	(564,'MatrixBlock','2018-06-13 09:13:44','2018-06-13 09:13:44','bc5ed9fe-5000-4488-922a-3b95add3d466'),
	(565,'SuperTable_Block','2018-06-13 09:13:45','2018-06-13 09:13:45','056e794d-e4f8-4d6a-bdc1-cd09ff538c1f'),
	(566,'MatrixBlock','2018-06-13 09:13:45','2018-06-13 09:13:45','82597c9c-7ecc-4edf-b5f2-0357eaf41770'),
	(567,'MatrixBlock','2018-06-13 09:13:45','2018-06-13 09:13:45','62af5fcd-f3f6-4087-bba3-800a155ee4b1'),
	(568,'SuperTable_Block','2018-06-13 09:13:45','2018-06-13 09:13:45','7a793bf9-f86d-4888-b39c-a7e161236e57'),
	(569,'MatrixBlock','2018-06-13 09:13:45','2018-06-13 09:13:45','39be7f2b-390f-4f33-838d-ab55b5376e86'),
	(570,'MatrixBlock','2018-06-13 09:13:45','2018-06-13 09:13:45','8f1995be-816e-41ec-9de0-7794a6ed8d99'),
	(571,'MatrixBlock','2018-06-13 09:13:45','2018-06-13 09:13:45','0b100a6f-5eda-4730-b0c5-faeba0571112'),
	(573,'Entry','2018-08-02 07:47:14','2018-08-02 07:47:14','460bb0c6-72da-4623-ae23-9b896f44d989');

/*!40000 ALTER TABLE `craft_fieldlayouts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_fieldlayouttabs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_fieldlayouttabs`;

CREATE TABLE `craft_fieldlayouttabs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `layoutId` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_fieldlayouttabs_sortOrder_idx` (`sortOrder`),
  KEY `craft_fieldlayouttabs_layoutId_fk` (`layoutId`),
  CONSTRAINT `craft_fieldlayouttabs_layoutId_fk` FOREIGN KEY (`layoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_fieldlayouttabs` WRITE;
/*!40000 ALTER TABLE `craft_fieldlayouttabs` DISABLE KEYS */;

INSERT INTO `craft_fieldlayouttabs` (`id`, `layoutId`, `name`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(47,47,'Content',1,'2017-07-03 13:22:43','2017-07-03 13:22:43','7a594134-45e0-4cd1-a158-af47b516df4b'),
	(57,57,'Content',1,'2017-07-04 07:48:50','2017-07-04 07:48:50','5de88190-de18-4468-ac4c-153a72a74425'),
	(69,71,'Content',1,'2017-08-20 08:34:12','2017-08-20 08:34:12','5360c5f4-1a40-450e-be93-cbcd50dac2a3'),
	(70,72,'Content',1,'2017-08-20 08:34:12','2017-08-20 08:34:12','499a8024-79e3-46fc-912e-1a931f2165b1'),
	(71,73,'Content',1,'2017-08-20 08:34:12','2017-08-20 08:34:12','19c1647d-087f-487a-bc9a-8f6307999409'),
	(260,179,'Content',1,'2018-04-19 13:30:54','2018-04-19 13:30:54','d49c1e20-29b6-46d0-87ed-ecc2058f2217'),
	(370,276,'Content',1,'2018-05-18 14:38:15','2018-05-18 14:38:15','a67f0bc7-36a7-4ea9-b2d7-fc630af5e980'),
	(377,279,'Content',1,'2018-05-18 14:39:28','2018-05-18 14:39:28','29697f63-44e5-49fe-9675-be2e7fdca015'),
	(378,279,'Overview',2,'2018-05-18 14:39:28','2018-05-18 14:39:28','6c6c0fc8-7ec2-473c-b1ae-2047fdc78c6d'),
	(379,279,'Seo',3,'2018-05-18 14:39:28','2018-05-18 14:39:28','0362b9d1-5cf7-4b2f-a8cc-4a9a6ad68cfe'),
	(392,290,'Content',1,'2018-05-30 13:45:35','2018-05-30 13:45:35','8ab968bc-9029-4860-8217-2680070b61ef'),
	(393,290,'Overview',2,'2018-05-30 13:45:35','2018-05-30 13:45:35','d5c27f05-4686-4860-b3d9-ea4d9d14dc98'),
	(394,290,'SEO',3,'2018-05-30 13:45:35','2018-05-30 13:45:35','4f0d4eef-1d0f-443a-99e3-cb161c8c83b0'),
	(432,326,'Content',1,'2018-06-01 07:10:33','2018-06-01 07:10:33','172f6755-7123-42e6-b978-66b93475d39e'),
	(433,327,'Content',1,'2018-06-01 07:10:52','2018-06-01 07:10:52','e786e153-bd95-43bd-8eae-f6cd6f5c084b'),
	(434,328,'Content',1,'2018-06-01 07:11:02','2018-06-01 07:11:02','37f10199-718b-47b3-8fe5-bac1202dace7'),
	(435,328,'Overview',2,'2018-06-01 07:11:02','2018-06-01 07:11:02','b668d2f8-44aa-4f45-a646-5a034564bc49'),
	(436,328,'SEO',3,'2018-06-01 07:11:02','2018-06-01 07:11:02','9b17a3d1-7154-403c-a52c-34e3e9fc177e'),
	(437,329,'Content',1,'2018-06-01 07:11:19','2018-06-01 07:11:19','50f3e81e-2e76-4daa-ab4b-873d636bf745'),
	(438,329,'Overview',2,'2018-06-01 07:11:19','2018-06-01 07:11:19','616500ec-c053-4b3d-8fbf-3d07c55cccf7'),
	(439,329,'SEO',3,'2018-06-01 07:11:19','2018-06-01 07:11:19','168db0cc-e4a4-44da-bac9-8037f604e88c'),
	(440,330,'Content',1,'2018-06-01 07:11:25','2018-06-01 07:11:25','58f361a0-924e-429d-b662-858a48e4284b'),
	(441,330,'Overview',2,'2018-06-01 07:11:25','2018-06-01 07:11:25','86d563f7-0613-42a8-9791-7fc4f09bfe88'),
	(442,330,'SEO',3,'2018-06-01 07:11:25','2018-06-01 07:11:25','8c48c274-b638-43e3-a692-6194017bd60c'),
	(443,331,'Content',1,'2018-06-01 07:11:34','2018-06-01 07:11:34','f8710cf6-3ac3-45d0-b092-bc3061f95303'),
	(477,364,'Content',1,'2018-06-06 11:39:41','2018-06-06 11:39:41','868a669a-6370-4b56-8a8a-5c6d65d80722'),
	(478,364,'Overview',2,'2018-06-06 11:39:41','2018-06-06 11:39:41','f4375edd-0fe5-41e6-9fcf-eaa67ee06c48'),
	(479,364,'SEO',3,'2018-06-06 11:39:41','2018-06-06 11:39:41','c0638af2-53b2-463b-aea8-e1eedb435469'),
	(674,560,'Content',1,'2018-06-13 09:13:44','2018-06-13 09:13:44','678ce349-fe21-4bbd-bb4b-3d4924ea0481'),
	(675,561,'Content',1,'2018-06-13 09:13:44','2018-06-13 09:13:44','69798364-9e3a-4742-81ad-7e878aa463f5'),
	(676,562,'Content',1,'2018-06-13 09:13:44','2018-06-13 09:13:44','fae57d9c-8904-4bbe-b0b6-3cd46c952720'),
	(677,563,'Content',1,'2018-06-13 09:13:44','2018-06-13 09:13:44','fcda11aa-1397-4cb5-938a-da8405873ce6'),
	(678,564,'Content',1,'2018-06-13 09:13:44','2018-06-13 09:13:44','1423a67d-8c85-428b-a258-1b8133228a7c'),
	(679,565,'Content',1,'2018-06-13 09:13:45','2018-06-13 09:13:45','67d32797-17d7-4577-834f-51afc6023e5d'),
	(680,566,'Content',1,'2018-06-13 09:13:45','2018-06-13 09:13:45','9ab68703-bb50-4915-b002-ecf5bccb7d9b'),
	(681,567,'Content',1,'2018-06-13 09:13:45','2018-06-13 09:13:45','0a9ab3af-1fe1-40b7-bea0-5ef5f9a23138'),
	(682,568,'Content',1,'2018-06-13 09:13:45','2018-06-13 09:13:45','ae8a2c5a-2c3b-4495-959d-f6ff7387fa9f'),
	(683,569,'Content',1,'2018-06-13 09:13:45','2018-06-13 09:13:45','a37fd08a-1be8-42fc-bd51-98476bf18eaa'),
	(684,570,'Content',1,'2018-06-13 09:13:45','2018-06-13 09:13:45','ce8041d6-228b-49b8-87d3-6d1cca6f222e'),
	(685,571,'Content',1,'2018-06-13 09:13:45','2018-06-13 09:13:45','228848a9-4bb6-40e5-b23e-6d2c1c90d4a8'),
	(686,573,'Content',1,'2018-08-02 07:47:14','2018-08-02 07:47:14','a9f5c8d8-cf58-49fa-8a3a-795ba363b308'),
	(687,573,'Overview',2,'2018-08-02 07:47:14','2018-08-02 07:47:14','54dd771f-6f7a-47ca-9e8e-a6d6949e41ec'),
	(688,573,'SEO',3,'2018-08-02 07:47:14','2018-08-02 07:47:14','95159e91-f468-4f41-9f36-cd8892dd67b4');

/*!40000 ALTER TABLE `craft_fieldlayouttabs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_fields
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_fields`;

CREATE TABLE `craft_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(58) COLLATE utf8_unicode_ci NOT NULL,
  `context` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'global',
  `instructions` text COLLATE utf8_unicode_ci,
  `translatable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_fields_handle_context_unq_idx` (`handle`,`context`),
  KEY `craft_fields_context_idx` (`context`),
  KEY `craft_fields_groupId_fk` (`groupId`),
  CONSTRAINT `craft_fields_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_fieldgroups` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_fields` WRITE;
/*!40000 ALTER TABLE `craft_fields` DISABLE KEYS */;

INSERT INTO `craft_fields` (`id`, `groupId`, `name`, `handle`, `context`, `instructions`, `translatable`, `type`, `settings`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(13,1,'Hero','hero','global','',1,'SuperTable','{\"columns\":{\"14\":{\"width\":\"\"},\"17\":{\"width\":\"\"},\"15\":{\"width\":\"\"},\"16\":{\"width\":\"\"}},\"fieldLayout\":\"row\",\"staticField\":\"1\",\"selectionLabel\":\"Add a row\",\"maxRows\":null,\"minRows\":null}','2017-06-26 12:46:58','2018-04-19 13:30:54','2e338633-3915-460d-bbc4-ff545178dee7'),
	(14,NULL,'Afbeelding','image','superTableBlockType:2','',1,'Assets','{\"useSingleFolder\":\"\",\"sources\":\"*\",\"defaultUploadLocationSource\":\"1\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"1\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"1\",\"allowedKinds\":[\"image\"],\"targetLocale\":\"\",\"limit\":\"1\",\"viewMode\":\"large\",\"selectionLabel\":\"Afbeelding toevoegen\"}','2017-06-26 12:46:58','2018-04-19 13:30:54','4d249ef3-b1f7-4540-824b-83f5644f166a'),
	(15,NULL,'Hoofding','heading','superTableBlockType:2','',1,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2017-06-26 12:46:58','2018-04-19 13:30:54','500183da-e482-4a88-88b9-635bca5ed95e'),
	(16,NULL,'Omschrijving','description','superTableBlockType:2','',1,'RichText','{\"configFile\":\"Standard.json\",\"availableAssetSources\":\"*\",\"availableTransforms\":\"*\",\"cleanupHtml\":\"1\",\"purifyHtml\":\"1\",\"purifierConfig\":\"\",\"columnType\":\"text\"}','2017-06-26 12:46:58','2018-04-19 13:30:54','b5736b73-ad79-4219-9ace-66f8b8082f0f'),
	(17,NULL,'Tekst kleur','textColor','superTableBlockType:2','',1,'Dropdown','{\"options\":[{\"label\":\"Donker\",\"value\":\"dark\",\"default\":\"1\"},{\"label\":\"Licht\",\"value\":\"light\",\"default\":\"\"}]}','2017-06-26 12:54:58','2018-04-19 13:30:54','07a20e5a-79ea-43ee-ba58-fff81b4eac07'),
	(21,NULL,'Rich text','text','matrixBlockType:3','',1,'RichText','{\"configFile\":\"Extended.json\",\"availableAssetSources\":\"*\",\"availableTransforms\":\"*\",\"cleanupHtml\":\"1\",\"purifyHtml\":\"1\",\"purifierConfig\":\"\",\"columnType\":\"text\"}','2017-07-02 12:52:05','2017-08-20 08:34:12','546991ed-71cf-4da1-af1a-d95bf2bce0a9'),
	(22,NULL,'Asset','asset','matrixBlockType:4','',1,'Assets','{\"useSingleFolder\":\"\",\"sources\":\"*\",\"defaultUploadLocationSource\":\"1\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"1\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"1\",\"allowedKinds\":[\"image\"],\"targetLocale\":\"\",\"limit\":\"1\",\"viewMode\":\"large\",\"selectionLabel\":\"\"}','2017-07-02 12:52:05','2017-08-20 08:34:12','f4474d51-1e22-42ac-ac99-dc32054f7025'),
	(41,1,'Intro','intro','global','',1,'RichText','{\"configFile\":\"Standard.json\",\"availableAssetSources\":\"*\",\"availableTransforms\":\"*\",\"cleanupHtml\":\"1\",\"purifyHtml\":\"1\",\"purifierConfig\":\"\",\"columnType\":\"text\"}','2017-07-03 07:20:42','2017-08-20 08:33:20','2002a908-3ef0-4b41-bbf4-6e483c214c70'),
	(42,3,'Overview image','overviewImage','global','',0,'Assets','{\"useSingleFolder\":\"\",\"sources\":\"*\",\"defaultUploadLocationSource\":\"1\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"1\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"1\",\"allowedKinds\":[\"image\"],\"targetLocale\":\"\",\"limit\":\"1\",\"viewMode\":\"large\",\"selectionLabel\":\"Add an image\"}','2017-07-03 09:05:17','2018-06-01 07:12:40','a986d351-6893-4655-827c-55210f7d6492'),
	(43,3,'Overview title','overviewTitle','global','',1,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2017-07-03 09:23:50','2017-08-20 08:35:19','d5c27c24-6504-4869-8ad1-45006d0aabca'),
	(44,NULL,'Freeform','freeform','matrixBlockType:8','',1,'Freeform_Forms',NULL,'2017-07-03 12:51:41','2017-08-20 08:34:12','920ae19a-57e2-477a-8b97-dae107b4188f'),
	(45,NULL,'Background','background','matrixBlockType:8','',1,'Lightswitch','{\"default\":\"\"}','2017-07-03 14:12:19','2017-08-20 08:34:12','77b277a6-4ce4-4e11-85f7-823ce1daf22c'),
	(46,NULL,'Rich text','text','matrixBlockType:8','',1,'RichText','{\"configFile\":\"Extended.json\",\"availableAssetSources\":\"*\",\"availableTransforms\":\"*\",\"cleanupHtml\":\"1\",\"purifyHtml\":\"1\",\"purifierConfig\":\"\",\"columnType\":\"text\"}','2017-07-03 14:12:19','2017-08-20 08:34:12','6254e1ee-5de5-40d5-b68f-85aa4ea20a29'),
	(50,4,'Facebook','facebook','global','',1,'VzUrl','{\"followRedirects\":\"1\"}','2017-07-04 07:42:32','2017-08-20 08:35:07','c4587eac-acf7-4e87-ba8e-599d03bde57b'),
	(52,4,'Instagram','instagram','global','',1,'VzUrl','{\"followRedirects\":\"1\"}','2017-07-04 07:43:33','2017-08-20 08:35:12','f9e679f6-7d37-4db6-a967-8124dff5cca4'),
	(53,4,'LinkedIn','linkedin','global','',1,'VzUrl','{\"followRedirects\":\"1\"}','2017-07-04 07:44:48','2017-08-20 08:35:14','77e223af-961f-49bd-a689-d43583a16605'),
	(54,4,'Pinterest','pinterest','global','',1,'VzUrl','{\"followRedirects\":\"1\"}','2017-07-04 07:46:23','2017-08-20 08:35:22','b9c264bf-2667-4161-b6c4-e7a22b29f193'),
	(55,4,'Twitter','twitter','global','',1,'VzUrl','{\"followRedirects\":\"1\"}','2017-07-04 07:46:45','2017-08-20 08:35:29','3c20af93-2139-4a80-9872-8bb9e6252d9d'),
	(56,4,'YouTube','youtube','global','',1,'VzUrl','{\"followRedirects\":\"1\"}','2017-07-04 07:47:17','2017-08-20 08:35:31','8f2054d3-08e2-48b6-9184-f454e5acccc0'),
	(82,3,'Overview description','overviewDescription','global','',1,'RichText','{\"configFile\":\"Simple.json\",\"availableAssetSources\":\"*\",\"availableTransforms\":\"*\",\"cleanupHtml\":\"1\",\"purifyHtml\":\"1\",\"purifierConfig\":\"\",\"columnType\":\"text\"}','2017-09-08 20:09:57','2017-09-08 20:09:57','18ff92e0-1aef-41d4-a176-34e036fe45b3'),
	(85,2,'SEO','seo','global','',1,'Seo','{\"titleSuffix\":\"\",\"socialImage\":\"\",\"hideSocial\":\"\"}','2018-04-25 13:48:32','2018-04-25 13:48:54','a26672e2-b5f8-4f07-8ef9-33f510acfa2f'),
	(86,1,'Content Builder','contentBuilder','global','',1,'Matrix','{\"maxBlocks\":null}','2018-05-18 13:49:49','2018-06-13 09:13:44','0964f6fd-3a60-4032-bc87-4c343199977a'),
	(87,NULL,'Image','image','matrixBlockType:13','',0,'Assets','{\"useSingleFolder\":\"\",\"sources\":\"*\",\"defaultUploadLocationSource\":\"1\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"1\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"1\",\"allowedKinds\":[\"image\"],\"targetLocale\":\"\",\"limit\":\"1\",\"viewMode\":\"large\",\"selectionLabel\":\"\"}','2018-05-18 13:49:49','2018-06-13 09:13:44','9b364e5c-db4e-4725-b2ec-4380cf050699'),
	(88,NULL,'Text','text','matrixBlockType:14','',0,'RichText','{\"configFile\":\"Extended.json\",\"availableAssetSources\":\"*\",\"availableTransforms\":\"*\",\"cleanupHtml\":\"1\",\"purifyHtml\":\"1\",\"purifierConfig\":\"\",\"columnType\":\"text\"}','2018-05-18 13:52:03','2018-06-13 09:13:44','22372723-bce9-45ba-be4e-dfa27647550e'),
	(89,NULL,'Text Column 1','textColumn1','matrixBlockType:15','',0,'RichText','{\"configFile\":\"Extended.json\",\"availableAssetSources\":\"*\",\"availableTransforms\":\"*\",\"cleanupHtml\":\"1\",\"purifyHtml\":\"1\",\"purifierConfig\":\"\",\"columnType\":\"text\"}','2018-05-18 13:53:57','2018-06-13 09:13:44','2fd83a9b-ed2f-446f-955d-aea4578172fb'),
	(90,NULL,'Text Column 2','textColumn2','matrixBlockType:15','',0,'RichText','{\"configFile\":\"Extended.json\",\"availableAssetSources\":\"*\",\"availableTransforms\":\"*\",\"cleanupHtml\":\"1\",\"purifyHtml\":\"1\",\"purifierConfig\":\"\",\"columnType\":\"text\"}','2018-05-18 13:53:57','2018-06-13 09:13:44','7f76ebc1-7bc4-4f9b-bf15-4165245cef2a'),
	(92,NULL,'Heading','heading','matrixBlockType:16','',0,'PlainText','{\"placeholder\":\"\",\"maxLength\":\"\",\"multiline\":\"\",\"initialRows\":\"4\"}','2018-05-18 13:57:55','2018-06-13 09:13:45','5669661b-3d5b-4f33-a3ad-02933a0111af'),
	(93,NULL,'Text','text','matrixBlockType:16','',0,'RichText','{\"configFile\":\"Extended.json\",\"availableAssetSources\":\"*\",\"availableTransforms\":\"*\",\"cleanupHtml\":\"1\",\"purifyHtml\":\"1\",\"purifierConfig\":\"\",\"columnType\":\"text\"}','2018-05-18 13:57:55','2018-06-13 09:13:45','8d32bcc3-3725-4405-9271-1ff99c2d5317'),
	(94,NULL,'Form','form','matrixBlockType:16','',0,'Freeform_Forms',NULL,'2018-05-18 13:57:55','2018-06-13 09:13:45','66dbb9e3-ac64-4ea6-8c14-718b23ec88d1'),
	(95,NULL,'Text','text','matrixBlockType:17','',0,'RichText','{\"configFile\":\"Extended.json\",\"availableAssetSources\":\"*\",\"availableTransforms\":\"*\",\"cleanupHtml\":\"1\",\"purifyHtml\":\"1\",\"purifierConfig\":\"\",\"columnType\":\"text\"}','2018-05-18 14:00:38','2018-06-13 09:13:44','02d6debf-1a9a-4a43-8ab5-b05de666cbf7'),
	(96,NULL,'Image','image','matrixBlockType:17','',0,'FocusPoint_FocusPoint','{\"useSingleFolder\":\"\",\"sources\":\"*\",\"defaultUploadLocationSource\":\"1\",\"defaultUploadLocationSubpath\":\"\",\"singleUploadLocationSource\":\"1\",\"singleUploadLocationSubpath\":\"\",\"restrictFiles\":\"1\",\"allowedKinds\":[\"image\"],\"targetLocale\":\"\",\"limit\":\"1\",\"viewMode\":\"list\",\"selectionLabel\":\"\"}','2018-05-18 14:00:38','2018-06-13 09:13:44','1b8bb449-3b19-4d88-8aac-fff0de59cbd3'),
	(97,NULL,'Image position','imagePosition','matrixBlockType:17','',0,'PositionSelect','{\"options\":[\"left\",\"right\"]}','2018-05-18 14:00:38','2018-06-13 09:13:45','9504ceab-0904-4dd1-b79a-e6df8cbb7e2c'),
	(98,NULL,'Video','video','matrixBlockType:18','',0,'VzUrl','{\"followRedirects\":\"\"}','2018-05-18 14:05:22','2018-06-13 09:13:45','71dec5b7-c4b0-4bab-870a-7dd84dae05fc'),
	(99,NULL,'Text','text','matrixBlockType:19','',0,'RichText','{\"configFile\":\"Extended.json\",\"availableAssetSources\":\"*\",\"availableTransforms\":\"*\",\"cleanupHtml\":\"1\",\"purifyHtml\":\"1\",\"purifierConfig\":\"\",\"columnType\":\"text\"}','2018-05-18 14:05:22','2018-06-13 09:13:45','c457a6e7-f68c-4d10-a33c-6fb97f543de6'),
	(100,NULL,'Video','video','matrixBlockType:19','',0,'VzUrl','{\"followRedirects\":\"\"}','2018-05-18 14:05:22','2018-06-13 09:13:45','7ac3761f-1c6c-44b1-bab3-a1623b0f8cb6'),
	(101,NULL,'Entries','entries','matrixBlockType:20','',0,'Entries','{\"sources\":\"*\",\"targetLocale\":\"\",\"limit\":\"\",\"selectionLabel\":\"\"}','2018-05-18 14:07:44','2018-06-13 09:13:45','647adbf5-c52b-4e30-a99d-c8627c0a6c54'),
	(102,NULL,'Text Column 1','textColumn1','matrixBlockType:21','',0,'RichText','{\"configFile\":\"Extended.json\",\"availableAssetSources\":\"*\",\"availableTransforms\":\"*\",\"cleanupHtml\":\"1\",\"purifyHtml\":\"1\",\"purifierConfig\":\"\",\"columnType\":\"text\"}','2018-05-18 14:07:44','2018-06-13 09:13:44','7c6151be-3719-456b-bc87-04f5e9febd04'),
	(103,NULL,'Text Column 2','textColumn2','matrixBlockType:21','',0,'RichText','{\"configFile\":\"Extended.json\",\"availableAssetSources\":\"*\",\"availableTransforms\":\"*\",\"cleanupHtml\":\"1\",\"purifyHtml\":\"1\",\"purifierConfig\":\"\",\"columnType\":\"text\"}','2018-05-18 14:07:44','2018-06-13 09:13:44','632bd1ec-3fae-4714-a288-832ca3817cd8'),
	(104,NULL,'Text Column 3','textColumn3','matrixBlockType:21','',0,'RichText','{\"configFile\":\"Extended.json\",\"availableAssetSources\":\"*\",\"availableTransforms\":\"*\",\"cleanupHtml\":\"1\",\"purifyHtml\":\"1\",\"purifierConfig\":\"\",\"columnType\":\"text\"}','2018-05-18 14:07:44','2018-06-13 09:13:44','fc573516-2102-478f-84a0-d861161e8a23'),
	(105,NULL,'Position','videoPosition','matrixBlockType:19','',0,'PositionSelect','{\"options\":[\"left\",\"right\"]}','2018-05-18 14:29:07','2018-06-13 09:13:45','a152d68d-db03-49a8-be4c-97289e96c3b3'),
	(106,NULL,'CTA','cta','matrixBlockType:14','',0,'SuperTable','{\"columns\":{\"107\":{\"width\":\"\"}},\"fieldLayout\":\"row\",\"staticField\":null,\"selectionLabel\":\"Add a CTA\",\"maxRows\":null,\"minRows\":null}','2018-05-30 13:58:44','2018-06-13 09:13:44','ebd5af97-a383-4176-b1dd-1841f870dd5c'),
	(107,NULL,'CTA','linkit','superTableBlockType:3','',0,'FruitLinkIt','{\"types\":[\"email\",\"tel\",\"custom\",\"entry\",\"asset\"],\"defaultText\":\"\",\"allowCustomText\":\"1\",\"allowTarget\":\"1\",\"entrySources\":\"*\",\"entrySelectionLabel\":\"Select an entry\",\"assetSources\":\"*\",\"assetSelectionLabel\":\"Select an asset\"}','2018-05-30 13:58:45','2018-06-13 09:13:44','d7630df7-ac5c-42ea-9591-e0d9c2fe95b0'),
	(108,NULL,'Background Color','backgroundColor','matrixBlockType:14','',0,'Dropdown','{\"options\":[{\"label\":\"None\",\"value\":\"default\",\"default\":\"\"},{\"label\":\"Light\",\"value\":\"light\",\"default\":\"\"},{\"label\":\"Dark\",\"value\":\"dark\",\"default\":\"\"}]}','2018-06-01 14:04:15','2018-06-13 09:13:44','5eac14bb-e54f-41dc-ac02-74186e12f321'),
	(109,NULL,'Background Color','backgroundColor','matrixBlockType:13','',0,'Dropdown','{\"options\":[{\"label\":\"None\",\"value\":\"default\",\"default\":\"\"},{\"label\":\"Light\",\"value\":\"light\",\"default\":\"\"},{\"label\":\"Dark\",\"value\":\"dark\",\"default\":\"\"}]}','2018-06-06 12:06:28','2018-06-13 09:13:44','6293a740-d663-49bd-aa1b-07950fbf9b3f'),
	(110,NULL,'Background Color','backgroundColor','matrixBlockType:17','',0,'Dropdown','{\"options\":[{\"label\":\"Default\",\"value\":\"default\",\"default\":\"\"},{\"label\":\"Light\",\"value\":\"light\",\"default\":\"\"},{\"label\":\"Dark\",\"value\":\"dark\",\"default\":\"\"}]}','2018-06-06 13:00:47','2018-06-13 09:13:45','08b8a785-c37e-4f00-86fd-2bb73f293179'),
	(111,NULL,'Background Color','backgroundColor','matrixBlockType:15','',0,'Dropdown','{\"options\":[{\"label\":\"Default\",\"value\":\"default\",\"default\":\"\"},{\"label\":\"Light\",\"value\":\"light\",\"default\":\"\"},{\"label\":\"Dark\",\"value\":\"dark\",\"default\":\"\"}]}','2018-06-06 13:02:44','2018-06-13 09:13:44','d10065ef-fe6f-4a95-b9d4-78b6d6a7d937'),
	(112,NULL,'Background Color','backgroundColor','matrixBlockType:21','',0,'Dropdown','{\"options\":[{\"label\":\"Default\",\"value\":\"default\",\"default\":\"\"},{\"label\":\"Light\",\"value\":\"light\",\"default\":\"\"},{\"label\":\"Dark\",\"value\":\"dark\",\"default\":\"\"}]}','2018-06-06 13:02:45','2018-06-13 09:13:44','cf94380f-24f8-4515-9548-a04794062306'),
	(113,NULL,'Background Color','backgroundColor','matrixBlockType:18','',0,'Dropdown','{\"options\":[{\"label\":\"Default\",\"value\":\"default\",\"default\":\"\"},{\"label\":\"Light\",\"value\":\"light\",\"default\":\"\"},{\"label\":\"Dark\",\"value\":\"dark\",\"default\":\"\"}]}','2018-06-06 13:02:45','2018-06-13 09:13:45','6bc7e694-67a6-42a3-a51a-a38b485e98bd'),
	(114,NULL,'Background Color','backgroundColor','matrixBlockType:19','',0,'Dropdown','{\"options\":[{\"label\":\"Default\",\"value\":\"default\",\"default\":\"\"},{\"label\":\"Light\",\"value\":\"light\",\"default\":\"\"},{\"label\":\"Dark\",\"value\":\"dark\",\"default\":\"\"}]}','2018-06-06 13:02:45','2018-06-13 09:13:45','a3eebdaf-034f-4206-af7c-12464ac76bcf'),
	(115,NULL,'Background Color','backgroundColor','matrixBlockType:16','',0,'Dropdown','{\"options\":[{\"label\":\"Default\",\"value\":\"default\",\"default\":\"\"},{\"label\":\"Light\",\"value\":\"light\",\"default\":\"\"},{\"label\":\"Dark\",\"value\":\"dark\",\"default\":\"\"}]}','2018-06-06 13:02:45','2018-06-13 09:13:45','bfa61eaf-c26e-4532-b226-24fe2f258879'),
	(116,NULL,'Background Color','backgroundColor','matrixBlockType:20','',0,'Dropdown','{\"options\":[{\"label\":\"Default\",\"value\":\"default\",\"default\":\"\"},{\"label\":\"Light\",\"value\":\"light\",\"default\":\"\"},{\"label\":\"Dark\",\"value\":\"dark\",\"default\":\"\"}]}','2018-06-06 13:02:45','2018-06-13 09:13:45','a6747a87-fdfa-4d85-9553-d069c0c8a849'),
	(117,NULL,'CTA','cta','matrixBlockType:17','',0,'SuperTable','{\"columns\":{\"118\":{\"width\":\"\"}},\"fieldLayout\":\"row\",\"staticField\":null,\"selectionLabel\":\"Add a CTA\",\"maxRows\":null,\"minRows\":null}','2018-06-07 12:49:19','2018-06-13 09:13:45','08c723e4-27f2-4b0b-a014-ce04a1b7be6c'),
	(118,NULL,'CTA','linkit','superTableBlockType:4','',0,'FruitLinkIt','{\"types\":[\"email\",\"tel\",\"custom\",\"entry\",\"asset\"],\"defaultText\":\"\",\"allowCustomText\":\"1\",\"allowTarget\":\"1\",\"entrySources\":\"*\",\"entrySelectionLabel\":\"Select an entry\",\"assetSources\":\"*\",\"assetSelectionLabel\":\"Select an asset\"}','2018-06-07 12:49:19','2018-06-13 09:13:45','9649473b-9dae-4dd2-9263-c2d618e5dd85'),
	(119,NULL,'CTA','cta','matrixBlockType:19','',0,'SuperTable','{\"columns\":{\"120\":{\"width\":\"\"}},\"fieldLayout\":\"row\",\"staticField\":null,\"selectionLabel\":\"Add a CTA\",\"maxRows\":null,\"minRows\":null}','2018-06-07 12:49:20','2018-06-13 09:13:45','d918d31b-7004-4dfb-ad1e-a7cd5e406a8e'),
	(120,NULL,'CTA','linkit','superTableBlockType:5','',0,'FruitLinkIt','{\"types\":[\"email\",\"tel\",\"custom\",\"entry\",\"asset\"],\"defaultText\":\"\",\"allowCustomText\":\"1\",\"allowTarget\":\"1\",\"entrySources\":\"*\",\"entrySelectionLabel\":\"Select an entry\",\"assetSources\":\"*\",\"assetSelectionLabel\":\"Select an asset\"}','2018-06-07 12:49:20','2018-06-13 09:13:45','42504c13-f663-404a-a36b-233db21e22f3');

/*!40000 ALTER TABLE `craft_fields` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_focuspoint_focuspoints
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_focuspoint_focuspoints`;

CREATE TABLE `craft_focuspoint_focuspoints` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `assetId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `focusX` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `focusY` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sourceId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_focuspoint_focuspoints_assetId_fk` (`assetId`),
  KEY `craft_focuspoint_focuspoints_fieldId_fk` (`fieldId`),
  CONSTRAINT `craft_focuspoint_focuspoints_assetId_fk` FOREIGN KEY (`assetId`) REFERENCES `craft_assetfiles` (`id`),
  CONSTRAINT `craft_focuspoint_focuspoints_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_focuspoint_focuspoints` WRITE;
/*!40000 ALTER TABLE `craft_focuspoint_focuspoints` DISABLE KEYS */;

INSERT INTO `craft_focuspoint_focuspoints` (`id`, `assetId`, `fieldId`, `focusX`, `focusY`, `sourceId`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(8,89,87,'0.00','0.00',102,'2018-05-30 13:33:51','2018-05-30 13:33:51','5e5b0784-6fcd-4cf9-a916-8dd3f5b92953'),
	(13,90,87,'0.00','0.00',76,'2018-05-30 13:45:13','2018-05-30 13:45:13','f6e51d36-5898-4870-9f8a-6d9da9ec0aed'),
	(14,86,96,'0.00','0.00',77,'2018-05-30 13:45:13','2018-05-30 13:45:13','9f27343d-d9ea-4abd-9f2f-11345d6ece5a'),
	(49,92,87,'0.00','0.00',115,'2018-06-04 15:20:20','2018-06-04 15:20:20','91631a0d-abc7-4d1c-bcce-a0779de3e1c9'),
	(78,150,87,'0.00','0.00',149,'2018-06-07 13:19:33','2018-06-07 13:19:33','d95020ef-3958-4884-9a94-e0e84185ec16'),
	(113,130,96,'0.00','0.00',152,'2018-06-13 09:54:58','2018-06-13 09:54:58','a2a3cc29-5be9-48d1-9210-6883af8fefce'),
	(114,86,96,'0.00','0.00',177,'2018-06-13 09:54:58','2018-06-13 09:54:58','56c9d533-00b4-4a7a-befa-597c44aa3007'),
	(115,86,96,'0.00','0.00',179,'2018-06-13 09:54:58','2018-06-13 09:54:58','347a0d03-5a31-49e9-a816-b0ed5646f143'),
	(116,86,96,'0.00','0.00',180,'2018-06-13 09:54:58','2018-06-13 09:54:58','0431b525-f518-49dd-894a-b71a6bfebcc7');

/*!40000 ALTER TABLE `craft_focuspoint_focuspoints` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_freeform_crm_fields
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_freeform_crm_fields`;

CREATE TABLE `craft_freeform_crm_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `integrationId` int(11) NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('string','numeric','boolean','array') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'string',
  `required` int(1) unsigned NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_freeform_crm_fields_integrationId_handle_unq_idx` (`integrationId`,`handle`),
  CONSTRAINT `craft_freeform_crm_fields_integrationId_fk` FOREIGN KEY (`integrationId`) REFERENCES `craft_freeform_integrations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_freeform_export_profiles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_freeform_export_profiles`;

CREATE TABLE `craft_freeform_export_profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `formId` int(11) DEFAULT NULL,
  `limit` int(11) DEFAULT NULL,
  `dateRange` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fields` text COLLATE utf8_unicode_ci NOT NULL,
  `filters` text COLLATE utf8_unicode_ci,
  `statuses` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_freeform_export_profiles_formId_fk` (`formId`),
  CONSTRAINT `craft_freeform_export_profiles_formId_fk` FOREIGN KEY (`formId`) REFERENCES `craft_freeform_forms` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_freeform_export_settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_freeform_export_settings`;

CREATE TABLE `craft_freeform_export_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `setting` text COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_freeform_export_settings_userId_fk` (`userId`),
  CONSTRAINT `craft_freeform_export_settings_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_freeform_fields
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_freeform_fields`;

CREATE TABLE `craft_freeform_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `notificationId` int(11) DEFAULT NULL,
  `assetSourceId` int(11) DEFAULT NULL,
  `type` enum('text','textarea','email','hidden','select','checkbox','checkbox_group','radio_group','file','dynamic_recipients','datetime','number','phone','website','rating','regex','confirmation') COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `placeholder` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instructions` text COLLATE utf8_unicode_ci,
  `values` text COLLATE utf8_unicode_ci,
  `options` text COLLATE utf8_unicode_ci,
  `checked` tinyint(1) unsigned DEFAULT '0',
  `rows` int(10) DEFAULT NULL,
  `fileKinds` text COLLATE utf8_unicode_ci,
  `maxFileSizeKB` int(10) DEFAULT NULL,
  `additionalProperties` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_freeform_fields_handle_unq_idx` (`handle`),
  KEY `craft_freeform_fields_notificationId_fk` (`notificationId`),
  KEY `craft_freeform_fields_assetSourceId_fk` (`assetSourceId`),
  CONSTRAINT `craft_freeform_fields_notificationId_fk` FOREIGN KEY (`notificationId`) REFERENCES `craft_freeform_notifications` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_freeform_fields` WRITE;
/*!40000 ALTER TABLE `craft_freeform_fields` DISABLE KEYS */;

INSERT INTO `craft_freeform_fields` (`id`, `notificationId`, `assetSourceId`, `type`, `handle`, `label`, `required`, `value`, `placeholder`, `instructions`, `values`, `options`, `checked`, `rows`, `fileKinds`, `maxFileSizeKB`, `additionalProperties`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,NULL,NULL,'text','firstName','First Name',0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2017-07-03 12:27:07','2017-07-03 12:27:07','3b31cd62-e3db-4ca8-8da5-a0155f5c1091'),
	(2,NULL,NULL,'text','lastName','Last Name',0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2017-07-03 12:27:07','2017-07-03 12:27:07','d5fe3492-bb37-4f86-91a1-4a1ec5c72a2b'),
	(3,NULL,NULL,'email','email','Email',0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2017-07-03 12:27:07','2017-07-03 12:27:07','3aac7313-9443-4f3a-964e-ad9b2220eee7'),
	(4,NULL,NULL,'text','website','Website',0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2017-07-03 12:27:07','2017-07-03 12:27:07','dcca3529-7318-46b9-82a8-6975f43e1a93'),
	(5,NULL,NULL,'text','phone','Phone',0,'','','',NULL,NULL,0,NULL,NULL,NULL,NULL,'2017-07-03 12:27:07','2017-07-03 14:25:58','c99555df-bfc9-45bc-8d9a-6dad8da7805d'),
	(7,NULL,NULL,'text','companyName','Company Name',0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2017-07-03 12:27:07','2017-07-03 12:27:07','86d36662-528c-4319-99dd-7163515d2c25'),
	(8,NULL,NULL,'textarea','address','Address',0,NULL,NULL,NULL,NULL,NULL,0,2,NULL,NULL,NULL,'2017-07-03 12:27:07','2017-07-03 12:27:07','566ee4cd-501d-4f8f-9128-fd147bb54823'),
	(9,NULL,NULL,'text','city','City',0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2017-07-03 12:27:07','2017-07-03 12:27:07','34457c03-db1c-4dde-ad53-16e60eea0d25'),
	(11,NULL,NULL,'text','zipCode','Zip Code',0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2017-07-03 12:27:08','2017-07-03 12:27:08','c6791ab4-3035-4eb8-ab4f-11cc801b41d3'),
	(12,NULL,NULL,'textarea','message','Message',0,NULL,NULL,NULL,NULL,NULL,0,5,NULL,NULL,NULL,'2017-07-03 12:27:08','2017-07-03 12:27:08','5380685e-10ca-45bb-a67b-16e3355681e2'),
	(16,NULL,NULL,'radio_group','radio','Radio',0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2018-01-18 10:22:50','2018-01-18 10:22:50','43a3cafa-0935-407f-ad58-affe973d67e4'),
	(17,NULL,NULL,'checkbox','terms','Terms',0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2018-01-18 10:23:02','2018-01-18 10:23:02','8b9e1700-35f4-4221-8efc-0e510e6b255f'),
	(24,NULL,NULL,'dynamic_recipients','dynamic','Dynamic',0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2018-01-18 13:27:26','2018-01-18 13:27:26','ad0b4c7b-57ee-451b-a822-eed7ceb34f2a'),
	(25,NULL,NULL,'file','bijlage','Bijlage',0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2018-01-18 13:28:13','2018-01-18 13:28:13','a63ad758-06ba-4503-ae0f-3c191cc3610d'),
	(26,NULL,NULL,'hidden','page','Page',0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2018-06-07 13:10:23','2018-06-07 13:10:23','1bd1ae6a-1464-4b6e-88c3-790884873d16'),
	(28,NULL,NULL,'hidden','language','Language',0,NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,'2018-06-07 13:11:34','2018-06-07 13:11:34','0c90aaa5-03f6-44b1-95e7-6586767bdf52');

/*!40000 ALTER TABLE `craft_freeform_fields` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_freeform_forms
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_freeform_forms`;

CREATE TABLE `craft_freeform_forms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `spamBlockCount` int(10) DEFAULT '0',
  `submissionTitleFormat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `layoutJson` text COLLATE utf8_unicode_ci NOT NULL,
  `returnUrl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `defaultStatus` int(10) NOT NULL,
  `color` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_freeform_forms_handle_unq_idx` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_freeform_forms` WRITE;
/*!40000 ALTER TABLE `craft_freeform_forms` DISABLE KEYS */;

INSERT INTO `craft_freeform_forms` (`id`, `name`, `handle`, `spamBlockCount`, `submissionTitleFormat`, `description`, `layoutJson`, `returnUrl`, `defaultStatus`, `color`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'Contact form','contactForm',1,'{{ dateCreated|date(\"Y-m-d H:i:s\") }} - {{ email }}','','{\"composer\":{\"layout\":[[{\"id\":\"gRW1x6AQ2\",\"columns\":[\"8oWe9jZpP\",\"5KM0OK02p\"]},{\"id\":\"Rqjxyd8Bw\",\"columns\":[\"d1EeG8Z68\"]},{\"id\":\"dvG3nwXqp\",\"columns\":[\"QBOZ7q06y\"]},{\"id\":\"rMAjoO2LD\",\"columns\":[\"DBk0Xw4YJ\"]},{\"id\":\"QrQzwL3NL\",\"columns\":[\"mWYeLR4Pv\"]},{\"id\":\"15ogbNy79\",\"columns\":[\"gB1enGZYl\"]},{\"id\":\"MDQxNBBor\",\"columns\":[\"wgMo8mmQq\"]}]],\"properties\":{\"page0\":{\"type\":\"page\",\"label\":\"\"},\"form\":{\"type\":\"form\",\"name\":\"Contact form\",\"handle\":\"contactForm\",\"color\":\"#5ab6a4\",\"submissionTitleFormat\":\"{{ dateCreated|date(\\\"Y-m-d H:i:s\\\") }} - {{ email }}\",\"description\":\"\",\"formTemplate\":\"_takeoff.twig\",\"returnUrl\":\"\\/\",\"storeData\":true,\"defaultStatus\":2},\"integration\":{\"type\":\"integration\",\"integrationId\":0,\"mapping\":[]},\"admin_notifications\":{\"type\":\"admin_notifications\",\"notificationId\":1,\"recipients\":\"kirsten@statik.be\"},\"5KM0OK02p\":{\"id\":2,\"hash\":\"5KM0OK02p\",\"type\":\"text\",\"handle\":\"lastName\",\"label\":\"Naam\",\"required\":true,\"instructions\":\"\",\"value\":\"\",\"placeholder\":\"\"},\"8oWe9jZpP\":{\"id\":1,\"hash\":\"8oWe9jZpP\",\"type\":\"text\",\"handle\":\"firstName\",\"label\":\"Voornaam\",\"required\":true,\"instructions\":\"\",\"value\":\"\",\"placeholder\":\"\"},\"d1EeG8Z68\":{\"hash\":\"d1EeG8Z68\",\"id\":3,\"type\":\"email\",\"handle\":\"email\",\"label\":\"E-mailadres\",\"required\":true,\"instructions\":\"\",\"notificationId\":2,\"values\":[],\"placeholder\":\"\"},\"QBOZ7q06y\":{\"hash\":\"QBOZ7q06y\",\"id\":12,\"type\":\"textarea\",\"handle\":\"message\",\"label\":\"Boodschap\",\"required\":true,\"instructions\":\"\",\"value\":\"\",\"placeholder\":\"\",\"rows\":5},\"wgMo8mmQq\":{\"type\":\"submit\",\"label\":\"Submit\",\"labelNext\":\"Verzenden\",\"labelPrev\":\"Previous\",\"disablePrev\":false,\"position\":\"left\"},\"DBk0Xw4YJ\":{\"hash\":\"DBk0Xw4YJ\",\"id\":17,\"type\":\"checkbox\",\"handle\":\"terms\",\"label\":\"Ik verklaar dat ik de <a href=\\\"\\/privacy\\\">Privacy Policy<\\/a> heb gelezen en goedgekeurd. \",\"required\":true,\"instructions\":\"\",\"value\":\"Yes\",\"checked\":false},\"mWYeLR4Pv\":{\"hash\":\"mWYeLR4Pv\",\"id\":26,\"type\":\"hidden\",\"handle\":\"page\",\"label\":\"Page\",\"required\":false,\"value\":\"\",\"placeholder\":\"\"},\"gB1enGZYl\":{\"hash\":\"gB1enGZYl\",\"id\":28,\"type\":\"hidden\",\"handle\":\"language\",\"label\":\"Language\",\"required\":false,\"value\":\"\",\"placeholder\":\"\"}}},\"context\":{\"page\":0,\"hash\":\"form\"}}','/',2,'#5ab6a4','2017-07-03 12:47:20','2018-06-07 13:17:02','e83f2625-75df-4bb6-9e9b-5528c754ec07');

/*!40000 ALTER TABLE `craft_freeform_forms` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_freeform_integrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_freeform_integrations`;

CREATE TABLE `craft_freeform_integrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('mailing_list','crm') COLLATE utf8_unicode_ci NOT NULL,
  `class` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `accessToken` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `forceUpdate` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lastUpdate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_freeform_integrations_class_handle_unq_idx` (`class`,`handle`),
  UNIQUE KEY `craft_freeform_integrations_handle_unq_idx` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_freeform_mailing_list_fields
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_freeform_mailing_list_fields`;

CREATE TABLE `craft_freeform_mailing_list_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mailingListId` int(11) NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('string','numeric','boolean','array') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'string',
  `required` int(1) unsigned NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_freeform_mailing_list_fields_mailingListId_handle_unq_idx` (`mailingListId`,`handle`),
  CONSTRAINT `craft_freeform_mailing_list_fields_mailingListId_fk` FOREIGN KEY (`mailingListId`) REFERENCES `craft_freeform_mailing_lists` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_freeform_mailing_lists
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_freeform_mailing_lists`;

CREATE TABLE `craft_freeform_mailing_lists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `integrationId` int(11) NOT NULL,
  `resourceId` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `memberCount` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_freeform_mailing_lists_integrationId_resourceId_unq_idx` (`integrationId`,`resourceId`),
  CONSTRAINT `craft_freeform_mailing_lists_integrationId_fk` FOREIGN KEY (`integrationId`) REFERENCES `craft_freeform_integrations` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_freeform_notifications
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_freeform_notifications`;

CREATE TABLE `craft_freeform_notifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `fromName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `fromEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `replyToEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `includeAttachments` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bodyHtml` text COLLATE utf8_unicode_ci,
  `bodyText` text COLLATE utf8_unicode_ci,
  `sortOrder` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_freeform_notifications_handle_unq_idx` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_freeform_notifications` WRITE;
/*!40000 ALTER TABLE `craft_freeform_notifications` DISABLE KEYS */;

INSERT INTO `craft_freeform_notifications` (`id`, `name`, `handle`, `description`, `fromName`, `fromEmail`, `replyToEmail`, `includeAttachments`, `subject`, `bodyHtml`, `bodyText`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'Contact Admin','contactAdmin','','{{ siteName }}','no-reply@mailer.today','',0,'Nieuw contact bericht op {{ siteName }}','{% extends \"_mail/_layout\" %}\r\n\r\n{% block content %}\r\n<p>Verstuurd op: {{ dateCreated|date(\'Y-m-d H:i:s\') }}</p>\r\n<ul>\r\n{% for field in allFields %}\r\n    <li>{{ field.label }}: {{ field.getValueAsString() }}</li>\r\n{% endfor %}\r\n</ul>\r\n{% endblock %}','{% extends \"\\_mail/\\_layout\" %} {% block content %} \n\nVerstuurd op: {{ dateCreated|date(\'Y-m-d H:i:s\') }}\n\n{% for field in allFields %} \n\n  * {{ field.label }}: {{ field.getValueAsString() }} {% endfor %}  {% endblock %}',NULL,'2017-07-03 12:49:36','2017-09-08 11:49:38','22f159ec-dd62-44ba-b215-292c9a09b4bc'),
	(2,'Contact User','contactUser','','{{ siteName }}','no-reply@mailer.today','',0,'Bedankt voor je bericht aan {{ siteName }}','{% extends \"_mail/_layout\" %}\r\n\r\n{% block content %}\r\n<p>We hebben onderstaand bericht van je ontvangen, hierop proberen wij zo snel mogelijk te antwoorden.</p>\r\n<ul>\r\n{% for field in allFields %}\r\n    <li>{{ field.label }}: {{ field.getValueAsString() }}</li>\r\n{% endfor %}\r\n</ul>\r\n{% endblock %}','{% extends \"\\_mail/\\_layout\" %} {% block content %} \n\nWe hebben onderstaand bericht van je ontvangen, hierop proberen wij zo snel mogelijk te antwoorden.\n\n{% for field in allFields %} \n\n  * {{ field.label }}: {{ field.getValueAsString() }} {% endfor %}  {% endblock %}',NULL,'2017-07-03 14:18:22','2017-09-08 11:47:05','452d5fc3-bf7f-4882-bf29-25ee2b7a4e20');

/*!40000 ALTER TABLE `craft_freeform_notifications` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_freeform_statuses
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_freeform_statuses`;

CREATE TABLE `craft_freeform_statuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `color` enum('green','blue','yellow','orange','red','pink','purple','turquoise','light','grey','black') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'grey',
  `isDefault` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sortOrder` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_freeform_statuses_name_unq_idx` (`name`),
  UNIQUE KEY `craft_freeform_statuses_handle_unq_idx` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_freeform_statuses` WRITE;
/*!40000 ALTER TABLE `craft_freeform_statuses` DISABLE KEYS */;

INSERT INTO `craft_freeform_statuses` (`id`, `name`, `handle`, `color`, `isDefault`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'Pending','pending','light',0,1,'2017-07-03 12:27:08','2017-07-03 12:27:08','c870a37c-5b73-412c-9b70-b63a464b9e17'),
	(2,'Open','open','green',1,2,'2017-07-03 12:27:08','2017-07-03 12:27:08','b5661a37-a1c4-479f-a220-41c3dab32171'),
	(3,'Closed','closed','grey',0,3,'2017-07-03 12:27:08','2017-07-03 12:27:08','3a4b3e20-625b-426a-84ca-799f42827635');

/*!40000 ALTER TABLE `craft_freeform_statuses` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_freeform_submissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_freeform_submissions`;

CREATE TABLE `craft_freeform_submissions` (
  `id` int(11) NOT NULL,
  `incrementalId` int(11) DEFAULT '0',
  `statusId` int(11) DEFAULT NULL,
  `formId` int(11) NOT NULL,
  `field_1` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_2` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_3` text COLLATE utf8_unicode_ci,
  `field_4` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_5` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_7` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_8` text COLLATE utf8_unicode_ci,
  `field_9` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_11` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_12` text COLLATE utf8_unicode_ci,
  `field_16` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_17` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_18` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_19` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_20` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_21` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_23` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_24` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_25` text COLLATE utf8_unicode_ci,
  `field_26` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_28` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_freeform_submissions_statusId_fk` (`statusId`),
  KEY `craft_freeform_submissions_formId_fk` (`formId`),
  KEY `craft_freeform_submissions_incrementalId_idx` (`incrementalId`),
  CONSTRAINT `craft_freeform_submissions_formId_fk` FOREIGN KEY (`formId`) REFERENCES `craft_freeform_forms` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_freeform_submissions_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_freeform_submissions_statusId_fk` FOREIGN KEY (`statusId`) REFERENCES `craft_freeform_statuses` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_freeform_submissions` WRITE;
/*!40000 ALTER TABLE `craft_freeform_submissions` DISABLE KEYS */;

INSERT INTO `craft_freeform_submissions` (`id`, `incrementalId`, `statusId`, `formId`, `field_1`, `field_2`, `field_3`, `field_4`, `field_5`, `field_7`, `field_8`, `field_9`, `field_11`, `field_12`, `field_16`, `field_17`, `field_18`, `field_19`, `field_20`, `field_21`, `field_23`, `field_24`, `field_25`, `field_26`, `field_28`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(161,1,2,1,'Jan','Henckens','[\"jan@statik.be\"]',NULL,NULL,NULL,NULL,NULL,NULL,'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',NULL,'Yes',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Example Page','nl_be','2018-06-07 13:15:43','2018-06-07 13:15:43','a7e94322-6a8b-4e20-8926-076fc9089c69');

/*!40000 ALTER TABLE `craft_freeform_submissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_freeform_unfinalized_files
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_freeform_unfinalized_files`;

CREATE TABLE `craft_freeform_unfinalized_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `assetId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_freeform_unfinalized_files_assetId_fk` (`assetId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_globalsets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_globalsets`;

CREATE TABLE `craft_globalsets` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fieldLayoutId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_globalsets_name_unq_idx` (`name`),
  UNIQUE KEY `craft_globalsets_handle_unq_idx` (`handle`),
  KEY `craft_globalsets_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_globalsets_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL,
  CONSTRAINT `craft_globalsets_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_globalsets` WRITE;
/*!40000 ALTER TABLE `craft_globalsets` DISABLE KEYS */;

INSERT INTO `craft_globalsets` (`id`, `name`, `handle`, `fieldLayoutId`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(8,'Fallback','fallback',47,'2017-07-03 13:22:43','2017-07-03 13:22:43','8773fcbd-5f5b-4d8c-adad-efa169eb845a'),
	(11,'Social media','socialMedia',57,'2017-07-04 07:48:50','2017-07-04 07:48:50','36beaa6e-9ca3-4667-b47a-deeeebce784b');

/*!40000 ALTER TABLE `craft_globalsets` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_info
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_info`;

CREATE TABLE `craft_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `version` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `schemaVersion` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `edition` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `siteName` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `siteUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `timezone` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `on` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `maintenance` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_info` WRITE;
/*!40000 ALTER TABLE `craft_info` DISABLE KEYS */;

INSERT INTO `craft_info` (`id`, `version`, `schemaVersion`, `edition`, `siteName`, `siteUrl`, `timezone`, `on`, `maintenance`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'2.6.3017','2.6.14',2,'Craft Base Install','http://crabas.local.statik.be','Europe/Brussels',1,0,'2017-03-09 09:09:40','2018-06-06 11:07:54','868a4f3f-e62b-4cf8-b97e-7fe1019cb4a4');

/*!40000 ALTER TABLE `craft_info` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_locales
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_locales`;

CREATE TABLE `craft_locales` (
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`locale`),
  KEY `craft_locales_sortOrder_idx` (`sortOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_locales` WRITE;
/*!40000 ALTER TABLE `craft_locales` DISABLE KEYS */;

INSERT INTO `craft_locales` (`locale`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	('en_gb',3,'2018-06-14 06:54:46','2018-06-14 06:54:46','6211cd7f-50d8-41fe-987c-8ade9cb8c4a2');

/*!40000 ALTER TABLE `craft_locales` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_matrixblocks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_matrixblocks`;

CREATE TABLE `craft_matrixblocks` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `ownerLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_matrixblocks_ownerId_idx` (`ownerId`),
  KEY `craft_matrixblocks_fieldId_idx` (`fieldId`),
  KEY `craft_matrixblocks_typeId_idx` (`typeId`),
  KEY `craft_matrixblocks_sortOrder_idx` (`sortOrder`),
  KEY `craft_matrixblocks_ownerLocale_fk` (`ownerLocale`),
  CONSTRAINT `craft_matrixblocks_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixblocks_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixblocks_ownerId_fk` FOREIGN KEY (`ownerId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixblocks_ownerLocale_fk` FOREIGN KEY (`ownerLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `craft_matrixblocks_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_matrixblocktypes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_matrixblocks` WRITE;
/*!40000 ALTER TABLE `craft_matrixblocks` DISABLE KEYS */;

INSERT INTO `craft_matrixblocks` (`id`, `ownerId`, `fieldId`, `typeId`, `sortOrder`, `ownerLocale`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(113,53,86,14,1,'en_gb','2018-05-30 13:44:30','2018-06-14 07:07:38','7ea0c640-e732-4100-b498-97ef4bcf64fb'),
	(114,17,86,14,1,'en_gb','2018-05-30 13:50:53','2018-06-14 06:54:57','b788f108-de8f-4bf8-9f9a-935fba6467a6'),
	(115,17,86,13,2,'en_gb','2018-05-30 13:50:54','2018-06-14 06:54:57','1f0a6768-4491-4a9c-b6cf-67c78b5365cf'),
	(116,17,86,15,3,'en_gb','2018-05-30 13:50:54','2018-06-14 06:54:57','327e1fd3-1815-4cca-b1b1-9f70e0f7c2c3'),
	(117,17,86,16,4,'en_gb','2018-05-30 13:50:54','2018-06-14 06:54:57','cc5d943a-db18-45f6-92b2-f9813b2efe7a'),
	(134,55,86,14,1,'en_gb','2018-06-01 07:14:57','2018-06-14 06:54:57','c508c2ca-0349-4b5a-9e40-e8fa996cc4ee'),
	(148,147,86,14,1,'en_gb','2018-06-06 11:40:22','2018-06-14 06:54:57','716c602a-c5ae-4ae7-9df4-567a14440286'),
	(149,147,86,13,2,'en_gb','2018-06-06 11:40:23','2018-06-14 06:54:57','3dd31e1c-2bdb-4927-a288-c130911b19a4'),
	(151,147,86,15,3,'en_gb','2018-06-06 13:03:37','2018-06-14 06:54:57','8f5d90ad-054e-4dcc-9f1e-cf0ec6540351'),
	(152,147,86,17,5,'en_gb','2018-06-06 13:03:37','2018-06-14 06:54:57','034a3a61-c02e-43c0-af80-e05aad95913f'),
	(155,147,86,18,6,'en_gb','2018-06-06 13:21:37','2018-06-14 06:54:57','3ff8d947-fd27-41e8-9e2a-156b4cda61bf'),
	(157,147,86,19,4,'en_gb','2018-06-07 12:53:43','2018-06-14 06:54:57','7aee8989-8dd6-451d-9e13-aeed1daa25a9'),
	(160,147,86,16,7,'en_gb','2018-06-07 13:06:43','2018-06-14 06:54:57','a019408d-789e-476a-a00a-70881f4fcbef'),
	(165,147,86,14,8,'en_gb','2018-06-13 07:34:29','2018-06-14 06:54:57','2145a32a-57c7-4047-bf89-858d344c1244'),
	(171,147,86,15,9,'en_gb','2018-06-13 07:34:29','2018-06-14 06:54:57','4e0cbe47-10d6-4b5c-b0a1-32b0f7844cfe'),
	(172,147,86,21,10,'en_gb','2018-06-13 07:34:29','2018-06-14 06:54:57','96d8b9ff-8c5c-44ac-b6b1-4735159c0470'),
	(174,147,86,13,11,'en_gb','2018-06-13 08:26:21','2018-06-14 06:54:57','50659ed4-0ee8-4e58-8c96-a99fc59e012b'),
	(177,147,86,17,12,'en_gb','2018-06-13 08:26:21','2018-06-14 06:54:57','789f8810-92c6-4081-9130-4c061987d3f9'),
	(179,147,86,17,13,'en_gb','2018-06-13 08:26:21','2018-06-14 06:54:57','cebf7f8a-7a76-436a-846f-8497c846f47b'),
	(180,147,86,17,14,'en_gb','2018-06-13 08:26:21','2018-06-14 06:54:57','4ea1b12b-a0a6-4ec9-a1f3-97ca3ec22c86'),
	(183,147,86,18,15,'en_gb','2018-06-13 09:11:42','2018-06-14 06:54:57','709baaa9-0792-4d29-a21a-b9829a4bf4c6'),
	(186,147,86,19,16,'en_gb','2018-06-13 09:11:42','2018-06-14 06:54:57','37df2c74-4794-45fe-83a3-4ca73e498843'),
	(187,147,86,19,17,'en_gb','2018-06-13 09:11:42','2018-06-14 06:54:57','2518deef-7d04-4ccc-817a-cf6e42628a99'),
	(190,147,86,19,18,'en_gb','2018-06-13 09:11:42','2018-06-14 06:54:57','37d32dd2-03e9-418b-a9a0-4d4668c33ce1'),
	(192,147,86,16,19,'en_gb','2018-06-13 09:11:42','2018-06-14 06:54:57','6f016a6a-49b9-499d-9188-711d0f2d30ee'),
	(193,147,86,16,20,'en_gb','2018-06-13 09:11:42','2018-06-14 06:54:57','e86019c1-a4a4-4c6f-aa30-b9681dd141ea'),
	(194,147,86,16,21,'en_gb','2018-06-13 09:11:42','2018-06-14 06:54:57','6941787c-bfe2-4286-87d7-a6917fa3a5e7'),
	(195,147,86,20,22,'en_gb','2018-06-13 09:21:04','2018-06-14 06:54:57','b1076f5e-4fc1-4678-847f-ed6599656d6d'),
	(196,147,86,20,23,'en_gb','2018-06-13 09:21:04','2018-06-14 06:54:57','03db7584-787b-47f8-bf6d-54d0d81a1c87'),
	(197,147,86,20,24,'en_gb','2018-06-13 09:21:04','2018-06-14 06:54:57','24a4a89e-fec7-481c-9eb6-ce8821ae4a1b'),
	(199,198,86,14,1,'en_gb','2018-06-14 07:10:36','2018-06-14 07:21:33','5d25f0df-0f68-4fa1-93b5-82776ed1e4ec'),
	(200,198,86,13,2,'en_gb','2018-06-14 07:10:36','2018-06-14 07:21:33','307f48bb-038b-4ca4-ba40-1c8e57b9015b');

/*!40000 ALTER TABLE `craft_matrixblocks` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_matrixblocktypes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_matrixblocktypes`;

CREATE TABLE `craft_matrixblocktypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_matrixblocktypes_name_fieldId_unq_idx` (`name`,`fieldId`),
  UNIQUE KEY `craft_matrixblocktypes_handle_fieldId_unq_idx` (`handle`,`fieldId`),
  KEY `craft_matrixblocktypes_fieldId_fk` (`fieldId`),
  KEY `craft_matrixblocktypes_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_matrixblocktypes_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixblocktypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_matrixblocktypes` WRITE;
/*!40000 ALTER TABLE `craft_matrixblocktypes` DISABLE KEYS */;

INSERT INTO `craft_matrixblocktypes` (`id`, `fieldId`, `fieldLayoutId`, `name`, `handle`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(13,86,564,'Image','image',4,'2018-05-18 13:49:49','2018-06-13 09:13:44','1f047215-49c7-49e9-9fd0-98474673eedc'),
	(14,86,561,'Text','textOneColumn',1,'2018-05-18 13:52:03','2018-06-13 09:13:44','4d13ad0d-7cb7-442a-9948-a3f242a58191'),
	(15,86,562,'Text 2col','textTwoColumns',2,'2018-05-18 13:53:57','2018-06-13 09:13:44','3a97bf6c-5fa8-4367-aeda-398fa744ca76'),
	(16,86,570,'Form','form',8,'2018-05-18 13:57:55','2018-06-13 09:13:45','b9b839e6-b55a-4c1c-89ba-4f1c3524c0cf'),
	(17,86,566,'Text /w Image','textImage',5,'2018-05-18 14:00:38','2018-06-13 09:13:45','0ddf4f95-6a68-43c5-8d0c-90a31aec76ba'),
	(18,86,567,'Video','video',6,'2018-05-18 14:05:22','2018-06-13 09:13:45','200acdc1-bbe0-47f9-9a04-ce75061ebe43'),
	(19,86,569,'Text /w video','textVideo',7,'2018-05-18 14:05:22','2018-06-13 09:13:45','711ceb6a-7743-4ba7-a3eb-ab3b738397b7'),
	(20,86,571,'Overview','overview',9,'2018-05-18 14:07:43','2018-06-13 09:13:45','9afe1bbc-a7cd-49e4-a462-c92760944a71'),
	(21,86,563,'Text 3col','textThreeColumns',3,'2018-05-18 14:07:44','2018-06-13 09:13:44','78fd0a09-8f65-419b-9113-200c47bb346c');

/*!40000 ALTER TABLE `craft_matrixblocktypes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_matrixcontent_contentbuilder
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_matrixcontent_contentbuilder`;

CREATE TABLE `craft_matrixcontent_contentbuilder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `field_textImageBlock_background` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_textImageBlock_position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_textImageBlock_text` text COLLATE utf8_unicode_ci,
  `field_textTextBlock_background` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_textTextBlock_textLeft` text COLLATE utf8_unicode_ci,
  `field_textTextBlock_textRight` text COLLATE utf8_unicode_ci,
  `field_textVideoBlock_background` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_textVideoBlock_position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_textVideoBlock_videoUrl` text COLLATE utf8_unicode_ci,
  `field_textVideoBlock_text` text COLLATE utf8_unicode_ci,
  `field_formBlock_background` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_formBlock_text` text COLLATE utf8_unicode_ci,
  `field_formBlock_freeform` int(10) DEFAULT NULL,
  `field_textOneColumn_text` text COLLATE utf8_unicode_ci,
  `field_textImage_text` text COLLATE utf8_unicode_ci,
  `field_textImage_imagePosition` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_textTwoColumns_textColumn1` text COLLATE utf8_unicode_ci,
  `field_textTwoColumns_textColumn2` text COLLATE utf8_unicode_ci,
  `field_textThreeColumns_textColumn1` text COLLATE utf8_unicode_ci,
  `field_textThreeColumns_textColumn2` text COLLATE utf8_unicode_ci,
  `field_textThreeColumns_textColumn3` text COLLATE utf8_unicode_ci,
  `field_video_video` text COLLATE utf8_unicode_ci,
  `field_textVideo_text` text COLLATE utf8_unicode_ci,
  `field_textVideo_video` text COLLATE utf8_unicode_ci,
  `field_textVideo_videoPosition` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_form_heading` text COLLATE utf8_unicode_ci,
  `field_form_text` text COLLATE utf8_unicode_ci,
  `field_form_form` int(10) DEFAULT NULL,
  `field_textOneColumn_backgroundColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_image_backgroundColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_textImage_backgroundColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_textTwoColumns_backgroundColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_textThreeColumns_backgroundColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_video_backgroundColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_textVideo_backgroundColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_form_backgroundColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_overview_backgroundColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_matrixcontent_contentbuilder_elementId_locale_unq_idx` (`elementId`,`locale`),
  KEY `craft_matrixcontent_contentbuilder_locale_fk` (`locale`),
  CONSTRAINT `craft_matrixcontent_contentbuilder_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixcontent_contentbuilder_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_matrixcontent_contentbuilder` WRITE;
/*!40000 ALTER TABLE `craft_matrixcontent_contentbuilder` DISABLE KEYS */;

INSERT INTO `craft_matrixcontent_contentbuilder` (`id`, `elementId`, `locale`, `field_textImageBlock_background`, `field_textImageBlock_position`, `field_textImageBlock_text`, `field_textTextBlock_background`, `field_textTextBlock_textLeft`, `field_textTextBlock_textRight`, `field_textVideoBlock_background`, `field_textVideoBlock_position`, `field_textVideoBlock_videoUrl`, `field_textVideoBlock_text`, `field_formBlock_background`, `field_formBlock_text`, `field_formBlock_freeform`, `field_textOneColumn_text`, `field_textImage_text`, `field_textImage_imagePosition`, `field_textTwoColumns_textColumn1`, `field_textTwoColumns_textColumn2`, `field_textThreeColumns_textColumn1`, `field_textThreeColumns_textColumn2`, `field_textThreeColumns_textColumn3`, `field_video_video`, `field_textVideo_text`, `field_textVideo_video`, `field_textVideo_videoPosition`, `field_form_heading`, `field_form_text`, `field_form_form`, `field_textOneColumn_backgroundColor`, `field_image_backgroundColor`, `field_textImage_backgroundColor`, `field_textTwoColumns_backgroundColor`, `field_textThreeColumns_backgroundColor`, `field_video_backgroundColor`, `field_textVideo_backgroundColor`, `field_form_backgroundColor`, `field_overview_backgroundColor`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(21,113,'en_gb',0,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'default',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-30 13:44:30','2018-06-14 07:07:38','a54c4c3e-d63e-4d60-96d9-26f9b37f915f'),
	(22,114,'en_gb',0,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'--dark',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-30 13:50:53','2018-06-14 06:54:57','90acac35-f778-4acf-9a1c-090d665e3371'),
	(23,115,'en_gb',0,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-30 13:50:53','2018-06-14 06:54:57','23afc078-6035-4aa8-aea3-6faee552bcd4'),
	(24,116,'en_gb',0,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in.<br /></p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-30 13:50:54','2018-06-14 06:54:57','33473446-6461-420c-a398-b24687fa0e5d'),
	(25,117,'en_gb',0,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Formulier title','',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-05-30 13:50:54','2018-06-14 06:54:57','aa1cc7d5-d799-48fc-b66e-4fe46ff1c0bb'),
	(29,134,'en_gb',0,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'default',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-06-01 07:14:57','2018-06-14 06:54:57','4069b110-c1bb-4240-9dca-f75b40bff407'),
	(37,148,'en_gb',0,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,'<p><strong>Title</strong><br /></p>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'light',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-06-06 11:40:22','2018-06-14 06:54:57','f0c86311-1249-4cad-b842-69e5ec8481a9'),
	(38,149,'en_gb',0,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dark',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-06-06 11:40:22','2018-06-14 06:54:57','6cf3d672-0899-4632-a3b5-f73d40f1d25a'),
	(39,151,'en_gb',0,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'light',NULL,NULL,NULL,NULL,NULL,'2018-06-06 13:03:37','2018-06-14 06:54:57','91ad9d6b-4af9-4866-ae27-7e0ed1aed2b2'),
	(40,152,'en_gb',0,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>','left',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dark',NULL,NULL,NULL,NULL,NULL,NULL,'2018-06-06 13:03:37','2018-06-14 06:54:57','396059c5-8017-4b56-b5e4-b7d2ac35cb26'),
	(41,155,'en_gb',0,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://www.youtube.com/watch?v=Q0CbN8sfihY',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'light',NULL,NULL,NULL,'2018-06-06 13:21:37','2018-06-14 06:54:57','2c3e65a6-9629-4e55-a788-c2334526e5e3'),
	(42,157,'en_gb',0,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>','https://www.youtube.com/watch?v=zgDbp5C74sU','right',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'default',NULL,NULL,'2018-06-07 12:53:43','2018-06-14 06:54:57','2d2634c9-9077-4bff-b723-5b830f374ebe'),
	(43,160,'en_gb',0,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Formulier Title hier','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'light',NULL,'2018-06-07 13:06:43','2018-06-14 06:54:57','c0949f2f-06d9-4fbf-900e-bb51a24c617a'),
	(46,165,'en_gb',0,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,'<h2>Kir test de contentbuilder</h2>\n<h3>heading 3</h3>\n<h4>heading 4</h4>\n<h5>heading 5</h5>\n<p><strong>Lorem ipsum</strong> <em>dolor sit amet, consectetur adipi</em>scing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>\n<ul><li>Duis aute irure dolor <ul><li>in reprehenderit in voluptate</li></ul><ul><li> velit esse cillum dolore eu</li></ul></li><li>Duis aute irure dolor </li><li>in reprehenderit in voluptate\n</li><li> velit esse cillum dolore eu\n</li></ul><ol><li>Duis aute irure dolor \n<ol><li>in reprehenderit in voluptate</li></ol></li><li>velit esse cillum dolore eu<ol><li>Duis aute irure dolor </li></ol></li><li>in reprehenderit in voluptate</li><li>velit esse cillum dolore eu</li></ol><p><a href=\"{entry:131:url}\">fugiat nulla pariatur.</a> Excepteur sint <a href=\"http://www.statik.be\" target=\"_blank\" rel=\"noreferrer noopener\">occaecat cupidatat</a> non proident, sunt in culpa qui officia deserunt mollit anim id est laborum<br /></p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'light',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-06-13 07:34:28','2018-06-14 06:54:57','ea01e037-5ff7-4762-a036-5624f17b3927'),
	(47,171,'en_gb',0,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,'<h2>Lorem ipsum </h2>\n<p><strong>dolor sit amet,</strong> <em>consectetur adipiscing elit</em>, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. </p>\n<p>Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, <a href=\"{entry:12:url}\">sunt in culpa qui officia deserunt mollit anim id est laborum</a></p>','<ul><li>Lorem ipsum dolor sit amet, </li><li>consectetur </li><li>adipiscing elit</li></ul><p>, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'light',NULL,NULL,NULL,NULL,NULL,'2018-06-13 07:34:29','2018-06-14 06:54:57','a68cd1f9-910d-46ac-896f-eee35e1662de'),
	(48,172,'en_gb',0,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<h2>Lorem ipsum dolor</h2>\n<p> sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>','<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>','<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dark',NULL,NULL,NULL,NULL,'2018-06-13 07:34:29','2018-06-14 06:54:57','5f457951-fd7d-48f3-b660-e3d9cfc59648'),
	(49,174,'en_gb',0,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'default',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-06-13 08:26:21','2018-06-14 06:54:57','8f35018f-2e7a-4c47-a973-498742f2df78'),
	(52,177,'en_gb',0,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,'<p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\n</p>\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\n</p>','left',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'default',NULL,NULL,NULL,NULL,NULL,NULL,'2018-06-13 08:26:21','2018-06-14 06:54:57','34364759-ce7a-40f0-93c6-e09baf779e46'),
	(53,179,'en_gb',0,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>','right',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'light',NULL,NULL,NULL,NULL,NULL,NULL,'2018-06-13 08:26:21','2018-06-14 06:54:57','4c62d6d1-60ec-4785-ab26-f20799d93151'),
	(54,180,'en_gb',0,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>','left',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dark',NULL,NULL,NULL,NULL,NULL,NULL,'2018-06-13 08:26:21','2018-06-14 06:54:57','81b30634-2ab3-46d0-99fd-c56aee5a1314'),
	(55,183,'en_gb',0,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'https://vimeo.com/70591644',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'default',NULL,NULL,NULL,'2018-06-13 09:11:42','2018-06-14 06:54:57','44540c0c-7e65-452d-ae75-85ab9653059a'),
	(58,186,'en_gb',0,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>','https://vimeo.com/70591644','left',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'default',NULL,NULL,'2018-06-13 09:11:42','2018-06-14 06:54:57','4962d3b2-d609-476b-8006-3d71b2a91506'),
	(59,187,'en_gb',0,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>','https://vimeo.com/70591644','left',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'light',NULL,NULL,'2018-06-13 09:11:42','2018-06-14 06:54:57','a0a0f6a0-58a5-4e64-a0d6-22316bc35492'),
	(60,190,'en_gb',0,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'<p>Lorem ipsum dolor sit </p>\n<p>amet, consectetur adipiscing eli, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>','https://vimeo.com/70591644','right',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dark',NULL,NULL,'2018-06-13 09:11:42','2018-06-14 06:54:57','649f4882-b054-4e8a-b94f-f6c3fcf8f466'),
	(61,192,'en_gb',0,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Contactformulier','<p>Lorem ipsum dolor sit \n</p>\n<p>amet, consectetur adipiscing eli, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\n</p>',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'default',NULL,'2018-06-13 09:11:42','2018-06-14 06:54:57','69a49062-b531-4fca-9a29-dbd1b6cab539'),
	(62,193,'en_gb',0,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Magazine formulier','<p>Lorem ipsum dolor sit </p>\n<p>amet, consectetur adipiscing eli, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\n</p>',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'light',NULL,'2018-06-13 09:11:42','2018-06-14 06:54:57','adaa1a7d-e173-403f-9f4a-cc2357447d81'),
	(63,194,'en_gb',0,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Titel','<p>Lorem ipsum dolor sit \n</p>\n<p>amet, consectetur adipiscing eli, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum\n</p>',1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dark',NULL,'2018-06-13 09:11:42','2018-06-14 06:54:57','e54848f2-6417-4ae5-a2f7-f6a33c570a6a'),
	(64,195,'en_gb',0,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'default','2018-06-13 09:21:04','2018-06-14 06:54:57','d84ffc03-a293-4725-a995-c1a13a83a66e'),
	(65,196,'en_gb',0,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'light','2018-06-13 09:21:04','2018-06-14 06:54:57','6e4783be-fc64-4223-8392-2f11dc32af32'),
	(66,197,'en_gb',0,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'dark','2018-06-13 09:21:04','2018-06-14 06:54:57','92e07c13-f077-4bc0-a450-c750144924f6'),
	(67,199,'en_gb',0,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'default',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-06-14 07:10:36','2018-06-14 07:21:33','7be15457-c6f2-42b7-b134-3b9d0a5559a2'),
	(68,200,'en_gb',0,NULL,NULL,0,NULL,NULL,0,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'default',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2018-06-14 07:10:36','2018-06-14 07:21:33','5c32cc00-db51-41bf-91a4-1bcb71da884c');

/*!40000 ALTER TABLE `craft_matrixcontent_contentbuilder` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_matrixcontent_contentbuilder2
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_matrixcontent_contentbuilder2`;

CREATE TABLE `craft_matrixcontent_contentbuilder2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `field_textOneColumn_text` text COLLATE utf8_unicode_ci,
  `field_textTwoColumns_textColumn1` text COLLATE utf8_unicode_ci,
  `field_textTwoColumns_textColumn2` text COLLATE utf8_unicode_ci,
  `field_form_heading` text COLLATE utf8_unicode_ci,
  `field_form_text` text COLLATE utf8_unicode_ci,
  `field_form_form` int(10) DEFAULT NULL,
  `field_textImage_text` text COLLATE utf8_unicode_ci,
  `field_textImage_imagePosition` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `field_video_video` text COLLATE utf8_unicode_ci,
  `field_textVideo_text` text COLLATE utf8_unicode_ci,
  `field_textVideo_video` text COLLATE utf8_unicode_ci,
  `field_textThreeColumns_textColumn1` text COLLATE utf8_unicode_ci,
  `field_textThreeColumns_texColumn2` text COLLATE utf8_unicode_ci,
  `field_textThreeColumns_textColumn3` text COLLATE utf8_unicode_ci,
  `field_textVideo_videoPosition` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_matrixcontent_contentbuilder2_elementId_locale_unq_idx` (`elementId`,`locale`),
  KEY `craft_matrixcontent_contentbuilder2_locale_fk` (`locale`),
  CONSTRAINT `craft_matrixcontent_contentbuilder2_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixcontent_contentbuilder2_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_matrixcontent_ctascolumnone
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_matrixcontent_ctascolumnone`;

CREATE TABLE `craft_matrixcontent_ctascolumnone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `field_cta_linkit` text COLLATE utf8_unicode_ci,
  `field_cta_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'btn btn--primary',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_matrixcontent_ctascolumnone_elementId_locale_unq_idx` (`elementId`,`locale`),
  KEY `craft_matrixcontent_ctascolumnone_locale_fk` (`locale`),
  CONSTRAINT `craft_matrixcontent_ctascolumnone_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixcontent_ctascolumnone_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_matrixcontent_ctascolumnthree
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_matrixcontent_ctascolumnthree`;

CREATE TABLE `craft_matrixcontent_ctascolumnthree` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `field_cta_linkit` text COLLATE utf8_unicode_ci,
  `field_cta_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'btn btn--primary',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_matrixcontent_ctascolumnthree_elementId_locale_unq_idx` (`elementId`,`locale`),
  KEY `craft_matrixcontent_ctascolumnthree_locale_fk` (`locale`),
  CONSTRAINT `craft_matrixcontent_ctascolumnthree_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixcontent_ctascolumnthree_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_matrixcontent_ctascolumntwo
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_matrixcontent_ctascolumntwo`;

CREATE TABLE `craft_matrixcontent_ctascolumntwo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `field_cta_linkit` text COLLATE utf8_unicode_ci,
  `field_cta_class` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'btn btn--primary',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_matrixcontent_ctascolumntwo_elementId_locale_unq_idx` (`elementId`,`locale`),
  KEY `craft_matrixcontent_ctascolumntwo_locale_fk` (`locale`),
  CONSTRAINT `craft_matrixcontent_ctascolumntwo_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixcontent_ctascolumntwo_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_matrixcontent_detailbuilder
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_matrixcontent_detailbuilder`;

CREATE TABLE `craft_matrixcontent_detailbuilder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `field_textBlock_text` text COLLATE utf8_unicode_ci,
  `field_formBlock_freeform` int(10) DEFAULT NULL,
  `field_formBlock_background` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_formBlock_text` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_matrixcontent_detailbuilder_elementId_locale_unq_idx` (`elementId`,`locale`),
  KEY `craft_matrixcontent_detailbuilder_locale_fk` (`locale`),
  CONSTRAINT `craft_matrixcontent_detailbuilder_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_matrixcontent_detailbuilder_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_migrations`;

CREATE TABLE `craft_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pluginId` int(11) DEFAULT NULL,
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `applyTime` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_migrations_version_unq_idx` (`version`),
  KEY `craft_migrations_pluginId_fk` (`pluginId`),
  CONSTRAINT `craft_migrations_pluginId_fk` FOREIGN KEY (`pluginId`) REFERENCES `craft_plugins` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_migrations` WRITE;
/*!40000 ALTER TABLE `craft_migrations` DISABLE KEYS */;

INSERT INTO `craft_migrations` (`id`, `pluginId`, `version`, `applyTime`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,NULL,'m000000_000000_base','2017-03-09 09:09:40','2017-03-09 09:09:40','2017-03-09 09:09:40','80b06422-7a37-4a35-ba4b-fa04bdd9e50b'),
	(2,NULL,'m140730_000001_add_filename_and_format_to_transformindex','2017-03-09 09:09:40','2017-03-09 09:09:40','2017-03-09 09:09:40','b293ef64-bde5-4b7c-a024-001660911f8c'),
	(3,NULL,'m140815_000001_add_format_to_transforms','2017-03-09 09:09:40','2017-03-09 09:09:40','2017-03-09 09:09:40','e58cf3b3-dbd8-4b85-a192-dba223b68d0a'),
	(4,NULL,'m140822_000001_allow_more_than_128_items_per_field','2017-03-09 09:09:40','2017-03-09 09:09:40','2017-03-09 09:09:40','3a3d1ce8-be32-4113-bb76-65e8563cdecc'),
	(5,NULL,'m140829_000001_single_title_formats','2017-03-09 09:09:40','2017-03-09 09:09:40','2017-03-09 09:09:40','99a2b2a5-be98-4e92-b112-e19da9e0b0d2'),
	(6,NULL,'m140831_000001_extended_cache_keys','2017-03-09 09:09:40','2017-03-09 09:09:40','2017-03-09 09:09:40','c71716db-1ec7-4156-9989-fb43d9bac99c'),
	(7,NULL,'m140922_000001_delete_orphaned_matrix_blocks','2017-03-09 09:09:40','2017-03-09 09:09:40','2017-03-09 09:09:40','eb11ec71-92ba-4916-86c8-fb991a97d9e4'),
	(8,NULL,'m141008_000001_elements_index_tune','2017-03-09 09:09:40','2017-03-09 09:09:40','2017-03-09 09:09:40','1c97dd96-14a1-4f61-95b4-6554e89ac395'),
	(9,NULL,'m141009_000001_assets_source_handle','2017-03-09 09:09:40','2017-03-09 09:09:40','2017-03-09 09:09:40','4b552f36-a24b-404d-87c9-d2c3b99c863b'),
	(10,NULL,'m141024_000001_field_layout_tabs','2017-03-09 09:09:40','2017-03-09 09:09:40','2017-03-09 09:09:40','ccf132c7-d798-4de6-a700-4a8cd381f39d'),
	(11,NULL,'m141030_000000_plugin_schema_versions','2017-03-09 09:09:40','2017-03-09 09:09:40','2017-03-09 09:09:40','b2221b05-454b-442c-8efb-d76fd737c5a4'),
	(12,NULL,'m141030_000001_drop_structure_move_permission','2017-03-09 09:09:40','2017-03-09 09:09:40','2017-03-09 09:09:40','9189c1d9-c582-4c72-84c0-f5f51f5e04f1'),
	(13,NULL,'m141103_000001_tag_titles','2017-03-09 09:09:40','2017-03-09 09:09:40','2017-03-09 09:09:40','2fbf00b5-d071-4e82-bb6e-3f5cf0592005'),
	(14,NULL,'m141109_000001_user_status_shuffle','2017-03-09 09:09:40','2017-03-09 09:09:40','2017-03-09 09:09:40','c24e42bc-4f42-4a37-b2da-3546f476c88c'),
	(15,NULL,'m141126_000001_user_week_start_day','2017-03-09 09:09:40','2017-03-09 09:09:40','2017-03-09 09:09:40','a54b204d-bffb-46b7-94a8-73daa8b59382'),
	(16,NULL,'m150210_000001_adjust_user_photo_size','2017-03-09 09:09:40','2017-03-09 09:09:40','2017-03-09 09:09:40','0c657450-f2b4-48cb-bc60-1b535c82938d'),
	(17,NULL,'m150724_000001_adjust_quality_settings','2017-03-09 09:09:40','2017-03-09 09:09:40','2017-03-09 09:09:40','62723e50-e3fd-4e54-8942-9fb609a1895b'),
	(18,NULL,'m150827_000000_element_index_settings','2017-03-09 09:09:40','2017-03-09 09:09:40','2017-03-09 09:09:40','98ebb957-fc64-4cba-b83d-4e7587ae20f7'),
	(19,NULL,'m150918_000001_add_colspan_to_widgets','2017-03-09 09:09:40','2017-03-09 09:09:40','2017-03-09 09:09:40','fbcfb47c-e656-4fe1-8275-1f3354f7304a'),
	(20,NULL,'m151007_000000_clear_asset_caches','2017-03-09 09:09:40','2017-03-09 09:09:40','2017-03-09 09:09:40','ba55dca2-1a4f-4851-a828-b7f21fb86d26'),
	(21,NULL,'m151109_000000_text_url_formats','2017-03-09 09:09:40','2017-03-09 09:09:40','2017-03-09 09:09:40','0ebb3deb-9e34-49de-98bf-cf9a71fc159f'),
	(22,NULL,'m151110_000000_move_logo','2017-03-09 09:09:40','2017-03-09 09:09:40','2017-03-09 09:09:40','67942330-45b6-487d-8dcb-e16f8d2c9aa0'),
	(23,NULL,'m151117_000000_adjust_image_widthheight','2017-03-09 09:09:40','2017-03-09 09:09:40','2017-03-09 09:09:40','82d0dcbd-93ef-4e99-a5d6-40304f6ac57a'),
	(24,NULL,'m151127_000000_clear_license_key_status','2017-03-09 09:09:40','2017-03-09 09:09:40','2017-03-09 09:09:40','6f67ff37-a5a0-423d-838b-514b98df61b2'),
	(25,NULL,'m151127_000000_plugin_license_keys','2017-03-09 09:09:40','2017-03-09 09:09:40','2017-03-09 09:09:40','9c925959-48b1-482d-a7e1-77d712a91f00'),
	(26,NULL,'m151130_000000_update_pt_widget_feeds','2017-03-09 09:09:40','2017-03-09 09:09:40','2017-03-09 09:09:40','042735e0-289b-48c5-a024-8eca91df215d'),
	(27,NULL,'m160114_000000_asset_sources_public_url_default_true','2017-03-09 09:09:40','2017-03-09 09:09:40','2017-03-09 09:09:40','a5947619-88e1-49fa-8aac-ca4de633292c'),
	(28,NULL,'m160223_000000_sortorder_to_smallint','2017-03-09 09:09:40','2017-03-09 09:09:40','2017-03-09 09:09:40','91685223-231e-4850-908a-44f86d44b047'),
	(29,NULL,'m160229_000000_set_default_entry_statuses','2017-03-09 09:09:40','2017-03-09 09:09:40','2017-03-09 09:09:40','affd0b30-e1ff-4aa1-9b90-4a2f1632d633'),
	(30,NULL,'m160304_000000_client_permissions','2017-03-09 09:09:40','2017-03-09 09:09:40','2017-03-09 09:09:40','b085d0ab-ed49-41b5-b691-f0c629e196a2'),
	(31,NULL,'m160322_000000_asset_filesize','2017-03-09 09:09:40','2017-03-09 09:09:40','2017-03-09 09:09:40','72eeca6a-3f0e-4fc5-83b5-4e403ae0e368'),
	(32,NULL,'m160503_000000_orphaned_fieldlayouts','2017-03-09 09:09:40','2017-03-09 09:09:40','2017-03-09 09:09:40','a25f835c-8293-4fbd-986b-58b1f1aefb2a'),
	(33,NULL,'m160510_000000_tasksettings','2017-03-09 09:09:40','2017-03-09 09:09:40','2017-03-09 09:09:40','7a368188-eeb1-4b80-9e7c-19f2e122adc6'),
	(34,NULL,'m160829_000000_pending_user_content_cleanup','2017-03-09 09:09:40','2017-03-09 09:09:40','2017-03-09 09:09:40','ad2f0534-5c76-420f-af57-ff864de5155f'),
	(35,NULL,'m160830_000000_asset_index_uri_increase','2017-03-09 09:09:40','2017-03-09 09:09:40','2017-03-09 09:09:40','34bf2c13-094e-4919-b406-899c99a97905'),
	(36,NULL,'m160919_000000_usergroup_handle_title_unique','2017-03-09 09:09:40','2017-03-09 09:09:40','2017-03-09 09:09:40','845056b8-2f53-46b1-beeb-2cddb2b41150'),
	(37,NULL,'m161108_000000_new_version_format','2017-03-09 09:09:40','2017-03-09 09:09:40','2017-03-09 09:09:40','f21a4d10-1879-48f4-aa11-b60459e6e705'),
	(38,NULL,'m161109_000000_index_shuffle','2017-03-09 09:09:40','2017-03-09 09:09:40','2017-03-09 09:09:40','5af79fae-bb1d-4d81-bb5a-506c3769b037'),
	(39,3,'m150212_145000_AmNav_renamePagesToNodes','2017-06-13 14:02:26','2017-06-13 14:02:26','2017-06-13 14:02:26','c78a9bb8-73da-4448-b518-e8e3018330ac'),
	(40,3,'m150217_112800_AmNav_expandPageData','2017-06-13 14:02:26','2017-06-13 14:02:26','2017-06-13 14:02:26','361c394e-0ade-4bb6-9bd2-a7be97d06f27'),
	(41,3,'m150403_093000_AmNav_nodesWithElements','2017-06-13 14:02:26','2017-06-13 14:02:26','2017-06-13 14:02:26','f2b49c4e-f045-4aa0-9442-ab25ce4d48b3'),
	(42,3,'m150512_105600_AmNav_addOptionalClass','2017-06-13 14:02:26','2017-06-13 14:02:26','2017-06-13 14:02:26','067d3a25-a2cc-41b9-9053-139e50a938db'),
	(43,4,'m150901_144609_superTable_fixForContentTables','2017-06-26 12:34:11','2017-06-26 12:34:11','2017-06-26 12:34:11','160305c9-f526-45fc-8cd1-4b581ef1e6f9'),
	(44,NULL,'m170612_000000_route_index_shuffle','2017-07-02 12:26:13','2017-07-02 12:26:13','2017-07-02 12:26:13','409099ce-3659-48ce-98e8-5f5b6fc9a77c'),
	(45,5,'m170216_100000_vzurl_to_text_column','2017-07-02 16:17:43','2017-07-02 16:17:43','2017-07-02 16:17:43','06cf5041-6d97-405d-af24-bafee738608d'),
	(46,7,'m161121_101534_freeform_AddCheckedAttributeToFieldModel','2017-07-03 12:27:06','2017-07-03 12:27:06','2017-07-03 12:27:06','90ad2e99-875d-40e8-bbfb-ae650629e863'),
	(47,7,'m161129_134744_freeform_ChangingFieldDatabaseTypes','2017-07-03 12:27:06','2017-07-03 12:27:06','2017-07-03 12:27:06','24662f9f-446a-4e2b-ad22-6a64892785a7'),
	(48,7,'m170127_083920_freeform_MakeFieldCheckedNullable','2017-07-03 12:27:06','2017-07-03 12:27:06','2017-07-03 12:27:06','8873c2e7-2eb5-45aa-8882-1d93d98fe8e1'),
	(49,7,'m170127_095031_freeform_AddArrayTypeToIntegrationFields','2017-07-03 12:27:06','2017-07-03 12:27:06','2017-07-03 12:27:06','f3a59aac-0e7e-4665-90d4-1b16e88bd682'),
	(50,7,'m170207_111312_freeform_AddColorToForms','2017-07-03 12:27:06','2017-07-03 12:27:06','2017-07-03 12:27:06','4c226cec-3140-4e5f-8b60-476ca2150cce'),
	(51,7,'m170609_120423_freeform_AddNewFieldtypesToFields','2017-08-18 12:17:22','2017-08-18 12:17:22','2017-08-18 12:17:22','91a3aa2b-d08d-4e6b-b363-9955449bef05'),
	(52,7,'m170609_142437_freeform_AddNewPropertiesToFields','2017-08-18 12:17:22','2017-08-18 12:17:22','2017-08-18 12:17:22','239a5a1b-3dd2-42ee-bc58-7b682a9f1f00'),
	(53,7,'m170627_113056_freeform_AddExportSettings','2017-08-18 12:17:22','2017-08-18 12:17:22','2017-08-18 12:17:22','bac93dd6-6cf6-41f2-a4a0-c79a3fb12ae4'),
	(54,7,'m170629_062621_freeform_AddExportProfiles','2017-08-18 12:17:22','2017-08-18 12:17:22','2017-08-18 12:17:22','473b2fc5-7352-4d40-85e8-4e489dbcf0d5'),
	(55,7,'m170705_121240_freeform_AddStatusesToExportProfiles','2017-08-18 12:17:22','2017-08-18 12:17:22','2017-08-18 12:17:22','416a7a93-ee6f-4adb-932f-1cd85c63682f'),
	(56,7,'m170817_062447_freeform_AddIncrementalSubmissionId','2017-09-08 14:11:27','2017-09-08 14:11:27','2017-09-08 14:11:27','0933e21d-121e-42e8-8eb5-afd26e84ec3d'),
	(57,8,'m160208_010101_FruitLinkIt_UpdateExistingLinkItFields','2017-09-08 14:11:53','2017-09-08 14:11:53','2017-09-08 14:11:53','49985e5d-f6c7-4478-9547-ab5ecc069761'),
	(58,9,'m160428_202308_Neo_UpdateBlockLevels','2017-09-08 14:11:55','2017-09-08 14:11:55','2017-09-08 14:11:55','74c4a721-bb8e-45b4-91bd-7c80cf809409'),
	(59,9,'m160515_005002_Neo_UpdateBlockStructure','2017-09-08 14:11:55','2017-09-08 14:11:55','2017-09-08 14:11:55','d187cf65-6fac-40cf-9a1e-c1de096946b9'),
	(60,9,'m160605_191540_Neo_UpdateBlockStructureLocales','2017-09-08 14:11:55','2017-09-08 14:11:55','2017-09-08 14:11:55','825fdea5-c079-4d1e-94b5-5fcc6b7de1fc'),
	(61,9,'m161029_230849_Neo_AddMaxChildBlocksSetting','2017-09-08 14:11:55','2017-09-08 14:11:55','2017-09-08 14:11:55','254d1082-9d24-4eca-ad66-9dca219e4c07'),
	(62,7,'m171011_212322_freeform_SurefireExportProfiles','2017-10-23 06:33:40','2017-10-23 06:33:40','2017-10-23 06:33:40','bf7751d6-8609-4838-9b2e-eaae4afc9be0'),
	(63,NULL,'m171107_000000_assign_group_permissions','2017-11-15 13:50:19','2017-11-15 13:50:19','2017-11-15 13:50:19','d9c07e23-3274-4544-a2f5-540cdfd05828'),
	(69,NULL,'m171117_000001_templatecache_index_tune','2017-12-19 19:47:30','2017-12-19 19:47:30','2017-12-19 19:47:30','0e226cdb-e0da-4c39-b506-954244a76606'),
	(70,NULL,'m171204_000001_templatecache_index_tune_deux','2017-12-19 19:47:30','2017-12-19 19:47:30','2017-12-19 19:47:30','f6f54cfc-ca04-4685-97fa-54890905f8a7'),
	(71,7,'m171011_212323_freeform_SurefireExportSettings','2017-12-19 20:27:15','2017-12-19 20:27:15','2017-12-19 20:27:15','81afec63-5956-4e0c-9963-1dde8776acbb'),
	(72,7,'m171214_183312_freeform_UpdateMailchimpIntegrations','2017-12-19 20:27:15','2017-12-19 20:27:15','2017-12-19 20:27:15','a2b21845-16d4-46f3-8b4d-5e9f194054d3'),
	(73,7,'m171218_101537_freeform_RemoveAssetsForeignKey','2018-01-18 09:05:21','2018-01-18 09:05:21','2018-01-18 09:05:21','2bfb4584-a8b3-4346-a563-f173411f2385'),
	(74,7,'m171220_085611_freeform_RemoveAssetSourceForeignKey','2018-01-18 09:05:21','2018-01-18 09:05:21','2018-01-18 09:05:21','dc49ddbb-5e6c-4c81-8462-cd5f8646a160'),
	(75,7,'m180220_123246_freeform_ChangeFileUploadFieldColumnType','2018-04-11 14:37:28','2018-04-11 14:37:28','2018-04-11 14:37:28','0594484d-9066-4c3f-ba5f-ce0afba2b011'),
	(76,NULL,'m180406_000000_pro_upgrade','2018-04-25 13:24:16','2018-04-25 13:24:16','2018-04-25 13:24:16','e0b36791-5f54-4171-b180-7cd57f933465'),
	(77,14,'m160809_101113_seo_CreateRedirectsAndSitemapsTables','2018-04-25 13:47:41','2018-04-25 13:47:41','2018-04-25 13:47:41','b0fde9d6-65d6-4040-aafb-97caf1777447'),
	(78,14,'m160809_102830_seo_AddEnabledColumnToSitemapsTable','2018-04-25 13:47:41','2018-04-25 13:47:41','2018-04-25 13:47:41','2e13ae67-e21c-4d1c-8d73-620003c71ea3'),
	(79,14,'m160809_144009_seo_AddProductTypeToSitemapGroupColumn','2018-04-25 13:47:41','2018-04-25 13:47:41','2018-04-25 13:47:41','bab067c5-9275-451e-81ed-1ba13005d0e5'),
	(80,16,'m160318_182632_focuspoint_Refactoring','2018-05-18 14:11:57','2018-05-18 14:11:57','2018-05-18 14:11:57','ab910d9a-39cd-4460-b375-e5c8635e4019');

/*!40000 ALTER TABLE `craft_migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_neoblocks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_neoblocks`;

CREATE TABLE `craft_neoblocks` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `collapsed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ownerLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_neoblocks_ownerId_idx` (`ownerId`),
  KEY `craft_neoblocks_fieldId_idx` (`fieldId`),
  KEY `craft_neoblocks_typeId_idx` (`typeId`),
  KEY `craft_neoblocks_collapsed_idx` (`collapsed`),
  KEY `craft_neoblocks_ownerLocale_fk` (`ownerLocale`),
  CONSTRAINT `craft_neoblocks_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_neoblocks_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_neoblocks_ownerId_fk` FOREIGN KEY (`ownerId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_neoblocks_ownerLocale_fk` FOREIGN KEY (`ownerLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `craft_neoblocks_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_neoblocktypes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_neoblockstructures
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_neoblockstructures`;

CREATE TABLE `craft_neoblockstructures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `structureId` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `ownerLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_neoblockstructures_structureId_idx` (`structureId`),
  KEY `craft_neoblockstructures_ownerId_idx` (`ownerId`),
  KEY `craft_neoblockstructures_fieldId_idx` (`fieldId`),
  KEY `craft_neoblockstructures_ownerLocale_fk` (`ownerLocale`),
  CONSTRAINT `craft_neoblockstructures_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_neoblockstructures_ownerId_fk` FOREIGN KEY (`ownerId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_neoblockstructures_ownerLocale_fk` FOREIGN KEY (`ownerLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `craft_neoblockstructures_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_neoblocktypes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_neoblocktypes`;

CREATE TABLE `craft_neoblocktypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `maxBlocks` int(10) DEFAULT '0',
  `maxChildBlocks` int(10) DEFAULT '0',
  `childBlocks` text COLLATE utf8_unicode_ci,
  `topLevel` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_neoblocktypes_name_fieldId_unq_idx` (`name`,`fieldId`),
  UNIQUE KEY `craft_neoblocktypes_handle_fieldId_unq_idx` (`handle`,`fieldId`),
  KEY `craft_neoblocktypes_fieldId_fk` (`fieldId`),
  KEY `craft_neoblocktypes_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_neoblocktypes_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_neoblocktypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_neogroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_neogroups`;

CREATE TABLE `craft_neogroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldId` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_neogroups_fieldId_fk` (`fieldId`),
  CONSTRAINT `craft_neogroups_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_plugins
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_plugins`;

CREATE TABLE `craft_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `schemaVersion` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `licenseKey` char(24) COLLATE utf8_unicode_ci DEFAULT NULL,
  `licenseKeyStatus` enum('valid','invalid','mismatched','unknown') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'unknown',
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `settings` text COLLATE utf8_unicode_ci,
  `installDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_plugins` WRITE;
/*!40000 ALTER TABLE `craft_plugins` DISABLE KEYS */;

INSERT INTO `craft_plugins` (`id`, `class`, `version`, `schemaVersion`, `licenseKey`, `licenseKeyStatus`, `enabled`, `settings`, `installDate`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'Kint','1.1.0','1.0.0',NULL,'unknown',1,NULL,'2017-05-15 07:54:12','2017-05-15 07:54:12','2017-10-05 14:12:21','5db9b7fa-cafe-4ed6-88f8-f564a97dc9b2'),
	(2,'Translate','0.4.3',NULL,NULL,'unknown',1,NULL,'2017-06-12 07:15:33','2017-06-12 07:15:33','2018-08-02 07:23:52','5711ec23-49d6-4686-b9d2-19a7a93c70f6'),
	(3,'AmNav','1.8.0','1.7.4',NULL,'unknown',1,'{\"pluginName\":\"Navigations\",\"canDoActions\":\"\",\"quietErrors\":\"1\"}','2017-06-13 14:02:26','2017-06-13 14:02:26','2018-08-02 07:23:52','34e6a704-ca66-47c4-9efe-1ed3a0c7703b'),
	(4,'SuperTable','1.0.6','1.0.0',NULL,'unknown',1,NULL,'2017-06-26 12:34:11','2017-06-26 12:34:11','2018-08-02 07:23:52','b8f58148-4fc0-4ebb-83f9-e57206054f5d'),
	(5,'VzUrl','1.1.1','1.2',NULL,'unknown',1,NULL,'2017-07-02 16:17:43','2017-07-02 16:17:43','2018-08-02 07:23:52','d3a93e3c-1478-4554-bc24-f44922e4d1f6'),
	(6,'VideoEmbedUtility','1.0.0',NULL,NULL,'unknown',1,NULL,'2017-07-02 20:14:16','2017-07-02 20:14:16','2018-08-02 07:23:52','475efa1a-1d80-4af5-91a2-4fd3c41823d8'),
	(7,'Freeform','1.9.0','1.1.3',NULL,'unknown',1,'{\"pluginName\":\"\",\"formTemplateDirectory\":\"templates\\/_freeform\",\"emailTemplateDirectory\":\"_email\\/\",\"emailTemplateStorage\":\"db\",\"license\":null,\"spamProtectionEnabled\":\"1\",\"defaultView\":\"submissions\",\"fieldDisplayOrder\":\"name\",\"showTutorial\":\"\",\"defaultTemplates\":\"1\",\"removeNewlines\":\"\",\"footerScripts\":\"\",\"formSubmitDisable\":\"\"}','2017-07-03 12:27:06','2017-07-03 12:27:06','2018-08-02 07:23:52','d4a3a98d-2ef7-4c61-b7d8-316fb22fcfc3'),
	(8,'FruitLinkIt','2.4.0','2.3.0',NULL,'unknown',1,NULL,'2017-09-08 14:11:53','2017-09-08 14:11:53','2018-08-02 07:23:52','e15c3ed6-c188-4e74-b373-0774620e6e2d'),
	(9,'Neo','1.4.1','1.5.0',NULL,'unknown',1,NULL,'2017-09-08 14:11:55','2017-09-08 14:11:55','2018-08-02 07:23:52','90121e70-be41-4e2e-8479-eb6232e961a0'),
	(12,'DefaultTab','1.1.1','1.0.0',NULL,'unknown',1,'{\"tabTitle\":\"Content\",\"hasTitleField\":\"1\",\"defaultGroups\":[\"3\",\"2\"]}','2017-12-11 08:59:38','2017-12-11 08:59:38','2018-08-02 07:23:52','2bc56983-e108-4d03-a987-fa62ac87df67'),
	(13,'Dd','1.0.0','1.0.0',NULL,'unknown',1,NULL,'2018-01-18 10:31:25','2018-01-18 10:31:25','2018-08-02 07:23:52','2ccd3417-48e8-4a3a-b5fd-5b0d3c4486a6'),
	(14,'Seo','2.1.3','0.1.3',NULL,'unknown',1,'{\"sitemapName\":\"sitemap\",\"sitemapLimit\":\"1000\",\"publicPath\":null,\"titleSuffix\":\"| SmileWise\",\"socialImage\":\"\",\"metaTemplate\":\"\"}','2018-04-25 13:47:41','2018-04-25 13:47:41','2018-08-02 07:23:52','0f186351-325d-4b62-aa9c-e889d94a6308'),
	(15,'Imager','1.6.4','1.0.0',NULL,'unknown',1,NULL,'2018-05-18 14:11:40','2018-05-18 14:11:40','2018-08-02 07:23:52','b8bb47dc-2d1f-4de3-aba2-b8da1e5bea3d'),
	(16,'FocusPoint','1.1.7','1.0.1',NULL,'unknown',1,NULL,'2018-05-18 14:11:57','2018-05-18 14:11:57','2018-08-02 07:23:52','c73723d5-def5-4fce-a71f-fb90f5956ab3'),
	(17,'Inventory','1.0.1','0.0.0',NULL,'unknown',1,NULL,'2018-05-30 13:54:55','2018-05-30 13:54:55','2018-08-02 07:23:52','8a6e45ab-6691-46f3-b55f-b1fffd4c21bb');

/*!40000 ALTER TABLE `craft_plugins` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_rackspaceaccess
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_rackspaceaccess`;

CREATE TABLE `craft_rackspaceaccess` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `connectionKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `storageUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `cdnUrl` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_rackspaceaccess_connectionKey_unq_idx` (`connectionKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_relations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_relations`;

CREATE TABLE `craft_relations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldId` int(11) NOT NULL,
  `sourceId` int(11) NOT NULL,
  `sourceLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `targetId` int(11) NOT NULL,
  `sortOrder` smallint(6) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_relations_fieldId_sourceId_sourceLocale_targetId_unq_idx` (`fieldId`,`sourceId`,`sourceLocale`,`targetId`),
  KEY `craft_relations_sourceId_fk` (`sourceId`),
  KEY `craft_relations_sourceLocale_fk` (`sourceLocale`),
  KEY `craft_relations_targetId_fk` (`targetId`),
  CONSTRAINT `craft_relations_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_relations_sourceId_fk` FOREIGN KEY (`sourceId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_relations_sourceLocale_fk` FOREIGN KEY (`sourceLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `craft_relations_targetId_fk` FOREIGN KEY (`targetId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_relations` WRITE;
/*!40000 ALTER TABLE `craft_relations` DISABLE KEYS */;

INSERT INTO `craft_relations` (`id`, `fieldId`, `sourceId`, `sourceLocale`, `targetId`, `sortOrder`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(22,87,102,NULL,89,1,'2018-05-30 13:33:51','2018-05-30 13:33:51','597d7171-a1cc-436d-8716-51ea0f7c8800'),
	(29,87,76,NULL,90,1,'2018-05-30 13:45:13','2018-05-30 13:45:13','32d716f8-c799-4e03-95a7-e8139193b41f'),
	(30,96,77,NULL,86,1,'2018-05-30 13:45:13','2018-05-30 13:45:13','06a96d5d-33be-4e94-ae8f-aeb47891b22c'),
	(80,87,115,NULL,92,1,'2018-06-04 15:20:20','2018-06-04 15:20:20','50476eaf-0008-4269-9e80-f6381c865af4'),
	(186,42,55,NULL,130,1,'2018-06-13 09:45:40','2018-06-13 09:45:40','947ee6b2-51d2-4044-955e-34b354ca9cab'),
	(187,87,149,NULL,150,1,'2018-06-13 09:54:58','2018-06-13 09:54:58','c194ab81-f3c8-4353-ac48-1d014a0c1821'),
	(188,96,152,NULL,130,1,'2018-06-13 09:54:58','2018-06-13 09:54:58','0789f3ed-baf7-4172-8089-e08f7c55087b'),
	(189,87,174,NULL,86,1,'2018-06-13 09:54:58','2018-06-13 09:54:58','ec52a30c-d467-4280-b77f-28c80ce496d0'),
	(190,96,177,NULL,86,1,'2018-06-13 09:54:58','2018-06-13 09:54:58','a6b91bbb-000a-4d5e-a55b-9b8f84b002b0'),
	(191,96,179,NULL,86,1,'2018-06-13 09:54:58','2018-06-13 09:54:58','42380757-d523-4ab3-98a1-f2579aa054c9'),
	(192,96,180,NULL,86,1,'2018-06-13 09:54:58','2018-06-13 09:54:58','831a9e1e-7b13-463b-adb8-84f37d5e3e0a'),
	(193,101,195,NULL,131,1,'2018-06-13 09:54:58','2018-06-13 09:54:58','d5b3c782-99b9-4963-a50e-7b7dc3b21bcf'),
	(194,101,195,NULL,12,2,'2018-06-13 09:54:58','2018-06-13 09:54:58','d7d44276-aa9a-4121-8995-6146ce2274f2'),
	(195,101,195,NULL,2,3,'2018-06-13 09:54:58','2018-06-13 09:54:58','a7d7ad29-0d57-415b-9f5a-3d08b569a96a'),
	(196,101,195,NULL,55,4,'2018-06-13 09:54:58','2018-06-13 09:54:58','6c7f5463-84e8-48a8-be94-2e36656c121b'),
	(197,101,196,NULL,2,1,'2018-06-13 09:54:58','2018-06-13 09:54:58','c35b3aea-281b-407b-b2ac-f9c1aa865633'),
	(198,101,196,NULL,55,2,'2018-06-13 09:54:58','2018-06-13 09:54:58','8d1133a7-5572-468a-b66e-66fbc8105803'),
	(200,101,197,NULL,2,1,'2018-06-13 09:54:58','2018-06-13 09:54:58','dd9b297d-9d88-4d44-93a8-536b5cfd6017'),
	(201,101,197,NULL,55,2,'2018-06-13 09:54:58','2018-06-13 09:54:58','a6100e45-710c-44ac-a628-a3a0c5d38665'),
	(202,101,197,NULL,7,3,'2018-06-13 09:54:58','2018-06-13 09:54:58','81d7cbc7-7862-4ddc-86f8-85ecd1769239'),
	(203,42,53,NULL,84,1,'2018-06-14 07:07:38','2018-06-14 07:07:38','eb29b84d-5d90-42e4-b932-b3b81e339c5e'),
	(205,87,200,NULL,150,1,'2018-06-14 07:21:33','2018-06-14 07:21:33','0e000d6b-ed08-4381-b69e-8b87b1f243cc'),
	(206,42,198,NULL,129,1,'2018-06-14 07:21:33','2018-06-14 07:21:33','3da14bdd-d02f-4480-bdff-44943ee916c7');

/*!40000 ALTER TABLE `craft_relations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_routes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_routes`;

CREATE TABLE `craft_routes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `locale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `urlParts` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `urlPattern` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_routes_locale_idx` (`locale`),
  KEY `craft_routes_urlPattern_idx` (`urlPattern`),
  CONSTRAINT `craft_routes_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_searchindex
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_searchindex`;

CREATE TABLE `craft_searchindex` (
  `elementId` int(11) NOT NULL,
  `attribute` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `fieldId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`elementId`,`attribute`,`fieldId`,`locale`),
  FULLTEXT KEY `craft_searchindex_keywords_idx` (`keywords`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_searchindex` WRITE;
/*!40000 ALTER TABLE `craft_searchindex` DISABLE KEYS */;

INSERT INTO `craft_searchindex` (`elementId`, `attribute`, `fieldId`, `locale`, `keywords`)
VALUES
	(1,'username',0,'nl_be',' support statik be '),
	(1,'firstname',0,'nl_be',''),
	(1,'lastname',0,'nl_be',''),
	(1,'fullname',0,'nl_be',''),
	(1,'email',0,'nl_be',' support statik be '),
	(1,'slug',0,'nl_be',''),
	(2,'slug',0,'nl_be',' homepage '),
	(2,'title',0,'nl_be',' home '),
	(2,'field',1,'nl_be',' it s true this site doesn t have a whole lot of content yet but don t worry our web developers have just installed the cms and they re setting things up for the content editors this very moment soon crabas local statik be will be an oasis of fresh perspectives sharp analyses and astute opinions that will keep you coming back again and again '),
	(2,'title',0,'en_be',' home '),
	(2,'slug',0,'en_be',' homepage '),
	(2,'field',13,'en_be',' dark '),
	(2,'field',3,'en_be',''),
	(2,'field',4,'en_be',''),
	(5,'field',14,'en_be',''),
	(5,'field',17,'en_be',' dark '),
	(5,'field',15,'en_be',''),
	(5,'field',16,'en_be',''),
	(5,'slug',0,'en_be',''),
	(7,'slug',0,'en_be',' nieuws overzicht '),
	(7,'title',0,'en_be',' nieuws '),
	(7,'field',23,'en_be',''),
	(7,'field',3,'en_be',''),
	(7,'field',4,'en_be',''),
	(8,'field',42,'en_be',''),
	(8,'slug',0,'en_be',''),
	(10,'username',0,'en_be',' cm '),
	(10,'firstname',0,'en_be',''),
	(10,'lastname',0,'en_be',''),
	(10,'fullname',0,'en_be',''),
	(10,'email',0,'en_be',' shared craft statik be '),
	(10,'slug',0,'en_be',''),
	(11,'field',50,'en_be',''),
	(11,'field',51,'en_be',''),
	(11,'field',52,'en_be',''),
	(11,'field',53,'en_be',''),
	(11,'field',54,'en_be',''),
	(11,'field',55,'en_be',''),
	(11,'field',56,'en_be',''),
	(11,'slug',0,'en_be',''),
	(12,'slug',0,'en_be',' privacy '),
	(12,'title',0,'en_be',' privacy '),
	(13,'slug',0,'en_be',' pagina niet gevonden '),
	(13,'title',0,'en_be',' pagina niet gevonden '),
	(7,'field',41,'en_be',''),
	(12,'field',41,'en_be',''),
	(12,'field',18,'en_be',''),
	(12,'field',3,'en_be',''),
	(12,'field',4,'en_be',''),
	(13,'field',41,'en_be',''),
	(13,'field',23,'en_be',''),
	(8,'field',42,'nl_be',''),
	(11,'field',50,'nl_be',''),
	(11,'field',51,'nl_be',''),
	(11,'field',52,'nl_be',''),
	(11,'field',53,'nl_be',''),
	(11,'field',54,'nl_be',''),
	(11,'field',55,'nl_be',''),
	(11,'field',56,'nl_be',''),
	(7,'field',4,'nl_be',''),
	(7,'field',41,'nl_be',''),
	(7,'field',3,'nl_be',''),
	(13,'field',23,'nl_be',''),
	(12,'field',18,'nl_be',''),
	(12,'field',3,'nl_be',''),
	(12,'field',4,'nl_be',''),
	(13,'field',41,'nl_be',''),
	(12,'field',41,'nl_be',''),
	(15,'field',78,'en_be',''),
	(15,'field',61,'en_be',' entry 7 btn secondary '),
	(15,'field',59,'en_be',''),
	(15,'slug',0,'en_be',''),
	(17,'field',41,'en_be',' example page to test all cases and see if nothing breaks '),
	(17,'field',58,'en_be',' section default 0 0 email info statik be mailto stijn statik be btn btn primary tel 32 0 16 62 19 01 call me 016 62 19 01 btn btn secondary custom www statik be btn btn ghost custom www statik be click here link link ext 0 0 first a one colums to see whats happening here heading 2 heading 3 heading 4 heading 5 list itemand another oneone moreindentindent 2back to the rootssnerk one panch one duotrioetc section light 0 0 text center 0 0 second column also a onecolumn to see what it does with a background also it is a centered one what do ya think looks good to me section dark 0 0 0 0 column 1 bleh blah column 2 blah bleh section default 0 0 text center 0 0 column 1 centered text column 2 centered text also here section default 0 0 0 0 column 1 lorem ipsum dolor column 3 lorem ipsum dolor column 2 lorem ipsum dolor section default 0 0 davidplas 830451 0 left 0 title braaaaaaap section light 0 0 0 0 https www youtube com watch v=qjwhmfyfxwy feature=youtu be t=15m37s 0 left 0 some text next to and embedded youtube video https www youtube com watch v=cxz8qj2b8ug section default 0 0 contact form 1 0 section light 0 0 text center 0 0 colommmmekeee greazherazherahz grezgregregareg davidplas 848611 0 0 '),
	(17,'field',43,'en_be',''),
	(17,'field',82,'en_be',''),
	(17,'field',3,'en_be',''),
	(17,'field',4,'en_be',''),
	(17,'slug',0,'en_be',' example page '),
	(17,'title',0,'en_be',' example page '),
	(17,'field',41,'nl_be',' example page to test all cases and see if nothing breaks '),
	(17,'field',58,'nl_be',''),
	(17,'field',43,'nl_be',''),
	(17,'field',82,'nl_be',''),
	(17,'field',3,'nl_be',''),
	(17,'field',4,'nl_be',''),
	(17,'slug',0,'nl_be',' example page '),
	(17,'title',0,'nl_be',' example page '),
	(79,'field',104,'en_be',' lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum '),
	(81,'field',99,'en_be',' lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum '),
	(80,'slug',0,'en_be',''),
	(80,'field',98,'en_be',' https www youtube com watch v=q0cbn8sfihy '),
	(79,'slug',0,'en_be',''),
	(78,'slug',0,'en_be',''),
	(81,'field',100,'en_be',' https www youtube com watch v=q0cbn8sfihy '),
	(79,'field',103,'en_be',' lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum '),
	(78,'field',90,'en_be',' duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum test '),
	(78,'field',89,'en_be',' lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat '),
	(77,'slug',0,'en_be',''),
	(77,'field',97,'en_be',' right '),
	(86,'title',0,'nl_be',' abbie bernet 527251 unsplash '),
	(86,'slug',0,'nl_be',' abbie bernet 527251 unsplash '),
	(86,'filename',0,'nl_be',' abbie bernet 527251 unsplash jpg '),
	(86,'extension',0,'nl_be',' jpg '),
	(86,'kind',0,'nl_be',' image '),
	(86,'title',0,'en_be',' abbie bernet 527251 unsplash '),
	(86,'slug',0,'en_be',' abbie bernet 527251 unsplash '),
	(86,'kind',0,'en_be',' image '),
	(86,'filename',0,'en_be',' abbie bernet 527251 unsplash jpg '),
	(86,'extension',0,'en_be',' jpg '),
	(85,'title',0,'nl_be',' kobu agency 409288 unsplash '),
	(85,'slug',0,'nl_be',' kobu agency 409288 unsplash '),
	(85,'kind',0,'nl_be',' image '),
	(85,'filename',0,'nl_be',' kobu agency 409288 unsplash jpg '),
	(85,'extension',0,'nl_be',' jpg '),
	(85,'slug',0,'en_be',' kobu agency 409288 unsplash '),
	(85,'title',0,'en_be',' kobu agency 409288 unsplash '),
	(85,'kind',0,'en_be',' image '),
	(85,'extension',0,'en_be',' jpg '),
	(84,'title',0,'nl_be',' dose media 481603 unsplash '),
	(85,'filename',0,'en_be',' kobu agency 409288 unsplash jpg '),
	(84,'slug',0,'nl_be',' dose media 481603 unsplash '),
	(84,'kind',0,'nl_be',' image '),
	(84,'extension',0,'nl_be',' jpg '),
	(84,'slug',0,'en_be',' dose media 481603 unsplash '),
	(84,'title',0,'en_be',' dose media 481603 unsplash '),
	(84,'filename',0,'nl_be',' dose media 481603 unsplash jpg '),
	(84,'kind',0,'en_be',' image '),
	(84,'extension',0,'en_be',' jpg '),
	(84,'filename',0,'en_be',' dose media 481603 unsplash jpg '),
	(83,'kind',0,'nl_be',' image '),
	(83,'slug',0,'nl_be',' ben kolde 367194 unsplash '),
	(83,'title',0,'nl_be',' ben kolde 367194 unsplash '),
	(83,'extension',0,'nl_be',' jpg '),
	(83,'filename',0,'nl_be',' ben kolde 367194 unsplash jpg '),
	(83,'title',0,'en_be',' ben kolde 367194 unsplash '),
	(83,'extension',0,'en_be',' jpg '),
	(83,'kind',0,'en_be',' image '),
	(83,'slug',0,'en_be',' ben kolde 367194 unsplash '),
	(83,'filename',0,'en_be',' ben kolde 367194 unsplash jpg '),
	(79,'field',102,'en_be',' lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum '),
	(53,'field',41,'en_be',' test contentje '),
	(53,'field',18,'en_be',' 0 0 test content '),
	(53,'field',43,'en_be',' text contentje '),
	(53,'field',42,'en_be',''),
	(53,'field',3,'en_be',''),
	(53,'field',4,'en_be',''),
	(53,'slug',0,'en_be',' example news '),
	(53,'title',0,'en_be',' example news '),
	(53,'field',41,'nl_be',' test contentje '),
	(53,'field',18,'nl_be',' 0 0 test content '),
	(53,'field',43,'nl_be',' example overview title '),
	(53,'field',42,'nl_be',' dose media 481603 unsplash '),
	(53,'field',3,'nl_be',''),
	(53,'field',4,'nl_be',''),
	(53,'slug',0,'nl_be',' example news '),
	(53,'title',0,'nl_be',' example news '),
	(1,'username',0,'en_be',' admin '),
	(1,'firstname',0,'en_be',''),
	(1,'lastname',0,'en_be',''),
	(1,'fullname',0,'en_be',''),
	(1,'email',0,'en_be',' support statik be '),
	(1,'slug',0,'en_be',''),
	(55,'slug',0,'en_be',' contact '),
	(55,'title',0,'en_be',' contact '),
	(55,'slug',0,'nl_be',' contact '),
	(55,'title',0,'nl_be',' contact '),
	(77,'field',96,'en_be',' abbie bernet 527251 unsplash '),
	(66,'field_8',0,'en_be',''),
	(66,'field_25',0,'en_be',''),
	(66,'field_15',0,'en_be',''),
	(66,'field_9',0,'en_be',''),
	(66,'field_14',0,'en_be',''),
	(66,'field_7',0,'en_be',' statik '),
	(66,'field_22',0,'en_be',''),
	(66,'field_21',0,'en_be',' 16 03 2018 '),
	(66,'field_24',0,'en_be',''),
	(66,'field_3',0,'en_be',' tim 33 statik be '),
	(66,'field_13',0,'en_be',''),
	(66,'field_1',0,'en_be',' tim '),
	(66,'field_20',0,'en_be',''),
	(66,'field_2',0,'en_be',' peeters '),
	(66,'field_12',0,'en_be',''),
	(66,'field_19',0,'en_be',''),
	(66,'field_5',0,'en_be',''),
	(66,'field_16',0,'en_be',' gezond leven in een gezonde omgeving '),
	(66,'field_26',0,'en_be',' mosselen '),
	(66,'field_18',0,'en_be',''),
	(66,'field_23',0,'en_be',''),
	(66,'field_17',0,'en_be',''),
	(66,'field_4',0,'en_be',''),
	(66,'field_11',0,'en_be',''),
	(66,'slug',0,'en_be',' 2018 02 09 130148 '),
	(66,'title',0,'en_be',' 2018 02 09 13 01 48 '),
	(198,'field',82,'en_gb',''),
	(198,'field',42,'en_gb',' rawpixel 660716 unsplash '),
	(198,'field',85,'en_gb',' meer nieuws smilewise '),
	(198,'slug',0,'en_gb',' meer nieuws '),
	(198,'title',0,'en_gb',' meer nieuws '),
	(199,'field',88,'en_gb',' lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum '),
	(199,'field',106,'en_gb',''),
	(199,'field',108,'en_gb',' default '),
	(199,'slug',0,'en_gb',''),
	(200,'field',87,'en_gb',' hal gatewood 613602 unsplash cfdab44b847432e5ad380789c920cedc small '),
	(200,'field',109,'en_gb',' default '),
	(200,'slug',0,'en_gb',''),
	(1,'username',0,'en_gb',' support statik be '),
	(1,'firstname',0,'en_gb',''),
	(1,'lastname',0,'en_gb',''),
	(1,'fullname',0,'en_gb',''),
	(1,'email',0,'en_gb',' support statik be '),
	(1,'slug',0,'en_gb',''),
	(75,'slug',0,'en_be',''),
	(76,'field',87,'en_be',' kelly sikkema 411622 unsplash '),
	(76,'slug',0,'en_be',''),
	(77,'field',95,'en_be',' lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum '),
	(75,'field',88,'en_be',' lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum '),
	(81,'field',105,'en_be',' left '),
	(81,'slug',0,'en_be',''),
	(82,'field',92,'en_be',' formulier title '),
	(82,'field',93,'en_be',' lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum '),
	(82,'field',94,'en_be',' contact form '),
	(82,'slug',0,'en_be',''),
	(89,'filename',0,'en_be',' lilly rum 342740 unsplash jpg '),
	(89,'extension',0,'en_be',' jpg '),
	(89,'kind',0,'en_be',' image '),
	(89,'slug',0,'en_be',' lilly rum 342740 unsplash '),
	(89,'title',0,'en_be',' lilly rum 342740 unsplash '),
	(89,'filename',0,'nl_be',' lilly rum 342740 unsplash jpg '),
	(89,'extension',0,'nl_be',' jpg '),
	(89,'kind',0,'nl_be',' image '),
	(89,'slug',0,'nl_be',' lilly rum 342740 unsplash '),
	(89,'title',0,'nl_be',' lilly rum 342740 unsplash '),
	(90,'filename',0,'en_be',' kelly sikkema 411622 unsplash jpg '),
	(90,'extension',0,'en_be',' jpg '),
	(90,'kind',0,'en_be',' image '),
	(90,'slug',0,'en_be',' kelly sikkema 411622 unsplash '),
	(90,'title',0,'en_be',' kelly sikkema 411622 unsplash '),
	(90,'filename',0,'nl_be',' kelly sikkema 411622 unsplash jpg '),
	(90,'extension',0,'nl_be',' jpg '),
	(90,'kind',0,'nl_be',' image '),
	(90,'slug',0,'nl_be',' kelly sikkema 411622 unsplash '),
	(90,'title',0,'nl_be',' kelly sikkema 411622 unsplash '),
	(91,'filename',0,'en_be',' jesus kiteque 224069 unsplash jpg '),
	(91,'extension',0,'en_be',' jpg '),
	(91,'kind',0,'en_be',' image '),
	(91,'slug',0,'en_be',' jesus kiteque 224069 unsplash '),
	(91,'title',0,'en_be',' jesus kiteque 224069 unsplash '),
	(91,'filename',0,'nl_be',' jesus kiteque 224069 unsplash jpg '),
	(91,'extension',0,'nl_be',' jpg '),
	(91,'kind',0,'nl_be',' image '),
	(91,'slug',0,'nl_be',' jesus kiteque 224069 unsplash '),
	(91,'title',0,'nl_be',' jesus kiteque 224069 unsplash '),
	(92,'filename',0,'en_be',' markus spiske 422788 unsplash jpg '),
	(92,'extension',0,'en_be',' jpg '),
	(92,'kind',0,'en_be',' image '),
	(92,'slug',0,'en_be',' markus spiske 422788 unsplash '),
	(92,'title',0,'en_be',' markus spiske 422788 unsplash '),
	(92,'filename',0,'nl_be',' markus spiske 422788 unsplash jpg '),
	(92,'extension',0,'nl_be',' jpg '),
	(92,'kind',0,'nl_be',' image '),
	(92,'slug',0,'nl_be',' markus spiske 422788 unsplash '),
	(92,'title',0,'nl_be',' markus spiske 422788 unsplash '),
	(17,'field',86,'en_be',' lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum lilly rum 342740 unsplash lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum tusseltitellorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum contact form formulier title lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum '),
	(100,'filename',0,'en_be',' lege_pdf_2017 pdf '),
	(100,'extension',0,'en_be',' pdf '),
	(100,'kind',0,'en_be',' pdf '),
	(100,'slug',0,'en_be',' lege pdf 2017 '),
	(100,'title',0,'en_be',' lege pdf 2017 '),
	(100,'filename',0,'nl_be',' lege_pdf_2017 pdf '),
	(100,'extension',0,'nl_be',' pdf '),
	(100,'kind',0,'nl_be',' pdf '),
	(100,'slug',0,'nl_be',' lege pdf 2017 '),
	(100,'title',0,'nl_be',' lege pdf 2017 '),
	(17,'field',85,'en_be',' example page '),
	(101,'field',88,'en_be',' lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum '),
	(101,'slug',0,'en_be',''),
	(102,'field',87,'en_be',' lilly rum 342740 unsplash '),
	(102,'slug',0,'en_be',''),
	(103,'field',102,'en_be',' lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum '),
	(103,'field',103,'en_be',' lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum '),
	(103,'field',104,'en_be',' lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum '),
	(103,'slug',0,'en_be',''),
	(104,'field',89,'en_be',' lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum tusseltitellorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum '),
	(104,'field',90,'en_be',' lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum '),
	(104,'slug',0,'en_be',''),
	(105,'field',92,'en_be',' formulier title '),
	(105,'field',93,'en_be',' lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum '),
	(105,'field',94,'en_be',' contact form '),
	(105,'slug',0,'en_be',''),
	(53,'field',86,'nl_be',' lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum '),
	(53,'field',85,'nl_be',' example news '),
	(113,'field',88,'nl_be',' lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum '),
	(113,'slug',0,'nl_be',''),
	(7,'field',86,'en_be',''),
	(7,'field',43,'en_be',''),
	(7,'field',82,'en_be',''),
	(7,'field',85,'en_be',' nieuws craft base install '),
	(7,'field',86,'nl_be',''),
	(7,'field',43,'nl_be',''),
	(7,'field',82,'nl_be',''),
	(7,'field',85,'nl_be',' nieuws '),
	(7,'slug',0,'nl_be',' nieuws overzicht '),
	(7,'title',0,'nl_be',' nieuws '),
	(17,'field',86,'nl_be',' dark lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum markus spiske 422788 unsplash lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in contact form formulier title '),
	(17,'field',85,'nl_be',' example page '),
	(114,'field',88,'nl_be',' lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum '),
	(114,'slug',0,'nl_be',''),
	(115,'field',87,'nl_be',' markus spiske 422788 unsplash '),
	(115,'slug',0,'nl_be',''),
	(116,'field',89,'nl_be',' lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum '),
	(116,'field',90,'nl_be',' lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in '),
	(116,'slug',0,'nl_be',''),
	(117,'field',92,'nl_be',' formulier title '),
	(117,'field',93,'nl_be',''),
	(117,'field',94,'nl_be',' contact form '),
	(117,'slug',0,'nl_be',''),
	(2,'field',86,'en_be',''),
	(2,'field',43,'en_be',''),
	(2,'field',82,'en_be',''),
	(2,'field',85,'en_be',' neutral '),
	(2,'field',13,'nl_be',' daniel hansen 252817 unsplash hero title lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim light '),
	(2,'field',86,'nl_be',''),
	(2,'field',43,'nl_be',''),
	(2,'field',82,'nl_be',''),
	(2,'field',85,'nl_be',' home '),
	(124,'filename',0,'nl_be',' rawpixel 395554 unsplash jpg '),
	(124,'extension',0,'nl_be',' jpg '),
	(124,'kind',0,'nl_be',' image '),
	(124,'slug',0,'nl_be',' rawpixel 395554 unsplash '),
	(124,'title',0,'nl_be',' rawpixel 395554 unsplash '),
	(124,'filename',0,'en_be',' rawpixel 395554 unsplash jpg '),
	(124,'extension',0,'en_be',' jpg '),
	(124,'kind',0,'en_be',' image '),
	(124,'slug',0,'en_be',' rawpixel 395554 unsplash '),
	(124,'title',0,'en_be',' rawpixel 395554 unsplash '),
	(125,'filename',0,'nl_be',' bruno van der kraan 554245 unsplash jpg '),
	(125,'extension',0,'nl_be',' jpg '),
	(125,'kind',0,'nl_be',' image '),
	(125,'slug',0,'nl_be',' bruno van der kraan 554245 unsplash '),
	(125,'title',0,'nl_be',' bruno van der kraan 554245 unsplash '),
	(125,'filename',0,'en_be',' bruno van der kraan 554245 unsplash jpg '),
	(125,'extension',0,'en_be',' jpg '),
	(125,'kind',0,'en_be',' image '),
	(125,'slug',0,'en_be',' bruno van der kraan 554245 unsplash '),
	(125,'title',0,'en_be',' bruno van der kraan 554245 unsplash '),
	(126,'filename',0,'nl_be',' brad neathery 303623 unsplash jpg '),
	(126,'extension',0,'nl_be',' jpg '),
	(126,'kind',0,'nl_be',' image '),
	(126,'slug',0,'nl_be',' brad neathery 303623 unsplash '),
	(126,'title',0,'nl_be',' brad neathery 303623 unsplash '),
	(126,'filename',0,'en_be',' brad neathery 303623 unsplash jpg '),
	(126,'extension',0,'en_be',' jpg '),
	(126,'kind',0,'en_be',' image '),
	(126,'slug',0,'en_be',' brad neathery 303623 unsplash '),
	(126,'title',0,'en_be',' brad neathery 303623 unsplash '),
	(127,'filename',0,'nl_be',' hal gatewood 613602 unsplash jpg '),
	(127,'extension',0,'nl_be',' jpg '),
	(127,'kind',0,'nl_be',' image '),
	(127,'slug',0,'nl_be',' hal gatewood 613602 unsplash '),
	(127,'title',0,'nl_be',' hal gatewood 613602 unsplash '),
	(127,'filename',0,'en_be',' hal gatewood 613602 unsplash jpg '),
	(127,'extension',0,'en_be',' jpg '),
	(127,'kind',0,'en_be',' image '),
	(127,'slug',0,'en_be',' hal gatewood 613602 unsplash '),
	(127,'title',0,'en_be',' hal gatewood 613602 unsplash '),
	(132,'title',0,'nl_be',' terms conditions '),
	(132,'slug',0,'nl_be',' terms conditions '),
	(12,'field',86,'nl_be',''),
	(12,'field',85,'nl_be',' neutral '),
	(12,'slug',0,'nl_be',' privacy '),
	(12,'title',0,'nl_be',' privacy '),
	(131,'slug',0,'nl_be',' cookie policy '),
	(131,'title',0,'nl_be',' cookie policy '),
	(131,'slug',0,'en_be',' cookie policy '),
	(131,'title',0,'en_be',' cookie policy '),
	(129,'filename',0,'nl_be',' rawpixel 660716 unsplash jpg '),
	(129,'extension',0,'nl_be',' jpg '),
	(129,'kind',0,'nl_be',' image '),
	(129,'slug',0,'nl_be',' rawpixel 660716 unsplash '),
	(129,'title',0,'nl_be',' rawpixel 660716 unsplash '),
	(129,'filename',0,'en_be',' rawpixel 660716 unsplash jpg '),
	(129,'extension',0,'en_be',' jpg '),
	(129,'kind',0,'en_be',' image '),
	(129,'slug',0,'en_be',' rawpixel 660716 unsplash '),
	(129,'title',0,'en_be',' rawpixel 660716 unsplash '),
	(130,'filename',0,'nl_be',' daniel hansen 252817 unsplash jpg '),
	(130,'extension',0,'nl_be',' jpg '),
	(130,'kind',0,'nl_be',' image '),
	(130,'slug',0,'nl_be',' daniel hansen 252817 unsplash '),
	(130,'title',0,'nl_be',' daniel hansen 252817 unsplash '),
	(130,'filename',0,'en_be',' daniel hansen 252817 unsplash jpg '),
	(130,'extension',0,'en_be',' jpg '),
	(130,'kind',0,'en_be',' image '),
	(130,'slug',0,'en_be',' daniel hansen 252817 unsplash '),
	(130,'title',0,'en_be',' daniel hansen 252817 unsplash '),
	(132,'slug',0,'en_be',' terms conditions '),
	(132,'title',0,'en_be',' terms conditions '),
	(133,'field',14,'nl_be',' daniel hansen 252817 unsplash '),
	(133,'field',17,'nl_be',' light '),
	(133,'field',15,'nl_be',' hero title '),
	(133,'field',16,'nl_be',' lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim '),
	(133,'slug',0,'nl_be',''),
	(55,'field',41,'nl_be',' contactpagina '),
	(55,'field',86,'nl_be',' default lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum '),
	(55,'field',82,'nl_be',' lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua '),
	(55,'field',42,'nl_be',' daniel hansen 252817 unsplash '),
	(55,'field',43,'nl_be',''),
	(55,'field',85,'nl_be',' contact '),
	(134,'field',88,'nl_be',' lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum '),
	(134,'field',106,'nl_be',''),
	(134,'slug',0,'nl_be',''),
	(147,'slug',0,'nl_be',' content builder '),
	(147,'title',0,'en_be',' content builder '),
	(53,'field',43,'en_gb',' example overview title '),
	(147,'title',0,'nl_be',' content builder '),
	(147,'slug',0,'en_be',' content builder '),
	(113,'field',108,'nl_be',''),
	(115,'field',109,'nl_be',''),
	(116,'field',111,'nl_be',''),
	(117,'field',115,'nl_be',''),
	(7,'field',41,'en_gb',''),
	(7,'field',86,'en_gb',''),
	(7,'field',43,'en_gb',''),
	(7,'field',82,'en_gb',''),
	(7,'field',85,'en_gb',' nieuws '),
	(7,'slug',0,'en_gb',' nieuws overzicht '),
	(7,'title',0,'en_gb',' blog '),
	(53,'field',41,'en_gb',' test contentje '),
	(53,'field',86,'en_gb',' default lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum '),
	(113,'field',106,'nl_be',''),
	(195,'field',116,'nl_be',' default '),
	(195,'slug',0,'nl_be',''),
	(196,'field',101,'nl_be',' home contact focus point test '),
	(196,'field',116,'nl_be',' light '),
	(196,'slug',0,'nl_be',''),
	(197,'field',101,'nl_be',' home contact nieuws '),
	(197,'field',116,'nl_be',' dark '),
	(197,'slug',0,'nl_be',''),
	(134,'field',108,'nl_be',' default '),
	(11,'field',52,'en_gb',''),
	(11,'field',53,'en_gb',''),
	(11,'field',54,'en_gb',''),
	(11,'field',55,'en_gb',''),
	(11,'field',56,'en_gb',''),
	(13,'field',86,'nl_be',''),
	(13,'slug',0,'nl_be',' pagina niet gevonden '),
	(13,'title',0,'nl_be',' pagina niet gevonden '),
	(131,'field',41,'nl_be',''),
	(131,'field',86,'nl_be',''),
	(132,'field',41,'nl_be',''),
	(132,'field',86,'nl_be',''),
	(114,'field',106,'nl_be',''),
	(114,'field',108,'nl_be',' dark '),
	(149,'field',109,'nl_be',' dark '),
	(147,'field',41,'nl_be',''),
	(147,'field',86,'nl_be',' light entry 131 btn call to action test nl_be entry 12 btn btn secondary en nog een cta nl_be title lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum dark hal gatewood 613602 unsplash cfdab44b847432e5ad380789c920cedc small light lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum default custom https www statik be btn btn ghost statik _blank nl_be entry 53 btn nieuwsbericht nl_be right lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum https www youtube com watch v=zgdbp5c74su dark entry 2 btn test nl_be daniel hansen 252817 unsplash left lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum light https www youtube com watch v=q0cbn8sfihy light contact form formulier title hier lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum light entry 163 btn knop 1 nl_be custom http www statik be btn btn secondary website statik _blank nl_be asset 100 btn btn ghost dowload mij _blank nl_be email kirsten statik be link link ext mail mij nl_be tel 0485501820 link bel mij nl_be kir test de contentbuilder heading 3 heading 4 heading 5 lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore euduis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu duis aute irure dolor in reprehenderit in voluptatevelit esse cillum dolore euduis aute irure dolor in reprehenderit in voluptatevelit esse cillum dolore eufugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum light lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum dark lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum default abbie bernet 527251 unsplash default entry 147 btn nl_be asset 100 btn btn secondary _blank nl_be abbie bernet 527251 unsplash left ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum light abbie bernet 527251 unsplash right lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum dark abbie bernet 527251 unsplash left lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum default https vimeo com 70591644 default left lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum https vimeo com 70591644 light asset 100 btn btn secondary nl_be left lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum https vimeo com 70591644 dark right lorem ipsum dolor sit amet consectetur adipiscing eli sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum https vimeo com 70591644 default contact form contactformulier lorem ipsum dolor sit amet consectetur adipiscing eli sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum light contact form magazine formulier lorem ipsum dolor sit amet consectetur adipiscing eli sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum dark contact form titel lorem ipsum dolor sit amet consectetur adipiscing eli sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum default cookie policy privacy home contact light home contact focus point test dark home contact nieuws '),
	(147,'field',82,'nl_be',''),
	(147,'field',42,'nl_be',''),
	(147,'field',43,'nl_be',''),
	(147,'field',85,'nl_be',' content builder '),
	(148,'field',88,'nl_be',' title lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum '),
	(148,'field',106,'nl_be',' entry 131 btn call to action test nl_be entry 12 btn btn secondary en nog een cta nl_be '),
	(148,'field',108,'nl_be',' light '),
	(148,'slug',0,'nl_be',''),
	(149,'field',87,'nl_be',' hal gatewood 613602 unsplash cfdab44b847432e5ad380789c920cedc small '),
	(149,'slug',0,'nl_be',''),
	(150,'filename',0,'nl_be',' hal gatewood 613602 unsplash_cfdab44b847432e5ad380789c920cedc_small jpg '),
	(150,'extension',0,'nl_be',' jpg '),
	(150,'kind',0,'nl_be',' image '),
	(150,'slug',0,'nl_be',' hal gatewood 613602 unsplash cfdab44b847432e5ad380789c920cedc small '),
	(150,'title',0,'nl_be',' hal gatewood 613602 unsplash cfdab44b847432e5ad380789c920cedc small '),
	(150,'filename',0,'en_be',' hal gatewood 613602 unsplash_cfdab44b847432e5ad380789c920cedc_small jpg '),
	(150,'extension',0,'en_be',' jpg '),
	(150,'kind',0,'en_be',' image '),
	(150,'slug',0,'en_be',' hal gatewood 613602 unsplash cfdab44b847432e5ad380789c920cedc small '),
	(150,'title',0,'en_be',' hal gatewood 613602 unsplash cfdab44b847432e5ad380789c920cedc small '),
	(151,'field',89,'nl_be',' lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum '),
	(151,'field',90,'nl_be',' lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum '),
	(151,'field',111,'nl_be',' light '),
	(151,'slug',0,'nl_be',''),
	(152,'field',95,'nl_be',' lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum '),
	(152,'field',96,'nl_be',' daniel hansen 252817 unsplash '),
	(152,'field',97,'nl_be',' left '),
	(152,'field',110,'nl_be',' dark '),
	(152,'slug',0,'nl_be',''),
	(153,'field',107,'nl_be',' entry 131 btn call to action test nl_be '),
	(153,'slug',0,'nl_be',''),
	(154,'field',107,'nl_be',' entry 12 btn btn secondary en nog een cta nl_be '),
	(154,'slug',0,'nl_be',''),
	(155,'field',98,'nl_be',' https www youtube com watch v=q0cbn8sfihy '),
	(155,'field',113,'nl_be',' light '),
	(155,'slug',0,'nl_be',''),
	(152,'field',117,'nl_be',' entry 2 btn test nl_be '),
	(156,'field',118,'nl_be',' entry 2 btn test nl_be '),
	(156,'slug',0,'nl_be',''),
	(157,'field',99,'nl_be',' lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum '),
	(157,'field',100,'nl_be',' https www youtube com watch v=zgdbp5c74su '),
	(157,'field',105,'nl_be',' right '),
	(157,'field',114,'nl_be',' default '),
	(157,'field',119,'nl_be',' custom https www statik be btn btn ghost statik _blank nl_be entry 53 btn nieuwsbericht nl_be '),
	(157,'slug',0,'nl_be',''),
	(158,'field',120,'nl_be',' custom https www statik be btn btn ghost statik _blank nl_be '),
	(158,'slug',0,'nl_be',''),
	(159,'field',120,'nl_be',' entry 53 btn nieuwsbericht nl_be '),
	(159,'slug',0,'nl_be',''),
	(160,'field',92,'nl_be',' formulier title hier '),
	(160,'field',93,'nl_be',' lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum '),
	(160,'field',94,'nl_be',' contact form '),
	(160,'field',115,'nl_be',' light '),
	(160,'slug',0,'nl_be',''),
	(161,'field_8',0,'nl_be',''),
	(161,'field_25',0,'nl_be',''),
	(161,'field_9',0,'nl_be',''),
	(161,'field_7',0,'nl_be',''),
	(161,'field_24',0,'nl_be',''),
	(161,'field_3',0,'nl_be',' jan statik be '),
	(161,'field_1',0,'nl_be',' jan '),
	(161,'field_28',0,'nl_be',' nl_be '),
	(161,'field_2',0,'nl_be',' henckens '),
	(161,'field_12',0,'nl_be',' lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum '),
	(161,'field_26',0,'nl_be',' example page '),
	(161,'field_5',0,'nl_be',''),
	(161,'field_16',0,'nl_be',''),
	(161,'field_17',0,'nl_be',' yes '),
	(161,'field_4',0,'nl_be',''),
	(161,'field_11',0,'nl_be',''),
	(161,'slug',0,'nl_be',' 2018 06 07 151543 '),
	(161,'title',0,'nl_be',' 2018 06 07 15 15 43 '),
	(198,'field',41,'en_gb',' lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua '),
	(113,'field',106,'en_gb',''),
	(113,'field',88,'en_gb',' lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum '),
	(113,'slug',0,'en_gb',''),
	(165,'field',88,'nl_be',' kir test de contentbuilder heading 3 heading 4 heading 5 lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore euduis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu duis aute irure dolor in reprehenderit in voluptatevelit esse cillum dolore euduis aute irure dolor in reprehenderit in voluptatevelit esse cillum dolore eufugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum '),
	(165,'field',106,'nl_be',' entry 163 btn knop 1 nl_be custom http www statik be btn btn secondary website statik _blank nl_be asset 100 btn btn ghost dowload mij _blank nl_be email kirsten statik be link link ext mail mij nl_be tel 0485501820 link bel mij nl_be '),
	(165,'field',108,'nl_be',' light '),
	(165,'slug',0,'nl_be',''),
	(166,'field',107,'nl_be',' entry 163 btn knop 1 nl_be '),
	(166,'slug',0,'nl_be',''),
	(167,'field',107,'nl_be',' custom http www statik be btn btn secondary website statik _blank nl_be '),
	(167,'slug',0,'nl_be',''),
	(168,'field',107,'nl_be',' asset 100 btn btn ghost dowload mij _blank nl_be '),
	(168,'slug',0,'nl_be',''),
	(169,'field',107,'nl_be',' email kirsten statik be link link ext mail mij nl_be '),
	(169,'slug',0,'nl_be',''),
	(170,'field',107,'nl_be',' tel 0485501820 link bel mij nl_be '),
	(170,'slug',0,'nl_be',''),
	(171,'field',89,'nl_be',' lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum '),
	(171,'field',90,'nl_be',' lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum '),
	(171,'field',111,'nl_be',' light '),
	(171,'slug',0,'nl_be',''),
	(172,'field',102,'nl_be',' lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum '),
	(172,'field',103,'nl_be',' lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua '),
	(172,'field',104,'nl_be',' ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum '),
	(172,'field',112,'nl_be',' dark '),
	(172,'slug',0,'nl_be',''),
	(174,'field',87,'nl_be',' abbie bernet 527251 unsplash '),
	(174,'field',109,'nl_be',' default '),
	(174,'slug',0,'nl_be',''),
	(53,'title',0,'en_gb',' example blog '),
	(53,'slug',0,'en_gb',' example blog '),
	(53,'field',85,'en_gb',' example news '),
	(177,'field',95,'nl_be',' ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum '),
	(177,'field',96,'nl_be',' abbie bernet 527251 unsplash '),
	(177,'field',97,'nl_be',' left '),
	(177,'field',110,'nl_be',' default '),
	(177,'field',117,'nl_be',' entry 147 btn nl_be asset 100 btn btn secondary _blank nl_be '),
	(177,'slug',0,'nl_be',''),
	(178,'field',118,'nl_be',' entry 147 btn nl_be '),
	(178,'slug',0,'nl_be',''),
	(179,'field',95,'nl_be',' lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum '),
	(179,'field',96,'nl_be',' abbie bernet 527251 unsplash '),
	(179,'field',97,'nl_be',' right '),
	(179,'field',110,'nl_be',' light '),
	(179,'field',117,'nl_be',''),
	(179,'slug',0,'nl_be',''),
	(180,'field',95,'nl_be',' lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum '),
	(180,'field',96,'nl_be',' abbie bernet 527251 unsplash '),
	(180,'field',97,'nl_be',' left '),
	(180,'field',110,'nl_be',' dark '),
	(180,'field',117,'nl_be',''),
	(180,'slug',0,'nl_be',''),
	(11,'field',50,'en_gb',''),
	(195,'field',101,'nl_be',' cookie policy privacy home contact '),
	(181,'field',118,'nl_be',' asset 100 btn btn secondary _blank nl_be '),
	(181,'slug',0,'nl_be',''),
	(11,'slug',0,'nl_be',''),
	(8,'field',42,'en_gb',''),
	(8,'slug',0,'nl_be',''),
	(183,'field',98,'nl_be',' https vimeo com 70591644 '),
	(183,'field',113,'nl_be',' default '),
	(183,'slug',0,'nl_be',''),
	(53,'field',42,'en_gb',' dose media 481603 unsplash '),
	(53,'field',82,'en_gb',''),
	(186,'field',99,'nl_be',' lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum '),
	(186,'field',100,'nl_be',' https vimeo com 70591644 '),
	(186,'field',105,'nl_be',' left '),
	(186,'field',114,'nl_be',' default '),
	(186,'field',119,'nl_be',''),
	(186,'slug',0,'nl_be',''),
	(187,'field',99,'nl_be',' lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum '),
	(187,'field',100,'nl_be',' https vimeo com 70591644 '),
	(187,'field',105,'nl_be',' left '),
	(187,'field',114,'nl_be',' light '),
	(187,'field',119,'nl_be',' asset 100 btn btn secondary nl_be '),
	(187,'slug',0,'nl_be',''),
	(53,'field',82,'nl_be',''),
	(189,'field',120,'nl_be',' asset 100 btn btn secondary nl_be '),
	(189,'slug',0,'nl_be',''),
	(190,'field',99,'nl_be',' lorem ipsum dolor sit amet consectetur adipiscing eli sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum '),
	(190,'field',100,'nl_be',' https vimeo com 70591644 '),
	(190,'field',105,'nl_be',' right '),
	(190,'field',114,'nl_be',' dark '),
	(190,'field',119,'nl_be',''),
	(190,'slug',0,'nl_be',''),
	(192,'field',92,'nl_be',' contactformulier '),
	(192,'field',93,'nl_be',' lorem ipsum dolor sit amet consectetur adipiscing eli sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum '),
	(192,'field',94,'nl_be',' contact form '),
	(192,'field',115,'nl_be',' default '),
	(192,'slug',0,'nl_be',''),
	(193,'field',92,'nl_be',' magazine formulier '),
	(193,'field',93,'nl_be',' lorem ipsum dolor sit amet consectetur adipiscing eli sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum '),
	(193,'field',94,'nl_be',' contact form '),
	(193,'field',115,'nl_be',' light '),
	(193,'slug',0,'nl_be',''),
	(194,'field',92,'nl_be',' titel '),
	(194,'field',93,'nl_be',' lorem ipsum dolor sit amet consectetur adipiscing eli sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum '),
	(194,'field',94,'nl_be',' contact form '),
	(194,'field',115,'nl_be',' dark '),
	(194,'slug',0,'nl_be',''),
	(198,'field',43,'en_gb',''),
	(198,'field',86,'en_gb',' default lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ut enim ad minim veniam quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur excepteur sint occaecat cupidatat non proident sunt in culpa qui officia deserunt mollit anim id est laborum default hal gatewood 613602 unsplash cfdab44b847432e5ad380789c920cedc small '),
	(113,'field',108,'en_gb',' default '),
	(201,'field',82,'en_gb',''),
	(201,'field',42,'en_gb',''),
	(201,'field',43,'en_gb',''),
	(201,'field',85,'en_gb',' historiek smilewise neutral '),
	(201,'slug',0,'en_gb',' historiek '),
	(201,'title',0,'en_gb',' historiek '),
	(202,'field',82,'en_gb',''),
	(202,'field',42,'en_gb',''),
	(202,'field',43,'en_gb',''),
	(202,'field',85,'en_gb',' over abbeyfield smilewise neutral '),
	(202,'slug',0,'en_gb',' over abbeyfield '),
	(202,'title',0,'en_gb',' over abbeyfield '),
	(203,'field',82,'en_gb',''),
	(203,'field',42,'en_gb',''),
	(203,'field',43,'en_gb',''),
	(203,'field',85,'en_gb',' visie missie smilewise neutral '),
	(203,'slug',0,'en_gb',' visie missie '),
	(203,'title',0,'en_gb',' visie missie '),
	(204,'field',82,'en_gb',''),
	(204,'field',42,'en_gb',''),
	(204,'field',43,'en_gb',''),
	(204,'field',85,'en_gb',' werking smilewise neutral '),
	(204,'slug',0,'en_gb',' werking '),
	(204,'title',0,'en_gb',' werking '),
	(205,'field',82,'en_gb',''),
	(205,'field',42,'en_gb',''),
	(205,'field',43,'en_gb',''),
	(205,'field',85,'en_gb',' team smilewise neutral '),
	(205,'slug',0,'en_gb',' team '),
	(205,'title',0,'en_gb',' team '),
	(206,'field',82,'en_gb',''),
	(206,'field',42,'en_gb',''),
	(206,'field',43,'en_gb',''),
	(206,'field',85,'en_gb',' doe mee smilewise neutral '),
	(206,'slug',0,'en_gb',' doe mee '),
	(206,'title',0,'en_gb',' doe mee '),
	(207,'field',82,'en_gb',''),
	(207,'field',42,'en_gb',''),
	(207,'field',43,'en_gb',''),
	(207,'field',85,'en_gb',' vrijwilligers gezocht smilewise neutral '),
	(207,'slug',0,'en_gb',' vrijwilligers gezocht '),
	(207,'title',0,'en_gb',' vrijwilligers gezocht ');

/*!40000 ALTER TABLE `craft_searchindex` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_sections
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_sections`;

CREATE TABLE `craft_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `structureId` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('single','channel','structure') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'channel',
  `hasUrls` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `template` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `enableVersioning` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_sections_name_unq_idx` (`name`),
  UNIQUE KEY `craft_sections_handle_unq_idx` (`handle`),
  KEY `craft_sections_structureId_fk` (`structureId`),
  CONSTRAINT `craft_sections_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_sections` WRITE;
/*!40000 ALTER TABLE `craft_sections` DISABLE KEYS */;

INSERT INTO `craft_sections` (`id`, `structureId`, `name`, `handle`, `type`, `hasUrls`, `template`, `enableVersioning`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,NULL,'Home','home','single',1,'index',1,'2017-03-09 09:09:45','2018-05-31 09:17:51','790cdae6-305a-4001-914a-76bb793311a2'),
	(3,NULL,'Blog','blog','channel',1,'_blog/_entry',1,'2017-07-03 07:11:18','2018-06-14 06:56:18','20aa8a16-252f-43f6-a58f-0fe5f3ad9c63'),
	(4,NULL,'Blog overview','blogOverview','single',1,'_blog/_index',1,'2017-07-03 07:13:09','2018-06-14 06:55:58','46970ed0-0f05-46fb-aa1d-1ad7f3f8e2ac'),
	(5,NULL,'Privacy','privacy','single',1,'_contentPage',1,'2017-07-04 08:40:55','2018-06-01 07:04:01','9dabe019-254b-446d-90e3-f5d238be3de5'),
	(6,NULL,'Pagina niet gevonden','pageNotFound','single',1,'404',1,'2017-07-04 09:21:57','2017-08-20 08:35:57','6878c189-d05a-49dd-9b21-40945232b2a3'),
	(7,1,'Pages','pages','structure',1,'_contentPage',1,'2017-08-18 12:43:31','2017-08-18 12:45:14','2d62e402-3c23-4b63-b62d-ae77978f71e6'),
	(8,NULL,'Contact','contact','single',1,'_contact',1,'2017-12-19 19:58:28','2017-12-19 19:58:28','08bc6b89-bbe4-41cc-a4d3-488190b5abe3'),
	(9,NULL,'Cookie Policy','cookiePolicy','single',1,'_contentPage',1,'2018-06-01 07:04:25','2018-06-01 07:04:25','fa54e323-b4d6-4f58-89bc-1abd4e3e5c70'),
	(10,NULL,'Terms & conditions','termsConditions','single',1,'_contentPage',1,'2018-06-01 07:05:45','2018-06-01 07:05:45','80de49e2-59a6-44e8-8184-d2eb18e86526'),
	(11,NULL,'Content Builder','contentBuilder','single',1,'_debug',1,'2018-06-06 11:39:32','2018-06-06 11:39:32','a1756abd-f337-4087-9860-daaafcea557a'),
	(12,29,'Over Abbeyfield','overAbbeyfield','structure',1,'over-abbeyfield/_entry',1,'2018-08-02 07:47:14','2018-08-02 07:47:14','d23fab47-22ad-4a05-8cc4-c0c7bc6f1824');

/*!40000 ALTER TABLE `craft_sections` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_sections_i18n
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_sections_i18n`;

CREATE TABLE `craft_sections_i18n` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sectionId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `enabledByDefault` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `urlFormat` text COLLATE utf8_unicode_ci,
  `nestedUrlFormat` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_sections_i18n_sectionId_locale_unq_idx` (`sectionId`,`locale`),
  KEY `craft_sections_i18n_locale_fk` (`locale`),
  CONSTRAINT `craft_sections_i18n_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `craft_sections_i18n_sectionId_fk` FOREIGN KEY (`sectionId`) REFERENCES `craft_sections` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_sections_i18n` WRITE;
/*!40000 ALTER TABLE `craft_sections_i18n` DISABLE KEYS */;

INSERT INTO `craft_sections_i18n` (`id`, `sectionId`, `locale`, `enabledByDefault`, `urlFormat`, `nestedUrlFormat`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(8,7,'en_gb',1,'{slug}','{parent.uri}/{slug}','2017-08-18 12:43:31','2018-06-14 06:54:57','6148ab53-b703-4cf8-87f5-7a0a72cd24c8'),
	(9,5,'en_gb',1,'privacy',NULL,'2017-08-20 08:35:51','2018-06-14 06:54:57','298bdc94-bd53-4ff3-b282-e33306143c30'),
	(10,6,'en_gb',1,'pagina-niet-gevonden',NULL,'2017-08-20 08:35:57','2018-06-14 06:54:57','fe218aea-81d3-4273-8f5f-66a2bb3d81f5'),
	(11,4,'en_gb',1,'blog',NULL,'2017-08-20 08:36:07','2018-06-14 06:55:58','639baa2f-e816-465e-95fd-5ebaee88180c'),
	(12,3,'en_gb',1,'blog/{slug}',NULL,'2017-08-20 08:36:12','2018-06-14 06:56:18','1f29acca-1002-407b-8fe7-11ff1e0eea8c'),
	(14,8,'en_gb',1,'contact',NULL,'2017-12-19 19:58:28','2018-06-14 06:54:57','3cb35237-dddf-4072-a927-9bff97ae4772'),
	(15,1,'en_gb',1,'__home__',NULL,'2018-05-31 09:17:51','2018-06-14 06:54:57','316af6dc-0d1d-484c-845e-009eb88fc089'),
	(16,9,'en_gb',1,'cookie-policy',NULL,'2018-06-01 07:04:25','2018-06-14 06:54:57','478a1500-5bd1-45e0-b677-a8e35a490c9e'),
	(18,10,'en_gb',1,'algemene-voorwaarden',NULL,'2018-06-01 07:05:45','2018-06-14 06:54:57','63d8f3d4-bf5b-4310-b8be-9c2dc836b8d2'),
	(20,11,'en_gb',1,'debug',NULL,'2018-06-06 11:39:32','2018-06-14 06:54:57','9cc4654d-7618-42b2-982e-cf08d642f6fb'),
	(21,12,'en_gb',1,'over-abbeyfield/{slug}','{parent.uri}/{slug}','2018-08-02 07:47:14','2018-08-02 07:47:14','3f01dcee-c309-4f93-82b8-ccd1ae6cb6b8');

/*!40000 ALTER TABLE `craft_sections_i18n` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_seo
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_seo`;

CREATE TABLE `craft_seo` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`name`),
  UNIQUE KEY `craft_seo_name_unq_idx` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_seo_redirects
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_seo_redirects`;

CREATE TABLE `craft_seo_redirects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uri` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `to` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('301','302') COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_seo_sitemaps
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_seo_sitemaps`;

CREATE TABLE `craft_seo_sitemaps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group` enum('sections','categories','customUrls','productTypes') COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `frequency` enum('always','hourly','daily','weekly','monthly','yearly','never') COLLATE utf8_unicode_ci NOT NULL,
  `priority` decimal(11,1) NOT NULL,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_seo_sitemaps` WRITE;
/*!40000 ALTER TABLE `craft_seo_sitemaps` DISABLE KEYS */;

INSERT INTO `craft_seo_sitemaps` (`id`, `group`, `url`, `frequency`, `priority`, `enabled`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'sections','8','weekly',0.5,1,'2018-05-16 13:24:52','2018-05-16 13:25:00','03a74779-5e2f-44bb-a31b-3fa40c567007'),
	(2,'sections','1','weekly',0.5,1,'2018-05-16 13:24:52','2018-05-16 13:25:00','29b63eea-20b4-4513-8773-94ffa97f0737'),
	(3,'sections','3','weekly',0.5,1,'2018-05-16 13:24:52','2018-05-16 13:25:00','ca1206b5-efe4-4553-bd8f-ba7d7807ce02'),
	(4,'sections','4','weekly',0.5,1,'2018-05-16 13:24:52','2018-05-16 13:25:00','8f7f6772-36d4-435a-9f5e-f2ff0dbf4d2d'),
	(5,'sections','7','weekly',0.5,1,'2018-05-16 13:24:52','2018-05-16 13:25:00','3ee686b4-df03-4b6c-9d5d-96396d7f4f6d'),
	(6,'sections','6','weekly',0.5,0,'2018-05-16 13:24:52','2018-05-16 13:25:00','22c7d413-b2f6-463c-8e07-32019120213f'),
	(7,'sections','5','weekly',0.5,1,'2018-05-16 13:24:52','2018-05-16 13:25:00','4c9ec5cd-f33e-4a52-b52c-58f515dc186a');

/*!40000 ALTER TABLE `craft_seo_sitemaps` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_sessions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_sessions`;

CREATE TABLE `craft_sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `token` char(100) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_sessions_uid_idx` (`uid`),
  KEY `craft_sessions_token_idx` (`token`),
  KEY `craft_sessions_dateUpdated_idx` (`dateUpdated`),
  KEY `craft_sessions_userId_fk` (`userId`),
  CONSTRAINT `craft_sessions_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_sessions` WRITE;
/*!40000 ALTER TABLE `craft_sessions` DISABLE KEYS */;

INSERT INTO `craft_sessions` (`id`, `userId`, `token`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(6,1,'fe2cbfe4b0faf89bc0a42a6fe11d3fb1da3f2ee6czozMjoiZDJqTlk5cWZvdGUwTE5rdUJtOTZzcnloTjk1RzVISWEiOw==','2017-04-07 12:16:22','2017-04-07 12:16:22','8c9b6722-de5d-43cd-b2ac-f45b51e8bbf2'),
	(7,1,'13bd56224ac5b34698a4c843f3842c396b2b494cczozMjoiYTloV3gzU2tKeldvUDhVVVo3bUxSaHE4ZmFKUHRKZ1giOw==','2017-05-15 07:53:32','2017-05-15 07:53:32','3b25507e-e598-4c08-8bc8-4d62425f6ba9'),
	(8,1,'2163288b141fe9b93a8f2ca55645aec0c1d60833czozMjoiRHZweVpFdnlGOHpuWG9CTWZLcWNhRVp2OVpiZEZvT34iOw==','2017-05-15 08:05:47','2017-05-15 08:05:47','7f12d111-93d6-4d8d-be5b-cbf20a94f80a'),
	(9,1,'fb584702bf6ed0f0517d0f364351388abdc74d46czozMjoiNTA1dTdfemhTZ3loaXVJY2kwYTVvZXNENzVGNmhKdEIiOw==','2017-06-02 12:32:16','2017-06-02 12:32:16','74d3eb9e-4e40-4440-89cb-9f5fdc18653c'),
	(10,1,'e3095a69ab8e6438e2b54a6c1835eecb389be367czozMjoiQVhkc3ptQlJCRzRNcFZBZUNPUXJ4QlM5VzU0cDNaTzUiOw==','2017-06-12 08:53:15','2017-06-12 08:53:15','f8084cc8-b826-4311-8891-d97bf7973d9a'),
	(11,1,'d9ed7d61760fae667e02cf1f6d26c5e4fdd3a82eczozMjoiOUl0VnFFYVVYVzd6NXVQbzJ1Mm1vMENKMWRWbDNVT0UiOw==','2017-06-12 09:31:31','2017-06-12 09:31:31','ae217535-f861-4524-874f-72d816a39cee'),
	(12,1,'c36eef005d8a1d184b9a381c1af8639da70870d6czozMjoiVjVjSjhnWGI0cnd1c0ducGRoWTZXcGlpflBhRV9Ha2giOw==','2017-06-13 13:55:59','2017-06-13 13:55:59','673f6363-2bfb-4628-9008-c9f7f4497189'),
	(13,1,'6d29f6a40b470b802ffb5552ddd4cf9b1ccf138dczozMjoicEY0aGpDUmhHc351ZTI2ZWNXbzloR1FDZFhZUW1kODEiOw==','2017-06-14 05:42:23','2017-06-14 05:42:23','2dfd8fbc-305d-48a2-9de6-bb49c7926f22'),
	(14,1,'7fe3c4a03ecdb2156fa954f83e178e42b91727fcczozMjoiQmN1NmdFMTNLZlNxQTl6fmV6bHgwYkZWc2JuZzE4V1UiOw==','2017-06-15 19:50:59','2017-06-15 19:50:59','6fa9a8b6-184a-4446-864e-04eb7ebad979'),
	(16,1,'a3e907e1d8b443b1615a82fbdf9590975c4913e6czozMjoiRkVLQTNkVHVVdGgzNW1IalRMMkpoVzRHY0lMa35hNU4iOw==','2017-06-16 11:53:10','2017-06-16 11:53:10','ccebd045-e767-41ed-96b5-5cc2de421a95'),
	(17,1,'439a9b10a33df3fabb8047f74c0539189839b141czozMjoiMzQwUHpWREFnRUpVeDFTQTdJWV9Fb3JUYWFiZDVNTEkiOw==','2017-06-19 14:40:05','2017-06-19 14:40:05','847e9da3-3993-4da7-bed2-4288bda9b4a5'),
	(19,1,'4d9c1d493a71d0746a85f34e35435493cf2f6b5cczozMjoiaG1VWHBBa3JkZEh0eGdLcURwVGM4dU5fTDZrOXVBUmQiOw==','2017-06-26 09:43:22','2017-06-26 09:43:22','4961024d-6e5f-4156-98dc-f91eb8fa2799'),
	(20,1,'66d69a949c0430d50ce504e9576bcf486effa276czozMjoiOHNzZndfN3ZLR1hXbUVNWmtwTnlzUDg5eE1HVUt5dWEiOw==','2017-06-26 12:21:01','2017-06-26 12:21:01','1da24d69-67d7-439a-9429-e0ad715501d0'),
	(21,1,'cc9a3a4816cbb95d7cff28a6ba5244252372b8a7czozMjoieGNqYlowQnlDQmpvbUk0d2VvVjJOaVZPYlluV280ZTMiOw==','2017-06-29 08:35:24','2017-06-29 08:35:24','872cd4c0-e0d9-41e3-9a6c-29a43eca40f7'),
	(22,1,'4f7329f7a5c6bb63aa5eedb99be71a87210ff5c0czozMjoib21ybVZyWWJuU0Z0SThERXJ1SmtpQVd4bzI1NHZyV2wiOw==','2017-06-29 12:38:53','2017-06-29 12:38:53','88db1c87-5dbe-41cc-8836-6440909f2cf0'),
	(23,1,'478a9da3c8d32cd7d055f7baa3e32a9558f6eececzozMjoiU25XalZxa2JTd0hCbzNsakFBMkloN2hYZkcySjg5eUwiOw==','2017-07-02 12:19:51','2017-07-02 12:19:51','1cf09651-857a-4355-ae39-8d6d757b4cc3'),
	(24,1,'391217c7799b8b5a09517e37646a5bde63355979czozMjoidDM3ajhoaDFnRnR4MURxTlk5VXZhWWdHcjNBNHZjRkwiOw==','2017-07-02 14:29:45','2017-07-02 14:29:45','d8a8c6f8-b71a-441b-bb93-031d1a8794af'),
	(25,1,'85b6933c524ab7a82f696d2b831ee1bfea8e5738czozMjoiUXZHS01wUkh0dklUUVZtR3Jld2tBdVdXME9FREk2ZEYiOw==','2017-07-02 15:55:52','2017-07-02 15:55:52','473bbe59-47d0-453f-a926-fc43cc7f3f12'),
	(26,1,'fa715258bbd46ef5d47da2eae78e829f98c6ecbbczozMjoia0d6WmZ+MGFpajJzZWxZZU0xT1lyWndIWDNHQzdZWWUiOw==','2017-07-02 17:48:43','2017-07-02 17:48:43','0a6fca4f-0b36-4de5-81f1-1e421b064529'),
	(27,1,'1aa114427bca5175a60b47085fd149f7c54ec26bczozMjoidXVZUm9Jb3NUd0hXYkpyZ21OeDZhbExQSDFBZGN+ZHoiOw==','2017-07-02 20:13:48','2017-07-02 20:13:48','00c03410-519c-4ab0-92da-f0daf757b610'),
	(28,1,'1663ad94e29302677fde2a671570e465c8a99023czozMjoiaXBvZTRUYXhzVF9wdW5waklfSURCSml6VkRrcGcwTGEiOw==','2017-07-03 07:03:13','2017-07-03 07:03:13','52cac30e-58e5-42d5-b0a2-d1605b7b269f'),
	(29,1,'9173b2970e1dd2fbdd8bd29c925c23e835aa3d32czozMjoiZVlPa0FQY21XT3lad2lKV2Q0X1NwcVdYTWtWMWV3eDciOw==','2017-07-03 10:33:41','2017-07-03 10:33:41','0afa5a49-4174-461f-86cf-ac4cce2706cb'),
	(30,1,'0a4e7e2374bf0991c228c20bf655b216024ec6d2czozMjoibkhMYndmSWdKbmxJMW9KdmlwX1VRSWVHWTlWQl9oZlAiOw==','2017-07-03 11:39:11','2017-07-03 11:39:11','9d8d005a-eb2c-4a74-ae2d-991bb3ec8a27'),
	(31,1,'8003457cb911b52a55a587e1f1191bdd55e43670czozMjoiaEVIdEJuNGNqNEpONTZ2VlVpa0t1aVpOWHg3ZEdyQU8iOw==','2017-07-03 19:23:00','2017-07-03 19:23:00','5d339ec3-0572-4117-9cc0-0ba5bb431767'),
	(32,1,'40b404b516e0f3992aa55e2afe9f99618ec33f80czozMjoibzBiT1lkVzNENW1oTWNzUlJOVWIyenpkTnpseVJ0cVciOw==','2017-07-04 05:29:06','2017-07-04 05:29:06','614d1add-027c-46d4-af99-767aa83e1552'),
	(34,1,'5e14d8f0951cf1f0b2bb4365cc762c57cb796dfcczozMjoiNmdfQUlFZG9SdGZLbVBwYnowTHdYYXVwX3FIdVJ3a1QiOw==','2017-07-04 19:44:26','2017-07-04 19:44:26','c2781e1f-f65e-4f79-8bbc-1966ce831b51'),
	(36,1,'d51bd39c54edab226d32bf7c18c5a2fcce1cf0f4czozMjoiWTZ3eDFHSE5Sd3BVcHNfRVkya1pQR01RZ2d1NU1nOFciOw==','2017-07-04 19:49:47','2017-07-04 19:49:47','b7a2ac88-b2ac-40c2-8000-c9932f13d79e'),
	(38,1,'c3b754dd9e9e3a76fd76b5d2c8b8da99eb8d511cczozMjoiRWtRQTFTVGdmY09PMGNWWF9pfnpUaGwyMkNzaDRoV0UiOw==','2017-07-04 19:50:56','2017-07-04 19:50:56','518d25e6-ff11-428d-9c02-78463bb9709a'),
	(39,1,'144ebd2dbb0636d011ee0a79a20b931d05b2cf82czozMjoiUUxKOVZfZ0lfdkRXN0FpR3hnTkZRODJNZjVNY1QyeDgiOw==','2017-07-05 06:58:39','2017-07-05 06:58:39','6b8fa8a3-c104-4586-8ad1-04f375b3eddb'),
	(40,1,'c7b43cdf60b153a15d8d4a3b68d46efeb2db3742czozMjoiX25RelpKZkdocXRMSkdzNXBYT3lfMUVSZEVwV0d3TFoiOw==','2017-07-05 08:55:20','2017-07-05 08:55:20','b7550d9f-5aec-49ef-b418-f1f07c844f08'),
	(41,1,'45bb5b35f362e143761d2001675d72262d60e637czozMjoiZzBuWHIxR3pJTmRPN0cyam5HWmc4R094bFV5U2RkOEIiOw==','2017-07-06 10:07:28','2017-07-06 10:07:28','aff56046-5cc5-4626-912d-97376c22aa1a'),
	(42,1,'c035c382e751a4b5038c49a2fb974ab89d5207aeczozMjoiVHlUVUY2VzRyVkQyd3F2U2RXOHhkNHhWMDR2R2dfbWIiOw==','2017-07-06 12:41:11','2017-07-06 12:41:11','a6e02b7e-8839-435f-ae17-179345a56493'),
	(43,1,'1878644b4e3ce5c63c419c19b9f985fc6515b8ccczozMjoiQm9wSUFvMHppdHJMZzBLb05GYjJpNGMzdzZLfmd4QX4iOw==','2017-07-28 07:15:22','2017-07-28 07:15:22','78b775af-78d5-4871-9b20-5e7f7e43b8a5'),
	(44,1,'502cf1cd7615959ed54bb6561554c2b001bcf8d3czozMjoiNTQ1X19ZZUhMSW5FMGRxeU5SZDAzendTM3NfWkxOUjYiOw==','2017-08-08 06:20:29','2017-08-08 06:20:29','1c988984-9e17-46db-b6e4-a87df95e7565'),
	(45,1,'d0526a87e68d69e8bcafaa3f96b9412cd5c5e860czozMjoia2xpVGpmWm5UR0l6RHlTUm95eFhiUzhkSEhCQXN2RzAiOw==','2017-08-16 13:33:04','2017-08-16 13:33:04','6aca616a-7afd-49b5-860b-c4d6e126533a'),
	(46,1,'bbdfa2d00f7252181bde8dea6afa0cb4bf8b1997czozMjoicnNFQTZKaXZ0STJ6YUgwdUVuY3pHd2pKZ2lWV3B6Nk8iOw==','2017-08-18 12:05:10','2017-08-18 12:05:10','2366ed57-0e74-46cf-a38e-8192c06e033f'),
	(47,1,'b9d0153a65dc10d50e0ef338f41806cb3602d5a2czozMjoiR3h6MWVobkpSd2x+MDJGYzNPaEN0RDRxUkRCbE9MVE8iOw==','2017-08-18 12:11:03','2017-08-18 12:11:03','f8cafff5-f225-4ced-815f-962bd8d17545'),
	(48,1,'1a0c907b81db9918456a45fd9bffba3f2215977dczozMjoiY0FwTX5pVEJSRH5TbVZ6WXh1aTA5akdIWHlkTWViZnUiOw==','2017-08-18 12:11:06','2017-08-18 12:11:06','bdb0b2b4-eb1d-42de-b65e-81b71cc549cf'),
	(49,1,'f94da8b560f67049f342ef001afb875f180f874bczozMjoielNoMDVtaHRQc3Nod3hESkIzenhxZHQ1NndrRjQwSE8iOw==','2017-08-18 12:11:10','2017-08-18 12:11:10','e1b9eb9b-591f-47f3-a55c-51396deffd0d'),
	(50,1,'8403a69ba4f3a246df1f345d46bc2e7c229055f6czozMjoiV0lNdnQ4aFVieXY2bjZ+TFliN01HNXE3c1NsSVczRkciOw==','2017-08-18 12:11:14','2017-08-18 12:11:14','bceba0a7-4f7f-47f2-ba20-c9dae136bb4f'),
	(51,1,'2ac661b397756bf8dc4ea295d67e351682963bc9czozMjoiSFNfX2hTUzh0VFMwaU90NktmN0VucGVndE5VNWg1RkgiOw==','2017-08-18 12:11:15','2017-08-18 12:11:15','1756c330-7063-468f-a401-7a92fab3cac2'),
	(52,1,'db09b3dd1fbade31c70364a3452bd3a7de31eca1czozMjoiMX40TjFWWHFlcmhxRlFvOUhuZjQwMXJGaVpmbjhGWGciOw==','2017-08-18 12:11:19','2017-08-18 12:11:19','69e10473-0e56-453f-a133-01b9349c25ac'),
	(53,1,'f67dd9485beac33de536f982acf7b6553ee12166czozMjoiV1U3NHpFdEhyaVQ4Yk9JdH43c1JnRXBKTUV4d1hVRDIiOw==','2017-08-18 14:33:20','2017-08-18 14:33:20','dea7671e-6aad-4bc2-b2c1-da8a1597e677'),
	(54,1,'57c7662eb900612045ac349d4bbebc6deb97cf66czozMjoiNHJnazM5WnVSRndoNHlhbENvN0FNWU41MTNGNUROM20iOw==','2017-08-20 08:32:10','2017-08-20 08:32:10','3291f6d3-59d1-4fe4-b9ab-3e86e76641c1'),
	(55,1,'fa90a83885c387ec77aca6486ed8937af01aa195czozMjoiSWZWbmZ+S1p6ejdjM3c2ZHZ0dXZ4RE9JRVUxc1VDZUwiOw==','2017-08-21 08:46:06','2017-08-21 08:46:06','bf79f593-b6d5-4767-b83f-6fc2589c84ce'),
	(56,1,'76e3b9e83c707489f19f386aeec2e09f74be6c55czozMjoiQm1KTm5lbHYweTFXaUdkbWJ5SWE1UlpvTEd4dld5cVciOw==','2017-08-28 08:34:38','2017-08-28 08:34:38','1bcc4bc2-8162-4274-94a5-05ef873e924e'),
	(57,1,'3917301ffe9f60d23b61852aa30f269b3596cacbczozMjoiM01JeU5Wa09SOHpNQlhCZFRKZ0Q5Rm1yQjNtQl9kWXUiOw==','2017-08-31 09:08:03','2017-08-31 09:08:03','2a5f5d28-bc4f-4471-8cfd-815f4fac2e8b'),
	(58,1,'fe6a0d7cbbdca35cebec890f1dafe46f67c3808cczozMjoianlHUzR2VzlUU0dVY015REw4NU5ld09aNFlWc28wY1kiOw==','2017-09-06 12:24:02','2017-09-06 12:24:02','add0385b-262c-4750-96bd-bbb2c22a899e'),
	(59,1,'c3209f5b16ca7b2f47476bbb7f519a8c5746b747czozMjoiejBkS3h3OUp+UndSNElqRUxlcGxEVjFEeVh+dFZLZE0iOw==','2017-09-08 11:46:44','2017-09-08 11:46:44','25df0d8c-1ce5-461d-8d7e-a2ad6bdadb21'),
	(60,1,'cb5013a6695c6c900591c6e3c20aeb4c8fdc0eccczozMjoidlJUaVdaZlNzYWV4Y3F5fjJ3YmZERW5SZlhlQzhYSTkiOw==','2017-09-08 19:52:29','2017-09-08 19:52:29','9a41f1cf-b6b6-4133-85c9-176e471052b2'),
	(61,1,'4627283d949c4dbad7f22f9a69509be192ade6c9czozMjoic3hvQzhpflNFS0lRQkZPSUVGfjdpVVozRllhVk00a2ciOw==','2017-09-09 06:06:21','2017-09-09 06:06:21','25cc9a59-d777-4345-a7b4-589dd57274b4'),
	(62,1,'4c990a1f8fd5ced503019de1b50ad5d6bb5c9984czozMjoidEJ4ZzcxWFgzOUFjRTY5S0VkM05FNXdROU1zQVMyOGQiOw==','2017-09-11 08:00:09','2017-09-11 08:00:09','26e631b0-759a-4b8d-9735-7e0f203da5cb'),
	(63,1,'5ec6e3f1092c0a7df4eb3940e73393d43d6c04d6czozMjoiR0xxbkNNNXJzRDIzbm9tcmllVmt+NX50R0xEdFhZalUiOw==','2017-09-11 10:20:36','2017-09-11 10:20:36','2c41709e-a881-4f69-924d-3524becb8d92'),
	(64,1,'126632784454e90863a84298aed7c32f3005ba7fczozMjoiWFBPdFFrVEdCMHhOSkIxfn55d1p+UVJ4ZkJHQWhiS3giOw==','2017-09-13 10:00:35','2017-09-13 10:00:35','80493fec-8126-4a59-9f6b-f34cb2291f09'),
	(65,1,'10bb16e6ce92cb145e77f1347da83a5ff52e53ecczozMjoiYlFCcDZSZVludUJtS0JKT0RMSGptcWo1N3FORFA3algiOw==','2017-09-13 14:14:19','2017-09-13 14:14:19','4230de7a-ed85-484b-8d80-fc2038febafa'),
	(66,1,'e7449f91249b8caf2a48ab4fafdbebc1bb5a431eczozMjoibzVmUER6Q3hFWE1MZEZKN3ZLOG1vTFVNR0xGbFE1U0EiOw==','2017-09-14 11:56:07','2017-09-14 11:56:07','e2029f5b-fe98-4fa3-a97f-0783f70e2732'),
	(67,1,'99f12dc840477b6f9dec1244fe08eb211d09a4d0czozMjoiaXRGZkw4eFROYnkzREJjfjd2eTVLZ0xqVHJoSEozUEYiOw==','2017-09-18 15:12:04','2017-09-18 15:12:04','b09bb20a-5996-4b25-a919-7cea7386d2fd'),
	(68,1,'9575f6d9916a3ab9ac7e56bffa7be91ba24d2ea9czozMjoiWnNjREVGNlFhR0xyelZPamt0UUdTUlJKWWxnVlJNV2QiOw==','2017-09-25 10:17:14','2017-09-25 10:17:14','d8f5a01c-d3a4-4862-8d9a-957a8ecac651'),
	(69,1,'03dad82b4c3eb2491e9b16c1b5144fde4d43c421czozMjoiN3lXcDQ3M2xxVDgxQkZfYlBlT19JZXA3b0FiYUdTRkEiOw==','2017-10-05 14:12:14','2017-10-05 14:12:14','bd9d0268-09f2-40cf-8f68-1fcc3caffd12'),
	(70,1,'64183a47b51b87e375d556db8fb6904979284787czozMjoiSFRoeGJWSHR2aDVtb19ZblRwVEg1VDMzNGF5T1FmWjMiOw==','2017-10-10 07:50:35','2017-10-10 07:50:35','edfd1a86-c4c5-4632-af34-9232b90f1511'),
	(71,1,'99c57e531b52441e9ef7ad9c681fe2b0bca9a8beczozMjoiYkxWSGVpczltNmlwYlVnY3ppRXBMd2xNSXNCem1xaVoiOw==','2017-10-13 07:07:30','2017-10-13 07:07:30','b1053ee0-e593-453b-8146-3ed9ffc9936e'),
	(72,1,'50d909e8934509a19cf9572f25a651a7ef984f7cczozMjoib1RVUH5ncUM4TFI2VU1PfjdLUm9JMVFqTmM0Y0lXc3UiOw==','2017-10-18 13:53:34','2017-10-18 13:53:34','b05ea326-6eb9-4543-9ee0-5e6fd345827f'),
	(73,1,'086bd80ab89897d6b031c7973b99ba35fe50c37fczozMjoiaHZhWERGcW00aldSVGozd2p4VDFtWFljbXN5aXphNXgiOw==','2017-11-03 13:22:26','2017-11-03 13:22:26','34c5d52a-6527-4586-9799-e8a306360021'),
	(74,1,'9dd63b48b2328bbc7bba5f1265e58ec73f919bc3czozMjoiRFdiQTBKQ2V3M0wwamplZkZUQVZvX2p3Q3V1ZVVvbjEiOw==','2017-11-10 10:07:21','2017-11-10 10:07:21','1fd51b2f-0e4f-4d24-b2d1-9ec23e940d53'),
	(75,1,'20bda84970de1bd8cf35fa4ee0c68933c64dfd89czozMjoialJEMHNLQ2ZVVFgyVHFJVU56ZWJWOHZndjJMbUI4ZzYiOw==','2017-11-10 14:24:00','2017-11-10 14:24:00','fbbef0d0-b797-4fe9-812d-b09963d035b9'),
	(76,1,'f2f0ee829129bffe21089846ed3bf23956ab2899czozMjoiQ0RKMXd1fnY5M0RyTGZWTFBWfmJUMlRZNUVEZjB6R0UiOw==','2017-11-13 13:10:02','2017-11-13 13:10:02','29060572-7345-4c08-806d-f8e279298fd7'),
	(77,1,'69270abc3195c4fd0a3d632137ae92c1a35a99b3czozMjoiWX5DUkdnZ0xoNUx1dU5vWWRMMm1UMGtxbXV2SH5rSWwiOw==','2017-11-13 14:48:50','2017-11-13 14:48:50','43f5b85d-8f86-4e40-827f-0cbe835b19dd'),
	(78,1,'9805301f8b75346fa5992fe8908eef69c493673aczozMjoiWllQfmFISmJyc1lzTWJublpkelQwdmp0ZlJWdnd2d3giOw==','2017-11-15 13:40:19','2017-11-15 13:40:19','06532dfb-8158-4f8a-8d3e-e650d3edad11'),
	(79,1,'d1709b0ccb182f04d7484e0b3ec83b401e735f1cczozMjoia2R6Rmh6VlpUcTIxbnhrMnB3aHZuU0dMTEVMU1FDV1kiOw==','2017-11-30 15:32:08','2017-11-30 15:32:08','1e0fe9a4-3840-46a9-a445-a4174703f00c'),
	(80,1,'b1421978b867e81ea4531cb1cef6ea513259d382czozMjoiUUJaS1N5VzVSdENwQTdjdUVzODhad2RzVjI1TlprYXMiOw==','2017-12-11 08:59:32','2017-12-11 08:59:32','fd69e46c-aa8e-4395-bf3a-10c155c2536f'),
	(81,1,'281e501a48af0efd8a940052b76e9cd7168d708fczozMjoiN1dMMlB3VE1mMX5uSkR0OTBpWThTVGZGamJkRnhNdGwiOw==','2017-12-13 08:56:19','2017-12-13 08:56:19','34d007d9-6af8-4615-b5da-4533b23f6c2f'),
	(82,1,'22b99dee2a9cdf26d6e5ca5c7f5cf848bc1e2efeczozMjoiQmFCZ01VTGVLfmxfSjkycFcxNUFnY1dqd1BndVdacHgiOw==','2017-12-14 17:19:10','2017-12-14 17:19:10','c19cf0fb-50a9-46fc-af54-77da98eef4a1'),
	(83,1,'957ebf1529845ed8d998c4189190d27a169930e8czozMjoibjZPRmRsMjBsfk1DWnpoWjVRdmxZSGNWZVF+S1JuRlQiOw==','2017-12-19 19:52:30','2017-12-19 19:52:30','f9477536-e0c9-4376-8547-ebdb620d355f'),
	(84,1,'6950106155c138313db7f3d754bb7957494db504czozMjoieG8yRHVfQXpFb0dOSnhKZzBNSjhZNFJpcHdDcFlQUTAiOw==','2018-01-02 23:52:25','2018-01-02 23:52:25','a640714c-2370-487e-bcb1-62b76a37975a'),
	(85,1,'f5782103fc5d1bc28b7055ab95e073c55728bdeaczozMjoiWFlmM1B5MlVhdEJVbjh3NTZaMUNob1RSc0ZtVURiTWsiOw==','2018-01-09 13:18:58','2018-01-09 13:18:58','925fadd8-83bf-4b9f-b2c6-1d406152c7c9'),
	(86,1,'f510b3f2dd7f6aa5213b54f385c9b0df6ca0952aczozMjoiTGlpdndDWGQxWEw5XzRQMjhHaEdpN0xkSFZJNUQ3UWEiOw==','2018-01-18 09:05:38','2018-01-18 09:05:38','c01aa87d-fed1-4efe-98ea-014642c5957a'),
	(87,1,'55b9b22b9d38da85a39f37d4926a7f2eb09ad87bczozMjoiQUtiZ3JVdVdMSWhpeTVRVU1IUEZmd3lvZ0lldVdST3kiOw==','2018-01-18 12:25:39','2018-01-18 12:25:39','7245a0cb-137c-411a-b79c-f0bc69d832d7'),
	(88,1,'f29527de976bb4670001ec8fa4ee0d90c07835f0czozMjoiM3pmeXhWandxam1OS00zWTFjS1drdlV1b1NhMGRTWFoiOw==','2018-01-18 14:11:07','2018-01-18 14:11:07','2224b7a5-1773-45ec-b05f-eabcd1d4eb11'),
	(89,1,'01b4980cbbf368105da78524dcb252e5579a9fbdczozMjoiR3ozNl9hYlRoZFB0MnBlZE45eWJFSHd4a2gxekxRc0kiOw==','2018-01-18 15:40:58','2018-01-18 15:40:58','d7b42ed8-a9b3-4fb8-b3d0-495a293195b6'),
	(90,1,'99bff069e8073ca603b7c5193f08856a83e65636czozMjoiVXV5R3NGRFVmR1Z4N1BnUGxkRkZ6blRKclpTY1lldkoiOw==','2018-01-22 12:03:35','2018-01-22 12:03:35','5446d88f-394e-4c35-89c5-d4e47dbce93e'),
	(91,1,'f6c03d50c3e09d5c2fa631bfba3d2b3ee9e30790czozMjoiREhrWGtfYmpaV2JadVpBUVY2dldWQW5nVUhMbjdrQVoiOw==','2018-02-06 13:58:03','2018-02-06 13:58:03','1de84c49-08fa-4cfd-9f28-31d6bbfa476d'),
	(92,1,'3f88018fe503dfa9d55f3710ffd31de75d79c72aczozMjoiaVJqZnR+YzhyWk9pMTV1TksxRG4yNGNpUUh3WERld1giOw==','2018-02-09 11:32:24','2018-02-09 11:32:24','529e43f4-e4d6-4191-8c39-2395d4318996'),
	(93,1,'6f1c8a2a1bd758043679f3d00f63da40c7911f70czozMjoiWUJxY0ZZMkhqQ0V4S0hHa3dRbGR5ZDJnYkZUNVE5S00iOw==','2018-02-09 11:32:51','2018-02-09 11:32:51','ac6b78f6-fb9b-4985-8cf5-4716234aacfc'),
	(94,1,'26b661749a0d02da750ca1c1f237e59ee1286f04czozMjoiaTB5amRjY0Jkdm92bm04RU8zZ1JYSXZlVENTYVRHeUoiOw==','2018-02-15 13:37:21','2018-02-15 13:37:21','9ef8d706-0465-4631-97d4-7b94f384a18d'),
	(95,1,'4d25c30805c9ca5d9ae0cf72b925c909d4ffc42dczozMjoiT25fUkh0V2NHSVRIUVNlN3pFRlB5MUp+bTZxT05DZXoiOw==','2018-02-16 07:36:52','2018-02-16 07:36:52','a1d89932-a246-4cf6-8d05-f7fd639ab306'),
	(96,1,'722036d0ee2b949026f64d08e7ff58c23476f4fcczozMjoiRFQ2eWxsZjFNcXlJM2RLbzM4NWFXckRBTXY0T1NHWmYiOw==','2018-02-26 09:40:54','2018-02-26 09:40:54','5a28b579-0991-4864-897a-198eea12d9bc'),
	(97,1,'c3ee5bc9c5d5fdde7cc5d803b3ffca97823aee3aczozMjoiUVpycmZIMXZaRHBBR0FQUndHZmVBWlRobjJ3cjdaM3AiOw==','2018-02-27 08:30:58','2018-02-27 08:30:58','29639a2e-586a-4d25-9673-a6b9da9196e5'),
	(98,1,'e3b66cf8d4b729b654fa41d1684c3f61480d1aaaczozMjoidnVCQlJ+Q0lLMDBGUGFLU1pLYlI1dDJvWllCQUVITDYiOw==','2018-04-11 14:37:39','2018-04-11 14:37:39','b6a88a3d-19c6-444c-8cf5-d6f1b19ed62b'),
	(99,1,'600f3748b49c3cbaafafb6fdb74f4a3c97d64c01czozMjoidHZoS013MXlJN19KZXFtMW9XS2s5R05zUWtwb3Z2d24iOw==','2018-04-19 13:30:22','2018-04-19 13:30:22','15ef3689-e155-40ea-a845-445197890918'),
	(100,1,'a8b4961cd6dbccff738c7db7ced1ff8bf3753292czozMjoiRVlGYU5jYzQwTDFHUXR6YXF3NHd0RldWaV83SlBjTmQiOw==','2018-04-20 18:12:22','2018-04-20 18:12:22','29cf198c-3e5e-44fe-b437-0f8d527b6725'),
	(101,1,'5cca84473de1b3bfe2a2cc92d9e90981002ef0e4czozMjoiSnlSUmVIdGcwNWNlTE41MTZVYmVoQ0Y3TX5teDBGSW0iOw==','2018-04-20 20:05:12','2018-04-20 20:05:12','362ebee6-dc65-43b0-b9b7-bc64e5b0d59b'),
	(102,1,'223af7c6e598afcff1ecd6b4de918912df12e1e7czozMjoiRXhQQXVaZVNhVWVjdF9DUGc0ZXRDblJRWVFOdG9rTzYiOw==','2018-04-25 13:47:27','2018-04-25 13:47:27','2df5ba4d-3601-443f-ba57-c7e67fdf3c69'),
	(103,1,'70c0a12e46372cdcaf3bb2674338c185cfb2d7e6czozMjoiOXNObnhlU0FNN095SERBTGtTfkF2RmRpOG1neUJheWMiOw==','2018-04-27 08:17:35','2018-04-27 08:17:35','6b41b5f0-5bd8-476c-b7ce-3c04b27b40ec'),
	(104,1,'1a16d45723aa20e545b24f34b30da0d6bc026507czozMjoiUjNBX0NjN29LOTltdkZ6Wjdob0RYTFJwdXdBa21FTE8iOw==','2018-05-08 10:47:37','2018-05-08 10:47:37','dc19d921-dd58-493c-a8dd-d5eb06446362'),
	(105,1,'b9bcb0e11508b217ae0ddb78a7505c07e7a17cf4czozMjoiTGdJZGdOUEN1OUZuajN4Unk2TDR6SmVWamJGTmpDUnMiOw==','2018-05-08 13:54:26','2018-05-08 13:54:26','fefab73c-e0b1-404f-99ce-d8c602bfd89d'),
	(106,1,'9ab7c36603b102c33be80ad014baf4d75a82a51aczozMjoiS0JRN1hsZFFySDJaeDBmRW5ibTg4Q3l+YTVFSjNlS2giOw==','2018-05-08 13:54:30','2018-05-08 13:54:30','b3a1e557-c05d-4014-8397-40d87250108d'),
	(107,1,'9b0f239d54069dafaad9f9eb37c84f535beacaa5czozMjoibEdXb3JCcHJhSU94a2dqdlZVfn5sSkNBNG1heVAyTE0iOw==','2018-05-16 13:22:22','2018-05-16 13:22:22','391cf942-9b1a-4833-918c-7602ace55256'),
	(108,1,'6e176db81bcd10304bef8534b9511d0fc352cbefczozMjoia2hjT2RzWlg4RFF3ZUJyM3pIWFpTVGljRnVFMnpRTkkiOw==','2018-05-18 13:33:38','2018-05-18 13:33:38','8c70c2d2-8c4a-41a5-a167-0ce3a11a4baf'),
	(109,1,'7ea5b3f5202c07362ad7d142e42418e0aa71ba68czozMjoickdEczdmd3Q2VklQd3RFMXJqVFhHUm1OR21DQWtBYTkiOw==','2018-05-30 13:49:50','2018-05-30 13:49:50','3e366318-3eb9-49f2-a5c0-0466e71e0a13'),
	(110,1,'2c170c61dedeef0896555f61eec0f6964f23fc64czozMjoiM0l0dGV2VGgxSmtzZzRJb3E1X2p0dmxBYVlFS0hhQk8iOw==','2018-05-31 09:16:23','2018-05-31 09:16:23','eb7c1f16-3c14-432f-8376-66bee0964c3a'),
	(111,1,'5c9488909a74186cfc3a7667574d9e72da1cebb5czozMjoiRWdhbkxqeDgzdmZZSEplZV9CVkNKY1pXWVlUbV9VRlkiOw==','2018-06-01 06:52:01','2018-06-01 06:52:01','ef59b97e-8d91-448c-bf48-ed814a90f077'),
	(112,1,'84400447388ae7d58a8709ac9c231d19682f2550czozMjoiQk9YVklLamZ4bk54a0d4fn5DaW55d3BTR0RSUEtJcXQiOw==','2018-06-01 09:05:32','2018-06-01 09:05:32','ea42abbb-b1e2-4231-bf90-ce9c578660a8'),
	(113,1,'ef45b74b412378af5be83e6c401dd02d92e28fb5czozMjoicXBCM0JDNTNwT3JBdDFyZHhnRlpfM2tWTlgyN3pEc1AiOw==','2018-06-01 14:02:57','2018-06-01 14:02:57','f750819e-b0e0-4b37-8c2a-06ade07aef06'),
	(114,1,'11316563126f09203fcfaef2be6d7154fa0ccec9czozMjoiUDd+SUZTazlwNFVvanZuOU02Y0p1ZGFrYXgzRm9wYV8iOw==','2018-06-02 06:14:16','2018-06-02 06:14:16','f4f95b80-71dd-4d37-bf31-3cfc455f57c4'),
	(115,1,'e87961aaf086809928414daec3702a44b805c3e4czozMjoib2pTRnpqNXpvdzBZM1ROQldHck9JanJRUDd2b3dXMVciOw==','2018-06-04 14:48:03','2018-06-04 14:48:03','28e6ff2d-c0f7-4bc9-a229-adbb99a47d68'),
	(116,1,'9f9cfab0ebfa4bc7f632843e874e726672acf074czozMjoiM0xvRWRvRHZtVjdSQ0tNcW1Ma1pSQlhMdHdXemZxblUiOw==','2018-06-06 11:07:19','2018-06-06 11:07:19','3e91ed8d-2a04-4c48-8c29-443e6c6d23e5'),
	(117,1,'5862098cfcc0a732643e1a675f0594e681c66116czozMjoiWFZrcXNJaEMwd0taN2VHbHlCUlZtdnJTRWFRbWF5WEkiOw==','2018-06-07 08:15:59','2018-06-07 08:15:59','dadcf41c-609b-440b-874e-860ffca9ed7f'),
	(118,1,'10d0e9a93ce6a7ba9c07d9ba44644f356eda500fczozMjoiUGN1MDJ3bmNRdnRPSH5xRmtQWUVyVWlmbkRMY0U4cDEiOw==','2018-06-07 12:45:52','2018-06-07 12:45:52','6ef34326-dba8-40c2-88d8-835466fb2ed9'),
	(119,1,'b3c2114b5a54d5974b140b25fbf5d03b951e1811czozMjoicnNiTm56bXpEX1NIdWhSNjhGTlVfTXFtY0VtX1FkV1QiOw==','2018-06-08 11:28:26','2018-06-08 11:28:26','ad09956c-5adb-44f2-a49a-627b06466015'),
	(120,1,'6f20e6e8a9cc8dad6cac854f2333e7662e13b771czozMjoiUVNhUGtVSjNEaTZnWGdGbFZJWG9+UHFVdEwya2xsVVkiOw==','2018-06-13 07:00:11','2018-06-13 07:00:11','7959e5f2-6ca0-41e0-95b0-12357c5fe37d'),
	(121,1,'fea32bfa0787e05d1a9ebafd28df20821f3280c0czozMjoibVZldHh2RVRNQTNXNWdfS2ZFNEVxcUROYzlpZndkM3EiOw==','2018-06-13 08:20:17','2018-06-13 08:20:17','8cd06f26-9408-441c-878a-9a8b5ce8f69f'),
	(122,1,'c84c38927796b231c15b6547aa25c478902b31a2czozMjoicHZWX1VDfm1MME5OWjZ6MWhyaGx0Qk9vbGk5RE1JTWIiOw==','2018-06-13 08:24:50','2018-06-13 08:24:50','b70601cb-d797-4c59-b606-5d9e94771100'),
	(123,1,'c5cfbd879d36db9c69570a22801d96b3aab697a5czozMjoiU1R2VVZXZWFRZVFPRjRkd29ObzFxVkIwaWJsWm9EU1AiOw==','2018-06-13 13:24:24','2018-06-13 13:24:24','2a99828c-ee5c-4e31-a604-603d1075f23d'),
	(124,1,'9f97cdcd9c0c6420ac10b1c9f9d44af0e01af30fczozMjoiVk1ZY1dfQTJBdWtDTGRwbGc4cGNFSnBxVjdmRV9LTEMiOw==','2018-06-14 06:42:43','2018-06-14 06:42:43','094c8122-4e34-40c2-8d0d-fe02e595e590'),
	(125,1,'0bd9557e929d9abfb444300300c84304a5af5037czozMjoiTF9JUUtUWl9XSDNMTDdnfnJmMjNWTWgwMnFnUE1sUH4iOw==','2018-06-14 07:28:15','2018-06-14 07:28:15','b7723703-b6da-446a-954f-5976a5569b2f'),
	(126,1,'4e5999c4ad6b05583c71707265e242afd45befd5czozMjoiaXUyQ0JnUUNpOUk0dTVkQ25jNjViTnRUNXJxS2J2ZzkiOw==','2018-06-21 13:37:14','2018-06-21 13:37:14','f18eeaaa-dd69-4317-bba9-f1d32b7e572d'),
	(127,1,'61fee164fe0ea256b3808bffa2d139811305c3f6czozMjoid2RpNTBOZWdRUWpkQUNnQkZ3TEpEenJzUXRXbGsza24iOw==','2018-07-31 07:52:53','2018-07-31 07:52:53','dda4c3c8-48cf-4466-ac0b-34756b0ca292'),
	(128,1,'c4f1dcdc09b33db850178a3feaa050be28ced3b4czozMjoiRFFvdThhaGdFTmtFYnprWE5tSF9+WlBtQjNrVVFWMmYiOw==','2018-08-02 07:23:48','2018-08-02 07:23:48','c9e7e364-a85d-4224-a70e-83812cd6fbd7');

/*!40000 ALTER TABLE `craft_sessions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_shunnedmessages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_shunnedmessages`;

CREATE TABLE `craft_shunnedmessages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expiryDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_shunnedmessages_userId_message_unq_idx` (`userId`,`message`),
  CONSTRAINT `craft_shunnedmessages_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_structureelements
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_structureelements`;

CREATE TABLE `craft_structureelements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `structureId` int(11) NOT NULL,
  `elementId` int(11) DEFAULT NULL,
  `root` int(11) unsigned DEFAULT NULL,
  `lft` int(11) unsigned NOT NULL,
  `rgt` int(11) unsigned NOT NULL,
  `level` smallint(6) unsigned NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_structureelements_structureId_elementId_unq_idx` (`structureId`,`elementId`),
  KEY `craft_structureelements_root_idx` (`root`),
  KEY `craft_structureelements_lft_idx` (`lft`),
  KEY `craft_structureelements_rgt_idx` (`rgt`),
  KEY `craft_structureelements_level_idx` (`level`),
  KEY `craft_structureelements_elementId_fk` (`elementId`),
  CONSTRAINT `craft_structureelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_structureelements_structureId_fk` FOREIGN KEY (`structureId`) REFERENCES `craft_structures` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_structureelements` WRITE;
/*!40000 ALTER TABLE `craft_structureelements` DISABLE KEYS */;

INSERT INTO `craft_structureelements` (`id`, `structureId`, `elementId`, `root`, `lft`, `rgt`, `level`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,1,NULL,1,1,4,0,'2017-08-18 12:51:39','2017-08-18 12:51:39','e106102b-4c8f-4267-a8cf-953ecea46702'),
	(2,2,NULL,2,1,4,0,'2017-09-08 20:41:31','2017-09-08 20:41:31','dfa089f8-ec4f-4111-89b6-a20805f6b3b4'),
	(3,2,15,2,2,3,1,'2017-09-08 20:41:31','2017-09-08 20:41:31','9647d99d-d71a-4dac-a37d-9bb66b9f8117'),
	(4,1,17,1,2,3,1,'2017-09-12 14:26:53','2017-09-12 14:26:53','a7d4afe8-8e9b-40e0-a2b2-e6b25c79eb67'),
	(267,23,NULL,267,1,2,0,'2017-09-18 15:35:01','2017-09-18 15:35:01','e5858464-9d49-4d33-971e-c1a038f46db6'),
	(288,24,NULL,288,1,2,0,'2017-09-18 15:54:49','2017-09-18 15:54:49','5766120d-8abc-4043-9811-f71a12d8e6dc'),
	(290,25,NULL,290,1,2,0,'2018-01-18 09:08:43','2018-01-18 09:08:43','b0469b30-7456-4cac-a184-a8ff31ad23e7'),
	(293,26,NULL,293,1,2,0,'2018-01-18 09:08:43','2018-01-18 09:08:43','c6f85254-d8ee-44e8-9fd8-afa57ade7d4a'),
	(297,27,NULL,297,1,2,0,'2018-02-09 12:00:15','2018-02-09 12:00:15','7f1a55d2-3cd2-4a8b-b962-3fd3c839a1bd'),
	(300,28,NULL,300,1,2,0,'2018-02-09 12:00:15','2018-02-09 12:00:15','6f0ad23a-7264-4734-8732-68cb88976405'),
	(301,29,NULL,301,1,16,0,'2018-08-02 07:53:08','2018-08-02 07:53:08','d9066476-41bd-4fb9-96b6-8af91a816ade'),
	(302,29,201,301,2,15,1,'2018-08-02 07:53:08','2018-08-02 07:53:08','30fe4fa2-86bd-40bc-96f7-6963bfaeadbb'),
	(303,29,202,301,3,4,2,'2018-08-02 07:54:35','2018-08-02 07:54:35','62e5e3af-0805-4a5f-83d2-00c94e118447'),
	(304,29,203,301,5,6,2,'2018-08-02 07:55:51','2018-08-02 07:55:51','c5077912-568c-4f3f-8cec-52e320425355'),
	(305,29,204,301,7,8,2,'2018-08-02 07:56:17','2018-08-02 07:56:17','c7feb27d-55ee-4d61-85a3-b2126845c431'),
	(306,29,205,301,9,10,2,'2018-08-02 07:56:38','2018-08-02 07:56:38','269c0c6c-fa47-4bb6-94af-015103d5fa2f'),
	(307,29,206,301,11,12,2,'2018-08-02 07:56:59','2018-08-02 07:56:59','52f8c74a-ed46-47da-adb8-cae9d91d1d81'),
	(308,29,207,301,13,14,2,'2018-08-02 07:57:25','2018-08-02 07:57:25','8ef3fc06-60cd-4e92-a088-13fbe8393185');

/*!40000 ALTER TABLE `craft_structureelements` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_structures
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_structures`;

CREATE TABLE `craft_structures` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `maxLevels` smallint(6) unsigned DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_structures` WRITE;
/*!40000 ALTER TABLE `craft_structures` DISABLE KEYS */;

INSERT INTO `craft_structures` (`id`, `maxLevels`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,NULL,'2017-08-18 12:43:31','2017-08-18 12:45:14','d6cffc8e-4099-484e-9266-c223d96e029e'),
	(2,NULL,'2017-09-08 20:41:31','2017-09-08 20:41:31','66a25703-8a4c-491a-b4fd-c729116324bc'),
	(23,NULL,'2017-09-18 15:35:01','2017-09-18 15:35:01','1b62b0e1-2cb8-4485-affb-8f3d7be04ea3'),
	(24,NULL,'2017-09-18 15:54:49','2017-09-18 15:54:49','8b83f4ad-ae0c-41aa-8035-11e71430e27b'),
	(25,NULL,'2018-01-18 09:08:43','2018-01-18 09:08:43','8e614fd7-4ce2-475b-9495-9fcf74fbcb01'),
	(26,NULL,'2018-01-18 09:08:43','2018-01-18 09:08:43','39ac0daf-cf00-4f12-b73b-3fd6fe1bc224'),
	(27,NULL,'2018-02-09 12:00:15','2018-02-09 12:00:15','dc09e849-e01e-46eb-afcf-fe1ff0a60aa6'),
	(28,NULL,'2018-02-09 12:00:15','2018-02-09 12:00:15','7fd558fa-effc-4f00-966d-e3160644dc77'),
	(29,NULL,'2018-08-02 07:47:14','2018-08-02 07:47:14','79ca9e02-2929-4ace-9122-dfe533c79a3d');

/*!40000 ALTER TABLE `craft_structures` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_supertableblocks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_supertableblocks`;

CREATE TABLE `craft_supertableblocks` (
  `id` int(11) NOT NULL,
  `ownerId` int(11) NOT NULL,
  `fieldId` int(11) NOT NULL,
  `typeId` int(11) DEFAULT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `ownerLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_supertableblocks_ownerId_idx` (`ownerId`),
  KEY `craft_supertableblocks_fieldId_idx` (`fieldId`),
  KEY `craft_supertableblocks_typeId_idx` (`typeId`),
  KEY `craft_supertableblocks_sortOrder_idx` (`sortOrder`),
  KEY `craft_supertableblocks_ownerLocale_fk` (`ownerLocale`),
  CONSTRAINT `craft_supertableblocks_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_supertableblocks_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_supertableblocks_ownerId_fk` FOREIGN KEY (`ownerId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_supertableblocks_ownerLocale_fk` FOREIGN KEY (`ownerLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `craft_supertableblocks_typeId_fk` FOREIGN KEY (`typeId`) REFERENCES `craft_supertableblocktypes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_supertableblocks` WRITE;
/*!40000 ALTER TABLE `craft_supertableblocks` DISABLE KEYS */;

INSERT INTO `craft_supertableblocks` (`id`, `ownerId`, `fieldId`, `typeId`, `sortOrder`, `ownerLocale`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(5,2,13,2,1,NULL,'2017-06-26 13:34:38','2017-06-26 14:22:52','f4d58595-fb91-4525-b4be-554a7f1798f5'),
	(153,148,106,3,1,NULL,'2018-06-06 13:18:32','2018-06-13 09:54:58','fb1a0325-3ce4-4df6-89f9-337bf07e1cb5'),
	(154,148,106,3,2,NULL,'2018-06-06 13:18:32','2018-06-13 09:54:58','dd3522d5-c822-47d7-8dea-8af106f6dffe'),
	(156,152,117,4,1,NULL,'2018-06-07 12:50:50','2018-06-13 09:54:58','7601c33f-ab62-4d3e-96cc-2a005928de03'),
	(158,157,119,5,1,NULL,'2018-06-07 12:53:43','2018-06-13 09:54:58','7562dbcf-0864-49a8-8eca-8593aa7bc933'),
	(159,157,119,5,2,NULL,'2018-06-07 12:56:16','2018-06-13 09:54:58','3e4f9556-09c7-41ec-b0fd-e5f34688ac79'),
	(166,165,106,3,1,NULL,'2018-06-13 07:34:28','2018-06-13 09:54:58','59616376-d008-42f8-8e41-654c9d46943b'),
	(167,165,106,3,2,NULL,'2018-06-13 07:34:28','2018-06-13 09:54:58','79b265ed-21b4-45ff-8364-5ffb3842f8ab'),
	(168,165,106,3,3,NULL,'2018-06-13 07:34:29','2018-06-13 09:54:58','73216f9f-5982-498b-b68d-74705afdfd91'),
	(169,165,106,3,4,NULL,'2018-06-13 07:34:29','2018-06-13 09:54:58','06747a20-6082-446b-b03b-7ec91e79c2b6'),
	(170,165,106,3,5,NULL,'2018-06-13 07:34:29','2018-06-13 09:54:58','2296cf6c-08c5-410f-a642-209f7706e478'),
	(178,177,117,4,1,NULL,'2018-06-13 08:26:21','2018-06-13 09:54:58','ad688447-5bb8-4a3d-b4c5-4ef0ea20f362'),
	(181,177,117,4,2,NULL,'2018-06-13 09:11:42','2018-06-13 09:54:58','86bdfb06-936b-47d4-918f-e851fdace45e'),
	(189,187,119,5,1,NULL,'2018-06-13 09:11:42','2018-06-13 09:54:58','2c3a4482-fcde-43b2-b67a-c6d9297fa772');

/*!40000 ALTER TABLE `craft_supertableblocks` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_supertableblocktypes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_supertableblocktypes`;

CREATE TABLE `craft_supertableblocktypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fieldId` int(11) NOT NULL,
  `fieldLayoutId` int(11) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_supertableblocktypes_fieldId_fk` (`fieldId`),
  KEY `craft_supertableblocktypes_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_supertableblocktypes_fieldId_fk` FOREIGN KEY (`fieldId`) REFERENCES `craft_fields` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_supertableblocktypes_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_supertableblocktypes` WRITE;
/*!40000 ALTER TABLE `craft_supertableblocktypes` DISABLE KEYS */;

INSERT INTO `craft_supertableblocktypes` (`id`, `fieldId`, `fieldLayoutId`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(2,13,179,'2017-06-26 12:46:58','2018-04-19 13:30:54','2f1991d5-a423-41cb-bd6b-8c07e2d588f9'),
	(3,106,560,'2018-05-30 13:58:45','2018-06-13 09:13:44','5cd0dbd1-0af1-4aff-ae3a-62fa596978e4'),
	(4,117,565,'2018-06-07 12:49:19','2018-06-13 09:13:45','0522f5d8-6b18-4f9a-895a-f4970ad345f6'),
	(5,119,568,'2018-06-07 12:49:20','2018-06-13 09:13:45','82daac21-f8e3-4bd1-b6a9-2a4fa99c96bf');

/*!40000 ALTER TABLE `craft_supertableblocktypes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_supertablecontent_14_cta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_supertablecontent_14_cta`;

CREATE TABLE `craft_supertablecontent_14_cta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `field_linkit` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_supertablecontent_14_cta_elementId_locale_unq_idx` (`elementId`,`locale`),
  KEY `craft_supertablecontent_14_cta_locale_fk` (`locale`),
  CONSTRAINT `craft_supertablecontent_14_cta_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_supertablecontent_14_cta_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_supertablecontent_17_cta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_supertablecontent_17_cta`;

CREATE TABLE `craft_supertablecontent_17_cta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `field_linkit` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_supertablecontent_17_cta_elementId_locale_unq_idx` (`elementId`,`locale`),
  KEY `craft_supertablecontent_17_cta_locale_fk` (`locale`),
  CONSTRAINT `craft_supertablecontent_17_cta_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_supertablecontent_17_cta_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_supertablecontent_19_cta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_supertablecontent_19_cta`;

CREATE TABLE `craft_supertablecontent_19_cta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `field_linkit` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_supertablecontent_19_cta_elementId_locale_unq_idx` (`elementId`,`locale`),
  KEY `craft_supertablecontent_19_cta_locale_fk` (`locale`),
  CONSTRAINT `craft_supertablecontent_19_cta_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_supertablecontent_19_cta_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_supertablecontent_5_buttons
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_supertablecontent_5_buttons`;

CREATE TABLE `craft_supertablecontent_5_buttons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `field_text` text COLLATE utf8_unicode_ci,
  `field_color` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_supertablecontent_5_buttons_elementId_locale_unq_idx` (`elementId`,`locale`),
  KEY `craft_supertablecontent_5_buttons_locale_fk` (`locale`),
  CONSTRAINT `craft_supertablecontent_5_buttons_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_supertablecontent_5_buttons_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_supertablecontent_7_buttons
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_supertablecontent_7_buttons`;

CREATE TABLE `craft_supertablecontent_7_buttons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `field_text` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_supertablecontent_7_buttons_elementId_locale_unq_idx` (`elementId`,`locale`),
  KEY `craft_supertablecontent_7_buttons_locale_fk` (`locale`),
  CONSTRAINT `craft_supertablecontent_7_buttons_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_supertablecontent_7_buttons_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_supertablecontent_hero
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_supertablecontent_hero`;

CREATE TABLE `craft_supertablecontent_hero` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `field_heading` text COLLATE utf8_unicode_ci,
  `field_description` text COLLATE utf8_unicode_ci,
  `field_textColor` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'dark',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_supertablecontent_hero_elementId_locale_unq_idx` (`elementId`,`locale`),
  KEY `craft_supertablecontent_hero_locale_fk` (`locale`),
  CONSTRAINT `craft_supertablecontent_hero_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_supertablecontent_hero_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_supertablecontent_timetable
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_supertablecontent_timetable`;

CREATE TABLE `craft_supertablecontent_timetable` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `elementId` int(11) NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `field_time` text COLLATE utf8_unicode_ci,
  `field_entry` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_supertablecontent_timetable_elementId_locale_unq_idx` (`elementId`,`locale`),
  KEY `craft_supertablecontent_timetable_locale_fk` (`locale`),
  CONSTRAINT `craft_supertablecontent_timetable_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_supertablecontent_timetable_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_systemsettings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_systemsettings`;

CREATE TABLE `craft_systemsettings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_systemsettings_category_unq_idx` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_systemsettings` WRITE;
/*!40000 ALTER TABLE `craft_systemsettings` DISABLE KEYS */;

INSERT INTO `craft_systemsettings` (`id`, `category`, `settings`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'email','{\"template\":\"_mail\\/_layout\",\"protocol\":\"smtp\",\"emailAddress\":\"no-reply@mailer.today\",\"senderName\":\"Crabas\",\"smtpAuth\":1,\"username\":\"info@statik.be\",\"password\":\"9yNTWONJdI145baaskt3sQ\",\"smtpSecureTransportType\":\"tls\",\"port\":\"587\",\"host\":\"smtp.mandrillapp.com\",\"timeout\":\"30\"}','2017-03-09 09:09:45','2017-08-16 13:50:18','2295bb91-5b38-4c4a-8b48-173408c3edb1');

/*!40000 ALTER TABLE `craft_systemsettings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_taggroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_taggroups`;

CREATE TABLE `craft_taggroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fieldLayoutId` int(10) DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_taggroups_name_unq_idx` (`name`),
  UNIQUE KEY `craft_taggroups_handle_unq_idx` (`handle`),
  KEY `craft_taggroups_fieldLayoutId_fk` (`fieldLayoutId`),
  CONSTRAINT `craft_taggroups_fieldLayoutId_fk` FOREIGN KEY (`fieldLayoutId`) REFERENCES `craft_fieldlayouts` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_taggroups` WRITE;
/*!40000 ALTER TABLE `craft_taggroups` DISABLE KEYS */;

INSERT INTO `craft_taggroups` (`id`, `name`, `handle`, `fieldLayoutId`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'Default','default',1,'2017-03-09 09:09:45','2017-03-09 09:09:45','8dc37d53-6665-4199-9f97-1504bda0b415');

/*!40000 ALTER TABLE `craft_taggroups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_tags`;

CREATE TABLE `craft_tags` (
  `id` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_tags_groupId_fk` (`groupId`),
  CONSTRAINT `craft_tags_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_taggroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_tags_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_tasks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_tasks`;

CREATE TABLE `craft_tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `root` int(11) unsigned DEFAULT NULL,
  `lft` int(11) unsigned NOT NULL,
  `rgt` int(11) unsigned NOT NULL,
  `level` smallint(6) unsigned NOT NULL,
  `currentStep` int(11) unsigned DEFAULT NULL,
  `totalSteps` int(11) unsigned DEFAULT NULL,
  `status` enum('pending','error','running') COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `settings` mediumtext COLLATE utf8_unicode_ci,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_tasks_root_idx` (`root`),
  KEY `craft_tasks_lft_idx` (`lft`),
  KEY `craft_tasks_rgt_idx` (`rgt`),
  KEY `craft_tasks_level_idx` (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_templatecachecriteria
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_templatecachecriteria`;

CREATE TABLE `craft_templatecachecriteria` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cacheId` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `criteria` text COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `craft_templatecachecriteria_cacheId_fk` (`cacheId`),
  KEY `craft_templatecachecriteria_type_idx` (`type`),
  CONSTRAINT `craft_templatecachecriteria_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `craft_templatecaches` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_templatecacheelements
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_templatecacheelements`;

CREATE TABLE `craft_templatecacheelements` (
  `cacheId` int(11) NOT NULL,
  `elementId` int(11) NOT NULL,
  KEY `craft_templatecacheelements_cacheId_fk` (`cacheId`),
  KEY `craft_templatecacheelements_elementId_fk` (`elementId`),
  CONSTRAINT `craft_templatecacheelements_cacheId_fk` FOREIGN KEY (`cacheId`) REFERENCES `craft_templatecaches` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_templatecacheelements_elementId_fk` FOREIGN KEY (`elementId`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_templatecaches
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_templatecaches`;

CREATE TABLE `craft_templatecaches` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cacheKey` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `locale` char(12) COLLATE utf8_unicode_ci NOT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `body` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `craft_templatecaches_locale_fk` (`locale`),
  KEY `craft_templatecaches_cacheKey_locale_expiryDate_idx` (`cacheKey`,`locale`,`expiryDate`),
  KEY `craft_templatecaches_cacheKey_locale_expiryDate_path_idx` (`cacheKey`,`locale`,`expiryDate`,`path`),
  CONSTRAINT `craft_templatecaches_locale_fk` FOREIGN KEY (`locale`) REFERENCES `craft_locales` (`locale`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_tokens`;

CREATE TABLE `craft_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `route` text COLLATE utf8_unicode_ci,
  `usageLimit` tinyint(3) unsigned DEFAULT NULL,
  `usageCount` tinyint(3) unsigned DEFAULT NULL,
  `expiryDate` datetime NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_tokens_token_unq_idx` (`token`),
  KEY `craft_tokens_expiryDate_idx` (`expiryDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_usergroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_usergroups`;

CREATE TABLE `craft_usergroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_usergroups_name_unq_idx` (`name`),
  UNIQUE KEY `craft_usergroups_handle_unq_idx` (`handle`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_usergroups` WRITE;
/*!40000 ALTER TABLE `craft_usergroups` DISABLE KEYS */;

INSERT INTO `craft_usergroups` (`id`, `name`, `handle`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'Content managers','contentManagers','2017-05-15 08:57:38','2017-11-15 13:53:04','9b290b42-61a9-4a7e-9ecf-f52a2529b754');

/*!40000 ALTER TABLE `craft_usergroups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_usergroups_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_usergroups_users`;

CREATE TABLE `craft_usergroups_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_usergroups_users_groupId_userId_unq_idx` (`groupId`,`userId`),
  KEY `craft_usergroups_users_userId_fk` (`userId`),
  CONSTRAINT `craft_usergroups_users_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_usergroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_usergroups_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_usergroups_users` WRITE;
/*!40000 ALTER TABLE `craft_usergroups_users` DISABLE KEYS */;

INSERT INTO `craft_usergroups_users` (`id`, `groupId`, `userId`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,1,10,'2017-07-03 19:24:23','2017-07-03 19:24:23','50b5e546-0033-4a7c-bc2e-244a63be26e1');

/*!40000 ALTER TABLE `craft_usergroups_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_userpermissions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_userpermissions`;

CREATE TABLE `craft_userpermissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_userpermissions_name_unq_idx` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_userpermissions` WRITE;
/*!40000 ALTER TABLE `craft_userpermissions` DISABLE KEYS */;

INSERT INTO `craft_userpermissions` (`id`, `name`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'accesssitewhensystemisoff','2017-05-15 08:57:38','2017-05-15 08:57:38','e93964cc-97f6-4fbd-8171-63ca26e94d27'),
	(2,'accesscp','2017-05-15 08:57:38','2017-05-15 08:57:38','e74a49f3-b5b1-4c63-a845-a62240323e8c'),
	(3,'registerusers','2017-05-15 08:57:38','2017-05-15 08:57:38','6e902f41-5bf2-47f9-a1a8-5c5b5d4dc24c'),
	(4,'assignuserpermissions','2017-05-15 08:57:38','2017-05-15 08:57:38','b5ee7d38-baf4-4fb3-a444-ac2085f048be'),
	(5,'changeuseremails','2017-05-15 08:57:38','2017-05-15 08:57:38','ce185065-09a2-4fee-8f6c-52beded6d02b'),
	(6,'administrateusers','2017-05-15 08:57:38','2017-05-15 08:57:38','3e8bbd74-ad40-4337-bc4e-95821d35580c'),
	(7,'editusers','2017-05-15 08:57:38','2017-05-15 08:57:38','29d2d83d-270f-4ea3-b2c0-a4df6b01819c'),
	(8,'deleteusers','2017-05-15 08:57:38','2017-05-15 08:57:38','1d126a4f-9d56-4e8a-8e8d-63558d1ea63e'),
	(9,'publishentries:1','2017-05-15 08:57:38','2017-05-15 08:57:38','ca867f70-761a-4c7e-8714-4b9eb946fa7a'),
	(10,'publishpeerentrydrafts:1','2017-05-15 08:57:38','2017-05-15 08:57:38','03e93b0d-adec-417b-bd23-b2817622df65'),
	(11,'deletepeerentrydrafts:1','2017-05-15 08:57:38','2017-05-15 08:57:38','c3a526a2-b8e9-4ac5-8f7c-633f442f675c'),
	(12,'editpeerentrydrafts:1','2017-05-15 08:57:38','2017-05-15 08:57:38','d24748c0-5808-4ba7-b68e-7416edc294fd'),
	(13,'editentries:1','2017-05-15 08:57:38','2017-05-15 08:57:38','2ca17888-a8e7-437b-b85d-386a34678183'),
	(14,'createentries:2','2017-05-15 08:57:38','2017-05-15 08:57:38','c53c4663-4919-4cf7-94ef-b73fe7073f75'),
	(15,'publishentries:2','2017-05-15 08:57:38','2017-05-15 08:57:38','03502616-b83f-47ef-925a-96c5a27fb612'),
	(16,'deleteentries:2','2017-05-15 08:57:38','2017-05-15 08:57:38','c7de8e6c-04df-47d1-8d8b-ef344a784462'),
	(17,'publishpeerentries:2','2017-05-15 08:57:38','2017-05-15 08:57:38','ef5e35f1-86f2-4f25-86c4-6a866029f8b8'),
	(18,'deletepeerentries:2','2017-05-15 08:57:38','2017-05-15 08:57:38','2714a84f-5e9f-459d-9abf-fe61ac28de58'),
	(19,'editpeerentries:2','2017-05-15 08:57:38','2017-05-15 08:57:38','dd17a6c5-8ea9-4428-be0f-3191619fb109'),
	(20,'publishpeerentrydrafts:2','2017-05-15 08:57:38','2017-05-15 08:57:38','d80e0fbf-3e4a-460f-a984-864f85b63735'),
	(21,'deletepeerentrydrafts:2','2017-05-15 08:57:38','2017-05-15 08:57:38','3c3af7c3-4afa-493f-9b8e-d0504ef518e8'),
	(22,'editpeerentrydrafts:2','2017-05-15 08:57:38','2017-05-15 08:57:38','0b8b17f4-419b-445e-aa20-80a0b71d947b'),
	(23,'editentries:2','2017-05-15 08:57:38','2017-05-15 08:57:38','f9687630-4a1e-4d2a-b915-11ba01557e73'),
	(24,'uploadtoassetsource:1','2017-05-15 08:57:38','2017-05-15 08:57:38','25f1126c-91e0-4c33-9ccf-985765001b40'),
	(25,'createsubfoldersinassetsource:1','2017-05-15 08:57:38','2017-05-15 08:57:38','90e2d11a-ce6d-415c-a53c-a74a832a517d'),
	(26,'removefromassetsource:1','2017-05-15 08:57:38','2017-05-15 08:57:38','32d75030-8085-4de0-89f0-f131c171a804'),
	(27,'viewassetsource:1','2017-05-15 08:57:38','2017-05-15 08:57:38','f61a22f7-f1a7-4cdb-933d-210cb90aa36c'),
	(28,'accessplugin-translate','2017-06-12 07:31:22','2017-06-12 07:31:22','661cb84a-38a4-4a72-b262-a1c2308fbc11'),
	(29,'accessplugin-freeform','2017-07-03 12:31:44','2017-07-03 12:31:44','3e957fa2-eee7-4cbb-adb5-25ad19d01a1a'),
	(30,'accessplugin-amnav','2017-07-03 12:31:44','2017-07-03 12:31:44','21c17b24-6fac-434e-a841-a7434ab998e5'),
	(31,'createentries:3','2017-07-03 12:31:44','2017-07-03 12:31:44','74955514-a985-4867-ae20-8a43976683e0'),
	(32,'publishentries:3','2017-07-03 12:31:44','2017-07-03 12:31:44','b8470bba-5224-4687-95f8-81a2b8267c94'),
	(33,'deleteentries:3','2017-07-03 12:31:44','2017-07-03 12:31:44','b2d70919-f982-45b8-ac62-9520ffd6f6f0'),
	(34,'publishpeerentries:3','2017-07-03 12:31:44','2017-07-03 12:31:44','27c93419-04a2-4529-8666-7ed8548d23b0'),
	(35,'deletepeerentries:3','2017-07-03 12:31:44','2017-07-03 12:31:44','4bf9fbd4-fd57-49bc-833b-3a279c4d03d8'),
	(36,'editpeerentries:3','2017-07-03 12:31:44','2017-07-03 12:31:44','ca7039c1-f5b3-4dba-91ec-2110f6c2fc20'),
	(37,'publishpeerentrydrafts:3','2017-07-03 12:31:44','2017-07-03 12:31:44','7db342af-4219-46a3-9565-b851aa2252df'),
	(38,'deletepeerentrydrafts:3','2017-07-03 12:31:44','2017-07-03 12:31:44','c3a195b1-4038-4165-8e32-050b1e66ff80'),
	(39,'editpeerentrydrafts:3','2017-07-03 12:31:44','2017-07-03 12:31:44','c208a806-295f-4a04-b64c-e5e98d69b48d'),
	(40,'editentries:3','2017-07-03 12:31:44','2017-07-03 12:31:44','06416967-da5a-4f0a-bc0c-64f4de550aeb'),
	(41,'publishentries:4','2017-07-03 12:31:44','2017-07-03 12:31:44','59791921-9754-4d44-95d8-89bb3e657736'),
	(42,'publishpeerentrydrafts:4','2017-07-03 12:31:44','2017-07-03 12:31:44','4ce78a6b-c6df-49de-b2c6-6f0893603bd3'),
	(43,'deletepeerentrydrafts:4','2017-07-03 12:31:44','2017-07-03 12:31:44','18c7ee53-9277-42c8-99c2-5d5e32c9f1a6'),
	(44,'editpeerentrydrafts:4','2017-07-03 12:31:44','2017-07-03 12:31:44','c24d859e-df48-40f8-8eff-9b0692f4f867'),
	(45,'editentries:4','2017-07-03 12:31:44','2017-07-03 12:31:44','36c17ee5-118f-4c4f-be48-8bbc5599ef88'),
	(46,'freeform-submissionsmanage','2017-07-03 12:31:44','2017-07-03 12:31:44','f85855ac-d33e-4476-bf3a-7cd383e5a674'),
	(47,'freeform-submissionsaccess','2017-07-03 12:31:44','2017-07-03 12:31:44','1ef128f9-9e78-4a2f-bfec-a018cec2fbd7'),
	(48,'freeform-formsmanage','2017-07-03 12:31:44','2017-07-03 12:31:44','5293f77f-5eaf-48c2-bc34-dd3ef8ac2658'),
	(49,'freeform-formsaccess','2017-07-03 12:31:44','2017-07-03 12:31:44','abd6be52-6888-48b2-b395-58a1f12ebf34'),
	(50,'freeform-fieldsmanage','2017-07-03 12:31:44','2017-07-03 12:31:44','2a0b90d4-9229-4e2a-a266-997647fd509c'),
	(51,'freeform-fieldsaccess','2017-07-03 12:31:44','2017-07-03 12:31:44','fd31326d-3901-4005-9a47-6a964275853b'),
	(52,'freeform-notificationsmanage','2017-07-03 12:31:44','2017-07-03 12:31:44','9f66986f-afab-46fd-a2ae-a5bac26f6fd1'),
	(53,'freeform-notificationsaccess','2017-07-03 12:31:44','2017-07-03 12:31:44','df78818d-15a8-4c8d-9c9d-eefca60d9c53'),
	(54,'editglobalset:8','2017-07-03 19:25:18','2017-07-03 19:25:18','03be6c03-314a-47f9-823b-c5a4e1c01e58'),
	(55,'freeform-submissionsmanage:1','2017-07-03 19:25:18','2017-07-03 19:25:18','9fd1924c-4b85-4a72-89cd-8e87c3182380'),
	(56,'publishentries:6','2017-07-04 19:49:04','2017-07-04 19:49:04','ef40fea0-6b0c-4070-b5e9-7c0663a7db69'),
	(57,'publishpeerentrydrafts:6','2017-07-04 19:49:04','2017-07-04 19:49:04','3739d3fa-2219-4968-bdae-cbaafebe7958'),
	(58,'deletepeerentrydrafts:6','2017-07-04 19:49:04','2017-07-04 19:49:04','ea71db1d-550b-42bf-bca6-2cea87fd87c8'),
	(59,'editpeerentrydrafts:6','2017-07-04 19:49:04','2017-07-04 19:49:04','d6656759-0943-4d63-a312-5efc8483f9ba'),
	(60,'editentries:6','2017-07-04 19:49:04','2017-07-04 19:49:04','92ed70a4-cd6f-4e8a-b1fe-77fbe798f56f'),
	(61,'publishentries:5','2017-07-04 19:49:04','2017-07-04 19:49:04','da41b3d1-7ea7-419c-a003-bbd08837b109'),
	(62,'publishpeerentrydrafts:5','2017-07-04 19:49:04','2017-07-04 19:49:04','74aab7fc-7db7-4bdc-bf99-da144fe626be'),
	(63,'deletepeerentrydrafts:5','2017-07-04 19:49:04','2017-07-04 19:49:04','673393ff-9bda-48fa-99b9-357b8d94d3b4'),
	(64,'editpeerentrydrafts:5','2017-07-04 19:49:04','2017-07-04 19:49:04','e234b611-a9d6-4804-ae52-bc5b65ed36cc'),
	(65,'editentries:5','2017-07-04 19:49:04','2017-07-04 19:49:04','ced693e7-24e7-4a32-8158-7c07c2d9e083'),
	(66,'editglobalset:11','2017-07-04 19:49:04','2017-07-04 19:49:04','4ff586f1-d9ec-423a-a186-f1c4c4d88c3e'),
	(67,'assignusergroups','2017-11-15 13:50:19','2017-11-15 13:50:19','b62fb240-7395-4c4e-bb0d-050360b0810f'),
	(68,'assignusergroup:1','2017-11-15 13:50:19','2017-11-15 13:50:19','9ed02cee-fa80-4aa4-b539-4f0f4b3f7e6c'),
	(69,'createentries:7','2017-11-15 13:53:04','2017-11-15 13:53:04','317b1c38-7984-4e29-a970-f1b87fd3c8a4'),
	(70,'publishentries:7','2017-11-15 13:53:04','2017-11-15 13:53:04','5bd4938a-85b3-423e-8740-62c882347d01'),
	(71,'deleteentries:7','2017-11-15 13:53:04','2017-11-15 13:53:04','782e8c5a-e78e-4fb3-9963-9d3ad2154d4d'),
	(72,'publishpeerentries:7','2017-11-15 13:53:04','2017-11-15 13:53:04','9eac85fc-53f0-4759-b1ca-1cf31ce94b9e'),
	(73,'deletepeerentries:7','2017-11-15 13:53:04','2017-11-15 13:53:04','7f5406aa-6057-4e80-a707-63067f083d19'),
	(74,'editpeerentries:7','2017-11-15 13:53:04','2017-11-15 13:53:04','0ec393ff-5ea8-461b-8692-95c5a107908e'),
	(75,'publishpeerentrydrafts:7','2017-11-15 13:53:04','2017-11-15 13:53:04','617f546c-efd4-4ebf-8ea9-b902e331ee65'),
	(76,'deletepeerentrydrafts:7','2017-11-15 13:53:04','2017-11-15 13:53:04','d7eec927-63fd-48d6-81c1-f20864b5038f'),
	(77,'editpeerentrydrafts:7','2017-11-15 13:53:04','2017-11-15 13:53:04','d8e7933f-f9e7-4399-9068-2315aad51682'),
	(78,'editentries:7','2017-11-15 13:53:04','2017-11-15 13:53:04','6b6592c3-f9d7-4ea3-ab6b-f5e14baffeca');

/*!40000 ALTER TABLE `craft_userpermissions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_userpermissions_usergroups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_userpermissions_usergroups`;

CREATE TABLE `craft_userpermissions_usergroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissionId` int(11) NOT NULL,
  `groupId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_userpermissions_usergroups_permissionId_groupId_unq_idx` (`permissionId`,`groupId`),
  KEY `craft_userpermissions_usergroups_groupId_fk` (`groupId`),
  CONSTRAINT `craft_userpermissions_usergroups_groupId_fk` FOREIGN KEY (`groupId`) REFERENCES `craft_usergroups` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_userpermissions_usergroups_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `craft_userpermissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_userpermissions_usergroups` WRITE;
/*!40000 ALTER TABLE `craft_userpermissions_usergroups` DISABLE KEYS */;

INSERT INTO `craft_userpermissions_usergroups` (`id`, `permissionId`, `groupId`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(273,1,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','647a1de2-acba-43c8-85f7-b2b04cdd9686'),
	(274,29,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','c6a6e3f8-89f5-4fcc-ae60-d9ad401ed3ea'),
	(275,30,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','a725f222-8096-4611-948f-228548cbf18d'),
	(276,28,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','3ede3741-4a1f-4260-b726-ae8dfde8982d'),
	(277,2,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','1b0ec381-7274-4e8e-853d-6c84868a32aa'),
	(278,3,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','93b51dcf-caf0-425c-a85d-ef4971485386'),
	(279,5,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','09d4dbd5-11e9-4882-a515-b2c8444815fd'),
	(280,6,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','c86dd297-0c5c-4297-b5b7-695d8bcfc69e'),
	(281,4,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','0e97aa5b-1d57-478e-9659-ed895cbd0e0e'),
	(282,68,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','f59e750f-e182-4a63-b675-806acacd3c10'),
	(283,67,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','d20b3fa9-027a-4478-b5d6-64ef6916f343'),
	(284,7,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','93448e86-0aa9-470c-b44c-8cbb960b492f'),
	(285,8,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','2d733c42-209c-4b16-ba82-202902b10d59'),
	(286,9,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','06f7c7f0-0a3d-4389-a90a-8f5c48bc9509'),
	(287,10,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','2249da6d-db72-4fff-b8a8-76d5c0c79701'),
	(288,11,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','5e9c5ee8-3711-4038-801f-d53bc2bba101'),
	(289,12,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','8cba5349-8c0e-4813-b86d-1501a32f72d3'),
	(290,13,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','b2f4fa51-1c86-41d4-9cb9-2f9849f7b366'),
	(291,31,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','6667fa70-6acb-4a5b-8767-4c3e25b45f35'),
	(292,32,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','42258177-0e89-498d-a01c-267870068647'),
	(293,33,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','f5a29dc6-decb-42f0-827e-b1982481c959'),
	(294,34,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','12a54bfa-ff9a-4daa-b495-36578d448746'),
	(295,35,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','29987b46-8a46-4f53-a14a-b684455c2fa0'),
	(296,36,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','c0b82c9a-c580-42b8-bd3c-a466b9d1bc3a'),
	(297,37,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','9a039aaf-dbbd-4e67-a1ed-43e488d5d8c9'),
	(298,38,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','2b57b3ff-1d50-4dfd-8ecc-0e1f86ee85e4'),
	(299,39,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','ab7bf72a-a7ff-4076-933c-1f7ef6e811d4'),
	(300,40,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','9f7c5357-5ae6-4e33-a799-ab3c80847d0b'),
	(301,41,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','7cd2ab2a-9b95-4cc2-ac8a-3f39c368dc50'),
	(302,42,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','770a6ba8-25d8-4ba1-8f0d-bfd006629df1'),
	(303,43,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','94a0a2b7-b6f3-4022-bb25-9cb8ae27ab53'),
	(304,44,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','7babdb2c-dd37-46e3-9a0a-958ee467e5f5'),
	(305,45,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','13527019-19a2-4ffc-b1e6-3ca34977cfa7'),
	(306,69,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','4d75b448-1991-4db9-bcae-c2a0856987d1'),
	(307,70,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','31eaeb54-c145-46a5-8b7a-6cfd1a0c3985'),
	(308,71,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','daf809a7-0a67-467b-8090-3cac33263cfe'),
	(309,72,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','e14d1e65-baa4-4845-bf22-e229c92775dd'),
	(310,73,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','73f7b1dc-d3d0-4d30-8f8e-15ea63e20532'),
	(311,74,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','35944a51-ae71-49af-89a5-e6329273c953'),
	(312,75,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','ea1d1e02-4792-44b4-92a6-1e4e120b5f57'),
	(313,76,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','8dcc369b-c63f-49f5-8d17-e9635f4d68fb'),
	(314,77,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','71e149ac-b0dc-4734-9780-f7bef8d945e8'),
	(315,78,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','9877b8cb-75da-44af-b32b-98af5b8b4560'),
	(316,56,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','1db7a5ec-8782-4eb2-8d10-d47f5c33fed4'),
	(317,57,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','aea7c21a-da7a-4977-9972-b3ae3d925b27'),
	(318,58,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','8e08d5c0-6abe-4298-9731-0353af45e9f1'),
	(319,59,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','f8e9312d-a6c7-4a4f-9ff9-a87b5e9f3644'),
	(320,60,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','c1f7a9e6-2a90-42dd-a5d7-5e914dd1cf68'),
	(321,61,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','40615937-6ecd-49e2-ad5f-c00d1384df41'),
	(322,62,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','23b10bf3-79b8-4b32-a23b-ad2a0e310dc8'),
	(323,63,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','f9fa5c52-d8de-4c69-9dc6-bfaa484b9026'),
	(324,64,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','de308cb7-615b-4e72-b89d-13a1dfa03c5d'),
	(325,65,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','55da2fd9-30cc-4522-a056-77ba6a992fb8'),
	(326,54,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','8b1cb1fd-45b1-4590-b577-c699c370ae19'),
	(327,66,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','2a293108-fcf6-42ec-bdfa-02b749fc96b5'),
	(328,24,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','05b84e47-c76b-41c9-a83a-2f502e2e2b38'),
	(329,25,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','92b2f6af-8111-4ad9-ab14-c3860cdbec52'),
	(330,26,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','834e1254-720a-4306-9684-3e854990a340'),
	(331,27,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','cd4ad973-6510-4659-96db-05fbf883b16f'),
	(332,46,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','0c3c7570-8d89-4013-b308-d5f695559d4d'),
	(333,55,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','70182b79-51ae-4da2-ad9e-984db9d89109'),
	(334,47,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','1752caae-9ddf-449e-b91d-0da3dd354861'),
	(335,48,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','ac1fca1b-bcfd-4daa-b99e-3d21094bda5d'),
	(336,49,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','8055f3e1-cd88-4012-a830-9a0ad5508e39'),
	(337,50,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','3873757f-40ef-4cef-b381-31e9da92f245'),
	(338,51,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','21f4fdaa-9d5a-4196-934b-e064a0ead61f'),
	(339,52,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','e74cb138-4ec0-446c-b7ad-524d3375ff99'),
	(340,53,1,'2017-11-15 13:53:04','2017-11-15 13:53:04','fdedcfb3-ffc0-43f8-a205-4802ffcb9706');

/*!40000 ALTER TABLE `craft_userpermissions_usergroups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_userpermissions_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_userpermissions_users`;

CREATE TABLE `craft_userpermissions_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `permissionId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_userpermissions_users_permissionId_userId_unq_idx` (`permissionId`,`userId`),
  KEY `craft_userpermissions_users_userId_fk` (`userId`),
  CONSTRAINT `craft_userpermissions_users_permissionId_fk` FOREIGN KEY (`permissionId`) REFERENCES `craft_userpermissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_userpermissions_users_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



# Dump of table craft_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_users`;

CREATE TABLE `craft_users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `firstName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` char(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `preferredLocale` char(12) COLLATE utf8_unicode_ci DEFAULT NULL,
  `weekStartDay` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `admin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `client` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `suspended` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pending` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `archived` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lastLoginDate` datetime DEFAULT NULL,
  `lastLoginAttemptIPAddress` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `invalidLoginWindowStart` datetime DEFAULT NULL,
  `invalidLoginCount` tinyint(4) unsigned DEFAULT NULL,
  `lastInvalidLoginDate` datetime DEFAULT NULL,
  `lockoutDate` datetime DEFAULT NULL,
  `verificationCode` char(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verificationCodeIssuedDate` datetime DEFAULT NULL,
  `unverifiedEmail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `passwordResetRequired` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lastPasswordChangeDate` datetime DEFAULT NULL,
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `craft_users_username_unq_idx` (`username`),
  UNIQUE KEY `craft_users_email_unq_idx` (`email`),
  KEY `craft_users_verificationCode_idx` (`verificationCode`),
  KEY `craft_users_uid_idx` (`uid`),
  KEY `craft_users_preferredLocale_fk` (`preferredLocale`),
  CONSTRAINT `craft_users_id_fk` FOREIGN KEY (`id`) REFERENCES `craft_elements` (`id`) ON DELETE CASCADE,
  CONSTRAINT `craft_users_preferredLocale_fk` FOREIGN KEY (`preferredLocale`) REFERENCES `craft_locales` (`locale`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_users` WRITE;
/*!40000 ALTER TABLE `craft_users` DISABLE KEYS */;

INSERT INTO `craft_users` (`id`, `username`, `photo`, `firstName`, `lastName`, `email`, `password`, `preferredLocale`, `weekStartDay`, `admin`, `client`, `locked`, `suspended`, `pending`, `archived`, `lastLoginDate`, `lastLoginAttemptIPAddress`, `invalidLoginWindowStart`, `invalidLoginCount`, `lastInvalidLoginDate`, `lockoutDate`, `verificationCode`, `verificationCodeIssuedDate`, `unverifiedEmail`, `passwordResetRequired`, `lastPasswordChangeDate`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,'support@statik.be',NULL,'','','support@statik.be','$2y$13$3PE2FXLlcu1goZkaXc9HzOpg0Zu4xSGUIh4mEnbAFHR.NfmJEQGji',NULL,1,1,0,0,0,0,0,'2018-08-02 07:23:48','::1',NULL,NULL,'2018-06-14 07:28:06',NULL,NULL,NULL,NULL,0,'2018-06-14 07:31:33','2017-03-09 09:09:42','2018-08-02 07:23:48','e9a9784a-a331-4813-b800-c3a7366e0e22'),
	(10,'cm',NULL,'','','shared+craft@statik.be',NULL,NULL,1,0,0,0,0,0,0,'2017-07-04 19:50:28','81.164.188.190',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,'2017-07-03 19:24:23','2017-07-04 19:50:28','763512df-39d2-4d7c-803d-7d9dfd2d410f');

/*!40000 ALTER TABLE `craft_users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table craft_widgets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `craft_widgets`;

CREATE TABLE `craft_widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `type` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `sortOrder` smallint(6) unsigned DEFAULT NULL,
  `colspan` tinyint(4) unsigned DEFAULT NULL,
  `settings` text COLLATE utf8_unicode_ci,
  `enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `dateCreated` datetime NOT NULL,
  `dateUpdated` datetime NOT NULL,
  `uid` char(36) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `craft_widgets_userId_fk` (`userId`),
  CONSTRAINT `craft_widgets_userId_fk` FOREIGN KEY (`userId`) REFERENCES `craft_users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

LOCK TABLES `craft_widgets` WRITE;
/*!40000 ALTER TABLE `craft_widgets` DISABLE KEYS */;

INSERT INTO `craft_widgets` (`id`, `userId`, `type`, `sortOrder`, `colspan`, `settings`, `enabled`, `dateCreated`, `dateUpdated`, `uid`)
VALUES
	(1,1,'RecentEntries',1,NULL,NULL,1,'2017-03-09 09:12:20','2017-03-09 09:12:20','add7d87e-635f-4901-b2b8-94dc32f57644'),
	(2,1,'GetHelp',2,NULL,NULL,1,'2017-03-09 09:12:20','2017-03-09 09:12:20','24e92990-554d-42d5-aab7-ecc79a78ba9d'),
	(3,1,'Updates',3,NULL,NULL,1,'2017-03-09 09:12:20','2017-03-09 09:12:20','f37b0596-21d9-47a4-ac8d-e5b42ddc6b94'),
	(4,1,'Feed',4,NULL,'{\"url\":\"https:\\/\\/craftcms.com\\/news.rss\",\"title\":\"Craft News\"}',1,'2017-03-09 09:12:20','2017-03-09 09:12:20','5b870815-572b-451f-bfc6-2320709fc38f'),
	(5,10,'RecentEntries',1,NULL,NULL,1,'2017-07-04 19:49:25','2017-07-04 19:49:25','8e33bc17-2679-4f8e-bea2-d9d64782e140'),
	(6,10,'Feed',2,NULL,'{\"url\":\"https:\\/\\/craftcms.com\\/news.rss\",\"title\":\"Craft News\"}',1,'2017-07-04 19:49:25','2017-07-04 19:49:25','34d9f7b5-e3c7-4071-be7e-688e1c123ede');

/*!40000 ALTER TABLE `craft_widgets` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
