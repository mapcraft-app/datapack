execute as @e[tag=Cursor,tag=Two,tag=Allowed_Movement] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID run function mapcraft:built_in/cursor/switch_allowed_tag/switch
scoreboard players add @s MC_CursorClick 1
