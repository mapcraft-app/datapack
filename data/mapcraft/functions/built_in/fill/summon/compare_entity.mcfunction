#
#	Attributes[x].Base :
#		0: ID
#

execute at @s unless entity @e[tag=Fill,tag=Compare,sort=nearest,distance=..1] run summon armor_stand ~ ~ ~ {CustomName:'{"text":"Compare_Entity"}',CustomNameVisible:0b,Invisible:1b,Tags:["Fill","Compare"],Small:1b,NoBasePlate:1b,PersistenceRequired:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Attributes:[{Name:"generic.armor_toughness",Base:1}]}

execute at @s as @e[tag=Fill,tag=Compare,dx=0] store result entity @s Attributes[0].Base double 1 run scoreboard players get @e[tag=Cursor,tag=One,dx=0,limit=1] MC_CursorTemp
execute at @s as @e[tag=Fill,tag=Compare,dx=0] if data entity @s Attributes[0].Base store result score @s MC_FillID run data get entity @s Attributes[0].Base

execute as @e[tag=Fill,tag=Compare] if score @s MC_FillID = @p[distance=0] MC_PlayerID store result entity @s Pose.Head[0] float 1 run scoreboard players get @p[distance=0] MC_FillType
