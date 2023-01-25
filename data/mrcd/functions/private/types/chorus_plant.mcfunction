scoreboard players set #box_x0 mrcd_system 188
scoreboard players set #box_y0 mrcd_system 188
scoreboard players set #box_z0 mrcd_system 188
scoreboard players set #box_x1 mrcd_system 813
scoreboard players set #box_y1 mrcd_system 813
scoreboard players set #box_z1 mrcd_system 813
function mrcd:private/complex_cube/main

scoreboard players set #box_x0 mrcd_system 813
scoreboard players set #box_y0 mrcd_system 188
scoreboard players set #box_z0 mrcd_system 188
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y1 mrcd_system 813
scoreboard players set #box_z1 mrcd_system 813
execute if block ~ ~ ~ minecraft:chorus_plant[east=true] run function mrcd:private/complex_cube/main

scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_y0 mrcd_system 188
scoreboard players set #box_z0 mrcd_system 188
scoreboard players set #box_x1 mrcd_system 188
scoreboard players set #box_y1 mrcd_system 813
scoreboard players set #box_z1 mrcd_system 813
execute if block ~ ~ ~ minecraft:chorus_plant[west=true] run function mrcd:private/complex_cube/main

scoreboard players set #box_x0 mrcd_system 188
scoreboard players set #box_y0 mrcd_system 188
scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 813
scoreboard players set #box_y1 mrcd_system 813
scoreboard players set #box_z1 mrcd_system 188
execute if block ~ ~ ~ minecraft:chorus_plant[north=true] run function mrcd:private/complex_cube/main

scoreboard players set #box_x0 mrcd_system 188
scoreboard players set #box_y0 mrcd_system 188
scoreboard players set #box_z0 mrcd_system 813
scoreboard players set #box_x1 mrcd_system 813
scoreboard players set #box_y1 mrcd_system 813
scoreboard players set #box_z1 mrcd_system 1000
execute if block ~ ~ ~ minecraft:chorus_plant[south=true] run function mrcd:private/complex_cube/main

scoreboard players set #box_x0 mrcd_system 188
scoreboard players set #box_y0 mrcd_system 813
scoreboard players set #box_z0 mrcd_system 188
scoreboard players set #box_x1 mrcd_system 813
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z1 mrcd_system 813
execute if block ~ ~ ~ minecraft:chorus_plant[up=true] run function mrcd:private/complex_cube/main

scoreboard players set #box_x0 mrcd_system 188
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 188
scoreboard players set #box_x1 mrcd_system 813
scoreboard players set #box_y1 mrcd_system 188
scoreboard players set #box_z1 mrcd_system 813
execute if block ~ ~ ~ minecraft:chorus_plant[down=true] run function mrcd:private/complex_cube/main

execute if entity @e[tag=mrcd_touch_mark] run tag @s add mrcd_touch_edge
execute if entity @e[tag=mrcd_touch_mark] run tag @s add mrcd_touch_edge_complex
tag @s add mrcd_block_collision_done