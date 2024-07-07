# Modify cursor width if in Draw mode
execute if entity @s[tag=Draw] if score @s MC_BrushWidth matches ..1 run execute as @e[tag=Cursor,tag=Allowed_Movement] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID run data merge entity @s {Size:1}

execute if entity @s[tag=Draw] if score @s MC_BrushWidth matches 3 run execute as @e[tag=Cursor,tag=Allowed_Movement] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID run data merge entity @s {Size:5}

execute if entity @s[tag=Draw] if score @s MC_BrushWidth matches 5 run execute as @e[tag=Cursor,tag=Allowed_Movement] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID run data merge entity @s {Size:9}

execute if entity @s[tag=Draw] if score @s MC_BrushWidth matches 7 run execute as @e[tag=Cursor,tag=Allowed_Movement] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID run data merge entity @s {Size:13}

execute if entity @s[tag=Draw] if score @s MC_BrushWidth matches 9 run execute as @e[tag=Cursor,tag=Allowed_Movement] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID run data merge entity @s {Size:17}

execute if entity @s[tag=Draw] if score @s MC_BrushWidth matches 11.. run execute as @e[tag=Cursor,tag=Allowed_Movement] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID run data merge entity @s {Size:21}
