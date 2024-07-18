scoreboard players set #box_x0 mrcd_system 0
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 0
scoreboard players set #box_x1 mrcd_system 1000
scoreboard players set #box_y1 mrcd_system 0
scoreboard players set #box_z1 mrcd_system 1000

execute if block ~ ~ ~ wheat[age=0] run scoreboard players set #box_y1 mrcd_system 125
execute if block ~ ~ ~ wheat[age=1] run scoreboard players set #box_y1 mrcd_system 250
execute if block ~ ~ ~ wheat[age=2] run scoreboard players set #box_y1 mrcd_system 375
execute if block ~ ~ ~ wheat[age=3] run scoreboard players set #box_y1 mrcd_system 500
execute if block ~ ~ ~ wheat[age=4] run scoreboard players set #box_y1 mrcd_system 625
execute if block ~ ~ ~ wheat[age=5] run scoreboard players set #box_y1 mrcd_system 750
execute if block ~ ~ ~ wheat[age=6] run scoreboard players set #box_y1 mrcd_system 875
execute if block ~ ~ ~ wheat[age=7] run scoreboard players set #box_y1 mrcd_system 1000

function mrcd:private/cube/main
