# Align width of cursor if drawing
execute as @e[tag=Cursor,tag=Allowed_Movement] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID if score @p[distance=0,tag=Draw] MC_BrushWidth matches 3 align xyz run execute positioned as @s run tp @s ~ ~-2 ~
execute as @e[tag=Cursor,tag=Allowed_Movement] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID if score @p[distance=0,tag=Draw] MC_BrushWidth matches 5 align xyz run execute positioned as @s run tp @s ~ ~-4 ~
execute as @e[tag=Cursor,tag=Allowed_Movement] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID if score @p[distance=0,tag=Draw] MC_BrushWidth matches 7 align xyz run execute positioned as @s run tp @s ~ ~-7 ~
execute as @e[tag=Cursor,tag=Allowed_Movement] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID if score @p[distance=0,tag=Draw] MC_BrushWidth matches 9 align xyz run execute positioned as @s run tp @s ~ ~-9 ~
execute as @e[tag=Cursor,tag=Allowed_Movement] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID if score @p[distance=0,tag=Draw] MC_BrushWidth matches 11 align xyz run execute positioned as @s run tp @s ~ ~-11 ~
