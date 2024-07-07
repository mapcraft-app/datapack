scoreboard players set @s MC_FillBlock 2
execute as @e[tag=Cursor,tag=One] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID at @s run tag @s remove DrawAll
execute as @e[tag=Cursor,tag=One] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID at @s run tag @s remove DrawAir
execute as @e[tag=Cursor,tag=One] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID at @s run tag @s add DrawBlock
