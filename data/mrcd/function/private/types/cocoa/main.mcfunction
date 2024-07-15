execute if block ~ ~ ~ cocoa[facing=north] run function mrcd:private/types/cocoa/north/main
execute if block ~ ~ ~ cocoa[facing=south] run function mrcd:private/types/cocoa/south/main
execute if block ~ ~ ~ cocoa[facing=east] run function mrcd:private/types/cocoa/east/main
execute if block ~ ~ ~ cocoa[facing=west] run function mrcd:private/types/cocoa/west/main
function mrcd:private/cube/main

tag @s add mrcd_block_collision_done