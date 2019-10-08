scoreboard players set #box_x0 wrnmd_system 375
scoreboard players set #box_y0 wrnmd_system 438
scoreboard players set #box_z0 wrnmd_system 63
scoreboard players set #box_x1 wrnmd_system 625
scoreboard players set #box_y1 wrnmd_system 750
scoreboard players set #box_z1 wrnmd_system 313
execute if block ~ ~ ~ minecraft:cocoa[facing=north,age=0] run function wrnmd:generic/cube/main
scoreboard players set #box_x0 wrnmd_system 375
scoreboard players set #box_y0 wrnmd_system 438
scoreboard players set #box_z0 wrnmd_system 688
scoreboard players set #box_x1 wrnmd_system 625
scoreboard players set #box_y1 wrnmd_system 750
scoreboard players set #box_z1 wrnmd_system 938
execute if block ~ ~ ~ minecraft:cocoa[facing=south,age=0] run function wrnmd:generic/cube/main
scoreboard players set #box_x0 wrnmd_system 63
scoreboard players set #box_y0 wrnmd_system 438
scoreboard players set #box_z0 wrnmd_system 375
scoreboard players set #box_x1 wrnmd_system 313
scoreboard players set #box_y1 wrnmd_system 750
scoreboard players set #box_z1 wrnmd_system 625
execute if block ~ ~ ~ minecraft:cocoa[facing=west,age=0] run function wrnmd:generic/cube/main
scoreboard players set #box_x0 wrnmd_system 688
scoreboard players set #box_y0 wrnmd_system 438
scoreboard players set #box_z0 wrnmd_system 375
scoreboard players set #box_x1 wrnmd_system 938
scoreboard players set #box_y1 wrnmd_system 750
scoreboard players set #box_z1 wrnmd_system 625
execute if block ~ ~ ~ minecraft:cocoa[facing=east,age=0] run function wrnmd:generic/cube/main

scoreboard players set #box_x0 wrnmd_system 313
scoreboard players set #box_y0 wrnmd_system 313
scoreboard players set #box_z0 wrnmd_system 63
scoreboard players set #box_x1 wrnmd_system 688
scoreboard players set #box_y1 wrnmd_system 750
scoreboard players set #box_z1 wrnmd_system 438
execute if block ~ ~ ~ minecraft:cocoa[facing=north,age=1] run function wrnmd:generic/cube/main
scoreboard players set #box_x0 wrnmd_system 313
scoreboard players set #box_y0 wrnmd_system 313
scoreboard players set #box_z0 wrnmd_system 563
scoreboard players set #box_x1 wrnmd_system 688
scoreboard players set #box_y1 wrnmd_system 750
scoreboard players set #box_z1 wrnmd_system 938
execute if block ~ ~ ~ minecraft:cocoa[facing=south,age=1] run function wrnmd:generic/cube/main
scoreboard players set #box_x0 wrnmd_system 63
scoreboard players set #box_y0 wrnmd_system 313
scoreboard players set #box_z0 wrnmd_system 313
scoreboard players set #box_x1 wrnmd_system 438
scoreboard players set #box_y1 wrnmd_system 750
scoreboard players set #box_z1 wrnmd_system 688
execute if block ~ ~ ~ minecraft:cocoa[facing=west,age=1] run function wrnmd:generic/cube/main
scoreboard players set #box_x0 wrnmd_system 563
scoreboard players set #box_y0 wrnmd_system 313
scoreboard players set #box_z0 wrnmd_system 313
scoreboard players set #box_x1 wrnmd_system 938
scoreboard players set #box_y1 wrnmd_system 750
scoreboard players set #box_z1 wrnmd_system 688
execute if block ~ ~ ~ minecraft:cocoa[facing=east,age=1] run function wrnmd:generic/cube/main

scoreboard players set #box_x0 wrnmd_system 250
scoreboard players set #box_y0 wrnmd_system 188
scoreboard players set #box_z0 wrnmd_system 63
scoreboard players set #box_x1 wrnmd_system 750
scoreboard players set #box_y1 wrnmd_system 750
scoreboard players set #box_z1 wrnmd_system 563
execute if block ~ ~ ~ minecraft:cocoa[facing=north,age=2] run function wrnmd:generic/cube/main
scoreboard players set #box_x0 wrnmd_system 250
scoreboard players set #box_y0 wrnmd_system 188
scoreboard players set #box_z0 wrnmd_system 438
scoreboard players set #box_x1 wrnmd_system 750
scoreboard players set #box_y1 wrnmd_system 750
scoreboard players set #box_z1 wrnmd_system 938
execute if block ~ ~ ~ minecraft:cocoa[facing=south,age=2] run function wrnmd:generic/cube/main
scoreboard players set #box_x0 wrnmd_system 63
scoreboard players set #box_y0 wrnmd_system 188
scoreboard players set #box_z0 wrnmd_system 250
scoreboard players set #box_x1 wrnmd_system 563
scoreboard players set #box_y1 wrnmd_system 750
scoreboard players set #box_z1 wrnmd_system 750
execute if block ~ ~ ~ minecraft:cocoa[facing=west,age=2] run function wrnmd:generic/cube/main
scoreboard players set #box_x0 wrnmd_system 438
scoreboard players set #box_y0 wrnmd_system 188
scoreboard players set #box_z0 wrnmd_system 250
scoreboard players set #box_x1 wrnmd_system 938
scoreboard players set #box_y1 wrnmd_system 750
scoreboard players set #box_z1 wrnmd_system 750
execute if block ~ ~ ~ minecraft:cocoa[facing=east,age=2] run function wrnmd:generic/cube/main
tag @s add wrnmd_detected