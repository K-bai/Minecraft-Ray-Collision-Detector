# Calculate the intersection point coordinate
#   Plane equation: z = #box_z0
#   Condition of crossing: #box_x0 <= x <= #box_x1  #box_y0 <= y <= #box_y1


scoreboard players operation #target_z mrcd_system = #box_z0 mrcd_system
function mrcd:private/calculate/z
execute if score #target_x mrcd_system >= #box_x0 mrcd_system if score #target_x mrcd_system <= #box_x1 mrcd_system if score #target_y mrcd_system >= #box_y0 mrcd_system if score #target_y mrcd_system <= #box_y1 mrcd_system run tag @s add mrcd_touch_z_minus