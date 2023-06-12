# Global/Grouped: Stairs, Slabs, Fences, Trapdors

# Complex blocks

# Simple blocks
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ sniffer_egg run function mrcd:private/types/1_20/sniffer_egg
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ calibrated_sculk_sensor run function mrcd:private/types/slab/bottom
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ decorated_pot run function mrcd:private/types/1_20/decorated_pot
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ piglin_head run function mrcd:private/types/1_20/piglin_head
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ piglin_wall_head run function mrcd:private/types/1_20/piglin_wall_head/main
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #wall_hanging_signs run function mrcd:private/types/1_20/wall_hanging_signs/main