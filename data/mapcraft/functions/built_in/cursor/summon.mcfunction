summon minecraft:magma_cube ~ ~ ~ {Size:1,CustomName:'{"text":"Cursor"}',CustomNameVisible:0b,Tags:["EntityEdition","Cursor","Allowed_Movement","CheckIsMove"],PersistenceRequired:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,AbsorptionAmount:2147483647f,Health:2147483647f,Attributes:[{Name:"generic.max_health",Base:2147483647}],Glowing:1b,NoAI:1b,ActiveEffects:[{Id:11b,Amplifier:0b,Duration:72000,ShowParticles:0b},{Id:12b,Amplifier:0b,Duration:72000,ShowParticles:0b},{Id:13b,Amplifier:0b,Duration:72000,ShowParticles:0b},{Id:14b,Amplifier:0b,Duration:72000,ShowParticles:0b},{Id:24b,Amplifier:0b,Duration:72000,ShowParticles:0b}]}

# Add color code for cursor
execute if score @s MC_CursorClick matches 0 run tag @e[tag=Cursor,tag=Allowed_Movement,distance=0] add One
execute if score @s MC_CursorClick matches 1 run tag @e[tag=Cursor,tag=Allowed_Movement,distance=0] add Two
execute if score @s MC_CursorClick matches 4 run tag @e[tag=Cursor,tag=Allowed_Movement,distance=0] add Copy

# Add correct tag to Cursor One
execute if score @s MC_FillBlock matches 0 run tag @e[tag=Cursor,tag=Allowed_Movement,distance=0] add DrawAll
execute if score @s MC_FillBlock matches 1 run tag @e[tag=Cursor,tag=Allowed_Movement,distance=0] add DrawAir
execute if score @s MC_FillBlock matches 2 run tag @e[tag=Cursor,tag=Allowed_Movement,distance=0] add DrawBlock

# Place Unique ID of player on Attributes[0].Base (generic.armor)
execute store result entity @e[tag=Cursor,tag=Allowed_Movement,distance=0,limit=1] Attributes[0].Base double 1 run scoreboard players get @s MC_PlayerID
execute as @e[tag=Cursor,tag=Allowed_Movement,distance=0,limit=1] if data entity @s Attributes[0].Base store result score @s MC_CursorTemp run data get entity @s Attributes[0].Base

function mapcraft:built_in/cursor/width_draw

# Specific rule for team
execute if entity @s[tag=Select] run team join MC_Blue @e[tag=Cursor,tag=One,limit=1,distance=0]
execute if entity @s[tag=Draw] run team join MC_Purple @e[tag=Cursor,tag=One,limit=1,distance=0]
execute if entity @s[tag=Trigger] run team join MC_Green @e[tag=Cursor,tag=One,limit=1,distance=0]
execute if entity @s[tag=Cutscene] run team join MC_Yellow @e[tag=Cursor,tag=One,limit=1,distance=0]

execute if entity @s[tag=Select] run team join MC_Yellow @e[tag=Cursor,tag=Two,limit=1,distance=0]
execute if entity @s[tag=Copy] run team join MC_DarkBlue @e[tag=Cursor,tag=Copy,limit=1,distance=0]

team join MC_NoClip @s
