scoreboard players set #box_x0 mrcd_system 188
scoreboard players set #box_z0 mrcd_system 188
scoreboard players set #box_x1 mrcd_system 813
scoreboard players set #box_z1 mrcd_system 813
scoreboard players operation #box_x0 mrcd_system += #var0 mrcd_system
scoreboard players operation #box_x1 mrcd_system += #var0 mrcd_system
scoreboard players operation #box_z0 mrcd_system += #var1 mrcd_system
scoreboard players operation #box_z1 mrcd_system += #var1 mrcd_system

execute if score #box_x0 mrcd_system matches 1001.. run scoreboard players set #box_x0 mrcd_system 1000
execute if score #box_x1 mrcd_system matches 1001.. run scoreboard players set #box_x1 mrcd_system 1000
execute if score #box_z0 mrcd_system matches 1001.. run scoreboard players set #box_z0 mrcd_system 1000
execute if score #box_z1 mrcd_system matches 1001.. run scoreboard players set #box_z1 mrcd_system 1000

execute if score #box_x0 mrcd_system matches ..-1 run scoreboard players set #box_x0 mrcd_system 0
execute if score #box_x1 mrcd_system matches ..-1 run scoreboard players set #box_x1 mrcd_system 0
execute if score #box_z0 mrcd_system matches ..-1 run scoreboard players set #box_z0 mrcd_system 0
execute if score #box_z1 mrcd_system matches ..-1 run scoreboard players set #box_z1 mrcd_system 0

function mrcd:private/cube/main