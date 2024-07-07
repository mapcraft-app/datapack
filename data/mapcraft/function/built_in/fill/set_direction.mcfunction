execute if score @s MC_CursorX1 < @s MC_CursorX2 run scoreboard players set @s MC_DirectionX 1
execute if score @s MC_CursorX1 = @s MC_CursorX2 run scoreboard players set @s MC_DirectionX -2
execute if score @s MC_CursorX1 > @s MC_CursorX2 run scoreboard players set @s MC_DirectionX -1

execute if score @s MC_CursorY1 < @s MC_CursorY2 run scoreboard players set @s MC_DirectionY 1
execute if score @s MC_CursorY1 = @s MC_CursorY2 run scoreboard players set @s MC_DirectionY -2
execute if score @s MC_CursorY1 > @s MC_CursorY2 run scoreboard players set @s MC_DirectionY -1

execute if score @s MC_CursorZ1 < @s MC_CursorZ2 run scoreboard players set @s MC_DirectionZ -1
execute if score @s MC_CursorZ1 = @s MC_CursorZ2 run scoreboard players set @s MC_DirectionZ -2
execute if score @s MC_CursorZ1 > @s MC_CursorZ2 run scoreboard players set @s MC_DirectionZ 1
