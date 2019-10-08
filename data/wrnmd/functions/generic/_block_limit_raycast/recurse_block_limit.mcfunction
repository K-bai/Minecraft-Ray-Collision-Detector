# 路程+1
scoreboard players add #glo0 wrnmd_system 1
# 清空上一刻的tag
tag @s[tag=wrnmd_touch_edge] remove wrnmd_touch_edge
tag @s[tag=wrnmd_touch_edge_air] remove wrnmd_touch_edge_air
tag @s[tag=wrnmd_touch_edge_complex] remove wrnmd_touch_edge_complex
tag @s[tag=wrnmd_detected] remove wrnmd_detected


# 0向量：保存玩家视线向量

# 获取在方块内的坐标
scoreboard players set #const_1000 wrnmd_system 1000
execute store result score #block_x wrnmd_system run data get entity @s Pos[0] 1000
execute store result score #block_y wrnmd_system run data get entity @s Pos[1] 1000
execute store result score #block_z wrnmd_system run data get entity @s Pos[2] 1000
scoreboard players operation #block_x wrnmd_system %= #const_1000 wrnmd_system
scoreboard players operation #block_y wrnmd_system %= #const_1000 wrnmd_system
scoreboard players operation #block_z wrnmd_system %= #const_1000 wrnmd_system

# 方块碰撞判定
## 当前是空气类方块，跳过
execute if block ~ ~ ~ air run tag @s add wrnmd_detected
## 常见复杂方块碰撞
#function wrnmd:generic/category/common
## 非常见复杂方块碰撞
## 所有未定义方块碰撞（视为完整方块）
execute if entity @s[tag=!wrnmd_detected] run function wrnmd:generic/types/solid
## 当前未触碰碰撞箱，移动到边界
execute if entity @s[tag=!wrnmd_touch_edge] run function wrnmd:generic/types/air/main

# 移动子弹
## 单一碰撞箱移动位置
execute if entity @s[tag=!wrnmd_touch_edge_complex] run function wrnmd:generic/move
## 复杂碰撞箱移动位置
execute if entity @s[tag=wrnmd_touch_edge_complex] run function wrnmd:generic/complex_move


#execute at @s run particle minecraft:dust 0 0 0 1 ~ ~ ~ 0 0 0 0 1 force
execute at @s run summon area_effect_cloud ~ ~ ~ {Duration:100}



# 判断结束
execute if entity @s[tag=wrnmd_touch_edge,tag=wrnmd_touch_x_plus] at @s run say 碰到了 x+
execute if entity @s[tag=wrnmd_touch_edge,tag=wrnmd_touch_x_minus] at @s run say 碰到了 x-
execute if entity @s[tag=wrnmd_touch_edge,tag=wrnmd_touch_y_plus] at @s run say 碰到了 y+
execute if entity @s[tag=wrnmd_touch_edge,tag=wrnmd_touch_y_minus] at @s run say 碰到了 y-
execute if entity @s[tag=wrnmd_touch_edge,tag=wrnmd_touch_z_plus] at @s run say 碰到了 z+
execute if entity @s[tag=wrnmd_touch_edge,tag=wrnmd_touch_z_minus] at @s run say 碰到了 z-
execute if entity @s[tag=!wrnmd_touch_edge] if score #glo0 wrnmd_system matches ..10 at @s run function wrnmd:generic/recurse
