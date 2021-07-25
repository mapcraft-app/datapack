# Align width of cursor if drawing
execute as @e[tag=Cursor,tag=Allowed_Movement] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID if score @p[distance=0,tag=Draw] MC_BrushWidth matches 2 align xyz run execute positioned as @s run tp @s ~0.5 ~-1 ~0.5
execute as @e[tag=Cursor,tag=Allowed_Movement] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID if score @p[distance=0,tag=Draw] MC_BrushWidth matches 3 align xyz run execute positioned as @s run tp @s ~0.5 ~-2 ~0.5
execute as @e[tag=Cursor,tag=Allowed_Movement] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID if score @p[distance=0,tag=Draw] MC_BrushWidth matches 4 align xyz run execute positioned as @s run tp @s ~0.5 ~-3 ~0.5
execute as @e[tag=Cursor,tag=Allowed_Movement] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID if score @p[distance=0,tag=Draw] MC_BrushWidth matches 5.. align xyz run execute positioned as @s run tp @s ~0.5 ~-4 ~0.5
