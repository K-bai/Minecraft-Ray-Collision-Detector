# 计算线面交点
## 直线方程 (x-x1)/x0=(y-y1)/y0=(z-z1)/z0
## 平面方程 y=0
## 相交条件 0<=x<=1000 0<=z<=1000
## 方程整理得 x=(-y1)x0/y0+x1
## 方程整理得 z=(-y1)z0/y0+z1

scoreboard players set #target_y wrnmd_system -1
function wrnmd:generic/calculate/y
execute if score #target_x wrnmd_system matches 0..1000 if score #target_z wrnmd_system matches 0..1000 run tag @s add wrnmd_touch_edge_air
