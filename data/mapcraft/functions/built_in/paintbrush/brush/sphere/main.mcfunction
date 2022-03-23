execute at @e[tag=Cursor,tag=One] if score @e[type=magma_cube,distance=0,sort=nearest,limit=1] MC_CursorTemp = @s MC_PlayerID if score @e[type=magma_cube,distance=0,sort=nearest,limit=1] MC_IsMove matches 1 positioned ~ -63 ~ run function mapcraft:built_in/player/get_block/slot7b
execute at @e[tag=Cursor,tag=One] if score @e[type=magma_cube,distance=0,sort=nearest,limit=1] MC_CursorTemp = @s MC_PlayerID if score @e[type=magma_cube,distance=0,sort=nearest,limit=1] MC_IsMove matches 1 positioned ~ -64 ~ run function mapcraft:built_in/player/get_block/slot8b

execute if score @s MC_BrushWidth matches 1 as @e[tag=Cursor,tag=One] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID if score @s MC_IsMove matches 1 at @s positioned ~ ~ ~ run function mapcraft:built_in/paintbrush/brush/1/main
execute if score @s MC_BrushWidth matches 3 as @e[tag=Cursor,tag=One] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID if score @s MC_IsMove matches 1 at @s positioned ~ ~1 ~ run function mapcraft:built_in/paintbrush/brush/sphere/3/main
execute if score @s MC_BrushWidth matches 5 as @e[tag=Cursor,tag=One] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID if score @s MC_IsMove matches 1 at @s positioned ~ ~2 ~ run function mapcraft:built_in/paintbrush/brush/sphere/5/main
execute if score @s MC_BrushWidth matches 7 as @e[tag=Cursor,tag=One] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID if score @s MC_IsMove matches 1 at @s positioned ~ ~3 ~ run function mapcraft:built_in/paintbrush/brush/sphere/7/main
execute if score @s MC_BrushWidth matches 9 as @e[tag=Cursor,tag=One] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID if score @s MC_IsMove matches 1 at @s positioned ~ ~4 ~ run function mapcraft:built_in/paintbrush/brush/sphere/9/main
execute if score @s MC_BrushWidth matches 11 as @e[tag=Cursor,tag=One] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID if score @s MC_IsMove matches 1 at @s positioned ~ ~5 ~ run function mapcraft:built_in/paintbrush/brush/sphere/11/main

execute at @e[tag=Cursor,tag=One] if score @e[type=magma_cube,distance=0,sort=nearest,limit=1] MC_CursorTemp = @s MC_PlayerID positioned ~ -63 ~ run setblock ~ ~ ~ bedrock
execute at @e[tag=Cursor,tag=One] if score @e[type=magma_cube,distance=0,sort=nearest,limit=1] MC_CursorTemp = @s MC_PlayerID positioned ~ -64 ~ run setblock ~ ~ ~ bedrock
