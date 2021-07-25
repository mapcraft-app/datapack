function mapcraft:built_in/gui/menu/home
# General options
tellraw @s ["",{"translate":"MC.gui.option","underlined":true},{"text":"\n"},{"translate":"MC.gui.option.cursor"},{"text":" "},{"translate":"MC.gui.option.cursor.5","color":"#E3A21A","clickEvent":{"action":"run_command","value":"/scoreboard players set @s MC_CursorDist 0"}},{"text":" "},{"translate":"MC.gui.option.cursor.10","color":"#E3A21A","clickEvent":{"action":"run_command","value":"/scoreboard players set @s MC_CursorDist 1"}},{"text":" "},{"translate":"MC.gui.option.cursor.15","color":"#E3A21A","clickEvent":{"action":"run_command","value":"/scoreboard players set @s MC_CursorDist 2"}},{"text":" "},{"translate":"MC.gui.option.cursor.on_surface","color":"#E3A21A","clickEvent":{"action":"run_command","value":"/scoreboard players set @s MC_CursorDist 3"}},{"text":"\n"},{"translate":"MC.gui.option.fill"},{"text":" "},{"translate":"MC.gui.option.fill.everything","color":"#25CF90","clickEvent":{"action":"run_command","value":"/scoreboard players set @s MC_FillBlock 0"}},{"text":" "},{"translate":"MC.gui.option.fill.just_air","color":"#25CF90","clickEvent":{"action":"run_command","value":"/scoreboard players set @s MC_FillBlock 1"}},{"text":" "},{"translate":"MC.gui.option.fill.just_block","color":"#25CF90","clickEvent":{"action":"run_command","value":"/scoreboard players set @s MC_FillBlock 2"}}]
