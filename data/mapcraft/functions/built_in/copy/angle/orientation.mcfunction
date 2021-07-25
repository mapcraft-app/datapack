#              X
#            {1;-2}
#    {1;1}     |     {1;-1}
#            0 | 90
# {-2;1} -----------> {-2;-1} Z
#          270 | 180
#   {-1;1}     |     {-1;-1}
#           {-1;-2}

function mapcraft:built_in/fill/set_direction
execute if score @s MC_DirectionX matches -2 if score @s MC_DirectionZ matches 1 run scoreboard players set @s MC_CopySTAngle 0
execute if score @s MC_DirectionX matches 1 if score @s MC_DirectionZ matches 1 run scoreboard players set @s MC_CopySTAngle 0
execute if score @s MC_DirectionX matches 1 if score @s MC_DirectionZ matches -2 run scoreboard players set @s MC_CopySTAngle 90
execute if score @s MC_DirectionX matches 1 if score @s MC_DirectionZ matches -1 run scoreboard players set @s MC_CopySTAngle 90
execute if score @s MC_DirectionX matches -2 if score @s MC_DirectionZ matches -1 run scoreboard players set @s MC_CopySTAngle 180
execute if score @s MC_DirectionX matches -1 if score @s MC_DirectionZ matches -1 run scoreboard players set @s MC_CopySTAngle 180
execute if score @s MC_DirectionX matches -1 if score @s MC_DirectionZ matches -2 run scoreboard players set @s MC_CopySTAngle 270
execute if score @s MC_DirectionX matches -1 if score @s MC_DirectionZ matches 1 run scoreboard players set @s MC_CopySTAngle 270

# Orient direction arrow
#execute if score @s MC_CopySTAngle matches 270 as @e[name=Direction] at @s run data merge entity @s {Rotation:[0.0F,0F]}
#execute if score @s MC_CopySTAngle matches 0 as @e[name=Direction] at @s run data merge entity @s {Rotation:[90.0F,0F]}
#execute if score @s MC_CopySTAngle matches 90 as @e[name=Direction] at @s run data merge entity @s {Rotation:[180.0F,0F]}
#execute if score @s MC_CopySTAngle matches 180 as @e[name=Direction] at @s run data merge entity @s {Rotation:[270.0F,0F]}
