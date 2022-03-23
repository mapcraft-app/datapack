tag @s remove Switch
tag @s add Is_Drawing_Cursor
execute at @e[tag=Cursor,tag=One] if score @e[type=magma_cube,distance=0,sort=nearest,limit=1] MC_CursorTemp = @s MC_PlayerID run scoreboard players set @e[type=magma_cube,distance=0,sort=nearest,limit=1] MC_IsMove 1
