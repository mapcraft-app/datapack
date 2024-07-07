scoreboard players operation Input2 MC_Calc = Temp1 MC_Calc
scoreboard players set Output MC_Calc 1
execute if score Temp1 MC_Calc matches ..-1 run scoreboard players set Output MC_Calc 0
function mapcraft:built_in/math/epow
scoreboard players operation Output MC_Calc = Input2 MC_Calc
