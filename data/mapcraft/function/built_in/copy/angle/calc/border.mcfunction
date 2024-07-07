# Get value of Copy Cursor
	execute store result score @p[distance=0] MC_CopyX1 run data get entity @s Pos[0]
	execute store result score @p[distance=0] MC_CopyY1 run data get entity @s Pos[1]
	execute store result score @p[distance=0] MC_CopyZ1 run data get entity @s Pos[2]
	scoreboard players operation @p[distance=0] MC_CopyX2 = @p[distance=0] MC_CopyX1
	scoreboard players operation @p[distance=0] MC_CopyY2 = @p[distance=0] MC_CopyY1
	scoreboard players operation @p[distance=0] MC_CopyZ2 = @p[distance=0] MC_CopyZ1
# Calc X2,Y2,Z2 value
	scoreboard players operation @p[distance=0] MC_CopyVolumeX = @p[distance=0] MC_VolumeX
	scoreboard players operation @p[distance=0] MC_CopyVolumeX += -1 MC_Calc
	scoreboard players operation @p[distance=0] MC_CopyVolumeY = @p[distance=0] MC_VolumeY
	scoreboard players operation @p[distance=0] MC_CopyVolumeY += -1 MC_Calc
	scoreboard players operation @p[distance=0] MC_CopyVolumeZ = @p[distance=0] MC_VolumeZ
	scoreboard players operation @p[distance=0] MC_CopyVolumeZ += -1 MC_Calc
	execute if score @p[distance=0] MC_CopyTurn matches ..0 run scoreboard players operation @p[distance=0] MC_CopyXLength = @p[distance=0] MC_CopyVolumeX
	execute if score @p[distance=0] MC_CopyTurn matches ..0 run scoreboard players operation @p[distance=0] MC_CopyZLength = @p[distance=0] MC_CopyVolumeZ
	execute if score @p[distance=0] MC_CopyTurn matches 1.. run scoreboard players operation @p[distance=0] MC_CopyZLength = @p[distance=0] MC_CopyVolumeX
	execute if score @p[distance=0] MC_CopyTurn matches 1.. run scoreboard players operation @p[distance=0] MC_CopyXLength = @p[distance=0] MC_CopyVolumeZ
# Calc border
	execute if score @p[distance=0] MC_CopyCPAngle matches 0 run scoreboard players operation @p[distance=0] MC_CopyX2 += @p[distance=0] MC_CopyXLength
	execute if score @p[distance=0] MC_CopyCPAngle matches 0 run scoreboard players operation @p[distance=0] MC_CopyZ2 -= @p[distance=0] MC_CopyZLength
	execute if score @p[distance=0] MC_CopyCPAngle matches 90 run scoreboard players operation @p[distance=0] MC_CopyX2 += @p[distance=0] MC_CopyXLength
	execute if score @p[distance=0] MC_CopyCPAngle matches 90 run scoreboard players operation @p[distance=0] MC_CopyZ2 += @p[distance=0] MC_CopyZLength
	execute if score @p[distance=0] MC_CopyCPAngle matches 180 run scoreboard players operation @p[distance=0] MC_CopyX2 -= @p[distance=0] MC_CopyXLength
	execute if score @p[distance=0] MC_CopyCPAngle matches 180 run scoreboard players operation @p[distance=0] MC_CopyZ2 += @p[distance=0] MC_CopyZLength
	execute if score @p[distance=0] MC_CopyCPAngle matches 270 run scoreboard players operation @p[distance=0] MC_CopyX2 -= @p[distance=0] MC_CopyXLength
	execute if score @p[distance=0] MC_CopyCPAngle matches 270 run scoreboard players operation @p[distance=0] MC_CopyZ2 -= @p[distance=0] MC_CopyZLength
	execute if score @p[distance=0] MC_DirectionY matches 1 run scoreboard players operation @p[distance=0] MC_CopyY2 += @p[distance=0] MC_CopyVolumeY
	execute if score @p[distance=0] MC_DirectionY matches -1 run scoreboard players operation @p[distance=0] MC_CopyY2 -= @p[distance=0] MC_CopyVolumeY
# Tp
	function mapcraft:built_in/copy/angle/tp
