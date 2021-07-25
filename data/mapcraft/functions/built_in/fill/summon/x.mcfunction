#
#	Attributes[x].Base :
#		0: ID

summon armor_stand ~ ~ ~ {CustomName:'{"text":"Point_X"}',CustomNameVisible:0b,Invisible:1b,Tags:["Fill","Point","X"],Small:1b,NoBasePlate:1b,PersistenceRequired:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Attributes:[{Name:"generic.armor_toughness",Base:1}]}

data modify entity @e[tag=Fill,tag=Point,tag=X,distance=0,limit=1] Attributes[0] merge from entity @s Attributes[0]
execute as @e[tag=Fill,tag=Point,tag=X,distance=0,limit=1] if data entity @s Attributes[0].Base store result score @s MC_FillID run data get entity @s Attributes[0].Base

execute as @e[type=minecraft:player,tag=Fill] if score @s MC_PlayerID = @e[tag=Fill,tag=Point,tag=X,distance=0,limit=1] MC_FillID store result score @e[tag=Fill,tag=Point,tag=X,distance=0,limit=1] MC_Fill run scoreboard players get @s MC_VolumeX

execute as @e[type=minecraft:player,tag=Fill] if score @s MC_PlayerID = @e[tag=Fill,tag=Point,tag=X,distance=0,limit=1] MC_FillID if score @s MC_DirectionX matches 1 run tp @e[tag=Fill,tag=Point,tag=X,distance=0,limit=1] ~ ~ ~ -90 0
execute as @e[type=minecraft:player,tag=Fill] if score @s MC_PlayerID = @e[tag=Fill,tag=Point,tag=X,distance=0,limit=1] MC_FillID if score @s MC_DirectionX matches -1 run tp @e[tag=Fill,tag=Point,tag=X,distance=0,limit=1] ~ ~ ~ 90 0
execute as @e[type=minecraft:player,tag=Fill] if score @s MC_PlayerID = @e[tag=Fill,tag=Point,tag=X,distance=0,limit=1] MC_FillID if score @s MC_DirectionX matches -2 run tp @e[tag=Fill,tag=Point,tag=X,distance=0,limit=1] ~ ~ ~ 90 0
