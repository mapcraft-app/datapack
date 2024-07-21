#
#	Options:
#		- MC_FillType :
#			¤ 0 : filled
#			¤ 1 : replaced
#			¤ 2 : shaped
#			¤ 3 : copied
#			¤ 4 : deleted_entity
#		- MC_FillBlock :
#			¤ 0 : Everything
#			¤ 1 : Just Air
#			¤ 2 : Just Block
#

# Bossbar
execute store result bossbar mapcraft:progress max run scoreboard players get @s MC_Volume
bossbar set mapcraft:progress value 0
scoreboard players set @s MC_Progress 0

# Setblock
execute at @e[tag=Cursor,tag=One] if score @e[type=magma_cube,distance=0,sort=nearest,limit=1] MC_CursorTemp = @s MC_PlayerID positioned 0 -63 0 run function mapcraft:built_in/player/get_block/slot7b
execute at @e[tag=Cursor,tag=One] if score @e[type=magma_cube,distance=0,sort=nearest,limit=1] MC_CursorTemp = @s MC_PlayerID positioned 0 -64 0 run function mapcraft:built_in/player/get_block/slot8b

# Init
function mapcraft:built_in/fill/set_direction
function mapcraft:built_in/copy/execution/calc_translation

# Summon entity for compare value (compare)
execute as @e[tag=Cursor,tag=One] unless entity @e[distance=..1,type=marker,tag=Fill,tag=Compare] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID run function mapcraft:built_in/fill/summon/compare_entity

# Summon first point (x)
execute as @e[tag=Fill,tag=Compare] if score @s MC_FillID = @p[distance=0] MC_PlayerID unless entity @e[type=marker,tag=Fill,tag=Point,tag=X,distance=..1] at @s run function mapcraft:built_in/fill/summon/x

# Start on X axis
execute as @e[tag=Fill,tag=Point,tag=X] if score @s MC_FillID = @p[distance=0] MC_PlayerID at @s run function mapcraft:built_in/fill/x

# Reset
execute at @e[tag=Cursor,tag=One] if score @e[type=magma_cube,distance=0,sort=nearest,limit=1] MC_CursorTemp = @s MC_PlayerID positioned 0 -63 0 run setblock ~ ~ ~ minecraft:bedrock
execute at @e[tag=Cursor,tag=One] if score @e[type=magma_cube,distance=0,sort=nearest,limit=1] MC_CursorTemp = @s MC_PlayerID positioned 0 -64 0 run setblock ~ ~ ~ minecraft:bedrock
execute as @e[tag=Fill,tag=Compare] if score @s MC_FillID = @p[distance=0] MC_PlayerID at @s run kill @s
tag @s remove Cut
tag @s remove Fill
scoreboard players set @s MC_Progress 0
execute store result bossbar mapcraft:progress value run scoreboard players get @s MC_Progress
