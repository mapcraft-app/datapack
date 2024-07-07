summon minecraft:marker ~ ~ ~ {data:{ID:0.0d,FillType:0.0d},Invulnerable:1b,Tags:["Fill","Point","Y"]}

data modify entity @e[tag=Fill,tag=Point,tag=Y,sort=nearest,limit=1] data merge from entity @s data
execute as @e[tag=Fill,tag=Point,tag=Y,sort=nearest,limit=1] store result score @s MC_FillID run data get entity @s data.ID

scoreboard players operation @e[tag=Fill,tag=Point,tag=Y,sort=nearest,limit=1] MC_FillTempX = @s MC_Fill
execute as @e[type=minecraft:player,tag=Fill] if score @s MC_PlayerID = @e[tag=Fill,tag=Point,tag=Y,sort=nearest,limit=1] MC_FillID store result score @e[tag=Fill,tag=Point,tag=Y,sort=nearest,limit=1] MC_Fill run scoreboard players get @s MC_VolumeY
execute as @e[type=minecraft:player,tag=Fill] if score @s MC_PlayerID = @e[tag=Fill,tag=Point,tag=Y,sort=nearest,limit=1] MC_FillID if score @s MC_DirectionY matches 1 run tp @e[tag=Fill,tag=Point,tag=Y,sort=nearest,limit=1] ~ ~ ~ 0 -90
execute as @e[type=minecraft:player,tag=Fill] if score @s MC_PlayerID = @e[tag=Fill,tag=Point,tag=Y,sort=nearest,limit=1] MC_FillID if score @s MC_DirectionY matches -1 run tp @e[tag=Fill,tag=Point,tag=Y,sort=nearest,limit=1] ~ ~ ~ 0 90
execute as @e[type=minecraft:player,tag=Fill] if score @s MC_PlayerID = @e[tag=Fill,tag=Point,tag=Y,sort=nearest,limit=1] MC_FillID if score @s MC_DirectionY matches -2 run tp @e[tag=Fill,tag=Point,tag=Y,sort=nearest,limit=1] ~ ~ ~ 0 90
