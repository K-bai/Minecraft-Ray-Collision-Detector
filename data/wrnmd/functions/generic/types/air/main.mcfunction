# 根据朝向决定检测哪个面
execute if score @s[tag=!wrnmd_touch_edge_air] wrnmd_x0 matches 1.. run function wrnmd:generic/types/air/x_plus
execute if score @s[tag=!wrnmd_touch_edge_air] wrnmd_x0 matches ..-1 run function wrnmd:generic/types/air/x_minus
execute if score @s[tag=!wrnmd_touch_edge_air] wrnmd_y0 matches 1.. run function wrnmd:generic/types/air/y_plus
execute if score @s[tag=!wrnmd_touch_edge_air] wrnmd_y0 matches ..-1 run function wrnmd:generic/types/air/y_minus
execute if score @s[tag=!wrnmd_touch_edge_air] wrnmd_z0 matches 1.. run function wrnmd:generic/types/air/z_plus
execute if score @s[tag=!wrnmd_touch_edge_air] wrnmd_z0 matches ..-1 run function wrnmd:generic/types/air/z_minus