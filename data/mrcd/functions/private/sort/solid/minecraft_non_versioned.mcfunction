# Complex blocks
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ piston_head run function mrcd:private/types/piston_head/main
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ brewing_stand run function mrcd:private/types/brewing_stand
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ hopper run function mrcd:private/types/hopper/main
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ chorus_plant run function mrcd:private/types/chorus_plant/main
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ cauldron run function mrcd:private/types/cauldron

execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #walls run function mrcd:private/types/wall/main
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #fences run function mrcd:private/types/fence/main
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #beds run function mrcd:private/types/bed/main
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #anvil run function mrcd:private/types/anvil/main
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #stairs run function mrcd:private/types/stair/main

# Simple blocks
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ cocoa run function mrcd:private/types/cocoa/main
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ daylight_detector run function mrcd:private/types/daylight_detector
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ enchanting_table run function mrcd:private/types/enchanting_table
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ end_portal_frame run function mrcd:private/types/end_portal_frame
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ ladder run function mrcd:private/types/ladder/main
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ snow run function mrcd:private/types/snow
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ cactus run function mrcd:private/types/cactus
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ cake run function mrcd:private/types/cake
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ ender_chest run function mrcd:private/types/chest/main

execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #trapdoors run function mrcd:private/types/trapdoor/main
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #flower_pots run function mrcd:private/types/flower_pot
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #doors run function mrcd:private/types/door/main
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #slabs run function mrcd:private/types/slab/main

# 1.16 (+ Soul Lantern, Soul Campfire)
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ chain run function mrcd:private/types/chain

# 1.19 (+ Walls, Slabs, Stairs, Flower Pots)
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ sculk_shrieker run function mrcd:private/types/slab/bottom
