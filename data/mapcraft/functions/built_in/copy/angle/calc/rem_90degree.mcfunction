scoreboard players remove @s MC_CopyCPAngle 90
execute if score @s MC_CopyCPAngle matches ..-1 run scoreboard players set @s MC_CopyCPAngle 270
scoreboard players add @s MC_CopyTurn 1
execute if score @s MC_CopyTurn matches 2 run scoreboard players set @s MC_CopyTurn 0
