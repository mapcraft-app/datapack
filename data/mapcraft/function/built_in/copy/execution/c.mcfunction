# 180 & -180
# x = -1 * x
# z = -1 * z

scoreboard players operation @s MC_CopyPointX -= @p[distance=0] MC_CopyX1
scoreboard players operation @s MC_CopyPointZ -= @p[distance=0] MC_CopyZ1
scoreboard players operation @s MC_CopyPointX *= -1 MC_Calc
scoreboard players operation @s MC_CopyPointZ *= -1 MC_Calc
scoreboard players operation @s MC_CopyPointX += @p[distance=0] MC_CopyX1
scoreboard players operation @s MC_CopyPointZ += @p[distance=0] MC_CopyZ1
