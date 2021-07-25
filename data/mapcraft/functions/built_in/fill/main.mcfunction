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

function mapcraft:built_in/player/get_block/setblock
function mapcraft:built_in/fill/set_direction
function mapcraft:built_in/copy/execution/calc_translation
# Summon entity for compare value (compare)
execute as @e[tag=Cursor,tag=One] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID run function mapcraft:built_in/fill/summon/compare_entity
# Summon first point (x)
execute as @e[tag=Fill,tag=Compare] if score @s MC_FillID = @p[distance=0] MC_PlayerID at @s run function mapcraft:built_in/fill/summon/x
execute store result bossbar mapcraft:progress max run scoreboard players get @s MC_Volume
bossbar set mapcraft:progress value 0
scoreboard players set @s MC_Progress 0
execute as @e[tag=Fill,tag=Point,tag=X] if score @s MC_FillID = @p[distance=0] MC_PlayerID at @s run function mapcraft:built_in/fill/x
# End of function
execute as @e[tag=Fill,tag=Compare] if score @s MC_FillID = @p[distance=0] MC_PlayerID at @s run kill @s
tag @p[distance=0] remove Cut
tag @p[distance=0] remove Fill
scoreboard players set @p[distance=0] MC_Progress 0
execute store result bossbar mapcraft:progress value run scoreboard players get @p[distance=0] MC_Progress
