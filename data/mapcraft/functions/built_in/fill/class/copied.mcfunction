function mapcraft:built_in/copy/execution/z_copy
execute as @e[tag=Fill,tag=Point,tag=Copy,tag=Z,sort=nearest] at @s run function mapcraft:built_in/fill/class/copied_entity
