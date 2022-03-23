execute if entity @s[tag=DrawAir,tag=!DrawAll,tag=!DrawBlock] run function mapcraft:built_in/paintbrush/brush/diamond/3/air
execute if entity @s[tag=!DrawAir,tag=DrawAll,tag=!DrawBlock] run function mapcraft:built_in/paintbrush/brush/diamond/3/all
execute if entity @s[tag=!DrawAir,tag=!DrawAll,tag=DrawBlock] run function mapcraft:built_in/paintbrush/brush/diamond/3/block
