execute if block ~ ~ ~ #minecraft:slabs[type=top] run function mrcd:private/types/slab/top
execute if block ~ ~ ~ #minecraft:slabs[type=bottom] run function mrcd:private/types/slab/bottom
execute if block ~ ~ ~ #minecraft:slabs[type=double] run function mrcd:private/types/slab/double
tag @s add mrcd_block_collision_done
