execute if block ~ ~ ~ lever[face=floor] run function mrcd:private/types/lever/floor/main
execute if block ~ ~ ~ lever[face=ceiling] run function mrcd:private/types/lever/ceiling/main
execute if block ~ ~ ~ lever[face=wall] run function mrcd:private/types/lever/wall/main

function mrcd:private/cube/main
tag @s add mrcd_block_collision_done