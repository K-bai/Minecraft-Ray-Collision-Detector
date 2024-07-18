# Global/Grouped: Seagrass, Tall Seagrass

# Complex blocks

# Simple blocks
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:wall_coral_like run function mrcd:private/types/1_13/wall_coral/main
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:coral_plant_like run function mrcd:private/types/1_13/coral_plant
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:coral_fan_like run function mrcd:private/types/1_13/coral_fan
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ kelp run function mrcd:private/types/1_13/kelp