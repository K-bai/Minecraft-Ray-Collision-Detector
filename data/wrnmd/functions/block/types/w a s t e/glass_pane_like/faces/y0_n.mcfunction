# 计算线面交点
## 平面方程 y=0
## 相交条件 437<=x<=563 0<=z<=437

scoreboard players set #target_y wrnmd_system 0
function wrnmd:block/calculate/y
execute if score #target_x wrnmd_system matches 437..563 if score #target_z wrnmd_system matches 0..437 run tag @s add wrnmd_touch_y0_n