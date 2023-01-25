# Complex blocks
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ scaffolding run function mrcd:private/types/scaffolding
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ piston_head run function mrcd:private/types/piston_head
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ brewing_stand run function mrcd:private/types/brewing_stand
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ grindstone run function mrcd:private/types/grindstone
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ bell run function mrcd:private/types/bell
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ hopper run function mrcd:private/types/hopper
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ lectern run function mrcd:private/types/lectern
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ chorus_plant run function mrcd:private/types/chorus_plant
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ cauldron run function mrcd:private/types/cauldron

execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #walls run function mrcd:private/types/wall
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #fences run function mrcd:private/types/fence
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #beds run function mrcd:private/types/bed
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #anvil run function mrcd:private/types/anvil/main
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #stairs run function mrcd:private/types/stair/main

execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:glass_pane_like run function mrcd:private/types/glass_pane
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:piston run function mrcd:private/types/piston
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:lanterns run function mrcd:private/types/lanterns

# Simple blocks
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ conduit run function mrcd:private/types/conduit
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ cocoa run function mrcd:private/types/cocoa
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ daylight_detector run function mrcd:private/types/daylight_detector
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ enchanting_table run function mrcd:private/types/enchanting_table
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ stonecutter run function mrcd:private/types/stonecutter
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ end_portal_frame run function mrcd:private/types/end_portal_frame
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ ladder run function mrcd:private/types/ladder
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ snow run function mrcd:private/types/snow
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ cactus run function mrcd:private/types/cactus
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ cake run function mrcd:private/types/cake
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ ender_chest run function mrcd:private/types/chest
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ bamboo run function mrcd:private/types/bamboo
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ turtle_egg run function mrcd:private/types/turtle_egg/main

execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #trapdoors run function mrcd:private/types/trapdoor
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #flower_pots run function mrcd:private/types/flower_pot
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #doors run function mrcd:private/types/door
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #slabs run function mrcd:private/types/slab

execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:campfires run function mrcd:private/types/campfires
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:carpet_like run function mrcd:private/types/carpet
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:repeater_like run function mrcd:private/types/repeater
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:big_chest run function mrcd:private/types/chest
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:fence_gate_like run function mrcd:private/types/fence_gate
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:skull_like run function mrcd:private/types/skull
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:wall_skull_like run function mrcd:private/types/wall_skull
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:grass_path_like run function mrcd:private/types/grass_path
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:rod_like run function mrcd:private/types/rod/main


# 1.16 (+ Soul Lantern, Soul Campfire)
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ chain run function mrcd:private/types/chain

# 1.17
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:solid/1_17 run function mrcd:private/sort/solid/1_17

# 1.19 Walls, Slabs, Stairs, Flower Pots
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ sculk_shrieker run function mrcd:private/types/1_17/sculk_sensor
