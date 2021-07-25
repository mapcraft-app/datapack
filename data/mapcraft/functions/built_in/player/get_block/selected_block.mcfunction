execute unless entity @e[tag=Fill,tag=Blocks,sort=nearest,distance=0] run summon armor_stand ~ ~ ~ {CustomName:'{"text":"Selected_block"}',CustomNameVisible:1b,Tags:["Fill","Blocks"],Small:1b,NoBasePlate:1b,PersistenceRequired:1b,NoGravity:1b,Silent:1b,Invulnerable:1b,Attributes:[{Name:"generic.armor_toughness",Base:1}]}
execute store result entity @e[tag=Fill,tag=Blocks,distance=0,limit=1] Attributes[0].Base double 1 run scoreboard players get @s MC_PlayerID
execute as @e[tag=Fill,tag=Blocks,distance=0,limit=1] if data entity @s Attributes[0].Base store result score @s MC_FillID run data get entity @s Attributes[0].Base
# Reset last entity
execute as @e[tag=Fill,tag=Blocks,distance=1..] if score @s MC_FillID = @e[tag=Fill,tag=Blocks,distance=0,limit=1] MC_FillID run function mapcraft:built_in/player/get_block/reset_entity
