scoreboard players set #box_x0 wrnmd_system 0
scoreboard players set #box_y0 wrnmd_system 0
scoreboard players set #box_z0 wrnmd_system 0
scoreboard players set #box_x1 wrnmd_system 1000
scoreboard players set #box_y1 wrnmd_system 1000
scoreboard players set #box_z1 wrnmd_system 750
execute if block ~ ~ ~ #wrnmd:piston[facing=south] run function wrnmd:generic/complex_cube/main
scoreboard players set #box_x0 wrnmd_system 375
scoreboard players set #box_y0 wrnmd_system 375
scoreboard players set #box_z0 wrnmd_system 750
scoreboard players set #box_x1 wrnmd_system 625
scoreboard players set #box_y1 wrnmd_system 625
scoreboard players set #box_z1 wrnmd_system 1000
execute if block ~ ~ ~ #wrnmd:piston[facing=south] run function wrnmd:generic/complex_cube/main

scoreboard players set #box_x0 wrnmd_system 0
scoreboard players set #box_y0 wrnmd_system 0
scoreboard players set #box_z0 wrnmd_system 250
scoreboard players set #box_x1 wrnmd_system 1000
scoreboard players set #box_y1 wrnmd_system 1000
scoreboard players set #box_z1 wrnmd_system 1000
execute if block ~ ~ ~ #wrnmd:piston[facing=north] run function wrnmd:generic/complex_cube/main
scoreboard players set #box_x0 wrnmd_system 375
scoreboard players set #box_y0 wrnmd_system 375
scoreboard players set #box_z0 wrnmd_system 0
scoreboard players set #box_x1 wrnmd_system 625
scoreboard players set #box_y1 wrnmd_system 625
scoreboard players set #box_z1 wrnmd_system 250
execute if block ~ ~ ~ #wrnmd:piston[facing=north] run function wrnmd:generic/complex_cube/main

scoreboard players set #box_x0 wrnmd_system 0
scoreboard players set #box_y0 wrnmd_system 0
scoreboard players set #box_z0 wrnmd_system 0
scoreboard players set #box_x1 wrnmd_system 750
scoreboard players set #box_y1 wrnmd_system 1000
scoreboard players set #box_z1 wrnmd_system 1000
execute if block ~ ~ ~ #wrnmd:piston[facing=east] run function wrnmd:generic/complex_cube/main
scoreboard players set #box_x0 wrnmd_system 750
scoreboard players set #box_y0 wrnmd_system 375
scoreboard players set #box_z0 wrnmd_system 375
scoreboard players set #box_x1 wrnmd_system 1000
scoreboard players set #box_y1 wrnmd_system 625
scoreboard players set #box_z1 wrnmd_system 625
execute if block ~ ~ ~ #wrnmd:piston[facing=east] run function wrnmd:generic/complex_cube/main

scoreboard players set #box_x0 wrnmd_system 250
scoreboard players set #box_y0 wrnmd_system 0
scoreboard players set #box_z0 wrnmd_system 0
scoreboard players set #box_x1 wrnmd_system 1000
scoreboard players set #box_y1 wrnmd_system 1000
scoreboard players set #box_z1 wrnmd_system 1000
execute if block ~ ~ ~ #wrnmd:piston[facing=west] run function wrnmd:generic/complex_cube/main
scoreboard players set #box_x0 wrnmd_system 0
scoreboard players set #box_y0 wrnmd_system 375
scoreboard players set #box_z0 wrnmd_system 375
scoreboard players set #box_x1 wrnmd_system 250
scoreboard players set #box_y1 wrnmd_system 625
scoreboard players set #box_z1 wrnmd_system 625
execute if block ~ ~ ~ #wrnmd:piston[facing=west] run function wrnmd:generic/complex_cube/main

scoreboard players set #box_x0 wrnmd_system 0
scoreboard players set #box_y0 wrnmd_system 0
scoreboard players set #box_z0 wrnmd_system 0
scoreboard players set #box_x1 wrnmd_system 1000
scoreboard players set #box_y1 wrnmd_system 750
scoreboard players set #box_z1 wrnmd_system 1000
execute if block ~ ~ ~ #wrnmd:piston[facing=up] run function wrnmd:generic/complex_cube/main
scoreboard players set #box_x0 wrnmd_system 375
scoreboard players set #box_y0 wrnmd_system 750
scoreboard players set #box_z0 wrnmd_system 375
scoreboard players set #box_x1 wrnmd_system 625
scoreboard players set #box_y1 wrnmd_system 1000
scoreboard players set #box_z1 wrnmd_system 625
execute if block ~ ~ ~ #wrnmd:piston[facing=up] run function wrnmd:generic/complex_cube/main

scoreboard players set #box_x0 wrnmd_system 0
scoreboard players set #box_y0 wrnmd_system 250
scoreboard players set #box_z0 wrnmd_system 0
scoreboard players set #box_x1 wrnmd_system 1000
scoreboard players set #box_y1 wrnmd_system 1000
scoreboard players set #box_z1 wrnmd_system 1000
execute if block ~ ~ ~ #wrnmd:piston[facing=down] run function wrnmd:generic/complex_cube/main
scoreboard players set #box_x0 wrnmd_system 375
scoreboard players set #box_y0 wrnmd_system 0
scoreboard players set #box_z0 wrnmd_system 375
scoreboard players set #box_x1 wrnmd_system 625
scoreboard players set #box_y1 wrnmd_system 250
scoreboard players set #box_z1 wrnmd_system 625
execute if block ~ ~ ~ #wrnmd:piston[facing=down] run function wrnmd:generic/complex_cube/main

scoreboard players set #box_x0 wrnmd_system 0
scoreboard players set #box_y0 wrnmd_system 0
scoreboard players set #box_z0 wrnmd_system 0
scoreboard players set #box_x1 wrnmd_system 1000
scoreboard players set #box_y1 wrnmd_system 1000
scoreboard players set #box_z1 wrnmd_system 1000
execute if block ~ ~ ~ #wrnmd:piston[extended=false] run function wrnmd:generic/complex_cube/main

execute if entity @e[tag=wrnmd_touch_mark] run tag @s add wrnmd_touch_edge
execute if entity @e[tag=wrnmd_touch_mark] run tag @s add wrnmd_touch_edge_complex


tag @s add wrnmd_detected