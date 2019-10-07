# 计算线面交点
## 平面方程 y=0
## 相交条件 375<=x<=625 375<=z<=625

scoreboard players set #target_y wrnmd_system 1000
function wrnmd:block/calculate/y
execute if score #target_x wrnmd_system matches 375..625 if score #target_z wrnmd_system matches 375..625 run tag @s add wrnmd_touch_y1_c