scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y1 mrcd_system 188
scoreboard players set #box_z1 mrcd_system 1000
execute if block ~ ~ ~ #minecraft:trapdoors[half=bottom,open=false] run function mrcd:generic/cube/main
scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_y0 mrcd_system 812
scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z1 mrcd_system 1000
execute if block ~ ~ ~ #minecraft:trapdoors[half=top,open=false] run function mrcd:generic/cube/main

scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z1 mrcd_system 188
execute if block ~ ~ ~ #minecraft:trapdoors[facing=south,open=true] run function mrcd:generic/cube/main
scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 812
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z1 mrcd_system 1000
execute if block ~ ~ ~ #minecraft:trapdoors[facing=north,open=true] run function mrcd:generic/cube/main
scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 188
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z1 mrcd_system 1000
execute if block ~ ~ ~ #minecraft:trapdoors[facing=east,open=true] run function mrcd:generic/cube/main
scoreboard players set #box_x0 mrcd_system 812
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z1 mrcd_system 1000
execute if block ~ ~ ~ #minecraft:trapdoors[facing=west,open=true] run function mrcd:generic/cube/main
tag @s add mrcd_detected