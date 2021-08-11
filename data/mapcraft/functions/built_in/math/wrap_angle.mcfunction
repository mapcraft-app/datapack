execute if score Input MC_Calc matches ..-181 run scoreboard players add Input MC_Calc 360
execute if score Input MC_Calc matches 181.. run scoreboard players remove Input MC_Calc 360
execute unless score Input MC_Calc matches -180..180 run function mapcraft:built_in/math/wrap_angle
execute if score Input MC_Calc matches -180..180 run scoreboard players operation Output MC_Calc = Input MC_Calc
