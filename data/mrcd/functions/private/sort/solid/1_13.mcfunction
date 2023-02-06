# Global/Grouped: Stairs, Slabs

# Complex blocks

# Simple blocks
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ conduit run function mrcd:private/types/1_13/conduit
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ sea_pickle run function mrcd:private/types/1_13/sea_pickle/main
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ turtle_egg run function mrcd:private/types/1_13/turtle_egg/main