# Complex blocks
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:vine_like run function mrcd:private/types/vine_like

# Simple blocks
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:pressure_plate_like run function mrcd:private/types/pressure_plate
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:standing_sign_like run function mrcd:private/types/standing_sign
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:attached_melon_stem_like run function mrcd:private/types/attached_melon_stem
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:melon_stem_like run function mrcd:private/types/melon_stem
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:wall_torches run function mrcd:private/types/wall_torch
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:torches run function mrcd:private/types/torch
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:grass_like run function mrcd:private/types/grass
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:sapling_like run function mrcd:private/types/sapling
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:wall_banner_like run function mrcd:private/types/wall_banner
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:carrots_like run function mrcd:private/types/carrots
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:mushroom run function mrcd:private/types/mushroom