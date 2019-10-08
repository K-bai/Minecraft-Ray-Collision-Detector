# 计算线面交点
## 直线方程 (x-x1)/x0=(y-y1)/y0=(z-z1)/z0
## 平面方程 z=0
## 相交条件 0<=x<=1000 0<=y<=1000
## 方程整理得 x=(-z1)x0/z0+x1
## 方程整理得 y=(-z1)y0/z0+y1

scoreboard players set #target_z wrnmd_system -1
function wrnmd:generic/calculate/z
execute if score #target_x wrnmd_system matches 0..1000 if score #target_y wrnmd_system matches 0..1000 run tag @s add wrnmd_touch_edge_air
