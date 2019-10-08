# 计算线面交点
## 平面方程 x=375
## 相交条件 0<=y<=1000 375<=z<=625

scoreboard players set #target_z wrnmd_system 375
function wrnmd:generic/calculate/z
execute if score #target_y wrnmd_system matches 0..1000 if score #target_x wrnmd_system matches 375..625 run tag @s add wrnmd_touch_z07_c