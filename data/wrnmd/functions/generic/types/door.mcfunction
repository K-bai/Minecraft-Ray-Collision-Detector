scoreboard players set #box_x0 wrnmd_system 0
scoreboard players set #box_y0 wrnmd_system 0
scoreboard players set #box_z0 wrnmd_system 0
scoreboard players set #box_x1 wrnmd_system 1000
scoreboard players set #box_y1 wrnmd_system 1000
scoreboard players set #box_z1 wrnmd_system 188
execute if block ~ ~ ~ #minecraft:doors[facing=south,open=false] run function wrnmd:generic/cube/main
execute if block ~ ~ ~ #minecraft:doors[facing=east,open=true,hinge=left] run function wrnmd:generic/cube/main
execute if block ~ ~ ~ #minecraft:doors[facing=west,open=true,hinge=right] run function wrnmd:generic/cube/main

scoreboard players set #box_x0 wrnmd_system 0
scoreboard players set #box_y0 wrnmd_system 0
scoreboard players set #box_z0 wrnmd_system 812
scoreboard players set #box_x1 wrnmd_system 1000
scoreboard players set #box_y1 wrnmd_system 1000
scoreboard players set #box_z1 wrnmd_system 1000
execute if block ~ ~ ~ #minecraft:doors[facing=north,open=false] run function wrnmd:generic/cube/main
execute if block ~ ~ ~ #minecraft:doors[facing=west,open=true,hinge=left] run function wrnmd:generic/cube/main
execute if block ~ ~ ~ #minecraft:doors[facing=east,open=true,hinge=right] run function wrnmd:generic/cube/main

scoreboard players set #box_x0 wrnmd_system 0
scoreboard players set #box_y0 wrnmd_system 0
scoreboard players set #box_z0 wrnmd_system 0
scoreboard players set #box_x1 wrnmd_system 188
scoreboard players set #box_y1 wrnmd_system 1000
scoreboard players set #box_z1 wrnmd_system 1000
execute if block ~ ~ ~ #minecraft:doors[facing=east,open=false] run function wrnmd:generic/cube/main
execute if block ~ ~ ~ #minecraft:doors[facing=north,open=true,hinge=left] run function wrnmd:generic/cube/main
execute if block ~ ~ ~ #minecraft:doors[facing=south,open=true,hinge=right] run function wrnmd:generic/cube/main

scoreboard players set #box_x0 wrnmd_system 812
scoreboard players set #box_y0 wrnmd_system 0
scoreboard players set #box_z0 wrnmd_system 0
scoreboard players set #box_x1 wrnmd_system 1000
scoreboard players set #box_y1 wrnmd_system 1000
scoreboard players set #box_z1 wrnmd_system 1000
execute if block ~ ~ ~ #minecraft:doors[facing=west,open=false] run function wrnmd:generic/cube/main
execute if block ~ ~ ~ #minecraft:doors[facing=south,open=true,hinge=left] run function wrnmd:generic/cube/main
execute if block ~ ~ ~ #minecraft:doors[facing=north,open=true,hinge=right] run function wrnmd:generic/cube/main


tag @s add wrnmd_detected