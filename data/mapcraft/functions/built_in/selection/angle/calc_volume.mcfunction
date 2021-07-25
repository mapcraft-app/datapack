# Calc Dimension and Volume
# sqrt((x2-x1)+(y2-y1)+(z2-z1))
	scoreboard players operation TempVolume1 MC_Calc = @s MC_CursorX1
	scoreboard players operation TempVolume2 MC_Calc = @s MC_CursorX2
	scoreboard players operation TempVolume3 MC_Calc = @s MC_CursorY1
	scoreboard players operation TempVolume4 MC_Calc = @s MC_CursorY2
	scoreboard players operation TempVolume5 MC_Calc = @s MC_CursorZ1
	scoreboard players operation TempVolume6 MC_Calc = @s MC_CursorZ2
	scoreboard players operation TempVolume2 MC_Calc -= TempVolume1 MC_Calc
	scoreboard players operation TempVolume2 MC_Calc *= TempVolume2 MC_Calc
	scoreboard players operation @s MC_VolumeX = TempVolume2 MC_Calc
	scoreboard players operation Input MC_Calc = @s MC_VolumeX
	function mapcraft:built_in/math/sqrt
	scoreboard players operation @s MC_VolumeX = Output MC_Calc
	scoreboard players add @s MC_VolumeX 1
	scoreboard players operation TempVolume4 MC_Calc -= TempVolume3 MC_Calc
	scoreboard players operation TempVolume4 MC_Calc *= TempVolume4 MC_Calc
	scoreboard players operation @s MC_VolumeY = TempVolume4 MC_Calc
	scoreboard players operation Input MC_Calc = @s MC_VolumeY
	function mapcraft:built_in/math/sqrt
	scoreboard players operation @s MC_VolumeY = Output MC_Calc
	scoreboard players add @s MC_VolumeY 1
	scoreboard players operation TempVolume6 MC_Calc -= TempVolume5 MC_Calc
	scoreboard players operation TempVolume6 MC_Calc *= TempVolume6 MC_Calc
	scoreboard players operation @s MC_VolumeZ = TempVolume6 MC_Calc
	scoreboard players operation Input MC_Calc = @s MC_VolumeZ
	function mapcraft:built_in/math/sqrt
	scoreboard players operation @s MC_VolumeZ = Output MC_Calc
	scoreboard players add @s MC_VolumeZ 1
	scoreboard players operation @s MC_Volume = @s MC_VolumeX
	scoreboard players operation @s MC_Volume *= @s MC_VolumeY
	scoreboard players operation @s MC_Volume *= @s MC_VolumeZ
