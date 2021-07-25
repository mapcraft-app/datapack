# Initialize
bossbar set mapcraft:progress players @s
bossbar set mapcraft:progress visible false
tag @s add MC_Edit
scoreboard players set @s MC_CursorClick 0

# Screen GUI
function mapcraft:built_in/cursor/gui
