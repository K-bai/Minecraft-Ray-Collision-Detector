scoreboard players set #box_x0 wrnmd_system 63
scoreboard players set #box_y0 wrnmd_system 0
scoreboard players set #box_z0 wrnmd_system 63
scoreboard players set #box_x1 wrnmd_system 938
scoreboard players set #box_y1 wrnmd_system 125
scoreboard players set #box_z1 wrnmd_system 938
function wrnmd:generic/complex_cube/main

scoreboard players set #box_x0 wrnmd_system 438
scoreboard players set #box_y0 wrnmd_system 125
scoreboard players set #box_z0 wrnmd_system 438
scoreboard players set #box_x1 wrnmd_system 563
scoreboard players set #box_y1 wrnmd_system 875
scoreboard players set #box_z1 wrnmd_system 563
function wrnmd:generic/complex_cube/main


execute if entity @e[tag=wrnmd_touch_mark] run tag @s add wrnmd_touch_edge
execute if entity @e[tag=wrnmd_touch_mark] run tag @s add wrnmd_touch_edge_complex


tag @s add wrnmd_detected