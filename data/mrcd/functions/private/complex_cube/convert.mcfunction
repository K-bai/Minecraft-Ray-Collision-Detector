# Find the nearnest block marker
tag @e[tag=mrcd_touch_mark,sort=nearest,limit=1] add mrcd_temp
# Copy the tag on the nearest block marker
execute if entity @e[tag=mrcd_temp,tag=mrcd_touch_x_plus] run tag @s add mrcd_touch_x_plus
execute if entity @e[tag=mrcd_temp,tag=mrcd_touch_x_minus] run tag @s add mrcd_touch_x_minus
execute if entity @e[tag=mrcd_temp,tag=mrcd_touch_y_plus] run tag @s add mrcd_touch_y_plus
execute if entity @e[tag=mrcd_temp,tag=mrcd_touch_y_minus] run tag @s add mrcd_touch_y_minus
execute if entity @e[tag=mrcd_temp,tag=mrcd_touch_z_plus] run tag @s add mrcd_touch_z_plus
execute if entity @e[tag=mrcd_temp,tag=mrcd_touch_z_minus] run tag @s add mrcd_touch_z_minus
# Get the position of the nearest block marker
execute store result score #target_x mrcd_system run data get entity @e[tag=mrcd_temp,limit=1] Pos[0] 1000
execute store result score #target_y mrcd_system run data get entity @e[tag=mrcd_temp,limit=1] Pos[1] 1000
execute store result score #target_z mrcd_system run data get entity @e[tag=mrcd_temp,limit=1] Pos[2] 1000
scoreboard players operation #target_x mrcd_system %= #const_1000 mrcd_system
scoreboard players operation #target_y mrcd_system %= #const_1000 mrcd_system
scoreboard players operation #target_z mrcd_system %= #const_1000 mrcd_system
# Kill all the block markers
kill @e[tag=mrcd_touch_mark]
