execute if entity @s[tag=DrawAir,tag=!DrawAll,tag=!DrawBlock] run function mapcraft:built_in/paintbrush/brush/diamond/11/air
execute if entity @s[tag=!DrawAir,tag=DrawAll,tag=!DrawBlock] run function mapcraft:built_in/paintbrush/brush/diamond/11/all
execute if entity @s[tag=!DrawAir,tag=!DrawAll,tag=DrawBlock] run function mapcraft:built_in/paintbrush/brush/diamond/11/block
