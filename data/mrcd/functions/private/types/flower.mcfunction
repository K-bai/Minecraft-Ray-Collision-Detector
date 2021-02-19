scoreboard players set #box_x0 mrcd_system 313
scoreboard players set #box_y0 mrcd_system 0
scoreboard players set #box_z0 mrcd_system 313
scoreboard players set #box_x1 mrcd_system 688
scoreboard players set #box_y1 mrcd_system 625
scoreboard players set #box_z1 mrcd_system 688

execute store result score #var0 mrcd_system run scoreboard players get #block_corner_x mrcd_system
execute store result score #var1 mrcd_system run scoreboard players get #block_corner_z mrcd_system
scoreboard players operation #var0 mrcd_system /= #const_1000 mrcd_system
scoreboard players operation #var1 mrcd_system /= #const_1000 mrcd_system
function mrcd:private/calculate/offset
scoreboard players operation #box_x0 mrcd_system += #var0 mrcd_system
scoreboard players operation #box_x1 mrcd_system += #var0 mrcd_system
scoreboard players operation #box_z0 mrcd_system += #var1 mrcd_system
scoreboard players operation #box_z1 mrcd_system += #var1 mrcd_system

function mrcd:private/cube/main
tag @s add mrcd_detected