function mapcraft:built_in/gui/menu/selection
tellraw @s [{"translate":"MC.gui.selection.fill"},{"text":" "},{"translate":"MC.gui.selection.Start","color":"#25CF90","clickEvent":{"action":"run_command","value":"/function mapcraft:built_in/gui/tab/selection/launch/fill"}},{"text":"    "},{"translate":"MC.gui.selection.replace"},{"text":" "},{"translate":"MC.gui.selection.Start","color":"#25CF90","clickEvent":{"action":"run_command","value":"/function mapcraft:built_in/gui/tab/selection/launch/replace"}},{"text":"    "},{"translate":"MC.gui.selection.shape"},{"text":" "},{"translate":"MC.gui.selection.Start","color":"#25CF90","clickEvent":{"action":"run_command","value":"/function mapcraft:built_in/gui/tab/selection/launch/shape"}},{"text":"\n"},{"translate":"MC.gui.selection.copy"},{"text":" "},{"translate":"MC.gui.selection.copy.Copy","color":"#25CF90","clickEvent":{"action":"run_command","value":"/function mapcraft:built_in/gui/tab/selection/launch/copy"}},{"text":" "},{"translate":"MC.gui.selection.copy.Paste","color":"#FF6B69","clickEvent":{"action":"run_command","value":"/function mapcraft:built_in/gui/tab/selection/launch/paste"}},{"text":" "},{"translate":"MC.gui.selection.copy.Cut","color":"#E3A21A","clickEvent":{"action":"run_command","value":"/function mapcraft:built_in/gui/tab/selection/launch/cut"}},{"text":"    "},{"translate":"MC.gui.selection.delete_entity"},{"text":" "},{"translate":"MC.gui.selection.Start","color":"#25CF90","clickEvent":{"action":"run_command","value":"/function mapcraft:built_in/gui/tab/selection/launch/delete"}},{"text":"\n"},{"text":"  "},{"translate":"MC.gui.selection.copy.Rotation"},{"text":" "},{"translate":"MC.gui.selection.copy.+90","color":"#2ECC71","clickEvent":{"action":"run_command","value":"/function mapcraft:built_in/copy/angle/calc/add_90degree"}},{"text":" "},{"translate":"MC.gui.selection.copy.-90","color":"#3498DB","clickEvent":{"action":"run_command","value":"/function mapcraft:built_in/copy/angle/calc/rem_90degree"}},{"text":"\n"},{"translate":"MC.gui.option","underlined":true},{"text":"\n"},{"translate":"MC.gui.selection.option.shape"},{"text":" "},{"translate":"MC.gui.selection.option.shape.Curb","color":"#1EBBD7","clickEvent":{"action":"run_command","value":"/scoreboard players set @s MC_FillShape 0"}},{"text":" "},{"translate":"MC.gui.selection.option.shape.Wall","color":"#1EBBD7","clickEvent":{"action":"run_command","value":"/scoreboard players set @s MC_FillShape 1"}},{"text":" "},{"translate":"MC.gui.selection.option.Wire","color":"#1EBBD7","clickEvent":{"action":"run_command","value":"/scoreboard players set @s MC_FillShape 2"}}]
