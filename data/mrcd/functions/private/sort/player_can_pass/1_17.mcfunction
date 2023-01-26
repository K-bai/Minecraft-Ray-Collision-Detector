# Global/Grouped: Glow Lichen

# Complex blocks

# Simple blocks
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ small_dripleaf run function mrcd:private/types/1_17/small_dripleaf
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ big_dripleaf_stem run function mrcd:private/types/1_17/big_dripleaf_stem/main
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ spore_blossom run function mrcd:private/types/1_17/spore_blossom
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ hanging_roots run function mrcd:private/types/hanging_roots

execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #cave_vines run function mrcd:private/types/1_17/cave_vines