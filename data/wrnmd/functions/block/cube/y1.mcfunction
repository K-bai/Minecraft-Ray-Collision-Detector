# 计算线面交点
## 平面方程 y=#box_y1
## 相交条件 #box_x0<=x<=#box_x1 #box_z0<=z<=#box_z1

execute store result score #target_y wrnmd_system run scoreboard players get #box_y1 wrnmd_system
function wrnmd:block/calculate/y
execute if score #target_x wrnmd_system >= #box_x0 wrnmd_system if score #target_x wrnmd_system <= #box_x1 wrnmd_system if score #target_z wrnmd_system >= #box_z0 wrnmd_system if score #target_z wrnmd_system <= #box_z1 wrnmd_system run tag @s add wrnmd_touch_y_plus