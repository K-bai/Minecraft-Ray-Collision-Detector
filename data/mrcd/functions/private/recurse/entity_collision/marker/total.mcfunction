scoreboard players operation #temp_x mrcd_system = #total_x mrcd_system
scoreboard players operation #temp_y mrcd_system = #total_y mrcd_system
scoreboard players operation #temp_z mrcd_system = #total_z mrcd_system

scoreboard players operation #temp_x mrcd_system += #start_x mrcd_system
scoreboard players operation #temp_y mrcd_system += #start_y mrcd_system
scoreboard players operation #temp_z mrcd_system += #start_z mrcd_system

execute store result entity @s Pos[0] double 0.001 run scoreboard players get #temp_x mrcd_system
execute store result entity @s Pos[1] double 0.001 run scoreboard players get #temp_y mrcd_system
execute store result entity @s Pos[2] double 0.001 run scoreboard players get #temp_z mrcd_system