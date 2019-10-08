# 复杂方块
execute if entity @s[tag=!wrnmd_detected] if block ~ ~ ~ #minecraft:walls run function wrnmd:generic/types/wall
execute if entity @s[tag=!wrnmd_detected] if block ~ ~ ~ #wrnmd:glass_pane_like run function wrnmd:generic/types/glass_pane
execute if entity @s[tag=!wrnmd_detected] if block ~ ~ ~ #minecraft:fences run function wrnmd:generic/types/fence
execute if entity @s[tag=!wrnmd_detected] if block ~ ~ ~ minecraft:scaffolding run function wrnmd:generic/types/scaffolding
execute if entity @s[tag=!wrnmd_detected] if block ~ ~ ~ #minecraft:beds run function wrnmd:generic/types/bed
execute if entity @s[tag=!wrnmd_detected] if block ~ ~ ~ #wrnmd:piston run function wrnmd:generic/types/piston
execute if entity @s[tag=!wrnmd_detected] if block ~ ~ ~ minecraft:piston_head run function wrnmd:generic/types/piston_head
execute if entity @s[tag=!wrnmd_detected] if block ~ ~ ~ minecraft:brewing_stand run function wrnmd:generic/types/brewing_stand
execute if entity @s[tag=!wrnmd_detected] if block ~ ~ ~ minecraft:cauldron run function wrnmd:generic/types/cauldron
execute if entity @s[tag=!wrnmd_detected] if block ~ ~ ~ minecraft:grindstone run function wrnmd:generic/types/grindstone
execute if entity @s[tag=!wrnmd_detected] if block ~ ~ ~ minecraft:bell run function wrnmd:generic/types/bell
execute if entity @s[tag=!wrnmd_detected] if block ~ ~ ~ minecraft:lantern run function wrnmd:generic/types/lantern
execute if entity @s[tag=!wrnmd_detected] if block ~ ~ ~ #minecraft:anvil run function wrnmd:generic/types/anvil
execute if entity @s[tag=!wrnmd_detected] if block ~ ~ ~ minecraft:hopper run function wrnmd:generic/types/hopper
execute if entity @s[tag=!wrnmd_detected] if block ~ ~ ~ minecraft:lectern run function wrnmd:generic/types/lectern
execute if entity @s[tag=!wrnmd_detected] if block ~ ~ ~ minecraft:chorus_plant run function wrnmd:generic/types/chorus_plant
# 简单方块
execute if entity @s[tag=!wrnmd_detected] if block ~ ~ ~ minecraft:conduit run function wrnmd:generic/types/conduit
execute if entity @s[tag=!wrnmd_detected] if block ~ ~ ~ minecraft:cocoa run function wrnmd:generic/types/cocoa
execute if entity @s[tag=!wrnmd_detected] if block ~ ~ ~ minecraft:daylight_detector run function wrnmd:generic/types/daylight_detector
execute if entity @s[tag=!wrnmd_detected] if block ~ ~ ~ minecraft:enchanting_table run function wrnmd:generic/types/enchanting_table
execute if entity @s[tag=!wrnmd_detected] if block ~ ~ ~ minecraft:stonecutter run function wrnmd:generic/types/stonecutter
execute if entity @s[tag=!wrnmd_detected] if block ~ ~ ~ minecraft:campfire run function wrnmd:generic/types/campfire
execute if entity @s[tag=!wrnmd_detected] if block ~ ~ ~ minecraft:end_portal_frame run function wrnmd:generic/types/end_portal_frame
execute if entity @s[tag=!wrnmd_detected] if block ~ ~ ~ minecraft:ladder run function wrnmd:generic/types/ladder
execute if entity @s[tag=!wrnmd_detected] if block ~ ~ ~ minecraft:snow run function wrnmd:generic/types/snow
execute if entity @s[tag=!wrnmd_detected] if block ~ ~ ~ minecraft:cactus run function wrnmd:generic/types/cactus
execute if entity @s[tag=!wrnmd_detected] if block ~ ~ ~ minecraft:cake run function wrnmd:generic/types/cake
execute if entity @s[tag=!wrnmd_detected] if block ~ ~ ~ minecraft:ender_chest run function wrnmd:generic/types/chest
execute if entity @s[tag=!wrnmd_detected] if block ~ ~ ~ #minecraft:slabs run function wrnmd:generic/types/slab
execute if entity @s[tag=!wrnmd_detected] if block ~ ~ ~ #minecraft:trapdoors run function wrnmd:generic/types/trapdoor
execute if entity @s[tag=!wrnmd_detected] if block ~ ~ ~ #minecraft:flower_pots run function wrnmd:generic/types/flower_pot
execute if entity @s[tag=!wrnmd_detected] if block ~ ~ ~ #minecraft:doors run function wrnmd:generic/types/door
execute if entity @s[tag=!wrnmd_detected] if block ~ ~ ~ #minecraft:carpets run function wrnmd:generic/types/carpet
execute if entity @s[tag=!wrnmd_detected] if block ~ ~ ~ #wrnmd:repeater_like run function wrnmd:generic/types/repeater
execute if entity @s[tag=!wrnmd_detected] if block ~ ~ ~ #wrnmd:big_chest run function wrnmd:generic/types/chest
execute if entity @s[tag=!wrnmd_detected] if block ~ ~ ~ #wrnmd:fence_gate_like run function wrnmd:generic/types/fence_gate
execute if entity @s[tag=!wrnmd_detected] if block ~ ~ ~ #wrnmd:skull_like run function wrnmd:generic/types/skull
execute if entity @s[tag=!wrnmd_detected] if block ~ ~ ~ #wrnmd:wall_skull_like run function wrnmd:generic/types/wall_skull
execute if entity @s[tag=!wrnmd_detected] if block ~ ~ ~ #wrnmd:grass_path_like run function wrnmd:generic/types/grass_path

# 特殊
execute if entity @s[tag=!wrnmd_detected] if block ~ ~ ~ #minecraft:stairs run function wrnmd:generic/types/stair/main