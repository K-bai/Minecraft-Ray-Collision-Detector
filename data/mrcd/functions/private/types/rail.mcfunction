scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y1 mrcd_system 125
scoreboard players set #box_z1 mrcd_system 1000
execute if block ~ ~ ~ #minecraft:rails[shape=ascending_east] run scoreboard players set #box_y1 mrcd_system 500
execute if block ~ ~ ~ #minecraft:rails[shape=ascending_west] run scoreboard players set #box_y1 mrcd_system 500
execute if block ~ ~ ~ #minecraft:rails[shape=ascending_north] run scoreboard players set #box_y1 mrcd_system 500
execute if block ~ ~ ~ #minecraft:rails[shape=ascending_south] run scoreboard players set #box_y1 mrcd_system 500


function mrcd:private/cube/main
tag @s add mrcd_detected