# Complex blocks
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:glass_pane_like run function mrcd:private/types/glass_pane
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:piston run function mrcd:private/types/piston
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:lanterns run function mrcd:private/types/lanterns

# Simple blocks
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:campfires run function mrcd:private/types/campfires
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:carpet_like run function mrcd:private/types/carpet
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:repeater_like run function mrcd:private/types/repeater
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:big_chest run function mrcd:private/types/chest
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:fence_gate_like run function mrcd:private/types/fence_gate
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:skull_like run function mrcd:private/types/skull
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:wall_skull_like run function mrcd:private/types/wall_skull
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:grass_path_like run function mrcd:private/types/grass_path
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:rod_like run function mrcd:private/types/rod/main