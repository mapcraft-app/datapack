execute if entity @s[tag=DrawAir,tag=!DrawAll,tag=!DrawBlock] run function mapcraft:built_in/paintbrush/brush/1/air
execute if entity @s[tag=!DrawAir,tag=DrawAll,tag=!DrawBlock] run function mapcraft:built_in/paintbrush/brush/1/all
execute if entity @s[tag=!DrawAir,tag=!DrawAll,tag=DrawBlock] run function mapcraft:built_in/paintbrush/brush/1/block
