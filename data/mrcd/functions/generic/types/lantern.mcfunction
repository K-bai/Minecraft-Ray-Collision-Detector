scoreboard players set #box_x0 mrcd_system 313
scoreboard players set #box_x1 mrcd_system 688
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_y1 mrcd_system 438
scoreboard players set #box_z0 mrcd_system 313
scoreboard players set #box_z1 mrcd_system 688
execute if block ~ ~ ~ minecraft:lantern[hanging=false] run function mrcd:generic/complex_cube/main
scoreboard players set #box_x0 mrcd_system 375
scoreboard players set #box_x1 mrcd_system 625
scoreboard players set #box_y0 mrcd_system 438
scoreboard players set #box_y1 mrcd_system 563
scoreboard players set #box_z0 mrcd_system 375
scoreboard players set #box_z1 mrcd_system 625
execute if block ~ ~ ~ minecraft:lantern[hanging=false] run function mrcd:generic/complex_cube/main

scoreboard players set #box_x0 mrcd_system 313
scoreboard players set #box_x1 mrcd_system 688
scoreboard players set #box_y0 mrcd_system 63
scoreboard players set #box_y1 mrcd_system 500
scoreboard players set #box_z0 mrcd_system 313
scoreboard players set #box_z1 mrcd_system 688
execute if block ~ ~ ~ minecraft:lantern[hanging=true] run function mrcd:generic/complex_cube/main
scoreboard players set #box_x0 mrcd_system 375
scoreboard players set #box_x1 mrcd_system 625
scoreboard players set #box_y0 mrcd_system 500
scoreboard players set #box_y1 mrcd_system 625
scoreboard players set #box_z0 mrcd_system 375
scoreboard players set #box_z1 mrcd_system 625
execute if block ~ ~ ~ minecraft:lantern[hanging=true] run function mrcd:generic/complex_cube/main





execute if entity @e[tag=mrcd_touch_mark] run tag @s add mrcd_touch_edge
execute if entity @e[tag=mrcd_touch_mark] run tag @s add mrcd_touch_edge_complex

tag @s add mrcd_detected