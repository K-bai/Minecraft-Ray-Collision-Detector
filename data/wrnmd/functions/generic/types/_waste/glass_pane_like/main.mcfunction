# y方向
## +y c
execute if entity @s[tag=!wrnmd_touch_edge] if score @s wrnmd_y0 matches 0.. run function wrnmd:generic/types/glass_pane_like/faces/y0_c
tag @s[tag=wrnmd_touch_y0_c] add wrnmd_touch_y_minus
tag @s[tag=wrnmd_touch_y_minus] add wrnmd_touch_edge
## -y c
execute if entity @s[tag=!wrnmd_touch_edge] if score @s wrnmd_y0 matches ..-1 run function wrnmd:generic/types/glass_pane_like/faces/y1_c
tag @s[tag=wrnmd_touch_y1_c] add wrnmd_touch_y_plus
tag @s[tag=wrnmd_touch_y_plus] add wrnmd_touch_edge
## +y n
execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #wrnmd:glass_pane_like[north=true] if score @s wrnmd_y0 matches 0.. run function wrnmd:generic/types/glass_pane_like/faces/y0_n
tag @s[tag=wrnmd_touch_y0_n] add wrnmd_touch_y_minus
tag @s[tag=wrnmd_touch_y_minus] add wrnmd_touch_edge
## +y s
execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #wrnmd:glass_pane_like[south=true] if score @s wrnmd_y0 matches 0.. run function wrnmd:generic/types/glass_pane_like/faces/y0_s
tag @s[tag=wrnmd_touch_y0_s] add wrnmd_touch_y_minus
tag @s[tag=wrnmd_touch_y_minus] add wrnmd_touch_edge
## +y e
execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #wrnmd:glass_pane_like[east=true] if score @s wrnmd_y0 matches 0.. run function wrnmd:generic/types/glass_pane_like/faces/y0_e
tag @s[tag=wrnmd_touch_y0_e] add wrnmd_touch_y_minus
tag @s[tag=wrnmd_touch_y_minus] add wrnmd_touch_edge
## +y w
execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #wrnmd:glass_pane_like[west=true] if score @s wrnmd_y0 matches 0.. run function wrnmd:generic/types/glass_pane_like/faces/y0_w
tag @s[tag=wrnmd_touch_y0_w] add wrnmd_touch_y_minus
tag @s[tag=wrnmd_touch_y_minus] add wrnmd_touch_edge
## -y n
execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #wrnmd:glass_pane_like[north=true] if score @s wrnmd_y0 matches ..-1 run function wrnmd:generic/types/glass_pane_like/faces/y1_n
tag @s[tag=wrnmd_touch_y1_n] add wrnmd_touch_y_plus
tag @s[tag=wrnmd_touch_y_plus] add wrnmd_touch_edge
## -y s
execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #wrnmd:glass_pane_like[south=true] if score @s wrnmd_y0 matches ..-1 run function wrnmd:generic/types/glass_pane_like/faces/y1_s
tag @s[tag=wrnmd_touch_y1_s] add wrnmd_touch_y_plus
tag @s[tag=wrnmd_touch_y_plus] add wrnmd_touch_edge
## -y e
execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #wrnmd:glass_pane_like[east=true] if score @s wrnmd_y0 matches ..-1 run function wrnmd:generic/types/glass_pane_like/faces/y1_e
tag @s[tag=wrnmd_touch_y1_e] add wrnmd_touch_y_plus
tag @s[tag=wrnmd_touch_y_plus] add wrnmd_touch_edge
## -y w
execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #wrnmd:glass_pane_like[west=true] if score @s wrnmd_y0 matches ..-1 run function wrnmd:generic/types/glass_pane_like/faces/y1_w
tag @s[tag=wrnmd_touch_y1_w] add wrnmd_touch_y_plus
tag @s[tag=wrnmd_touch_y_plus] add wrnmd_touch_edge

# 细边
## +x
#execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #wrnmd:glass_pane_like[west=true] if score @s wrnmd_x0 matches 0.. run function wrnmd:generic/types/glass_pane_like/faces/x0
#tag @s[tag=wrnmd_touch_x0] add wrnmd_touch_x_minus
#tag @s[tag=wrnmd_touch_x_minus] add wrnmd_touch_edge
execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #wrnmd:glass_pane_like[west=false] if score @s wrnmd_x0 matches 0.. run function wrnmd:generic/types/glass_pane_like/faces/x07_c
tag @s[tag=wrnmd_touch_x07_c] add wrnmd_touch_x_minus
tag @s[tag=wrnmd_touch_x_minus] add wrnmd_touch_edge
## -x
#execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #wrnmd:glass_pane_like[east=true] if score @s wrnmd_x0 matches ..-1 run function wrnmd:generic/types/glass_pane_like/faces/x1
#tag @s[tag=wrnmd_touch_x1] add wrnmd_touch_x_plus
#tag @s[tag=wrnmd_touch_x_plus] add wrnmd_touch_edge
execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #wrnmd:glass_pane_like[east=false] if score @s wrnmd_x0 matches ..-1 run function wrnmd:generic/types/glass_pane_like/faces/x09_c
tag @s[tag=wrnmd_touch_x09_c] add wrnmd_touch_x_plus
tag @s[tag=wrnmd_touch_x_plus] add wrnmd_touch_edge
## +z
#execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #wrnmd:glass_pane_like[north=true] if score @s wrnmd_z0 matches 0.. run function wrnmd:generic/types/glass_pane_like/faces/z0
#tag @s[tag=wrnmd_touch_z0] add wrnmd_touch_z_minus
#tag @s[tag=wrnmd_touch_z_minus] add wrnmd_touch_edge
execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #wrnmd:glass_pane_like[north=false] if score @s wrnmd_z0 matches 0.. run function wrnmd:generic/types/glass_pane_like/faces/z07_c
tag @s[tag=wrnmd_touch_z07_c] add wrnmd_touch_z_minus
tag @s[tag=wrnmd_touch_z_minus] add wrnmd_touch_edge
## -z
#execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #wrnmd:glass_pane_like[south=true] if score @s wrnmd_z0 matches ..-1 run function wrnmd:generic/types/glass_pane_like/faces/z1
#tag @s[tag=wrnmd_touch_z1] add wrnmd_touch_z_plus
#tag @s[tag=wrnmd_touch_z_plus] add wrnmd_touch_edge
execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #wrnmd:glass_pane_like[south=false] if score @s wrnmd_z0 matches ..-1 run function wrnmd:generic/types/glass_pane_like/faces/z09_c
tag @s[tag=wrnmd_touch_z09_c] add wrnmd_touch_z_plus
tag @s[tag=wrnmd_touch_z_plus] add wrnmd_touch_edge

# 宽边
## +x+z nw
## +x-z sw
## -x+z ne
## -x-z se
execute if entity @s[tag=!wrnmd_touch_edge] if score @s wrnmd_x0 matches 0.. if score @s wrnmd_z0 matches 0.. run function wrnmd:generic/types/glass_pane_like/direction/x_plus_z_plus
execute if entity @s[tag=!wrnmd_touch_edge] if score @s wrnmd_x0 matches 0.. if score @s wrnmd_z0 matches ..-1 run function wrnmd:generic/types/glass_pane_like/direction/x_plus_z_minus
execute if entity @s[tag=!wrnmd_touch_edge] if score @s wrnmd_x0 matches ..-1 if score @s wrnmd_z0 matches 0.. run function wrnmd:generic/types/glass_pane_like/direction/x_minus_z_plus
execute if entity @s[tag=!wrnmd_touch_edge] if score @s wrnmd_x0 matches ..-1 if score @s wrnmd_z0 matches ..-1 run function wrnmd:generic/types/glass_pane_like/direction/x_minus_z_minus










#execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #wrnmd:glass_pane_like[north=true] if score @s wrnmd_x0 matches 0.. run function wrnmd:generic/types/glass_pane_like/faces/x07_n
#tag @s[tag=wrnmd_touch_x07_n] add wrnmd_touch_x_minus
#tag @s[tag=wrnmd_touch_x_minus] add wrnmd_touch_edge
#execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #wrnmd:glass_pane_like[south=true] if score @s wrnmd_x0 matches 0.. run function wrnmd:generic/types/glass_pane_like/faces/x07_s
#tag @s[tag=wrnmd_touch_x07_s] add wrnmd_touch_x_minus
#tag @s[tag=wrnmd_touch_x_minus] add wrnmd_touch_edge
#execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #wrnmd:glass_pane_like[north=true] if score @s wrnmd_x0 matches ..-1 run function wrnmd:generic/types/glass_pane_like/faces/x09_n
#tag @s[tag=wrnmd_touch_x09_n] add wrnmd_touch_x_plus
#tag @s[tag=wrnmd_touch_x_plus] add wrnmd_touch_edge
#execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #wrnmd:glass_pane_like[south=true] if score @s wrnmd_x0 matches ..-1 run function wrnmd:generic/types/glass_pane_like/faces/x09_s
#tag @s[tag=wrnmd_touch_x09_s] add wrnmd_touch_x_plus
#tag @s[tag=wrnmd_touch_x_plus] add wrnmd_touch_edge
#
#execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #wrnmd:glass_pane_like[east=true] if score @s wrnmd_z0 matches 0.. run function wrnmd:generic/types/glass_pane_like/faces/z07_e
#tag @s[tag=wrnmd_touch_z07_e] add wrnmd_touch_z_minus
#tag @s[tag=wrnmd_touch_z_minus] add wrnmd_touch_edge
#execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #wrnmd:glass_pane_like[west=true] if score @s wrnmd_z0 matches 0.. run function wrnmd:generic/types/glass_pane_like/faces/z07_w
#tag @s[tag=wrnmd_touch_z07_w] add wrnmd_touch_z_minus
#tag @s[tag=wrnmd_touch_z_minus] add wrnmd_touch_edge
#execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #wrnmd:glass_pane_like[east=true] if score @s wrnmd_z0 matches ..-1 run function wrnmd:generic/types/glass_pane_like/faces/z09_e
#tag @s[tag=wrnmd_touch_z09_e] add wrnmd_touch_z_plus
#tag @s[tag=wrnmd_touch_z_plus] add wrnmd_touch_edge
#execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #wrnmd:glass_pane_like[west=true] if score @s wrnmd_z0 matches ..-1 run function wrnmd:generic/types/glass_pane_like/faces/z09_w
#tag @s[tag=wrnmd_touch_z09_w] add wrnmd_touch_z_plus
#tag @s[tag=wrnmd_touch_z_plus] add wrnmd_touch_edge




# 清除tag
tag @s[tag=wrnmd_touch_x0] remove wrnmd_touch_x0
tag @s[tag=wrnmd_touch_x1] remove wrnmd_touch_x1
tag @s[tag=wrnmd_touch_x07_c] remove wrnmd_touch_x07_c
tag @s[tag=wrnmd_touch_x07_n] remove wrnmd_touch_x07_n
tag @s[tag=wrnmd_touch_x07_s] remove wrnmd_touch_x07_s
tag @s[tag=wrnmd_touch_x09_c] remove wrnmd_touch_x09_c
tag @s[tag=wrnmd_touch_x09_n] remove wrnmd_touch_x09_n
tag @s[tag=wrnmd_touch_x09_s] remove wrnmd_touch_x09_s

tag @s[tag=wrnmd_touch_y0_c] remove wrnmd_touch_y0_c
tag @s[tag=wrnmd_touch_y0_e] remove wrnmd_touch_y0_e
tag @s[tag=wrnmd_touch_y0_n] remove wrnmd_touch_y0_n
tag @s[tag=wrnmd_touch_y0_s] remove wrnmd_touch_y0_s
tag @s[tag=wrnmd_touch_y0_w] remove wrnmd_touch_y0_w
tag @s[tag=wrnmd_touch_y1_c] remove wrnmd_touch_y1_c
tag @s[tag=wrnmd_touch_y1_e] remove wrnmd_touch_y1_e
tag @s[tag=wrnmd_touch_y1_n] remove wrnmd_touch_y1_n
tag @s[tag=wrnmd_touch_y1_s] remove wrnmd_touch_y1_s
tag @s[tag=wrnmd_touch_y1_w] remove wrnmd_touch_y1_w

tag @s[tag=wrnmd_touch_z0] remove wrnmd_touch_z0
tag @s[tag=wrnmd_touch_z1] remove wrnmd_touch_z1
tag @s[tag=wrnmd_touch_z07_c] remove wrnmd_touch_z07_c
tag @s[tag=wrnmd_touch_z07_e] remove wrnmd_touch_z07_e
tag @s[tag=wrnmd_touch_z07_w] remove wrnmd_touch_z07_w
tag @s[tag=wrnmd_touch_z09_c] remove wrnmd_touch_z09_c
tag @s[tag=wrnmd_touch_z09_e] remove wrnmd_touch_z09_e
tag @s[tag=wrnmd_touch_z09_w] remove wrnmd_touch_z09_w