# 计算线面交点
## 平面方程 y=0
## 相交条件 0<=x<=437 437<=z<=563

scoreboard players set #target_y wrnmd_system 1000
function wrnmd:block/calculate/y
execute if score #target_x wrnmd_system matches 0..437 if score #target_z wrnmd_system matches 437..563 run tag @s add wrnmd_touch_y1_w