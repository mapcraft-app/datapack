function mapcraft:built_in/gui/menu/trigger
tellraw @s [{"text":"\n"},{"translate":"MC.gui.trigger.create"},{"text":" "},{"translate":"MC.gui.selection.Start","color":"#25CF90","clickEvent":{"action":"run_command","value":"/function mapcraft:built_in/trigger/create"}}]
