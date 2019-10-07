# 计算线面交点
## 平面方程 x=375
## 相交条件 0<=y<=1000 0<=z<=375

scoreboard players set #target_x wrnmd_system 375
function wrnmd:block/calculate/x
execute if score #target_y wrnmd_system matches 0..1000 if score #target_z wrnmd_system matches 0..375 run tag @s add wrnmd_touch_x07_n