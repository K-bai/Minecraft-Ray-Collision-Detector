execute if block ~ ~ ~ fire[up=false,north=false,south=false,east=false,west=false] run function mrcd:private/types/fire/down
execute if block ~ ~ ~ fire[south=true] run function mrcd:private/types/fire/south
execute if block ~ ~ ~ fire[north=true] run function mrcd:private/types/fire/north
execute if block ~ ~ ~ fire[east=true] run function mrcd:private/types/fire/east
execute if block ~ ~ ~ fire[west=true] run function mrcd:private/types/fire/west
execute if block ~ ~ ~ fire[up=true] run function mrcd:private/types/fire/up

execute if entity @e[tag=mrcd_touch_mark] run tag @s add mrcd_touch_edge
execute if entity @e[tag=mrcd_touch_mark] run tag @s add mrcd_touch_edge_complex

tag @s add mrcd_block_collision_done