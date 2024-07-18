scoreboard players operation #temp_x mrcd_system = #target_x mrcd_system
scoreboard players operation #temp_y mrcd_system = #target_y mrcd_system
scoreboard players operation #temp_z mrcd_system = #target_z mrcd_system

scoreboard players operation #temp_x mrcd_system += #block_corner_x mrcd_system
scoreboard players operation #temp_y mrcd_system += #block_corner_y mrcd_system
scoreboard players operation #temp_z mrcd_system += #block_corner_z mrcd_system

execute store result entity @s Pos[0] double 0.001 run scoreboard players get #temp_x mrcd_system
execute store result entity @s Pos[1] double 0.001 run scoreboard players get #temp_y mrcd_system
execute store result entity @s Pos[2] double 0.001 run scoreboard players get #temp_z mrcd_system