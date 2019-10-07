scoreboard players set #box_x0 wrnmd_system 438
scoreboard players set #box_y0 wrnmd_system 0
scoreboard players set #box_z0 wrnmd_system 438
scoreboard players set #box_x1 wrnmd_system 563
scoreboard players set #box_y1 wrnmd_system 1000
scoreboard players set #box_z1 wrnmd_system 563
function wrnmd:block/complex_cube/main

scoreboard players set #box_x0 wrnmd_system 563
scoreboard players set #box_y0 wrnmd_system 0
scoreboard players set #box_z0 wrnmd_system 438
scoreboard players set #box_x1 wrnmd_system 1000
scoreboard players set #box_y1 wrnmd_system 1000
scoreboard players set #box_z1 wrnmd_system 563
execute if block ~ ~ ~ #wrnmd:glass_pane_like[east=true] run function wrnmd:block/complex_cube/main

scoreboard players set #box_x0 wrnmd_system 0
scoreboard players set #box_y0 wrnmd_system 0
scoreboard players set #box_z0 wrnmd_system 438
scoreboard players set #box_x1 wrnmd_system 438
scoreboard players set #box_y1 wrnmd_system 1000
scoreboard players set #box_z1 wrnmd_system 563
execute if block ~ ~ ~ #wrnmd:glass_pane_like[west=true] run function wrnmd:block/complex_cube/main

scoreboard players set #box_x0 wrnmd_system 438
scoreboard players set #box_y0 wrnmd_system 0
scoreboard players set #box_z0 wrnmd_system 0
scoreboard players set #box_x1 wrnmd_system 563
scoreboard players set #box_y1 wrnmd_system 1000
scoreboard players set #box_z1 wrnmd_system 438
execute if block ~ ~ ~ #wrnmd:glass_pane_like[north=true] run function wrnmd:block/complex_cube/main

scoreboard players set #box_x0 wrnmd_system 438
scoreboard players set #box_y0 wrnmd_system 0
scoreboard players set #box_z0 wrnmd_system 563
scoreboard players set #box_x1 wrnmd_system 563
scoreboard players set #box_y1 wrnmd_system 1000
scoreboard players set #box_z1 wrnmd_system 1000
execute if block ~ ~ ~ #wrnmd:glass_pane_like[south=true] run function wrnmd:block/complex_cube/main

execute if entity @e[tag=wrnmd_touch_mark] run tag @s add wrnmd_touch_edge
execute if entity @e[tag=wrnmd_touch_mark] run tag @s add wrnmd_touch_edge_complex