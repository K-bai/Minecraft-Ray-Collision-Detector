# 根据朝向决定检测哪个面
# Choose a side to detect based on direction
execute unless entity @e[tag=mrcd_touch_cube_edge] if score @s mrcd_x0 matches 1.. if score #block_x mrcd_system <= #box_x0 mrcd_system run function mrcd:private/complex_cube/x0
execute unless entity @e[tag=mrcd_touch_cube_edge] if score @s mrcd_x0 matches ..-1 if score #block_x mrcd_system >= #box_x1 mrcd_system run function mrcd:private/complex_cube/x1
execute unless entity @e[tag=mrcd_touch_cube_edge] if score @s mrcd_y0 matches 1.. if score #block_y mrcd_system <= #box_y0 mrcd_system run function mrcd:private/complex_cube/y0
execute unless entity @e[tag=mrcd_touch_cube_edge] if score @s mrcd_y0 matches ..-1 if score #block_y mrcd_system >= #box_y1 mrcd_system run function mrcd:private/complex_cube/y1
execute unless entity @e[tag=mrcd_touch_cube_edge] if score @s mrcd_z0 matches 1.. if score #block_z mrcd_system <= #box_z0 mrcd_system run function mrcd:private/complex_cube/z0
execute unless entity @e[tag=mrcd_touch_cube_edge] if score @s mrcd_z0 matches ..-1 if score #block_z mrcd_system >= #box_z1 mrcd_system run function mrcd:private/complex_cube/z1
tag @e[tag=mrcd_touch_cube_edge] remove mrcd_touch_cube_edge