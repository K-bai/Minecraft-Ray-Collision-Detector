scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y0 mrcd_system 625
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_z1 mrcd_system 1000
function mrcd:private/complex_cube/main

scoreboard players set #box_x0 mrcd_system 250
scoreboard players set #box_x1 mrcd_system 750
scoreboard players set #box_y0 mrcd_system 250
scoreboard players set #box_y1 mrcd_system 625
scoreboard players set #box_z0 mrcd_system 250
scoreboard players set #box_z1 mrcd_system 750
function mrcd:private/complex_cube/main

execute if block ~ ~ ~ hopper[facing=down] run function mrcd:private/types/hopper/facing/down
execute if block ~ ~ ~ hopper[facing=north] run function mrcd:private/types/hopper/facing/north
execute if block ~ ~ ~ hopper[facing=south] run function mrcd:private/types/hopper/facing/south
execute if block ~ ~ ~ hopper[facing=east] run function mrcd:private/types/hopper/facing/east
execute if block ~ ~ ~ hopper[facing=west] run function mrcd:private/types/hopper/facing/west
function mrcd:private/complex_cube/main

execute if entity @e[tag=mrcd_touch_mark] run tag @s add mrcd_touch_edge
execute if entity @e[tag=mrcd_touch_mark] run tag @s add mrcd_touch_edge_complex

