#	MC_CursorDist
#		- 0: 5blocks
#		- 1: 10blocks
#		- 2: 15blocks
#		- 3: Raycast
#
execute as @e[tag=ClickDetection] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID run function mapcraft:built_in/cursor/click_detection

# TP entity
execute if score @s MC_CursorDist matches ..0 run function mapcraft:built_in/cursor/tp/5
execute if score @s MC_CursorDist matches 1 run function mapcraft:built_in/cursor/tp/10
execute if score @s MC_CursorDist matches 2 run function mapcraft:built_in/cursor/tp/15
execute if score @s MC_CursorDist matches 3.. run function mapcraft:built_in/cursor/tp/raycast
execute as @e[tag=Cursor] at @s align xyz positioned ~0.5 ~ ~0.5 run tp @s ~ ~ ~ 0 0

# Transform entity if drawing
function mapcraft:built_in/cursor/width_draw

# Get coordinate
function mapcraft:built_in/cursor/get_coordinate_cursor
