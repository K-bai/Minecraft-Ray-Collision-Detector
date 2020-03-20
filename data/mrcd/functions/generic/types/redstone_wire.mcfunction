scoreboard players set #box_x0 mrcd_system 188
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 188
scoreboard players set #box_x1 mrcd_system 813
scoreboard players set #box_y1 mrcd_system 63
scoreboard players set #box_z1 mrcd_system 813

execute if block ~ ~ ~ minecraft:redstone_wire[east=side] run scoreboard players set #box_x1 mrcd_system 1000
execute if block ~ ~ ~ minecraft:redstone_wire[west=side] run scoreboard players set #box_x0 mrcd_system 0
execute if block ~ ~ ~ minecraft:redstone_wire[south=side] run scoreboard players set #box_z1 mrcd_system 1000
execute if block ~ ~ ~ minecraft:redstone_wire[north=side] run scoreboard players set #box_z0 mrcd_system 0
execute if block ~ ~ ~ minecraft:redstone_wire[east=up] run scoreboard players set #box_x1 mrcd_system 1000
execute if block ~ ~ ~ minecraft:redstone_wire[west=up] run scoreboard players set #box_x0 mrcd_system 0
execute if block ~ ~ ~ minecraft:redstone_wire[south=up] run scoreboard players set #box_z1 mrcd_system 1000
execute if block ~ ~ ~ minecraft:redstone_wire[north=up] run scoreboard players set #box_z0 mrcd_system 0


execute if block ~ ~ ~ minecraft:redstone_wire[east=side,west=none,north=none,south=none] run scoreboard players set #box_x0 mrcd_system 0
execute if block ~ ~ ~ minecraft:redstone_wire[east=none,west=side,north=none,south=none] run scoreboard players set #box_x1 mrcd_system 1000
execute if block ~ ~ ~ minecraft:redstone_wire[east=none,west=none,north=none,south=side] run scoreboard players set #box_z0 mrcd_system 0
execute if block ~ ~ ~ minecraft:redstone_wire[east=none,west=none,north=side,south=none] run scoreboard players set #box_z1 mrcd_system 1000

execute if block ~ ~ ~ minecraft:redstone_wire[east=up,west=none,north=none,south=none] run scoreboard players set #box_x0 mrcd_system 0
execute if block ~ ~ ~ minecraft:redstone_wire[east=none,west=up,north=none,south=none] run scoreboard players set #box_x1 mrcd_system 1000
execute if block ~ ~ ~ minecraft:redstone_wire[east=none,west=none,north=none,south=up] run scoreboard players set #box_z0 mrcd_system 0
execute if block ~ ~ ~ minecraft:redstone_wire[east=none,west=none,north=up,south=none] run scoreboard players set #box_z1 mrcd_system 1000

function mrcd:generic/cube/main
tag @s add mrcd_detected