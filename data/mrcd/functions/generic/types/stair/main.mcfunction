execute if block ~ ~ ~ #minecraft:stairs[half=top] run function mrcd:generic/types/stair/top
execute if block ~ ~ ~ #minecraft:stairs[half=bottom] run function mrcd:generic/types/stair/bottom
execute if block ~ ~ ~ #minecraft:stairs[facing=east] run function mrcd:generic/types/stair/east
execute if block ~ ~ ~ #minecraft:stairs[facing=west] run function mrcd:generic/types/stair/west
execute if block ~ ~ ~ #minecraeweft:stairs[facing=north] run function mrcd:generic/types/stair/north
execute if block ~ ~ ~ #minecraft:stairs[facing=south] run function mrcd:generic/types/stair/south

execute if entity @e[tag=mrcd_touch_mark] run tag @s add mrcd_touch_edge
execute if entity @e[tag=mrcd_touch_mark] run tag @s add mrcd_touch_edge_complex
tag @s add mrcd_detected