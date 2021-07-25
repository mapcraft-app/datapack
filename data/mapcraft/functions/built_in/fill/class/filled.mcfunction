execute at @e[tag=Fill,tag=Blocks] if score @s MC_FillID = @e[tag=Fill,tag=Blocks,distance=0,limit=1] MC_FillID run clone ~ ~1 ~ ~ ~1 ~ 0 1 0 replace force
execute if entity @s[tag=All,tag=!Air,tag=!Block] run clone 0 1 0 0 1 0 ~ ~ ~ replace force
execute if entity @s[tag=!All,tag=Air,tag=!Block] if block ~ ~ ~ #minecraft:air run clone 0 1 0 0 1 0 ~ ~ ~ replace force
execute if entity @s[tag=!All,tag=!Air,tag=Block] unless block ~ ~ ~ #minecraft:air run clone 0 1 0 0 1 0 ~ ~ ~ replace force
