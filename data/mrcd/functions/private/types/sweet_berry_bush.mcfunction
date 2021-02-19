scoreboard players set #box_x0 mrcd_system 188
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 188
scoreboard players set #box_x1 mrcd_system 813
scoreboard players set #box_y1 mrcd_system 500
scoreboard players set #box_z1 mrcd_system 813
execute if block ~ ~ ~ minecraft:sweet_berry_bush[age=0] run function mrcd:private/cube/main

scoreboard players set #box_x0 mrcd_system 63
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 63
scoreboard players set #box_x1 mrcd_system 938
scoreboard players set #box_y1 mrcd_system 0
scoreboard players set #box_z1 mrcd_system 938
execute if block ~ ~ ~ minecraft:sweet_berry_bush[age=1] run function mrcd:private/cube/main
execute if block ~ ~ ~ minecraft:sweet_berry_bush[age=2] run function mrcd:private/cube/main


tag @s add mrcd_detected