# Check if entity move to x,y,z axe. Not check sneaking
# Add CheckIsMove to entity for starting check system
# MC_IsMove is set to 1 if movement, and tag IsMove is add

scoreboard players set @s MC_IsMove 0
tag @s remove IsMove

execute store result score @s MC_IsMoveNewX run data get entity @s Pos[0] 1000
execute store result score @s MC_IsMoveNewY run data get entity @s Pos[1] 1000
execute store result score @s MC_IsMoveNewZ run data get entity @s Pos[2] 1000

execute unless score @s MC_IsMoveOldX = @s MC_IsMoveNewX run tag @s add IsMove
execute unless score @s MC_IsMoveOldY = @s MC_IsMoveNewY run tag @s add IsMove
execute unless score @s MC_IsMoveOldZ = @s MC_IsMoveNewZ run tag @s add IsMove
execute if entity @s[tag=IsMove] run scoreboard players set @s MC_IsMove 1

scoreboard players operation @s MC_IsMoveOldX = @s MC_IsMoveNewX
scoreboard players operation @s MC_IsMoveOldY = @s MC_IsMoveNewY
scoreboard players operation @s MC_IsMoveOldZ = @s MC_IsMoveNewZ
