function mapcraft:built_in/math/sin
scoreboard players set Temp1 MC_Calc 100
scoreboard players operation Temp4 MC_Calc = Output MC_Calc
scoreboard players operation Temp4 MC_Calc *= Temp1 MC_Calc
function mapcraft:built_in/math/cos
scoreboard players operation Temp4 MC_Calc /= Output MC_Calc
scoreboard players operation Output MC_Calc = Temp4 MC_Calc
