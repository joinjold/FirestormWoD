DELETE FROM `spell_script_names` WHERE `ScriptName`='spell_monk_breath_of_the_serpent_tick';
INSERT INTO `spell_script_names` VALUES (157627, 'spell_monk_breath_of_the_serpent_tick');
UPDATE `creature_template` SET `modelid1`='0' WHERE `entry`='78065';