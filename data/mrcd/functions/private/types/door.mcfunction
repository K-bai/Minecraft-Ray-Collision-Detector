scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z1 mrcd_system 188
execute if block ~ ~ ~ #minecraft:doors[facing=south,open=false] run function mrcd:private/cube/main
execute if block ~ ~ ~ #minecraft:doors[facing=east,open=true,hinge=left] run function mrcd:private/cube/main
execute if block ~ ~ ~ #minecraft:doors[facing=west,open=true,hinge=right] run function mrcd:private/cube/main

scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 812
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z1 mrcd_system 1000
execute if block ~ ~ ~ #minecraft:doors[facing=north,open=false] run function mrcd:private/cube/main
execute if block ~ ~ ~ #minecraft:doors[facing=west,open=true,hinge=left] run function mrcd:private/cube/main
execute if block ~ ~ ~ #minecraft:doors[facing=east,open=true,hinge=right] run function mrcd:private/cube/main

scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 188
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z1 mrcd_system 1000
execute if block ~ ~ ~ #minecraft:doors[facing=east,open=false] run function mrcd:private/cube/main
execute if block ~ ~ ~ #minecraft:doors[facing=north,open=true,hinge=left] run function mrcd:private/cube/main
execute if block ~ ~ ~ #minecraft:doors[facing=south,open=true,hinge=right] run function mrcd:private/cube/main

scoreboard players set #box_x0 mrcd_system 812
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z1 mrcd_system 1000
execute if block ~ ~ ~ #minecraft:doors[facing=west,open=false] run function mrcd:private/cube/main
execute if block ~ ~ ~ #minecraft:doors[facing=south,open=true,hinge=left] run function mrcd:private/cube/main
execute if block ~ ~ ~ #minecraft:doors[facing=north,open=true,hinge=right] run function mrcd:private/cube/main


tag @s add mrcd_detected