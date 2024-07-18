# Change execute position and continue (flag to avoid recursion)
scoreboard players operation #block_x mrcd_system = #target_x mrcd_system
scoreboard players operation #block_y mrcd_system = #target_y mrcd_system
scoreboard players operation #block_z mrcd_system = #target_z mrcd_system

execute if score #target_x mrcd_system matches 1000 run function mrcd:private/recurse/continue/x_plus
execute if score #target_x mrcd_system matches -1 run function mrcd:private/recurse/continue/x_minus
execute if score #target_y mrcd_system matches 1000 run function mrcd:private/recurse/continue/y_plus
execute if score #target_y mrcd_system matches -1 run function mrcd:private/recurse/continue/y_minus
execute if score #target_z mrcd_system matches 1000 run function mrcd:private/recurse/continue/z_plus
execute if score #target_z mrcd_system matches -1 run function mrcd:private/recurse/continue/z_minus

execute at @e[type=marker,tag=new_pos,limit=1] run function mrcd:private/recurse