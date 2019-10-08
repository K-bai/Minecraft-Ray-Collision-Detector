scoreboard players set #box_x0 wrnmd_system 0
scoreboard players set #box_y0 wrnmd_system 0
scoreboard players set #box_z0 wrnmd_system 0
scoreboard players set #box_x1 wrnmd_system 1000
scoreboard players set #box_y1 wrnmd_system 0
scoreboard players set #box_z1 wrnmd_system 1000

execute if block ~ ~ ~ #wrnmd:carrots_like[age=0] run scoreboard players set #box_y1 wrnmd_system 125
execute if block ~ ~ ~ #wrnmd:carrots_like[age=1] run scoreboard players set #box_y1 wrnmd_system 188
execute if block ~ ~ ~ #wrnmd:carrots_like[age=2] run scoreboard players set #box_y1 wrnmd_system 250
execute if block ~ ~ ~ #wrnmd:carrots_like[age=3] run scoreboard players set #box_y1 wrnmd_system 313
execute if block ~ ~ ~ #wrnmd:carrots_like[age=4] run scoreboard players set #box_y1 wrnmd_system 375
execute if block ~ ~ ~ #wrnmd:carrots_like[age=5] run scoreboard players set #box_y1 wrnmd_system 438
execute if block ~ ~ ~ #wrnmd:carrots_like[age=6] run scoreboard players set #box_y1 wrnmd_system 500
execute if block ~ ~ ~ #wrnmd:carrots_like[age=7] run scoreboard players set #box_y1 wrnmd_system 563




function wrnmd:generic/cube/main
tag @s add wrnmd_detected