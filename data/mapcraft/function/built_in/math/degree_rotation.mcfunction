scoreboard players set Temp1 MC_Calc 360
scoreboard players set Temp2 MC_Calc 100
scoreboard players operation Temp1 MC_Calc *= Temp2 MC_Calc
scoreboard players operation Output MC_Calc = Input MC_Calc
scoreboard players operation Output MC_Calc *= Temp2 MC_Calc
scoreboard players operation Output MC_Calc /= 360 MC_Calc
scoreboard players operation Temp1 MC_Calc /= Output MC_Calc
scoreboard players operation Output MC_Calc = Temp1 MC_Calc
scoreboard players set Temp1 MC_Calc 0
scoreboard players set Temp2 MC_Calc 0
