#	Attributes[x].Base :
#		0: ID

summon armor_stand ~ ~ ~ {CustomName:'{"text":"Point_Z_Copy"}',CustomNameVisible:0b,Invisible:1b,Tags:["Fill","Point","Copy", "Z"],Small:1b,NoBasePlate:1b,PersistenceRequired:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Attributes:[{Name:"generic.armor_toughness",Base:1}]}

data modify entity @e[tag=Fill,tag=Point,tag=Copy,tag=Z,distance=0,limit=1] Attributes[0] merge from entity @s Attributes[0]
execute as @e[tag=Fill,tag=Point,tag=Copy,tag=Z,distance=0,limit=1] if data entity @s Attributes[0].Base store result score @s MC_FillID run data get entity @s Attributes[0].Base

# Save X,Y,Z position, and add translation position for copy system
execute as @e[tag=Fill,tag=Point,tag=Copy,tag=Z,distance=0,limit=1] store result score @s MC_CopyPointX run data get entity @s Pos[0]
execute as @e[tag=Fill,tag=Point,tag=Copy,tag=Z,distance=0,limit=1] store result score @s MC_CopyPointY run data get entity @s Pos[1]
execute as @e[tag=Fill,tag=Point,tag=Copy,tag=Z,distance=0,limit=1] store result score @s MC_CopyPointZ run data get entity @s Pos[2]
execute as @e[type=minecraft:player,tag=Fill] if score @s MC_PlayerID = @e[tag=Fill,tag=Point,tag=Copy,tag=Z,distance=0,limit=1] MC_FillID run scoreboard players operation @e[tag=Fill,tag=Point,tag=Copy,tag=Z,distance=0,limit=1] MC_CopyPointX += @s MC_CopyTransX
execute as @e[type=minecraft:player,tag=Fill] if score @s MC_PlayerID = @e[tag=Fill,tag=Point,tag=Copy,tag=Z,distance=0,limit=1] MC_FillID run scoreboard players operation @e[tag=Fill,tag=Point,tag=Copy,tag=Z,distance=0,limit=1] MC_CopyPointY += @s MC_CopyTransY
execute as @e[type=minecraft:player,tag=Fill] if score @s MC_PlayerID = @e[tag=Fill,tag=Point,tag=Copy,tag=Z,distance=0,limit=1] MC_FillID run scoreboard players operation @e[tag=Fill,tag=Point,tag=Copy,tag=Z,distance=0,limit=1] MC_CopyPointZ += @s MC_CopyTransZ
