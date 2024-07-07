# Define tag
tag @s remove Select
tag @s add Draw
tag @s remove Trigger
tag @s remove Cutscene
# Cursor color
execute as @e[tag=Cursor,tag=One] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID run team join MC_Purple @s
function mapcraft:built_in/cursor/width_draw
# Reset click, remove corner for delete
scoreboard players set @s MC_CursorClick 0
execute as @e[tag=EntityEdition,tag=Corner] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID run tag @s add StopEdition
execute as @e[tag=EntityEdition,tag=Cursor,tag=Two] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID run tag @s add StopEdition
execute at @e[tag=StopEdition] run tp @e[tag=StopEdition] ~ ~-10000 ~
kill @e[tag=StopEdition]
data merge entity @s[tag=StopEdition] {Health:0.0f, Silent:1b, DeathTime:19s, DeathLootTable:"minecraft:empty"}
execute as @e[tag=EntityEdition,tag=Cursor,tag=One,tag=!Allowed_Movement] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID run tag @s add Allowed_Movement
# GUI
function mapcraft:built_in/gui/tab/paintbrush/main