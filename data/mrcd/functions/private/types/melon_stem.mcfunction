scoreboard players set #box_x0 mrcd_system 438
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 438
scoreboard players set #box_x1 mrcd_system 563
scoreboard players set #box_y1 mrcd_system 0
scoreboard players set #box_z1 mrcd_system 563

execute if block ~ ~ ~ #mrcd:melon_stem_like[age=0] run scoreboard players set #box_y1 mrcd_system 125
execute if block ~ ~ ~ #mrcd:melon_stem_like[age=1] run scoreboard players set #box_y1 mrcd_system 250
execute if block ~ ~ ~ #mrcd:melon_stem_like[age=2] run scoreboard players set #box_y1 mrcd_system 375
execute if block ~ ~ ~ #mrcd:melon_stem_like[age=3] run scoreboard players set #box_y1 mrcd_system 500
execute if block ~ ~ ~ #mrcd:melon_stem_like[age=4] run scoreboard players set #box_y1 mrcd_system 625
execute if block ~ ~ ~ #mrcd:melon_stem_like[age=5] run scoreboard players set #box_y1 mrcd_system 750
execute if block ~ ~ ~ #mrcd:melon_stem_like[age=6] run scoreboard players set #box_y1 mrcd_system 875
execute if block ~ ~ ~ #mrcd:melon_stem_like[age=7] run scoreboard players set #box_y1 mrcd_system 1000



function mrcd:private/cube/main
tag @s add mrcd_detected