# 计算线面交点
## 平面方程 z=1000
## 相交条件 0<=x<=1000 500<=y<=1000

scoreboard players set #target_z mrcd_system 1000
function mrcd:generic/calculate/z
execute if score #target_x mrcd_system matches 0..500 if score #target_y mrcd_system matches 0..500 run tag @s add mrcd_touch_z1_00
execute if score #target_x mrcd_system matches 0..500 if score #target_y mrcd_system matches 500..1000 run tag @s add mrcd_touch_z1_01
execute if score #target_x mrcd_system matches 500..1000 if score #target_y mrcd_system matches 0..500 run tag @s add mrcd_touch_z1_10
execute if score #target_x mrcd_system matches 500..1000 if score #target_y mrcd_system matches 500..1000 run tag @s add mrcd_touch_z1_11
