# If movement autorized, tag AllowedChangeAngle add
execute as @e[tag=EntityEdition,tag=!ClickDetection,tag=!Corner,tag=!CornerCopy,distance=..3] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID unless entity @s[team=MC_Purple] run tag @s add AllowedChangeAngle
execute as @e[tag=EntityEdition,tag=!ClickDetection,tag=!Corner,tag=!CornerCopy,distance=..3] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID unless entity @s[team=MC_Purple] run team join MC_Purple @s
execute as @e[tag=EntityEdition,tag=!ClickDetection,tag=!Corner,tag=!CornerCopy,distance=4..] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID if entity @s[team=MC_Purple] run tag @s remove AllowedChangeAngle

# Blue if not cutscene mode
execute as @e[tag=EntityEdition,tag=!ClickDetection,tag=!Corner,tag=!CornerCopy,tag=One,distance=4..] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID if entity @p[distance=0,tag=Select,tag=!Cutscene,tag=!Trigger] if entity @s[team=MC_Purple] run team join MC_Blue @s
# Green if trigger mode
execute as @e[tag=EntityEdition,tag=!ClickDetection,tag=!Corner,tag=!CornerCopy,tag=One,distance=4..] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID if entity @p[distance=0,tag=Select,tag=!Cutscene,tag=Trigger] if entity @s[team=MC_Purple] run team join MC_Green @s
# Yellow if cutscene mode
execute as @e[tag=EntityEdition,tag=!ClickDetection,tag=!Corner,tag=!CornerCopy,tag=One,distance=4..] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID if entity @p[distance=0,tag=Select,tag=Cutscene,tag=!Trigger] if entity @s[team=MC_Purple] run team join MC_Yellow @s

execute as @e[tag=EntityEdition,tag=!ClickDetection,tag=!Corner,tag=!CornerCopy,tag=Two,distance=4..] if score @s MC_CursorTemp = @p[distance=0] MC_PlayerID if entity @s[team=MC_Purple] run team join MC_Yellow @s
