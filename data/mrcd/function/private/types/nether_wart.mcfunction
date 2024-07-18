scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y1 mrcd_system 0
scoreboard players set #box_z1 mrcd_system 1000

execute if block ~ ~ ~ nether_wart[age=0] run scoreboard players set #box_y1 mrcd_system 313
execute if block ~ ~ ~ nether_wart[age=1] run scoreboard players set #box_y1 mrcd_system 500
execute if block ~ ~ ~ nether_wart[age=2] run scoreboard players set #box_y1 mrcd_system 688
execute if block ~ ~ ~ nether_wart[age=3] run scoreboard players set #box_y1 mrcd_system 875

function mrcd:private/cube/main
