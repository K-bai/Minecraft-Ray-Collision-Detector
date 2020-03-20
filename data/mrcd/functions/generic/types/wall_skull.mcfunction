scoreboard players set #box_x0 mrcd_system 250
scoreboard players set #box_y0 mrcd_system 250
scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 750
scoreboard players set #box_y1 mrcd_system 750
scoreboard players set #box_z1 mrcd_system 500
execute if block ~ ~ ~ #mrcd:wall_torch_like[facing=south] run function mrcd:generic/cube/main

scoreboard players set #box_x0 mrcd_system 250
scoreboard players set #box_y0 mrcd_system 250
scoreboard players set #box_z0 mrcd_system 500
scoreboard players set #box_x1 mrcd_system 750
scoreboard players set #box_y1 mrcd_system 750
scoreboard players set #box_z1 mrcd_system 1000
execute if block ~ ~ ~ #mrcd:wall_torch_like[facing=north] run function mrcd:generic/cube/main

scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_y0 mrcd_system 250
scoreboard players set #box_z0 mrcd_system 250
scoreboard players set #box_x1 mrcd_system 500
scoreboard players set #box_y1 mrcd_system 750
scoreboard players set #box_z1 mrcd_system 750
execute if block ~ ~ ~ #mrcd:wall_torch_like[facing=east] run function mrcd:generic/cube/main

scoreboard players set #box_x0 mrcd_system 500
scoreboard players set #box_y0 mrcd_system 250
scoreboard players set #box_z0 mrcd_system 250
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y1 mrcd_system 750
scoreboard players set #box_z1 mrcd_system 750
execute if block ~ ~ ~ #mrcd:wall_torch_like[facing=west] run function mrcd:generic/cube/main
tag @s add mrcd_detected