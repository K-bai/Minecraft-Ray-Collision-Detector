# Complex blocks
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ redstone_wire run function mrcd:private/types/redstone_wire/main

# Simple blocks
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ beetroots run function mrcd:private/types/beetroots
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ nether_wart run function mrcd:private/types/nether_wart
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ lever run function mrcd:private/types/lever/main
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ tripwire_hook run function mrcd:private/types/tripwire_hook/main
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ lily_pad run function mrcd:private/types/lily_pad
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ wheat run function mrcd:private/types/wheat
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ sugar_cane run function mrcd:private/types/sugar_cane
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ tripwire run function mrcd:private/types/tripwire

execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #wall_signs run function mrcd:private/types/wall_sign/main
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #buttons run function mrcd:private/types/button/main
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #rails run function mrcd:private/types/rail
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #small_flowers run function mrcd:private/types/flower
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #pressure_plates run function mrcd:private/types/pressure_plate
