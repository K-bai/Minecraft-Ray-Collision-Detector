# 清空上一次的tag
tag @s[tag=wrnmd_touch_edge] remove wrnmd_touch_edge
tag @s[tag=wrnmd_touch_edge_air] remove wrnmd_touch_edge_air
tag @s[tag=wrnmd_touch_edge_complex] remove wrnmd_touch_edge_complex
tag @s[tag=wrnmd_detected] remove wrnmd_detected
tag @s[tag=wrnmd_continue] remove wrnmd_continue

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
## 当前是子弹可穿过方块，跳过
execute if entity @s[tag=!wrnmd_detected,tag=wrnmd_bullet] if block ~ ~ ~ #wrnmd:player_can_pass run tag @s add wrnmd_detected
## 玩家不可穿过方块碰撞
execute if entity @s[tag=!wrnmd_detected] unless block ~ ~ ~ #wrnmd:player_can_pass run function wrnmd:generic/category/solid
## 玩家可穿过方块碰撞
execute if entity @s[tag=!wrnmd_detected] if block ~ ~ ~ #wrnmd:player_can_pass run function wrnmd:generic/category/player_can_pass
## 所有未定义方块碰撞（视为完整方块）
execute if entity @s[tag=!wrnmd_detected] run function wrnmd:generic/types/solid
## 当前未触碰碰撞箱，移动到边界
execute if entity @s[tag=!wrnmd_touch_edge] run function wrnmd:generic/types/air/main

# 把复杂方块的实体转化为坐标
execute if entity @s[tag=wrnmd_touch_edge_complex] run function wrnmd:generic/convert

# 移动位置相关
## 修改为相对当前坐标的位置
execute store result score #set_x wrnmd_system run scoreboard players get #target_x wrnmd_system
execute store result score #set_y wrnmd_system run scoreboard players get #target_y wrnmd_system
execute store result score #set_z wrnmd_system run scoreboard players get #target_z wrnmd_system
scoreboard players operation #set_x wrnmd_system -= #block_x wrnmd_system
scoreboard players operation #set_y wrnmd_system -= #block_y wrnmd_system
scoreboard players operation #set_z wrnmd_system -= #block_z wrnmd_system
## 判定目标距离和设定距离的绝对值大小
scoreboard players set #const_minus_1 wrnmd_system -1
execute store result score #var0 wrnmd_system run scoreboard players get #total_x wrnmd_system
execute store result score #var1 wrnmd_system run scoreboard players get #set_x wrnmd_system
execute if score #var0 wrnmd_system matches ..-1 run scoreboard players operation #var0 wrnmd_system *= #const_minus_1 wrnmd_system
execute if score #var1 wrnmd_system matches ..-1 run scoreboard players operation #var1 wrnmd_system *= #const_minus_1 wrnmd_system
scoreboard players operation #var0 wrnmd_system -= #var1 wrnmd_system
### 如果设定距离小于等于目标距离，把目标距离修改为设定距离
execute if score #var0 wrnmd_system matches ..0 run scoreboard players operation #set_x wrnmd_system = #total_x wrnmd_system
execute if score #var0 wrnmd_system matches ..0 run scoreboard players operation #set_y wrnmd_system = #total_y wrnmd_system
execute if score #var0 wrnmd_system matches ..0 run scoreboard players operation #set_z wrnmd_system = #total_z wrnmd_system
### 如果设定距离大于目标距离，让设定距离减目标距离
execute if score #var0 wrnmd_system matches 1.. run tag @s add wrnmd_continue
execute if score #var0 wrnmd_system matches 1.. run scoreboard players operation #total_x wrnmd_system -= #set_x wrnmd_system
execute if score #var0 wrnmd_system matches 1.. run scoreboard players operation #total_y wrnmd_system -= #set_y wrnmd_system
execute if score #var0 wrnmd_system matches 1.. run scoreboard players operation #total_z wrnmd_system -= #set_z wrnmd_system
## 移动
execute store result score #target_x wrnmd_system run scoreboard players get #set_x wrnmd_system
execute store result score #target_y wrnmd_system run scoreboard players get #set_y wrnmd_system
execute store result score #target_z wrnmd_system run scoreboard players get #set_z wrnmd_system
scoreboard players operation #target_x wrnmd_system += #block_x wrnmd_system
scoreboard players operation #target_y wrnmd_system += #block_y wrnmd_system
scoreboard players operation #target_z wrnmd_system += #block_z wrnmd_system
function wrnmd:generic/move
## 如果设定距离大于目标距离，继续递归
execute if entity @s[tag=wrnmd_continue,tag=!wrnmd_touch_edge] at @s run function wrnmd:generic/recurse