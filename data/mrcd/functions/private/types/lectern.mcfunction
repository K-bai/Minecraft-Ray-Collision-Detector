# 其他
scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_y1 mrcd_system 125
scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_z1 mrcd_system 1000
function mrcd:private/complex_cube/main
scoreboard players set #box_x0 mrcd_system 250
scoreboard players set #box_x1 mrcd_system 750
scoreboard players set #box_y0 mrcd_system 125
scoreboard players set #box_y1 mrcd_system 750
scoreboard players set #box_z0 mrcd_system 250
scoreboard players set #box_z1 mrcd_system 750
function mrcd:private/complex_cube/main




scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y0 mrcd_system 865
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z0 mrcd_system 334
scoreboard players set #box_z1 mrcd_system 875
execute if block ~ ~ ~ minecraft:lectern[facing=north] run function mrcd:private/complex_cube/main
scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y0 mrcd_system 729
scoreboard players set #box_y1 mrcd_system 865
scoreboard players set #box_z0 mrcd_system 63
scoreboard players set #box_z1 mrcd_system 605
execute if block ~ ~ ~ minecraft:lectern[facing=north] run function mrcd:private/complex_cube/main
scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y0 mrcd_system 458
scoreboard players set #box_y1 mrcd_system 729
scoreboard players set #box_z0 mrcd_system 63
scoreboard players set #box_z1 mrcd_system 334
execute if block ~ ~ ~ minecraft:lectern[facing=north] run function mrcd:private/complex_cube/main

scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y0 mrcd_system 865
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z0 mrcd_system 125
scoreboard players set #box_z1 mrcd_system 666
execute if block ~ ~ ~ minecraft:lectern[facing=south] run function mrcd:private/complex_cube/main
scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y0 mrcd_system 729
scoreboard players set #box_y1 mrcd_system 865
scoreboard players set #box_z0 mrcd_system 395
scoreboard players set #box_z1 mrcd_system 938
execute if block ~ ~ ~ minecraft:lectern[facing=south] run function mrcd:private/complex_cube/main
scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y0 mrcd_system 458
scoreboard players set #box_y1 mrcd_system 729
scoreboard players set #box_z0 mrcd_system 666
scoreboard players set #box_z1 mrcd_system 938
execute if block ~ ~ ~ minecraft:lectern[facing=south] run function mrcd:private/complex_cube/main

scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_z1 mrcd_system 1000
scoreboard players set #box_y0 mrcd_system 865
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_x0 mrcd_system 334
scoreboard players set #box_x1 mrcd_system 875
execute if block ~ ~ ~ minecraft:lectern[facing=west] run function mrcd:private/complex_cube/main
scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_z1 mrcd_system 1000
scoreboard players set #box_y0 mrcd_system 729
scoreboard players set #box_y1 mrcd_system 865
scoreboard players set #box_x0 mrcd_system 63
scoreboard players set #box_x1 mrcd_system 605
execute if block ~ ~ ~ minecraft:lectern[facing=west] run function mrcd:private/complex_cube/main
scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_z1 mrcd_system 1000
scoreboard players set #box_y0 mrcd_system 458
scoreboard players set #box_y1 mrcd_system 729
scoreboard players set #box_x0 mrcd_system 63
scoreboard players set #box_x1 mrcd_system 334
execute if block ~ ~ ~ minecraft:lectern[facing=west] run function mrcd:private/complex_cube/main

scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_z1 mrcd_system 1000
scoreboard players set #box_y0 mrcd_system 865
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_x0 mrcd_system 125
scoreboard players set #box_x1 mrcd_system 666
execute if block ~ ~ ~ minecraft:lectern[facing=east] run function mrcd:private/complex_cube/main
scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_z1 mrcd_system 1000
scoreboard players set #box_y0 mrcd_system 729
scoreboard players set #box_y1 mrcd_system 865
scoreboard players set #box_x0 mrcd_system 395
scoreboard players set #box_x1 mrcd_system 938
execute if block ~ ~ ~ minecraft:lectern[facing=east] run function mrcd:private/complex_cube/main
scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_z1 mrcd_system 1000
scoreboard players set #box_y0 mrcd_system 458
scoreboard players set #box_y1 mrcd_system 729
scoreboard players set #box_x0 mrcd_system 666
scoreboard players set #box_x1 mrcd_system 938
execute if block ~ ~ ~ minecraft:lectern[facing=east] run function mrcd:private/complex_cube/main

execute if entity @e[tag=mrcd_touch_mark] run tag @s add mrcd_touch_edge
execute if entity @e[tag=mrcd_touch_mark] run tag @s add mrcd_touch_edge_complex

tag @s add mrcd_block_collision_done