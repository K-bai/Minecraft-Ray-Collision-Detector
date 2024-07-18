scoreboard players set #box_x0 mrcd_system 313
scoreboard players set #box_z0 mrcd_system 313
scoreboard players set #box_x1 mrcd_system 688
scoreboard players set #box_z1 mrcd_system 688
scoreboard players operation #box_x0 mrcd_system += #var0 mrcd_system
scoreboard players operation #box_x1 mrcd_system += #var0 mrcd_system
scoreboard players operation #box_z0 mrcd_system += #var1 mrcd_system
scoreboard players operation #box_z1 mrcd_system += #var1 mrcd_system
function mrcd:private/cube/main