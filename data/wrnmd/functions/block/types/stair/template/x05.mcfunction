# 计算线面交点
## 平面方程 x=500
## 相交条件 0<=y<=1000 0<=z<=1000

scoreboard players set #target_x wrnmd_system 500
function wrnmd:block/calculate/x
execute if score #target_y wrnmd_system matches 0..500 if score #target_z wrnmd_system matches 0..500 run tag @s add wrnmd_touch_x05_00
execute if score #target_y wrnmd_system matches 0..500 if score #target_z wrnmd_system matches 500..1000 run tag @s add wrnmd_touch_x05_01
execute if score #target_y wrnmd_system matches 500..1000 if score #target_z wrnmd_system matches 0..500 run tag @s add wrnmd_touch_x05_10
execute if score #target_y wrnmd_system matches 500..1000 if score #target_z wrnmd_system matches 500..1000 run tag @s add wrnmd_touch_x05_11
