function mapcraft-data:trigger/detect
execute unless score @s MC_LastTrigger = @s MC_Trigger run function mapcraft-data:trigger/execute
