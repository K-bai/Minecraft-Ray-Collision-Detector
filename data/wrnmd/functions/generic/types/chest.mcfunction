scoreboard players set #box_x0 wrnmd_system 63
scoreboard players set #box_y0 wrnmd_system 0
scoreboard players set #box_z0 wrnmd_system 63
scoreboard players set #box_x1 wrnmd_system 938
scoreboard players set #box_y1 wrnmd_system 875
scoreboard players set #box_z1 wrnmd_system 938

execute if block ~ ~ ~ #wrnmd:big_chest[facing=east,type=right] run scoreboard players set #box_z0 wrnmd_system 0
execute if block ~ ~ ~ #wrnmd:big_chest[facing=east,type=left] run scoreboard players set #box_z1 wrnmd_system 1000
execute if block ~ ~ ~ #wrnmd:big_chest[facing=west,type=left] run scoreboard players set #box_z0 wrnmd_system 0
execute if block ~ ~ ~ #wrnmd:big_chest[facing=west,type=right] run scoreboard players set #box_z1 wrnmd_system 1000
execute if block ~ ~ ~ #wrnmd:big_chest[facing=north,type=right] run scoreboard players set #box_x0 wrnmd_system 0
execute if block ~ ~ ~ #wrnmd:big_chest[facing=north,type=left] run scoreboard players set #box_x1 wrnmd_system 1000
execute if block ~ ~ ~ #wrnmd:big_chest[facing=south,type=left] run scoreboard players set #box_x0 wrnmd_system 0
execute if block ~ ~ ~ #wrnmd:big_chest[facing=south,type=right] run scoreboard players set #box_x1 wrnmd_system 1000


function wrnmd:generic/cube/main
tag @s add wrnmd_detected