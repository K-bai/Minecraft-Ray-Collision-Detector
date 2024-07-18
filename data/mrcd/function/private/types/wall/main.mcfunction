execute if block ~ ~ ~ #minecraft:walls[up=true] run function mrcd:private/types/wall/up
execute if block ~ ~ ~ #minecraft:walls[east=low] run function mrcd:private/types/wall/east/low
execute if block ~ ~ ~ #minecraft:walls[east=tall] run function mrcd:private/types/wall/east/tall
execute if block ~ ~ ~ #minecraft:walls[west=low] run function mrcd:private/types/wall/west/low
execute if block ~ ~ ~ #minecraft:walls[west=tall] run function mrcd:private/types/wall/west/tall
execute if block ~ ~ ~ #minecraft:walls[north=low] run function mrcd:private/types/wall/north/low
execute if block ~ ~ ~ #minecraft:walls[north=tall] run function mrcd:private/types/wall/north/tall
execute if block ~ ~ ~ #minecraft:walls[south=low] run function mrcd:private/types/wall/south/low
execute if block ~ ~ ~ #minecraft:walls[south=tall] run function mrcd:private/types/wall/south/tall

execute if entity @e[tag=mrcd_touch_mark] run tag @s add mrcd_touch_edge
execute if entity @e[tag=mrcd_touch_mark] run tag @s add mrcd_touch_edge_complex
