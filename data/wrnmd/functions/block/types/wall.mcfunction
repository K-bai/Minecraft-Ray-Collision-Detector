scoreboard players set #box_x0 wrnmd_system 250
scoreboard players set #box_y0 wrnmd_system 0
scoreboard players set #box_z0 wrnmd_system 250
scoreboard players set #box_x1 wrnmd_system 750
scoreboard players set #box_y1 wrnmd_system 1000
scoreboard players set #box_z1 wrnmd_system 750
execute if block ~ ~ ~ #minecraft:walls[up=true] run function wrnmd:block/complex_cube/main

scoreboard players set #box_x0 wrnmd_system 500
scoreboard players set #box_y0 wrnmd_system 0
scoreboard players set #box_z0 wrnmd_system 313
scoreboard players set #box_x1 wrnmd_system 1000
scoreboard players set #box_y1 wrnmd_system 875
scoreboard players set #box_z1 wrnmd_system 687
execute if block ~ ~ ~ #minecraft:walls[east=true] run function wrnmd:block/complex_cube/main

scoreboard players set #box_x0 wrnmd_system 0
scoreboard players set #box_y0 wrnmd_system 0
scoreboard players set #box_z0 wrnmd_system 313
scoreboard players set #box_x1 wrnmd_system 500
scoreboard players set #box_y1 wrnmd_system 875
scoreboard players set #box_z1 wrnmd_system 687
execute if block ~ ~ ~ #minecraft:walls[west=true] run function wrnmd:block/complex_cube/main

scoreboard players set #box_x0 wrnmd_system 313
scoreboard players set #box_y0 wrnmd_system 0
scoreboard players set #box_z0 wrnmd_system 0
scoreboard players set #box_x1 wrnmd_system 687
scoreboard players set #box_y1 wrnmd_system 875
scoreboard players set #box_z1 wrnmd_system 500
execute if block ~ ~ ~ #minecraft:walls[north=true] run function wrnmd:block/complex_cube/main

scoreboard players set #box_x0 wrnmd_system 313
scoreboard players set #box_y0 wrnmd_system 0
scoreboard players set #box_z0 wrnmd_system 500
scoreboard players set #box_x1 wrnmd_system 687
scoreboard players set #box_y1 wrnmd_system 875
scoreboard players set #box_z1 wrnmd_system 1000
execute if block ~ ~ ~ #minecraft:walls[south=true] run function wrnmd:block/complex_cube/main

execute if entity @e[tag=wrnmd_touch_mark] run tag @s add wrnmd_touch_edge
execute if entity @e[tag=wrnmd_touch_mark] run tag @s add wrnmd_touch_edge_complex