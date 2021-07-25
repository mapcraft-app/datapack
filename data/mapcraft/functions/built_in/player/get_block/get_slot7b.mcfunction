execute at @e[tag=Fill,tag=Blocks] if score @s MC_FillID = @e[tag=Fill,tag=Blocks,distance=0,limit=1] MC_FillID run clone ~ ~3 ~ ~ ~3 ~ 0 3 0 replace force
clone 0 3 0 0 3 0 ~ ~ ~ replace force
