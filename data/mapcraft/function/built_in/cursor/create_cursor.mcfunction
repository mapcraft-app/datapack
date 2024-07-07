# Initialize
bossbar set mapcraft:progress players @s
bossbar set mapcraft:progress visible true
tag @s add MC_Edit
execute unless score @s MC_BrushWidth = @s MC_BrushWidth run scoreboard players set @s MC_BrushWidth 1
execute unless score @s MC_CursorDist = @s MC_CursorDist run scoreboard players set @s MC_CursorDist 0
scoreboard players set @s MC_CursorClick 0

# Summon Click Detection(villager) + Cursor(magma_cube)
# Click Detection
summon villager ~ ~ ~ {CustomName:'{"text":"ClickDetection"}',CustomNameVisible:0b,Tags:["EntityEdition","ClickDetection"],NoGravity:1b,Silent:1b,Invulnerable:1b,PersistenceRequired:1b,NoAI:1b,AbsorptionAmount:2048f,Health:2147483646f,attributes:[{id:"minecraft:generic.armor",base:30},{id:"minecraft:generic.max_absorption",base:2048}],VillagerData:{profession:"minecraft:none"},attributes:[{id:"minecraft:generic.max_health",base:2147483647}],active_effects:[{id:"minecraft:resistance",amplifier:5,duration:2147483647,show_particles:1b},{id:"minecraft:fire_resistance",amplifier:3,duration:2147483647,show_particles:1b},{id:"minecraft:water_breathing",amplifier:3,duration:2147483647,show_particles:1b},{id:"minecraft:invisibility",amplifier:1,duration:2147483647,show_particles:1b}]}

execute positioned ~ ~ ~ store result entity @e[tag=EntityEdition,tag=ClickDetection,distance=0,limit=1] attributes[0].base double 1 run scoreboard players get @s MC_PlayerID
execute positioned ~ ~ ~ as @e[tag=EntityEdition,tag=ClickDetection,distance=0,limit=1] if data entity @s attributes[0].base store result score @s MC_CursorTemp run data get entity @s attributes[0].base

# Cursor
function mapcraft:built_in/cursor/summon

# Screen GUI
function mapcraft:built_in/cursor/gui
