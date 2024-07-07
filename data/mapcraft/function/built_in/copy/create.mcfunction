tag @s add CopyZoneCreate
function mapcraft:built_in/copy/angle/orientation
function mapcraft:built_in/cursor/summon
function mapcraft:built_in/copy/angle/summon
scoreboard players operation @s MC_CopyCPAngle = @s MC_CopySTAngle
scoreboard players set @s MC_CopyTurn 0
scoreboard players operation @s MC_CopyVolumeX = @s MC_VolumeX
scoreboard players operation @s MC_CopyVolumeX += -1 MC_Calc
scoreboard players operation @s MC_CopyVolumeY = @s MC_VolumeY
scoreboard players operation @s MC_CopyVolumeY += -1 MC_Calc
scoreboard players operation @s MC_CopyVolumeZ = @s MC_VolumeZ
scoreboard players operation @s MC_CopyVolumeZ += -1 MC_Calc
scoreboard players operation @s MC_CopyXLength = @s MC_CopyVolumeX
scoreboard players operation @s MC_CopyZLength = @s MC_CopyVolumeZ
