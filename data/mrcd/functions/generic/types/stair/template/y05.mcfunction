# 计算线面交点
## 平面方程 y=500
## 相交条件 0<=x<=1000 0<=z<=1000

scoreboard players set #target_y mrcd_system 500
function mrcd:generic/calculate/y
execute if score #target_x mrcd_system matches 0..500 if score #target_z mrcd_system matches 0..500 run tag @s add mrcd_touch_y05_00
execute if score #target_x mrcd_system matches 0..500 if score #target_z mrcd_system matches 500..1000 run tag @s add mrcd_touch_y05_01
execute if score #target_x mrcd_system matches 500..1000 if score #target_z mrcd_system matches 0..500 run tag @s add mrcd_touch_y05_10
execute if score #target_x mrcd_system matches 500..1000 if score #target_z mrcd_system matches 500..1000 run tag @s add mrcd_touch_y05_11
