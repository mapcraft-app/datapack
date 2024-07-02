## /!\ Do not made any change of this file /!\
##
##	Tags list
##		- Cursor:
##			[MC_Edit]
##			Type [Drawing, Selection]
##			Position [5blocks, 10blocks, 15blocks]
##			Raycast [In, On]
##	Team:
##		MC_[White,Green,Blue,Yellow,Purple,Red,NoClip]
##

# Calc
	scoreboard objectives add MC_Calc dummy
	function mapcraft:built_in/math/reset
# Player
	scoreboard objectives add MC_PlayerID dummy
	scoreboard objectives add MC_PlayerX dummy
	scoreboard objectives add MC_PlayerY dummy
	scoreboard objectives add MC_PlayerZ dummy
	scoreboard objectives add MC_PlayerRx dummy
	scoreboard objectives add MC_PlayerRy dummy
	scoreboard objectives add MC_PlayerTargetX dummy
	scoreboard objectives add MC_PlayerTargetY dummy
	scoreboard objectives add MC_PlayerTargetZ dummy
# Moving entity
	scoreboard objectives add MC_IsMove dummy
	scoreboard objectives add MC_IsMoveNewX dummy
	scoreboard objectives add MC_IsMoveNewY dummy
	scoreboard objectives add MC_IsMoveNewZ dummy
	scoreboard objectives add MC_IsMoveOldX dummy
	scoreboard objectives add MC_IsMoveOldY dummy
	scoreboard objectives add MC_IsMoveOldZ dummy
# Cursor
	# Click
		scoreboard objectives add MC_CursorClick dummy
	# Distance
		scoreboard objectives add MC_CursorDist dummy
	# Position
		scoreboard objectives add MC_CursorTemp dummy
		scoreboard objectives add MC_CursorX1 dummy
		scoreboard objectives add MC_CursorY1 dummy
		scoreboard objectives add MC_CursorZ1 dummy
		scoreboard objectives add MC_CursorX2 dummy
		scoreboard objectives add MC_CursorY2 dummy
		scoreboard objectives add MC_CursorZ2 dummy
	# Volume
		scoreboard objectives add MC_Volume dummy
		scoreboard objectives add MC_VolumeX dummy
		scoreboard objectives add MC_VolumeY dummy
		scoreboard objectives add MC_VolumeZ dummy
	# Drawing
		scoreboard objectives add MC_BrushWidth dummy
		scoreboard objectives add MC_BrushType dummy
	# Fill
		scoreboard objectives add MC_Progress dummy
		scoreboard objectives add MC_DirectionX dummy
		scoreboard objectives add MC_DirectionY dummy
		scoreboard objectives add MC_DirectionZ dummy
		scoreboard objectives add MC_Fill dummy
		scoreboard objectives add MC_FillTempX dummy
		scoreboard objectives add MC_FillTempY dummy
		scoreboard objectives add MC_FillCompareX dummy
		scoreboard objectives add MC_FillCompareY dummy
		scoreboard objectives add MC_FillID dummy
		scoreboard objectives add MC_FillType dummy
		scoreboard objectives add MC_FillBlock dummy
		scoreboard objectives add MC_FillShape dummy
	# Copy
		scoreboard objectives add MC_CopySTAngle dummy
		scoreboard objectives add MC_CopyCPAngle dummy
		scoreboard objectives add MC_CopyTheta dummy
		scoreboard objectives add MC_CopyX1 dummy
		scoreboard objectives add MC_CopyX2 dummy
		scoreboard objectives add MC_CopyY1 dummy
		scoreboard objectives add MC_CopyY2 dummy
		scoreboard objectives add MC_CopyZ1 dummy
		scoreboard objectives add MC_CopyZ2 dummy
		scoreboard objectives add MC_CopyVolumeX dummy
		scoreboard objectives add MC_CopyVolumeY dummy
		scoreboard objectives add MC_CopyVolumeZ dummy
		scoreboard objectives add MC_CopyTurn dummy
		scoreboard objectives add MC_CopyXLength dummy
		scoreboard objectives add MC_CopyZLength dummy
		scoreboard objectives add MC_CopyTransX dummy
		scoreboard objectives add MC_CopyTransY dummy
		scoreboard objectives add MC_CopyTransZ dummy
		scoreboard objectives add MC_CopyPointX dummy
		scoreboard objectives add MC_CopyPointY dummy
		scoreboard objectives add MC_CopyPointZ dummy
# Trigger
	scoreboard objectives add MC_Trigger dummy
	scoreboard objectives add MC_LastTrigger dummy
	scoreboard objectives add MC_SaveTrigger dummy
# Music
	scoreboard objectives add MC_Music dummy
	scoreboard objectives add MC_MusicTime dummy
# Cutscene
	scoreboard objectives add MC_Cutscene dummy
	scoreboard objectives add MC_CutsceneSaveX dummy
	scoreboard objectives add MC_CutsceneSaveY dummy
	scoreboard objectives add MC_CutsceneSaveZ dummy
	scoreboard objectives add MC_CutsceneSaveRx dummy
	scoreboard objectives add MC_CutsceneSaveRy dummy

# Miscellaneous
	# Create buffer zone
		fill 1 0 -1 -1 7 1 minecraft:bedrock
		setblock 0 1 0 minecraft:air
		setblock 0 3 0 minecraft:air
		setblock 0 5 0 minecraft:air
		setblock 0 6 0 minecraft:air
	# Tags
		tag @e[type=player] add Select
		tag @e[type=player] remove Draw
		tag @e[type=player] remove MC_Edit
		tag @e[type=player] remove Copy
		tag @e[type=player] remove CopyZoneCreate
	# Bossbar
		bossbar add mapcraft:progress {"text":"Progress","color":"green","bold": true}
		bossbar set mapcraft:progress color yellow
		bossbar set mapcraft:progress players @e[tag=MC_Edit,type=minecraft:player]
		bossbar set mapcraft:progress visible false
	# Team
		team add MC_White
		team modify MC_White color white
		team add MC_Green
		team modify MC_Green color green
		team add MC_DarkBlue
		team modify MC_DarkBlue color blue
		team add MC_Blue
		team modify MC_Blue color aqua
		team add MC_Yellow
		team modify MC_Yellow color gold
		team add MC_LigthYellow
		team modify MC_LigthYellow color yellow
		team add MC_Purple
		team modify MC_Purple color light_purple
		team add MC_Red
		team modify MC_Red color red
		team add MC_DarkRed
		team modify MC_DarkRed color dark_red
		team add MC_NoClip
		team modify MC_NoClip collisionRule never
# Gamerule
	gamerule commandBlockOutput false
	gamerule maxCommandChainLength 1000000000
	gamerule sendCommandFeedback false
