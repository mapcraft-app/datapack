# -90 & 270
# x = 1 * z
# z = -1 * x

scoreboard players operation @s MC_CopyPointX -= @p[distance=0] MC_CopyX1
scoreboard players operation @s MC_CopyPointZ -= @p[distance=0] MC_CopyZ1
scoreboard players operation Temp5 MC_Calc = @s MC_CopyPointZ
scoreboard players operation Temp6 MC_Calc = @s MC_CopyPointX
scoreboard players operation Temp6 MC_Calc *= -1 MC_Calc
scoreboard players operation @s MC_CopyPointX = Temp5 MC_Calc
scoreboard players operation @s MC_CopyPointZ = Temp6 MC_Calc
scoreboard players operation @s MC_CopyPointX += @p[distance=0] MC_CopyX1
scoreboard players operation @s MC_CopyPointZ += @p[distance=0] MC_CopyZ1
