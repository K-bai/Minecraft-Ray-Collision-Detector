execute if score @s[tag=!wrnmd_touch_edge] wrnmd_x0 matches 1.. if score #block_x wrnmd_system <= #box_x0 wrnmd_system run function wrnmd:generic/cube/x0
tag @s[tag=wrnmd_touch_x_minus] add wrnmd_touch_edge
execute if score @s[tag=!wrnmd_touch_edge] wrnmd_x0 matches ..-1 if score #block_x wrnmd_system >= #box_x1 wrnmd_system run function wrnmd:generic/cube/x1
tag @s[tag=wrnmd_touch_x_plus] add wrnmd_touch_edge
execute if score @s[tag=!wrnmd_touch_edge] wrnmd_y0 matches 1.. if score #block_y wrnmd_system <= #box_y0 wrnmd_system run function wrnmd:generic/cube/y0
tag @s[tag=wrnmd_touch_y_minus] add wrnmd_touch_edge
execute if score @s[tag=!wrnmd_touch_edge] wrnmd_y0 matches ..-1 if score #block_y wrnmd_system >= #box_y1 wrnmd_system run function wrnmd:generic/cube/y1
tag @s[tag=wrnmd_touch_y_plus] add wrnmd_touch_edge
execute if score @s[tag=!wrnmd_touch_edge] wrnmd_z0 matches 1.. if score #block_z wrnmd_system <= #box_z0 wrnmd_system run function wrnmd:generic/cube/z0
tag @s[tag=wrnmd_touch_z_minus] add wrnmd_touch_edge
execute if score @s[tag=!wrnmd_touch_edge] wrnmd_z0 matches ..-1 if score #block_z wrnmd_system >= #box_z1 wrnmd_system run function wrnmd:generic/cube/z1
tag @s[tag=wrnmd_touch_z_plus] add wrnmd_touch_edge
