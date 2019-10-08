# 地面
scoreboard players set #box_x0 wrnmd_system 0
scoreboard players set #box_x1 wrnmd_system 1000
scoreboard players set #box_y0 wrnmd_system 0
scoreboard players set #box_y1 wrnmd_system 1000
scoreboard players set #box_z0 wrnmd_system 250
scoreboard players set #box_z1 wrnmd_system 750
execute if block ~ ~ ~ minecraft:bell[attachment=floor,facing=south] run function wrnmd:generic/complex_cube/main
execute if block ~ ~ ~ minecraft:bell[attachment=floor,facing=north] run function wrnmd:generic/complex_cube/main
scoreboard players set #box_x0 wrnmd_system 250
scoreboard players set #box_x1 wrnmd_system 750
scoreboard players set #box_y0 wrnmd_system 0
scoreboard players set #box_y1 wrnmd_system 1000
scoreboard players set #box_z0 wrnmd_system 0
scoreboard players set #box_z1 wrnmd_system 1000
execute if block ~ ~ ~ minecraft:bell[attachment=floor,facing=east] run function wrnmd:generic/complex_cube/main
execute if block ~ ~ ~ minecraft:bell[attachment=floor,facing=west] run function wrnmd:generic/complex_cube/main

# 其他
scoreboard players set #box_x0 wrnmd_system 250
scoreboard players set #box_x1 wrnmd_system 750
scoreboard players set #box_y0 wrnmd_system 250
scoreboard players set #box_y1 wrnmd_system 375
scoreboard players set #box_z0 wrnmd_system 250
scoreboard players set #box_z1 wrnmd_system 750
execute if block ~ ~ ~ minecraft:bell[attachment=ceiling] run function wrnmd:generic/complex_cube/main
execute if block ~ ~ ~ minecraft:bell[attachment=single_wall] run function wrnmd:generic/complex_cube/main
execute if block ~ ~ ~ minecraft:bell[attachment=double_wall] run function wrnmd:generic/complex_cube/main
scoreboard players set #box_x0 wrnmd_system 313
scoreboard players set #box_x1 wrnmd_system 688
scoreboard players set #box_y0 wrnmd_system 375
scoreboard players set #box_y1 wrnmd_system 813
scoreboard players set #box_z0 wrnmd_system 313
scoreboard players set #box_z1 wrnmd_system 688
execute if block ~ ~ ~ minecraft:bell[attachment=ceiling] run function wrnmd:generic/complex_cube/main
execute if block ~ ~ ~ minecraft:bell[attachment=single_wall] run function wrnmd:generic/complex_cube/main
execute if block ~ ~ ~ minecraft:bell[attachment=double_wall] run function wrnmd:generic/complex_cube/main


# ceiling
scoreboard players set #box_x0 wrnmd_system 438
scoreboard players set #box_x1 wrnmd_system 563
scoreboard players set #box_y0 wrnmd_system 813
scoreboard players set #box_y1 wrnmd_system 1000
scoreboard players set #box_z0 wrnmd_system 438
scoreboard players set #box_z1 wrnmd_system 563
execute if block ~ ~ ~ minecraft:bell[attachment=ceiling] run function wrnmd:generic/complex_cube/main
# double_wall
scoreboard players set #box_x0 wrnmd_system 438
scoreboard players set #box_x1 wrnmd_system 563
scoreboard players set #box_y0 wrnmd_system 813
scoreboard players set #box_y1 wrnmd_system 938
scoreboard players set #box_z0 wrnmd_system 0
scoreboard players set #box_z1 wrnmd_system 1000
execute if block ~ ~ ~ minecraft:bell[attachment=double_wall,facing=south] run function wrnmd:generic/complex_cube/main
execute if block ~ ~ ~ minecraft:bell[attachment=double_wall,facing=north] run function wrnmd:generic/complex_cube/main
scoreboard players set #box_z0 wrnmd_system 438
scoreboard players set #box_z1 wrnmd_system 563
scoreboard players set #box_y0 wrnmd_system 813
scoreboard players set #box_y1 wrnmd_system 938
scoreboard players set #box_x0 wrnmd_system 0
scoreboard players set #box_x1 wrnmd_system 1000
execute if block ~ ~ ~ minecraft:bell[attachment=double_wall,facing=west] run function wrnmd:generic/complex_cube/main
execute if block ~ ~ ~ minecraft:bell[attachment=double_wall,facing=east] run function wrnmd:generic/complex_cube/main
# single_wall
scoreboard players set #box_x0 wrnmd_system 438
scoreboard players set #box_x1 wrnmd_system 563
scoreboard players set #box_y0 wrnmd_system 813
scoreboard players set #box_y1 wrnmd_system 938
scoreboard players set #box_z0 wrnmd_system 188
scoreboard players set #box_z1 wrnmd_system 1000
execute if block ~ ~ ~ minecraft:bell[attachment=single_wall,facing=south] run function wrnmd:generic/complex_cube/main
scoreboard players set #box_x0 wrnmd_system 438
scoreboard players set #box_x1 wrnmd_system 563
scoreboard players set #box_y0 wrnmd_system 813
scoreboard players set #box_y1 wrnmd_system 938
scoreboard players set #box_z0 wrnmd_system 0
scoreboard players set #box_z1 wrnmd_system 813
execute if block ~ ~ ~ minecraft:bell[attachment=single_wall,facing=north] run function wrnmd:generic/complex_cube/main
scoreboard players set #box_z0 wrnmd_system 438
scoreboard players set #box_z1 wrnmd_system 563
scoreboard players set #box_y0 wrnmd_system 813
scoreboard players set #box_y1 wrnmd_system 938
scoreboard players set #box_x0 wrnmd_system 0
scoreboard players set #box_x1 wrnmd_system 813
execute if block ~ ~ ~ minecraft:bell[attachment=single_wall,facing=west] run function wrnmd:generic/complex_cube/main
scoreboard players set #box_z0 wrnmd_system 438
scoreboard players set #box_z1 wrnmd_system 563
scoreboard players set #box_y0 wrnmd_system 813
scoreboard players set #box_y1 wrnmd_system 938
scoreboard players set #box_x0 wrnmd_system 188
scoreboard players set #box_x1 wrnmd_system 1000
execute if block ~ ~ ~ minecraft:bell[attachment=single_wall,facing=east] run function wrnmd:generic/complex_cube/main







execute if entity @e[tag=wrnmd_touch_mark] run tag @s add wrnmd_touch_edge
execute if entity @e[tag=wrnmd_touch_mark] run tag @s add wrnmd_touch_edge_complex

tag @s add wrnmd_detected