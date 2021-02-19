# 计算线面交点
## 平面方程 z=#box_z0
## 相交条件 #box_x0<=x<=#box_x1 #box_y0<=y<=#box_y1

# Calculate the intersection point coordinate
## Plane equation: z=#box_z0
## Condition of crossing: #box_x0<=x<=#box_x1 #box_y0<=y<=#box_y1


execute store result score #target_z mrcd_system run scoreboard players get #box_z0 mrcd_system
function mrcd:private/calculate/z
execute if score #target_x mrcd_system >= #box_x0 mrcd_system if score #target_x mrcd_system <= #box_x1 mrcd_system if score #target_y mrcd_system >= #box_y0 mrcd_system if score #target_y mrcd_system <= #box_y1 mrcd_system run summon area_effect_cloud ~ ~ ~ {Duration:999,Tags:["mrcd_touch_mark","mrcd_touch_cube_edge","mrcd_touch_mark_new","mrcd_touch_z_minus"]}

execute as @e[tag=mrcd_touch_mark_new] run function mrcd:private/complex_cube/move
tag @e[tag=mrcd_touch_mark_new] remove mrcd_touch_mark_new