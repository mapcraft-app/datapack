#"math_in" is a base; "math_exp" is an exponent; "math_out" is the base to the power of the exponent
execute if score Temp1 MC_Calc matches 1.. run scoreboard players operation Output MC_Calc *= Input MC_Calc
execute if score Temp1 MC_Calc matches 1.. run scoreboard players remove Input MC_Calc 1
execute if score Temp1 MC_Calc matches 1.. run function mapcraft:built_in/math/epow
