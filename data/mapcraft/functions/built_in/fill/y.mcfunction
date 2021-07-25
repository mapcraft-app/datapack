execute if score @s MC_Fill matches 1.. unless entity @e[tag=Fill,tag=Point,tag=Z,distance=0] run function mapcraft:built_in/fill/summon/z
scoreboard players remove @s MC_Fill 1
execute as @e[tag=Fill,tag=Point,tag=Z,distance=0] at @s run function mapcraft:built_in/fill/z
execute if score @s MC_Fill matches ..0 run kill @s
execute if score @s MC_Fill matches 1.. positioned ^ ^ ^1 run function mapcraft:built_in/fill/y
