summon minecraft:marker ~ ~ ~ {data:{ID:0.0d,FillType:0.0d},Invulnerable:1b,Tags:["Fill","Point","Z"]}

data modify entity @e[tag=Fill,tag=Point,tag=Z,sort=nearest,limit=1] data merge from entity @s data
execute as @e[tag=Fill,tag=Point,tag=Z,sort=nearest,limit=1] at @s store result score @s MC_FillID run data get entity @s data.ID

# Position Z
execute as @e[type=minecraft:player,tag=Fill] if score @s MC_PlayerID = @e[tag=Fill,tag=Point,tag=Z,sort=nearest,limit=1] MC_FillID store result score @e[tag=Fill,tag=Point,tag=Z,sort=nearest,limit=1] MC_Fill run scoreboard players get @s MC_VolumeZ

# Class
execute as @e[type=minecraft:player,tag=Fill] if score @s MC_PlayerID = @e[tag=Fill,tag=Point,tag=Z,sort=nearest,limit=1] MC_FillID if score @s MC_FillType matches 0 run tag @e[tag=Fill,tag=Point,tag=Z,sort=nearest,limit=1] add Filled
execute as @e[type=minecraft:player,tag=Fill] if score @s MC_PlayerID = @e[tag=Fill,tag=Point,tag=Z,sort=nearest,limit=1] MC_FillID if score @s MC_FillType matches 1 run tag @e[tag=Fill,tag=Point,tag=Z,sort=nearest,limit=1] add Replaced
execute as @e[type=minecraft:player,tag=Fill] if score @s MC_PlayerID = @e[tag=Fill,tag=Point,tag=Z,sort=nearest,limit=1] MC_FillID if score @s MC_FillType matches 2 run tag @e[tag=Fill,tag=Point,tag=Z,sort=nearest,limit=1] add Shaped
execute as @e[type=minecraft:player,tag=Fill] if score @s MC_PlayerID = @e[tag=Fill,tag=Point,tag=Z,sort=nearest,limit=1] MC_FillID if score @s MC_FillType matches 3 run tag @e[tag=Fill,tag=Point,tag=Z,sort=nearest,limit=1] add Copied
execute as @e[type=minecraft:player,tag=Fill] if score @s MC_PlayerID = @e[tag=Fill,tag=Point,tag=Z,sort=nearest,limit=1] MC_FillID if score @s MC_FillType matches 4 run tag @e[tag=Fill,tag=Point,tag=Z,sort=nearest,limit=1] add DeleteEntity

# Block
execute as @e[type=minecraft:player,tag=Fill] if score @s MC_PlayerID = @e[tag=Fill,tag=Point,tag=Z,sort=nearest,limit=1] MC_FillID unless score @s MC_FillBlock = @s MC_FillBlock run tag @e[tag=Fill,tag=Point,tag=Z,sort=nearest,limit=1] add All
execute as @e[type=minecraft:player,tag=Fill] if score @s MC_PlayerID = @e[tag=Fill,tag=Point,tag=Z,sort=nearest,limit=1] MC_FillID if score @s MC_FillBlock matches 0 run tag @e[tag=Fill,tag=Point,tag=Z,sort=nearest,limit=1] add All
execute as @e[type=minecraft:player,tag=Fill] if score @s MC_PlayerID = @e[tag=Fill,tag=Point,tag=Z,sort=nearest,limit=1] MC_FillID if score @s MC_FillBlock matches 1 run tag @e[tag=Fill,tag=Point,tag=Z,sort=nearest,limit=1] add Air
execute as @e[type=minecraft:player,tag=Fill] if score @s MC_PlayerID = @e[tag=Fill,tag=Point,tag=Z,sort=nearest,limit=1] MC_FillID if score @s MC_FillBlock matches 2 run tag @e[tag=Fill,tag=Point,tag=Z,sort=nearest,limit=1] add Block

# Shape
execute as @e[type=minecraft:player,tag=Fill] if score @s MC_PlayerID = @e[tag=Fill,tag=Point,tag=Z,sort=nearest,limit=1] MC_FillID if score @s MC_FillShape matches 0 run tag @e[tag=Fill,tag=Point,tag=Z,sort=nearest,limit=1] add Curb
execute as @e[type=minecraft:player,tag=Fill] if score @s MC_PlayerID = @e[tag=Fill,tag=Point,tag=Z,sort=nearest,limit=1] MC_FillID if score @s MC_FillShape matches 1 run tag @e[tag=Fill,tag=Point,tag=Z,sort=nearest,limit=1] add Wall
execute as @e[type=minecraft:player,tag=Fill] if score @s MC_PlayerID = @e[tag=Fill,tag=Point,tag=Z,sort=nearest,limit=1] MC_FillID if score @s MC_FillShape matches 2 run tag @e[tag=Fill,tag=Point,tag=Z,sort=nearest,limit=1] add Wire

# Tp
execute as @e[type=minecraft:player,tag=Fill] if score @s MC_PlayerID = @e[tag=Fill,tag=Point,tag=Z,sort=nearest,limit=1] MC_FillID if score @s MC_DirectionZ matches 1 run tp @e[tag=Fill,tag=Point,tag=Z,sort=nearest,limit=1] ~ ~ ~ 180 0
execute as @e[type=minecraft:player,tag=Fill] if score @s MC_PlayerID = @e[tag=Fill,tag=Point,tag=Z,sort=nearest,limit=1] MC_FillID if score @s MC_DirectionZ matches -1 run tp @e[tag=Fill,tag=Point,tag=Z,sort=nearest,limit=1] ~ ~ ~ 0 0
execute as @e[type=minecraft:player,tag=Fill] if score @s MC_PlayerID = @e[tag=Fill,tag=Point,tag=Z,sort=nearest,limit=1] MC_FillID if score @s MC_DirectionZ matches -2 run tp @e[tag=Fill,tag=Point,tag=Z,sort=nearest,limit=1] ~ ~ ~ 0 0

# Position X and Y for shape system
scoreboard players operation @e[tag=Fill,tag=Point,tag=Shaped,tag=Z,sort=nearest,limit=1] MC_FillTempX = @s MC_FillTempX
scoreboard players operation @e[tag=Fill,tag=Point,tag=Shaped,tag=Z,sort=nearest,limit=1] MC_FillTempY = @s MC_Fill
execute as @e[type=minecraft:player,tag=Fill] if score @s MC_PlayerID = @e[tag=Fill,tag=Point,tag=Shaped,tag=Z,sort=nearest,limit=1] MC_FillID store result score @e[tag=Fill,tag=Point,tag=Shaped,tag=Z,sort=nearest,limit=1] MC_FillCompareX run scoreboard players get @s MC_VolumeX
execute as @e[type=minecraft:player,tag=Fill] if score @s MC_PlayerID = @e[tag=Fill,tag=Point,tag=Shaped,tag=Z,sort=nearest,limit=1] MC_FillID store result score @e[tag=Fill,tag=Point,tag=Shaped,tag=Z,sort=nearest,limit=1] MC_FillCompareY run scoreboard players get @s MC_VolumeY
