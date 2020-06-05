scoreboard players set #box_x0 mrcd_system 250
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 250
scoreboard players set #box_x1 mrcd_system 750
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z1 mrcd_system 750
execute if block ~ ~ ~ #minecraft:walls[up=true] run function mrcd:generic/complex_cube/main

scoreboard players set #box_x0 mrcd_system 500
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 313
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y1 mrcd_system 875
scoreboard players set #box_z1 mrcd_system 687
execute if block ~ ~ ~ #minecraft:walls[east=low] run function mrcd:generic/complex_cube/main

scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 313
scoreboard players set #box_x1 mrcd_system 500
scoreboard players set #box_y1 mrcd_system 875
scoreboard players set #box_z1 mrcd_system 687
execute if block ~ ~ ~ #minecraft:walls[west=low] run function mrcd:generic/complex_cube/main

scoreboard players set #box_x0 mrcd_system 313
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 687
scoreboard players set #box_y1 mrcd_system 875
scoreboard players set #box_z1 mrcd_system 500
execute if block ~ ~ ~ #minecraft:walls[north=low] run function mrcd:generic/complex_cube/main

scoreboard players set #box_x0 mrcd_system 313
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 500
scoreboard players set #box_x1 mrcd_system 687
scoreboard players set #box_y1 mrcd_system 875
scoreboard players set #box_z1 mrcd_system 1000
execute if block ~ ~ ~ #minecraft:walls[south=low] run function mrcd:generic/complex_cube/main

scoreboard players set #box_x0 mrcd_system 500
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 313
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z1 mrcd_system 687
execute if block ~ ~ ~ #minecraft:walls[east=tall] run function mrcd:generic/complex_cube/main

scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 313
scoreboard players set #box_x1 mrcd_system 500
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z1 mrcd_system 687
execute if block ~ ~ ~ #minecraft:walls[west=tall] run function mrcd:generic/complex_cube/main

scoreboard players set #box_x0 mrcd_system 313
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 687
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z1 mrcd_system 500
execute if block ~ ~ ~ #minecraft:walls[north=tall] run function mrcd:generic/complex_cube/main

scoreboard players set #box_x0 mrcd_system 313
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 500
scoreboard players set #box_x1 mrcd_system 687
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z1 mrcd_system 1000
execute if block ~ ~ ~ #minecraft:walls[south=tall] run function mrcd:generic/complex_cube/main

execute if entity @e[tag=mrcd_touch_mark] run tag @s add mrcd_touch_edge
execute if entity @e[tag=mrcd_touch_mark] run tag @s add mrcd_touch_edge_complex
tag @s add mrcd_detected