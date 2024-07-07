# X & Y
execute if score @s MC_FillTempX = @s MC_FillCompareX if score @s MC_FillTempY = @s MC_FillCompareY run function mapcraft:built_in/fill/class/filled
execute if score @s MC_FillTempX = @s MC_FillCompareX if score @s MC_FillTempY matches ..1 run function mapcraft:built_in/fill/class/filled
execute if score @s MC_FillTempY = @s MC_FillCompareY if score @s MC_FillTempX matches ..1 run function mapcraft:built_in/fill/class/filled
execute if score @s MC_FillTempX matches ..1 if score @s MC_FillTempY matches ..1 run function mapcraft:built_in/fill/class/filled
# X & Z
execute if score @s MC_FillTempX = @s MC_FillCompareX at @e[type=minecraft:player,tag=Fill] if score @p[distance=0] MC_PlayerID = @s MC_FillID if score @s MC_Fill = @p[distance=0] MC_VolumeZ at @s run function mapcraft:built_in/fill/class/filled
execute if score @s MC_FillTempX = @s MC_FillCompareX if score @s MC_Fill matches ..1 run function mapcraft:built_in/fill/class/filled
execute if score @s MC_FillTempX matches ..1 at @e[type=minecraft:player,tag=Fill] if score @p[distance=0] MC_PlayerID = @s MC_FillID if score @s MC_Fill = @p[distance=0] MC_VolumeZ at @s run function mapcraft:built_in/fill/class/filled
execute if score @s MC_FillTempX matches ..1 if score @s MC_Fill matches ..1 run function mapcraft:built_in/fill/class/filled
# Y & Z
execute if score @s MC_FillTempY = @s MC_FillCompareY at @e[type=minecraft:player,tag=Fill] if score @p[distance=0] MC_PlayerID = @s MC_FillID if score @s MC_Fill = @p[distance=0] MC_VolumeZ at @s run function mapcraft:built_in/fill/class/filled
execute if score @s MC_FillTempY = @s MC_FillCompareY if score @s MC_Fill matches ..1 run function mapcraft:built_in/fill/class/filled
execute if score @s MC_FillTempY matches ..1 at @e[type=minecraft:player,tag=Fill] if score @p[distance=0] MC_PlayerID = @s MC_FillID if score @s MC_Fill = @p[distance=0] MC_VolumeZ at @s run function mapcraft:built_in/fill/class/filled
execute if score @s MC_FillTempY matches ..1 if score @s MC_Fill matches ..1 run function mapcraft:built_in/fill/class/filled
