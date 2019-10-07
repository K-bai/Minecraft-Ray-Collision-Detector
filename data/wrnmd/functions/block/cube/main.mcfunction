# 根据朝向决定检测哪个面
execute if score @s[tag=!wrnmd_touch_edge] wrnmd_x0 matches 0.. run function wrnmd:block/cube/x0
tag @s[tag=wrnmd_touch_x_minus] add wrnmd_touch_edge
execute if score @s[tag=!wrnmd_touch_edge] wrnmd_x0 matches ..-1 run function wrnmd:block/cube/x1
tag @s[tag=wrnmd_touch_x_plus] add wrnmd_touch_edge
execute if score @s[tag=!wrnmd_touch_edge] wrnmd_y0 matches 0.. run function wrnmd:block/cube/y0
tag @s[tag=wrnmd_touch_y_minus] add wrnmd_touch_edge
execute if score @s[tag=!wrnmd_touch_edge] wrnmd_y0 matches ..-1 run function wrnmd:block/cube/y1
tag @s[tag=wrnmd_touch_y_plus] add wrnmd_touch_edge
execute if score @s[tag=!wrnmd_touch_edge] wrnmd_z0 matches 0.. run function wrnmd:block/cube/z0
tag @s[tag=wrnmd_touch_z_minus] add wrnmd_touch_edge
execute if score @s[tag=!wrnmd_touch_edge] wrnmd_z0 matches ..-1 run function wrnmd:block/cube/z1
tag @s[tag=wrnmd_touch_z_plus] add wrnmd_touch_edge