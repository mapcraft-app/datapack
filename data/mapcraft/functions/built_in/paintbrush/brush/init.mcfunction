# Execute structure block
    execute if score @p[distance=0] MC_BrushWidth matches 2 run execute as @e[tag=Cursor,tag=One] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID at @s run setblock ~ ~ ~ minecraft:redstone_block
    execute if score @p[distance=0] MC_BrushWidth matches 3 run execute as @e[tag=Cursor,tag=One] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID at @s run setblock ~ ~1 ~ minecraft:redstone_block
    execute if score @p[distance=0] MC_BrushWidth matches 4 run execute as @e[tag=Cursor,tag=One] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID at @s run setblock ~ ~2 ~ minecraft:redstone_block
    execute if score @p[distance=0] MC_BrushWidth matches 5.. run execute as @e[tag=Cursor,tag=One] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID at @s run setblock ~ ~3 ~ minecraft:redstone_block
