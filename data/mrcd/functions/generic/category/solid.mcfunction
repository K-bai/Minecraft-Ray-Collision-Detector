# 复杂方块 Complex blocks
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ #minecraft:walls run function mrcd:generic/types/wall
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ #mrcd:glass_pane_like run function mrcd:generic/types/glass_pane
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ #minecraft:fences run function mrcd:generic/types/fence
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ minecraft:scaffolding run function mrcd:generic/types/scaffolding
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ #minecraft:beds run function mrcd:generic/types/bed
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ #mrcd:piston run function mrcd:generic/types/piston
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ minecraft:piston_head run function mrcd:generic/types/piston_head
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ minecraft:brewing_stand run function mrcd:generic/types/brewing_stand
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ minecraft:cauldron run function mrcd:generic/types/cauldron
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ minecraft:grindstone run function mrcd:generic/types/grindstone
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ minecraft:bell run function mrcd:generic/types/bell
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ minecraft:lantern run function mrcd:generic/types/lantern
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ #minecraft:anvil run function mrcd:generic/types/anvil
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ minecraft:hopper run function mrcd:generic/types/hopper
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ minecraft:lectern run function mrcd:generic/types/lectern
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ minecraft:chorus_plant run function mrcd:generic/types/chorus_plant
# 简单方块 Simple blocks
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ minecraft:conduit run function mrcd:generic/types/conduit
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ minecraft:cocoa run function mrcd:generic/types/cocoa
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ minecraft:daylight_detector run function mrcd:generic/types/daylight_detector
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ minecraft:enchanting_table run function mrcd:generic/types/enchanting_table
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ minecraft:stonecutter run function mrcd:generic/types/stonecutter
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ minecraft:campfire run function mrcd:generic/types/campfire
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ minecraft:end_portal_frame run function mrcd:generic/types/end_portal_frame
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ minecraft:ladder run function mrcd:generic/types/ladder
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ minecraft:snow run function mrcd:generic/types/snow
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ minecraft:cactus run function mrcd:generic/types/cactus
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ minecraft:cake run function mrcd:generic/types/cake
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ minecraft:ender_chest run function mrcd:generic/types/chest
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ minecraft:bamboo run function mrcd:generic/types/bamboo
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ #minecraft:slabs run function mrcd:generic/types/slab
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ #minecraft:trapdoors run function mrcd:generic/types/trapdoor
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ #minecraft:flower_pots run function mrcd:generic/types/flower_pot
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ #minecraft:doors run function mrcd:generic/types/door
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ #minecraft:carpets run function mrcd:generic/types/carpet
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ #mrcd:repeater_like run function mrcd:generic/types/repeater
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ #mrcd:big_chest run function mrcd:generic/types/chest
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ #mrcd:fence_gate_like run function mrcd:generic/types/fence_gate
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ #mrcd:skull_like run function mrcd:generic/types/skull
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ #mrcd:wall_skull_like run function mrcd:generic/types/wall_skull
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ #mrcd:grass_path_like run function mrcd:generic/types/grass_path

# 特殊 Special blocks
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ #minecraft:stairs run function mrcd:generic/types/stair/main