# Global/Grouped: Soul torch, Blackstone Presureplate and button

# Complex blocks

# Simple blocks
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ nether_sprouts run function mrcd:private/types/1_16/sprouts
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ soul_fire run function mrcd:private/types/1_16/soul_fire
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ twisting_vines run function mrcd:private/types/1_16/twisting_vines
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ twisting_vines_plant run function mrcd:private/types/1_16/twisting_vines_plant
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ weeping_vines run function mrcd:private/types/1_16/weeping_vines
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ weeping_vines_plant run function mrcd:private/types/1_16/weeping_vines_plant

execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:fungus run function mrcd:private/types/1_16/fungus
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:roots run function mrcd:private/types/1_16/roots
