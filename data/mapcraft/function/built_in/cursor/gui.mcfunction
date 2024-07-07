execute if entity @s[tag=!Select,tag=!Draw,tag=!Trigger,tag=!Cutscene] run function mapcraft:built_in/gui/tab/home/main
execute if entity @s[tag=Select,tag=!Draw,tag=!Trigger,tag=!Cutscene] run function mapcraft:built_in/gui/tab/selection/main
execute if entity @s[tag=!Select,tag=Draw,tag=!Trigger,tag=!Cutscene] run function mapcraft:built_in/gui/tab/paintbrush/main
execute if entity @s[tag=Select,tag=!Draw,tag=Trigger,tag=!Cutscene] run function mapcraft:built_in/gui/tab/trigger/main
execute if entity @s[tag=Select,tag=!Draw,tag=!Trigger,tag=Cutscene] run function mapcraft:built_in/gui/tab/cutscene/main
