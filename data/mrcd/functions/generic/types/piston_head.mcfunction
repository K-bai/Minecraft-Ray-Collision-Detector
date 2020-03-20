scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z1 mrcd_system 250
execute if block ~ ~ ~ minecraft:piston_head[facing=north] run function mrcd:generic/complex_cube/main
scoreboard players set #box_x0 mrcd_system 375
scoreboard players set #box_y0 mrcd_system 375
scoreboard players set #box_z0 mrcd_system 250
scoreboard players set #box_x1 mrcd_system 625
scoreboard players set #box_y1 mrcd_system 625
scoreboard players set #box_z1 mrcd_system 1000
execute if block ~ ~ ~ minecraft:piston_head[facing=north] run function mrcd:generic/complex_cube/main

scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 750
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z1 mrcd_system 1000
execute if block ~ ~ ~ minecraft:piston_head[facing=south] run function mrcd:generic/complex_cube/main
scoreboard players set #box_x0 mrcd_system 375
scoreboard players set #box_y0 mrcd_system 375
scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 625
scoreboard players set #box_y1 mrcd_system 625
scoreboard players set #box_z1 mrcd_system 750
execute if block ~ ~ ~ minecraft:piston_head[facing=south] run function mrcd:generic/complex_cube/main

scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 250
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z1 mrcd_system 1000
execute if block ~ ~ ~ minecraft:piston_head[facing=west] run function mrcd:generic/complex_cube/main
scoreboard players set #box_x0 mrcd_system 250
scoreboard players set #box_y0 mrcd_system 375
scoreboard players set #box_z0 mrcd_system 375
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y1 mrcd_system 625
scoreboard players set #box_z1 mrcd_system 625
execute if block ~ ~ ~ minecraft:piston_head[facing=west] run function mrcd:generic/complex_cube/main

scoreboard players set #box_x0 mrcd_system 750
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z1 mrcd_system 1000
execute if block ~ ~ ~ minecraft:piston_head[facing=east] run function mrcd:generic/complex_cube/main
scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_y0 mrcd_system 375
scoreboard players set #box_z0 mrcd_system 375
scoreboard players set #box_x1 mrcd_system 750
scoreboard players set #box_y1 mrcd_system 625
scoreboard players set #box_z1 mrcd_system 625
execute if block ~ ~ ~ minecraft:piston_head[facing=east] run function mrcd:generic/complex_cube/main

scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y1 mrcd_system 250
scoreboard players set #box_z1 mrcd_system 1000
execute if block ~ ~ ~ minecraft:piston_head[facing=down] run function mrcd:generic/complex_cube/main
scoreboard players set #box_x0 mrcd_system 375
scoreboard players set #box_y0 mrcd_system 250
scoreboard players set #box_z0 mrcd_system 375
scoreboard players set #box_x1 mrcd_system 625
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z1 mrcd_system 625
execute if block ~ ~ ~ minecraft:piston_head[facing=down] run function mrcd:generic/complex_cube/main

scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_y0 mrcd_system 750
scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z1 mrcd_system 1000
execute if block ~ ~ ~ minecraft:piston_head[facing=up] run function mrcd:generic/complex_cube/main
scoreboard players set #box_x0 mrcd_system 375
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 375
scoreboard players set #box_x1 mrcd_system 625
scoreboard players set #box_y1 mrcd_system 750
scoreboard players set #box_z1 mrcd_system 625
execute if block ~ ~ ~ minecraft:piston_head[facing=up] run function mrcd:generic/complex_cube/main

execute if entity @e[tag=mrcd_touch_mark] run tag @s add mrcd_touch_edge
execute if entity @e[tag=mrcd_touch_mark] run tag @s add mrcd_touch_edge_complex


tag @s add mrcd_detected