scoreboard players set #box_x0 wrnmd_system 313
scoreboard players set #box_y0 wrnmd_system 0
scoreboard players set #box_z0 wrnmd_system 0
scoreboard players set #box_x1 wrnmd_system 687
scoreboard players set #box_y1 wrnmd_system 625
scoreboard players set #box_z1 wrnmd_system 375
execute if block ~ ~ ~ minecraft:tripwire_hook[facing=south] run function wrnmd:generic/cube/main

scoreboard players set #box_x0 wrnmd_system 313
scoreboard players set #box_y0 wrnmd_system 0
scoreboard players set #box_z0 wrnmd_system 625
scoreboard players set #box_x1 wrnmd_system 687
scoreboard players set #box_y1 wrnmd_system 625
scoreboard players set #box_z1 wrnmd_system 1000
execute if block ~ ~ ~ minecraft:tripwire_hook[facing=north] run function wrnmd:generic/cube/main

scoreboard players set #box_x0 wrnmd_system 0
scoreboard players set #box_y0 wrnmd_system 0
scoreboard players set #box_z0 wrnmd_system 313
scoreboard players set #box_x1 wrnmd_system 375
scoreboard players set #box_y1 wrnmd_system 625
scoreboard players set #box_z1 wrnmd_system 687
execute if block ~ ~ ~ minecraft:tripwire_hook[facing=east] run function wrnmd:generic/cube/main

scoreboard players set #box_x0 wrnmd_system 625
scoreboard players set #box_y0 wrnmd_system 0
scoreboard players set #box_z0 wrnmd_system 313
scoreboard players set #box_x1 wrnmd_system 1000
scoreboard players set #box_y1 wrnmd_system 625
scoreboard players set #box_z1 wrnmd_system 687
execute if block ~ ~ ~ minecraft:tripwire_hook[facing=west] run function wrnmd:generic/cube/main
tag @s add wrnmd_detected