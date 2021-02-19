execute if block ~ ~ ~ pointed_dripstone[thickness=base] run function mrcd:private/types/pointed_dripstone/base
execute if block ~ ~ ~ pointed_dripstone[thickness=middle] run function mrcd:private/types/pointed_dripstone/middle
execute if block ~ ~ ~ pointed_dripstone[thickness=frustum] run function mrcd:private/types/pointed_dripstone/frustum
execute if block ~ ~ ~ pointed_dripstone[thickness=tip_merge] run function mrcd:private/types/pointed_dripstone/tip_merge
execute if block ~ ~ ~ pointed_dripstone[thickness=tip,vertical_direction=up] run function mrcd:private/types/pointed_dripstone/tip_up
execute if block ~ ~ ~ pointed_dripstone[thickness=tip,vertical_direction=down] run function mrcd:private/types/pointed_dripstone/tip_down

# Offset not implemeted

function mrcd:private/cube/main
tag @s add mrcd_detected
