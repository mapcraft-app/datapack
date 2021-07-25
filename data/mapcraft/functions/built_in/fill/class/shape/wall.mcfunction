# X
execute if score @s MC_FillTempX = @s MC_FillCompareX run function mapcraft:built_in/fill/class/filled
execute if score @s MC_FillTempX matches ..1 run function mapcraft:built_in/fill/class/filled
# Z
execute at @e[type=minecraft:player,tag=Fill] if score @p[distance=0] MC_PlayerID = @s MC_FillID if score @s MC_Fill = @p[distance=0] MC_VolumeZ at @s run function mapcraft:built_in/fill/class/filled
execute if score @s MC_Fill matches ..1 run function mapcraft:built_in/fill/class/filled
