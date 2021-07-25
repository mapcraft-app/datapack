summon minecraft:area_effect_cloud 0 0 0 {Duration:60,Tags:["rand"]}
execute store result score Output MC_Calc run data get entity @e[type=minecraft:area_effect_cloud,tag=rand,limit=1,x=0,y=0,z=0] UUID[0] 1
execute store result score Temp1 MC_Calc run data get entity @e[type=minecraft:area_effect_cloud,tag=rand,limit=1,x=0,y=0,z=0] UUID[1] 1
scoreboard players operation Output MC_Calc += Temp1 MC_Calc
kill @e[type=minecraft:area_effect_cloud,tag=rand,x=0,y=0,z=0,distance=..1]
