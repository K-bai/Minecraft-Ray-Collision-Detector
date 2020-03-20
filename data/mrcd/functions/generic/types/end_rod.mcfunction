scoreboard players set #box_x0 mrcd_system 375
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 375
scoreboard players set #box_x1 mrcd_system 625
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z1 mrcd_system 625
execute if block ~ ~ ~ minecraft:end_rod[facing=up] run function mrcd:generic/cube/main
execute if block ~ ~ ~ minecraft:end_rod[facing=down] run function mrcd:generic/cube/main

scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_y0 mrcd_system 375
scoreboard players set #box_z0 mrcd_system 375
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y1 mrcd_system 625
scoreboard players set #box_z1 mrcd_system 625
execute if block ~ ~ ~ minecraft:end_rod[facing=east] run function mrcd:generic/cube/main
execute if block ~ ~ ~ minecraft:end_rod[facing=west] run function mrcd:generic/cube/main

scoreboard players set #box_x0 mrcd_system 375
scoreboard players set #box_y0 mrcd_system 375
scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 625
scoreboard players set #box_y1 mrcd_system 625
scoreboard players set #box_z1 mrcd_system 1000
execute if block ~ ~ ~ minecraft:end_rod[facing=north] run function mrcd:generic/cube/main
execute if block ~ ~ ~ minecraft:end_rod[facing=south] run function mrcd:generic/cube/main
tag @s add mrcd_detected