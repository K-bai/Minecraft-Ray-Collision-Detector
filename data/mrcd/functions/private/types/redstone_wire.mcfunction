scoreboard players set #box_x0 mrcd_system 188
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 188
scoreboard players set #box_x1 mrcd_system 813
scoreboard players set #box_y1 mrcd_system 63
scoreboard players set #box_z1 mrcd_system 813
execute if block ~ ~ ~ minecraft:redstone_wire run function mrcd:private/complex_cube/main

scoreboard players set #box_x0 mrcd_system 188
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 188
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y1 mrcd_system 63
scoreboard players set #box_z1 mrcd_system 813
execute if block ~ ~ ~ minecraft:redstone_wire[east=side] run function mrcd:private/complex_cube/main
execute if block ~ ~ ~ minecraft:redstone_wire[east=up] run function mrcd:private/complex_cube/main

scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 188
scoreboard players set #box_x1 mrcd_system 813
scoreboard players set #box_y1 mrcd_system 63
scoreboard players set #box_z1 mrcd_system 813
execute if block ~ ~ ~ minecraft:redstone_wire[west=side] run function mrcd:private/complex_cube/main
execute if block ~ ~ ~ minecraft:redstone_wire[west=up] run function mrcd:private/complex_cube/main

scoreboard players set #box_x0 mrcd_system 188
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 188
scoreboard players set #box_x1 mrcd_system 813
scoreboard players set #box_y1 mrcd_system 63
scoreboard players set #box_z1 mrcd_system 1000
execute if block ~ ~ ~ minecraft:redstone_wire[south=side] run function mrcd:private/complex_cube/main
execute if block ~ ~ ~ minecraft:redstone_wire[south=up] run function mrcd:private/complex_cube/main

scoreboard players set #box_x0 mrcd_system 188
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 813
scoreboard players set #box_y1 mrcd_system 63
scoreboard players set #box_z1 mrcd_system 813
execute if block ~ ~ ~ minecraft:redstone_wire[north=side] run function mrcd:private/complex_cube/main
execute if block ~ ~ ~ minecraft:redstone_wire[north=up] run function mrcd:private/complex_cube/main




scoreboard players set #box_x0 mrcd_system 938
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 188
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z1 mrcd_system 813
execute if block ~ ~ ~ minecraft:redstone_wire[east=up] run function mrcd:private/complex_cube/main

scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 188
scoreboard players set #box_x1 mrcd_system 63
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z1 mrcd_system 813
execute if block ~ ~ ~ minecraft:redstone_wire[west=up] run function mrcd:private/complex_cube/main

scoreboard players set #box_x0 mrcd_system 188
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 938
scoreboard players set #box_x1 mrcd_system 813
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z1 mrcd_system 1000
execute if block ~ ~ ~ minecraft:redstone_wire[south=up] run function mrcd:private/complex_cube/main

scoreboard players set #box_x0 mrcd_system 188
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 813
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z1 mrcd_system 63
execute if block ~ ~ ~ minecraft:redstone_wire[north=up] run function mrcd:private/complex_cube/main

execute if entity @e[tag=mrcd_touch_mark] run tag @s add mrcd_touch_edge
execute if entity @e[tag=mrcd_touch_mark] run tag @s add mrcd_touch_edge_complex


tag @s add mrcd_detected