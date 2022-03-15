# Clear tags from last tick
tag @s[tag=mrcd_detected] remove mrcd_detected
tag @s[tag=mrcd_touch_edge_air] remove mrcd_touch_edge_air

# Block collision test
## 当前是空气类方块，跳过 Skip if current block is air
execute if block ~ ~ ~ #mrcd:air_like run tag @s add mrcd_detected
## 当前是子弹可穿过方块，跳过 Skip if the marker type is bullet and current block can be passed by player
execute if entity @s[tag=!mrcd_detected,tag=mrcd_bullet] if block ~ ~ ~ #mrcd:player_can_pass run tag @s add mrcd_detected
## 玩家不可穿过方块碰撞 Test if current block can't be passed by player
execute if entity @s[tag=!mrcd_detected] unless block ~ ~ ~ #mrcd:player_can_pass run function mrcd:private/category/solid
## 玩家可穿过方块碰撞 Test if current block can be passed by player
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ #mrcd:player_can_pass run function mrcd:private/category/player_can_pass
## 所有未定义方块碰撞（视为完整方块） Test if current block is undefined (treated as a full block)
execute if entity @s[tag=!mrcd_detected] run function mrcd:private/types/solid
## 当前未触碰碰撞箱，移动到边界 Move to the edge of the block if marker doesn't touch the hitbox of the block
execute if entity @s[tag=!mrcd_touch_edge] run function mrcd:private/types/air/main

#tellraw @a ["-----hit recurse-----"]
#tellraw @a ["target_x:",{"score":{"name":"#target_x","objective":"mrcd_system"}},", target_y:",{"score":{"name":"#target_y","objective":"mrcd_system"}},", target_z:",{"score":{"name":"#target_z","objective":"mrcd_system"}}]
#tellraw @a ["block_x:",{"score":{"name":"#block_x","objective":"mrcd_system"}},", block_y:",{"score":{"name":"#block_y","objective":"mrcd_system"}},", block_z:",{"score":{"name":"#block_z","objective":"mrcd_system"}}]

# Convert the complex block markers to #target_x,y,z
execute if entity @s[tag=mrcd_touch_edge_complex] run function mrcd:private/complex_cube/convert

# Entity collision test. Executed if there are any entities in this block. Exist dxdydz bug.
execute at @s[tag=mrcd_entity] align xyz if entity @e[type=!#mrcd:ignore,dx=0,dy=0,dz=0] run function mrcd:private/entity
execute at @s[tag=mrcd_entity_targeted] align xyz if entity @e[tag=mrcd_target,dx=0,dy=0,dz=0] run function mrcd:private/entity_targeted




# Move marker
## Convert #target_x,y,z to a coordinate(#target_c_x,y,z) which based on the coordinate of marker (before based on the coordinate of block corner)
execute store result score #target_c_x mrcd_system run scoreboard players get #target_x mrcd_system
execute store result score #target_c_y mrcd_system run scoreboard players get #target_y mrcd_system
execute store result score #target_c_z mrcd_system run scoreboard players get #target_z mrcd_system
scoreboard players operation #target_c_x mrcd_system -= #block_x mrcd_system
scoreboard players operation #target_c_y mrcd_system -= #block_y mrcd_system
scoreboard players operation #target_c_z mrcd_system -= #block_z mrcd_system
## Which is longer? Length of #target_c_x,y,z or #total_x,y,z?
execute store result score #var0 mrcd_system run scoreboard players get #total_x mrcd_system
execute store result score #var1 mrcd_system run scoreboard players get #target_c_x mrcd_system
execute store result score #var2 mrcd_system run scoreboard players get #total_y mrcd_system
execute store result score #var3 mrcd_system run scoreboard players get #target_c_y mrcd_system
execute store result score #var4 mrcd_system run scoreboard players get #total_z mrcd_system
execute store result score #var5 mrcd_system run scoreboard players get #target_c_z mrcd_system
execute if score #var0 mrcd_system matches ..-1 run scoreboard players operation #var0 mrcd_system *= #const_minus_1 mrcd_system
execute if score #var1 mrcd_system matches ..-1 run scoreboard players operation #var1 mrcd_system *= #const_minus_1 mrcd_system
execute if score #var2 mrcd_system matches ..-1 run scoreboard players operation #var2 mrcd_system *= #const_minus_1 mrcd_system
execute if score #var3 mrcd_system matches ..-1 run scoreboard players operation #var3 mrcd_system *= #const_minus_1 mrcd_system
execute if score #var4 mrcd_system matches ..-1 run scoreboard players operation #var4 mrcd_system *= #const_minus_1 mrcd_system
execute if score #var5 mrcd_system matches ..-1 run scoreboard players operation #var5 mrcd_system *= #const_minus_1 mrcd_system
scoreboard players operation #var0 mrcd_system -= #var1 mrcd_system
scoreboard players operation #var2 mrcd_system -= #var3 mrcd_system
scoreboard players operation #var4 mrcd_system -= #var5 mrcd_system
execute if score #var0 mrcd_system matches ..0 if score #var2 mrcd_system matches ..0 if score #var4 mrcd_system matches ..0 run scoreboard players set #if_reach_target mrcd_system 1
execute if score #var0 mrcd_system matches 0.. if score #var2 mrcd_system matches 0.. if score #var4 mrcd_system matches 0.. run scoreboard players set #if_reach_target mrcd_system 0
### #total_x,y,z<#target_c_x,y,z ----> Reached the distance limit
execute if score #if_reach_target mrcd_system matches 1 run function mrcd:private/reach_target
### #total_x,y,z >= #target_c_x,y,z and collide with a block ----> Collide with a block
execute if score #if_reach_target mrcd_system matches 0 if entity @s[tag=mrcd_touch_edge] run function mrcd:private/hit_block
### #total_x,y,z >= #target_c_x,y,z and not collide with a block ----> Next cycle
execute if score #if_reach_target mrcd_system matches 0 if entity @s[tag=!mrcd_touch_edge] run function mrcd:private/next_cycle
