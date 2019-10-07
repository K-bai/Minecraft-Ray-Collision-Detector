scoreboard players set #box_x0 wrnmd_system 344
scoreboard players set #box_y0 wrnmd_system 188
scoreboard players set #box_z0 wrnmd_system 0
scoreboard players set #box_x1 wrnmd_system 656
scoreboard players set #box_y1 wrnmd_system 813
scoreboard players set #box_z1 wrnmd_system 313
execute if block ~ ~ ~ #wrnmd:wall_torch_like[facing=south] run function wrnmd:block/cube/main

scoreboard players set #box_x0 wrnmd_system 344
scoreboard players set #box_y0 wrnmd_system 188
scoreboard players set #box_z0 wrnmd_system 688
scoreboard players set #box_x1 wrnmd_system 656
scoreboard players set #box_y1 wrnmd_system 813
scoreboard players set #box_z1 wrnmd_system 1000
execute if block ~ ~ ~ #wrnmd:wall_torch_like[facing=north] run function wrnmd:block/cube/main

scoreboard players set #box_x0 wrnmd_system 0
scoreboard players set #box_y0 wrnmd_system 188
scoreboard players set #box_z0 wrnmd_system 344
scoreboard players set #box_x1 wrnmd_system 313
scoreboard players set #box_y1 wrnmd_system 813
scoreboard players set #box_z1 wrnmd_system 656
execute if block ~ ~ ~ #wrnmd:wall_torch_like[facing=east] run function wrnmd:block/cube/main

scoreboard players set #box_x0 wrnmd_system 688
scoreboard players set #box_y0 wrnmd_system 188
scoreboard players set #box_z0 wrnmd_system 344
scoreboard players set #box_x1 wrnmd_system 1000
scoreboard players set #box_y1 wrnmd_system 813
scoreboard players set #box_z1 wrnmd_system 656
execute if block ~ ~ ~ #wrnmd:wall_torch_like[facing=west] run function wrnmd:block/cube/main