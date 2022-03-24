# Print block
execute positioned ~ ~ ~ if entity @s[tag=Filled,tag=!Replaced,tag=!Shaped,tag=!Copied,tag=!DeleteEntity] run function mapcraft:built_in/fill/class/filled
execute positioned ~ ~ ~ if entity @s[tag=!Filled,tag=Replaced,tag=!Shaped,tag=!Copied,tag=!DeleteEntity] run function mapcraft:built_in/fill/class/replaced
execute positioned ~ ~ ~ if entity @s[tag=!Filled,tag=!Replaced,tag=Shaped,tag=!Copied,tag=!DeleteEntity] run function mapcraft:built_in/fill/class/shaped
execute positioned ~ ~ ~ if entity @s[tag=!Filled,tag=!Replaced,tag=!Shaped,tag=Copied,tag=!DeleteEntity] run function mapcraft:built_in/fill/class/copied
execute positioned ~ ~ ~ if entity @s[tag=!Filled,tag=!Replaced,tag=!Shaped,tag=!Copied,tag=DeleteEntity] run function mapcraft:built_in/fill/class/deleted_entity
# Update scoreboard
execute at @e[type=minecraft:player,tag=Fill] if score @p[distance=0] MC_PlayerID = @s MC_FillID run scoreboard players add @p[distance=0] MC_Progress 1
execute at @e[type=minecraft:player,tag=Fill] if score @p[distance=0] MC_PlayerID = @s MC_FillID store result bossbar mapcraft:progress value run scoreboard players get @p[distance=0] MC_Progress
scoreboard players remove @s MC_Fill 1
execute if score @s MC_Fill matches 1.. positioned ^ ^ ^1 run function mapcraft:built_in/fill/z
execute if score @s MC_Fill matches ..0 run kill @s
