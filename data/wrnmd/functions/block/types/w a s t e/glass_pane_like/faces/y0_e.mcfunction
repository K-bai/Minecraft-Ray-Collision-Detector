# 计算线面交点
## 平面方程 y=0
## 相交条件 563<=x<=1000 437<=z<=563

scoreboard players set #target_y wrnmd_system 0
function wrnmd:block/calculate/y
execute if score #target_x wrnmd_system matches 563..1000 if score #target_z wrnmd_system matches 437..563 run tag @s add wrnmd_touch_y0_e