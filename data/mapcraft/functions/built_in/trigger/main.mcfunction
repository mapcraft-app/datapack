function mapcraft:built_in/trigger/zone/detect
execute unless score @s MC_LastTrigger = @s MC_Trigger run function mapcraft:built_in/trigger/zone/execute
