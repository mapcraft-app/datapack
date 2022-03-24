# If stick = 1 and Cursor = 0
	execute unless entity @s[tag=MC_Edit] if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_sword",Count:1b,tag:{type:cursor}}}] run function mapcraft:built_in/cursor/create_cursor
# If stick = 1 and Cursor = 1
	execute if entity @s[tag=MC_Edit] if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_sword",Count:1b,tag:{type:cursor}}}] run function mapcraft:built_in/cursor/is_selected_cursor
# If stick = 0 and Cursor = 1
	execute if entity @s[tag=MC_Edit] unless entity @e[nbt={SelectedItem:{id:"minecraft:diamond_sword",Count:1b,tag:{type:cursor}}}] run function mapcraft:built_in/cursor/not_selected_cursor
