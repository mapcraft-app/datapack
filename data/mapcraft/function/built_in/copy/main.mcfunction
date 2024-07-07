execute if entity @s[tag=!CopyZoneCreate] run function mapcraft:built_in/copy/create
execute as @e[tag=Cursor,tag=Copy] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID run function mapcraft:built_in/copy/angle/calc/border
execute if score @s MC_CursorClick matches 5 as @e[tag=Cursor,tag=Copy] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID run tag @s remove Allowed_Movement
execute if score @s MC_CursorClick matches 5 run scoreboard players add @s MC_CursorClick 1
execute if score @s MC_CursorClick matches 7 as @e[tag=Cursor,tag=Copy] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID run tag @s add Allowed_Movement
execute if score @s MC_CursorClick matches 7.. run scoreboard players set @s MC_CursorClick 4
