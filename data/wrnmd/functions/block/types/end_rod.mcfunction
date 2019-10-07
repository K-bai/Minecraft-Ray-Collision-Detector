scoreboard players set #box_x0 wrnmd_system 375
scoreboard players set #box_y0 wrnmd_system 0
scoreboard players set #box_z0 wrnmd_system 375
scoreboard players set #box_x1 wrnmd_system 625
scoreboard players set #box_y1 wrnmd_system 1000
scoreboard players set #box_z1 wrnmd_system 625
execute if block ~ ~ ~ minecraft:end_rod[facing=up] run function wrnmd:block/cube/main
execute if block ~ ~ ~ minecraft:end_rod[facing=down] run function wrnmd:block/cube/main

scoreboard players set #box_x0 wrnmd_system 0
scoreboard players set #box_y0 wrnmd_system 375
scoreboard players set #box_z0 wrnmd_system 375
scoreboard players set #box_x1 wrnmd_system 1000
scoreboard players set #box_y1 wrnmd_system 625
scoreboard players set #box_z1 wrnmd_system 625
execute if block ~ ~ ~ minecraft:end_rod[facing=east] run function wrnmd:block/cube/main
execute if block ~ ~ ~ minecraft:end_rod[facing=west] run function wrnmd:block/cube/main

scoreboard players set #box_x0 wrnmd_system 375
scoreboard players set #box_y0 wrnmd_system 375
scoreboard players set #box_z0 wrnmd_system 0
scoreboard players set #box_x1 wrnmd_system 625
scoreboard players set #box_y1 wrnmd_system 625
scoreboard players set #box_z1 wrnmd_system 1000
execute if block ~ ~ ~ minecraft:end_rod[facing=north] run function wrnmd:block/cube/main
execute if block ~ ~ ~ minecraft:end_rod[facing=south] run function wrnmd:block/cube/main