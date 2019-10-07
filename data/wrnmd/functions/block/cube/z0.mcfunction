# 计算线面交点
## 平面方程 z=#box_z0
## 相交条件 #box_x0<=x<=#box_x1 #box_y0<=y<=#box_y1

execute store result score #target_z wrnmd_system run scoreboard players get #box_z0 wrnmd_system
function wrnmd:block/calculate/z
execute if score #target_x wrnmd_system >= #box_x0 wrnmd_system if score #target_x wrnmd_system <= #box_x1 wrnmd_system if score #target_y wrnmd_system >= #box_y0 wrnmd_system if score #target_y wrnmd_system <= #box_y1 wrnmd_system run tag @s add wrnmd_touch_z_minus