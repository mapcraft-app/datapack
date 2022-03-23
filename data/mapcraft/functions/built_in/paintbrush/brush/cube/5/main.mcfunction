execute if entity @s[tag=DrawAir,tag=!DrawAll,tag=!DrawBlock] run function mapcraft:built_in/paintbrush/brush/cube/5/air
execute if entity @s[tag=!DrawAir,tag=DrawAll,tag=!DrawBlock] run function mapcraft:built_in/paintbrush/brush/cube/5/all
execute if entity @s[tag=!DrawAir,tag=!DrawAll,tag=DrawBlock] run function mapcraft:built_in/paintbrush/brush/cube/5/block
