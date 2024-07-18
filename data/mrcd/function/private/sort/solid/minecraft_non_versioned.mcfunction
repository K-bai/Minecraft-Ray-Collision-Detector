# Complex blocks
execute if block ~ ~ ~ piston_head run return run function mrcd:private/types/piston_head/main
execute if block ~ ~ ~ brewing_stand run return run function mrcd:private/types/brewing_stand
execute if block ~ ~ ~ hopper run return run function mrcd:private/types/hopper/main
execute if block ~ ~ ~ chorus_plant run return run function mrcd:private/types/chorus_plant/main
execute if block ~ ~ ~ cauldron run return run function mrcd:private/types/cauldron

execute if block ~ ~ ~ #walls run return run function mrcd:private/types/wall/main
execute if block ~ ~ ~ #fences run return run function mrcd:private/types/fence/main
execute if block ~ ~ ~ #beds run return run function mrcd:private/types/bed/main
execute if block ~ ~ ~ #anvil run return run function mrcd:private/types/anvil/main
execute if block ~ ~ ~ #stairs run return run function mrcd:private/types/stair/main

# Simple blocks
execute if block ~ ~ ~ cocoa run return run function mrcd:private/types/cocoa/main
execute if block ~ ~ ~ daylight_detector run return run function mrcd:private/types/daylight_detector
execute if block ~ ~ ~ enchanting_table run return run function mrcd:private/types/enchanting_table
execute if block ~ ~ ~ end_portal_frame run return run function mrcd:private/types/end_portal_frame
execute if block ~ ~ ~ ladder run return run function mrcd:private/types/ladder/main
execute if block ~ ~ ~ snow run return run function mrcd:private/types/snow
execute if block ~ ~ ~ cactus run return run function mrcd:private/types/cactus
execute if block ~ ~ ~ cake run return run function mrcd:private/types/cake
execute if block ~ ~ ~ ender_chest run return run function mrcd:private/types/chest/main

execute if block ~ ~ ~ #trapdoors run return run function mrcd:private/types/trapdoor/main
execute if block ~ ~ ~ #flower_pots run return run function mrcd:private/types/flower_pot
execute if block ~ ~ ~ #doors run return run function mrcd:private/types/door/main
execute if block ~ ~ ~ #slabs run return run function mrcd:private/types/slab/main
execute if block ~ ~ ~ #campfires run return run function mrcd:private/types/campfires

# 1.16 (+ Soul Lantern, Soul Campfire)
execute if block ~ ~ ~ chain run return run function mrcd:private/types/chain/main

# 1.19 (+ Walls, Slabs, Stairs, Flower Pots)
execute if block ~ ~ ~ sculk_shrieker run return run function mrcd:private/types/slab/bottom