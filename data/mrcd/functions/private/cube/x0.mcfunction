# Calculate the intersection point coordinate
#   Plane equation: x = #box_x0
#   Condition of crossing: #box_y0 <= y <= #box_y1  #box_z0 <= z <= #box_z1

scoreboard players operation #target_x mrcd_system = #box_x0 mrcd_system
function mrcd:private/calculate/x
execute if score #target_y mrcd_system >= #box_y0 mrcd_system if score #target_y mrcd_system <= #box_y1 mrcd_system if score #target_z mrcd_system >= #box_z0 mrcd_system if score #target_z mrcd_system <= #box_z1 mrcd_system run tag @s add mrcd_touch_x_minus

