# Choose a side to detect based on direction
execute if score @s[tag=!mrcd_touch_edge] mrcd_x0 matches 1.. if score #block_x mrcd_system <= #box_x0 mrcd_system run function mrcd:private/cube/x0
tag @s[tag=mrcd_touch_x_minus] add mrcd_touch_edge
execute if score @s[tag=!mrcd_touch_edge] mrcd_x0 matches ..-1 if score #block_x mrcd_system >= #box_x1 mrcd_system run function mrcd:private/cube/x1
tag @s[tag=mrcd_touch_x_plus] add mrcd_touch_edge
execute if score @s[tag=!mrcd_touch_edge] mrcd_y0 matches 1.. if score #block_y mrcd_system <= #box_y0 mrcd_system run function mrcd:private/cube/y0
tag @s[tag=mrcd_touch_y_minus] add mrcd_touch_edge
execute if score @s[tag=!mrcd_touch_edge] mrcd_y0 matches ..-1 if score #block_y mrcd_system >= #box_y1 mrcd_system run function mrcd:private/cube/y1
tag @s[tag=mrcd_touch_y_plus] add mrcd_touch_edge
execute if score @s[tag=!mrcd_touch_edge] mrcd_z0 matches 1.. if score #block_z mrcd_system <= #box_z0 mrcd_system run function mrcd:private/cube/z0
tag @s[tag=mrcd_touch_z_minus] add mrcd_touch_edge
execute if score @s[tag=!mrcd_touch_edge] mrcd_z0 matches ..-1 if score #block_z mrcd_system >= #box_z1 mrcd_system run function mrcd:private/cube/z1
tag @s[tag=mrcd_touch_z_plus] add mrcd_touch_edge
