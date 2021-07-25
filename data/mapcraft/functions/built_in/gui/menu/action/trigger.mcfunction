# Define tag
tag @s add Select
tag @s remove Draw
tag @s add Trigger
tag @s remove Cutscene
# Cursor color
execute as @e[tag=Cursor,tag=One] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID run team join MC_Green @s
execute as @e[tag=Cursor,tag=One] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID run data merge entity @s {Size:1}
# GUI
function mapcraft:built_in/gui/tab/trigger/main