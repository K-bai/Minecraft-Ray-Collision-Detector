scoreboard players set #box_x0 mrcd_system 344
scoreboard players set #box_y0 mrcd_system 188
scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 656
scoreboard players set #box_y1 mrcd_system 813
scoreboard players set #box_z1 mrcd_system 313
execute if block ~ ~ ~ #mrcd:wall_torch_like[facing=south] run function mrcd:private/cube/main

scoreboard players set #box_x0 mrcd_system 344
scoreboard players set #box_y0 mrcd_system 188
scoreboard players set #box_z0 mrcd_system 688
scoreboard players set #box_x1 mrcd_system 656
scoreboard players set #box_y1 mrcd_system 813
scoreboard players set #box_z1 mrcd_system 1000
execute if block ~ ~ ~ #mrcd:wall_torch_like[facing=north] run function mrcd:private/cube/main

scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_y0 mrcd_system 188
scoreboard players set #box_z0 mrcd_system 344
scoreboard players set #box_x1 mrcd_system 313
scoreboard players set #box_y1 mrcd_system 813
scoreboard players set #box_z1 mrcd_system 656
execute if block ~ ~ ~ #mrcd:wall_torch_like[facing=east] run function mrcd:private/cube/main

scoreboard players set #box_x0 mrcd_system 688
scoreboard players set #box_y0 mrcd_system 188
scoreboard players set #box_z0 mrcd_system 344
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y1 mrcd_system 813
scoreboard players set #box_z1 mrcd_system 656
execute if block ~ ~ ~ #mrcd:wall_torch_like[facing=west] run function mrcd:private/cube/main
tag @s add mrcd_detected