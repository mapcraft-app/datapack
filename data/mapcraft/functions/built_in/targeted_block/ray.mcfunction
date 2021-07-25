execute positioned ^ ^ ^1 unless block ~ ~ ~ #minecraft:air run execute align xyz positioned ~0.5 ~0.5 ~0.5 run function mapcraft:built_in/targeted_block/get_coordinates
execute positioned ^ ^ ^1 if block ~ ~ ~ #minecraft:air run function mapcraft:built_in/targeted_block/ray
