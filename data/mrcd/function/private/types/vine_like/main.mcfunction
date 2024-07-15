execute if block ~ ~ ~ #mrcd:vine_like[south=true] run function mrcd:private/types/vine_like/south
execute if block ~ ~ ~ #mrcd:vine_like[north=true] run function mrcd:private/types/vine_like/north
execute if block ~ ~ ~ #mrcd:vine_like[east=true] run function mrcd:private/types/vine_like/east
execute if block ~ ~ ~ #mrcd:vine_like[west=true] run function mrcd:private/types/vine_like/west
execute if block ~ ~ ~ #mrcd:vine_like[up=true] run function mrcd:private/types/vine_like/up
execute if block ~ ~ ~ #mrcd:vine_like[down=true] run function mrcd:private/types/vine_like/down

execute if entity @e[tag=mrcd_touch_mark] run tag @s add mrcd_touch_edge
execute if entity @e[tag=mrcd_touch_mark] run tag @s add mrcd_touch_edge_complex

tag @s add mrcd_block_collision_done