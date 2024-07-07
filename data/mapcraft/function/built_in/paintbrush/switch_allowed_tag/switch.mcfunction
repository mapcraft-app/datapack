tag @s add Switch
execute if entity @s[tag=Switch] if entity @s[tag=Is_Drawing_Cursor] run function mapcraft:built_in/paintbrush/switch_allowed_tag/desactive
execute if entity @s[tag=Switch] if entity @s[tag=!Is_Drawing_Cursor] run function mapcraft:built_in/paintbrush/switch_allowed_tag/active
tag @p[distance=0] remove Switch
scoreboard players add @s MC_CursorClick 1