scoreboard players set #box_x0 wrnmd_system 250
scoreboard players set #box_y0 wrnmd_system 250
scoreboard players set #box_z0 wrnmd_system 0
scoreboard players set #box_x1 wrnmd_system 750
scoreboard players set #box_y1 wrnmd_system 750
scoreboard players set #box_z1 wrnmd_system 500
execute if block ~ ~ ~ #wrnmd:wall_torch_like[facing=south] run function wrnmd:generic/cube/main

scoreboard players set #box_x0 wrnmd_system 250
scoreboard players set #box_y0 wrnmd_system 250
scoreboard players set #box_z0 wrnmd_system 500
scoreboard players set #box_x1 wrnmd_system 750
scoreboard players set #box_y1 wrnmd_system 750
scoreboard players set #box_z1 wrnmd_system 1000
execute if block ~ ~ ~ #wrnmd:wall_torch_like[facing=north] run function wrnmd:generic/cube/main

scoreboard players set #box_x0 wrnmd_system 0
scoreboard players set #box_y0 wrnmd_system 250
scoreboard players set #box_z0 wrnmd_system 250
scoreboard players set #box_x1 wrnmd_system 500
scoreboard players set #box_y1 wrnmd_system 750
scoreboard players set #box_z1 wrnmd_system 750
execute if block ~ ~ ~ #wrnmd:wall_torch_like[facing=east] run function wrnmd:generic/cube/main

scoreboard players set #box_x0 wrnmd_system 500
scoreboard players set #box_y0 wrnmd_system 250
scoreboard players set #box_z0 wrnmd_system 250
scoreboard players set #box_x1 wrnmd_system 1000
scoreboard players set #box_y1 wrnmd_system 750
scoreboard players set #box_z1 wrnmd_system 750
execute if block ~ ~ ~ #wrnmd:wall_torch_like[facing=west] run function wrnmd:generic/cube/main
tag @s add wrnmd_detected