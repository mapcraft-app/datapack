# MapCraft API (1.16 or upper)
# Created by Vex345, 2020 - ...
# Player position + rotation, generate unique ID if not exist, instance Trigger
	execute as @e[type=player] at @s run function mapcraft:built_in/player/position
	execute as @e[type=player] at @s unless score @s MC_PlayerID = @s MC_PlayerID run function mapcraft:built_in/player/id_gen
	execute as @e[type=player] at @s unless score @s MC_Trigger = @s MC_Trigger run function mapcraft:built_in/trigger/player_gen
# Player cursor system
	execute as @e[type=player,tag=!Cutscene] at @s run function mapcraft:built_in/cursor/main
	execute as @e[type=player,tag=Cutscene] at @s run function mapcraft:built_in/cursor/cutscene
	execute as @e[type=player,tag=MC_Edit,tag=Select,tag=!Draw] at @s run function mapcraft:built_in/selection/main
	execute as @e[type=player,tag=MC_Edit,tag=!Select,tag=Draw] at @s run function mapcraft:built_in/paintbrush/main
	execute as @e[type=player,tag=MC_Edit,tag=Select,tag=!Draw,tag=!Is_Moving_Cursor,tag=Fill] at @s if score @s MC_CursorClick matches ..3 run tag @s remove Fill
# Player fill / copy system
	execute as @e[type=player,tag=MC_Edit,tag=Select,tag=!Draw,tag=!Is_Moving_Cursor,tag=Fill] at @s if score @s MC_CursorClick matches 4.. run function mapcraft:built_in/fill/main
	execute as @e[type=player,tag=MC_Edit,tag=Select,tag=!Draw,tag=!Is_Moving_Cursor,tag=Copy] at @s run function mapcraft:built_in/copy/main
# Player trigger system
	execute as @e[type=player] at @s run function mapcraft:built_in/trigger/main
# Player music system
	execute as @e[type=player] at @s unless score @s MC_Music = @s MC_Music run scoreboard players set @s MC_Music 0
	execute as @e[type=player] at @s unless score @s MC_MusicTime = @s MC_MusicTime run scoreboard players set @s MC_MusicTime 0
	execute as @e[type=player] at @s run function mapcraft:built_in/music/main
# Player cutscene system
	execute as @e[tag=Cutscene,tag=!Camera] at @s unless score @s MC_Cutscene = @s MC_Cutscene run scoreboard players set @s MC_Cutscene 0
	execute as @e[tag=Cutscene,tag=!Camera] at @s run function mapcraft:built_in/cutscene/main
# Move entity checker
	execute as @e[tag=CheckIsMove] at @s run function mapcraft:built_in/is_move/main
