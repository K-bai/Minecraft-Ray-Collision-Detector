# +x
execute if score @s[tag=!wrnmd_touch_edge] wrnmd_x0 matches 0.. run function wrnmd:block/types/stair/template/x0
tag @s[tag=wrnmd_touch_x0_01] add wrnmd_touch_x_minus
tag @s[tag=wrnmd_touch_x0_10] add wrnmd_touch_x_minus
tag @s[tag=wrnmd_touch_x0_11] add wrnmd_touch_x_minus
tag @s[tag=wrnmd_touch_x_minus] add wrnmd_touch_edge
# -x
execute if score @s[tag=!wrnmd_touch_edge] wrnmd_x0 matches ..-1 run function wrnmd:block/types/stair/template/x1
tag @s[tag=wrnmd_touch_x1_00] add wrnmd_touch_x_plus
tag @s[tag=wrnmd_touch_x1_01] add wrnmd_touch_x_plus
tag @s[tag=wrnmd_touch_x1_10] add wrnmd_touch_x_plus
tag @s[tag=wrnmd_touch_x1_11] add wrnmd_touch_x_plus
tag @s[tag=wrnmd_touch_x_plus] add wrnmd_touch_edge
# +y
execute if score @s[tag=!wrnmd_touch_edge] wrnmd_y0 matches 0.. run function wrnmd:block/types/stair/template/y0
tag @s[tag=wrnmd_touch_y0_01] add wrnmd_touch_y_minus
tag @s[tag=wrnmd_touch_y0_10] add wrnmd_touch_y_minus
tag @s[tag=wrnmd_touch_y0_11] add wrnmd_touch_y_minus
tag @s[tag=wrnmd_touch_y_minus] add wrnmd_touch_edge
# +z
execute if score @s[tag=!wrnmd_touch_edge] wrnmd_z0 matches 0.. run function wrnmd:block/types/stair/template/z0
tag @s[tag=wrnmd_touch_z0_01] add wrnmd_touch_z_minus
tag @s[tag=wrnmd_touch_z0_10] add wrnmd_touch_z_minus
tag @s[tag=wrnmd_touch_z0_11] add wrnmd_touch_z_minus
tag @s[tag=wrnmd_touch_z_minus] add wrnmd_touch_edge
# -z
execute if score @s[tag=!wrnmd_touch_edge] wrnmd_z0 matches ..-1 run function wrnmd:block/types/stair/template/z1
tag @s[tag=wrnmd_touch_z1_00] add wrnmd_touch_z_plus
tag @s[tag=wrnmd_touch_z1_01] add wrnmd_touch_z_plus
tag @s[tag=wrnmd_touch_z1_10] add wrnmd_touch_z_plus
tag @s[tag=wrnmd_touch_z1_11] add wrnmd_touch_z_plus
tag @s[tag=wrnmd_touch_z_plus] add wrnmd_touch_edge

# +x05
execute if score @s[tag=!wrnmd_touch_edge] wrnmd_x0 matches 0.. run function wrnmd:block/types/stair/template/x05
tag @s[tag=wrnmd_touch_x05_00] add wrnmd_touch_x_minus
tag @s[tag=wrnmd_touch_x_minus] add wrnmd_touch_edge
# +y05
execute if score @s[tag=!wrnmd_touch_edge] wrnmd_y0 matches 0.. run function wrnmd:block/types/stair/template/y05
tag @s[tag=wrnmd_touch_y05_00] add wrnmd_touch_y_minus
tag @s[tag=wrnmd_touch_y_minus] add wrnmd_touch_edge
# +z05
execute if score @s[tag=!wrnmd_touch_edge] wrnmd_z0 matches 0.. run function wrnmd:block/types/stair/template/z05
tag @s[tag=wrnmd_touch_z05_00] add wrnmd_touch_z_minus
tag @s[tag=wrnmd_touch_z_minus] add wrnmd_touch_edge
