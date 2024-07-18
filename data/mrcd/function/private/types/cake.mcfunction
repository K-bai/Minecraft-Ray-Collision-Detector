scoreboard players set #box_x0 mrcd_system 63
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 63
scoreboard players set #box_x1 mrcd_system 938
scoreboard players set #box_y1 mrcd_system 500
scoreboard players set #box_z1 mrcd_system 938

execute if block ~ ~ ~ cake[bites=0] run scoreboard players set #box_x0 mrcd_system 63
execute if block ~ ~ ~ cake[bites=1] run scoreboard players set #box_x0 mrcd_system 188
execute if block ~ ~ ~ cake[bites=2] run scoreboard players set #box_x0 mrcd_system 313
execute if block ~ ~ ~ cake[bites=3] run scoreboard players set #box_x0 mrcd_system 438
execute if block ~ ~ ~ cake[bites=4] run scoreboard players set #box_x0 mrcd_system 563
execute if block ~ ~ ~ cake[bites=5] run scoreboard players set #box_x0 mrcd_system 688
execute if block ~ ~ ~ cake[bites=6] run scoreboard players set #box_x0 mrcd_system 813

function mrcd:private/cube/main
