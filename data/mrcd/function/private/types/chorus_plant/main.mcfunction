scoreboard players set #box_x0 mrcd_system 188
scoreboard players set #box_y0 mrcd_system 188
scoreboard players set #box_z0 mrcd_system 188
scoreboard players set #box_x1 mrcd_system 813
scoreboard players set #box_y1 mrcd_system 813
scoreboard players set #box_z1 mrcd_system 813
function mrcd:private/complex_cube/main

execute if block ~ ~ ~ chorus_plant[east=true] run function mrcd:private/types/chorus_plant/east
execute if block ~ ~ ~ chorus_plant[west=true] run function mrcd:private/types/chorus_plant/west
execute if block ~ ~ ~ chorus_plant[north=true] run function mrcd:private/types/chorus_plant/north
execute if block ~ ~ ~ chorus_plant[south=true] run function mrcd:private/types/chorus_plant/south
execute if block ~ ~ ~ chorus_plant[up=true] run function mrcd:private/types/chorus_plant/up
execute if block ~ ~ ~ chorus_plant[down=true] run function mrcd:private/types/chorus_plant/down

execute if entity @e[tag=mrcd_touch_mark] run tag @s add mrcd_touch_edge
execute if entity @e[tag=mrcd_touch_mark] run tag @s add mrcd_touch_edge_complex
tag @s add mrcd_block_collision_done