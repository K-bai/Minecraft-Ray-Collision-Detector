# 计算线面交点
## 直线方程 (x-x1)/x0=(y-y1)/y0=(z-z1)/z0
## 平面方程 x=1000
## 相交条件 0<=y<=1000 0<=z<=1000
## 方程整理得 y=(1000-x1)y0/x0+y1
## 方程整理得 z=(1000-x1)z0/x0+z1

scoreboard players set #target_x mrcd_system 1000
function mrcd:generic/calculate/x
execute if score #target_y mrcd_system matches 0..1000 if score #target_z mrcd_system matches 0..1000 run tag @s add mrcd_touch_edge_air
