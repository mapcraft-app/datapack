# TP Corner
	# One X1 Y2 Z1
		execute as @e[tag=EntityEdition,tag=Corner,tag=CornerOne] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID store result entity @s Pos[0] double 1 run scoreboard players get @p[distance=0] MC_CursorX1
		execute as @e[tag=EntityEdition,tag=Corner,tag=CornerOne] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID store result entity @s Pos[1] double 1 run scoreboard players get @p[distance=0] MC_CursorY2
		execute as @e[tag=EntityEdition,tag=Corner,tag=CornerOne] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID store result entity @s Pos[2] double 1 run scoreboard players get @p[distance=0] MC_CursorZ1
	# Two X2 Y1 Z1
		execute as @e[tag=EntityEdition,tag=Corner,tag=CornerTwo] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID store result entity @s Pos[0] double 1 run scoreboard players get @p[distance=0] MC_CursorX2
		execute as @e[tag=EntityEdition,tag=Corner,tag=CornerTwo] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID store result entity @s Pos[1] double 1 run scoreboard players get @p[distance=0] MC_CursorY1
		execute as @e[tag=EntityEdition,tag=Corner,tag=CornerTwo] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID store result entity @s Pos[2] double 1 run scoreboard players get @p[distance=0] MC_CursorZ1
	# Three X1 Y1 Z2
		execute as @e[tag=EntityEdition,tag=Corner,tag=CornerThree] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID store result entity @s Pos[0] double 1 run scoreboard players get @p[distance=0] MC_CursorX1
		execute as @e[tag=EntityEdition,tag=Corner,tag=CornerThree] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID store result entity @s Pos[1] double 1 run scoreboard players get @p[distance=0] MC_CursorY1
		execute as @e[tag=EntityEdition,tag=Corner,tag=CornerThree] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID store result entity @s Pos[2] double 1 run scoreboard players get @p[distance=0] MC_CursorZ2
	# Four X2 Y1 Z2
		execute as @e[tag=EntityEdition,tag=Corner,tag=CornerFour] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID store result entity @s Pos[0] double 1 run scoreboard players get @p[distance=0] MC_CursorX2
		execute as @e[tag=EntityEdition,tag=Corner,tag=CornerFour] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID store result entity @s Pos[1] double 1 run scoreboard players get @p[distance=0] MC_CursorY1
		execute as @e[tag=EntityEdition,tag=Corner,tag=CornerFour] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID store result entity @s Pos[2] double 1 run scoreboard players get @p[distance=0] MC_CursorZ2
	# Five X1 Y2 Z2
		execute as @e[tag=EntityEdition,tag=Corner,tag=CornerFive] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID store result entity @s Pos[0] double 1 run scoreboard players get @p[distance=0] MC_CursorX1
		execute as @e[tag=EntityEdition,tag=Corner,tag=CornerFive] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID store result entity @s Pos[1] double 1 run scoreboard players get @p[distance=0] MC_CursorY2
		execute as @e[tag=EntityEdition,tag=Corner,tag=CornerFive] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID store result entity @s Pos[2] double 1 run scoreboard players get @p[distance=0] MC_CursorZ2
	# Six X2 Y2 Z1
		execute as @e[tag=EntityEdition,tag=Corner,tag=CornerSix] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID store result entity @s Pos[0] double 1 run scoreboard players get @p[distance=0] MC_CursorX2
		execute as @e[tag=EntityEdition,tag=Corner,tag=CornerSix] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID store result entity @s Pos[1] double 1 run scoreboard players get @p[distance=0] MC_CursorY2
		execute as @e[tag=EntityEdition,tag=Corner,tag=CornerSix] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID store result entity @s Pos[2] double 1 run scoreboard players get @p[distance=0] MC_CursorZ1
# Align angle to grid
	execute as @e[tag=EntityEdition,tag=Corner] at @s align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~ 0 0
function mapcraft:built_in/selection/angle/calc_volume
function mapcraft:built_in/selection/angle/screen_volume