# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.5.42)
# Database: world
# Generation Time: 2016-06-20 12:30:17 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table access_requirement
# ------------------------------------------------------------

DROP TABLE IF EXISTS `access_requirement`;

CREATE TABLE `access_requirement` (
  `mapId` mediumint(8) unsigned NOT NULL,
  `difficulty` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level_min` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level_max` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `item` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `item2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `quest_done_A` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `quest_done_H` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `completed_achievement` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `leader_achievement` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `itemlevel_min` int(10) unsigned NOT NULL DEFAULT '0',
  `itemlevel_max` int(10) unsigned NOT NULL DEFAULT '0',
  `quest_failed_text` text,
  `comment` text,
  PRIMARY KEY (`mapId`,`difficulty`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Access Requirements';



# Dump of table achievement_criteria_data
# ------------------------------------------------------------

DROP TABLE IF EXISTS `achievement_criteria_data`;

CREATE TABLE `achievement_criteria_data` (
  `criteria_id` mediumint(8) NOT NULL,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `value1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `value2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ScriptName` char(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`criteria_id`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Achievment system';



# Dump of table achievement_reward
# ------------------------------------------------------------

DROP TABLE IF EXISTS `achievement_reward`;

CREATE TABLE `achievement_reward` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title_A` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title_H` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `item` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `SpellID` int(10) unsigned NOT NULL DEFAULT '0',
  `sender` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) DEFAULT NULL,
  `text` text,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Loot System';



# Dump of table areatrigger_involvedrelation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `areatrigger_involvedrelation`;

CREATE TABLE `areatrigger_involvedrelation` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Identifier',
  `quest` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Trigger System';



# Dump of table areatrigger_move_splines
# ------------------------------------------------------------

DROP TABLE IF EXISTS `areatrigger_move_splines`;

CREATE TABLE `areatrigger_move_splines` (
  `move_curve_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL DEFAULT '0',
  `path_x` float DEFAULT NULL,
  `path_y` float DEFAULT NULL,
  `path_z` float DEFAULT NULL,
  PRIMARY KEY (`move_curve_id`,`path_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table areatrigger_move_template
# ------------------------------------------------------------

DROP TABLE IF EXISTS `areatrigger_move_template`;

CREATE TABLE `areatrigger_move_template` (
  `move_curve_id` int(11) NOT NULL,
  `path_size` int(11) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  PRIMARY KEY (`move_curve_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table areatrigger_scripts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `areatrigger_scripts`;

CREATE TABLE `areatrigger_scripts` (
  `entry` mediumint(8) NOT NULL,
  `ScriptName` char(64) NOT NULL,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table areatrigger_tavern
# ------------------------------------------------------------

DROP TABLE IF EXISTS `areatrigger_tavern`;

CREATE TABLE `areatrigger_tavern` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Identifier',
  `name` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Trigger System';



# Dump of table areatrigger_teleport
# ------------------------------------------------------------

DROP TABLE IF EXISTS `areatrigger_teleport`;

CREATE TABLE `areatrigger_teleport` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Identifier',
  `name` text,
  `target_map` smallint(5) unsigned NOT NULL DEFAULT '0',
  `target_position_x` float NOT NULL DEFAULT '0',
  `target_position_y` float NOT NULL DEFAULT '0',
  `target_position_z` float NOT NULL DEFAULT '0',
  `target_orientation` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  FULLTEXT KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Trigger System';



# Dump of table areatrigger_template
# ------------------------------------------------------------

DROP TABLE IF EXISTS `areatrigger_template`;

CREATE TABLE `areatrigger_template` (
  `spell_id` int(10) unsigned NOT NULL DEFAULT '0',
  `eff_index` int(3) unsigned NOT NULL DEFAULT '0',
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `type` int(3) unsigned NOT NULL DEFAULT '0',
  `scale_x` float NOT NULL DEFAULT '0',
  `scale_y` float NOT NULL DEFAULT '0',
  `flags` int(10) unsigned NOT NULL DEFAULT '0',
  `move_curve_id` int(10) unsigned NOT NULL DEFAULT '0',
  `scale_curve_id` int(10) unsigned NOT NULL DEFAULT '0',
  `morph_curve_id` int(10) unsigned NOT NULL DEFAULT '0',
  `facing_curve_id` int(10) unsigned NOT NULL DEFAULT '0',
  `data0` float NOT NULL DEFAULT '0',
  `data1` float NOT NULL DEFAULT '0',
  `data2` float NOT NULL DEFAULT '0',
  `data3` float NOT NULL DEFAULT '0',
  `data4` float NOT NULL DEFAULT '0',
  `data5` float NOT NULL DEFAULT '0',
  `data6` int(10) NOT NULL DEFAULT '0',
  `data7` int(10) NOT NULL DEFAULT '0',
  `ScriptName` varchar(50) DEFAULT NULL,
  `creature_visual` int(10) unsigned NOT NULL DEFAULT '0',
  KEY `spell_id_i` (`spell_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table battleground_template
# ------------------------------------------------------------

DROP TABLE IF EXISTS `battleground_template`;

CREATE TABLE `battleground_template` (
  `id` mediumint(8) unsigned NOT NULL,
  `MinPlayersPerTeam` smallint(5) unsigned NOT NULL DEFAULT '0',
  `MaxPlayersPerTeam` smallint(5) unsigned NOT NULL DEFAULT '0',
  `MinLvl` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MaxLvl` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `AllianceStartLoc` mediumint(8) unsigned NOT NULL,
  `HordeStartLoc` mediumint(8) unsigned NOT NULL,
  `StartMaxDist` float NOT NULL DEFAULT '0',
  `Weight` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `holiday` int(3) NOT NULL DEFAULT '0',
  `ScriptName` char(64) NOT NULL DEFAULT '',
  `Comment` char(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table battlemaster_entry
# ------------------------------------------------------------

DROP TABLE IF EXISTS `battlemaster_entry`;

CREATE TABLE `battlemaster_entry` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Entry of a creature',
  `bg_template` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Battleground template id',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table battlepay_display_info
# ------------------------------------------------------------

DROP TABLE IF EXISTS `battlepay_display_info`;

CREATE TABLE `battlepay_display_info` (
  `DisplayInfoId` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `CreatureDisplayInfoID` int(11) unsigned NOT NULL DEFAULT '0',
  `FileDataID` int(11) unsigned DEFAULT NULL,
  `Name1` varchar(255) NOT NULL,
  `Name2` varchar(255) NOT NULL,
  `Name3` text NOT NULL,
  `Flags` int(11) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `DisplayInfoId` (`DisplayInfoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table battlepay_product
# ------------------------------------------------------------

DROP TABLE IF EXISTS `battlepay_product`;

CREATE TABLE `battlepay_product` (
  `ProductID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `NormalPriceFixedPoint` bigint(20) unsigned NOT NULL,
  `CurrentPriceFixedPoint` bigint(20) unsigned NOT NULL,
  `Type` tinyint(3) unsigned NOT NULL,
  `ChoiceType` tinyint(3) unsigned NOT NULL,
  `Flags` int(11) unsigned NOT NULL,
  `DisplayInfoID` int(11) unsigned NOT NULL,
  `ScriptName` text NOT NULL,
  `ClassMask` int(12) unsigned NOT NULL DEFAULT '0',
  `WebsiteType` tinyint(3) DEFAULT NULL,
  PRIMARY KEY (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table battlepay_product_group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `battlepay_product_group`;

CREATE TABLE `battlepay_product_group` (
  `GroupID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `IconFileDataID` int(11) NOT NULL,
  `DisplayType` tinyint(3) unsigned NOT NULL,
  `Ordering` int(11) NOT NULL,
  PRIMARY KEY (`GroupID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table battlepay_product_item
# ------------------------------------------------------------

DROP TABLE IF EXISTS `battlepay_product_item`;

CREATE TABLE `battlepay_product_item` (
  `ID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ProductID` int(11) unsigned NOT NULL,
  `ItemID` int(11) unsigned NOT NULL,
  `Quantity` int(11) unsigned NOT NULL,
  `DisplayID` int(11) DEFAULT NULL,
  `PetResult` tinyint(2) unsigned NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table battlepay_shop_entry
# ------------------------------------------------------------

DROP TABLE IF EXISTS `battlepay_shop_entry`;

CREATE TABLE `battlepay_shop_entry` (
  `EntryID` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `GroupID` int(11) unsigned NOT NULL,
  `ProductID` int(11) unsigned NOT NULL,
  `Ordering` int(11) NOT NULL,
  `Flags` int(11) unsigned NOT NULL DEFAULT '0',
  `BannerType` tinyint(3) unsigned NOT NULL,
  `DisplayInfoID` int(11) unsigned NOT NULL,
  PRIMARY KEY (`EntryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table battlepet_npc_team_member
# ------------------------------------------------------------

DROP TABLE IF EXISTS `battlepet_npc_team_member`;

CREATE TABLE `battlepet_npc_team_member` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NpcID` int(10) unsigned NOT NULL,
  `Specie` int(10) unsigned NOT NULL,
  `Level` int(10) unsigned NOT NULL,
  `Ability1` int(10) NOT NULL,
  `Ability2` int(10) NOT NULL,
  `Ability3` int(10) NOT NULL,
  `Comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`,`NpcID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table battlepet_template
# ------------------------------------------------------------

DROP TABLE IF EXISTS `battlepet_template`;

CREATE TABLE `battlepet_template` (
  `species` int(10) unsigned NOT NULL,
  `breed` int(10) unsigned NOT NULL,
  `quality` int(10) unsigned NOT NULL,
  `level` int(10) unsigned NOT NULL,
  PRIMARY KEY (`species`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table blackmarket_template
# ------------------------------------------------------------

DROP TABLE IF EXISTS `blackmarket_template`;

CREATE TABLE `blackmarket_template` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Global Identifier',
  `itemEntry` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entry of the item',
  `itemCount` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of copies selled',
  `seller` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Entry of the npc vendor',
  `startBid` bigint(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Price when added',
  `duration` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The duration of the general bid',
  `chance` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Chance for this item to be displayed',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table challenge_mode_rewards
# ------------------------------------------------------------

DROP TABLE IF EXISTS `challenge_mode_rewards`;

CREATE TABLE `challenge_mode_rewards` (
  `map_id` int(10) unsigned NOT NULL DEFAULT '0',
  `none_money` int(10) unsigned NOT NULL DEFAULT '0',
  `bronze_money` int(10) unsigned NOT NULL DEFAULT '0',
  `silver_money` int(10) unsigned NOT NULL DEFAULT '0',
  `gold_money` int(10) unsigned NOT NULL DEFAULT '0',
  `title` int(10) unsigned NOT NULL DEFAULT '0',
  `gold_achievement` int(10) unsigned NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  PRIMARY KEY (`map_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table character_template
# ------------------------------------------------------------

DROP TABLE IF EXISTS `character_template`;

CREATE TABLE `character_template` (
  `id` int(10) unsigned NOT NULL DEFAULT '1',
  `class` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(256) NOT NULL,
  `description` varchar(2048) NOT NULL,
  `level` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `money` bigint(20) unsigned NOT NULL DEFAULT '0',
  `alianceX` float DEFAULT '0',
  `alianceY` float NOT NULL DEFAULT '0',
  `alianceZ` float NOT NULL DEFAULT '0',
  `alianceO` float NOT NULL DEFAULT '0',
  `alianceMap` smallint(6) NOT NULL DEFAULT '0',
  `hordeX` float NOT NULL DEFAULT '0',
  `hordeY` float NOT NULL DEFAULT '0',
  `hordeZ` float NOT NULL DEFAULT '0',
  `hordeO` float NOT NULL DEFAULT '0',
  `hordeMap` smallint(6) NOT NULL DEFAULT '0',
  `disabled` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `allianceDefaultRace` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `hordeDefaultRace` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table character_template_item
# ------------------------------------------------------------

DROP TABLE IF EXISTS `character_template_item`;

CREATE TABLE `character_template_item` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `faction` int(11) DEFAULT NULL,
  `itemID` int(10) unsigned NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '1',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table character_template_reputation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `character_template_reputation`;

CREATE TABLE `character_template_reputation` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `factionID` int(10) unsigned NOT NULL DEFAULT '0',
  `reputation` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table character_template_spell
# ------------------------------------------------------------

DROP TABLE IF EXISTS `character_template_spell`;

CREATE TABLE `character_template_spell` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `spellId` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table command
# ------------------------------------------------------------

DROP TABLE IF EXISTS `command`;

CREATE TABLE `command` (
  `name` varchar(50) NOT NULL DEFAULT '',
  `security` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `help` longtext NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Chat System';



# Dump of table conditions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `conditions`;

CREATE TABLE `conditions` (
  `SourceTypeOrReferenceId` mediumint(8) NOT NULL DEFAULT '0',
  `SourceGroup` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `SourceEntry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `SourceId` int(11) NOT NULL DEFAULT '0',
  `ElseGroup` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ConditionTypeOrReference` mediumint(8) NOT NULL DEFAULT '0',
  `ConditionTarget` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ConditionValue1` int(10) unsigned NOT NULL DEFAULT '0',
  `ConditionValue2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ConditionValue3` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `NegativeCondition` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ErrorTextId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ScriptName` char(64) NOT NULL DEFAULT '',
  `Comment` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`SourceTypeOrReferenceId`,`SourceGroup`,`SourceEntry`,`SourceId`,`ElseGroup`,`ConditionTypeOrReference`,`ConditionTarget`,`ConditionValue1`,`ConditionValue2`,`ConditionValue3`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Condition System';



# Dump of table creature
# ------------------------------------------------------------

DROP TABLE IF EXISTS `creature`;

CREATE TABLE `creature` (
  `guid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Global Unique Identifier',
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Creature Identifier',
  `map` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `zoneId` smallint(8) unsigned NOT NULL DEFAULT '0',
  `areaId` smallint(8) unsigned NOT NULL DEFAULT '0',
  `spawnMask` int(8) unsigned NOT NULL DEFAULT '0',
  `phaseMask` int(10) unsigned NOT NULL DEFAULT '1',
  `modelid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `equipment_id` tinyint(3) NOT NULL DEFAULT '0',
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  `spawntimesecs` int(10) unsigned NOT NULL DEFAULT '120',
  `spawndist` float NOT NULL DEFAULT '0',
  `currentwaypoint` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `curhealth` int(10) unsigned NOT NULL DEFAULT '1',
  `curmana` int(10) unsigned NOT NULL DEFAULT '0',
  `MovementType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `npcflag` int(10) unsigned NOT NULL DEFAULT '0',
  `npcflag2` int(10) unsigned NOT NULL DEFAULT '0',
  `unit_flags` int(10) unsigned NOT NULL DEFAULT '0',
  `unit_flags2` int(10) unsigned NOT NULL DEFAULT '0',
  `unit_flags3` int(10) unsigned NOT NULL DEFAULT '0',
  `dynamicflags` int(10) unsigned NOT NULL DEFAULT '0',
  `WorldEffectID` int(10) unsigned NOT NULL DEFAULT '0',
  `isActive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `protec_anti_doublet` int(255) DEFAULT NULL,
  PRIMARY KEY (`guid`),
  KEY `idx_map` (`map`),
  KEY `idx_id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Creature System';



# Dump of table creature_addon
# ------------------------------------------------------------

DROP TABLE IF EXISTS `creature_addon`;

CREATE TABLE `creature_addon` (
  `guid` int(10) unsigned NOT NULL,
  `path_id` int(10) unsigned NOT NULL DEFAULT '0',
  `mount` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `bytes1` int(10) unsigned NOT NULL DEFAULT '0',
  `bytes2` int(10) unsigned NOT NULL DEFAULT '0',
  `emote` int(10) unsigned NOT NULL DEFAULT '0',
  `auras` text,
  `animkit` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table creature_area
# ------------------------------------------------------------

DROP TABLE IF EXISTS `creature_area`;

CREATE TABLE `creature_area` (
  `guid` int(11) unsigned NOT NULL,
  `zone` int(11) NOT NULL,
  `area` int(11) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table creature_classlevelstats
# ------------------------------------------------------------

DROP TABLE IF EXISTS `creature_classlevelstats`;

CREATE TABLE `creature_classlevelstats` (
  `level` tinyint(4) NOT NULL,
  `class` tinyint(4) NOT NULL,
  `basehp0` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `basehp1` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `basehp2` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `basehp3` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `basehp4` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `basehp5` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `basemana` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `basearmor` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `attackpower` smallint(6) NOT NULL DEFAULT '0',
  `rangedattackpower` smallint(6) NOT NULL DEFAULT '0',
  `damage_base` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`level`,`class`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table creature_equip_template
# ------------------------------------------------------------

DROP TABLE IF EXISTS `creature_equip_template`;

CREATE TABLE `creature_equip_template` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `itemEntry1` int(8) unsigned NOT NULL DEFAULT '0',
  `itemEntry2` int(8) unsigned NOT NULL DEFAULT '0',
  `itemEntry3` int(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table creature_formations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `creature_formations`;

CREATE TABLE `creature_formations` (
  `leaderGUID` int(10) unsigned NOT NULL,
  `memberGUID` int(10) unsigned NOT NULL,
  `dist` float unsigned NOT NULL,
  `angle` float unsigned NOT NULL,
  `groupAI` int(10) unsigned NOT NULL,
  `point_1` smallint(8) unsigned NOT NULL DEFAULT '0',
  `point_2` smallint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`memberGUID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table creature_groupsizestats
# ------------------------------------------------------------

DROP TABLE IF EXISTS `creature_groupsizestats`;

CREATE TABLE `creature_groupsizestats` (
  `entry` int(11) unsigned NOT NULL,
  `difficulty` int(11) unsigned NOT NULL,
  `groupSize` int(11) unsigned NOT NULL,
  `health` int(11) unsigned NOT NULL,
  PRIMARY KEY (`entry`,`difficulty`,`groupSize`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table creature_loot_currency
# ------------------------------------------------------------

DROP TABLE IF EXISTS `creature_loot_currency`;

CREATE TABLE `creature_loot_currency` (
  `creature_id` mediumint(8) unsigned NOT NULL,
  `CurrencyId1` smallint(5) unsigned DEFAULT '0',
  `CurrencyId2` smallint(5) unsigned DEFAULT '0',
  `CurrencyId3` smallint(5) unsigned DEFAULT '0',
  `CurrencyCount1` int(10) DEFAULT '0',
  `CurrencyCount2` int(10) DEFAULT '0',
  `CurrencyCount3` int(10) DEFAULT '0',
  PRIMARY KEY (`creature_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table creature_loot_currency_personnal
# ------------------------------------------------------------

DROP TABLE IF EXISTS `creature_loot_currency_personnal`;

CREATE TABLE `creature_loot_currency_personnal` (
  `creature_id` int(10) unsigned NOT NULL DEFAULT '0',
  `CurrencyId1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `CurrencyId2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `CurrencyId3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `CurrencyCount1` int(10) unsigned NOT NULL DEFAULT '0',
  `CurrencyCount2` int(10) unsigned NOT NULL DEFAULT '0',
  `CurrencyCount3` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`creature_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table creature_loot_template
# ------------------------------------------------------------

DROP TABLE IF EXISTS `creature_loot_template`;

CREATE TABLE `creature_loot_template` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `item` mediumint(8) NOT NULL DEFAULT '0',
  `ChanceOrQuestChance` float NOT NULL DEFAULT '100',
  `lootmode` smallint(5) unsigned NOT NULL DEFAULT '1',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mincountOrRef` mediumint(8) NOT NULL DEFAULT '1',
  `maxcount` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `itemBonuses` text NOT NULL,
  PRIMARY KEY (`entry`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Loot System';



# Dump of table creature_model_info
# ------------------------------------------------------------

DROP TABLE IF EXISTS `creature_model_info`;

CREATE TABLE `creature_model_info` (
  `modelid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `bounding_radius` float NOT NULL DEFAULT '0',
  `combat_reach` float NOT NULL DEFAULT '0',
  `gender` tinyint(3) unsigned NOT NULL DEFAULT '2',
  `modelid_other_gender` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`modelid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Creature System (Model related info)';



# Dump of table creature_onkill_reputation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `creature_onkill_reputation`;

CREATE TABLE `creature_onkill_reputation` (
  `creature_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Creature Identifier',
  `RewOnKillRepFaction1` smallint(6) NOT NULL DEFAULT '0',
  `RewOnKillRepFaction2` smallint(6) NOT NULL DEFAULT '0',
  `MaxStanding1` tinyint(4) NOT NULL DEFAULT '0',
  `IsTeamAward1` tinyint(4) NOT NULL DEFAULT '0',
  `RewOnKillRepValue1` mediumint(8) NOT NULL DEFAULT '0',
  `MaxStanding2` tinyint(4) NOT NULL DEFAULT '0',
  `IsTeamAward2` tinyint(4) NOT NULL DEFAULT '0',
  `RewOnKillRepValue2` mediumint(9) NOT NULL DEFAULT '0',
  `TeamDependent` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`creature_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Creature OnKill Reputation gain';



# Dump of table creature_questender
# ------------------------------------------------------------

DROP TABLE IF EXISTS `creature_questender`;

CREATE TABLE `creature_questender` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Identifier',
  `quest` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  PRIMARY KEY (`id`,`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Creature System';



# Dump of table creature_queststarter
# ------------------------------------------------------------

DROP TABLE IF EXISTS `creature_queststarter`;

CREATE TABLE `creature_queststarter` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Identifier',
  `quest` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  PRIMARY KEY (`id`,`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Creature System';



# Dump of table creature_summon_groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `creature_summon_groups`;

CREATE TABLE `creature_summon_groups` (
  `summonerId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `summonerType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `groupId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  `summonType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `summonTime` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table creature_template
# ------------------------------------------------------------

DROP TABLE IF EXISTS `creature_template`;

CREATE TABLE `creature_template` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `KillCredit1` int(10) unsigned NOT NULL DEFAULT '0',
  `KillCredit2` int(10) unsigned NOT NULL DEFAULT '0',
  `modelid1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `modelid2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `modelid3` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `modelid4` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` char(100) NOT NULL DEFAULT '0',
  `femaleName` char(100) DEFAULT NULL,
  `subname` char(100) DEFAULT NULL,
  `IconName` char(100) DEFAULT NULL,
  `gossip_menu_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `minlevel` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `maxlevel` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `exp` smallint(6) NOT NULL DEFAULT '0',
  `exp_req` smallint(2) NOT NULL DEFAULT '0',
  `faction` smallint(5) unsigned NOT NULL DEFAULT '0',
  `npcflag` int(10) unsigned NOT NULL DEFAULT '0',
  `npcflag2` int(10) unsigned NOT NULL DEFAULT '0',
  `speed_walk` float NOT NULL DEFAULT '1' COMMENT 'Result of 2.5/2.5, most common value',
  `speed_run` float NOT NULL DEFAULT '1.14286' COMMENT 'Result of 8.0/7.0, most common value',
  `speed_fly` float NOT NULL DEFAULT '1.14286' COMMENT 'Result of 8.0/7.0, most common value',
  `scale` float NOT NULL DEFAULT '1',
  `rank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `dmgschool` tinyint(4) NOT NULL DEFAULT '0',
  `dmg_multiplier` float NOT NULL DEFAULT '1',
  `baseattacktime` int(10) unsigned NOT NULL DEFAULT '0',
  `rangeattacktime` int(10) unsigned NOT NULL DEFAULT '0',
  `baseVariance` float NOT NULL DEFAULT '1',
  `rangeVariance` float NOT NULL DEFAULT '1',
  `unit_class` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `unit_flags` int(10) unsigned NOT NULL DEFAULT '0',
  `unit_flags2` int(10) unsigned NOT NULL DEFAULT '0',
  `unit_flags3` int(10) unsigned NOT NULL DEFAULT '0',
  `dynamicflags` int(10) unsigned NOT NULL DEFAULT '0',
  `WorldEffectID` int(10) unsigned NOT NULL DEFAULT '0',
  `family` mediumint(8) NOT NULL DEFAULT '0',
  `trainer_type` tinyint(4) NOT NULL DEFAULT '0',
  `trainer_spell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `trainer_class` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `trainer_race` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `type_flags` int(10) unsigned NOT NULL DEFAULT '0',
  `type_flags2` int(10) unsigned NOT NULL DEFAULT '0',
  `lootid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pickpocketloot` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `skinloot` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `resistance1` smallint(6) NOT NULL DEFAULT '0',
  `resistance2` smallint(6) NOT NULL DEFAULT '0',
  `resistance3` smallint(6) NOT NULL DEFAULT '0',
  `resistance4` smallint(6) NOT NULL DEFAULT '0',
  `resistance5` smallint(6) NOT NULL DEFAULT '0',
  `resistance6` smallint(6) NOT NULL DEFAULT '0',
  `spell1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `spell2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `spell3` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `spell4` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `spell5` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `spell6` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `spell7` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `spell8` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `PetSpellDataId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `VehicleId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mingold` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `maxgold` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `AIName` char(64) NOT NULL DEFAULT '',
  `MovementType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `InhabitType` tinyint(3) unsigned NOT NULL DEFAULT '3',
  `HoverHeight` float NOT NULL DEFAULT '1',
  `Health_mod` float NOT NULL DEFAULT '1',
  `Mana_mod` float NOT NULL DEFAULT '1',
  `Mana_mod_extra` float NOT NULL DEFAULT '1',
  `Armor_mod` float NOT NULL DEFAULT '1',
  `RacialLeader` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `questItem1` int(10) unsigned NOT NULL DEFAULT '0',
  `questItem2` int(10) unsigned NOT NULL DEFAULT '0',
  `questItem3` int(10) unsigned NOT NULL DEFAULT '0',
  `questItem4` int(10) unsigned NOT NULL DEFAULT '0',
  `questItem5` int(10) unsigned NOT NULL DEFAULT '0',
  `questItem6` int(10) unsigned NOT NULL DEFAULT '0',
  `movementId` int(11) unsigned NOT NULL DEFAULT '0',
  `TrackingQuestID` int(10) unsigned NOT NULL DEFAULT '0',
  `VignetteID` int(10) unsigned NOT NULL DEFAULT '0',
  `RegenHealth` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `equipment_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mechanic_immune_mask` int(10) unsigned NOT NULL DEFAULT '0',
  `flags_extra` int(10) unsigned NOT NULL DEFAULT '0',
  `ScriptName` char(64) NOT NULL DEFAULT '',
  `BuildVerified` smallint(6) DEFAULT '1',
  PRIMARY KEY (`entry`),
  KEY `idx_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Creature System';



# Dump of table creature_template_addon
# ------------------------------------------------------------

DROP TABLE IF EXISTS `creature_template_addon`;

CREATE TABLE `creature_template_addon` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `path_id` int(10) unsigned NOT NULL DEFAULT '0',
  `mount` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `bytes1` int(10) unsigned NOT NULL DEFAULT '0',
  `bytes2` int(10) unsigned NOT NULL DEFAULT '0',
  `emote` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auras` text,
  `animkit` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table creature_template_difficulty
# ------------------------------------------------------------

DROP TABLE IF EXISTS `creature_template_difficulty`;

CREATE TABLE `creature_template_difficulty` (
  `entry` mediumint(8) unsigned NOT NULL,
  `difficulty` enum('NONE_DIFFICULTY','REGULAR_5_DIFFICULTY','HEROIC_5_DIFFICULTY','LEGACY_MAN10_DIFFICULTY','LEGACY_MAN25_DIFFICULTY','LEGACY_MAN10_HEROIC_DIFFICULTY','LEGACY_MAN25_HEROIC_DIFFICULTY','RAID_TOOL_DIFFICULTY','CHALLENGE_MODE_DIFFICULTY','MAN40_DIFFICULTY','DIFFICULTY_ENTRY_10','SCENARIO_HEROIC_DIFFICULTY','SCENARIO_DIFFICULTY','DIFFICULTY_ENTRY_13','NORMAL_DIFFICULTY','HEROIC_DIFFICULTY','MYTHIC_DIFFICULTY','DIFFICULTY_ENTRY_17','EVENT_0_DIFFICULTY','EVENT_1_DIFFICULTY','EVENT_SCENARIO') NOT NULL,
  `difficulty_entry` mediumint(8) unsigned DEFAULT NULL,
  PRIMARY KEY (`entry`,`difficulty`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table creature_text
# ------------------------------------------------------------

DROP TABLE IF EXISTS `creature_text`;

CREATE TABLE `creature_text` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `text` longtext,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `language` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `probability` float NOT NULL DEFAULT '0',
  `emote` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `duration` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `sound` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `comment` varchar(255) DEFAULT '',
  PRIMARY KEY (`entry`,`groupid`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table creature_transport
# ------------------------------------------------------------

DROP TABLE IF EXISTS `creature_transport`;

CREATE TABLE `creature_transport` (
  `guid` int(10) unsigned NOT NULL COMMENT 'GUID of NPC on transport - not the same as creature.guid',
  `transport_entry` int(11) NOT NULL COMMENT 'Transport entry',
  `npc_entry` int(11) NOT NULL COMMENT 'NPC entry',
  `TransOffsetX` float NOT NULL DEFAULT '0',
  `TransOffsetY` float NOT NULL DEFAULT '0',
  `TransOffsetZ` float NOT NULL DEFAULT '0',
  `TransOffsetO` float NOT NULL DEFAULT '0',
  `emote` int(11) NOT NULL,
  PRIMARY KEY (`guid`,`transport_entry`),
  UNIQUE KEY `entry` (`transport_entry`,`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table custom_texts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `custom_texts`;

CREATE TABLE `custom_texts` (
  `entry` mediumint(8) NOT NULL,
  `content_default` text NOT NULL,
  `content_loc1` text,
  `content_loc2` text,
  `content_loc3` text,
  `content_loc4` text,
  `content_loc5` text,
  `content_loc6` text,
  `content_loc7` text,
  `content_loc8` text,
  `content_loc9` text,
  `content_loc10` text,
  `sound` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `language` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `emote` smallint(5) unsigned NOT NULL DEFAULT '0',
  `comment` text,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Custom Texts';



# Dump of table db_script_string
# ------------------------------------------------------------

DROP TABLE IF EXISTS `db_script_string`;

CREATE TABLE `db_script_string` (
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `content_default` text NOT NULL,
  `content_loc1` text,
  `content_loc2` text,
  `content_loc3` text,
  `content_loc4` text,
  `content_loc5` text,
  `content_loc6` text,
  `content_loc7` text,
  `content_loc8` text,
  `content_loc9` text,
  `content_loc10` text,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table dbc_battle_pet_species
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dbc_battle_pet_species`;

CREATE TABLE `dbc_battle_pet_species` (
  `ID` int(11) NOT NULL DEFAULT '0',
  `NpcID` int(11) NOT NULL DEFAULT '0',
  `field2` int(11) NOT NULL DEFAULT '0',
  `SpellID` int(11) NOT NULL DEFAULT '0',
  `Spicies` int(11) NOT NULL DEFAULT '0',
  `Category` int(11) NOT NULL DEFAULT '0',
  `Flags` int(11) NOT NULL DEFAULT '0',
  `Icon` text NOT NULL,
  `Description` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Export of BattlePetSpecies.db2';



# Dump of table dbc_BattlePetSpecies
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dbc_BattlePetSpecies`;

CREATE TABLE `dbc_BattlePetSpecies` (
  `id` int(11) NOT NULL DEFAULT '0',
  `entry` int(11) NOT NULL DEFAULT '0',
  `iconId` int(11) NOT NULL DEFAULT '0',
  `spellId` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `obtainmentCategoryDescription` int(11) NOT NULL DEFAULT '0',
  `flags` int(11) NOT NULL DEFAULT '0',
  `source` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Export of BattlePetSpecies.db2';



# Dump of table dbc_dungeonencounter
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dbc_dungeonencounter`;

CREATE TABLE `dbc_dungeonencounter` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `mapId` int(10) unsigned NOT NULL DEFAULT '0',
  `difficulty` int(10) unsigned NOT NULL DEFAULT '0',
  `Unk_1` int(11) NOT NULL DEFAULT '0',
  `encounterIndex` int(10) unsigned NOT NULL DEFAULT '0',
  `encounterName` text NOT NULL,
  `nameFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `Unk_2` int(10) unsigned NOT NULL DEFAULT '0',
  `Unk_3` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Export of DungeonEncounter.dbc';



# Dump of table disables
# ------------------------------------------------------------

DROP TABLE IF EXISTS `disables`;

CREATE TABLE `disables` (
  `sourceType` int(10) unsigned NOT NULL,
  `entry` int(10) unsigned NOT NULL,
  `flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `params_0` varchar(255) NOT NULL DEFAULT '',
  `params_1` varchar(255) NOT NULL DEFAULT '',
  `comment` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`sourceType`,`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table disenchant_loot_template
# ------------------------------------------------------------

DROP TABLE IF EXISTS `disenchant_loot_template`;

CREATE TABLE `disenchant_loot_template` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Recommended id selection: item_level*100 + item_quality',
  `item` mediumint(8) NOT NULL DEFAULT '0',
  `ChanceOrQuestChance` float NOT NULL DEFAULT '100',
  `lootmode` smallint(5) unsigned NOT NULL DEFAULT '1',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mincountOrRef` mediumint(9) NOT NULL DEFAULT '1',
  `maxcount` int(11) unsigned NOT NULL DEFAULT '1',
  `itemBonuses` text NOT NULL,
  PRIMARY KEY (`entry`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Loot System';



# Dump of table event_scripts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `event_scripts`;

CREATE TABLE `event_scripts` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `delay` int(10) unsigned NOT NULL DEFAULT '0',
  `command` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `datalong` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `datalong2` int(10) unsigned NOT NULL DEFAULT '0',
  `dataint` int(11) NOT NULL DEFAULT '0',
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `o` float NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table exploration_basexp
# ------------------------------------------------------------

DROP TABLE IF EXISTS `exploration_basexp`;

CREATE TABLE `exploration_basexp` (
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `basexp` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Exploration System';



# Dump of table fishing_loot_template
# ------------------------------------------------------------

DROP TABLE IF EXISTS `fishing_loot_template`;

CREATE TABLE `fishing_loot_template` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `item` mediumint(8) NOT NULL DEFAULT '0',
  `ChanceOrQuestChance` float NOT NULL DEFAULT '100',
  `lootmode` smallint(5) unsigned NOT NULL DEFAULT '1',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mincountOrRef` mediumint(8) NOT NULL DEFAULT '1',
  `maxcount` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `itemBonuses` text NOT NULL,
  PRIMARY KEY (`entry`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Loot System';



# Dump of table game_event
# ------------------------------------------------------------

DROP TABLE IF EXISTS `game_event`;

CREATE TABLE `game_event` (
  `eventEntry` tinyint(3) unsigned NOT NULL COMMENT 'Entry of the game event',
  `start_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Absolute start date, the event will never start before',
  `end_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Absolute end date, the event will never start afler',
  `occurence` bigint(20) unsigned NOT NULL DEFAULT '5184000' COMMENT 'Delay in minutes between occurences of the event',
  `length` bigint(20) unsigned NOT NULL DEFAULT '2592000' COMMENT 'Length in minutes of the event',
  `holiday` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Client side holiday id',
  `description` varchar(255) DEFAULT NULL COMMENT 'Description of the event displayed in console',
  `world_event` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '0 if normal event, 1 if world event',
  PRIMARY KEY (`eventEntry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table game_event_arena_seasons
# ------------------------------------------------------------

DROP TABLE IF EXISTS `game_event_arena_seasons`;

CREATE TABLE `game_event_arena_seasons` (
  `eventEntry` tinyint(3) unsigned NOT NULL COMMENT 'Entry of the game event',
  `season` tinyint(3) unsigned NOT NULL COMMENT 'Arena season number',
  UNIQUE KEY `season` (`season`,`eventEntry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table game_event_battleground_holiday
# ------------------------------------------------------------

DROP TABLE IF EXISTS `game_event_battleground_holiday`;

CREATE TABLE `game_event_battleground_holiday` (
  `eventEntry` tinyint(3) unsigned NOT NULL COMMENT 'Entry of the game event',
  `bgflag` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`eventEntry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table game_event_condition
# ------------------------------------------------------------

DROP TABLE IF EXISTS `game_event_condition`;

CREATE TABLE `game_event_condition` (
  `eventEntry` tinyint(3) unsigned NOT NULL COMMENT 'Entry of the game event',
  `condition_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `req_num` float DEFAULT '0',
  `max_world_state_field` smallint(5) unsigned NOT NULL DEFAULT '0',
  `done_world_state_field` smallint(5) unsigned NOT NULL DEFAULT '0',
  `description` varchar(25) NOT NULL DEFAULT '',
  PRIMARY KEY (`eventEntry`,`condition_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table game_event_creature
# ------------------------------------------------------------

DROP TABLE IF EXISTS `game_event_creature`;

CREATE TABLE `game_event_creature` (
  `guid` int(10) unsigned NOT NULL,
  `eventEntry` tinyint(4) NOT NULL COMMENT 'Entry of the game event. Put negative entry to remove during event.',
  PRIMARY KEY (`guid`,`eventEntry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table game_event_creature_quest
# ------------------------------------------------------------

DROP TABLE IF EXISTS `game_event_creature_quest`;

CREATE TABLE `game_event_creature_quest` (
  `eventEntry` tinyint(3) unsigned NOT NULL COMMENT 'Entry of the game event.',
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `quest` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table game_event_gameobject
# ------------------------------------------------------------

DROP TABLE IF EXISTS `game_event_gameobject`;

CREATE TABLE `game_event_gameobject` (
  `eventEntry` tinyint(4) NOT NULL COMMENT 'Entry of the game event. Put negative entry to remove during event.',
  `guid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`guid`,`eventEntry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table game_event_gameobject_quest
# ------------------------------------------------------------

DROP TABLE IF EXISTS `game_event_gameobject_quest`;

CREATE TABLE `game_event_gameobject_quest` (
  `eventEntry` tinyint(3) unsigned NOT NULL COMMENT 'Entry of the game event',
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `quest` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`quest`,`eventEntry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table game_event_model_equip
# ------------------------------------------------------------

DROP TABLE IF EXISTS `game_event_model_equip`;

CREATE TABLE `game_event_model_equip` (
  `eventEntry` tinyint(4) NOT NULL COMMENT 'Entry of the game event.',
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `modelid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `equipment_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table game_event_npc_vendor
# ------------------------------------------------------------

DROP TABLE IF EXISTS `game_event_npc_vendor`;

CREATE TABLE `game_event_npc_vendor` (
  `eventEntry` tinyint(4) NOT NULL COMMENT 'Entry of the game event.',
  `guid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `slot` smallint(6) NOT NULL DEFAULT '0',
  `item` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `maxcount` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `incrtime` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ExtendedCost` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`guid`,`item`,`ExtendedCost`,`type`),
  KEY `slot` (`slot`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table game_event_npcflag
# ------------------------------------------------------------

DROP TABLE IF EXISTS `game_event_npcflag`;

CREATE TABLE `game_event_npcflag` (
  `eventEntry` tinyint(3) unsigned NOT NULL COMMENT 'Entry of the game event',
  `guid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `npcflag` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`eventEntry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table game_event_pool
# ------------------------------------------------------------

DROP TABLE IF EXISTS `game_event_pool`;

CREATE TABLE `game_event_pool` (
  `eventEntry` tinyint(4) NOT NULL COMMENT 'Entry of the game event. Put negative entry to remove during event.',
  `pool_entry` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Id of the pool',
  PRIMARY KEY (`pool_entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table game_event_prerequisite
# ------------------------------------------------------------

DROP TABLE IF EXISTS `game_event_prerequisite`;

CREATE TABLE `game_event_prerequisite` (
  `eventEntry` tinyint(3) unsigned NOT NULL COMMENT 'Entry of the game event',
  `prerequisite_event` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`eventEntry`,`prerequisite_event`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table game_event_quest_condition
# ------------------------------------------------------------

DROP TABLE IF EXISTS `game_event_quest_condition`;

CREATE TABLE `game_event_quest_condition` (
  `eventEntry` tinyint(3) unsigned NOT NULL COMMENT 'Entry of the game event.',
  `quest` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `condition_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `num` float DEFAULT '0',
  PRIMARY KEY (`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table game_event_seasonal_questrelation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `game_event_seasonal_questrelation`;

CREATE TABLE `game_event_seasonal_questrelation` (
  `questId` int(10) unsigned NOT NULL COMMENT 'Quest Identifier',
  `eventEntry` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Entry of the game event',
  PRIMARY KEY (`questId`,`eventEntry`),
  KEY `idx_quest` (`questId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Player System';



# Dump of table game_graveyard_zone
# ------------------------------------------------------------

DROP TABLE IF EXISTS `game_graveyard_zone`;

CREATE TABLE `game_graveyard_zone` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ghost_zone` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `faction` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`ghost_zone`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Trigger System';



# Dump of table game_tele
# ------------------------------------------------------------

DROP TABLE IF EXISTS `game_tele`;

CREATE TABLE `game_tele` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  `map` smallint(5) unsigned NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Tele Command';



# Dump of table game_weather
# ------------------------------------------------------------

DROP TABLE IF EXISTS `game_weather`;

CREATE TABLE `game_weather` (
  `zone` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `spring_rain_chance` tinyint(3) unsigned NOT NULL DEFAULT '25',
  `spring_snow_chance` tinyint(3) unsigned NOT NULL DEFAULT '25',
  `spring_storm_chance` tinyint(3) unsigned NOT NULL DEFAULT '25',
  `summer_rain_chance` tinyint(3) unsigned NOT NULL DEFAULT '25',
  `summer_snow_chance` tinyint(3) unsigned NOT NULL DEFAULT '25',
  `summer_storm_chance` tinyint(3) unsigned NOT NULL DEFAULT '25',
  `fall_rain_chance` tinyint(3) unsigned NOT NULL DEFAULT '25',
  `fall_snow_chance` tinyint(3) unsigned NOT NULL DEFAULT '25',
  `fall_storm_chance` tinyint(3) unsigned NOT NULL DEFAULT '25',
  `winter_rain_chance` tinyint(3) unsigned NOT NULL DEFAULT '25',
  `winter_snow_chance` tinyint(3) unsigned NOT NULL DEFAULT '25',
  `winter_storm_chance` tinyint(3) unsigned NOT NULL DEFAULT '25',
  `ScriptName` char(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`zone`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Weather System';



# Dump of table gameobject
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gameobject`;

CREATE TABLE `gameobject` (
  `guid` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Global Unique Identifier',
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Gameobject Identifier',
  `map` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Map Identifier',
  `zoneId` smallint(8) unsigned NOT NULL DEFAULT '0',
  `areaId` smallint(8) unsigned NOT NULL DEFAULT '0',
  `spawnMask` int(8) DEFAULT NULL,
  `phaseMask` int(10) unsigned NOT NULL DEFAULT '1',
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  `rotation0` float NOT NULL DEFAULT '0',
  `rotation1` float NOT NULL DEFAULT '0',
  `rotation2` float NOT NULL DEFAULT '0',
  `rotation3` float NOT NULL DEFAULT '0',
  `spawntimesecs` int(11) NOT NULL DEFAULT '0',
  `animprogress` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `state` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `isActive` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `custom_flags` int(10) unsigned NOT NULL DEFAULT '0',
  `protect_anti_doublet` int(255) DEFAULT NULL,
  PRIMARY KEY (`guid`),
  KEY `x` (`position_x`,`position_y`,`position_z`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Gameobject System';



# Dump of table gameobject_loot_template
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gameobject_loot_template`;

CREATE TABLE `gameobject_loot_template` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `item` mediumint(8) NOT NULL DEFAULT '0',
  `ChanceOrQuestChance` float NOT NULL DEFAULT '100',
  `lootmode` smallint(5) unsigned NOT NULL DEFAULT '1',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mincountOrRef` mediumint(8) NOT NULL DEFAULT '1',
  `maxcount` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `itemBonuses` text NOT NULL,
  PRIMARY KEY (`entry`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Loot System';



# Dump of table gameobject_questender
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gameobject_questender`;

CREATE TABLE `gameobject_questender` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `quest` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  PRIMARY KEY (`id`,`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table gameobject_queststarter
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gameobject_queststarter`;

CREATE TABLE `gameobject_queststarter` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `quest` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest Identifier',
  PRIMARY KEY (`id`,`quest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table gameobject_scripts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gameobject_scripts`;

CREATE TABLE `gameobject_scripts` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `delay` int(10) unsigned NOT NULL DEFAULT '0',
  `command` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `datalong` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `datalong2` int(10) unsigned NOT NULL DEFAULT '0',
  `dataint` int(11) NOT NULL DEFAULT '0',
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `o` float NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table gameobject_template
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gameobject_template`;

CREATE TABLE `gameobject_template` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `displayId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '',
  `IconName` varchar(100) NOT NULL DEFAULT '',
  `castBarCaption` varchar(100) NOT NULL DEFAULT '',
  `unk1` varchar(100) NOT NULL DEFAULT '',
  `faction` smallint(5) unsigned NOT NULL DEFAULT '0',
  `flags` int(10) unsigned NOT NULL DEFAULT '0',
  `size` float NOT NULL DEFAULT '1',
  `questItem1` int(11) unsigned NOT NULL DEFAULT '0',
  `questItem2` int(11) unsigned NOT NULL DEFAULT '0',
  `questItem3` int(11) unsigned NOT NULL DEFAULT '0',
  `questItem4` int(11) unsigned NOT NULL DEFAULT '0',
  `questItem5` int(11) unsigned NOT NULL DEFAULT '0',
  `questItem6` int(11) unsigned NOT NULL DEFAULT '0',
  `data0` int(10) unsigned NOT NULL DEFAULT '0',
  `data1` int(11) NOT NULL DEFAULT '-1',
  `data2` int(10) unsigned NOT NULL DEFAULT '0',
  `data3` int(10) unsigned NOT NULL DEFAULT '0',
  `data4` int(10) unsigned NOT NULL DEFAULT '0',
  `data5` int(10) unsigned NOT NULL DEFAULT '0',
  `data6` int(11) NOT NULL DEFAULT '-1',
  `data7` int(10) unsigned NOT NULL DEFAULT '0',
  `data8` int(10) unsigned NOT NULL DEFAULT '0',
  `data9` int(10) unsigned NOT NULL DEFAULT '0',
  `data10` int(10) unsigned NOT NULL DEFAULT '0',
  `data11` int(10) unsigned NOT NULL DEFAULT '0',
  `data12` int(10) unsigned NOT NULL DEFAULT '0',
  `data13` int(10) unsigned NOT NULL DEFAULT '0',
  `data14` int(10) unsigned NOT NULL DEFAULT '0',
  `data15` int(10) unsigned NOT NULL DEFAULT '0',
  `data16` int(10) unsigned NOT NULL DEFAULT '0',
  `data17` int(10) unsigned NOT NULL DEFAULT '0',
  `data18` int(10) unsigned NOT NULL DEFAULT '0',
  `data19` int(10) unsigned NOT NULL DEFAULT '0',
  `data20` int(10) unsigned NOT NULL DEFAULT '0',
  `data21` int(10) unsigned NOT NULL DEFAULT '0',
  `data22` int(10) unsigned NOT NULL DEFAULT '0',
  `data23` int(10) unsigned NOT NULL DEFAULT '0',
  `data24` int(10) NOT NULL DEFAULT '0',
  `data25` int(10) NOT NULL DEFAULT '0',
  `data26` int(10) NOT NULL DEFAULT '0',
  `data27` int(10) NOT NULL DEFAULT '0',
  `data28` int(10) NOT NULL DEFAULT '0',
  `data29` int(10) NOT NULL DEFAULT '0',
  `data30` int(10) NOT NULL DEFAULT '0',
  `data31` int(10) NOT NULL DEFAULT '0',
  `data32` int(10) NOT NULL DEFAULT '0',
  `unkInt32` int(10) NOT NULL DEFAULT '0',
  `AIName` char(64) NOT NULL DEFAULT '',
  `ScriptName` varchar(64) NOT NULL DEFAULT '',
  `BuildVerified` smallint(6) DEFAULT '1',
  PRIMARY KEY (`entry`),
  KEY `idx_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Gameobject System';



# Dump of table garrison_plot_building_content
# ------------------------------------------------------------

DROP TABLE IF EXISTS `garrison_plot_building_content`;

CREATE TABLE `garrison_plot_building_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `plot_type` int(10) unsigned NOT NULL DEFAULT '0',
  `faction_index` int(10) unsigned NOT NULL DEFAULT '0',
  `creature_or_gob` int(10) NOT NULL DEFAULT '0',
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `o` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table garrison_plot_content
# ------------------------------------------------------------

DROP TABLE IF EXISTS `garrison_plot_content`;

CREATE TABLE `garrison_plot_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `plot_type_or_building` int(10) NOT NULL DEFAULT '0',
  `faction_index` int(10) unsigned NOT NULL DEFAULT '0',
  `creature_or_gob` int(10) NOT NULL DEFAULT '0',
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `o` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table gossip_menu
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gossip_menu`;

CREATE TABLE `gossip_menu` (
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `text_id` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`,`text_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table gossip_menu_option
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gossip_menu_option`;

CREATE TABLE `gossip_menu_option` (
  `menu_id` int(10) unsigned NOT NULL DEFAULT '0',
  `id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `option_icon` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `option_text` text,
  `option_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `npc_option_npcflag` int(10) unsigned NOT NULL DEFAULT '0',
  `action_menu_id` int(10) unsigned NOT NULL DEFAULT '0',
  `action_poi_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `box_coded` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `box_money` int(10) unsigned NOT NULL DEFAULT '0',
  `box_text` text,
  PRIMARY KEY (`menu_id`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table guild_challenge_reward
# ------------------------------------------------------------

DROP TABLE IF EXISTS `guild_challenge_reward`;

CREATE TABLE `guild_challenge_reward` (
  `Type` int(10) unsigned DEFAULT NULL,
  `Experience` int(10) unsigned DEFAULT NULL,
  `Gold` int(10) unsigned DEFAULT NULL,
  `Gold2` int(10) unsigned DEFAULT NULL,
  `Count` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table guild_rewards
# ------------------------------------------------------------

DROP TABLE IF EXISTS `guild_rewards`;

CREATE TABLE `guild_rewards` (
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `standing` tinyint(3) unsigned DEFAULT '0',
  `racemask` int(11) DEFAULT '0',
  `price` bigint(20) unsigned DEFAULT '0',
  `achievement` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table instance_disabled_rankings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `instance_disabled_rankings`;

CREATE TABLE `instance_disabled_rankings` (
  `EncounterID` int(10) unsigned NOT NULL,
  `DifficultyID` int(10) unsigned NOT NULL,
  `Comment` tinytext NOT NULL,
  PRIMARY KEY (`EncounterID`,`DifficultyID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table instance_encounters
# ------------------------------------------------------------

DROP TABLE IF EXISTS `instance_encounters`;

CREATE TABLE `instance_encounters` (
  `entry` int(10) DEFAULT NULL,
  `creditType` tinyint(3) DEFAULT NULL,
  `creditEntry` int(10) DEFAULT NULL,
  `lastEncounterDungeon` smallint(5) DEFAULT NULL,
  `comment` varchar(2295) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table instance_template
# ------------------------------------------------------------

DROP TABLE IF EXISTS `instance_template`;

CREATE TABLE `instance_template` (
  `map` smallint(5) unsigned NOT NULL,
  `parent` smallint(5) unsigned NOT NULL,
  `script` varchar(128) NOT NULL DEFAULT '',
  `allowMount` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`map`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table ip2nation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ip2nation`;

CREATE TABLE `ip2nation` (
  `ip` int(10) unsigned NOT NULL DEFAULT '0',
  `country` char(2) NOT NULL DEFAULT '',
  KEY `ip` (`ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table ip2nationCountries
# ------------------------------------------------------------

DROP TABLE IF EXISTS `ip2nationCountries`;

CREATE TABLE `ip2nationCountries` (
  `code` varchar(4) NOT NULL DEFAULT '',
  `iso_code_2` varchar(2) NOT NULL DEFAULT '',
  `iso_code_3` varchar(3) DEFAULT '',
  `iso_country` varchar(255) NOT NULL DEFAULT '',
  `country` varchar(255) NOT NULL DEFAULT '',
  `lat` float NOT NULL DEFAULT '0',
  `lon` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`code`),
  KEY `code` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table item_bonus_group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `item_bonus_group`;

CREATE TABLE `item_bonus_group` (
  `id` int(11) DEFAULT NULL,
  `bonus` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table item_bonus_group_linked
# ------------------------------------------------------------

DROP TABLE IF EXISTS `item_bonus_group_linked`;

CREATE TABLE `item_bonus_group_linked` (
  `itemEntry` int(11) DEFAULT NULL,
  `itemBonusGroup` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table item_enchantment_template
# ------------------------------------------------------------

DROP TABLE IF EXISTS `item_enchantment_template`;

CREATE TABLE `item_enchantment_template` (
  `entry` mediumint(8) DEFAULT NULL,
  `ench` mediumint(8) DEFAULT NULL,
  `chance` float DEFAULT NULL,
  `type` mediumint(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table item_loot_template
# ------------------------------------------------------------

DROP TABLE IF EXISTS `item_loot_template`;

CREATE TABLE `item_loot_template` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `item` mediumint(8) NOT NULL DEFAULT '0',
  `ChanceOrQuestChance` float NOT NULL DEFAULT '100',
  `lootmode` smallint(5) unsigned NOT NULL DEFAULT '1',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mincountOrRef` mediumint(8) NOT NULL DEFAULT '1',
  `maxcount` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `itemBonuses` text NOT NULL,
  PRIMARY KEY (`entry`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Loot System';



# Dump of table item_script_names
# ------------------------------------------------------------

DROP TABLE IF EXISTS `item_script_names`;

CREATE TABLE `item_script_names` (
  `Id` int(10) unsigned NOT NULL,
  `ScriptName` varchar(64) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;



# Dump of table item_template
# ------------------------------------------------------------

DROP TABLE IF EXISTS `item_template`;

CREATE TABLE `item_template` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `class` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `subclass` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `Quality` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `spellid_1` int(11) unsigned NOT NULL,
  `spellid_2` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`),
  KEY `idx_name` (`name`),
  KEY `items_index` (`class`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Item System';



# Dump of table item_template_addon
# ------------------------------------------------------------

DROP TABLE IF EXISTS `item_template_addon`;

CREATE TABLE `item_template_addon` (
  `Id` int(10) unsigned NOT NULL,
  `FlagsCu` int(10) unsigned NOT NULL DEFAULT '0',
  `FoodType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MinMoneyLoot` int(10) unsigned NOT NULL DEFAULT '0',
  `MaxMoneyLoot` int(10) unsigned NOT NULL DEFAULT '0',
  `SpellPPMChance` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;



# Dump of table lfg_dungeon_rewards
# ------------------------------------------------------------

DROP TABLE IF EXISTS `lfg_dungeon_rewards`;

CREATE TABLE `lfg_dungeon_rewards` (
  `dungeonId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Dungeon entry from dbc',
  `maxLevel` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Max level at which this reward is rewarded',
  `firstQuestId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest id with rewards for first dungeon this day',
  `firstMoneyVar` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Money multiplier for completing the dungeon first time in a day with less players than max',
  `firstXPVar` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Experience multiplier for completing the dungeon first time in a day with less players than max',
  `otherQuestId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Quest id with rewards for Nth dungeon this day',
  `otherMoneyVar` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Money multiplier for completing the dungeon Nth time in a day with less players than max',
  `otherXPVar` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Experience multiplier for completing the dungeon Nth time in a day with less players than max',
  PRIMARY KEY (`dungeonId`,`maxLevel`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table lfg_entrances
# ------------------------------------------------------------

DROP TABLE IF EXISTS `lfg_entrances`;

CREATE TABLE `lfg_entrances` (
  `dungeonId` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Unique id from LFGDungeons.dbc',
  `name` varchar(255) DEFAULT NULL,
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`dungeonId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table lfr_access_requirement
# ------------------------------------------------------------

DROP TABLE IF EXISTS `lfr_access_requirement`;

CREATE TABLE `lfr_access_requirement` (
  `dungeon_id` int(10) unsigned NOT NULL,
  `level_min` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level_max` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `item` int(10) unsigned NOT NULL DEFAULT '0',
  `item2` int(10) unsigned NOT NULL DEFAULT '0',
  `quest_A` int(10) unsigned NOT NULL DEFAULT '0',
  `quest_H` int(10) unsigned NOT NULL DEFAULT '0',
  `achievement` int(10) unsigned NOT NULL DEFAULT '0',
  `leader_achievement` int(10) unsigned NOT NULL DEFAULT '0',
  `ilvl_min` int(10) unsigned NOT NULL DEFAULT '0',
  `ilvl_max` int(10) unsigned NOT NULL DEFAULT '0',
  `quest_failed_text` text,
  `comment` text,
  PRIMARY KEY (`dungeon_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table linked_respawn
# ------------------------------------------------------------

DROP TABLE IF EXISTS `linked_respawn`;

CREATE TABLE `linked_respawn` (
  `guid` int(10) unsigned NOT NULL COMMENT 'dependent creature',
  `linkedGuid` int(10) unsigned NOT NULL COMMENT 'master creature',
  `linkType` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`linkType`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Creature Respawn Link System';



# Dump of table locales_achievement_reward
# ------------------------------------------------------------

DROP TABLE IF EXISTS `locales_achievement_reward`;

CREATE TABLE `locales_achievement_reward` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `subject_loc1` varchar(100) NOT NULL DEFAULT '',
  `subject_loc2` varchar(100) NOT NULL DEFAULT '',
  `subject_loc3` varchar(100) NOT NULL DEFAULT '',
  `subject_loc4` varchar(100) NOT NULL DEFAULT '',
  `subject_loc5` varchar(100) NOT NULL DEFAULT '',
  `subject_loc6` varchar(100) NOT NULL DEFAULT '',
  `subject_loc7` varchar(100) NOT NULL DEFAULT '',
  `subject_loc8` varchar(100) NOT NULL DEFAULT '',
  `subject_loc9` varchar(100) NOT NULL DEFAULT '',
  `subject_loc10` varchar(100) NOT NULL DEFAULT '',
  `text_loc1` text,
  `text_loc2` text,
  `text_loc3` text,
  `text_loc4` text,
  `text_loc5` text,
  `text_loc6` text,
  `text_loc7` text,
  `text_loc8` text,
  `text_loc9` text,
  `text_loc10` text,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table locales_battlepay_display_info
# ------------------------------------------------------------

DROP TABLE IF EXISTS `locales_battlepay_display_info`;

CREATE TABLE `locales_battlepay_display_info` (
  `DisplayInfoId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Name_loc1` varchar(1024) NOT NULL DEFAULT '',
  `Name_loc2` varchar(1024) NOT NULL DEFAULT '',
  `Name_loc3` varchar(1024) NOT NULL DEFAULT '',
  `Name_loc4` varchar(1024) NOT NULL DEFAULT '',
  `Name_loc5` varchar(1024) NOT NULL DEFAULT '',
  `Name_loc6` varchar(1024) NOT NULL DEFAULT '',
  `Name_loc7` varchar(1024) NOT NULL DEFAULT '',
  `Name_loc8` varchar(1024) NOT NULL DEFAULT '',
  `Name_loc9` varchar(1024) NOT NULL DEFAULT '',
  `Name_loc10` varchar(1024) NOT NULL DEFAULT '',
  `Description_loc1` text NOT NULL,
  `Description_loc2` text NOT NULL,
  `Description_loc3` text NOT NULL,
  `Description_loc4` text NOT NULL,
  `Description_loc5` text NOT NULL,
  `Description_loc6` text NOT NULL,
  `Description_loc7` text NOT NULL,
  `Description_loc8` text NOT NULL,
  `Description_loc9` text NOT NULL,
  `Description_loc10` text NOT NULL,
  PRIMARY KEY (`DisplayInfoId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table locales_battlepay_product_group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `locales_battlepay_product_group`;

CREATE TABLE `locales_battlepay_product_group` (
  `GroupID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Name_loc1` text,
  `Name_loc2` text,
  `Name_loc3` text,
  `Name_loc4` text,
  `Name_loc5` text,
  `Name_loc6` text,
  `Name_loc7` text,
  `Name_loc8` text,
  `Name_loc9` text,
  `Name_loc10` text,
  PRIMARY KEY (`GroupID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table locales_creature
# ------------------------------------------------------------

DROP TABLE IF EXISTS `locales_creature`;

CREATE TABLE `locales_creature` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name_loc1` varchar(100) NOT NULL DEFAULT '',
  `femaleName_loc1` char(100) NOT NULL DEFAULT '',
  `name_loc2` varchar(100) NOT NULL DEFAULT '',
  `femaleName_loc2` char(100) NOT NULL DEFAULT '',
  `name_loc3` varchar(100) NOT NULL DEFAULT '',
  `femaleName_loc3` char(100) NOT NULL DEFAULT '',
  `name_loc4` varchar(100) NOT NULL DEFAULT '',
  `femaleName_loc4` char(100) NOT NULL DEFAULT '',
  `name_loc5` varchar(100) NOT NULL DEFAULT '',
  `femaleName_loc5` char(100) NOT NULL DEFAULT '',
  `name_loc6` varchar(100) NOT NULL DEFAULT '',
  `femaleName_loc6` char(100) NOT NULL DEFAULT '',
  `name_loc7` varchar(100) NOT NULL DEFAULT '',
  `femaleName_loc7` char(100) NOT NULL DEFAULT '',
  `name_loc8` varchar(100) NOT NULL DEFAULT '',
  `femaleName_loc8` char(100) NOT NULL DEFAULT '',
  `name_loc9` varchar(100) DEFAULT '',
  `femaleName_loc9` char(100) NOT NULL DEFAULT '',
  `name_loc10` varchar(100) DEFAULT '',
  `femaleName_loc10` char(100) NOT NULL DEFAULT '',
  `subname_loc1` varchar(100) DEFAULT '',
  `subname_loc2` varchar(100) DEFAULT '',
  `subname_loc3` varchar(100) DEFAULT '',
  `subname_loc4` varchar(100) DEFAULT '',
  `subname_loc5` varchar(100) DEFAULT '',
  `subname_loc6` varchar(100) DEFAULT '',
  `subname_loc7` varchar(100) DEFAULT '',
  `subname_loc8` varchar(100) DEFAULT '',
  `subname_loc9` varchar(100) DEFAULT '',
  `subname_loc10` varchar(100) DEFAULT '',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table locales_creature_text
# ------------------------------------------------------------

DROP TABLE IF EXISTS `locales_creature_text`;

CREATE TABLE `locales_creature_text` (
  `entry` int(10) unsigned NOT NULL,
  `textGroup` tinyint(3) unsigned NOT NULL,
  `id` int(10) unsigned NOT NULL,
  `text_loc1` text,
  `text_loc2` text,
  `text_loc3` text,
  `text_loc4` text,
  `text_loc5` text,
  `text_loc6` text,
  `text_loc7` text,
  `text_loc8` text,
  `text_loc9` text,
  `text_loc10` text,
  PRIMARY KEY (`entry`,`textGroup`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table locales_gameobject
# ------------------------------------------------------------

DROP TABLE IF EXISTS `locales_gameobject`;

CREATE TABLE `locales_gameobject` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name_loc1` varchar(100) NOT NULL DEFAULT '',
  `name_loc2` varchar(100) NOT NULL DEFAULT '',
  `name_loc3` varchar(100) NOT NULL DEFAULT '',
  `name_loc4` varchar(100) NOT NULL DEFAULT '',
  `name_loc5` varchar(100) NOT NULL DEFAULT '',
  `name_loc6` varchar(100) NOT NULL DEFAULT '',
  `name_loc7` varchar(100) NOT NULL DEFAULT '',
  `name_loc8` varchar(100) NOT NULL DEFAULT '',
  `name_loc9` varchar(100) NOT NULL DEFAULT '',
  `name_loc10` varchar(100) NOT NULL DEFAULT '',
  `castbarcaption_loc1` varchar(100) NOT NULL DEFAULT '',
  `castbarcaption_loc2` varchar(100) NOT NULL DEFAULT '',
  `castbarcaption_loc3` varchar(100) NOT NULL DEFAULT '',
  `castbarcaption_loc4` varchar(100) NOT NULL DEFAULT '',
  `castbarcaption_loc5` varchar(100) NOT NULL DEFAULT '',
  `castbarcaption_loc6` varchar(100) NOT NULL DEFAULT '',
  `castbarcaption_loc7` varchar(100) NOT NULL DEFAULT '',
  `castbarcaption_loc8` varchar(100) NOT NULL DEFAULT '',
  `castbarcaption_loc9` varchar(100) NOT NULL DEFAULT '',
  `castbarcaption_loc10` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table locales_gossip_menu_option
# ------------------------------------------------------------

DROP TABLE IF EXISTS `locales_gossip_menu_option`;

CREATE TABLE `locales_gossip_menu_option` (
  `menu_id` int(10) unsigned NOT NULL DEFAULT '0',
  `id` smallint(6) unsigned NOT NULL DEFAULT '0',
  `option_text_loc1` text,
  `option_text_loc2` text,
  `option_text_loc3` text,
  `option_text_loc4` text,
  `option_text_loc5` text,
  `option_text_loc6` text,
  `option_text_loc7` text,
  `option_text_loc8` text,
  `option_text_loc9` text,
  `option_text_loc10` text,
  `box_text_loc1` text,
  `box_text_loc2` text,
  `box_text_loc3` text,
  `box_text_loc4` text,
  `box_text_loc5` text,
  `box_text_loc6` text,
  `box_text_loc7` text,
  `box_text_loc8` text,
  `box_text_loc9` text,
  `box_text_loc10` text,
  PRIMARY KEY (`menu_id`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table locales_item
# ------------------------------------------------------------

DROP TABLE IF EXISTS `locales_item`;

CREATE TABLE `locales_item` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name_loc1` varchar(100) NOT NULL DEFAULT '',
  `name_loc2` varchar(100) NOT NULL DEFAULT '',
  `name_loc3` varchar(100) NOT NULL DEFAULT '',
  `name_loc4` varchar(100) NOT NULL DEFAULT '',
  `name_loc5` varchar(100) NOT NULL DEFAULT '',
  `name_loc6` varchar(100) NOT NULL DEFAULT '',
  `name_loc7` varchar(100) NOT NULL DEFAULT '',
  `name_loc8` varchar(100) NOT NULL DEFAULT '',
  `name_loc9` varchar(100) DEFAULT '',
  `name_loc10` varchar(100) DEFAULT '',
  `description_loc1` varchar(255) DEFAULT NULL,
  `description_loc2` varchar(255) DEFAULT NULL,
  `description_loc3` varchar(255) DEFAULT NULL,
  `description_loc4` varchar(255) DEFAULT NULL,
  `description_loc5` varchar(255) DEFAULT NULL,
  `description_loc6` varchar(255) DEFAULT NULL,
  `description_loc7` varchar(255) DEFAULT NULL,
  `description_loc8` varchar(255) DEFAULT NULL,
  `description_loc9` varchar(255) DEFAULT NULL,
  `description_loc10` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table locales_npc_text
# ------------------------------------------------------------

DROP TABLE IF EXISTS `locales_npc_text`;

CREATE TABLE `locales_npc_text` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Text0_0_loc1` longtext,
  `Text0_0_loc2` longtext,
  `Text0_0_loc3` longtext,
  `Text0_0_loc4` longtext,
  `Text0_0_loc5` longtext,
  `Text0_0_loc6` longtext,
  `Text0_0_loc7` longtext,
  `Text0_0_loc8` longtext,
  `Text0_0_loc9` longtext,
  `Text0_0_loc10` longtext,
  `Text0_1_loc1` longtext,
  `Text0_1_loc2` longtext,
  `Text0_1_loc3` longtext,
  `Text0_1_loc4` longtext,
  `Text0_1_loc5` longtext,
  `Text0_1_loc6` longtext,
  `Text0_1_loc7` longtext,
  `Text0_1_loc8` longtext,
  `Text0_1_loc9` longtext,
  `Text0_1_loc10` longtext,
  `Text1_0_loc1` longtext,
  `Text1_0_loc2` longtext,
  `Text1_0_loc3` longtext,
  `Text1_0_loc4` longtext,
  `Text1_0_loc5` longtext,
  `Text1_0_loc6` longtext,
  `Text1_0_loc7` longtext,
  `Text1_0_loc8` longtext,
  `Text1_0_loc9` longtext,
  `Text1_0_loc10` longtext,
  `Text1_1_loc1` longtext,
  `Text1_1_loc2` longtext,
  `Text1_1_loc3` longtext,
  `Text1_1_loc4` longtext,
  `Text1_1_loc5` longtext,
  `Text1_1_loc6` longtext,
  `Text1_1_loc7` longtext,
  `Text1_1_loc8` longtext,
  `Text1_1_loc9` longtext,
  `Text1_1_loc10` longtext,
  `Text2_0_loc1` longtext,
  `Text2_0_loc2` longtext,
  `Text2_0_loc3` longtext,
  `Text2_0_loc4` longtext,
  `Text2_0_loc5` longtext,
  `Text2_0_loc6` longtext,
  `Text2_0_loc7` longtext,
  `Text2_0_loc8` longtext,
  `Text2_0_loc9` longtext,
  `Text2_0_loc10` longtext,
  `Text2_1_loc1` longtext,
  `Text2_1_loc2` longtext,
  `Text2_1_loc3` longtext,
  `Text2_1_loc4` longtext,
  `Text2_1_loc5` longtext,
  `Text2_1_loc6` longtext,
  `Text2_1_loc7` longtext,
  `Text2_1_loc8` longtext,
  `Text2_1_loc9` longtext,
  `Text2_1_loc10` longtext,
  `Text3_0_loc1` longtext,
  `Text3_0_loc2` longtext,
  `Text3_0_loc3` longtext,
  `Text3_0_loc4` longtext,
  `Text3_0_loc5` longtext,
  `Text3_0_loc6` longtext,
  `Text3_0_loc7` longtext,
  `Text3_0_loc8` longtext,
  `Text3_0_loc9` longtext,
  `Text3_0_loc10` longtext,
  `Text3_1_loc1` longtext,
  `Text3_1_loc2` longtext,
  `Text3_1_loc3` longtext,
  `Text3_1_loc4` longtext,
  `Text3_1_loc5` longtext,
  `Text3_1_loc6` longtext,
  `Text3_1_loc7` longtext,
  `Text3_1_loc8` longtext,
  `Text3_1_loc9` longtext,
  `Text3_1_loc10` longtext,
  `Text4_0_loc1` longtext,
  `Text4_0_loc2` longtext,
  `Text4_0_loc3` longtext,
  `Text4_0_loc4` longtext,
  `Text4_0_loc5` longtext,
  `Text4_0_loc6` longtext,
  `Text4_0_loc7` longtext,
  `Text4_0_loc8` longtext,
  `Text4_0_loc9` longtext,
  `Text4_0_loc10` longtext,
  `Text4_1_loc1` longtext,
  `Text4_1_loc2` longtext,
  `Text4_1_loc3` longtext,
  `Text4_1_loc4` longtext,
  `Text4_1_loc5` longtext,
  `Text4_1_loc6` longtext,
  `Text4_1_loc7` longtext,
  `Text4_1_loc8` longtext,
  `Text4_1_loc9` longtext,
  `Text4_1_loc10` longtext,
  `Text5_0_loc1` longtext,
  `Text5_0_loc2` longtext,
  `Text5_0_loc3` longtext,
  `Text5_0_loc4` longtext,
  `Text5_0_loc5` longtext,
  `Text5_0_loc6` longtext,
  `Text5_0_loc7` longtext,
  `Text5_0_loc8` longtext,
  `Text5_0_loc9` longtext,
  `Text5_0_loc10` longtext,
  `Text5_1_loc1` longtext,
  `Text5_1_loc2` longtext,
  `Text5_1_loc3` longtext,
  `Text5_1_loc4` longtext,
  `Text5_1_loc5` longtext,
  `Text5_1_loc6` longtext,
  `Text5_1_loc7` longtext,
  `Text5_1_loc8` longtext,
  `Text5_1_loc9` longtext,
  `Text5_1_loc10` longtext,
  `Text6_0_loc1` longtext,
  `Text6_0_loc2` longtext,
  `Text6_0_loc3` longtext,
  `Text6_0_loc4` longtext,
  `Text6_0_loc5` longtext,
  `Text6_0_loc6` longtext,
  `Text6_0_loc7` longtext,
  `Text6_0_loc8` longtext,
  `Text6_0_loc9` longtext,
  `Text6_0_loc10` longtext,
  `Text6_1_loc1` longtext,
  `Text6_1_loc2` longtext,
  `Text6_1_loc3` longtext,
  `Text6_1_loc4` longtext,
  `Text6_1_loc5` longtext,
  `Text6_1_loc6` longtext,
  `Text6_1_loc7` longtext,
  `Text6_1_loc8` longtext,
  `Text6_1_loc9` longtext,
  `Text6_1_loc10` longtext,
  `Text7_0_loc1` longtext,
  `Text7_0_loc2` longtext,
  `Text7_0_loc3` longtext,
  `Text7_0_loc4` longtext,
  `Text7_0_loc5` longtext,
  `Text7_0_loc6` longtext,
  `Text7_0_loc7` longtext,
  `Text7_0_loc8` longtext,
  `Text7_0_loc9` longtext,
  `Text7_0_loc10` longtext,
  `Text7_1_loc1` longtext,
  `Text7_1_loc2` longtext,
  `Text7_1_loc3` longtext,
  `Text7_1_loc4` longtext,
  `Text7_1_loc5` longtext,
  `Text7_1_loc6` longtext,
  `Text7_1_loc7` longtext,
  `Text7_1_loc8` longtext,
  `Text7_1_loc9` longtext,
  `Text7_1_loc10` longtext,
  `Text8_0_loc1` longtext,
  `Text8_0_loc2` longtext,
  `Text8_0_loc3` longtext,
  `Text8_0_loc4` longtext,
  `Text8_0_loc5` longtext,
  `Text8_0_loc6` longtext,
  `Text8_0_loc7` longtext,
  `Text8_0_loc8` longtext,
  `Text8_0_loc9` longtext,
  `Text8_0_loc10` longtext,
  `Text8_1_loc1` longtext,
  `Text8_1_loc2` longtext,
  `Text8_1_loc3` longtext,
  `Text8_1_loc4` longtext,
  `Text8_1_loc5` longtext,
  `Text8_1_loc6` longtext,
  `Text8_1_loc7` longtext,
  `Text8_1_loc8` longtext,
  `Text8_1_loc9` longtext,
  `Text8_1_loc10` longtext,
  `Text9_0_loc1` longtext,
  `Text9_0_loc2` longtext,
  `Text9_0_loc3` longtext,
  `Text9_0_loc4` longtext,
  `Text9_0_loc5` longtext,
  `Text9_0_loc6` longtext,
  `Text9_0_loc7` longtext,
  `Text9_0_loc8` longtext,
  `Text9_0_loc9` longtext,
  `Text9_0_loc10` longtext,
  `Text9_1_loc1` longtext,
  `Text9_1_loc2` longtext,
  `Text9_1_loc3` longtext,
  `Text9_1_loc4` longtext,
  `Text9_1_loc5` longtext,
  `Text9_1_loc6` longtext,
  `Text9_1_loc7` longtext,
  `Text9_1_loc8` longtext,
  `Text9_1_loc9` longtext,
  `Text9_1_loc10` longtext,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table locales_page_text
# ------------------------------------------------------------

DROP TABLE IF EXISTS `locales_page_text`;

CREATE TABLE `locales_page_text` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Text_loc1` longtext,
  `Text_loc2` longtext,
  `Text_loc3` longtext,
  `Text_loc4` longtext,
  `Text_loc5` longtext,
  `Text_loc6` longtext,
  `Text_loc7` longtext,
  `Text_loc8` longtext,
  `Text_loc9` longtext,
  `Text_loc10` longtext,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table locales_points_of_interest
# ------------------------------------------------------------

DROP TABLE IF EXISTS `locales_points_of_interest`;

CREATE TABLE `locales_points_of_interest` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `icon_name_loc1` text,
  `icon_name_loc2` text,
  `icon_name_loc3` text,
  `icon_name_loc4` text,
  `icon_name_loc5` text,
  `icon_name_loc6` text,
  `icon_name_loc7` text,
  `icon_name_loc8` text,
  `icon_name_loc9` text,
  `icon_name_loc10` text,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table locales_quest
# ------------------------------------------------------------

DROP TABLE IF EXISTS `locales_quest`;

CREATE TABLE `locales_quest` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Title_loc1` text,
  `Title_loc2` text,
  `Title_loc3` text,
  `Title_loc4` text,
  `Title_loc5` text,
  `Title_loc6` text,
  `Title_loc7` text,
  `Title_loc8` text,
  `Title_loc9` text,
  `Title_loc10` text,
  `Details_loc1` text,
  `Details_loc2` text,
  `Details_loc3` text,
  `Details_loc4` text,
  `Details_loc5` text,
  `Details_loc6` text,
  `Details_loc7` text,
  `Details_loc8` text,
  `Details_loc9` text,
  `Details_loc10` text,
  `Objectives_loc1` text,
  `Objectives_loc2` text,
  `Objectives_loc3` text,
  `Objectives_loc4` text,
  `Objectives_loc5` text,
  `Objectives_loc6` text,
  `Objectives_loc7` text,
  `Objectives_loc8` text,
  `Objectives_loc9` text,
  `Objectives_loc10` text,
  `OfferRewardText_loc1` text,
  `OfferRewardText_loc2` text,
  `OfferRewardText_loc3` text,
  `OfferRewardText_loc4` text,
  `OfferRewardText_loc5` text,
  `OfferRewardText_loc6` text,
  `OfferRewardText_loc7` text,
  `OfferRewardText_loc8` text,
  `OfferRewardText_loc9` text,
  `OfferRewardText_loc10` text,
  `RequestItemsText_loc1` text,
  `RequestItemsText_loc2` text,
  `RequestItemsText_loc3` text,
  `RequestItemsText_loc4` text,
  `RequestItemsText_loc5` text,
  `RequestItemsText_loc6` text,
  `RequestItemsText_loc7` text,
  `RequestItemsText_loc8` text,
  `RequestItemsText_loc9` text,
  `RequestItemsText_loc10` text,
  `EndText_loc1` text,
  `EndText_loc2` text,
  `EndText_loc3` text,
  `EndText_loc4` text,
  `EndText_loc5` text,
  `EndText_loc6` text,
  `EndText_loc7` text,
  `EndText_loc8` text,
  `EndText_loc9` text,
  `EndText_loc10` text,
  `CompletedText_loc1` text,
  `CompletedText_loc2` text,
  `CompletedText_loc3` text,
  `CompletedText_loc4` text,
  `CompletedText_loc5` text,
  `CompletedText_loc6` text,
  `CompletedText_loc7` text,
  `CompletedText_loc8` text,
  `CompletedText_loc9` text,
  `CompletedText_loc10` text,
  `QuestGiverTextWindow_loc1` text,
  `QuestGiverTextWindow_loc2` text,
  `QuestGiverTextWindow_loc3` text,
  `QuestGiverTextWindow_loc4` text,
  `QuestGiverTextWindow_loc5` text,
  `QuestGiverTextWindow_loc6` text,
  `QuestGiverTextWindow_loc7` text,
  `QuestGiverTextWindow_loc8` text,
  `QuestGiverTextWindow_loc9` text,
  `QuestGiverTextWindow_loc10` text,
  `QuestGiverTargetName_loc1` text,
  `QuestGiverTargetName_loc2` text,
  `QuestGiverTargetName_loc3` text,
  `QuestGiverTargetName_loc4` text,
  `QuestGiverTargetName_loc5` text,
  `QuestGiverTargetName_loc6` text,
  `QuestGiverTargetName_loc7` text,
  `QuestGiverTargetName_loc8` text,
  `QuestGiverTargetName_loc9` text,
  `QuestGiverTargetName_loc10` text,
  `QuestTurnTextWindow_loc1` text,
  `QuestTurnTextWindow_loc2` text,
  `QuestTurnTextWindow_loc3` text,
  `QuestTurnTextWindow_loc4` text,
  `QuestTurnTextWindow_loc5` text,
  `QuestTurnTextWindow_loc6` text,
  `QuestTurnTextWindow_loc7` text,
  `QuestTurnTextWindow_loc8` text,
  `QuestTurnTextWindow_loc9` text,
  `QuestTurnTextWindow_loc10` text,
  `QuestTurnTargetName_loc1` text,
  `QuestTurnTargetName_loc2` text,
  `QuestTurnTargetName_loc3` text,
  `QuestTurnTargetName_loc4` text,
  `QuestTurnTargetName_loc5` text,
  `QuestTurnTargetName_loc6` text,
  `QuestTurnTargetName_loc7` text,
  `QuestTurnTargetName_loc8` text,
  `QuestTurnTargetName_loc9` text,
  `QuestTurnTargetName_loc10` text,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table locales_quest_template_objective
# ------------------------------------------------------------

DROP TABLE IF EXISTS `locales_quest_template_objective`;

CREATE TABLE `locales_quest_template_objective` (
  `ID` int(10) unsigned NOT NULL DEFAULT '0',
  `Locale` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Description` text,
  PRIMARY KEY (`ID`,`Locale`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table mail_level_reward
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mail_level_reward`;

CREATE TABLE `mail_level_reward` (
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `raceMask` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mailTemplateId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `senderEntry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`level`,`raceMask`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Mail System';



# Dump of table mail_loot_template
# ------------------------------------------------------------

DROP TABLE IF EXISTS `mail_loot_template`;

CREATE TABLE `mail_loot_template` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `item` mediumint(8) NOT NULL DEFAULT '0',
  `ChanceOrQuestChance` float NOT NULL DEFAULT '100',
  `lootmode` smallint(5) unsigned NOT NULL DEFAULT '1',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mincountOrRef` mediumint(8) NOT NULL DEFAULT '1',
  `maxcount` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `itemBonuses` text NOT NULL,
  PRIMARY KEY (`entry`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Loot System';



# Dump of table milling_loot_template
# ------------------------------------------------------------

DROP TABLE IF EXISTS `milling_loot_template`;

CREATE TABLE `milling_loot_template` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `item` mediumint(8) NOT NULL DEFAULT '0',
  `ChanceOrQuestChance` float NOT NULL DEFAULT '100',
  `lootmode` smallint(5) unsigned NOT NULL DEFAULT '1',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mincountOrRef` mediumint(8) NOT NULL DEFAULT '1',
  `maxcount` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `itemBonuses` text NOT NULL,
  PRIMARY KEY (`entry`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Loot System';



# Dump of table npc_recipe_condition
# ------------------------------------------------------------

DROP TABLE IF EXISTS `npc_recipe_condition`;

CREATE TABLE `npc_recipe_condition` (
  `NpcEntry` mediumint(10) unsigned NOT NULL DEFAULT '0',
  `RecipeID` mediumint(10) unsigned NOT NULL DEFAULT '0',
  `PlayerConditionID` mediumint(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`NpcEntry`,`RecipeID`,`PlayerConditionID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table npc_spellclick_spells
# ------------------------------------------------------------

DROP TABLE IF EXISTS `npc_spellclick_spells`;

CREATE TABLE `npc_spellclick_spells` (
  `npc_entry` int(10) unsigned NOT NULL COMMENT 'reference to creature_template',
  `spell_id` int(10) unsigned NOT NULL COMMENT 'spell which should be casted ',
  `cast_flags` tinyint(3) unsigned NOT NULL COMMENT 'first bit defines caster: 1=player, 0=creature; second bit defines target, same mapping as caster bit',
  `user_type` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'relation with summoner: 0-no 1-friendly 2-raid 3-party player can click',
  PRIMARY KEY (`npc_entry`,`spell_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table npc_text
# ------------------------------------------------------------

DROP TABLE IF EXISTS `npc_text`;

CREATE TABLE `npc_text` (
  `ID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `text0_0` longtext,
  `text0_1` longtext,
  `lang0` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `prob0` float NOT NULL DEFAULT '0',
  `em0_0` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em0_1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em0_2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em0_3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em0_4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em0_5` smallint(5) unsigned NOT NULL DEFAULT '0',
  `text1_0` longtext,
  `text1_1` longtext,
  `lang1` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `prob1` float NOT NULL DEFAULT '0',
  `em1_0` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em1_1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em1_2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em1_3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em1_4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em1_5` smallint(5) unsigned NOT NULL DEFAULT '0',
  `text2_0` longtext,
  `text2_1` longtext,
  `lang2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `prob2` float NOT NULL DEFAULT '0',
  `em2_0` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em2_1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em2_2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em2_3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em2_4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em2_5` smallint(5) unsigned NOT NULL DEFAULT '0',
  `text3_0` longtext,
  `text3_1` longtext,
  `lang3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `prob3` float NOT NULL DEFAULT '0',
  `em3_0` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em3_1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em3_2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em3_3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em3_4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em3_5` smallint(5) unsigned NOT NULL DEFAULT '0',
  `text4_0` longtext,
  `text4_1` longtext,
  `lang4` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `prob4` float NOT NULL DEFAULT '0',
  `em4_0` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em4_1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em4_2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em4_3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em4_4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em4_5` smallint(5) unsigned NOT NULL DEFAULT '0',
  `text5_0` longtext,
  `text5_1` longtext,
  `lang5` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `prob5` float NOT NULL DEFAULT '0',
  `em5_0` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em5_1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em5_2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em5_3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em5_4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em5_5` smallint(5) unsigned NOT NULL DEFAULT '0',
  `text6_0` longtext,
  `text6_1` longtext,
  `lang6` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `prob6` float NOT NULL DEFAULT '0',
  `em6_0` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em6_1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em6_2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em6_3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em6_4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em6_5` smallint(5) unsigned NOT NULL DEFAULT '0',
  `text7_0` longtext,
  `text7_1` longtext,
  `lang7` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `prob7` float NOT NULL DEFAULT '0',
  `em7_0` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em7_1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em7_2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em7_3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em7_4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `em7_5` smallint(5) unsigned NOT NULL DEFAULT '0',
  `BuildVerified` smallint(6) DEFAULT '1',
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table npc_trainer
# ------------------------------------------------------------

DROP TABLE IF EXISTS `npc_trainer`;

CREATE TABLE `npc_trainer` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `spell` mediumint(8) NOT NULL DEFAULT '0',
  `spellcost` int(10) unsigned NOT NULL DEFAULT '0',
  `reqskill` smallint(5) unsigned NOT NULL DEFAULT '0',
  `reqskillvalue` smallint(5) unsigned NOT NULL DEFAULT '0',
  `reqlevel` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`,`spell`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table npc_vendor
# ------------------------------------------------------------

DROP TABLE IF EXISTS `npc_vendor`;

CREATE TABLE `npc_vendor` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `slot` smallint(6) NOT NULL DEFAULT '0',
  `item` mediumint(8) NOT NULL DEFAULT '0',
  `maxcount` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `incrtime` int(10) unsigned NOT NULL DEFAULT '0',
  `ExtendedCost` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `PlayerConditionID` int(10) unsigned DEFAULT '0',
  PRIMARY KEY (`entry`,`item`,`ExtendedCost`,`type`),
  KEY `slot` (`slot`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Npc System';



# Dump of table npc_vendor_parse
# ------------------------------------------------------------

DROP TABLE IF EXISTS `npc_vendor_parse`;

CREATE TABLE `npc_vendor_parse` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `slot` smallint(6) NOT NULL DEFAULT '0',
  `item` mediumint(8) NOT NULL DEFAULT '0',
  `maxcount` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `incrtime` int(10) unsigned NOT NULL DEFAULT '0',
  `ExtendedCost` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`entry`,`item`,`ExtendedCost`,`type`),
  KEY `slot` (`slot`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Npc System';



# Dump of table outdoorpvp_template
# ------------------------------------------------------------

DROP TABLE IF EXISTS `outdoorpvp_template`;

CREATE TABLE `outdoorpvp_template` (
  `TypeId` tinyint(3) unsigned NOT NULL,
  `ScriptName` char(64) NOT NULL DEFAULT '',
  `comment` text,
  PRIMARY KEY (`TypeId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='OutdoorPvP Templates';



# Dump of table page_text
# ------------------------------------------------------------

DROP TABLE IF EXISTS `page_text`;

CREATE TABLE `page_text` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `text` longtext NOT NULL,
  `next_page` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `WDBVerified` smallint(6) DEFAULT '1',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Item System';



# Dump of table pet_aura
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pet_aura`;

CREATE TABLE `pet_aura` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Global Unique Identifier',
  `slot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `caster_guid` bigint(20) unsigned NOT NULL DEFAULT '0' COMMENT 'Full Global Unique Identifier',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `effect_mask` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `recalculate_mask` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `stackcount` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `maxduration` int(11) NOT NULL DEFAULT '0',
  `remaintime` int(11) NOT NULL DEFAULT '0',
  `remaincharges` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`spell`,`effect_mask`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Pet System';



# Dump of table pet_aura_effect
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pet_aura_effect`;

CREATE TABLE `pet_aura_effect` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `slot` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `effect` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `amount` int(11) NOT NULL DEFAULT '0',
  `baseamount` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`,`slot`,`effect`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table pet_name_generation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pet_name_generation`;

CREATE TABLE `pet_name_generation` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `word` tinytext NOT NULL,
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `half` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table pet_stats
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pet_stats`;

CREATE TABLE `pet_stats` (
  `entry` int(11) unsigned NOT NULL COMMENT 'entry of the pet, 1 for hunter pet',
  `speed` float NOT NULL DEFAULT '1.14' COMMENT 'speed of the pet',
  `powerstatbase` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'which owner''s stat using to compute attack & spell power (0 = AP, 1 = SP)',
  `armor_coef` float NOT NULL DEFAULT '1' COMMENT '% of armor of the owner the pet have',
  `apsp_coef` float NOT NULL DEFAULT '1' COMMENT '% of the attack power / spellpower of the owner the pet have',
  `health_coef` float NOT NULL DEFAULT '1' COMMENT '% of health of the owner the pet have',
  `damage_coef` float NOT NULL DEFAULT '0.85' COMMENT '% of the attack power / spell power to use to compute min/max dmg',
  `attackspeed` float NOT NULL DEFAULT '1.82' COMMENT '% of the base attack speed of the pet',
  `powertype` int(11) unsigned NOT NULL,
  `createpower` float NOT NULL,
  `secondarystat_coef` float NOT NULL,
  `comment` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`entry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table phase_definitions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `phase_definitions`;

CREATE TABLE `phase_definitions` (
  `zoneId` int(11) unsigned NOT NULL DEFAULT '0',
  `entry` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `phasemask` int(11) unsigned NOT NULL DEFAULT '0',
  `phaseId` int(11) unsigned NOT NULL DEFAULT '0',
  `terrainswapmap` int(11) unsigned NOT NULL DEFAULT '0',
  `flags` tinyint(3) unsigned DEFAULT '0',
  `comment` text,
  PRIMARY KEY (`zoneId`,`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table pickpocketing_loot_template
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pickpocketing_loot_template`;

CREATE TABLE `pickpocketing_loot_template` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `item` mediumint(8) NOT NULL DEFAULT '0',
  `ChanceOrQuestChance` float NOT NULL DEFAULT '100',
  `lootmode` smallint(5) unsigned NOT NULL DEFAULT '1',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mincountOrRef` mediumint(8) NOT NULL DEFAULT '1',
  `maxcount` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `itemBonuses` text NOT NULL,
  PRIMARY KEY (`entry`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Loot System';



# Dump of table player_factionchange_achievement
# ------------------------------------------------------------

DROP TABLE IF EXISTS `player_factionchange_achievement`;

CREATE TABLE `player_factionchange_achievement` (
  `alliance_id` int(10) unsigned NOT NULL,
  `horde_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`alliance_id`,`horde_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table player_factionchange_items
# ------------------------------------------------------------

DROP TABLE IF EXISTS `player_factionchange_items`;

CREATE TABLE `player_factionchange_items` (
  `race_A` int(10) unsigned NOT NULL,
  `alliance_id` int(10) unsigned NOT NULL,
  `commentA` text,
  `race_H` int(10) unsigned NOT NULL,
  `horde_id` int(10) unsigned NOT NULL,
  `commentH` text,
  PRIMARY KEY (`alliance_id`,`horde_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table player_factionchange_reputations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `player_factionchange_reputations`;

CREATE TABLE `player_factionchange_reputations` (
  `alliance_id` int(10) unsigned NOT NULL,
  `horde_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`alliance_id`,`horde_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table player_factionchange_spells
# ------------------------------------------------------------

DROP TABLE IF EXISTS `player_factionchange_spells`;

CREATE TABLE `player_factionchange_spells` (
  `alliance_id` int(10) unsigned NOT NULL,
  `horde_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`alliance_id`,`horde_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table player_factionchange_titles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `player_factionchange_titles`;

CREATE TABLE `player_factionchange_titles` (
  `alliance_id` int(8) NOT NULL,
  `horde_id` int(8) NOT NULL,
  PRIMARY KEY (`alliance_id`,`horde_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table player_levelstats
# ------------------------------------------------------------

DROP TABLE IF EXISTS `player_levelstats`;

CREATE TABLE `player_levelstats` (
  `race` tinyint(3) unsigned NOT NULL,
  `class` tinyint(3) unsigned NOT NULL,
  `level` tinyint(3) unsigned NOT NULL,
  `str` smallint(4) unsigned NOT NULL,
  `agi` smallint(4) unsigned NOT NULL,
  `sta` smallint(4) unsigned NOT NULL,
  `inte` smallint(4) unsigned NOT NULL,
  `spi` smallint(4) unsigned NOT NULL,
  PRIMARY KEY (`race`,`class`,`level`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 PACK_KEYS=0 COMMENT='Stores levels stats.';



# Dump of table playercreateinfo
# ------------------------------------------------------------

DROP TABLE IF EXISTS `playercreateinfo`;

CREATE TABLE `playercreateinfo` (
  `race` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `map` smallint(5) unsigned NOT NULL DEFAULT '0',
  `zone` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`race`,`class`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table playercreateinfo_action
# ------------------------------------------------------------

DROP TABLE IF EXISTS `playercreateinfo_action`;

CREATE TABLE `playercreateinfo_action` (
  `race` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `button` smallint(5) unsigned NOT NULL DEFAULT '0',
  `action` int(10) unsigned NOT NULL DEFAULT '0',
  `type` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`race`,`class`,`button`),
  KEY `playercreateinfo_race_class_index` (`race`,`class`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table playercreateinfo_cast_spell
# ------------------------------------------------------------

DROP TABLE IF EXISTS `playercreateinfo_cast_spell`;

CREATE TABLE `playercreateinfo_cast_spell` (
  `raceMask` int(10) unsigned NOT NULL DEFAULT '0',
  `classMask` int(10) unsigned NOT NULL DEFAULT '0',
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `note` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table playercreateinfo_item
# ------------------------------------------------------------

DROP TABLE IF EXISTS `playercreateinfo_item`;

CREATE TABLE `playercreateinfo_item` (
  `race` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `itemid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `amount` tinyint(4) NOT NULL DEFAULT '1',
  KEY `playercreateinfo_race_class_index` (`race`,`class`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table playercreateinfo_spell
# ------------------------------------------------------------

DROP TABLE IF EXISTS `playercreateinfo_spell`;

CREATE TABLE `playercreateinfo_spell` (
  `race` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Spell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`race`,`class`,`Spell`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table playercreateinfo_spell_custom
# ------------------------------------------------------------

DROP TABLE IF EXISTS `playercreateinfo_spell_custom`;

CREATE TABLE `playercreateinfo_spell_custom` (
  `race` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Spell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Note` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`race`,`class`,`Spell`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table points_of_interest
# ------------------------------------------------------------

DROP TABLE IF EXISTS `points_of_interest`;

CREATE TABLE `points_of_interest` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `icon` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `flags` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `data` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `icon_name` text NOT NULL,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table pool_creature
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pool_creature`;

CREATE TABLE `pool_creature` (
  `guid` int(10) unsigned NOT NULL,
  `pool_entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `chance` float unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table pool_gameobject
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pool_gameobject`;

CREATE TABLE `pool_gameobject` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `pool_entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `chance` float unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`guid`),
  KEY `idx_guid` (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table pool_pool
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pool_pool`;

CREATE TABLE `pool_pool` (
  `pool_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mother_pool` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `chance` float NOT NULL DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`pool_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table pool_quest
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pool_quest`;

CREATE TABLE `pool_quest` (
  `entry` int(10) unsigned NOT NULL DEFAULT '0',
  `pool_entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`entry`),
  KEY `idx_guid` (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table pool_template
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pool_template`;

CREATE TABLE `pool_template` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Pool entry',
  `max_limit` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Max number of objects (0) is no limit',
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table prospecting_loot_template
# ------------------------------------------------------------

DROP TABLE IF EXISTS `prospecting_loot_template`;

CREATE TABLE `prospecting_loot_template` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `item` mediumint(8) NOT NULL DEFAULT '0',
  `ChanceOrQuestChance` float NOT NULL DEFAULT '100',
  `lootmode` smallint(5) unsigned NOT NULL DEFAULT '1',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mincountOrRef` mediumint(8) NOT NULL DEFAULT '1',
  `maxcount` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `itemBonuses` text NOT NULL,
  PRIMARY KEY (`entry`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Loot System';



# Dump of table quest_end_scripts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `quest_end_scripts`;

CREATE TABLE `quest_end_scripts` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `delay` int(10) unsigned NOT NULL DEFAULT '0',
  `command` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `datalong` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `datalong2` int(10) unsigned NOT NULL DEFAULT '0',
  `dataint` int(11) NOT NULL DEFAULT '0',
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `o` float NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table quest_poi
# ------------------------------------------------------------

DROP TABLE IF EXISTS `quest_poi`;

CREATE TABLE `quest_poi` (
  `QuestID` int(10) unsigned NOT NULL DEFAULT '0',
  `BlobIndex` int(10) unsigned NOT NULL DEFAULT '0',
  `ObjectiveIndex` int(11) NOT NULL DEFAULT '0',
  `MapID` int(10) unsigned NOT NULL DEFAULT '0',
  `WorldMapAreaId` int(10) unsigned NOT NULL DEFAULT '0',
  `Floor` int(10) unsigned NOT NULL DEFAULT '0',
  `Priority` int(10) unsigned NOT NULL DEFAULT '0',
  `Flags` int(10) unsigned NOT NULL DEFAULT '0',
  `WorldEffectID` int(10) unsigned NOT NULL DEFAULT '0',
  `PlayerConditionID` int(10) unsigned NOT NULL DEFAULT '0',
  `Unk` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`QuestID`,`BlobIndex`,`ObjectiveIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table quest_poi_points
# ------------------------------------------------------------

DROP TABLE IF EXISTS `quest_poi_points`;

CREATE TABLE `quest_poi_points` (
  `questId` int(10) unsigned NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `idx` int(10) unsigned NOT NULL DEFAULT '0',
  `x` int(11) NOT NULL DEFAULT '0',
  `y` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`questId`,`id`,`idx`),
  KEY `questId_id` (`questId`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table quest_start_scripts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `quest_start_scripts`;

CREATE TABLE `quest_start_scripts` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `delay` int(10) unsigned NOT NULL DEFAULT '0',
  `command` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `datalong` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `datalong2` int(10) unsigned NOT NULL DEFAULT '0',
  `dataint` int(11) NOT NULL DEFAULT '0',
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `o` float NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table quest_template
# ------------------------------------------------------------

DROP TABLE IF EXISTS `quest_template`;

CREATE TABLE `quest_template` (
  `Id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Method` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT '0 = Autocomplete, 1 = Disabled, 2 = Enabled and not Autocomplete',
  `Level` smallint(3) NOT NULL DEFAULT '1',
  `MinLevel` smallint(6) NOT NULL DEFAULT '0',
  `MaxLevel` smallint(6) NOT NULL DEFAULT '0',
  `PackageID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ZoneOrSort` smallint(6) NOT NULL DEFAULT '0',
  `Type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `SuggestedPlayers` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `LimitTime` int(10) unsigned NOT NULL DEFAULT '0',
  `RequiredTeam` tinyint(1) NOT NULL DEFAULT '-1',
  `RequiredClasses` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RequiredRaces` int(10) unsigned NOT NULL DEFAULT '0',
  `RequiredSkillId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredSkillPoints` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredFactionKills` mediumint(8) NOT NULL DEFAULT '0',
  `RequiredFactionKillsCount` smallint(5) NOT NULL DEFAULT '0',
  `RequiredPetBattleWith` mediumint(8) NOT NULL DEFAULT '0',
  `RequiredMinRepFaction` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredMaxRepFaction` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RequiredMinRepValue` mediumint(8) NOT NULL DEFAULT '0',
  `RequiredMaxRepValue` mediumint(8) NOT NULL DEFAULT '0',
  `PrevQuestId` mediumint(8) NOT NULL DEFAULT '0',
  `NextQuestId` mediumint(8) NOT NULL DEFAULT '0',
  `ExclusiveGroup` mediumint(8) NOT NULL DEFAULT '0',
  `NextQuestIdChain` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewardXPId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `RewardXPId2` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'New field from WDB',
  `RewardMoney` int(11) NOT NULL DEFAULT '0',
  `RewardMoneyMaxLevel` int(10) unsigned NOT NULL DEFAULT '0',
  `RewardSpell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewardSpellCast` int(11) NOT NULL DEFAULT '0',
  `RewardHonor` int(11) NOT NULL DEFAULT '0',
  `RewardHonorMultiplier` float NOT NULL DEFAULT '1',
  `RewardMailTemplateId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewardMailDelay` int(11) unsigned NOT NULL DEFAULT '0',
  `SourceItemId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `SourceSpellId` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Flags` int(10) unsigned NOT NULL DEFAULT '0',
  `Flags2` int(10) unsigned NOT NULL DEFAULT '0',
  `SpecialFlags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `MinimapTargetMark` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewardTitleId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `RequiredPlayerKills` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `RewardTalents` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `RewardArenaPoints` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RewardSkillId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RewardSkillPoints` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `RewardReputationMask` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `QuestGiverPortrait` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `QuestTurnInPortrait` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewardItemId1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewardItemId2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewardItemId3` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewardItemId4` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewardItemCount1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RewardItemCount2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RewardItemCount3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RewardItemCount4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RewardChoiceItemId1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewardChoiceItemId2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewardChoiceItemId3` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewardChoiceItemId4` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewardChoiceItemId5` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewardChoiceItemId6` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewardChoiceItemCount1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RewardChoiceItemCount2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RewardChoiceItemCount3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RewardChoiceItemCount4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RewardChoiceItemCount5` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RewardChoiceItemCount6` smallint(5) unsigned NOT NULL DEFAULT '0',
  `RewardFactionId1` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Faction id from Faction.dbc in this case',
  `RewardFactionId2` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Faction id from Faction.dbc in this case',
  `RewardFactionId3` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Faction id from Faction.dbc in this case',
  `RewardFactionId4` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Faction id from Faction.dbc in this case',
  `RewardFactionId5` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'Faction id from Faction.dbc in this case',
  `RewardFactionValueId1` mediumint(8) NOT NULL DEFAULT '0',
  `RewardFactionValueId2` mediumint(8) NOT NULL DEFAULT '0',
  `RewardFactionValueId3` mediumint(8) NOT NULL DEFAULT '0',
  `RewardFactionValueId4` mediumint(8) NOT NULL DEFAULT '0',
  `RewardFactionValueId5` mediumint(8) NOT NULL DEFAULT '0',
  `RewardFactionValueIdOverride1` int(11) NOT NULL DEFAULT '0',
  `RewardFactionValueIdOverride2` int(11) NOT NULL DEFAULT '0',
  `RewardFactionValueIdOverride3` int(11) NOT NULL DEFAULT '0',
  `RewardFactionValueIdOverride4` int(11) NOT NULL DEFAULT '0',
  `RewardFactionValueIdOverride5` int(11) NOT NULL DEFAULT '0',
  `PointMapId` smallint(5) unsigned NOT NULL DEFAULT '0',
  `PointX` float NOT NULL DEFAULT '0',
  `PointY` float NOT NULL DEFAULT '0',
  `PointOption` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Title` text,
  `Objectives` text,
  `Details` text,
  `EndText` text,
  `OfferRewardText` text,
  `RequestItemsText` text,
  `CompletedText` text,
  `RequiredSourceItemId1` int(11) unsigned NOT NULL DEFAULT '0',
  `RequiredSourceItemId2` int(11) unsigned NOT NULL DEFAULT '0',
  `RequiredSourceItemId3` int(11) unsigned NOT NULL DEFAULT '0',
  `RequiredSourceItemId4` int(11) unsigned NOT NULL DEFAULT '0',
  `RequiredSourceItemCount1` int(11) unsigned NOT NULL DEFAULT '0',
  `RequiredSourceItemCount2` int(11) unsigned NOT NULL DEFAULT '0',
  `RequiredSourceItemCount3` int(11) unsigned NOT NULL DEFAULT '0',
  `RequiredSourceItemCount4` int(11) unsigned NOT NULL DEFAULT '0',
  `RewardCurrencyId1` int(11) unsigned NOT NULL DEFAULT '0',
  `RewardCurrencyId2` int(11) unsigned NOT NULL DEFAULT '0',
  `RewardCurrencyId3` int(11) unsigned NOT NULL DEFAULT '0',
  `RewardCurrencyId4` int(11) unsigned NOT NULL DEFAULT '0',
  `RewardCurrencyCount1` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewardCurrencyCount2` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewardCurrencyCount3` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `RewardCurrencyCount4` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `QuestGiverTextWindow` text,
  `QuestGiverTargetName` text,
  `QuestTurnTextWindow` text,
  `QuestTurnTargetName` text,
  `SoundAccept` smallint(5) unsigned NOT NULL DEFAULT '890',
  `SoundTurnIn` smallint(5) unsigned NOT NULL DEFAULT '878',
  `DetailsEmote1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `DetailsEmote2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `DetailsEmote3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `DetailsEmote4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `DetailsEmoteDelay1` int(10) unsigned NOT NULL DEFAULT '0',
  `DetailsEmoteDelay2` int(10) unsigned NOT NULL DEFAULT '0',
  `DetailsEmoteDelay3` int(10) unsigned NOT NULL DEFAULT '0',
  `DetailsEmoteDelay4` int(10) unsigned NOT NULL DEFAULT '0',
  `EmoteOnIncomplete` smallint(5) unsigned NOT NULL DEFAULT '0',
  `EmoteOnComplete` smallint(5) unsigned NOT NULL DEFAULT '0',
  `OfferRewardEmote1` smallint(5) unsigned NOT NULL DEFAULT '0',
  `OfferRewardEmote2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `OfferRewardEmote3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `OfferRewardEmote4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `OfferRewardEmoteDelay1` int(10) unsigned NOT NULL DEFAULT '0',
  `OfferRewardEmoteDelay2` int(10) unsigned NOT NULL DEFAULT '0',
  `OfferRewardEmoteDelay3` int(10) unsigned NOT NULL DEFAULT '0',
  `OfferRewardEmoteDelay4` int(10) unsigned NOT NULL DEFAULT '0',
  `StartScript` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `CompleteScript` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `BuildVerified` smallint(6) NOT NULL DEFAULT '1',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Quest System 5.4';



# Dump of table quest_template_objective
# ------------------------------------------------------------

DROP TABLE IF EXISTS `quest_template_objective`;

CREATE TABLE `quest_template_objective` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `QuestID` int(10) unsigned NOT NULL DEFAULT '0',
  `Type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `Index` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ObjectID` int(10) NOT NULL DEFAULT '0',
  `Amount` int(11) NOT NULL DEFAULT '0',
  `Flags` int(10) unsigned NOT NULL DEFAULT '0',
  `UnkFloat` float NOT NULL DEFAULT '0',
  `Description` text,
  `VisualEffects` text,
  `BuildVerified` smallint(6) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID`),
  KEY `idx_QuestID` (`QuestID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table reference_loot_template
# ------------------------------------------------------------

DROP TABLE IF EXISTS `reference_loot_template`;

CREATE TABLE `reference_loot_template` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `item` mediumint(8) NOT NULL DEFAULT '0',
  `ChanceOrQuestChance` float NOT NULL DEFAULT '100',
  `lootmode` smallint(5) unsigned NOT NULL DEFAULT '1',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mincountOrRef` mediumint(8) NOT NULL DEFAULT '1',
  `maxcount` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `itemBonuses` text NOT NULL,
  PRIMARY KEY (`entry`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Loot System';



# Dump of table reputation_reward_rate
# ------------------------------------------------------------

DROP TABLE IF EXISTS `reputation_reward_rate`;

CREATE TABLE `reputation_reward_rate` (
  `faction` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `quest_rate` float NOT NULL DEFAULT '1',
  `creature_rate` float NOT NULL DEFAULT '1',
  `spell_rate` float NOT NULL DEFAULT '1',
  PRIMARY KEY (`faction`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table reputation_spillover_template
# ------------------------------------------------------------

DROP TABLE IF EXISTS `reputation_spillover_template`;

CREATE TABLE `reputation_spillover_template` (
  `faction` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'faction entry',
  `faction1` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'faction to give spillover for',
  `rate_1` float NOT NULL DEFAULT '0' COMMENT 'the given rep points * rate',
  `rank_1` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'max rank,above this will not give any spillover',
  `faction2` smallint(5) unsigned NOT NULL DEFAULT '0',
  `rate_2` float NOT NULL DEFAULT '0',
  `rank_2` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `faction3` smallint(5) unsigned NOT NULL DEFAULT '0',
  `rate_3` float NOT NULL DEFAULT '0',
  `rank_3` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `faction4` smallint(5) unsigned NOT NULL DEFAULT '0',
  `rate_4` float NOT NULL DEFAULT '0',
  `rank_4` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `faction5` smallint(5) unsigned NOT NULL DEFAULT '0',
  `rate_5` float NOT NULL DEFAULT '0',
  `rank_5` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`faction`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Reputation spillover reputation gain';



# Dump of table research_loot
# ------------------------------------------------------------

DROP TABLE IF EXISTS `research_loot`;

CREATE TABLE `research_loot` (
  `site_id` mediumint(8) unsigned NOT NULL,
  `x` float NOT NULL,
  `y` float NOT NULL,
  `z` float NOT NULL,
  `race` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table research_site
# ------------------------------------------------------------

DROP TABLE IF EXISTS `research_site`;

CREATE TABLE `research_site` (
  `id` int(7) NOT NULL DEFAULT '0',
  `position_x` int(11) NOT NULL DEFAULT '0',
  `position_y` int(11) NOT NULL DEFAULT '0',
  `zone` smallint(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Export of QuestPOIPoint.dbc';



# Dump of table script_texts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `script_texts`;

CREATE TABLE `script_texts` (
  `npc_entry` mediumint(8) NOT NULL DEFAULT '0' COMMENT 'creature_template entry',
  `entry` mediumint(8) NOT NULL,
  `content_default` text NOT NULL,
  `content_loc1` text,
  `content_loc2` text,
  `content_loc3` text,
  `content_loc4` text,
  `content_loc5` text,
  `content_loc6` text,
  `content_loc7` text,
  `content_loc8` text,
  `content_loc9` text,
  `content_loc10` text,
  `sound` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `language` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `emote` smallint(5) unsigned NOT NULL DEFAULT '0',
  `comment` text,
  PRIMARY KEY (`npc_entry`,`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Script Texts';



# Dump of table script_waypoint
# ------------------------------------------------------------

DROP TABLE IF EXISTS `script_waypoint`;

CREATE TABLE `script_waypoint` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'creature_template entry',
  `pointid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `location_x` float NOT NULL DEFAULT '0',
  `location_y` float NOT NULL DEFAULT '0',
  `location_z` float NOT NULL DEFAULT '0',
  `waittime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'waittime in millisecs',
  `point_comment` text,
  PRIMARY KEY (`entry`,`pointid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Script Creature waypoints';



# Dump of table skill_discovery_template
# ------------------------------------------------------------

DROP TABLE IF EXISTS `skill_discovery_template`;

CREATE TABLE `skill_discovery_template` (
  `spellId` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'SpellId of the discoverable spell',
  `reqSpell` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'spell requirement',
  `reqSkillValue` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT 'skill points requirement',
  `chance` float NOT NULL DEFAULT '0' COMMENT 'chance to discover',
  PRIMARY KEY (`spellId`,`reqSpell`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Skill Discovery System';



# Dump of table skill_extra_item_template
# ------------------------------------------------------------

DROP TABLE IF EXISTS `skill_extra_item_template`;

CREATE TABLE `skill_extra_item_template` (
  `spellId` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'SpellId of the item creation spell',
  `requiredSpecialization` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Specialization spell id',
  `additionalCreateChance` float NOT NULL DEFAULT '0' COMMENT 'chance to create add',
  `additionalMaxNum` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'max num of adds',
  PRIMARY KEY (`spellId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Skill Specialization System';



# Dump of table skill_fishing_base_level
# ------------------------------------------------------------

DROP TABLE IF EXISTS `skill_fishing_base_level`;

CREATE TABLE `skill_fishing_base_level` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Area identifier',
  `skill` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Base skill level requirement',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Fishing system';



# Dump of table skinning_loot_template
# ------------------------------------------------------------

DROP TABLE IF EXISTS `skinning_loot_template`;

CREATE TABLE `skinning_loot_template` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `item` mediumint(8) NOT NULL DEFAULT '0',
  `ChanceOrQuestChance` float NOT NULL DEFAULT '100',
  `lootmode` smallint(5) unsigned NOT NULL DEFAULT '1',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mincountOrRef` mediumint(8) NOT NULL DEFAULT '1',
  `maxcount` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `itemBonuses` text NOT NULL,
  PRIMARY KEY (`entry`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Loot System';



# Dump of table smart_scripts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `smart_scripts`;

CREATE TABLE `smart_scripts` (
  `entryorguid` int(11) NOT NULL,
  `source_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `link` smallint(5) unsigned NOT NULL DEFAULT '0',
  `event_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `event_phase_mask` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `event_chance` tinyint(3) unsigned NOT NULL DEFAULT '100',
  `event_flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `event_param1` int(10) unsigned NOT NULL DEFAULT '0',
  `event_param2` int(10) unsigned NOT NULL DEFAULT '0',
  `event_param3` int(10) unsigned NOT NULL DEFAULT '0',
  `event_param4` int(10) unsigned NOT NULL DEFAULT '0',
  `action_type` smallint(5) unsigned NOT NULL DEFAULT '0',
  `action_param1` int(10) unsigned NOT NULL DEFAULT '0',
  `action_param2` int(10) unsigned NOT NULL DEFAULT '0',
  `action_param3` int(10) unsigned NOT NULL DEFAULT '0',
  `action_param4` int(10) unsigned NOT NULL DEFAULT '0',
  `action_param5` int(10) unsigned NOT NULL DEFAULT '0',
  `action_param6` int(10) unsigned NOT NULL DEFAULT '0',
  `target_type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `target_param1` int(10) unsigned NOT NULL DEFAULT '0',
  `target_param2` int(10) unsigned NOT NULL DEFAULT '0',
  `target_param3` int(10) unsigned NOT NULL DEFAULT '0',
  `target_x` float NOT NULL DEFAULT '0',
  `target_y` float NOT NULL DEFAULT '0',
  `target_z` float NOT NULL DEFAULT '0',
  `target_o` float NOT NULL DEFAULT '0',
  `comment` text NOT NULL COMMENT 'Event Comment',
  PRIMARY KEY (`entryorguid`,`source_type`,`id`,`link`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;



# Dump of table spell_area
# ------------------------------------------------------------

DROP TABLE IF EXISTS `spell_area`;

CREATE TABLE `spell_area` (
  `spell` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `area` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `quest_start` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `quest_end` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `aura_spell` mediumint(8) NOT NULL DEFAULT '0',
  `racemask` int(10) unsigned NOT NULL DEFAULT '0',
  `gender` tinyint(3) unsigned NOT NULL DEFAULT '2',
  `autocast` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `quest_start_status` int(11) unsigned NOT NULL DEFAULT '64',
  `quest_end_status` int(11) unsigned NOT NULL DEFAULT '11',
  PRIMARY KEY (`spell`,`area`,`quest_start`,`aura_spell`,`racemask`,`gender`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table spell_bonus_data
# ------------------------------------------------------------

DROP TABLE IF EXISTS `spell_bonus_data`;

CREATE TABLE `spell_bonus_data` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `direct_bonus` float NOT NULL DEFAULT '0',
  `dot_bonus` float NOT NULL DEFAULT '0',
  `ap_bonus` float NOT NULL DEFAULT '0',
  `ap_dot_bonus` float NOT NULL DEFAULT '0',
  `comments` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table spell_dbc
# ------------------------------------------------------------

DROP TABLE IF EXISTS `spell_dbc`;

CREATE TABLE `spell_dbc` (
  `Id` int(10) unsigned NOT NULL,
  `Dispel` int(10) unsigned NOT NULL DEFAULT '0',
  `Mechanic` int(10) unsigned NOT NULL DEFAULT '0',
  `Attributes` int(10) unsigned NOT NULL DEFAULT '0',
  `AttributesEx` int(10) unsigned NOT NULL DEFAULT '0',
  `AttributesEx2` int(10) unsigned NOT NULL DEFAULT '0',
  `AttributesEx3` int(10) unsigned NOT NULL DEFAULT '0',
  `AttributesEx4` int(10) unsigned NOT NULL DEFAULT '0',
  `AttributesEx5` int(10) unsigned NOT NULL DEFAULT '0',
  `AttributesEx6` int(10) unsigned NOT NULL DEFAULT '0',
  `AttributesEx7` int(10) unsigned NOT NULL DEFAULT '0',
  `Stances` int(10) unsigned NOT NULL DEFAULT '0',
  `StancesNot` int(10) unsigned NOT NULL DEFAULT '0',
  `Targets` int(10) unsigned NOT NULL DEFAULT '0',
  `CastingTimeIndex` int(10) unsigned NOT NULL DEFAULT '1',
  `AuraInterruptFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `ProcFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `ProcChance` int(10) unsigned NOT NULL DEFAULT '0',
  `ProcCharges` int(10) unsigned NOT NULL DEFAULT '0',
  `MaxLevel` int(10) unsigned NOT NULL DEFAULT '0',
  `BaseLevel` int(10) unsigned NOT NULL DEFAULT '0',
  `SpellLevel` int(10) unsigned NOT NULL DEFAULT '0',
  `DurationIndex` int(10) unsigned NOT NULL DEFAULT '0',
  `RangeIndex` int(10) unsigned NOT NULL DEFAULT '1',
  `StackAmount` int(10) unsigned NOT NULL DEFAULT '0',
  `EquippedItemClass` int(11) NOT NULL DEFAULT '-1',
  `EquippedItemSubClassMask` int(11) NOT NULL DEFAULT '0',
  `EquippedItemInventoryTypeMask` int(11) NOT NULL DEFAULT '0',
  `Effect1` int(10) unsigned NOT NULL DEFAULT '0',
  `Effect2` int(10) unsigned NOT NULL DEFAULT '0',
  `Effect3` int(10) unsigned NOT NULL DEFAULT '0',
  `EffectDieSides1` int(11) NOT NULL DEFAULT '0',
  `EffectDieSides2` int(11) NOT NULL DEFAULT '0',
  `EffectDieSides3` int(11) NOT NULL DEFAULT '0',
  `EffectRealPointsPerLevel1` float NOT NULL DEFAULT '0',
  `EffectRealPointsPerLevel2` float NOT NULL DEFAULT '0',
  `EffectRealPointsPerLevel3` float NOT NULL DEFAULT '0',
  `EffectBasePoints1` int(11) NOT NULL DEFAULT '0',
  `EffectBasePoints2` int(11) NOT NULL DEFAULT '0',
  `EffectBasePoints3` int(11) NOT NULL DEFAULT '0',
  `EffectMechanic1` int(10) unsigned NOT NULL DEFAULT '0',
  `EffectMechanic2` int(10) unsigned NOT NULL DEFAULT '0',
  `EffectMechanic3` int(10) unsigned NOT NULL DEFAULT '0',
  `EffectImplicitTargetA1` int(10) unsigned NOT NULL DEFAULT '0',
  `EffectImplicitTargetA2` int(10) unsigned NOT NULL DEFAULT '0',
  `EffectImplicitTargetA3` int(10) unsigned NOT NULL DEFAULT '0',
  `EffectImplicitTargetB1` int(10) unsigned NOT NULL DEFAULT '0',
  `EffectImplicitTargetB2` int(10) unsigned NOT NULL DEFAULT '0',
  `EffectImplicitTargetB3` int(10) unsigned NOT NULL DEFAULT '0',
  `EffectRadiusIndex1` int(10) unsigned NOT NULL DEFAULT '0',
  `EffectRadiusIndex2` int(10) unsigned NOT NULL DEFAULT '0',
  `EffectRadiusIndex3` int(10) unsigned NOT NULL DEFAULT '0',
  `EffectApplyAuraName1` int(10) unsigned NOT NULL DEFAULT '0',
  `EffectApplyAuraName2` int(10) unsigned NOT NULL DEFAULT '0',
  `EffectApplyAuraName3` int(10) unsigned NOT NULL DEFAULT '0',
  `EffectAmplitude1` int(11) NOT NULL DEFAULT '0',
  `EffectAmplitude2` int(11) NOT NULL DEFAULT '0',
  `EffectAmplitude3` int(11) NOT NULL DEFAULT '0',
  `EffectMultipleValue1` float NOT NULL DEFAULT '0',
  `EffectMultipleValue2` float NOT NULL DEFAULT '0',
  `EffectMultipleValue3` float NOT NULL DEFAULT '0',
  `EffectMiscValue1` int(11) NOT NULL DEFAULT '0',
  `EffectMiscValue2` int(11) NOT NULL DEFAULT '0',
  `EffectMiscValue3` int(11) NOT NULL DEFAULT '0',
  `EffectMiscValueB1` int(11) NOT NULL DEFAULT '0',
  `EffectMiscValueB2` int(11) NOT NULL DEFAULT '0',
  `EffectMiscValueB3` int(11) NOT NULL DEFAULT '0',
  `EffectTriggerSpell1` int(10) unsigned NOT NULL DEFAULT '0',
  `EffectTriggerSpell2` int(10) unsigned NOT NULL DEFAULT '0',
  `EffectTriggerSpell3` int(10) unsigned NOT NULL DEFAULT '0',
  `EffectSpellClassMaskA1` int(10) unsigned NOT NULL DEFAULT '0',
  `EffectSpellClassMaskA2` int(10) unsigned NOT NULL DEFAULT '0',
  `EffectSpellClassMaskA3` int(10) unsigned NOT NULL DEFAULT '0',
  `EffectSpellClassMaskB1` int(10) unsigned NOT NULL DEFAULT '0',
  `EffectSpellClassMaskB2` int(10) unsigned NOT NULL DEFAULT '0',
  `EffectSpellClassMaskB3` int(10) unsigned NOT NULL DEFAULT '0',
  `EffectSpellClassMaskC1` int(10) unsigned NOT NULL DEFAULT '0',
  `EffectSpellClassMaskC2` int(10) unsigned NOT NULL DEFAULT '0',
  `EffectSpellClassMaskC3` int(10) unsigned NOT NULL DEFAULT '0',
  `MaxTargetLevel` int(10) unsigned NOT NULL DEFAULT '0',
  `SpellFamilyName` int(10) unsigned NOT NULL DEFAULT '0',
  `SpellFamilyFlags1` int(10) unsigned NOT NULL DEFAULT '0',
  `SpellFamilyFlags2` int(10) unsigned NOT NULL DEFAULT '0',
  `SpellFamilyFlags3` int(10) unsigned NOT NULL DEFAULT '0',
  `MaxAffectedTargets` int(10) unsigned NOT NULL DEFAULT '0',
  `DmgClass` int(10) unsigned NOT NULL DEFAULT '0',
  `PreventionType` int(10) unsigned NOT NULL DEFAULT '0',
  `DmgMultiplier1` float NOT NULL DEFAULT '0',
  `DmgMultiplier2` float NOT NULL DEFAULT '0',
  `DmgMultiplier3` float NOT NULL DEFAULT '0',
  `AreaGroupId` int(11) NOT NULL DEFAULT '0',
  `SchoolMask` int(10) unsigned NOT NULL DEFAULT '0',
  `Comment` text NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Custom spell.dbc entries';



# Dump of table spell_enchant_proc_data
# ------------------------------------------------------------

DROP TABLE IF EXISTS `spell_enchant_proc_data`;

CREATE TABLE `spell_enchant_proc_data` (
  `entry` int(10) unsigned NOT NULL,
  `customChance` int(10) unsigned NOT NULL DEFAULT '0',
  `PPMChance` float unsigned NOT NULL DEFAULT '0',
  `procEx` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='Spell enchant proc data';



# Dump of table spell_forbidden
# ------------------------------------------------------------

DROP TABLE IF EXISTS `spell_forbidden`;

CREATE TABLE `spell_forbidden` (
  `spell_id` int(11) unsigned NOT NULL,
  `comment` blob,
  PRIMARY KEY (`spell_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table spell_group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `spell_group`;

CREATE TABLE `spell_group` (
  `id` int(10) unsigned NOT NULL DEFAULT '0',
  `spell_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`spell_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Spell System';



# Dump of table spell_group_stack_rules
# ------------------------------------------------------------

DROP TABLE IF EXISTS `spell_group_stack_rules`;

CREATE TABLE `spell_group_stack_rules` (
  `group_id` int(11) unsigned NOT NULL DEFAULT '0',
  `stack_rule` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table spell_invalid
# ------------------------------------------------------------

DROP TABLE IF EXISTS `spell_invalid`;

CREATE TABLE `spell_invalid` (
  `spellid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table spell_learn_spell
# ------------------------------------------------------------

DROP TABLE IF EXISTS `spell_learn_spell`;

CREATE TABLE `spell_learn_spell` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `SpellID` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `Active` tinyint(3) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`entry`,`SpellID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Item System';



# Dump of table spell_linked_spell
# ------------------------------------------------------------

DROP TABLE IF EXISTS `spell_linked_spell`;

CREATE TABLE `spell_linked_spell` (
  `spell_trigger` mediumint(8) NOT NULL,
  `spell_effect` mediumint(8) NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  UNIQUE KEY `trigger_effect_type` (`spell_trigger`,`spell_effect`,`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Spell System';



# Dump of table spell_loot_template
# ------------------------------------------------------------

DROP TABLE IF EXISTS `spell_loot_template`;

CREATE TABLE `spell_loot_template` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `item` mediumint(8) NOT NULL DEFAULT '0',
  `ChanceOrQuestChance` float NOT NULL DEFAULT '100',
  `lootmode` smallint(5) unsigned NOT NULL DEFAULT '1',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mincountOrRef` mediumint(8) NOT NULL DEFAULT '1',
  `maxcount` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `itemBonuses` text NOT NULL,
  PRIMARY KEY (`entry`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Loot System';



# Dump of table spell_pet_auras
# ------------------------------------------------------------

DROP TABLE IF EXISTS `spell_pet_auras`;

CREATE TABLE `spell_pet_auras` (
  `spell` mediumint(8) unsigned NOT NULL COMMENT 'dummy spell id',
  `effectId` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `pet` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'pet id; 0 = all',
  `aura` mediumint(8) unsigned NOT NULL COMMENT 'pet aura id',
  PRIMARY KEY (`spell`,`effectId`,`pet`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table spell_phase
# ------------------------------------------------------------

DROP TABLE IF EXISTS `spell_phase`;

CREATE TABLE `spell_phase` (
  `id` mediumint(7) unsigned NOT NULL DEFAULT '0',
  `phasemask` int(11) unsigned NOT NULL DEFAULT '1',
  `terrainswapmap` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table spell_proc
# ------------------------------------------------------------

DROP TABLE IF EXISTS `spell_proc`;

CREATE TABLE `spell_proc` (
  `spellId` mediumint(8) NOT NULL DEFAULT '0',
  `schoolMask` tinyint(4) NOT NULL DEFAULT '0',
  `spellFamilyName` smallint(5) unsigned NOT NULL DEFAULT '0',
  `spellFamilyMask0` int(10) unsigned NOT NULL DEFAULT '0',
  `spellFamilyMask1` int(10) unsigned NOT NULL DEFAULT '0',
  `spellFamilyMask2` int(10) unsigned NOT NULL DEFAULT '0',
  `typeMask` int(10) unsigned NOT NULL DEFAULT '0',
  `spellTypeMask` int(10) unsigned NOT NULL DEFAULT '0',
  `spellPhaseMask` int(11) NOT NULL DEFAULT '0',
  `hitMask` int(11) NOT NULL DEFAULT '0',
  `attributesMask` int(10) unsigned NOT NULL DEFAULT '0',
  `ratePerMinute` float NOT NULL DEFAULT '0',
  `chance` float NOT NULL DEFAULT '0',
  `cooldown` float unsigned NOT NULL DEFAULT '0',
  `charges` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`spellId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table spell_proc_event
# ------------------------------------------------------------

DROP TABLE IF EXISTS `spell_proc_event`;

CREATE TABLE `spell_proc_event` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `SchoolMask` tinyint(4) NOT NULL DEFAULT '0',
  `SpellFamilyName` smallint(5) unsigned NOT NULL DEFAULT '0',
  `SpellFamilyMask0` int(10) unsigned NOT NULL DEFAULT '0',
  `SpellFamilyMask1` int(10) unsigned NOT NULL DEFAULT '0',
  `SpellFamilyMask2` int(10) unsigned NOT NULL DEFAULT '0',
  `SpellFamilyMask3` int(10) unsigned NOT NULL DEFAULT '0',
  `procFlags` int(10) unsigned NOT NULL DEFAULT '0',
  `procEx` int(10) unsigned NOT NULL DEFAULT '0',
  `ppmRate` float NOT NULL DEFAULT '0',
  `CustomChance` float NOT NULL DEFAULT '0',
  `Cooldown` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table spell_ranks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `spell_ranks`;

CREATE TABLE `spell_ranks` (
  `first_spell_id` int(10) unsigned NOT NULL DEFAULT '0',
  `spell_id` int(10) unsigned NOT NULL DEFAULT '0',
  `rank` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`first_spell_id`,`rank`),
  UNIQUE KEY `spell_id` (`spell_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Spell Rank Data';



# Dump of table spell_required
# ------------------------------------------------------------

DROP TABLE IF EXISTS `spell_required`;

CREATE TABLE `spell_required` (
  `spell_id` mediumint(8) NOT NULL DEFAULT '0',
  `req_spell` mediumint(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`spell_id`,`req_spell`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Spell Additinal Data';



# Dump of table spell_script_names
# ------------------------------------------------------------

DROP TABLE IF EXISTS `spell_script_names`;

CREATE TABLE `spell_script_names` (
  `spell_id` int(11) NOT NULL,
  `ScriptName` char(64) NOT NULL,
  UNIQUE KEY `spell_id` (`spell_id`,`ScriptName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table spell_scripts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `spell_scripts`;

CREATE TABLE `spell_scripts` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `effIndex` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `delay` int(10) unsigned NOT NULL DEFAULT '0',
  `command` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `datalong` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `datalong2` int(10) unsigned NOT NULL DEFAULT '0',
  `dataint` int(11) NOT NULL DEFAULT '0',
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `o` float NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table spell_stolen
# ------------------------------------------------------------

DROP TABLE IF EXISTS `spell_stolen`;

CREATE TABLE `spell_stolen` (
  `spell_id` int(11) DEFAULT NULL,
  `COMMENT` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table spell_target_position
# ------------------------------------------------------------

DROP TABLE IF EXISTS `spell_target_position`;

CREATE TABLE `spell_target_position` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'Identifier',
  `effIndex` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `target_map` smallint(5) unsigned NOT NULL DEFAULT '0',
  `target_position_x` float NOT NULL DEFAULT '0',
  `target_position_y` float NOT NULL DEFAULT '0',
  `target_position_z` float NOT NULL DEFAULT '0',
  `target_orientation` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`,`effIndex`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Spell System';



# Dump of table spell_threat
# ------------------------------------------------------------

DROP TABLE IF EXISTS `spell_threat`;

CREATE TABLE `spell_threat` (
  `entry` mediumint(8) unsigned NOT NULL,
  `flatMod` int(11) DEFAULT NULL,
  `pctMod` float NOT NULL DEFAULT '1' COMMENT 'threat multiplier for damage/healing',
  `apPctMod` float NOT NULL DEFAULT '0' COMMENT 'additional threat bonus from attack power',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;



# Dump of table spell_upgrade_item_stage
# ------------------------------------------------------------

DROP TABLE IF EXISTS `spell_upgrade_item_stage`;

CREATE TABLE `spell_upgrade_item_stage` (
  `ItemBonusTreeCategory` int(10) unsigned NOT NULL,
  `ItemClass` int(10) NOT NULL DEFAULT '0',
  `ItemSubClassMask` int(10) NOT NULL DEFAULT '0',
  `InventoryTypeMask` int(10) NOT NULL DEFAULT '0',
  `MaxIlevel` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table temp_battlepet_spawn_relation
# ------------------------------------------------------------

DROP TABLE IF EXISTS `temp_battlepet_spawn_relation`;

CREATE TABLE `temp_battlepet_spawn_relation` (
  `Name` varchar(255) NOT NULL,
  `CritterEntry` int(10) NOT NULL,
  `BattlePetEntry` int(10) NOT NULL,
  PRIMARY KEY (`CritterEntry`,`BattlePetEntry`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table transports
# ------------------------------------------------------------

DROP TABLE IF EXISTS `transports`;

CREATE TABLE `transports` (
  `guid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `name` text,
  `ScriptName` char(64) NOT NULL DEFAULT '',
  PRIMARY KEY (`guid`),
  UNIQUE KEY `idx_entry` (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Transports';



# Dump of table trinity_string
# ------------------------------------------------------------

DROP TABLE IF EXISTS `trinity_string`;

CREATE TABLE `trinity_string` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `content_default` text NOT NULL,
  `content_loc1` text,
  `content_loc2` text,
  `content_loc3` text,
  `content_loc4` text,
  `content_loc5` text,
  `content_loc6` text,
  `content_loc7` text,
  `content_loc8` text,
  `content_loc9` text,
  `content_loc10` text,
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table vehicle_accessory
# ------------------------------------------------------------

DROP TABLE IF EXISTS `vehicle_accessory`;

CREATE TABLE `vehicle_accessory` (
  `guid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `accessory_entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `seat_id` mediumint(8) NOT NULL DEFAULT '0',
  `minion` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `summontype` tinyint(3) unsigned NOT NULL DEFAULT '6' COMMENT 'see enum TempSummonType',
  `summontimer` int(10) unsigned NOT NULL DEFAULT '30000' COMMENT 'timer, only relevant for certain summontypes',
  PRIMARY KEY (`guid`,`seat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;



# Dump of table vehicle_template_accessory
# ------------------------------------------------------------

DROP TABLE IF EXISTS `vehicle_template_accessory`;

CREATE TABLE `vehicle_template_accessory` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `accessory_entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `seat_id` mediumint(8) NOT NULL DEFAULT '0',
  `minion` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `summontype` tinyint(3) unsigned NOT NULL DEFAULT '6' COMMENT 'see enum TempSummonType',
  `summontimer` int(10) unsigned NOT NULL DEFAULT '30000' COMMENT 'timer, only relevant for certain summontypes',
  PRIMARY KEY (`entry`,`seat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;



# Dump of table vehicleseat_dbc
# ------------------------------------------------------------

DROP TABLE IF EXISTS `vehicleseat_dbc`;

CREATE TABLE `vehicleseat_dbc` (
  `ID` int(11) unsigned NOT NULL,
  `flags` int(11) unsigned NOT NULL,
  `attachmentID` int(11) NOT NULL,
  `attachmentOffsetX` float NOT NULL,
  `attachmentOffsetY` float NOT NULL,
  `attachmentOffsetZ` float NOT NULL,
  `flagsB` int(11) unsigned DEFAULT NULL,
  `comment` char(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table version
# ------------------------------------------------------------

DROP TABLE IF EXISTS `version`;

CREATE TABLE `version` (
  `core_version` varchar(120) DEFAULT NULL COMMENT 'Core revision dumped at startup.',
  `core_revision` varchar(120) DEFAULT NULL,
  `db_version` varchar(120) DEFAULT NULL COMMENT 'Version of world DB.',
  `cache_id` int(11) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Version Notes';



# Dump of table warden_checks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `warden_checks`;

CREATE TABLE `warden_checks` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) unsigned DEFAULT NULL,
  `data` varchar(48) DEFAULT NULL,
  `str` varchar(20) DEFAULT NULL,
  `address` int(10) unsigned DEFAULT NULL,
  `length` tinyint(3) unsigned DEFAULT NULL,
  `result` varchar(24) DEFAULT NULL,
  `comment` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table waypoint_data
# ------------------------------------------------------------

DROP TABLE IF EXISTS `waypoint_data`;

CREATE TABLE `waypoint_data` (
  `id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Creature GUID',
  `point` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  `delay` int(10) unsigned NOT NULL DEFAULT '0',
  `move_type` int(11) NOT NULL DEFAULT '0',
  `action` int(11) NOT NULL DEFAULT '0',
  `action_chance` smallint(6) NOT NULL DEFAULT '100',
  `wpguid` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table waypoint_scripts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `waypoint_scripts`;

CREATE TABLE `waypoint_scripts` (
  `id` int(11) unsigned NOT NULL DEFAULT '0',
  `delay` int(11) unsigned NOT NULL DEFAULT '0',
  `command` int(11) unsigned NOT NULL DEFAULT '0',
  `datalong` int(11) unsigned NOT NULL DEFAULT '0',
  `datalong2` int(11) unsigned NOT NULL DEFAULT '0',
  `dataint` int(11) unsigned NOT NULL DEFAULT '0',
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `o` float NOT NULL DEFAULT '0',
  `guid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;



# Dump of table waypoints
# ------------------------------------------------------------

DROP TABLE IF EXISTS `waypoints`;

CREATE TABLE `waypoints` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pointid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `point_comment` text,
  PRIMARY KEY (`entry`,`pointid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Creature waypoints';



# Dump of table wild_battlepet_zone_pool
# ------------------------------------------------------------

DROP TABLE IF EXISTS `wild_battlepet_zone_pool`;

CREATE TABLE `wild_battlepet_zone_pool` (
  `Zone` int(10) unsigned NOT NULL,
  `Species` int(10) unsigned NOT NULL,
  `Replace` int(10) unsigned NOT NULL,
  `Max` int(10) unsigned NOT NULL,
  `RespawnTime` int(10) unsigned NOT NULL DEFAULT '60',
  `MinLevel` int(10) unsigned NOT NULL,
  `MaxLevel` int(10) unsigned NOT NULL,
  `Breed0` int(10) unsigned NOT NULL DEFAULT '3',
  `Breed1` int(10) unsigned NOT NULL DEFAULT '3',
  `Breed2` int(10) unsigned NOT NULL DEFAULT '3',
  `Breed3` int(10) unsigned NOT NULL DEFAULT '3',
  `Breed4` int(10) unsigned NOT NULL DEFAULT '3',
  `Breed5` int(10) unsigned NOT NULL DEFAULT '3',
  `Breed6` int(10) unsigned NOT NULL DEFAULT '3',
  `Breed7` int(10) unsigned NOT NULL DEFAULT '3',
  `Breed8` int(10) unsigned NOT NULL DEFAULT '3',
  `Breed9` int(10) unsigned NOT NULL DEFAULT '3'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



# Dump of table zone_skip_update
# ------------------------------------------------------------

DROP TABLE IF EXISTS `zone_skip_update`;

CREATE TABLE `zone_skip_update` (
  `zone` int(11) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`zone`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='latin1_swedish_ci';




--
-- Dumping routines (PROCEDURE) for database 'world'
--
DELIMITER ;;

# Dump of PROCEDURE FillConditionAndLootsTables
# ------------------------------------------------------------

/*!50003 DROP PROCEDURE IF EXISTS `FillConditionAndLootsTables` */;;
/*!50003 SET SESSION SQL_MODE=""*/;;
/*!50003 CREATE*/ /*!50020 DEFINER=`justin`@`%`*/ /*!50003 PROCEDURE `FillConditionAndLootsTables`(IN `p_ZoneID` INT, IN `p_GroupID` INT, IN `p_Level` INT, IN `p_ItemEntry` INT, IN `p_DropChance` FLOAT, IN `p_Reference` INT)
BEGIN
	REPLACE INTO reference_loot_template (`entry`, `item`, `ChanceOrQuestChance`, `lootmode`, `groupid`, `mincountOrRef`, `maxcount`, `itemBonuses`) VALUES (-`p_Reference`, p_ItemEntry, `p_DropChance`, 1, 1, 1, 1, '');
	-- 39 = CONDITION_HAS_BUILDING_TYPE, 13 = BuildingType::Type::MageTower, p_Level = Building Level
	DELETE FROM conditions WHERE SourceTypeOrReferenceId = 1 AND SourceGroup = p_ZoneID AND SourceEntry = p_ItemEntry;
	INSERT INTO conditions (SourceTypeOrReferenceId, SourceGroup, SourceEntry, ConditionTypeOrReference, ConditionValue1, ConditionValue2) VALUES (1, p_ZoneID, p_ItemEntry, 39, 13, p_Level);
END */;;

/*!50003 SET SESSION SQL_MODE=@OLD_SQL_MODE */;;
DELIMITER ;

/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
