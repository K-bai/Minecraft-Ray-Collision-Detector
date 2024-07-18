# Base
scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_y0 mrcd_system 125
scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y1 mrcd_system 109
scoreboard players set #box_z1 mrcd_system 1000
function mrcd:private/complex_cube/main

# Sides
scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_y0 mrcd_system 125
scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z1 mrcd_system 125
function mrcd:private/complex_cube/main

scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_y0 mrcd_system 125
scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 125
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z1 mrcd_system 1000
function mrcd:private/complex_cube/main

scoreboard players set #box_x0 mrcd_system 875
scoreboard players set #box_y0 mrcd_system 125
scoreboard players set #box_z0 mrcd_system 125
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z1 mrcd_system 1000
function mrcd:private/complex_cube/main

scoreboard players set #box_x0 mrcd_system 125
scoreboard players set #box_y0 mrcd_system 125
scoreboard players set #box_z0 mrcd_system 875
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z1 mrcd_system 1000
function mrcd:private/complex_cube/main

execute if block ~ ~ ~ composter[level=1] run function mrcd:private/types/1_14/composter/level/1
execute if block ~ ~ ~ composter[level=2] run function mrcd:private/types/1_14/composter/level/2
execute if block ~ ~ ~ composter[level=3] run function mrcd:private/types/1_14/composter/level/3
execute if block ~ ~ ~ composter[level=4] run function mrcd:private/types/1_14/composter/level/4
execute if block ~ ~ ~ composter[level=5] run function mrcd:private/types/1_14/composter/level/5
execute if block ~ ~ ~ composter[level=6] run function mrcd:private/types/1_14/composter/level/6
execute if block ~ ~ ~ composter[level=7] run function mrcd:private/types/1_14/composter/level/7
execute if block ~ ~ ~ composter[level=8] run function mrcd:private/types/1_14/composter/level/7

# Tags
execute if entity @e[tag=mrcd_touch_mark] run tag @s add mrcd_touch_edge
execute if entity @e[tag=mrcd_touch_mark] run tag @s add mrcd_touch_edge_complex

# Mark as calculated (enable skips in recurse)
