execute if score @s MC_PlayerRx matches ..0 run scoreboard players set Temp1 MC_Calc -1
execute if score @s MC_PlayerRx matches ..0 run scoreboard players operation @s MC_PlayerRx *= Temp1 MC_Calc
execute if score @s MC_PlayerRx matches 361.. run scoreboard players operation Input MC_Calc = @s MC_PlayerRx
execute if score @s MC_PlayerRx matches 361.. run function mapcraft:built_in/math/degree_rotation
execute if score @s MC_PlayerRx matches 361.. run scoreboard players operation @s MC_PlayerRx = Output MC_Calc
execute positioned as @s rotated as @s if score @s MC_PlayerRx matches 1024.. run teleport @s ~ ~ ~ ~1024 ~
execute positioned as @s rotated as @s if score @s MC_PlayerRx matches 1024.. run scoreboard players remove @s MC_PlayerRx 1024
execute positioned as @s rotated as @s if score @s MC_PlayerRx matches 512.. run teleport @s ~ ~ ~ ~512 ~
execute positioned as @s rotated as @s if score @s MC_PlayerRx matches 512.. run scoreboard players remove @s MC_PlayerRx 512
execute positioned as @s rotated as @s if score @s MC_PlayerRx matches 256.. run teleport @s ~ ~ ~ ~256 ~
execute positioned as @s rotated as @s if score @s MC_PlayerRx matches 256.. run scoreboard players remove @s MC_PlayerRx 256
execute positioned as @s rotated as @s if score @s MC_PlayerRx matches 128.. run teleport @s ~ ~ ~ ~128 ~
execute positioned as @s rotated as @s if score @s MC_PlayerRx matches 128.. run scoreboard players remove @s MC_PlayerRx 128
execute positioned as @s rotated as @s if score @s MC_PlayerRx matches 64.. run teleport @s ~ ~ ~ ~64 ~
execute positioned as @s rotated as @s if score @s MC_PlayerRx matches 64.. run scoreboard players remove @s MC_PlayerRx 64
execute positioned as @s rotated as @s if score @s MC_PlayerRx matches 32.. run teleport @s ~ ~ ~ ~32 ~
execute positioned as @s rotated as @s if score @s MC_PlayerRx matches 32.. run scoreboard players remove @s MC_PlayerRx 32
execute positioned as @s rotated as @s if score @s MC_PlayerRx matches 16.. run teleport @s ~ ~ ~ ~16 ~
execute positioned as @s rotated as @s if score @s MC_PlayerRx matches 16.. run scoreboard players remove @s MC_PlayerRx 16
execute positioned as @s rotated as @s if score @s MC_PlayerRx matches 8.. run teleport @s ~ ~ ~ ~8 ~
execute positioned as @s rotated as @s if score @s MC_PlayerRx matches 8.. run scoreboard players remove @s MC_PlayerRx 8
execute positioned as @s rotated as @s if score @s MC_PlayerRx matches 4.. run teleport @s ~ ~ ~ ~4 ~
execute positioned as @s rotated as @s if score @s MC_PlayerRx matches 4.. run scoreboard players remove @s MC_PlayerRx 4
execute positioned as @s rotated as @s if score @s MC_PlayerRx matches 2.. run teleport @s ~ ~ ~ ~2 ~
execute positioned as @s rotated as @s if score @s MC_PlayerRx matches 2.. run scoreboard players remove @s MC_PlayerRx 2
execute positioned as @s rotated as @s if score @s MC_PlayerRx matches 1.. run teleport @s ~ ~ ~ ~1 ~
execute positioned as @s rotated as @s if score @s MC_PlayerRx matches 1.. run scoreboard players remove @s MC_PlayerRx 1
