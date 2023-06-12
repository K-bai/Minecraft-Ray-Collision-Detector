# Find the nearnest block marker
execute at @s run tag @e[type=area_effect_cloud,tag=mrcd_touch_mark,sort=nearest,limit=1] add mrcd_temp

# Copy the tag on the nearest block marker
execute if entity @e[type=area_effect_cloud,tag=mrcd_temp,tag=mrcd_touch_x_plus,limit=1] run tag @s add mrcd_touch_x_plus
execute if entity @e[type=area_effect_cloud,tag=mrcd_temp,tag=mrcd_touch_x_minus,limit=1] run tag @s add mrcd_touch_x_minus
execute if entity @e[type=area_effect_cloud,tag=mrcd_temp,tag=mrcd_touch_y_plus,limit=1] run tag @s add mrcd_touch_y_plus
execute if entity @e[type=area_effect_cloud,tag=mrcd_temp,tag=mrcd_touch_y_minus,limit=1] run tag @s add mrcd_touch_y_minus
execute if entity @e[type=area_effect_cloud,tag=mrcd_temp,tag=mrcd_touch_z_plus,limit=1] run tag @s add mrcd_touch_z_plus
execute if entity @e[type=area_effect_cloud,tag=mrcd_temp,tag=mrcd_touch_z_minus,limit=1] run tag @s add mrcd_touch_z_minus

# Get the position of the nearest block marker
execute store result score #target_x mrcd_system run data get entity @e[type=area_effect_cloud,tag=mrcd_temp,limit=1] Pos[0] 1000
execute store result score #target_y mrcd_system run data get entity @e[type=area_effect_cloud,tag=mrcd_temp,limit=1] Pos[1] 1000
execute store result score #target_z mrcd_system run data get entity @e[type=area_effect_cloud,tag=mrcd_temp,limit=1] Pos[2] 1000

scoreboard players operation #tmp_x mrcd_system = #target_x mrcd_system
scoreboard players operation #tmp_y mrcd_system = #target_y mrcd_system
scoreboard players operation #tmp_z mrcd_system = #target_z mrcd_system

scoreboard players operation #target_x mrcd_system %= #1000 mrcd_system
scoreboard players operation #target_y mrcd_system %= #1000 mrcd_system
scoreboard players operation #target_z mrcd_system %= #1000 mrcd_system

scoreboard players operation #tmp_x mrcd_system -= #1000 mrcd_system
scoreboard players operation #tmp_y mrcd_system -= #1000 mrcd_system
scoreboard players operation #tmp_z mrcd_system -= #1000 mrcd_system
execute if score #tmp_x mrcd_system >= #block_corner_x mrcd_system run scoreboard players set #target_x mrcd_system 1000
execute if score #tmp_y mrcd_system >= #block_corner_y mrcd_system run scoreboard players set #target_y mrcd_system 1000
execute if score #tmp_z mrcd_system >= #block_corner_z mrcd_system run scoreboard players set #target_z mrcd_system 1000


# Kill all the block markers
kill @e[type=area_effect_cloud,tag=mrcd_touch_mark]
