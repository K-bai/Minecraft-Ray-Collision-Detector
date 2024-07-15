execute if block ~ ~ ~ piston_head[facing=north] run function mrcd:private/types/piston_head/north
execute if block ~ ~ ~ piston_head[facing=south] run function mrcd:private/types/piston_head/south
execute if block ~ ~ ~ piston_head[facing=west] run function mrcd:private/types/piston_head/west
execute if block ~ ~ ~ piston_head[facing=east] run function mrcd:private/types/piston_head/east
execute if block ~ ~ ~ piston_head[facing=down] run function mrcd:private/types/piston_head/down
execute if block ~ ~ ~ piston_head[facing=up] run function mrcd:private/types/piston_head/up

execute if entity @e[tag=mrcd_touch_mark] run tag @s add mrcd_touch_edge
execute if entity @e[tag=mrcd_touch_mark] run tag @s add mrcd_touch_edge_complex

tag @s add mrcd_block_collision_done