execute if block ~ ~ ~ #minecraft:buttons[face=floor] run function mrcd:private/types/button/floor/main
execute if block ~ ~ ~ #minecraft:buttons[face=ceiling] run function mrcd:private/types/button/ceiling/main
execute if block ~ ~ ~ #minecraft:buttons[face=wall] run function mrcd:private/types/button/wall/main

function mrcd:private/cube/main
tag @s add mrcd_block_collision_done