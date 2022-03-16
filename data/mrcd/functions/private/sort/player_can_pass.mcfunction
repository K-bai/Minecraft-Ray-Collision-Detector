# Complex blocks
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ redstone_wire run function mrcd:private/types/redstone_wire

execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ #mrcd:vine_like run function mrcd:private/types/vine_like

# Simple blocks
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ beetroots run function mrcd:private/types/beetroots
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ nether_wart run function mrcd:private/types/nether_wart
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ kelp run function mrcd:private/types/kelp
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ lever run function mrcd:private/types/lever
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ tripwire_hook run function mrcd:private/types/tripwire_hook
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ lily_pad run function mrcd:private/types/lily_pad
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ wheat run function mrcd:private/types/wheat
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ sugar_cane run function mrcd:private/types/sugar_cane
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ sweet_berry_bush run function mrcd:private/types/sweet_berry_bush
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ tripwire run function mrcd:private/types/tripwire
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ bamboo_sapling run function mrcd:private/types/bamboo_sapling

execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ #wall_signs run function mrcd:private/types/wall_sign
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ #buttons run function mrcd:private/types/button
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ #rails run function mrcd:private/types/rail

execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ #mrcd:pressure_plate_like run function mrcd:private/types/pressure_plate
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ #mrcd:standing_sign_like run function mrcd:private/types/standing_sign
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ #mrcd:attached_melon_stem_like run function mrcd:private/types/attached_melon_stem
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ #mrcd:melon_stem_like run function mrcd:private/types/melon_stem
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ #mrcd:wall_torches run function mrcd:private/types/wall_torch
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ #mrcd:torches run function mrcd:private/types/torch
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ #mrcd:wall_coral_like run function mrcd:private/types/wall_coral
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ #mrcd:coral_plant_like run function mrcd:private/types/coral_plant
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ #mrcd:coral_fan_like run function mrcd:private/types/coral_fan
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ #mrcd:grass_like run function mrcd:private/types/grass
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ #mrcd:sapling_like run function mrcd:private/types/sapling
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ #mrcd:wall_banner_like run function mrcd:private/types/wall_banner
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ #mrcd:carrots_like run function mrcd:private/types/carrots
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ #mrcd:mushroom run function mrcd:private/types/mushroom

# 1.15
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ #small_flowers run function mrcd:private/types/flower

# 1.16
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ #mrcd:player_can_pass/1_16 run function mrcd:private/sort/player_can_pass/1_16

# 1.17
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ #mrcd:player_can_pass/1_17 run function mrcd:private/sort/player_can_pass/1_17
