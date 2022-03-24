# Initialize
bossbar set mapcraft:progress players @s
bossbar set mapcraft:progress visible true
tag @s add MC_Edit
execute unless score @s MC_BrushWidth = @s MC_BrushWidth run scoreboard players set @s MC_BrushWidth 1
execute unless score @s MC_CursorDist = @s MC_CursorDist run scoreboard players set @s MC_CursorDist 0
scoreboard players set @s MC_CursorClick 0

# Summon Click Detection(villager) + Cursor(magma_cube)
# Click Detection
summon minecraft:villager ~ ~ ~ {CustomName:'{"text":"ClickDetection"}',CustomNameVisible:0b,Tags:["EntityEdition","ClickDetection"],PersistenceRequired:1b,NoGravity:1b,NoAI:1b,Silent:1b,Invulnerable:1b,AbsorptionAmount:2147483647,Health:2147483647f,Attributes:[{Name:"generic.max_health",Base:2147483647}],ActiveEffects:[{Id:11b,Amplifier:0b,Duration:72000,ShowParticles:0b},{Id:12b,Amplifier:0b,Duration:72000,ShowParticles:0b},{Id:13b,Amplifier:0b,Duration:72000,ShowParticles:0b},{Id:14b,Amplifier:0b,Duration:72000,ShowParticles:0b}]}
execute positioned ~ ~ ~ store result entity @e[tag=EntityEdition,tag=ClickDetection,distance=0,limit=1] Attributes[0].Base double 1 run scoreboard players get @s MC_PlayerID
execute positioned ~ ~ ~ as @e[tag=EntityEdition,tag=ClickDetection,distance=0,limit=1] if data entity @s Attributes[0].Base store result score @s MC_CursorTemp run data get entity @s Attributes[0].Base

# Cursor
function mapcraft:built_in/cursor/summon

# Screen GUI
function mapcraft:built_in/cursor/gui
