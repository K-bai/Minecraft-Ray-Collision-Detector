execute if block ~ ~ ~ #mrcd:piston[extended=true] run function mrcd:private/types/piston/extended/main
execute if block ~ ~ ~ #mrcd:piston[extended=false] run function mrcd:private/types/piston/no_extended

execute if entity @e[tag=mrcd_touch_mark] run tag @s add mrcd_touch_edge
execute if entity @e[tag=mrcd_touch_mark] run tag @s add mrcd_touch_edge_complex


tag @s add mrcd_block_collision_done