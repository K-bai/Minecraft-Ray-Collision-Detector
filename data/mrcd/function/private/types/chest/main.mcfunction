scoreboard players set #box_x0 mrcd_system 63
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 63
scoreboard players set #box_x1 mrcd_system 938
scoreboard players set #box_y1 mrcd_system 875
scoreboard players set #box_z1 mrcd_system 938

execute if block ~ ~ ~ #mrcd:big_chest[type=right] run function mrcd:private/types/chest/big/right
execute if block ~ ~ ~ #mrcd:big_chest[type=left] run function mrcd:private/types/chest/big/left

function mrcd:private/cube/main
