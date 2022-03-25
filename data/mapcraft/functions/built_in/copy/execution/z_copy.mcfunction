#	Attributes[x].Base :
#		0: ID

summon minecraft:marker ~ ~ ~ {data:{ID:0.0d,FillType:0.0d},Invulnerable:1b,Tags:["Fill","Point","Copy","Z"]}
data modify entity @e[tag=Fill,tag=Point,tag=Copy,tag=Z,distance=0,limit=1] data merge from entity @s data
execute as @e[tag=Fill,tag=Point,tag=Copy,tag=Z,distance=0,limit=1] store result score @s MC_FillID run data get entity @s data.ID

# Save X,Y,Z position, and add translation position for copy system
execute as @e[tag=Fill,tag=Point,tag=Copy,tag=Z,distance=0,limit=1] store result score @s MC_CopyPointX run data get entity @s Pos[0]
execute as @e[tag=Fill,tag=Point,tag=Copy,tag=Z,distance=0,limit=1] store result score @s MC_CopyPointY run data get entity @s Pos[1]
execute as @e[tag=Fill,tag=Point,tag=Copy,tag=Z,distance=0,limit=1] store result score @s MC_CopyPointZ run data get entity @s Pos[2]
execute as @e[type=minecraft:player,tag=Fill] if score @s MC_PlayerID = @e[tag=Fill,tag=Point,tag=Copy,tag=Z,distance=0,limit=1] MC_FillID run scoreboard players operation @e[tag=Fill,tag=Point,tag=Copy,tag=Z,distance=0,limit=1] MC_CopyPointX += @s MC_CopyTransX
execute as @e[type=minecraft:player,tag=Fill] if score @s MC_PlayerID = @e[tag=Fill,tag=Point,tag=Copy,tag=Z,distance=0,limit=1] MC_FillID run scoreboard players operation @e[tag=Fill,tag=Point,tag=Copy,tag=Z,distance=0,limit=1] MC_CopyPointY += @s MC_CopyTransY
execute as @e[type=minecraft:player,tag=Fill] if score @s MC_PlayerID = @e[tag=Fill,tag=Point,tag=Copy,tag=Z,distance=0,limit=1] MC_FillID run scoreboard players operation @e[tag=Fill,tag=Point,tag=Copy,tag=Z,distance=0,limit=1] MC_CopyPointZ += @s MC_CopyTransZ
