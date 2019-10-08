# 计算线面交点
## 平面方程 y=1000
## 相交条件 0<=x<=1000 0<=z<=1000

scoreboard players set #target_y wrnmd_system 1000
function wrnmd:generic/calculate/y
execute if score #target_x wrnmd_system matches 0..500 if score #target_z wrnmd_system matches 0..500 run tag @s add wrnmd_touch_y1_00
execute if score #target_x wrnmd_system matches 0..500 if score #target_z wrnmd_system matches 500..1000 run tag @s add wrnmd_touch_y1_01
execute if score #target_x wrnmd_system matches 500..1000 if score #target_z wrnmd_system matches 0..500 run tag @s add wrnmd_touch_y1_10
execute if score #target_x wrnmd_system matches 500..1000 if score #target_z wrnmd_system matches 500..1000 run tag @s add wrnmd_touch_y1_11
