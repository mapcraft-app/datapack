# If stick = 1 and tag = Cutscene
    execute unless entity @s[tag=MC_Edit] if entity @s[nbt={SelectedItem:{id:"minecraft:diamond_sword",Count:1b,tag:{type:cursor}}}] run function mapcraft:built_in/cursor/cutscene_mode
# If stick = 0 and tag = Cutscene
    execute if entity @s[tag=MC_Edit] unless entity @e[nbt={SelectedItem:{id:"minecraft:diamond_sword",Count:1b,tag:{type:cursor}}}] run tag @s remove MC_Edit
