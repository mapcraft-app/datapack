tag @p[distance=0] add Switch
execute if entity @p[distance=0,tag=Switch] if entity @s[tag=Allowed_Movement] run function mapcraft:built_in/cursor/switch_allowed_tag/desactive
execute if entity @p[distance=0,tag=Switch] if entity @s[tag=!Allowed_Movement] run function mapcraft:built_in/cursor/switch_allowed_tag/active
tag @p[distance=0] remove Switch