scoreboard players set #box_x0 mrcd_system 375
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 375
scoreboard players set #box_x1 mrcd_system 625
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z1 mrcd_system 625
function mrcd:private/complex_cube/main

scoreboard players set #box_x0 mrcd_system 625
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 375
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z1 mrcd_system 625
execute if block ~ ~ ~ #minecraft:fences[east=true] run function mrcd:private/complex_cube/main

scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 375
scoreboard players set #box_x1 mrcd_system 375
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z1 mrcd_system 625
execute if block ~ ~ ~ #minecraft:fences[west=true] run function mrcd:private/complex_cube/main

scoreboard players set #box_x0 mrcd_system 375
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 625
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z1 mrcd_system 375
execute if block ~ ~ ~ #minecraft:fences[north=true] run function mrcd:private/complex_cube/main

scoreboard players set #box_x0 mrcd_system 375
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 625
scoreboard players set #box_x1 mrcd_system 625
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z1 mrcd_system 1000
execute if block ~ ~ ~ #minecraft:fences[south=true] run function mrcd:private/complex_cube/main

execute if entity @e[tag=mrcd_touch_mark] run tag @s add mrcd_touch_edge
execute if entity @e[tag=mrcd_touch_mark] run tag @s add mrcd_touch_edge_complex
tag @s add mrcd_detected