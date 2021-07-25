execute positioned ~ ~ ~ unless entity @e[tag=Fill,tag=Point,tag=Y,sort=nearest,distance=0] run function mapcraft:built_in/fill/summon/y
scoreboard players remove @s MC_Fill 1
execute as @e[tag=Fill,tag=Point,tag=Y,distance=0] at @s run function mapcraft:built_in/fill/y
execute if score @s MC_Fill matches ..0 run kill @s
execute if score @s MC_Fill matches 1.. positioned ^ ^ ^1 run function mapcraft:built_in/fill/x
