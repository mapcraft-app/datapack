## /!\ Do not made any change of this file /!\

# Main
	scoreboard objectives remove MC_Main
# Calc
	scoreboard objectives remove MC_Calc
# Player
	scoreboard objectives remove MC_PlayerID
	scoreboard objectives remove MC_PlayerX
	scoreboard objectives remove MC_PlayerY
	scoreboard objectives remove MC_PlayerZ
	scoreboard objectives remove MC_PlayerRx
	scoreboard objectives remove MC_PlayerRy
	scoreboard objectives remove MC_PlayerTargetX
	scoreboard objectives remove MC_PlayerTargetY
	scoreboard objectives remove MC_PlayerTargetZ
	scoreboard objectives remove MC_Trigger
	scoreboard objectives remove MC_LastTrigger
	scoreboard objectives remove MC_Cutscene
# Cursor
	# Click
		scoreboard objectives remove MC_CursorClick
	# Distance
		scoreboard objectives remove MC_CursorDist
	# Position
		scoreboard objectives remove MC_CursorTemp
		scoreboard objectives remove MC_CursorX1
		scoreboard objectives remove MC_CursorY1
		scoreboard objectives remove MC_CursorZ1
		scoreboard objectives remove MC_CursorX2
		scoreboard objectives remove MC_CursorY2
		scoreboard objectives remove MC_CursorZ2
	# Volume
		scoreboard objectives remove MC_Volume
		scoreboard objectives remove MC_VolumeX
		scoreboard objectives remove MC_VolumeY
		scoreboard objectives remove MC_VolumeZ
	# Drawing
		scoreboard objectives remove MC_BrushWidth
		scoreboard objectives remove MC_BrushType
	# Fill
		scoreboard objectives remove MC_Progress
		scoreboard objectives remove MC_DirectionX
		scoreboard objectives remove MC_DirectionY
		scoreboard objectives remove MC_DirectionZ
		scoreboard objectives remove MC_Fill
		scoreboard objectives remove MC_FillTempX
		scoreboard objectives remove MC_FillTempY
		scoreboard objectives remove MC_FillCompareX
		scoreboard objectives remove MC_FillCompareY
		scoreboard objectives remove MC_FillID 
		scoreboard objectives remove MC_FillType
		scoreboard objectives remove MC_FillBlock
		scoreboard objectives remove MC_FillShape
	# Copy
		scoreboard objectives remove MC_CopySTAngle
		scoreboard objectives remove MC_CopyCPAngle
		scoreboard objectives remove MC_CopyTheta
		scoreboard objectives remove MC_CopyX1
		scoreboard objectives remove MC_CopyX2
		scoreboard objectives remove MC_CopyY1
		scoreboard objectives remove MC_CopyY2
		scoreboard objectives remove MC_CopyZ1
		scoreboard objectives remove MC_CopyZ2
		scoreboard objectives remove MC_CopyVolumeX
		scoreboard objectives remove MC_CopyVolumeY
		scoreboard objectives remove MC_CopyVolumeZ
		scoreboard objectives remove MC_CopyTurn
		scoreboard objectives remove MC_CopyXLength
		scoreboard objectives remove MC_CopyZLength
		scoreboard objectives remove MC_CopyTransX
		scoreboard objectives remove MC_CopyTransY
		scoreboard objectives remove MC_CopyTransZ
		scoreboard objectives remove MC_CopyPointX
		scoreboard objectives remove MC_CopyPointY
		scoreboard objectives remove MC_CopyPointZ
# Trigger
	scoreboard objectives remove MC_SaveTrigger
# Music
	scoreboard objectives remove MC_Music
	scoreboard objectives remove MC_MusicTime

# Miscellaneous
	# Buffer zone
		fill 1 0 -1 -1 2 1 minecraft:bedrock
        fill 1 3 -1 -1 6 1 minecraft:stone
	# Tags
		tag @e[type=player] remove Select
		tag @e[type=player] remove Draw
		tag @e[type=player] remove MC_Edit
		tag @e[type=player] remove Copy
		tag @e[type=player] remove CopyZoneCreate
	# Bossbar
		bossbar remove mapcraft:progress
	# Team
		team remove MC_Green
		team remove MC_DarkBlue
		team remove MC_Blue
		team remove MC_Yellow
		team remove MC_LigthYellow
		team remove MC_Purple
		team remove MC_Red
		team remove MC_DarkRed
		team remove MC_NoClip
# Gamerule
	gamerule commandBlockOutput true
	gamerule maxCommandChainLength 65536
	gamerule sendCommandFeedback true
# Disable datapack
	datapack disable "file/mapcraft"
