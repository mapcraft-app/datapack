# If stick = 1 and tag = Cutscene
	execute unless entity @s[tag=MC_Edit] if items entity @s weapon.mainhand *[custom_data~{type:cursor}] run function mapcraft:built_in/cursor/cutscene_mode
# If stick = 0 and tag = Cutscene
	execute if entity @s[tag=MC_Edit] unless items entity @s weapon.mainhand *[custom_data~{type:cursor}] run tag @s remove MC_Edit
