# 创建标记 Create marker
execute at @s positioned ^ ^ ^5 run summon area_effect_cloud ~ ~ ~ {Tags:["mrcd_mark","mrcd_entity"],Duration:100}
# 保存速度和方向 Save speed and direction
execute as @e[tag=mrcd_mark] store result score @s mrcd_x0 run data get entity @s Pos[0] 1000
execute as @e[tag=mrcd_mark] store result score @s mrcd_y0 run data get entity @s Pos[1] 1000
execute as @e[tag=mrcd_mark] store result score @s mrcd_z0 run data get entity @s Pos[2] 1000
execute store result score #var0 mrcd_system run data get entity @s Pos[0] 1000
execute store result score #var1 mrcd_system run data get entity @s Pos[1] 1000
execute store result score #var2 mrcd_system run data get entity @s Pos[2] 1000
scoreboard players operation @e[tag=mrcd_mark,limit=1] mrcd_x0 -= #var0 mrcd_system
scoreboard players operation @e[tag=mrcd_mark,limit=1] mrcd_y0 -= #var1 mrcd_system
scoreboard players operation @e[tag=mrcd_mark,limit=1] mrcd_z0 -= #var2 mrcd_system
# 实体检测需要让标记面向飞行方向 Rotate to the moving direction
execute at @s anchored eyes positioned ^ ^ ^ run tp @e[tag=mrcd_mark,limit=1] ~ ~ ~ ~ ~

# 递归并返回值 Recurse and return
execute as @e[tag=mrcd_mark,limit=1] at @s run function mrcd:generic/start
execute if entity @e[tag=mrcd_mark,tag=mrcd_touch_edge,tag=mrcd_touch_x_plus] at @s run say touched x+
execute if entity @e[tag=mrcd_mark,tag=mrcd_touch_edge,tag=mrcd_touch_x_minus] at @s run say touched x-
execute if entity @e[tag=mrcd_mark,tag=mrcd_touch_edge,tag=mrcd_touch_y_plus] at @s run say touched y+
execute if entity @e[tag=mrcd_mark,tag=mrcd_touch_edge,tag=mrcd_touch_y_minus] at @s run say touched y-
execute if entity @e[tag=mrcd_mark,tag=mrcd_touch_edge,tag=mrcd_touch_z_plus] at @s run say touched z+
execute if entity @e[tag=mrcd_mark,tag=mrcd_touch_edge,tag=mrcd_touch_z_minus] at @s run say touched z-
execute as @e[tag=mrcd_target_entity] at @s run say I'm marked.
tag @e[tag=mrcd_target_entity] remove mrcd_target_entity

# 清除tag Clear tag
tag @e[tag=mrcd_mark] remove mrcd_mark