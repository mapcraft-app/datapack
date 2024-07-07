scoreboard players set Temp1 MC_Calc 1
scoreboard players operation Input2 MC_Calc = Input MC_Calc
scoreboard players operation Input2 MC_Calc *= Temp1 MC_Calc
scoreboard players set Temp2 MC_Calc 2
scoreboard players set Output MC_Calc 1
function mapcraft:built_in/math/esqrt
