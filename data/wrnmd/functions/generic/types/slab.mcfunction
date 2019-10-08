scoreboard players set #box_x0 wrnmd_system 0
scoreboard players set #box_y0 wrnmd_system 500
scoreboard players set #box_z0 wrnmd_system 0
scoreboard players set #box_x1 wrnmd_system 1000
scoreboard players set #box_y1 wrnmd_system 1000
scoreboard players set #box_z1 wrnmd_system 1000
execute if block ~ ~ ~ #minecraft:slabs[type=top] run function wrnmd:generic/cube/main

scoreboard players set #box_x0 wrnmd_system 0
scoreboard players set #box_y0 wrnmd_system 0
scoreboard players set #box_z0 wrnmd_system 0
scoreboard players set #box_x1 wrnmd_system 1000
scoreboard players set #box_y1 wrnmd_system 500
scoreboard players set #box_z1 wrnmd_system 1000
execute if block ~ ~ ~ #minecraft:slabs[type=bottom] run function wrnmd:generic/cube/main

scoreboard players set #box_x0 wrnmd_system 0
scoreboard players set #box_y0 wrnmd_system 0
scoreboard players set #box_z0 wrnmd_system 0
scoreboard players set #box_x1 wrnmd_system 1000
scoreboard players set #box_y1 wrnmd_system 1000
scoreboard players set #box_z1 wrnmd_system 1000
execute if block ~ ~ ~ #minecraft:slabs[type=double] run function wrnmd:generic/cube/main
tag @s add wrnmd_detected