# Change execute position and continue (flag to avoid recursion)
execute if entity @s[tag=!mrcd_tick_done] if score #target_x mrcd_system matches 1000 run function mrcd:private/recurse/continue/x_plus
execute if entity @s[tag=!mrcd_tick_done] if score #target_x mrcd_system matches -1 run function mrcd:private/recurse/continue/x_minus
execute if entity @s[tag=!mrcd_tick_done] if score #target_y mrcd_system matches 1000 run function mrcd:private/recurse/continue/y_plus
execute if entity @s[tag=!mrcd_tick_done] if score #target_y mrcd_system matches -1 run function mrcd:private/recurse/continue/y_minus
execute if entity @s[tag=!mrcd_tick_done] if score #target_z mrcd_system matches 1000 run function mrcd:private/recurse/continue/z_plus
execute if entity @s[tag=!mrcd_tick_done] if score #target_z mrcd_system matches -1 run function mrcd:private/recurse/continue/z_minus