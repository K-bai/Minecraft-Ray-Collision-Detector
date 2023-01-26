scoreboard players set #box_x0 mrcd_system 63
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 63
scoreboard players set #box_x1 mrcd_system 938
scoreboard players set #box_y1 mrcd_system 875
scoreboard players set #box_z1 mrcd_system 938

execute if block ~ ~ ~ #mrcd:big_chest[facing=east,type=right] run scoreboard players set #box_z0 mrcd_system 0
execute if block ~ ~ ~ #mrcd:big_chest[facing=east,type=left] run scoreboard players set #box_z1 mrcd_system 1000
execute if block ~ ~ ~ #mrcd:big_chest[facing=west,type=left] run scoreboard players set #box_z0 mrcd_system 0
execute if block ~ ~ ~ #mrcd:big_chest[facing=west,type=right] run scoreboard players set #box_z1 mrcd_system 1000
execute if block ~ ~ ~ #mrcd:big_chest[facing=north,type=right] run scoreboard players set #box_x0 mrcd_system 0
execute if block ~ ~ ~ #mrcd:big_chest[facing=north,type=left] run scoreboard players set #box_x1 mrcd_system 1000
execute if block ~ ~ ~ #mrcd:big_chest[facing=south,type=left] run scoreboard players set #box_x0 mrcd_system 0
execute if block ~ ~ ~ #mrcd:big_chest[facing=south,type=right] run scoreboard players set #box_x1 mrcd_system 1000


function mrcd:private/cube/main
tag @s add mrcd_block_collision_done