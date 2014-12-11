/*
* Copyright (C) 2012-2014 JadeCore <http://www.pandashan.com>
* Copyright (C) 2008-2012 TrinityCore <http://www.trinitycore.org/>
* Copyright (C) 2006-2009 ScriptDev2 <https://scriptdev2.svn.sourceforge.net/>
*
* This program is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License as published by the
* Free Software Foundation; either version 2 of the License, or (at your
* option) any later version.
*
* This program is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License for
* more details.
*
* You should have received a copy of the GNU General Public License along
* with this program. If not, see <http://www.gnu.org/licenses/>.
*/

#ifndef UPPER_BLACKROCK_SPIRE_H
#define UPPER_BLACKROCK_SPIRE_H

enum eDatas
{
    DATA_OREBENDER_GORASHAN,
    DATA_KYRAK_THE_CORRUPTOR,
    DATA_COMMANDER_THARBEK,
    DATA_RAGEWING_THE_UNTAMED,
    DATA_WARLORD_ZAELA,
    DATA_MAX_ENCOUNTERS,

    DATA_MAGNETS_ACHIEVEMENT,
    DATA_RUNES_DISABLED
};

enum eCreatures
{
    ///< Trashs mobs
    NPC_RUNE_GLOW               = 76396,
    NPC_BLACK_IRON_GRUNT        = 76179,
    NPC_BLACK_IRON_LEADBELCHER  = 76157,
    NPC_SENTRY_CANNON           = 76314,
    NPC_RAGEMAW_WORG            = 76181,
    NPC_BLACK_IRON_WARCASTER    = 76151,
    NPC_BLACK_IRON_ALCHEMIST    = 76100,
    NPC_BLACK_IRON_ENGINEER     = 76101,
    NPC_DRAKONID_MONSTROSITY    = 76018,
    NPC_BLACK_IRON_VETERAN      = 77034,
    NPC_BLACK_IRON_VETERAN2     = 84462,
    NPC_BLACK_IRON_DREADWEAVER  = 77035,
    NPC_BLACK_IRON_DREADWEAVER2 = 84475,
    NPC_BLACK_IRON_SUMMONER     = 77036,
    NPC_BLACK_IRON_ELITE        = 77037,
    NPC_BLACK_IRON_SIEGEBREAKER = 77033,
    NPC_BLACK_IRON_BERSERKER    = 76176,
    NPC_BLACK_IRON_GROUNDSHAKER = 76599,
    NPC_BLACK_IRON_DRAKE_KEEPER = 76935,
    NPC_EMBERSCALE_ADOLESCENT   = 76696,
    NPC_EMBERSCALE_WHELPLING    = 76694,
    NPC_EMBERSCALE_IRONFLIGHT   = 77180,

    ///< Orebender Gor'Ashan
    NPC_OREBENDER_GORASHAN      = 76413,
    NPC_BLACK_IRON_APPRENTICE   = 76773,
    NPC_RUNE_OF_POWER           = 76417,
    NPC_LIGHTNING_FIELD         = 76464,

    ///< Kyrak The Corruptor
    NPC_KYRAK_THE_CORRUPTOR     = 76021,
    NPC_DRAKONID_MONSTROSITY_2  = 82556,

    ///< Commander Tharbek
    NPC_COMMANDER_THARBEK       = 79912,
    NPC_IRONBARB_SKYREAVER      = 80098,
    NPC_VILEMAW_HATCHLING       = 77096,
    NPC_IMBUED_IRON_AXE_STALKER = 80307,

    ///< Ragewing the Untamed
    NPC_RAGEWING_THE_UNTAMED    = 76585,
    NPC_RAGEWING_WHELP          = 83745,
    NPC_FIRE_STORM_STALKER      = 76885,
    NPC_ENGULFING_FIRE_R_TO_L   = 76813,
    NPC_ENGULFING_FIRE_L_TO_R   = 76837,

    ///< Warlord Zaela
    NPC_WARLORD_ZAELA           = 77120,
    NPC_EMBERSCALE_IRONFIGHT    = 83479,

    ///< Leeroy Jenkins
    NPC_LEEROY_JENKINS          = 77075,
    NPC_SON_OF_THE_BEAST        = 77927
};

enum eGameObjects
{
    GOB_EMBERSEER_IN            = 175244,
    GOB_OREBENDER_ENTRANCE      = 175705,
    GOB_OREBENDER_EXIT          = 175153,

    GOB_RUNIC_CONDUIT           = 226704,

    GOB_KYRAK_EXIT_01           = 225945,
    GOB_KYRAK_EXIT_02           = 225944,

    GOB_THARBEK_SPAWN_DOOR      = 175185,
    GOB_THARBEK_EXIT            = 164726,
    GOB_THARBEK_EXIT_SECOND     = 175186,

    GOB_RAGEWING_ENTRANCE       = 232998,
    GOB_RAGEWING_EXIT           = 232999
};

enum eScenarioDatas
{
    ///< Normal/Heroic Mode
    ///< ScenarioID
    SCENARIO_UBRS_ID        = 744,
    ///< Step 1
    SCENARIO_UBRS_RUNES     = 24309,
    ///< Step 2 : Bosses
    SCENARIO_UBRS_GORASHAN  = 24322,
    SCENARIO_UBRS_KYRAK     = 24433,
    SCENARIO_UBRS_THARBEK   = 24619,
    SCENARIO_UBRS_RAGEWING  = 24624,
    SCENARIO_UBRS_ZAELA     = 24981,
    ///< Challenge Mode
    ///< ScenarioID
    SCENARIO_UBRS_CHALLENGE = 432,
    SCENARIO_UBRS_KILLS     = 65,
    SCENARIO_UBRS_ENNEMIES  = 26275
};

enum eAchievements
{
    AchievementMagnetsHowDoTheyWork = 9045,
    AchievementLeeeeeeeeeeeeeeeeroy = 9058,
    AchievementDragonmawDragonfall  = 9057,
    AchievementBridgeOverFire       = 9056
};

enum eWorldStates
{
    WorldStateChickenTimer  = 9524,
    WorldStateEnableChicken = 9523
};

#endif
