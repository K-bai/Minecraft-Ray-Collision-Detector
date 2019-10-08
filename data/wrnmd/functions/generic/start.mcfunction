# 设定距离
execute store result score #total_x wrnmd_system run scoreboard players get @s wrnmd_x0
execute store result score #total_y wrnmd_system run scoreboard players get @s wrnmd_y0
execute store result score #total_z wrnmd_system run scoreboard players get @s wrnmd_z0
# 递归
execute at @s run function wrnmd:generic/recurse