execute if block ~ ~ ~ pointed_dripstone[thickness=base] run function mrcd:private/types/1_17/pointed_dripstone/base
execute if block ~ ~ ~ pointed_dripstone[thickness=middle] run function mrcd:private/types/1_17/pointed_dripstone/middle
execute if block ~ ~ ~ pointed_dripstone[thickness=frustum] run function mrcd:private/types/1_17/pointed_dripstone/frustum
execute if block ~ ~ ~ pointed_dripstone[thickness=tip_merge] run function mrcd:private/types/1_17/pointed_dripstone/tip_merge
execute if block ~ ~ ~ pointed_dripstone[thickness=tip,vertical_direction=up] run function mrcd:private/types/1_17/pointed_dripstone/tip_up
execute if block ~ ~ ~ pointed_dripstone[thickness=tip,vertical_direction=down] run function mrcd:private/types/1_17/pointed_dripstone/tip_down

scoreboard players operation #var0 mrcd_system = #block_corner_x mrcd_system
scoreboard players operation #var1 mrcd_system = #block_corner_z mrcd_system
scoreboard players operation #var0 mrcd_system /= #1000 mrcd_system
scoreboard players operation #var1 mrcd_system /= #1000 mrcd_system
function mrcd:private/calculate/offset
scoreboard players operation #box_x0 mrcd_system += #var0 mrcd_system
scoreboard players operation #box_x1 mrcd_system += #var0 mrcd_system
scoreboard players operation #box_z0 mrcd_system += #var1 mrcd_system
scoreboard players operation #box_z1 mrcd_system += #var1 mrcd_system

function mrcd:private/cube/main

