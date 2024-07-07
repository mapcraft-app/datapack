tag @s[tag=!IsClick,nbt={HurtTime:10s},distance=..3] add IsClick
tag @s[tag=IsClick,nbt={HurtTime:9s},distance=..3] remove IsClick
execute if entity @s[tag=IsClick] run scoreboard players add @p[distance=0] MC_CursorClick 1
tp @s ^ ^ ^1
