scoreboard players set #box_x0 mrcd_system 375
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 375
scoreboard players set #box_x1 mrcd_system 625
scoreboard players set #box_y1 mrcd_system 625
scoreboard players set #box_z1 mrcd_system 1000
execute if block ~ ~ ~ #mrcd:attached_melon_stem_like[facing=south] run function mrcd:private/cube/main
scoreboard players set #box_x0 mrcd_system 375
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 625
scoreboard players set #box_y1 mrcd_system 625
scoreboard players set #box_z1 mrcd_system 625
execute if block ~ ~ ~ #mrcd:attached_melon_stem_like[facing=north] run function mrcd:private/cube/main
scoreboard players set #box_x0 mrcd_system 375
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 375
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y1 mrcd_system 625
scoreboard players set #box_z1 mrcd_system 625
execute if block ~ ~ ~ #mrcd:attached_melon_stem_like[facing=east] run function mrcd:private/cube/main
scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 375
scoreboard players set #box_x1 mrcd_system 625
scoreboard players set #box_y1 mrcd_system 625
scoreboard players set #box_z1 mrcd_system 625
execute if block ~ ~ ~ #mrcd:attached_melon_stem_like[facing=west] run function mrcd:private/cube/main
tag @s add mrcd_block_collision_done
