# Tp to #target position
execute if entity @s[tag=!mrcd_touch_entity] run function mrcd:private/move
scoreboard players set #target_x mrcd_system 0
scoreboard players set #target_y mrcd_system 0
scoreboard players set #target_z mrcd_system 0
