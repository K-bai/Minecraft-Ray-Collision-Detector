# Calculate the intersection point coordinate
#   Plane equation: y = #box_y0
#   Condition of crossing: #box_x0 <= x <= #box_x1 #box_z0 <= z <= #box_z1

scoreboard players operation #target_y mrcd_system = #box_y0 mrcd_system
function mrcd:private/calculate/y
execute if score #target_x mrcd_system >= #box_x0 mrcd_system if score #target_x mrcd_system <= #box_x1 mrcd_system if score #target_z mrcd_system >= #box_z0 mrcd_system if score #target_z mrcd_system <= #box_z1 mrcd_system run function mrcd:private/cube/touch/y_minus