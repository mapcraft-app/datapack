execute at @e[type=player,tag=Fill] if score @p[distance=0] MC_PlayerID = @s MC_FillID if entity @p[distance=0,tag=!Cut] at @s run clone ~ ~ ~ ~ ~ ~ 1 -64 0 replace force
execute at @e[type=player,tag=Fill] if score @p[distance=0] MC_PlayerID = @s MC_FillID if entity @p[distance=0,tag=Cut] at @s run clone ~ ~ ~ ~ ~ ~ 1 -64 0 replace move
execute at @e[type=player,tag=Fill] if score @p[distance=0] MC_PlayerID = @s MC_FillID run function mapcraft:built_in/copy/execution/make_translation
execute at @s store result entity @s Pos[0] double 1 run scoreboard players get @s MC_CopyPointX
execute at @s store result entity @s Pos[1] double 1 run scoreboard players get @s MC_CopyPointY
execute at @s store result entity @s Pos[2] double 1 run scoreboard players get @s MC_CopyPointZ
execute at @s run clone 1 -64 0 1 -64 0 ~ ~ ~ replace force
kill @s
