# TP CornerCopy
	# One X1 Y2 Z1
		execute as @e[tag=EntityEdition,tag=CornerCopy,tag=CornerOne] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID store result entity @s Pos[0] double 1 run scoreboard players get @p[distance=0] MC_CopyX1
		execute as @e[tag=EntityEdition,tag=CornerCopy,tag=CornerOne] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID store result entity @s Pos[1] double 1 run scoreboard players get @p[distance=0] MC_CopyY2
		execute as @e[tag=EntityEdition,tag=CornerCopy,tag=CornerOne] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID store result entity @s Pos[2] double 1 run scoreboard players get @p[distance=0] MC_CopyZ1
	# Two X2 Y1 Z1
		execute as @e[tag=EntityEdition,tag=CornerCopy,tag=CornerTwo] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID store result entity @s Pos[0] double 1 run scoreboard players get @p[distance=0] MC_CopyX2
		execute as @e[tag=EntityEdition,tag=CornerCopy,tag=CornerTwo] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID store result entity @s Pos[1] double 1 run scoreboard players get @p[distance=0] MC_CopyY1
		execute as @e[tag=EntityEdition,tag=CornerCopy,tag=CornerTwo] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID store result entity @s Pos[2] double 1 run scoreboard players get @p[distance=0] MC_CopyZ1
	# Three X1 Y1 Z2
		execute as @e[tag=EntityEdition,tag=CornerCopy,tag=CornerThree] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID store result entity @s Pos[0] double 1 run scoreboard players get @p[distance=0] MC_CopyX1
		execute as @e[tag=EntityEdition,tag=CornerCopy,tag=CornerThree] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID store result entity @s Pos[1] double 1 run scoreboard players get @p[distance=0] MC_CopyY1
		execute as @e[tag=EntityEdition,tag=CornerCopy,tag=CornerThree] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID store result entity @s Pos[2] double 1 run scoreboard players get @p[distance=0] MC_CopyZ2
	# Four X2 Y1 Z2
		execute as @e[tag=EntityEdition,tag=CornerCopy,tag=CornerFour] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID store result entity @s Pos[0] double 1 run scoreboard players get @p[distance=0] MC_CopyX2
		execute as @e[tag=EntityEdition,tag=CornerCopy,tag=CornerFour] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID store result entity @s Pos[1] double 1 run scoreboard players get @p[distance=0] MC_CopyY1
		execute as @e[tag=EntityEdition,tag=CornerCopy,tag=CornerFour] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID store result entity @s Pos[2] double 1 run scoreboard players get @p[distance=0] MC_CopyZ2
	# Five X1 Y2 Z2
		execute as @e[tag=EntityEdition,tag=CornerCopy,tag=CornerFive] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID store result entity @s Pos[0] double 1 run scoreboard players get @p[distance=0] MC_CopyX1
		execute as @e[tag=EntityEdition,tag=CornerCopy,tag=CornerFive] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID store result entity @s Pos[1] double 1 run scoreboard players get @p[distance=0] MC_CopyY2
		execute as @e[tag=EntityEdition,tag=CornerCopy,tag=CornerFive] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID store result entity @s Pos[2] double 1 run scoreboard players get @p[distance=0] MC_CopyZ2
	# Six X2 Y2 Z1
		execute as @e[tag=EntityEdition,tag=CornerCopy,tag=CornerSix] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID store result entity @s Pos[0] double 1 run scoreboard players get @p[distance=0] MC_CopyX2
		execute as @e[tag=EntityEdition,tag=CornerCopy,tag=CornerSix] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID store result entity @s Pos[1] double 1 run scoreboard players get @p[distance=0] MC_CopyY2
		execute as @e[tag=EntityEdition,tag=CornerCopy,tag=CornerSix] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID store result entity @s Pos[2] double 1 run scoreboard players get @p[distance=0] MC_CopyZ1
	# Extremum
		execute as @e[tag=EntityEdition,tag=CornerCopy,tag=Extremum] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID store result entity @s Pos[0] double 1 run scoreboard players get @p[distance=0] MC_CopyX2
		execute as @e[tag=EntityEdition,tag=CornerCopy,tag=Extremum] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID store result entity @s Pos[1] double 1 run scoreboard players get @p[distance=0] MC_CopyY2
		execute as @e[tag=EntityEdition,tag=CornerCopy,tag=Extremum] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID store result entity @s Pos[2] double 1 run scoreboard players get @p[distance=0] MC_CopyZ2
# Align angle to grid
	execute as @e[tag=EntityEdition,tag=CornerCopy] at @s align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~ 0 0