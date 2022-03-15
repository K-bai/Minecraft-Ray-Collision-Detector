# Move to #targetx,y,z
scoreboard players operation #target_x mrcd_system += #block_corner_x mrcd_system
scoreboard players operation #target_y mrcd_system += #block_corner_y mrcd_system
scoreboard players operation #target_z mrcd_system += #block_corner_z mrcd_system
execute store result entity @s Pos[0] double 0.001 run scoreboard players get #target_x mrcd_system
execute store result entity @s Pos[1] double 0.001 run scoreboard players get #target_y mrcd_system
execute store result entity @s Pos[2] double 0.001 run scoreboard players get #target_z mrcd_system