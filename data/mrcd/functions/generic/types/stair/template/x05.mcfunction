# 计算线面交点
## 平面方程 x=500
## 相交条件 0<=y<=1000 0<=z<=1000

scoreboard players set #target_x mrcd_system 500
function mrcd:generic/calculate/x
execute if score #target_y mrcd_system matches 0..500 if score #target_z mrcd_system matches 0..500 run tag @s add mrcd_touch_x05_00
execute if score #target_y mrcd_system matches 0..500 if score #target_z mrcd_system matches 500..1000 run tag @s add mrcd_touch_x05_01
execute if score #target_y mrcd_system matches 500..1000 if score #target_z mrcd_system matches 0..500 run tag @s add mrcd_touch_x05_10
execute if score #target_y mrcd_system matches 500..1000 if score #target_z mrcd_system matches 500..1000 run tag @s add mrcd_touch_x05_11
