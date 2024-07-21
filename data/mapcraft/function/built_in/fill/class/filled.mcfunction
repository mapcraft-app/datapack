execute if entity @s[tag=All,tag=!Air,tag=!Block] run clone 0 -64 0 0 -64 0 ~ ~ ~ replace force
execute if entity @s[tag=!All,tag=Air,tag=!Block] if block ~ ~ ~ #mapcraft:air run clone 0 -64 0 0 -64 0 ~ ~ ~ replace force
execute if entity @s[tag=!All,tag=!Air,tag=Block] unless block ~ ~ ~ #mapcraft:air run clone 0 -64 0 0 -64 0 ~ ~ ~ replace force
