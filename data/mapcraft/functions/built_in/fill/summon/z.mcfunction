#
#	Attributes[x].Base :
#		0: ID

summon armor_stand ~ ~ ~ {CustomName:'{"text":"Point_Z"}',CustomNameVisible:0b,Invisible:1b,Tags:["Fill","Point","Z"],Small:1b,NoBasePlate:1b,PersistenceRequired:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Attributes:[{Name:"generic.armor_toughness",Base:1}]}

data modify entity @e[tag=Fill,tag=Point,tag=Z,distance=0,limit=1] Attributes[0] merge from entity @s Attributes[0]
execute as @e[tag=Fill,tag=Point,tag=Z,distance=0,limit=1] if data entity @s Attributes[0].Base store result score @s MC_FillID run data get entity @s Attributes[0].Base

# Position Z
execute as @e[type=minecraft:player,tag=Fill] if score @s MC_PlayerID = @e[tag=Fill,tag=Point,tag=Z,distance=0,limit=1] MC_FillID store result score @e[tag=Fill,tag=Point,tag=Z,distance=0,limit=1] MC_Fill run scoreboard players get @s MC_VolumeZ

# Class
execute as @e[type=minecraft:player,tag=Fill] if score @s MC_PlayerID = @e[tag=Fill,tag=Point,tag=Z,distance=0,limit=1] MC_FillID if score @s MC_FillType matches 0 run tag @e[tag=Fill,tag=Point,tag=Z,distance=0,limit=1] add Filled
execute as @e[type=minecraft:player,tag=Fill] if score @s MC_PlayerID = @e[tag=Fill,tag=Point,tag=Z,distance=0,limit=1] MC_FillID if score @s MC_FillType matches 1 run tag @e[tag=Fill,tag=Point,tag=Z,distance=0,limit=1] add Replaced
execute as @e[type=minecraft:player,tag=Fill] if score @s MC_PlayerID = @e[tag=Fill,tag=Point,tag=Z,distance=0,limit=1] MC_FillID if score @s MC_FillType matches 2 run tag @e[tag=Fill,tag=Point,tag=Z,distance=0,limit=1] add Shaped
execute as @e[type=minecraft:player,tag=Fill] if score @s MC_PlayerID = @e[tag=Fill,tag=Point,tag=Z,distance=0,limit=1] MC_FillID if score @s MC_FillType matches 3 run tag @e[tag=Fill,tag=Point,tag=Z,distance=0,limit=1] add Copied
execute as @e[type=minecraft:player,tag=Fill] if score @s MC_PlayerID = @e[tag=Fill,tag=Point,tag=Z,distance=0,limit=1] MC_FillID if score @s MC_FillType matches 4 run tag @e[tag=Fill,tag=Point,tag=Z,distance=0,limit=1] add DeleteEntity

# Block
execute as @e[type=minecraft:player,tag=Fill] if score @s MC_PlayerID = @e[tag=Fill,tag=Point,tag=Z,distance=0,limit=1] MC_FillID if score @s MC_FillBlock matches 0 run tag @e[tag=Fill,tag=Point,tag=Z,distance=0,limit=1] add All
execute as @e[type=minecraft:player,tag=Fill] if score @s MC_PlayerID = @e[tag=Fill,tag=Point,tag=Z,distance=0,limit=1] MC_FillID if score @s MC_FillBlock matches 1 run tag @e[tag=Fill,tag=Point,tag=Z,distance=0,limit=1] add Air
execute as @e[type=minecraft:player,tag=Fill] if score @s MC_PlayerID = @e[tag=Fill,tag=Point,tag=Z,distance=0,limit=1] MC_FillID if score @s MC_FillBlock matches 2 run tag @e[tag=Fill,tag=Point,tag=Z,distance=0,limit=1] add Block

# Shape
execute as @e[type=minecraft:player,tag=Fill] if score @s MC_PlayerID = @e[tag=Fill,tag=Point,tag=Z,distance=0,limit=1] MC_FillID if score @s MC_FillShape matches 0 run tag @e[tag=Fill,tag=Point,tag=Z,distance=0,limit=1] add Curb
execute as @e[type=minecraft:player,tag=Fill] if score @s MC_PlayerID = @e[tag=Fill,tag=Point,tag=Z,distance=0,limit=1] MC_FillID if score @s MC_FillShape matches 1 run tag @e[tag=Fill,tag=Point,tag=Z,distance=0,limit=1] add Wall
execute as @e[type=minecraft:player,tag=Fill] if score @s MC_PlayerID = @e[tag=Fill,tag=Point,tag=Z,distance=0,limit=1] MC_FillID if score @s MC_FillShape matches 2 run tag @e[tag=Fill,tag=Point,tag=Z,distance=0,limit=1] add Wire

# Tp
execute as @e[type=minecraft:player,tag=Fill] if score @s MC_PlayerID = @e[tag=Fill,tag=Point,tag=Z,distance=0,limit=1] MC_FillID if score @s MC_DirectionZ matches 1 run tp @e[tag=Fill,tag=Point,tag=Z,distance=0,limit=1] ~ ~ ~ 180 0
execute as @e[type=minecraft:player,tag=Fill] if score @s MC_PlayerID = @e[tag=Fill,tag=Point,tag=Z,distance=0,limit=1] MC_FillID if score @s MC_DirectionZ matches -1 run tp @e[tag=Fill,tag=Point,tag=Z,distance=0,limit=1] ~ ~ ~ 0 0
execute as @e[type=minecraft:player,tag=Fill] if score @s MC_PlayerID = @e[tag=Fill,tag=Point,tag=Z,distance=0,limit=1] MC_FillID if score @s MC_DirectionZ matches -2 run tp @e[tag=Fill,tag=Point,tag=Z,distance=0,limit=1] ~ ~ ~ 0 0

# Position X and Y for shape system
scoreboard players operation @e[tag=Fill,tag=Point,tag=Shaped,tag=Z,distance=0,limit=1] MC_FillTempX = @s MC_FillTempX
scoreboard players operation @e[tag=Fill,tag=Point,tag=Shaped,tag=Z,distance=0,limit=1] MC_FillTempY = @s MC_Fill
execute as @e[type=minecraft:player,tag=Fill] if score @s MC_PlayerID = @e[tag=Fill,tag=Point,tag=Shaped,tag=Z,distance=0,limit=1] MC_FillID store result score @e[tag=Fill,tag=Point,tag=Shaped,tag=Z,distance=0,limit=1] MC_FillCompareX run scoreboard players get @s MC_VolumeX
execute as @e[type=minecraft:player,tag=Fill] if score @s MC_PlayerID = @e[tag=Fill,tag=Point,tag=Shaped,tag=Z,distance=0,limit=1] MC_FillID store result score @e[tag=Fill,tag=Point,tag=Shaped,tag=Z,distance=0,limit=1] MC_FillCompareY run scoreboard players get @s MC_VolumeY
