#
#	Attributes[x].Base :
#		0: ID
#

execute at @s unless entity @e[tag=Fill,tag=Compare,sort=nearest,distance=..1] run summon minecraft:marker ~ ~ ~ {data:{ID:0.0d,FillType:0.0d},Invulnerable:1b,Tags:["Fill","Compare"]}
execute at @s as @e[tag=Fill,tag=Compare,distance=..0.01] store result entity @s data.ID double 1 run scoreboard players get @e[tag=Cursor,tag=One,dx=0,limit=1] MC_CursorTemp
execute at @s as @e[tag=Fill,tag=Compare,distance=..0.01] store result score @s MC_FillID run data get entity @s data.ID
execute as @e[tag=Fill,tag=Compare] if score @s MC_FillID = @p[distance=0] MC_PlayerID store result entity @s data.FillType double 1 run scoreboard players get @p[distance=0] MC_FillType
