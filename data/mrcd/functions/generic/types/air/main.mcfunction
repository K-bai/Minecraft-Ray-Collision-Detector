# 根据朝向决定检测哪个面
# Choose a side to detect based on direction
execute if score @s[tag=!mrcd_touch_edge_air] mrcd_x0 matches 1.. run function mrcd:generic/types/air/x_plus
execute if score @s[tag=!mrcd_touch_edge_air] mrcd_x0 matches ..-1 run function mrcd:generic/types/air/x_minus
execute if score @s[tag=!mrcd_touch_edge_air] mrcd_y0 matches 1.. run function mrcd:generic/types/air/y_plus
execute if score @s[tag=!mrcd_touch_edge_air] mrcd_y0 matches ..-1 run function mrcd:generic/types/air/y_minus
execute if score @s[tag=!mrcd_touch_edge_air] mrcd_z0 matches 1.. run function mrcd:generic/types/air/z_plus
execute if score @s[tag=!mrcd_touch_edge_air] mrcd_z0 matches ..-1 run function mrcd:generic/types/air/z_minus