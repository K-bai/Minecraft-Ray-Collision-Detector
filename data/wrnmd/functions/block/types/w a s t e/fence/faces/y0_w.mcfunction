# 计算线面交点
## 平面方程 y=0
## 相交条件 0<=x<=375 375<=z<=625

scoreboard players set #target_y wrnmd_system 0
function wrnmd:block/calculate/y
execute if score #target_x wrnmd_system matches 0..375 if score #target_z wrnmd_system matches 375..625 run tag @s add wrnmd_touch_y0_w