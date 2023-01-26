scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z1 mrcd_system 750
execute if block ~ ~ ~ #mrcd:piston[facing=south] run function mrcd:private/complex_cube/main
scoreboard players set #box_x0 mrcd_system 375
scoreboard players set #box_y0 mrcd_system 375
scoreboard players set #box_z0 mrcd_system 750
scoreboard players set #box_x1 mrcd_system 625
scoreboard players set #box_y1 mrcd_system 625
scoreboard players set #box_z1 mrcd_system 1000
execute if block ~ ~ ~ #mrcd:piston[facing=south] run function mrcd:private/complex_cube/main

scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 250
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z1 mrcd_system 1000
execute if block ~ ~ ~ #mrcd:piston[facing=north] run function mrcd:private/complex_cube/main
scoreboard players set #box_x0 mrcd_system 375
scoreboard players set #box_y0 mrcd_system 375
scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 625
scoreboard players set #box_y1 mrcd_system 625
scoreboard players set #box_z1 mrcd_system 250
execute if block ~ ~ ~ #mrcd:piston[facing=north] run function mrcd:private/complex_cube/main

scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 750
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z1 mrcd_system 1000
execute if block ~ ~ ~ #mrcd:piston[facing=east] run function mrcd:private/complex_cube/main
scoreboard players set #box_x0 mrcd_system 750
scoreboard players set #box_y0 mrcd_system 375
scoreboard players set #box_z0 mrcd_system 375
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y1 mrcd_system 625
scoreboard players set #box_z1 mrcd_system 625
execute if block ~ ~ ~ #mrcd:piston[facing=east] run function mrcd:private/complex_cube/main

scoreboard players set #box_x0 mrcd_system 250
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z1 mrcd_system 1000
execute if block ~ ~ ~ #mrcd:piston[facing=west] run function mrcd:private/complex_cube/main
scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_y0 mrcd_system 375
scoreboard players set #box_z0 mrcd_system 375
scoreboard players set #box_x1 mrcd_system 250
scoreboard players set #box_y1 mrcd_system 625
scoreboard players set #box_z1 mrcd_system 625
execute if block ~ ~ ~ #mrcd:piston[facing=west] run function mrcd:private/complex_cube/main

scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y1 mrcd_system 750
scoreboard players set #box_z1 mrcd_system 1000
execute if block ~ ~ ~ #mrcd:piston[facing=up] run function mrcd:private/complex_cube/main
scoreboard players set #box_x0 mrcd_system 375
scoreboard players set #box_y0 mrcd_system 750
scoreboard players set #box_z0 mrcd_system 375
scoreboard players set #box_x1 mrcd_system 625
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z1 mrcd_system 625
execute if block ~ ~ ~ #mrcd:piston[facing=up] run function mrcd:private/complex_cube/main

scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_y0 mrcd_system 250
scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z1 mrcd_system 1000
execute if block ~ ~ ~ #mrcd:piston[facing=down] run function mrcd:private/complex_cube/main
scoreboard players set #box_x0 mrcd_system 375
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 375
scoreboard players set #box_x1 mrcd_system 625
scoreboard players set #box_y1 mrcd_system 250
scoreboard players set #box_z1 mrcd_system 625
execute if block ~ ~ ~ #mrcd:piston[facing=down] run function mrcd:private/complex_cube/main

scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z1 mrcd_system 1000
execute if block ~ ~ ~ #mrcd:piston[extended=false] run function mrcd:private/complex_cube/main

execute if entity @e[tag=mrcd_touch_mark] run tag @s add mrcd_touch_edge
execute if entity @e[tag=mrcd_touch_mark] run tag @s add mrcd_touch_edge_complex


tag @s add mrcd_block_collision_done