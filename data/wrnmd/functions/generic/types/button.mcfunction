scoreboard players set #box_x0 wrnmd_system 313
scoreboard players set #box_y0 wrnmd_system 0
scoreboard players set #box_z0 wrnmd_system 375
scoreboard players set #box_x1 wrnmd_system 688
scoreboard players set #box_y1 wrnmd_system 125
scoreboard players set #box_z1 wrnmd_system 625
execute if block ~ ~ ~ #minecraft:buttons[face=floor,facing=north] run function wrnmd:generic/cube/main
execute if block ~ ~ ~ #minecraft:buttons[face=floor,facing=south] run function wrnmd:generic/cube/main
scoreboard players set #box_x0 wrnmd_system 375
scoreboard players set #box_y0 wrnmd_system 0
scoreboard players set #box_z0 wrnmd_system 313
scoreboard players set #box_x1 wrnmd_system 625
scoreboard players set #box_y1 wrnmd_system 125
scoreboard players set #box_z1 wrnmd_system 688
execute if block ~ ~ ~ #minecraft:buttons[face=floor,facing=east] run function wrnmd:generic/cube/main
execute if block ~ ~ ~ #minecraft:buttons[face=floor,facing=west] run function wrnmd:generic/cube/main
scoreboard players set #box_x0 wrnmd_system 313
scoreboard players set #box_y0 wrnmd_system 875
scoreboard players set #box_z0 wrnmd_system 375
scoreboard players set #box_x1 wrnmd_system 688
scoreboard players set #box_y1 wrnmd_system 1000
scoreboard players set #box_z1 wrnmd_system 625
execute if block ~ ~ ~ #minecraft:buttons[face=ceiling,facing=north] run function wrnmd:generic/cube/main
execute if block ~ ~ ~ #minecraft:buttons[face=ceiling,facing=south] run function wrnmd:generic/cube/main
scoreboard players set #box_x0 wrnmd_system 375
scoreboard players set #box_y0 wrnmd_system 875
scoreboard players set #box_z0 wrnmd_system 313
scoreboard players set #box_x1 wrnmd_system 625
scoreboard players set #box_y1 wrnmd_system 1000
scoreboard players set #box_z1 wrnmd_system 688
execute if block ~ ~ ~ #minecraft:buttons[face=ceiling,facing=east] run function wrnmd:generic/cube/main
execute if block ~ ~ ~ #minecraft:buttons[face=ceiling,facing=west] run function wrnmd:generic/cube/main

scoreboard players set #box_x0 wrnmd_system 313
scoreboard players set #box_y0 wrnmd_system 375
scoreboard players set #box_z0 wrnmd_system 0
scoreboard players set #box_x1 wrnmd_system 688
scoreboard players set #box_y1 wrnmd_system 625
scoreboard players set #box_z1 wrnmd_system 125
execute if block ~ ~ ~ #minecraft:buttons[face=wall,facing=south] run function wrnmd:generic/cube/main
scoreboard players set #box_x0 wrnmd_system 313
scoreboard players set #box_y0 wrnmd_system 375
scoreboard players set #box_z0 wrnmd_system 875
scoreboard players set #box_x1 wrnmd_system 688
scoreboard players set #box_y1 wrnmd_system 625
scoreboard players set #box_z1 wrnmd_system 1000
execute if block ~ ~ ~ #minecraft:buttons[face=wall,facing=north] run function wrnmd:generic/cube/main
scoreboard players set #box_x0 wrnmd_system 0
scoreboard players set #box_y0 wrnmd_system 375
scoreboard players set #box_z0 wrnmd_system 313
scoreboard players set #box_x1 wrnmd_system 125
scoreboard players set #box_y1 wrnmd_system 625
scoreboard players set #box_z1 wrnmd_system 688
execute if block ~ ~ ~ #minecraft:buttons[face=wall,facing=east] run function wrnmd:generic/cube/main
scoreboard players set #box_x0 wrnmd_system 875
scoreboard players set #box_y0 wrnmd_system 375
scoreboard players set #box_z0 wrnmd_system 313
scoreboard players set #box_x1 wrnmd_system 1000
scoreboard players set #box_y1 wrnmd_system 625
scoreboard players set #box_z1 wrnmd_system 688
execute if block ~ ~ ~ #minecraft:buttons[face=wall,facing=west] run function wrnmd:generic/cube/main
tag @s add wrnmd_detected