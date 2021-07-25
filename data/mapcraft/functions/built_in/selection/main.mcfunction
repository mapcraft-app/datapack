# Summon angle of zone
execute if score @s MC_CursorClick matches 1 run function mapcraft:built_in/selection/angle
# Move angle everytime and screen volume
execute if score @s MC_CursorClick matches 2.. run function mapcraft:built_in/selection/angle/tp
# Move P2
execute if score @s MC_CursorClick matches 3 run function mapcraft:built_in/selection/stop
# Move specific angle
execute if score @s[tag=!Copy] MC_CursorClick matches 4 run function mapcraft:built_in/selection/change_move_specific_angle
execute if score @s[tag=!Copy] MC_CursorClick matches 5 run function mapcraft:built_in/selection/switch_movement
execute if score @s[tag=!Copy,tag=!Is_Moving_Cursor] MC_CursorClick matches 6 run scoreboard players set @s MC_CursorClick 4
execute if score @s[tag=!Copy] MC_CursorClick matches 7 run function mapcraft:built_in/selection/switch_movement
execute if score @s[tag=!Copy] MC_CursorClick matches 8.. run scoreboard players set @s MC_CursorClick 4
