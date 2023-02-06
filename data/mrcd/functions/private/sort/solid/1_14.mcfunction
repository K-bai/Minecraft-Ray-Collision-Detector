# Global/Grouped: Lantern, Slabs, Stairs, Walls, Flower Pots

# Complex blocks
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ bell run function mrcd:private/types/1_14/bell/main
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ composter run function mrcd:private/types/1_14/composter/main
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ grindstone run function mrcd:private/types/1_14/grindstone/main
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ lectern run function mrcd:private/types/1_14/lectern/main
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ scaffolding run function mrcd:private/types/1_14/scaffolding/main

# Simple blocks
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ bamboo run function mrcd:private/types/1_14/bamboo/main
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ stonecutter run function mrcd:private/types/1_14/stonecutter