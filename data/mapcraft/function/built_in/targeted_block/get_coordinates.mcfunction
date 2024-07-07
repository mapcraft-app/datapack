execute unless entity @e[distance=0,limit=1,type=minecraft:armor_stand] run summon minecraft:armor_stand ~ ~ ~ {NoGravity:1b,Silent:1b,Invulnerable:1b,ShowArms:0b,Small:1b,Invisible:1b,NoBasePlate:1b,Tags:["TargetedBlock"]}
execute positioned ~ ~ ~ store result score @s MC_PlayerTargetX run data get entity @e[distance=0,limit=1,type=minecraft:armor_stand] Pos[0]
execute positioned ~ ~ ~ store result score @s MC_PlayerTargetY run data get entity @e[distance=0,limit=1,type=minecraft:armor_stand] Pos[1]
execute positioned ~ ~ ~ store result score @s MC_PlayerTargetZ run data get entity @e[distance=0,limit=1,type=minecraft:armor_stand] Pos[2]
kill @e[type=minecraft:armor_stand,distance=0]
