# 计算线面交点
## 平面方程 y=0
## 相交条件 437<=x<=563 563<=z<=1000

scoreboard players set #target_y wrnmd_system 1000
function wrnmd:block/calculate/y
execute if score #target_x wrnmd_system matches 437..563 if score #target_z wrnmd_system matches 563..1000 run tag @s add wrnmd_touch_y1_s