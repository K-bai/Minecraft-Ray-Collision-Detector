scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y1 mrcd_system 781
scoreboard players set #box_z1 mrcd_system 125
execute if block ~ ~ ~ minecraft:ladder[facing=south] run function mrcd:private/cube/main

scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 875
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y1 mrcd_system 781
scoreboard players set #box_z1 mrcd_system 1000
execute if block ~ ~ ~ minecraft:ladder[facing=north] run function mrcd:private/cube/main

scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 125
scoreboard players set #box_y1 mrcd_system 781
scoreboard players set #box_z1 mrcd_system 1000
execute if block ~ ~ ~ minecraft:ladder[facing=east] run function mrcd:private/cube/main

scoreboard players set #box_x0 mrcd_system 875
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y1 mrcd_system 781
scoreboard players set #box_z1 mrcd_system 1000
execute if block ~ ~ ~ minecraft:ladder[facing=west] run function mrcd:private/cube/main
tag @s add mrcd_detected