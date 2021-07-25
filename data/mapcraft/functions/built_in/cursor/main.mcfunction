# If stick = 1 and Cursor = 0
    execute if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_sword",Count:1b,tag:{type:cursor}}}] unless entity @e[tag=ClickDetection,distance=..3] run function mapcraft:built_in/cursor/create_cursor
# If stick = 1 and Cursor = 1
    execute if entity @s[tag=MC_Edit,nbt={SelectedItem:{id:"minecraft:diamond_sword",Count:1b,tag:{type:cursor}}}] if entity @e[tag=ClickDetection,distance=..3] anchored eyes run function mapcraft:built_in/cursor/is_selected_cursor
# If stick = 0 and Cursor = 1
    execute unless entity @e[tag=MC_Edit,nbt={SelectedItem:{id:"minecraft:diamond_sword",Count:1b,tag:{type:cursor}}}] if entity @e[tag=ClickDetection,distance=..3] run function mapcraft:built_in/cursor/not_selected_cursor
