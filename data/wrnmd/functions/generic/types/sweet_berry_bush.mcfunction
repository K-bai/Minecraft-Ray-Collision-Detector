scoreboard players set #box_x0 wrnmd_system 188
scoreboard players set #box_y0 wrnmd_system 0
scoreboard players set #box_z0 wrnmd_system 188
scoreboard players set #box_x1 wrnmd_system 813
scoreboard players set #box_y1 wrnmd_system 500
scoreboard players set #box_z1 wrnmd_system 813
execute if block ~ ~ ~ minecraft:sweet_berry_bush[age=0] run function wrnmd:generic/cube/main

scoreboard players set #box_x0 wrnmd_system 63
scoreboard players set #box_y0 wrnmd_system 0
scoreboard players set #box_z0 wrnmd_system 63
scoreboard players set #box_x1 wrnmd_system 938
scoreboard players set #box_y1 wrnmd_system 0
scoreboard players set #box_z1 wrnmd_system 938
execute if block ~ ~ ~ minecraft:sweet_berry_bush[age=1] run function wrnmd:generic/cube/main
execute if block ~ ~ ~ minecraft:sweet_berry_bush[age=2] run function wrnmd:generic/cube/main


tag @s add wrnmd_detected