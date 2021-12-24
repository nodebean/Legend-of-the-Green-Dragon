-- MySQL dump 10.16  Distrib 10.1.44-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: lotgd
-- ------------------------------------------------------
-- Server version	10.1.44-MariaDB-0+deb9u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `acctid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) NOT NULL,
  `sex` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `specialty` varchar(20) NOT NULL,
  `experience` int(11) unsigned NOT NULL DEFAULT '0',
  `gold` int(11) unsigned NOT NULL DEFAULT '0',
  `weapon` varchar(50) NOT NULL DEFAULT 'Fists',
  `armor` varchar(50) NOT NULL DEFAULT 'T-Shirt',
  `seenmaster` int(4) unsigned NOT NULL DEFAULT '0',
  `level` int(11) unsigned NOT NULL DEFAULT '1',
  `defense` int(11) unsigned NOT NULL DEFAULT '1',
  `attack` int(11) unsigned NOT NULL DEFAULT '1',
  `alive` int(11) unsigned NOT NULL DEFAULT '1',
  `goldinbank` int(11) NOT NULL DEFAULT '0',
  `marriedto` int(11) unsigned NOT NULL DEFAULT '0',
  `spirits` int(4) NOT NULL DEFAULT '0',
  `laston` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hitpoints` int(11) NOT NULL DEFAULT '10',
  `maxhitpoints` int(11) unsigned NOT NULL DEFAULT '10',
  `gems` int(11) unsigned NOT NULL DEFAULT '0',
  `weaponvalue` int(11) unsigned NOT NULL DEFAULT '0',
  `armorvalue` int(11) unsigned NOT NULL DEFAULT '0',
  `location` varchar(25) NOT NULL DEFAULT 'Degolburg',
  `turns` int(11) unsigned NOT NULL DEFAULT '10',
  `title` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `badguy` text NOT NULL,
  `companions` text NOT NULL,
  `allowednavs` mediumtext NOT NULL,
  `loggedin` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `resurrections` int(11) unsigned NOT NULL DEFAULT '0',
  `superuser` int(11) unsigned NOT NULL DEFAULT '1',
  `weapondmg` int(11) NOT NULL DEFAULT '0',
  `armordef` int(11) NOT NULL DEFAULT '0',
  `age` int(11) unsigned NOT NULL DEFAULT '0',
  `charm` int(11) unsigned NOT NULL DEFAULT '0',
  `specialinc` varchar(50) NOT NULL,
  `specialmisc` text NOT NULL,
  `login` varchar(50) NOT NULL,
  `lastmotd` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `playerfights` int(11) unsigned NOT NULL DEFAULT '3',
  `lasthit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `seendragon` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `dragonkills` int(11) unsigned NOT NULL DEFAULT '0',
  `locked` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `restorepage` varchar(128) DEFAULT NULL,
  `hashorse` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `bufflist` text NOT NULL,
  `gentime` double unsigned NOT NULL DEFAULT '0',
  `gentimecount` int(11) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(40) NOT NULL,
  `uniqueid` varchar(32) DEFAULT NULL,
  `dragonpoints` text NOT NULL,
  `boughtroomtoday` tinyint(4) NOT NULL DEFAULT '0',
  `emailaddress` varchar(128) NOT NULL,
  `emailvalidation` varchar(32) NOT NULL,
  `sentnotice` int(11) NOT NULL DEFAULT '0',
  `prefs` text NOT NULL,
  `pvpflag` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `transferredtoday` int(11) unsigned NOT NULL DEFAULT '0',
  `soulpoints` int(11) unsigned NOT NULL DEFAULT '0',
  `gravefights` int(11) unsigned NOT NULL DEFAULT '0',
  `hauntedby` varchar(50) NOT NULL,
  `deathpower` int(11) unsigned NOT NULL DEFAULT '0',
  `gensize` int(11) unsigned NOT NULL DEFAULT '0',
  `recentcomments` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `donation` int(11) unsigned NOT NULL DEFAULT '0',
  `donationspent` int(11) unsigned NOT NULL DEFAULT '0',
  `donationconfig` text NOT NULL,
  `referer` int(11) unsigned NOT NULL DEFAULT '0',
  `refererawarded` tinyint(1) NOT NULL DEFAULT '0',
  `bio` varchar(255) NOT NULL,
  `race` varchar(25) NOT NULL DEFAULT '0',
  `biotime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `banoverride` tinyint(4) DEFAULT '0',
  `buffbackup` text,
  `amountouttoday` int(11) unsigned NOT NULL DEFAULT '0',
  `pk` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `dragonage` int(11) unsigned NOT NULL DEFAULT '0',
  `bestdragonage` int(11) unsigned NOT NULL DEFAULT '0',
  `ctitle` varchar(25) NOT NULL,
  `beta` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `slaydragon` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `fedmount` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `regdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `clanid` int(11) unsigned NOT NULL DEFAULT '0',
  `clanrank` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `clanjoindate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`acctid`),
  KEY `name` (`name`),
  KEY `level` (`level`),
  KEY `login` (`login`),
  KEY `alive` (`alive`),
  KEY `laston` (`laston`),
  KEY `lasthit` (`lasthit`),
  KEY `emailaddress` (`emailaddress`),
  KEY `clanid` (`clanid`),
  KEY `locked` (`locked`,`loggedin`,`laston`),
  KEY `referer` (`referer`),
  KEY `uniqueid` (`uniqueid`),
  KEY `emailvalidation` (`emailvalidation`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `accounts_output`
--

DROP TABLE IF EXISTS `accounts_output`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts_output` (
  `acctid` int(11) unsigned NOT NULL,
  `output` mediumtext NOT NULL,
  PRIMARY KEY (`acctid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `armor`
--

DROP TABLE IF EXISTS `armor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `armor` (
  `armorid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `armorname` varchar(128) DEFAULT NULL,
  `value` int(11) NOT NULL DEFAULT '0',
  `defense` int(11) NOT NULL DEFAULT '1',
  `level` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`armorid`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bans`
--

DROP TABLE IF EXISTS `bans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bans` (
  `ipfilter` varchar(15) NOT NULL,
  `uniqueid` varchar(32) NOT NULL,
  `banexpire` datetime DEFAULT NULL,
  `banreason` text NOT NULL,
  `banner` varchar(50) NOT NULL,
  `lasthit` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `banexpire` (`banexpire`),
  KEY `uniqueid` (`uniqueid`),
  KEY `ipfilter` (`ipfilter`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `clans`
--

DROP TABLE IF EXISTS `clans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clans` (
  `clanid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `clanname` varchar(255) NOT NULL,
  `clanshort` varchar(5) NOT NULL,
  `clanmotd` text,
  `clandesc` text,
  `motdauthor` int(11) unsigned NOT NULL DEFAULT '0',
  `descauthor` int(11) unsigned NOT NULL DEFAULT '0',
  `customsay` varchar(15) NOT NULL,
  PRIMARY KEY (`clanid`),
  KEY `clanname` (`clanname`),
  KEY `clanshort` (`clanshort`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `commentary`
--

DROP TABLE IF EXISTS `commentary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commentary` (
  `commentid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `section` varchar(20) DEFAULT NULL,
  `author` int(11) unsigned NOT NULL DEFAULT '0',
  `comment` varchar(200) NOT NULL,
  `postdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`commentid`),
  KEY `section` (`section`),
  KEY `postdate` (`postdate`)
) ENGINE=InnoDB AUTO_INCREMENT=359 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `companions`
--

DROP TABLE IF EXISTS `companions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `companions` (
  `companionid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `attack` int(6) unsigned NOT NULL DEFAULT '1',
  `attackperlevel` int(6) unsigned NOT NULL DEFAULT '0',
  `defense` int(6) unsigned NOT NULL DEFAULT '1',
  `defenseperlevel` int(6) unsigned NOT NULL DEFAULT '0',
  `maxhitpoints` int(6) unsigned NOT NULL DEFAULT '10',
  `maxhitpointsperlevel` int(6) unsigned NOT NULL DEFAULT '10',
  `abilities` text NOT NULL,
  `cannotdie` tinyint(4) NOT NULL DEFAULT '0',
  `cannotbehealed` tinyint(4) NOT NULL DEFAULT '1',
  `companionlocation` varchar(25) NOT NULL DEFAULT 'all',
  `companionactive` tinyint(25) NOT NULL DEFAULT '1',
  `companioncostdks` tinyint(4) NOT NULL DEFAULT '0',
  `companioncostgems` int(6) NOT NULL DEFAULT '0',
  `companioncostgold` int(10) NOT NULL DEFAULT '0',
  `jointext` text NOT NULL,
  `dyingtext` varchar(255) NOT NULL,
  `allowinshades` tinyint(4) NOT NULL DEFAULT '0',
  `allowinpvp` tinyint(4) NOT NULL DEFAULT '0',
  `allowintrain` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`companionid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `creatures`
--

DROP TABLE IF EXISTS `creatures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creatures` (
  `creatureid` int(11) NOT NULL AUTO_INCREMENT,
  `creaturename` varchar(50) DEFAULT NULL,
  `creaturelevel` int(11) DEFAULT NULL,
  `creatureweapon` varchar(50) DEFAULT NULL,
  `creaturelose` varchar(120) DEFAULT NULL,
  `creaturewin` varchar(120) DEFAULT NULL,
  `creaturegold` int(11) DEFAULT NULL,
  `creatureexp` int(11) DEFAULT NULL,
  `creaturehealth` int(11) DEFAULT NULL,
  `creatureattack` int(11) DEFAULT NULL,
  `creaturedefense` int(11) DEFAULT NULL,
  `creatureaiscript` text,
  `createdby` varchar(50) DEFAULT NULL,
  `forest` tinyint(4) NOT NULL DEFAULT '0',
  `graveyard` tinyint(4) NOT NULL DEFAULT '0',
  `oldcreatureexp` int(11) DEFAULT NULL,
  PRIMARY KEY (`creatureid`),
  KEY `creaturelevel` (`creaturelevel`)
) ENGINE=InnoDB AUTO_INCREMENT=321 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `debuglog`
--

DROP TABLE IF EXISTS `debuglog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `debuglog` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `actor` int(11) unsigned DEFAULT NULL,
  `target` int(11) unsigned DEFAULT NULL,
  `message` text NOT NULL,
  `field` varchar(20) NOT NULL,
  `value` float(9,2) NOT NULL DEFAULT '0.00',
  PRIMARY KEY (`id`),
  KEY `date` (`date`),
  KEY `field` (`actor`,`field`)
) ENGINE=InnoDB AUTO_INCREMENT=6555 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `drinks`
--

DROP TABLE IF EXISTS `drinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `drinks` (
  `drinkid` smallint(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL DEFAULT '',
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `costperlevel` int(11) NOT NULL DEFAULT '0',
  `hpchance` tinyint(4) NOT NULL DEFAULT '0',
  `turnchance` tinyint(4) NOT NULL DEFAULT '0',
  `alwayshp` tinyint(4) NOT NULL DEFAULT '0',
  `alwaysturn` tinyint(4) NOT NULL DEFAULT '0',
  `drunkeness` tinyint(4) NOT NULL DEFAULT '0',
  `harddrink` tinyint(4) NOT NULL DEFAULT '0',
  `hpmin` int(11) NOT NULL DEFAULT '0',
  `hpmax` int(11) NOT NULL DEFAULT '0',
  `hppercent` int(11) NOT NULL DEFAULT '0',
  `turnmin` int(11) NOT NULL DEFAULT '0',
  `turnmax` int(11) NOT NULL DEFAULT '0',
  `remarks` text NOT NULL,
  `buffname` varchar(50) NOT NULL DEFAULT '',
  `buffrounds` tinyint(4) NOT NULL DEFAULT '0',
  `buffroundmsg` varchar(75) NOT NULL DEFAULT '',
  `buffwearoff` varchar(75) NOT NULL DEFAULT '',
  `buffatkmod` text NOT NULL,
  `buffdefmod` text NOT NULL,
  `buffdmgmod` text NOT NULL,
  `buffdmgshield` text NOT NULL,
  `buffeffectfailmsg` varchar(255) NOT NULL DEFAULT '',
  `buffeffectnodmgmsg` varchar(255) NOT NULL DEFAULT '',
  `buffeffectmsg` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`drinkid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `faillog`
--

DROP TABLE IF EXISTS `faillog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `faillog` (
  `eventid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post` tinytext NOT NULL,
  `ip` varchar(40) NOT NULL,
  `acctid` int(11) unsigned DEFAULT NULL,
  `id` varchar(32) NOT NULL,
  PRIMARY KEY (`eventid`),
  KEY `date` (`date`),
  KEY `acctid` (`acctid`),
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gamelog`
--

DROP TABLE IF EXISTS `gamelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gamelog` (
  `logid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `message` text NOT NULL,
  `category` varchar(50) NOT NULL,
  `filed` tinyint(4) NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `who` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`logid`),
  KEY `date` (`category`,`date`)
) ENGINE=InnoDB AUTO_INCREMENT=402 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `logdnet`
--

DROP TABLE IF EXISTS `logdnet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logdnet` (
  `serverid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `address` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `priority` double NOT NULL DEFAULT '100',
  `lastupdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` varchar(255) NOT NULL DEFAULT 'Unknown',
  `admin` varchar(255) NOT NULL DEFAULT 'unknown',
  `lastping` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `recentips` varchar(255) NOT NULL,
  `count` int(11) unsigned NOT NULL DEFAULT '0',
  `lang` varchar(20) NOT NULL,
  PRIMARY KEY (`serverid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `logdnetbans`
--

DROP TABLE IF EXISTS `logdnetbans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logdnetbans` (
  `banid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `bantype` varchar(20) NOT NULL,
  `banvalue` varchar(255) NOT NULL,
  PRIMARY KEY (`banid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mail`
--

DROP TABLE IF EXISTS `mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail` (
  `messageid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `msgfrom` varchar(255) NOT NULL DEFAULT '0',
  `msgto` int(11) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `sent` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `seen` tinyint(1) NOT NULL DEFAULT '0',
  `originator` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`messageid`),
  KEY `msgto` (`msgto`),
  KEY `seen` (`seen`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `masters`
--

DROP TABLE IF EXISTS `masters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `masters` (
  `creatureid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `creaturename` varchar(50) DEFAULT NULL,
  `creaturelevel` int(11) DEFAULT NULL,
  `creatureweapon` varchar(50) DEFAULT NULL,
  `creaturelose` varchar(120) DEFAULT NULL,
  `creaturewin` varchar(120) DEFAULT NULL,
  `creaturegold` int(11) DEFAULT NULL,
  `creatureexp` int(11) DEFAULT NULL,
  `creaturehealth` int(11) DEFAULT NULL,
  `creatureattack` int(11) DEFAULT NULL,
  `creaturedefense` int(11) DEFAULT NULL,
  PRIMARY KEY (`creatureid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `moderatedcomments`
--

DROP TABLE IF EXISTS `moderatedcomments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `moderatedcomments` (
  `modid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `comment` text,
  `moderator` int(11) unsigned NOT NULL DEFAULT '0',
  `moddate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`modid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `module_event_hooks`
--

DROP TABLE IF EXISTS `module_event_hooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_event_hooks` (
  `event_type` varchar(20) NOT NULL,
  `modulename` varchar(50) NOT NULL,
  `event_chance` text NOT NULL,
  KEY `modulename` (`modulename`),
  KEY `event_type` (`event_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `module_hooks`
--

DROP TABLE IF EXISTS `module_hooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_hooks` (
  `modulename` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `function` varchar(50) NOT NULL,
  `whenactive` text NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '50',
  PRIMARY KEY (`modulename`,`location`,`function`),
  KEY `location` (`location`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `module_objprefs`
--

DROP TABLE IF EXISTS `module_objprefs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_objprefs` (
  `modulename` varchar(50) NOT NULL,
  `objtype` varchar(50) NOT NULL,
  `setting` varchar(50) NOT NULL,
  `objid` int(11) unsigned NOT NULL DEFAULT '0',
  `value` text,
  PRIMARY KEY (`modulename`,`objtype`,`setting`,`objid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `module_settings`
--

DROP TABLE IF EXISTS `module_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_settings` (
  `modulename` varchar(50) NOT NULL,
  `setting` varchar(50) NOT NULL,
  `value` text,
  PRIMARY KEY (`modulename`,`setting`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `module_userprefs`
--

DROP TABLE IF EXISTS `module_userprefs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `module_userprefs` (
  `modulename` varchar(50) NOT NULL,
  `setting` varchar(50) NOT NULL,
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `value` text,
  PRIMARY KEY (`modulename`,`setting`,`userid`),
  KEY `modulename` (`modulename`,`userid`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `modules`
--

DROP TABLE IF EXISTS `modules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modules` (
  `modulename` varchar(50) NOT NULL,
  `formalname` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `moduleauthor` varchar(255) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `filename` varchar(255) NOT NULL,
  `installdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `installedby` varchar(50) NOT NULL,
  `filemoddate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `type` tinyint(4) NOT NULL DEFAULT '0',
  `extras` text,
  `category` varchar(50) NOT NULL,
  `infokeys` text NOT NULL,
  `version` varchar(10) DEFAULT NULL,
  `download` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`modulename`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `motd`
--

DROP TABLE IF EXISTS `motd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `motd` (
  `motditem` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `motdtitle` varchar(200) DEFAULT NULL,
  `motdbody` text,
  `motddate` datetime DEFAULT NULL,
  `motdtype` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `motdauthor` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`motditem`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mounts`
--

DROP TABLE IF EXISTS `mounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mounts` (
  `mountid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `mountname` varchar(50) NOT NULL,
  `mountdesc` text,
  `mountcategory` varchar(50) NOT NULL,
  `mountbuff` text,
  `mountcostgems` int(11) unsigned NOT NULL DEFAULT '0',
  `mountcostgold` int(11) unsigned NOT NULL DEFAULT '0',
  `mountactive` int(11) unsigned NOT NULL DEFAULT '1',
  `mountforestfights` int(11) NOT NULL DEFAULT '0',
  `newday` text NOT NULL,
  `recharge` text NOT NULL,
  `partrecharge` text NOT NULL,
  `mountfeedcost` int(11) unsigned NOT NULL DEFAULT '20',
  `mountlocation` varchar(25) NOT NULL DEFAULT 'all',
  `mountdkcost` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`mountid`),
  KEY `mountid` (`mountid`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nastywords`
--

DROP TABLE IF EXISTS `nastywords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nastywords` (
  `words` text,
  `type` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `newsid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `newstext` text NOT NULL,
  `newsdate` date NOT NULL DEFAULT '0000-00-00',
  `accountid` int(11) unsigned NOT NULL DEFAULT '0',
  `arguments` text NOT NULL,
  `tlschema` varchar(255) NOT NULL DEFAULT 'news',
  PRIMARY KEY (`newsid`,`newsdate`),
  KEY `accountid` (`accountid`),
  KEY `newsdate` (`newsdate`)
) ENGINE=InnoDB AUTO_INCREMENT=637 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `paylog`
--

DROP TABLE IF EXISTS `paylog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paylog` (
  `payid` int(11) NOT NULL AUTO_INCREMENT,
  `info` text NOT NULL,
  `response` text NOT NULL,
  `txnid` varchar(32) NOT NULL,
  `amount` float(9,2) NOT NULL DEFAULT '0.00',
  `name` varchar(50) NOT NULL,
  `acctid` int(11) unsigned NOT NULL DEFAULT '0',
  `processed` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `filed` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `txfee` float(9,2) NOT NULL DEFAULT '0.00',
  `processdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`payid`),
  KEY `txnid` (`txnid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `petitions`
--

DROP TABLE IF EXISTS `petitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `petitions` (
  `petitionid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `author` int(11) unsigned NOT NULL DEFAULT '0',
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `status` int(11) unsigned NOT NULL DEFAULT '0',
  `body` text,
  `pageinfo` text,
  `closedate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `closeuserid` int(11) unsigned NOT NULL DEFAULT '0',
  `ip` varchar(40) NOT NULL,
  `id` varchar(32) NOT NULL,
  PRIMARY KEY (`petitionid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pollresults`
--

DROP TABLE IF EXISTS `pollresults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pollresults` (
  `resultid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `choice` int(11) unsigned NOT NULL DEFAULT '0',
  `account` int(11) unsigned NOT NULL DEFAULT '0',
  `motditem` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`resultid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `referers`
--

DROP TABLE IF EXISTS `referers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `referers` (
  `refererid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `uri` text,
  `count` int(11) DEFAULT NULL,
  `last` datetime DEFAULT NULL,
  `site` varchar(50) NOT NULL,
  `dest` varchar(255) DEFAULT NULL,
  `ip` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`refererid`),
  KEY `uri` (`uri`(100)),
  KEY `site` (`site`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `riddles`
--

DROP TABLE IF EXISTS `riddles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `riddles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `riddle` mediumtext NOT NULL,
  `answer` tinytext NOT NULL,
  `author` varchar(255) NOT NULL DEFAULT 'System',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `setting` varchar(20) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`setting`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `taunts`
--

DROP TABLE IF EXISTS `taunts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taunts` (
  `tauntid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `taunt` text,
  `editor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tauntid`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `titles`
--

DROP TABLE IF EXISTS `titles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `titles` (
  `titleid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `dk` int(11) NOT NULL DEFAULT '0',
  `ref` varchar(100) NOT NULL,
  `male` varchar(25) NOT NULL,
  `female` varchar(25) NOT NULL,
  PRIMARY KEY (`titleid`),
  KEY `dk` (`dk`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `translations`
--

DROP TABLE IF EXISTS `translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translations` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `language` varchar(10) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `intext` blob NOT NULL,
  `outtext` blob NOT NULL,
  `author` varchar(50) DEFAULT NULL,
  `version` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tid`),
  KEY `language` (`language`,`uri`),
  KEY `uri` (`uri`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `untranslated`
--

DROP TABLE IF EXISTS `untranslated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `untranslated` (
  `intext` blob NOT NULL,
  `language` varchar(10) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  PRIMARY KEY (`intext`(200),`language`,`namespace`),
  KEY `language` (`language`),
  KEY `intext1` (`intext`(200),`language`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `weapons`
--

DROP TABLE IF EXISTS `weapons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weapons` (
  `weaponid` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `weaponname` varchar(128) DEFAULT NULL,
  `value` int(11) NOT NULL DEFAULT '0',
  `damage` int(11) NOT NULL DEFAULT '1',
  `level` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`weaponid`)
) ENGINE=InnoDB AUTO_INCREMENT=196 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-09  1:36:50
