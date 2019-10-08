# 计算线面交点
## 平面方程 z=1000
## 相交条件 0<=x<=1000 500<=y<=1000

scoreboard players set #target_z wrnmd_system 500
function wrnmd:generic/calculate/z
execute if score #target_x wrnmd_system matches 0..500 if score #target_y wrnmd_system matches 0..500 run tag @s add wrnmd_touch_z05_00
execute if score #target_x wrnmd_system matches 0..500 if score #target_y wrnmd_system matches 500..1000 run tag @s add wrnmd_touch_z05_01
execute if score #target_x wrnmd_system matches 500..1000 if score #target_y wrnmd_system matches 0..500 run tag @s add wrnmd_touch_z05_10
execute if score #target_x wrnmd_system matches 500..1000 if score #target_y wrnmd_system matches 500..1000 run tag @s add wrnmd_touch_z05_11
