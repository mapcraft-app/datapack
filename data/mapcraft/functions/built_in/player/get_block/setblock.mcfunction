execute align xyz positioned ~0.5 0 ~0.5 run function mapcraft:built_in/player/get_block/selected_block
execute at @e[tag=Fill,tag=Blocks,limit=1] if score @e[tag=Fill,tag=Blocks,distance=0,limit=1] MC_FillID = @s MC_PlayerID positioned ~ ~3 ~ run function mapcraft:built_in/player/get_block/slot7b
execute at @e[tag=Fill,tag=Blocks,limit=1] if score @e[tag=Fill,tag=Blocks,distance=0,limit=1] MC_FillID = @s MC_PlayerID positioned ~ ~1 ~ run function mapcraft:built_in/player/get_block/slot8b
