scoreboard players set #box_x0 mrcd_system 313
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 250
scoreboard players set #box_x1 mrcd_system 688
scoreboard players set #box_y1 mrcd_system 375
scoreboard players set #box_z1 mrcd_system 750
execute if block ~ ~ ~ minecraft:lever[face=floor,facing=north] run function mrcd:generic/cube/main
execute if block ~ ~ ~ minecraft:lever[face=floor,facing=south] run function mrcd:generic/cube/main
scoreboard players set #box_x0 mrcd_system 250
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 313
scoreboard players set #box_x1 mrcd_system 750
scoreboard players set #box_y1 mrcd_system 375
scoreboard players set #box_z1 mrcd_system 688
execute if block ~ ~ ~ minecraft:lever[face=floor,facing=east] run function mrcd:generic/cube/main
execute if block ~ ~ ~ minecraft:lever[face=floor,facing=west] run function mrcd:generic/cube/main
scoreboard players set #box_x0 mrcd_system 313
scoreboard players set #box_y0 mrcd_system 625
scoreboard players set #box_z0 mrcd_system 250
scoreboard players set #box_x1 mrcd_system 688
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z1 mrcd_system 750
execute if block ~ ~ ~ minecraft:lever[face=ceiling,facing=north] run function mrcd:generic/cube/main
execute if block ~ ~ ~ minecraft:lever[face=ceiling,facing=south] run function mrcd:generic/cube/main
scoreboard players set #box_x0 mrcd_system 250
scoreboard players set #box_y0 mrcd_system 625
scoreboard players set #box_z0 mrcd_system 313
scoreboard players set #box_x1 mrcd_system 750
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z1 mrcd_system 688
execute if block ~ ~ ~ minecraft:lever[face=ceiling,facing=east] run function mrcd:generic/cube/main
execute if block ~ ~ ~ minecraft:lever[face=ceiling,facing=west] run function mrcd:generic/cube/main

scoreboard players set #box_x0 mrcd_system 313
scoreboard players set #box_y0 mrcd_system 250
scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 688
scoreboard players set #box_y1 mrcd_system 750
scoreboard players set #box_z1 mrcd_system 375
execute if block ~ ~ ~ minecraft:lever[face=wall,facing=south] run function mrcd:generic/cube/main
scoreboard players set #box_x0 mrcd_system 313
scoreboard players set #box_y0 mrcd_system 250
scoreboard players set #box_z0 mrcd_system 625
scoreboard players set #box_x1 mrcd_system 688
scoreboard players set #box_y1 mrcd_system 750
scoreboard players set #box_z1 mrcd_system 1000
execute if block ~ ~ ~ minecraft:lever[face=wall,facing=north] run function mrcd:generic/cube/main
scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_y0 mrcd_system 250
scoreboard players set #box_z0 mrcd_system 313
scoreboard players set #box_x1 mrcd_system 375
scoreboard players set #box_y1 mrcd_system 750
scoreboard players set #box_z1 mrcd_system 688
execute if block ~ ~ ~ minecraft:lever[face=wall,facing=east] run function mrcd:generic/cube/main
scoreboard players set #box_x0 mrcd_system 625
scoreboard players set #box_y0 mrcd_system 250
scoreboard players set #box_z0 mrcd_system 313
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y1 mrcd_system 750
scoreboard players set #box_z1 mrcd_system 688
execute if block ~ ~ ~ minecraft:lever[face=wall,facing=west] run function mrcd:generic/cube/main
tag @s add mrcd_detected