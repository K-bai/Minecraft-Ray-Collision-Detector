summon marker ~ ~ ~ {Tags:["at_target","init"]}

# Tp to #target position
scoreboard players operation #debug_x mrcd_system = #target_x mrcd_system
scoreboard players operation #debug_y mrcd_system = #target_y mrcd_system
scoreboard players operation #debug_z mrcd_system = #target_z mrcd_system

scoreboard players operation #debug_x mrcd_system += #block_corner_x mrcd_system
scoreboard players operation #debug_y mrcd_system += #block_corner_y mrcd_system
scoreboard players operation #debug_z mrcd_system += #block_corner_z mrcd_system

execute store result entity @e[type=marker,tag=at_target,tag=init,limit=1] Pos[0] double 0.001 run scoreboard players get #debug_x mrcd_system
execute store result entity @e[type=marker,tag=at_target,tag=init,limit=1] Pos[1] double 0.001 run scoreboard players get #debug_y mrcd_system
execute store result entity @e[type=marker,tag=at_target,tag=init,limit=1] Pos[2] double 0.001 run scoreboard players get #debug_z mrcd_system

execute at @e[type=marker,tag=at_target,tag=init] run particle end_rod ~ ~ ~

scoreboard players operation @e[type=marker,tag=at_target,tag=init] mrcd_system = n_recursion mrcd_system

tag @e[type=marker,tag=at_target,tag=init] remove init
