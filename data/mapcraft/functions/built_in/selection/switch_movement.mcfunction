# If movement autorized, tag AllowedChangeAngle add to entity, and tag Is_Moving_Cursor to player
execute as @e[tag=EntityEdition,tag=AllowedChangeAngle] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID run function mapcraft:built_in/cursor/switch_allowed_tag/switch
function mapcraft:built_in/selection/angle/calc_volume
scoreboard players add @s MC_CursorClick 1