execute positioned ~ ~ ~ if entity @s[tag=Curb,tag=!Wall,tag=!Wire] run function mapcraft:built_in/fill/class/shape/curb
execute positioned ~ ~ ~ if entity @s[tag=!Curb,tag=Wall,tag=!Wire] run function mapcraft:built_in/fill/class/shape/wall
execute positioned ~ ~ ~ if entity @s[tag=!Curb,tag=!Wall,tag=Wire] run function mapcraft:built_in/fill/class/shape/wire
