# create marker
execute positioned ^ ^ ^5 run summon area_effect_cloud ~ ~ ~ {Tags:["wrnmd_mark","wrnmd_entity"],Duration:100}
# save speed and direction
execute as @e[tag=wrnmd_mark] store result score @s wrnmd_x0 run data get entity @s Pos[0] 1000
execute as @e[tag=wrnmd_mark] store result score @s wrnmd_y0 run data get entity @s Pos[1] 1000
execute as @e[tag=wrnmd_mark] store result score @s wrnmd_z0 run data get entity @s Pos[2] 1000
execute store result score #var0 wrnmd_system run data get entity @s Pos[0] 1000
execute store result score #var1 wrnmd_system run data get entity @s Pos[1] 1000
execute store result score #var2 wrnmd_system run data get entity @s Pos[2] 1000
scoreboard players operation @e[tag=wrnmd_mark,limit=1] wrnmd_x0 -= #var0 wrnmd_system
scoreboard players operation @e[tag=wrnmd_mark,limit=1] wrnmd_y0 -= #var1 wrnmd_system
scoreboard players operation @e[tag=wrnmd_mark,limit=1] wrnmd_z0 -= #var2 wrnmd_system
# Rotating is really necessary for entity detection
execute anchored eyes positioned ^ ^ ^ run tp @e[tag=wrnmd_mark,limit=1] ~ ~ ~ ~ ~

# recurse and return
execute as @e[tag=wrnmd_mark,limit=1] at @s run function wrnmd:generic/start
execute if entity @e[tag=wrnmd_mark,tag=wrnmd_touch_edge,tag=wrnmd_touch_x_plus] at @s run say touched x+
execute if entity @e[tag=wrnmd_mark,tag=wrnmd_touch_edge,tag=wrnmd_touch_x_minus] at @s run say touched x-
execute if entity @e[tag=wrnmd_mark,tag=wrnmd_touch_edge,tag=wrnmd_touch_y_plus] at @s run say touched y+
execute if entity @e[tag=wrnmd_mark,tag=wrnmd_touch_edge,tag=wrnmd_touch_y_minus] at @s run say touched y-
execute if entity @e[tag=wrnmd_mark,tag=wrnmd_touch_edge,tag=wrnmd_touch_z_plus] at @s run say touched z+
execute if entity @e[tag=wrnmd_mark,tag=wrnmd_touch_edge,tag=wrnmd_touch_z_minus] at @s run say touched z-
execute as @e[tag=wrnmd_target_entity] at @s run say I'm marked.
tag @e[tag=wrnmd_target_entity] remove wrnmd_target_entity

# clear tag
tag @e[tag=wrnmd_mark] remove wrnmd_mark