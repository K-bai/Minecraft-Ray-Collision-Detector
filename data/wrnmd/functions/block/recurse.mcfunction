# 路程+1
scoreboard players add #glo0 wrnmd_system 1
# 清空上一刻的tag
tag @s[tag=wrnmd_touch_edge] remove wrnmd_touch_edge
tag @s[tag=wrnmd_touch_edge_complex] remove wrnmd_touch_edge_complex
tag @s[tag=wrnmd_touch_edge_air] remove wrnmd_touch_edge_air


# 0向量：保存玩家视线向量

# 检查方块的方法：
## 获取在方块内的坐标
scoreboard players set #const_1000 wrnmd_system 1000
execute store result score #block_x wrnmd_system run data get entity @s Pos[0] 1000
execute store result score #block_y wrnmd_system run data get entity @s Pos[1] 1000
execute store result score #block_z wrnmd_system run data get entity @s Pos[2] 1000
scoreboard players operation #block_x wrnmd_system %= #const_1000 wrnmd_system
scoreboard players operation #block_y wrnmd_system %= #const_1000 wrnmd_system
scoreboard players operation #block_z wrnmd_system %= #const_1000 wrnmd_system
## 当前是空气类方块，移动到边界
execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ air run function wrnmd:block/types/air/main
## 当前是复杂方块，创建多个碰撞，判断与出发点距离并移动
execute if entity @s[tag=!wrnmd_touch_edge,tag=!wrnmd_touch_edge_air] if block ~ ~ ~ #minecraft:walls run function wrnmd:block/types/wall
execute if entity @s[tag=!wrnmd_touch_edge,tag=!wrnmd_touch_edge_air] if block ~ ~ ~ #wrnmd:glass_pane_like run function wrnmd:block/types/glass_pane
execute if entity @s[tag=!wrnmd_touch_edge,tag=!wrnmd_touch_edge_air] if block ~ ~ ~ #minecraft:fences run function wrnmd:block/types/fence
execute if entity @s[tag=!wrnmd_touch_edge,tag=!wrnmd_touch_edge_air] if block ~ ~ ~ minecraft:vine run function wrnmd:block/types/vine
execute if entity @s[tag=!wrnmd_touch_edge,tag=!wrnmd_touch_edge_air] if block ~ ~ ~ minecraft:scaffolding run function wrnmd:block/types/scaffolding
execute if entity @s[tag=!wrnmd_touch_edge,tag=!wrnmd_touch_edge_air] if block ~ ~ ~ #minecraft:beds run function wrnmd:block/types/bed
execute if entity @s[tag=!wrnmd_touch_edge,tag=!wrnmd_touch_edge_air] if block ~ ~ ~ #wrnmd:piston[extended=true] run function wrnmd:block/types/piston
execute if entity @s[tag=!wrnmd_touch_edge,tag=!wrnmd_touch_edge_air] if block ~ ~ ~ minecraft:piston_head run function wrnmd:block/types/piston_head
## 当前是不完整方块 判断碰撞 移动到边界或碰撞点
execute if entity @s[tag=!wrnmd_touch_edge,tag=!wrnmd_touch_edge_air] if block ~ ~ ~ #minecraft:slabs run function wrnmd:block/types/slab
execute if entity @s[tag=!wrnmd_touch_edge,tag=!wrnmd_touch_edge_air] if block ~ ~ ~ #minecraft:wall_signs run function wrnmd:block/types/wall_sign
execute if entity @s[tag=!wrnmd_touch_edge,tag=!wrnmd_touch_edge_air] if block ~ ~ ~ #minecraft:flower_pots run function wrnmd:block/types/flower_pot
execute if entity @s[tag=!wrnmd_touch_edge,tag=!wrnmd_touch_edge_air] if block ~ ~ ~ #minecraft:buttons run function wrnmd:block/types/button
execute if entity @s[tag=!wrnmd_touch_edge,tag=!wrnmd_touch_edge_air] if block ~ ~ ~ #minecraft:doors run function wrnmd:block/types/door
execute if entity @s[tag=!wrnmd_touch_edge,tag=!wrnmd_touch_edge_air] if block ~ ~ ~ #minecraft:rails run function wrnmd:block/types/rail
execute if entity @s[tag=!wrnmd_touch_edge,tag=!wrnmd_touch_edge_air] if block ~ ~ ~ #wrnmd:standing_sign_like run function wrnmd:block/types/standing_sign
execute if entity @s[tag=!wrnmd_touch_edge,tag=!wrnmd_touch_edge_air] if block ~ ~ ~ #wrnmd:pressure_plate_like run function wrnmd:block/types/pressure_plate
execute if entity @s[tag=!wrnmd_touch_edge,tag=!wrnmd_touch_edge_air] if block ~ ~ ~ #wrnmd:repeater_like run function wrnmd:block/types/repeater
execute if entity @s[tag=!wrnmd_touch_edge,tag=!wrnmd_touch_edge_air] if block ~ ~ ~ minecraft:lever run function wrnmd:block/types/lever
execute if entity @s[tag=!wrnmd_touch_edge,tag=!wrnmd_touch_edge_air] if block ~ ~ ~ minecraft:tripwire_hook run function wrnmd:block/types/tripwire_hook
execute if entity @s[tag=!wrnmd_touch_edge,tag=!wrnmd_touch_edge_air] if block ~ ~ ~ minecraft:daylight_detector run function wrnmd:block/types/daylight_detector
execute if entity @s[tag=!wrnmd_touch_edge,tag=!wrnmd_touch_edge_air] if block ~ ~ ~ minecraft:enchanting_table run function wrnmd:block/types/enchanting_table
execute if entity @s[tag=!wrnmd_touch_edge,tag=!wrnmd_touch_edge_air] if block ~ ~ ~ minecraft:stonecutter run function wrnmd:block/types/stonecutter
execute if entity @s[tag=!wrnmd_touch_edge,tag=!wrnmd_touch_edge_air] if block ~ ~ ~ minecraft:campfire run function wrnmd:block/types/campfire
execute if entity @s[tag=!wrnmd_touch_edge,tag=!wrnmd_touch_edge_air] if block ~ ~ ~ minecraft:end_portal_frame run function wrnmd:block/types/end_portal_frame
execute if entity @s[tag=!wrnmd_touch_edge,tag=!wrnmd_touch_edge_air] if block ~ ~ ~ minecraft:ladder run function wrnmd:block/types/ladder
execute if entity @s[tag=!wrnmd_touch_edge,tag=!wrnmd_touch_edge_air] if block ~ ~ ~ minecraft:lily_pad run function wrnmd:block/types/lily_pad
execute if entity @s[tag=!wrnmd_touch_edge,tag=!wrnmd_touch_edge_air] if block ~ ~ ~ minecraft:snow run function wrnmd:block/types/snow
execute if entity @s[tag=!wrnmd_touch_edge,tag=!wrnmd_touch_edge_air] if block ~ ~ ~ minecraft:cactus run function wrnmd:block/types/cactus
execute if entity @s[tag=!wrnmd_touch_edge,tag=!wrnmd_touch_edge_air] if block ~ ~ ~ #minecraft:carpets run function wrnmd:block/types/carpet
execute if entity @s[tag=!wrnmd_touch_edge,tag=!wrnmd_touch_edge_air] if block ~ ~ ~ #wrnmd:big_chest run function wrnmd:block/types/chest
execute if entity @s[tag=!wrnmd_touch_edge,tag=!wrnmd_touch_edge_air] if block ~ ~ ~ minecraft:ender_chest run function wrnmd:block/types/chest
execute if entity @s[tag=!wrnmd_touch_edge,tag=!wrnmd_touch_edge_air] if block ~ ~ ~ #wrnmd:fence_gate_like run function wrnmd:block/types/fence_gate
execute if entity @s[tag=!wrnmd_touch_edge,tag=!wrnmd_touch_edge_air] if block ~ ~ ~ #wrnmd:skull_like run function wrnmd:block/types/skull
execute if entity @s[tag=!wrnmd_touch_edge,tag=!wrnmd_touch_edge_air] if block ~ ~ ~ #wrnmd:wall_skull_like run function wrnmd:block/types/wall_skull
execute if entity @s[tag=!wrnmd_touch_edge,tag=!wrnmd_touch_edge_air] if block ~ ~ ~ #wrnmd:wall_torch_like run function wrnmd:block/types/wall_torch
execute if entity @s[tag=!wrnmd_touch_edge,tag=!wrnmd_touch_edge_air] if block ~ ~ ~ #wrnmd:grass_path_like run function wrnmd:block/types/grass_path
execute if entity @s[tag=!wrnmd_touch_edge,tag=!wrnmd_touch_edge_air] if block ~ ~ ~ #wrnmd:torch_like run function wrnmd:block/types/torch
execute if entity @s[tag=!wrnmd_touch_edge,tag=!wrnmd_touch_edge_air] if block ~ ~ ~ #wrnmd:wall_coral_like run function wrnmd:block/types/wall_coral
execute if entity @s[tag=!wrnmd_touch_edge,tag=!wrnmd_touch_edge_air] if block ~ ~ ~ #wrnmd:coral_plant_like run function wrnmd:block/types/coral_plant
execute if entity @s[tag=!wrnmd_touch_edge,tag=!wrnmd_touch_edge_air] if block ~ ~ ~ #wrnmd:coral_fan_like run function wrnmd:block/types/coral_fan
execute if entity @s[tag=!wrnmd_touch_edge,tag=!wrnmd_touch_edge_air] if block ~ ~ ~ #wrnmd:grass_like run function wrnmd:block/types/grass
execute if entity @s[tag=!wrnmd_touch_edge,tag=!wrnmd_touch_edge_air] if block ~ ~ ~ #wrnmd:sapling_like run function wrnmd:block/types/sapling
execute if entity @s[tag=!wrnmd_touch_edge,tag=!wrnmd_touch_edge_air] if block ~ ~ ~ #wrnmd:wall_banner_like run function wrnmd:block/types/wall_banner
execute if entity @s[tag=!wrnmd_touch_edge,tag=!wrnmd_touch_edge_air] if block ~ ~ ~ #minecraft:stairs run function wrnmd:block/types/stair/main
## 当前是完整方块 判断碰撞 移动到边界或碰撞点
execute if entity @s[tag=!wrnmd_touch_edge,tag=!wrnmd_touch_edge_air] unless block ~ ~ ~ #wrnmd:not_solid run function wrnmd:block/types/solid
execute if entity @s[tag=!wrnmd_touch_edge,tag=!wrnmd_touch_edge_air] if block ~ ~ ~ #wrnmd:piston[extended=false] run function wrnmd:block/types/solid
## 当前是空气类方块之外的方块，且未触碰碰撞箱，移动到边界
execute if entity @s[tag=!wrnmd_touch_edge] unless block ~ ~ ~ air run function wrnmd:block/types/air/main

### 非复杂方块移动
execute if entity @s[tag=!wrnmd_touch_edge_complex] run function wrnmd:block/move
### 复杂方块移动
execute if entity @s[tag=wrnmd_touch_edge_complex] run function wrnmd:block/complex_move



#execute at @s run particle minecraft:dust 0 0 0 1 ~ ~ ~ 0 0 0 0 1 force
execute at @s run summon area_effect_cloud ~ ~ ~ {Duration:100}



# 判断结束
#execute if entity @s[tag=wrnmd_touch_edge] at @s run particle minecraft:dust 0 0 0 5 ~ ~ ~ 0 0 0 0 1 force
execute if entity @s[tag=wrnmd_touch_edge,tag=wrnmd_touch_x_plus] at @s run say 碰到了 x+
execute if entity @s[tag=wrnmd_touch_edge,tag=wrnmd_touch_x_minus] at @s run say 碰到了 x-
execute if entity @s[tag=wrnmd_touch_edge,tag=wrnmd_touch_y_plus] at @s run say 碰到了 y+
execute if entity @s[tag=wrnmd_touch_edge,tag=wrnmd_touch_y_minus] at @s run say 碰到了 y-
execute if entity @s[tag=wrnmd_touch_edge,tag=wrnmd_touch_z_plus] at @s run say 碰到了 z+
execute if entity @s[tag=wrnmd_touch_edge,tag=wrnmd_touch_z_minus] at @s run say 碰到了 z-
execute if entity @s[tag=!wrnmd_touch_edge] if score #glo0 wrnmd_system matches ..10 at @s run function wrnmd:block/recurse
