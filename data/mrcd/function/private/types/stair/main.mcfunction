execute if block ~ ~ ~ #minecraft:stairs[half=top] run function mrcd:private/types/stair/top
execute if block ~ ~ ~ #minecraft:stairs[half=bottom] run function mrcd:private/types/stair/bottom
execute if block ~ ~ ~ #minecraft:stairs[facing=east] run function mrcd:private/types/stair/east/main
execute if block ~ ~ ~ #minecraft:stairs[facing=west] run function mrcd:private/types/stair/west/main
execute if block ~ ~ ~ #minecraft:stairs[facing=north] run function mrcd:private/types/stair/north/main
execute if block ~ ~ ~ #minecraft:stairs[facing=south] run function mrcd:private/types/stair/south/main

execute if entity @e[tag=mrcd_touch_mark] run tag @s add mrcd_touch_edge
execute if entity @e[tag=mrcd_touch_mark] run tag @s add mrcd_touch_edge_complex

