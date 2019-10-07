scoreboard players set #box_x0 wrnmd_system 0
scoreboard players set #box_y0 wrnmd_system 0
scoreboard players set #box_z0 wrnmd_system 375
scoreboard players set #box_x1 wrnmd_system 1000
scoreboard players set #box_y1 wrnmd_system 812
scoreboard players set #box_z1 wrnmd_system 625
execute if block ~ ~ ~ #wrnmd:fence_gate_like[facing=north] run function wrnmd:block/cube/main
execute if block ~ ~ ~ #wrnmd:fence_gate_like[facing=south] run function wrnmd:block/cube/main

scoreboard players set #box_x0 wrnmd_system 375
scoreboard players set #box_y0 wrnmd_system 0
scoreboard players set #box_z0 wrnmd_system 0
scoreboard players set #box_x1 wrnmd_system 625
scoreboard players set #box_y1 wrnmd_system 812
scoreboard players set #box_z1 wrnmd_system 1000
execute if block ~ ~ ~ #wrnmd:fence_gate_like[facing=east] run function wrnmd:block/cube/main
execute if block ~ ~ ~ #wrnmd:fence_gate_like[facing=west] run function wrnmd:block/cube/main
