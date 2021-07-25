execute at @e[tag=Fill,tag=Blocks] if score @s MC_FillID = @e[tag=Fill,tag=Blocks,distance=0,limit=1] MC_FillID run clone ~ ~1 ~ ~ ~1 ~ 0 1 0 replace force
execute at @e[tag=Fill,tag=Blocks] if score @s MC_FillID = @e[tag=Fill,tag=Blocks,distance=0,limit=1] MC_FillID run clone ~ ~3 ~ ~ ~3 ~ 0 3 0 replace force
execute if entity @s[tag=All,tag=!Air,tag=!Block] if blocks 0 3 0 0 3 0 ~ ~ ~ all run clone 0 1 0 0 1 0 ~ ~ ~ replace force
execute if entity @s[tag=!All,tag=Air,tag=!Block] if blocks 0 3 0 0 3 0 ~ ~ ~ all if block ~ ~ ~ #minecraft:air run clone 0 1 0 0 1 0 ~ ~ ~ replace force
execute if entity @s[tag=!All,tag=!Air,tag=Block] if blocks 0 3 0 0 3 0 ~ ~ ~ all unless block ~ ~ ~ #minecraft:air run clone 0 1 0 0 1 0 ~ ~ ~ replace force
