# 计算线面交点
## 平面方程 x=438
## 相交条件 0<=y<=1000 563<=z<=1000

scoreboard players set #target_z wrnmd_system 438
function wrnmd:block/calculate/z
execute if score #target_y wrnmd_system matches 0..1000 if score #target_x wrnmd_system matches 563..1000 run tag @s add wrnmd_touch_z07_e