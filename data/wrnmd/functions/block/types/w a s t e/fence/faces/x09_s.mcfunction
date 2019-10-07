# 计算线面交点
## 平面方程 x=625
## 相交条件 0<=y<=1000 625<=z<=1000

scoreboard players set #target_x wrnmd_system 625
function wrnmd:block/calculate/x
execute if score #target_y wrnmd_system matches 0..1000 if score #target_z wrnmd_system matches 625..1000 run tag @s add wrnmd_touch_x09_s