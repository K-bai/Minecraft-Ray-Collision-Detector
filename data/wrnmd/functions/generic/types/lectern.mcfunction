# 其他
scoreboard players set #box_x0 wrnmd_system 0
scoreboard players set #box_x1 wrnmd_system 1000
scoreboard players set #box_y0 wrnmd_system 0
scoreboard players set #box_y1 wrnmd_system 125
scoreboard players set #box_z0 wrnmd_system 0
scoreboard players set #box_z1 wrnmd_system 1000
function wrnmd:generic/complex_cube/main
scoreboard players set #box_x0 wrnmd_system 250
scoreboard players set #box_x1 wrnmd_system 750
scoreboard players set #box_y0 wrnmd_system 125
scoreboard players set #box_y1 wrnmd_system 750
scoreboard players set #box_z0 wrnmd_system 250
scoreboard players set #box_z1 wrnmd_system 750
function wrnmd:generic/complex_cube/main




scoreboard players set #box_x0 wrnmd_system 0
scoreboard players set #box_x1 wrnmd_system 1000
scoreboard players set #box_y0 wrnmd_system 865
scoreboard players set #box_y1 wrnmd_system 1000
scoreboard players set #box_z0 wrnmd_system 334
scoreboard players set #box_z1 wrnmd_system 875
execute if block ~ ~ ~ minecraft:lectern[facing=north] run function wrnmd:generic/complex_cube/main
scoreboard players set #box_x0 wrnmd_system 0
scoreboard players set #box_x1 wrnmd_system 1000
scoreboard players set #box_y0 wrnmd_system 729
scoreboard players set #box_y1 wrnmd_system 865
scoreboard players set #box_z0 wrnmd_system 63
scoreboard players set #box_z1 wrnmd_system 605
execute if block ~ ~ ~ minecraft:lectern[facing=north] run function wrnmd:generic/complex_cube/main
scoreboard players set #box_x0 wrnmd_system 0
scoreboard players set #box_x1 wrnmd_system 1000
scoreboard players set #box_y0 wrnmd_system 458
scoreboard players set #box_y1 wrnmd_system 729
scoreboard players set #box_z0 wrnmd_system 63
scoreboard players set #box_z1 wrnmd_system 334
execute if block ~ ~ ~ minecraft:lectern[facing=north] run function wrnmd:generic/complex_cube/main

scoreboard players set #box_x0 wrnmd_system 0
scoreboard players set #box_x1 wrnmd_system 1000
scoreboard players set #box_y0 wrnmd_system 865
scoreboard players set #box_y1 wrnmd_system 1000
scoreboard players set #box_z0 wrnmd_system 125
scoreboard players set #box_z1 wrnmd_system 666
execute if block ~ ~ ~ minecraft:lectern[facing=south] run function wrnmd:generic/complex_cube/main
scoreboard players set #box_x0 wrnmd_system 0
scoreboard players set #box_x1 wrnmd_system 1000
scoreboard players set #box_y0 wrnmd_system 729
scoreboard players set #box_y1 wrnmd_system 865
scoreboard players set #box_z0 wrnmd_system 395
scoreboard players set #box_z1 wrnmd_system 938
execute if block ~ ~ ~ minecraft:lectern[facing=south] run function wrnmd:generic/complex_cube/main
scoreboard players set #box_x0 wrnmd_system 0
scoreboard players set #box_x1 wrnmd_system 1000
scoreboard players set #box_y0 wrnmd_system 458
scoreboard players set #box_y1 wrnmd_system 729
scoreboard players set #box_z0 wrnmd_system 666
scoreboard players set #box_z1 wrnmd_system 938
execute if block ~ ~ ~ minecraft:lectern[facing=south] run function wrnmd:generic/complex_cube/main

scoreboard players set #box_z0 wrnmd_system 0
scoreboard players set #box_z1 wrnmd_system 1000
scoreboard players set #box_y0 wrnmd_system 865
scoreboard players set #box_y1 wrnmd_system 1000
scoreboard players set #box_x0 wrnmd_system 334
scoreboard players set #box_x1 wrnmd_system 875
execute if block ~ ~ ~ minecraft:lectern[facing=west] run function wrnmd:generic/complex_cube/main
scoreboard players set #box_z0 wrnmd_system 0
scoreboard players set #box_z1 wrnmd_system 1000
scoreboard players set #box_y0 wrnmd_system 729
scoreboard players set #box_y1 wrnmd_system 865
scoreboard players set #box_x0 wrnmd_system 63
scoreboard players set #box_x1 wrnmd_system 605
execute if block ~ ~ ~ minecraft:lectern[facing=west] run function wrnmd:generic/complex_cube/main
scoreboard players set #box_z0 wrnmd_system 0
scoreboard players set #box_z1 wrnmd_system 1000
scoreboard players set #box_y0 wrnmd_system 458
scoreboard players set #box_y1 wrnmd_system 729
scoreboard players set #box_x0 wrnmd_system 63
scoreboard players set #box_x1 wrnmd_system 334
execute if block ~ ~ ~ minecraft:lectern[facing=west] run function wrnmd:generic/complex_cube/main

scoreboard players set #box_z0 wrnmd_system 0
scoreboard players set #box_z1 wrnmd_system 1000
scoreboard players set #box_y0 wrnmd_system 865
scoreboard players set #box_y1 wrnmd_system 1000
scoreboard players set #box_x0 wrnmd_system 125
scoreboard players set #box_x1 wrnmd_system 666
execute if block ~ ~ ~ minecraft:lectern[facing=east] run function wrnmd:generic/complex_cube/main
scoreboard players set #box_z0 wrnmd_system 0
scoreboard players set #box_z1 wrnmd_system 1000
scoreboard players set #box_y0 wrnmd_system 729
scoreboard players set #box_y1 wrnmd_system 865
scoreboard players set #box_x0 wrnmd_system 395
scoreboard players set #box_x1 wrnmd_system 938
execute if block ~ ~ ~ minecraft:lectern[facing=east] run function wrnmd:generic/complex_cube/main
scoreboard players set #box_z0 wrnmd_system 0
scoreboard players set #box_z1 wrnmd_system 1000
scoreboard players set #box_y0 wrnmd_system 458
scoreboard players set #box_y1 wrnmd_system 729
scoreboard players set #box_x0 wrnmd_system 666
scoreboard players set #box_x1 wrnmd_system 938
execute if block ~ ~ ~ minecraft:lectern[facing=east] run function wrnmd:generic/complex_cube/main

execute if entity @e[tag=wrnmd_touch_mark] run tag @s add wrnmd_touch_edge
execute if entity @e[tag=wrnmd_touch_mark] run tag @s add wrnmd_touch_edge_complex

tag @s add wrnmd_detected