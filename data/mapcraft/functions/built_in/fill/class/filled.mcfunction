execute if entity @s[tag=All,tag=!Air,tag=!Block] run clone 0 -64 0 0 -64 0 ~ ~ ~ replace force
execute if entity @s[tag=!All,tag=Air,tag=!Block] if block ~ ~ ~ #minecraft:air run clone 0 -64 0 0 -64 0 ~ ~ ~ replace force
execute if entity @s[tag=!All,tag=!Air,tag=Block] unless block ~ ~ ~ #minecraft:air run clone 0 -64 0 0 -64 0 ~ ~ ~ replace force
