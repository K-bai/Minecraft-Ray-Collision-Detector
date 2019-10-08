# 计算线面交点
## 平面方程 y=0
## 相交条件 375<=x<=625 625<=z<=1000

scoreboard players set #target_y wrnmd_system 0
function wrnmd:generic/calculate/y
execute if score #target_x wrnmd_system matches 375..625 if score #target_z wrnmd_system matches 625..1000 run tag @s add wrnmd_touch_y0_s