scoreboard players set #box_x0 mrcd_system 500
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z1 mrcd_system 1000
execute if block ~ ~ ~ #minecraft:stairs[shape=inner_right] run function mrcd:generic/complex_cube/main
execute if block ~ ~ ~ #minecraft:stairs[shape=inner_left] run function mrcd:generic/complex_cube/main

scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 500
scoreboard players set #box_x1 mrcd_system 500
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z1 mrcd_system 1000
execute if block ~ ~ ~ #minecraft:stairs[shape=inner_right] run function mrcd:generic/complex_cube/main

scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 500
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z1 mrcd_system 500
execute if block ~ ~ ~ #minecraft:stairs[shape=inner_left] run function mrcd:generic/complex_cube/main

scoreboard players set #box_x0 mrcd_system 500
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 500
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z1 mrcd_system 1000
execute if block ~ ~ ~ #minecraft:stairs[shape=outer_right] run function mrcd:generic/complex_cube/main

scoreboard players set #box_x0 mrcd_system 500
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z1 mrcd_system 500
execute if block ~ ~ ~ #minecraft:stairs[shape=outer_left] run function mrcd:generic/complex_cube/main