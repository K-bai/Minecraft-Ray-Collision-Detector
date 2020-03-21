# 移动到下一个方块处 Move to #targetx,y,z
execute store result score #target_temp_x mrcd_system run scoreboard players get #target_x mrcd_system
execute store result score #target_temp_y mrcd_system run scoreboard players get #target_y mrcd_system
execute store result score #target_temp_z mrcd_system run scoreboard players get #target_z mrcd_system
scoreboard players operation #target_x mrcd_system += #block_corner_x mrcd_system
scoreboard players operation #target_y mrcd_system += #block_corner_y mrcd_system
scoreboard players operation #target_z mrcd_system += #block_corner_z mrcd_system
execute store result entity @s Pos[0] double 0.001 run scoreboard players get #target_x mrcd_system
execute store result entity @s Pos[1] double 0.001 run scoreboard players get #target_y mrcd_system
execute store result entity @s Pos[2] double 0.001 run scoreboard players get #target_z mrcd_system

# 如果是-1，就往边界靠靠
# -1 means it reached the block on the negative side
execute if score #target_temp_x mrcd_system matches -1 at @s run tp @s ~0.0009 ~ ~ ~ ~
execute if score #target_temp_y mrcd_system matches -1 at @s run tp @s ~ ~0.0009 ~ ~ ~
execute if score #target_temp_z mrcd_system matches -1 at @s run tp @s ~ ~ ~0.0009 ~ ~
# 如果碰到方块了，并且还在1000的边界，为了让AEC在被碰撞的方块内，要轻微移动一下
# 1000 means it reached the block on the positive side
execute if entity @s[tag=mrcd_touch_edge] if score #target_temp_x mrcd_system matches 1000 at @s run tp @s ~-0.00001 ~ ~ ~ ~
execute if entity @s[tag=mrcd_touch_edge] if score #target_temp_y mrcd_system matches 1000 at @s run tp @s ~ ~-0.00001 ~ ~ ~
execute if entity @s[tag=mrcd_touch_edge] if score #target_temp_z mrcd_system matches 1000 at @s run tp @s ~ ~ ~-0.00001 ~ ~