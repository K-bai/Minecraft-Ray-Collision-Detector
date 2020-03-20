# 设定距离
execute store result score #total_x mrcd_system run scoreboard players get @s mrcd_x0
execute store result score #total_y mrcd_system run scoreboard players get @s mrcd_y0
execute store result score #total_z mrcd_system run scoreboard players get @s mrcd_z0
# 递归
execute at @s run function mrcd:generic/recurse