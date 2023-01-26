scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y1 mrcd_system 0
scoreboard players set #box_z1 mrcd_system 1000

execute if block ~ ~ ~ minecraft:beetroots[age=0] run scoreboard players set #box_y1 mrcd_system 125
execute if block ~ ~ ~ minecraft:beetroots[age=1] run scoreboard players set #box_y1 mrcd_system 250
execute if block ~ ~ ~ minecraft:beetroots[age=2] run scoreboard players set #box_y1 mrcd_system 375
execute if block ~ ~ ~ minecraft:beetroots[age=3] run scoreboard players set #box_y1 mrcd_system 500


function mrcd:private/cube/main
tag @s add mrcd_block_collision_done