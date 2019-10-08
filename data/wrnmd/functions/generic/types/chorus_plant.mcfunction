scoreboard players set #box_x0 wrnmd_system 188
scoreboard players set #box_y0 wrnmd_system 188
scoreboard players set #box_z0 wrnmd_system 188
scoreboard players set #box_x1 wrnmd_system 813
scoreboard players set #box_y1 wrnmd_system 813
scoreboard players set #box_z1 wrnmd_system 813
function wrnmd:generic/complex_cube/main

scoreboard players set #box_x0 wrnmd_system 813
scoreboard players set #box_y0 wrnmd_system 188
scoreboard players set #box_z0 wrnmd_system 188
scoreboard players set #box_x1 wrnmd_system 1000
scoreboard players set #box_y1 wrnmd_system 813
scoreboard players set #box_z1 wrnmd_system 813
execute if block ~ ~ ~ minecraft:chorus_plant[east=true] run function wrnmd:generic/complex_cube/main

scoreboard players set #box_x0 wrnmd_system 0
scoreboard players set #box_y0 wrnmd_system 188
scoreboard players set #box_z0 wrnmd_system 188
scoreboard players set #box_x1 wrnmd_system 188
scoreboard players set #box_y1 wrnmd_system 813
scoreboard players set #box_z1 wrnmd_system 813
execute if block ~ ~ ~ minecraft:chorus_plant[west=true] run function wrnmd:generic/complex_cube/main

scoreboard players set #box_x0 wrnmd_system 188
scoreboard players set #box_y0 wrnmd_system 188
scoreboard players set #box_z0 wrnmd_system 0
scoreboard players set #box_x1 wrnmd_system 813
scoreboard players set #box_y1 wrnmd_system 813
scoreboard players set #box_z1 wrnmd_system 188
execute if block ~ ~ ~ minecraft:chorus_plant[north=true] run function wrnmd:generic/complex_cube/main

scoreboard players set #box_x0 wrnmd_system 188
scoreboard players set #box_y0 wrnmd_system 188
scoreboard players set #box_z0 wrnmd_system 813
scoreboard players set #box_x1 wrnmd_system 813
scoreboard players set #box_y1 wrnmd_system 813
scoreboard players set #box_z1 wrnmd_system 1000
execute if block ~ ~ ~ minecraft:chorus_plant[south=true] run function wrnmd:generic/complex_cube/main

scoreboard players set #box_x0 wrnmd_system 188
scoreboard players set #box_y0 wrnmd_system 813
scoreboard players set #box_z0 wrnmd_system 188
scoreboard players set #box_x1 wrnmd_system 813
scoreboard players set #box_y1 wrnmd_system 1000
scoreboard players set #box_z1 wrnmd_system 813
execute if block ~ ~ ~ minecraft:chorus_plant[up=true] run function wrnmd:generic/complex_cube/main

scoreboard players set #box_x0 wrnmd_system 188
scoreboard players set #box_y0 wrnmd_system 0
scoreboard players set #box_z0 wrnmd_system 188
scoreboard players set #box_x1 wrnmd_system 813
scoreboard players set #box_y1 wrnmd_system 188
scoreboard players set #box_z1 wrnmd_system 813
execute if block ~ ~ ~ minecraft:chorus_plant[down=true] run function wrnmd:generic/complex_cube/main

execute if entity @e[tag=wrnmd_touch_mark] run tag @s add wrnmd_touch_edge
execute if entity @e[tag=wrnmd_touch_mark] run tag @s add wrnmd_touch_edge_complex
tag @s add wrnmd_detected