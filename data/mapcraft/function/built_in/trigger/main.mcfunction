function mapcraft-data:trigger/detect
execute unless score @s MC_LastTrigger = @s MC_Trigger run function mapcraft-data:trigger/execute
execute if score @s MC_Trigger matches 1.. run scoreboard players operation @s MC_LastTrigger = @s MC_Trigger
