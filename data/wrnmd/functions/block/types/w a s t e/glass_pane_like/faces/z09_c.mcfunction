# 计算线面交点
## 平面方程 x=563
## 相交条件 0<=y<=1000 437<=z<=563

scoreboard players set #target_z wrnmd_system 563
function wrnmd:block/calculate/z
execute if score #target_y wrnmd_system matches 0..1000 if score #target_x wrnmd_system matches 437..563 run tag @s add wrnmd_touch_z09_c