# Define tag
tag @s add Select
tag @s remove Draw
tag @s remove Trigger
tag @s add Cutscene

# Remove cursor
execute as @e[tag=EntityEdition] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID run tag @s add StopEdition
execute at @e[tag=StopEdition] run tp @e[tag=StopEdition] ~ ~-10000 ~
kill @e[tag=StopEdition]
data merge entity @s[tag=StopEdition] {Health:0.0f, Silent:1b, DeathTime:19s, DeathLootTable:"minecraft:empty"}
scoreboard players set @s MC_CursorClick 0

function mapcraft:built_in/gui/tab/cutscene/main
