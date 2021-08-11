scoreboard players operation Input2 MC_Calc = Input MC_Calc
function mapcraft:built_in/math/wrap_angle
function mapcraft:built_in/math/absolute
scoreboard players set Temp1 MC_Calc 9
scoreboard players set Temp2 MC_Calc 10
scoreboard players operation Temp3 MC_Calc = Output MC_Calc
scoreboard players operation Temp3 MC_Calc /= Temp1 MC_Calc
scoreboard players set Output MC_Calc 20
scoreboard players operation Output MC_Calc -= Temp3 MC_Calc
scoreboard players operation Output MC_Calc *= Input MC_Calc
scoreboard players operation Output MC_Calc /= Temp2 MC_Calc
scoreboard players operation Input MC_Calc = Input2 MC_Calc
