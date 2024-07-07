execute store result score @s MC_PlayerX run data get entity @s Pos[0]
execute store result score @s MC_PlayerY run data get entity @s Pos[1]
execute store result score @s MC_PlayerZ run data get entity @s Pos[2]
execute store result score @s MC_PlayerRx run data get entity @s Rotation[0]
execute if score @s MC_PlayerRx matches ..0 run scoreboard players operation @s MC_PlayerRx += 360 MC_Calc 
execute store result score @s MC_PlayerRy run data get entity @s Rotation[1]
execute unless score @s MC_Cutscene = @s MC_Cutscene run scoreboard players set @s MC_Cutscene 0
execute unless score @s MC_Trigger = @s MC_Trigger run scoreboard players set @s MC_Trigger 0
