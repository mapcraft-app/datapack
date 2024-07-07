# Set value if not exist
execute unless score @s MC_BrushType = @s MC_BrushType run scoreboard players set @s MC_BrushType 0
execute unless score @s MC_BrushWidth = @s MC_BrushWidth run scoreboard players set @s MC_BrushWidth 1

# Screen if drawing
execute if score @s MC_CursorClick matches ..0 run title @s actionbar ["",{"translate":"MC.tool.cursor.paintbrush","color":"dark_purple"},{"text":" OFF","color":"dark_red"}]
execute if score @s MC_CursorClick matches 1.. run title @s actionbar ["",{"translate":"MC.tool.cursor.paintbrush","color":"dark_purple"},{"text":" ON","color":"green"}]

# Define tag for draw
execute if score @s MC_CursorClick matches 1 run function mapcraft:built_in/paintbrush/switch_allowed_tag/switch
execute if score @s MC_CursorClick matches 3 run function mapcraft:built_in/paintbrush/switch_allowed_tag/switch
execute if score @s MC_CursorClick matches 3.. run scoreboard players set @s MC_CursorClick 0

# Sphere=0;Cube=1;Diamond=2
execute if score @s[tag=Is_Drawing_Cursor] MC_BrushType matches 0 run function mapcraft:built_in/paintbrush/brush/sphere/main
execute if score @s[tag=Is_Drawing_Cursor] MC_BrushType matches 1 run function mapcraft:built_in/paintbrush/brush/cube/main
execute if score @s[tag=Is_Drawing_Cursor] MC_BrushType matches 2 run function mapcraft:built_in/paintbrush/brush/diamond/main
