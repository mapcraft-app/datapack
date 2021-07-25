execute as @e[tag=Cursor,tag=Allowed_Movement] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID run execute positioned ~ ~1 ~ anchored eyes run tp @s ^ ^ ^10
function mapcraft:built_in/cursor/tp/align_draw
