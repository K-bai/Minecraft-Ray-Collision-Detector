scoreboard players set #box_x0 wrnmd_system 0
scoreboard players set #box_y0 wrnmd_system 0
scoreboard players set #box_z0 wrnmd_system 0
scoreboard players set #box_x1 wrnmd_system 1000
scoreboard players set #box_y1 wrnmd_system 781
scoreboard players set #box_z1 wrnmd_system 125
execute if block ~ ~ ~ minecraft:ladder[facing=south] run function wrnmd:block/cube/main

scoreboard players set #box_x0 wrnmd_system 0
scoreboard players set #box_y0 wrnmd_system 0
scoreboard players set #box_z0 wrnmd_system 875
scoreboard players set #box_x1 wrnmd_system 1000
scoreboard players set #box_y1 wrnmd_system 781
scoreboard players set #box_z1 wrnmd_system 1000
execute if block ~ ~ ~ minecraft:ladder[facing=north] run function wrnmd:block/cube/main

scoreboard players set #box_x0 wrnmd_system 0
scoreboard players set #box_y0 wrnmd_system 0
scoreboard players set #box_z0 wrnmd_system 0
scoreboard players set #box_x1 wrnmd_system 125
scoreboard players set #box_y1 wrnmd_system 781
scoreboard players set #box_z1 wrnmd_system 1000
execute if block ~ ~ ~ minecraft:ladder[facing=east] run function wrnmd:block/cube/main

scoreboard players set #box_x0 wrnmd_system 875
scoreboard players set #box_y0 wrnmd_system 0
scoreboard players set #box_z0 wrnmd_system 0
scoreboard players set #box_x1 wrnmd_system 1000
scoreboard players set #box_y1 wrnmd_system 781
scoreboard players set #box_z1 wrnmd_system 1000
execute if block ~ ~ ~ minecraft:ladder[facing=west] run function wrnmd:block/cube/main