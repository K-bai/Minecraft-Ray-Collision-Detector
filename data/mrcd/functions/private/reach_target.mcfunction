# 直接传送到#target的位置 Tp to #target position
scoreboard players operation #target_x mrcd_system = #total_x mrcd_system
scoreboard players operation #target_y mrcd_system = #total_y mrcd_system
scoreboard players operation #target_z mrcd_system = #total_z mrcd_system
scoreboard players operation #target_x mrcd_system += #block_x mrcd_system
scoreboard players operation #target_y mrcd_system += #block_y mrcd_system
scoreboard players operation #target_z mrcd_system += #block_z mrcd_system
execute if entity @s[tag=!mrcd_touch_entity] run function mrcd:private/move
# 清除碰撞标签 Clear collision tags and scoreboards
tag @s[tag=mrcd_touch_edge] remove mrcd_touch_edge
scoreboard players set #target_x mrcd_system 0
scoreboard players set #target_y mrcd_system 0
scoreboard players set #target_z mrcd_system 0

#tellraw @a ["-----reach target-----"]
#tellraw @a ["target_x:",{"score":{"name":"#target_x","objective":"mrcd_system"}},", target_y:",{"score":{"name":"#target_y","objective":"mrcd_system"}},", target_z:",{"score":{"name":"#target_z","objective":"mrcd_system"}}]
