INSERT INTO `version_db_world` (`sql_rev`) VALUES ('1554920580112420800');

 -- Actionlist SAI
SET @ENTRY := 1472100;
DELETE FROM `smart_scripts` WHERE `entryorguid`=@ENTRY AND `id`=3;
INSERT INTO `smart_scripts` (`entryorguid`,`source_type`,`id`,`link`,`event_type`,`event_phase_mask`,`event_chance`,`event_flags`,`event_param1`,`event_param2`,`event_param3`,`event_param4`,`action_type`,`action_param1`,`action_param2`,`action_param3`,`action_param4`,`action_param5`,`action_param6`,`target_type`,`target_param1`,`target_param2`,`target_param3`,`target_x`,`target_y`,`target_z`,`target_o`,`comment`) VALUES
(@ENTRY,9,3,0,0,0,100,0,3000,3000,0,0,50,179882,7200,1,0,0,0,8,0,0,0,-8925.57,496.042,103.767,2.42801,'Field Marshal Afrasiabi - On Script - Summon Gameobject The Severed Head of Nefarian and despawn after 2 hours');
