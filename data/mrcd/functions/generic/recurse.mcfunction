# 清空上一次的tag Clear tags from last tick
tag @s[tag=mrcd_touch_edge] remove mrcd_touch_edge
tag @s[tag=mrcd_touch_edge_air] remove mrcd_touch_edge_air
tag @s[tag=mrcd_touch_edge_complex] remove mrcd_touch_edge_complex
tag @s[tag=mrcd_detected] remove mrcd_detected

# 获取在方块内的坐标和方块角落坐标 Get the coordinate of current block
# #block_x,y,z: 范围是0-1000，表示相对方块顶点坐标
# #block_corner_x,y,z: 表示方块顶点绝对坐标(1000倍)
# #block_x,y,z: range from 0-1000, relative coordinate in a block
# #block_corner_x,y,z: absolute coordinate of current block (multiply by 1000)
execute store result score #block_x mrcd_system run data get entity @s Pos[0] 1000
execute store result score #block_y mrcd_system run data get entity @s Pos[1] 1000
execute store result score #block_z mrcd_system run data get entity @s Pos[2] 1000
execute store result score #block_corner_x mrcd_system run scoreboard players get #block_x mrcd_system
execute store result score #block_corner_y mrcd_system run scoreboard players get #block_y mrcd_system
execute store result score #block_corner_z mrcd_system run scoreboard players get #block_z mrcd_system
scoreboard players operation #block_x mrcd_system %= #const_1000 mrcd_system
scoreboard players operation #block_y mrcd_system %= #const_1000 mrcd_system
scoreboard players operation #block_z mrcd_system %= #const_1000 mrcd_system
scoreboard players operation #block_corner_x mrcd_system -= #block_x mrcd_system
scoreboard players operation #block_corner_y mrcd_system -= #block_y mrcd_system
scoreboard players operation #block_corner_z mrcd_system -= #block_z mrcd_system
execute if score #block_x mrcd_system matches 999 run scoreboard players set #block_x mrcd_system 1000
execute if score #block_y mrcd_system matches 999 run scoreboard players set #block_y mrcd_system 1000
execute if score #block_z mrcd_system matches 999 run scoreboard players set #block_z mrcd_system 1000


# 方块碰撞判定 Block collision test
## 当前是空气类方块，跳过 Skip if current block is air
execute if block ~ ~ ~ #mrcd:air_like run tag @s add mrcd_detected
## 当前是子弹可穿过方块，跳过 Skip if the marker type is bullet and current block can be passed by player
execute if entity @s[tag=!mrcd_detected,tag=mrcd_bullet] if block ~ ~ ~ #mrcd:player_can_pass run tag @s add mrcd_detected
## 玩家不可穿过方块碰撞 Test if current block can't be passed by player
execute if entity @s[tag=!mrcd_detected] unless block ~ ~ ~ #mrcd:player_can_pass run function mrcd:generic/category/solid
## 玩家可穿过方块碰撞 Test if current block can be passed by player
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ #mrcd:player_can_pass run function mrcd:generic/category/player_can_pass
## 所有未定义方块碰撞（视为完整方块） Test if current block is undefined (treated as a full block) 
execute if entity @s[tag=!mrcd_detected] run function mrcd:generic/types/solid
## 当前未触碰碰撞箱，移动到边界 Move to the edge of the block if marker doesn't touch the hitbox of the block
execute if entity @s[tag=!mrcd_touch_edge] run function mrcd:generic/types/air/main

# 把复杂方块的实体转化为坐标 Convert the complex block markers to #target_x,y,z
execute if entity @s[tag=mrcd_touch_edge_complex] run function mrcd:generic/convert

# 实体碰撞判定 本格内有目标生物则执行 此处有dxdydz bug
# Entity collision test. Executed if there are any entities in this block. Exist dxdydz bug.
execute at @s[tag=mrcd_entity] align xyz if entity @e[type=#mrcd:target,dx=0,dy=0,dz=0] run function mrcd:generic/entity




# 移动位置相关 Move marker
## 修改为相对当前坐标的位置
## Convert #target_x,y,z to a coordinate which based on the coordinate of marker (before based on the coordinate of block corner)
scoreboard players operation #target_x mrcd_system -= #block_x mrcd_system
scoreboard players operation #target_y mrcd_system -= #block_y mrcd_system
scoreboard players operation #target_z mrcd_system -= #block_z mrcd_system
## 判定目标距离和总距离的绝对值大小
## Which is longer? Length of #targetx,y,z or #total_x,y,z?
execute store result score #var0 mrcd_system run scoreboard players get #total_x mrcd_system
execute store result score #var1 mrcd_system run scoreboard players get #target_x mrcd_system
execute store result score #var2 mrcd_system run scoreboard players get #total_y mrcd_system
execute store result score #var3 mrcd_system run scoreboard players get #target_y mrcd_system
execute store result score #var4 mrcd_system run scoreboard players get #total_z mrcd_system
execute store result score #var5 mrcd_system run scoreboard players get #target_z mrcd_system
execute if score #var0 mrcd_system matches ..-1 run scoreboard players operation #var0 mrcd_system *= #const_minus_1 mrcd_system
execute if score #var1 mrcd_system matches ..-1 run scoreboard players operation #var1 mrcd_system *= #const_minus_1 mrcd_system
execute if score #var2 mrcd_system matches ..-1 run scoreboard players operation #var2 mrcd_system *= #const_minus_1 mrcd_system
execute if score #var3 mrcd_system matches ..-1 run scoreboard players operation #var3 mrcd_system *= #const_minus_1 mrcd_system
execute if score #var4 mrcd_system matches ..-1 run scoreboard players operation #var4 mrcd_system *= #const_minus_1 mrcd_system
execute if score #var5 mrcd_system matches ..-1 run scoreboard players operation #var5 mrcd_system *= #const_minus_1 mrcd_system
scoreboard players operation #var0 mrcd_system -= #var1 mrcd_system
scoreboard players operation #var2 mrcd_system -= #var3 mrcd_system
scoreboard players operation #var4 mrcd_system -= #var5 mrcd_system
execute if score #var0 mrcd_system matches ..0 if score #var2 mrcd_system matches ..0 if score #var4 mrcd_system matches ..0 run scoreboard players set #var0 mrcd_system -1
execute if score #var0 mrcd_system matches 0.. if score #var2 mrcd_system matches 0.. if score #var4 mrcd_system matches 0.. run scoreboard players set #var0 mrcd_system 1
### 如果总距离小于等于目标距离，把目标距离修改为总距离
### If length of #total_x,y,z is less than length of #target_x,y,z, than #targetx,y,z = #total_x,y,z
execute if score #var0 mrcd_system matches ..0 run scoreboard players operation #target_x mrcd_system = #total_x mrcd_system
execute if score #var0 mrcd_system matches ..0 run scoreboard players operation #target_y mrcd_system = #total_y mrcd_system
execute if score #var0 mrcd_system matches ..0 run scoreboard players operation #target_z mrcd_system = #total_z mrcd_system
### 如果总距离大于目标距离，让总距离减目标距离
### If length of #total_x,y,z is greater than length of #target_x,y,z, than #total_x,y,z -= #targetx,y,z
execute if score #var0 mrcd_system matches 1.. run scoreboard players operation #total_x mrcd_system -= #target_x mrcd_system
execute if score #var0 mrcd_system matches 1.. run scoreboard players operation #total_y mrcd_system -= #target_y mrcd_system
execute if score #var0 mrcd_system matches 1.. run scoreboard players operation #total_z mrcd_system -= #target_z mrcd_system
## 移动 Move!
scoreboard players operation #target_x mrcd_system += #block_x mrcd_system
scoreboard players operation #target_y mrcd_system += #block_y mrcd_system
scoreboard players operation #target_z mrcd_system += #block_z mrcd_system
execute if entity @s[tag=!mrcd_touch_entity] run function mrcd:generic/move
## 如果总距离小于等于目标距离，清除碰撞tag
## If total length is less than target length, it means that total limit is reached and should stop moving forward
execute if score #var0 mrcd_system matches ..0 run tag @s[tag=mrcd_touch_edge] remove mrcd_touch_edge
## 如果总距离大于目标距离且没碰撞，继续递归
## If total length is greater than target length, it means that total limit is not reached and should keep moving forward
execute if score #var0 mrcd_system matches 1.. if entity @s[tag=!mrcd_touch_edge] at @s run function mrcd:generic/recurse
