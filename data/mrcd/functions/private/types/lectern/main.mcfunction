# Shared base
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
scoreboard players set #box_y1 mrcd_system 875
scoreboard players set #box_z0 mrcd_system 250
scoreboard players set #box_z1 mrcd_system 750
function mrcd:private/complex_cube/main

# Rotation dependant
execute if block ~ ~ ~ minecraft:lectern[facing=north] run function mrcd:private/types/lectern/north
execute if block ~ ~ ~ minecraft:lectern[facing=south] run function mrcd:private/types/lectern/south
execute if block ~ ~ ~ minecraft:lectern[facing=east] run function mrcd:private/types/lectern/east
execute if block ~ ~ ~ minecraft:lectern[facing=west] run function mrcd:private/types/lectern/west

# Tags
execute if entity @e[tag=mrcd_touch_mark] run tag @s add mrcd_touch_edge
execute if entity @e[tag=mrcd_touch_mark] run tag @s add mrcd_touch_edge_complex

# Mark as calculated (enable skips in recurse)
tag @s add mrcd_block_collision_done