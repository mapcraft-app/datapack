execute if entity @s[tag=DrawAir,tag=!DrawAll,tag=!DrawBlock] run function mapcraft:built_in/paintbrush/brush/diamond/9/air
execute if entity @s[tag=!DrawAir,tag=DrawAll,tag=!DrawBlock] run function mapcraft:built_in/paintbrush/brush/diamond/9/all
execute if entity @s[tag=!DrawAir,tag=!DrawAll,tag=DrawBlock] run function mapcraft:built_in/paintbrush/brush/diamond/9/block
