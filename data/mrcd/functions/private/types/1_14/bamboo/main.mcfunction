scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_y1 mrcd_system 1000

scoreboard players operation #var0 mrcd_system = #block_corner_x mrcd_system
scoreboard players operation #var1 mrcd_system = #block_corner_z mrcd_system
scoreboard players operation #var0 mrcd_system /= #1000 mrcd_system
scoreboard players operation #var1 mrcd_system /= #1000 mrcd_system
function mrcd:private/calculate/offset

execute if block ~ ~ ~ bamboo[leaves=none] run function mrcd:private/types/1_14/bamboo/small
execute if block ~ ~ ~ bamboo[leaves=small] run function mrcd:private/types/1_14/bamboo/small
execute if block ~ ~ ~ bamboo[leaves=large] run function mrcd:private/types/1_14/bamboo/large

tag @s add mrcd_block_collision_done
