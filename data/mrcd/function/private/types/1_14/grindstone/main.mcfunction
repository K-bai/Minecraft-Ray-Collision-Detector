execute if block ~ ~ ~ grindstone[face=floor] run function mrcd:private/types/1_14/grindstone/floor/main
execute if block ~ ~ ~ grindstone[face=ceiling] run function mrcd:private/types/1_14/grindstone/ceiling/main
execute if block ~ ~ ~ grindstone[face=wall] run function mrcd:private/types/1_14/grindstone/wall/main

execute if entity @e[tag=mrcd_touch_mark] run tag @s add mrcd_touch_edge
execute if entity @e[tag=mrcd_touch_mark] run tag @s add mrcd_touch_edge_complex

