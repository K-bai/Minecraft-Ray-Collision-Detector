# 计算线面交点
## 平面方程 x=#box_x0
## 相交条件 #box_y0<=y<=#box_y1 #box_z0<=z<=#box_z1

execute store result score #target_x mrcd_system run scoreboard players get #box_x0 mrcd_system
function mrcd:generic/calculate/x
execute if score #target_y mrcd_system >= #box_y0 mrcd_system if score #target_y mrcd_system <= #box_y1 mrcd_system if score #target_z mrcd_system >= #box_z0 mrcd_system if score #target_z mrcd_system <= #box_z1 mrcd_system run tag @s add mrcd_touch_x_minus

