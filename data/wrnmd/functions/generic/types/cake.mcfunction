scoreboard players set #box_x0 wrnmd_system 63
scoreboard players set #box_y0 wrnmd_system 0
scoreboard players set #box_z0 wrnmd_system 63
scoreboard players set #box_x1 wrnmd_system 938
scoreboard players set #box_y1 wrnmd_system 500
scoreboard players set #box_z1 wrnmd_system 938

execute if block ~ ~ ~ minecraft:cake[bites=0] run scoreboard players set #box_x0 wrnmd_system 63
execute if block ~ ~ ~ minecraft:cake[bites=1] run scoreboard players set #box_x0 wrnmd_system 188
execute if block ~ ~ ~ minecraft:cake[bites=2] run scoreboard players set #box_x0 wrnmd_system 313
execute if block ~ ~ ~ minecraft:cake[bites=3] run scoreboard players set #box_x0 wrnmd_system 438
execute if block ~ ~ ~ minecraft:cake[bites=4] run scoreboard players set #box_x0 wrnmd_system 563
execute if block ~ ~ ~ minecraft:cake[bites=5] run scoreboard players set #box_x0 wrnmd_system 688
execute if block ~ ~ ~ minecraft:cake[bites=6] run scoreboard players set #box_x0 wrnmd_system 813




function wrnmd:generic/cube/main
tag @s add wrnmd_detected