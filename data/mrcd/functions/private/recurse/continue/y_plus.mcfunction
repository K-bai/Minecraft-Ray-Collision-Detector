scoreboard players operation #block_x mrcd_system = #target_x mrcd_system
scoreboard players set #block_y mrcd_system 0
scoreboard players operation #block_z mrcd_system = #target_z mrcd_system

execute if score #target_x mrcd_system matches -1 run scoreboard players set #block_x mrcd_system 0
execute if score #target_z mrcd_system matches -1 run scoreboard players set #block_z mrcd_system 0

scoreboard players add #block_corner_y mrcd_system 1000

execute positioned ~ ~1 ~ run function mrcd:private/recurse