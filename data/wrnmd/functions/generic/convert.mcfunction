# 寻找最近实体
tag @e[tag=wrnmd_touch_mark,sort=nearest,limit=1] add wrnmd_temp
# 标记碰撞面
execute if entity @e[tag=wrnmd_temp,tag=wrnmd_touch_x_plus] run tag @s add wrnmd_touch_x_plus
execute if entity @e[tag=wrnmd_temp,tag=wrnmd_touch_x_minus] run tag @s add wrnmd_touch_x_minus
execute if entity @e[tag=wrnmd_temp,tag=wrnmd_touch_y_plus] run tag @s add wrnmd_touch_y_plus
execute if entity @e[tag=wrnmd_temp,tag=wrnmd_touch_y_minus] run tag @s add wrnmd_touch_y_minus
execute if entity @e[tag=wrnmd_temp,tag=wrnmd_touch_z_plus] run tag @s add wrnmd_touch_z_plus
execute if entity @e[tag=wrnmd_temp,tag=wrnmd_touch_z_minus] run tag @s add wrnmd_touch_z_minus
# 获取目标在方块内的坐标
execute store result score #target_x wrnmd_system run data get entity @e[tag=wrnmd_temp,limit=1] Pos[0] 1000
execute store result score #target_y wrnmd_system run data get entity @e[tag=wrnmd_temp,limit=1] Pos[1] 1000
execute store result score #target_z wrnmd_system run data get entity @e[tag=wrnmd_temp,limit=1] Pos[2] 1000
scoreboard players operation #target_x wrnmd_system %= #const_1000 wrnmd_system
scoreboard players operation #target_y wrnmd_system %= #const_1000 wrnmd_system
scoreboard players operation #target_z wrnmd_system %= #const_1000 wrnmd_system
# 删除标记
kill @e[tag=wrnmd_touch_mark]
