# Bamboo
execute if entity @s[tag=All] if block ~ ~ ~ #mapcraft:bamboo run clone 0 -64 0 0 -64 0 ~ ~ ~ replace force

# Other
execute if entity @s[tag=All,tag=!Air,tag=!Block] if blocks 0 -63 0 0 -63 0 ~ ~ ~ all run clone 0 -64 0 0 -64 0 ~ ~ ~ replace force
execute if entity @s[tag=!All,tag=Air,tag=!Block] if blocks 0 -63 0 0 -63 0 ~ ~ ~ all if block ~ ~ ~ #mapcraft:air run clone 0 -64 0 0 -64 0 ~ ~ ~ replace force
execute if entity @s[tag=!All,tag=!Air,tag=Block] if blocks 0 -63 0 0 -63 0 ~ ~ ~ all unless block ~ ~ ~ #mapcraft:air run clone 0 -64 0 0 -64 0 ~ ~ ~ replace force
