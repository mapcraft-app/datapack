function mapcraft:built_in/targeted_block/main
execute as @e[tag=Cursor,tag=Allowed_Movement] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID store result entity @s Pos[0] double 1 run scoreboard players get @p[distance=0] MC_PlayerTargetX
execute as @e[tag=Cursor,tag=Allowed_Movement] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID store result entity @s Pos[1] double 1 run scoreboard players get @p[distance=0] MC_PlayerTargetY
execute as @e[tag=Cursor,tag=Allowed_Movement] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID store result entity @s Pos[2] double 1 run scoreboard players get @p[distance=0] MC_PlayerTargetZ
function mapcraft:built_in/cursor/tp/align_draw
