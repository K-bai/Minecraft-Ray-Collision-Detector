scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_y0 mrcd_system 875
scoreboard players set #box_z0 mrcd_system 375
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y1 mrcd_system 1000
scoreboard players set #box_z1 mrcd_system 625
function mrcd:private/cube/main

execute unless entity @s[tag=mrcd_bullet] run function mrcd:private/types/1_20/wall_hanging_signs/north/bottom