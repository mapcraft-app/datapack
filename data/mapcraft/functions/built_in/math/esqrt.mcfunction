scoreboard players operation Temp4 MC_Calc = Output MC_Calc
scoreboard players operation Temp3 MC_Calc = Input2 MC_Calc
scoreboard players operation Temp3 MC_Calc /= Output MC_Calc
scoreboard players operation Output MC_Calc += Temp3 MC_Calc
scoreboard players operation Output MC_Calc /= Temp2 MC_Calc
scoreboard players operation Temp4 MC_Calc -= Output MC_Calc
execute unless score Temp4 MC_Calc matches -1..1 run function mapcraft:built_in/math/esqrt
