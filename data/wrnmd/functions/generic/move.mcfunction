# 移动到下一个方块处
execute store result score #target_temp_x wrnmd_system run scoreboard players get #target_x wrnmd_system
execute store result score #target_temp_y wrnmd_system run scoreboard players get #target_y wrnmd_system
execute store result score #target_temp_z wrnmd_system run scoreboard players get #target_z wrnmd_system
scoreboard players operation #target_x wrnmd_system += #block_corner_x wrnmd_system
scoreboard players operation #target_y wrnmd_system += #block_corner_y wrnmd_system
scoreboard players operation #target_z wrnmd_system += #block_corner_z wrnmd_system
execute store result entity @s Pos[0] double 0.001 run scoreboard players get #target_x wrnmd_system
execute store result entity @s Pos[1] double 0.001 run scoreboard players get #target_y wrnmd_system
execute store result entity @s Pos[2] double 0.001 run scoreboard players get #target_z wrnmd_system

# 如果是-1，就往边界靠靠
execute if score #target_temp_x wrnmd_system matches -1 at @s run tp @s ~0.0009 ~ ~ ~ ~
execute if score #target_temp_y wrnmd_system matches -1 at @s run tp @s ~ ~0.0009 ~ ~ ~
execute if score #target_temp_z wrnmd_system matches -1 at @s run tp @s ~ ~ ~0.0009 ~ ~
# 如果碰到方块了，并且还在1000的边界，为了让AEC在被碰撞的方块内，要轻微移动一下
execute if entity @s[tag=wrnmd_touch_edge] if score #target_temp_x wrnmd_system matches 1000 at @s run tp @s ~-0.00001 ~ ~ ~ ~
execute if entity @s[tag=wrnmd_touch_edge] if score #target_temp_y wrnmd_system matches 1000 at @s run tp @s ~ ~-0.00001 ~ ~ ~
execute if entity @s[tag=wrnmd_touch_edge] if score #target_temp_z wrnmd_system matches 1000 at @s run tp @s ~ ~ ~-0.00001 ~ ~