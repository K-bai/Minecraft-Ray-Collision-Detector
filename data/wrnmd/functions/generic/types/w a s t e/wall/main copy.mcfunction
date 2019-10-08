# 碰撞方块
execute if score @s wrnmd_y0 matches 0.. if block ~ ~ ~ #minecraft:walls[up=true] run function wrnmd:generic/types/wall/faces/y0_c
execute if score @s wrnmd_y0 matches 0.. if block ~ ~ ~ #minecraft:walls[north=true] run function wrnmd:generic/types/wall/faces/y0_n
execute if score @s wrnmd_y0 matches 0.. if block ~ ~ ~ #minecraft:walls[south=true] run function wrnmd:generic/types/wall/faces/y0_s
execute if score @s wrnmd_y0 matches 0.. if block ~ ~ ~ #minecraft:walls[east=true] run function wrnmd:generic/types/wall/faces/y0_e
execute if score @s wrnmd_y0 matches 0.. if block ~ ~ ~ #minecraft:walls[west=true] run function wrnmd:generic/types/wall/faces/y0_w
execute if score @s wrnmd_y0 matches ..-1 if block ~ ~ ~ #minecraft:walls[up=true] run function wrnmd:generic/types/wall/faces/y1
execute if score @s wrnmd_y0 matches ..-1 if block ~ ~ ~ #minecraft:walls[north=true] run function wrnmd:generic/types/wall/faces/y14_n
execute if score @s wrnmd_y0 matches ..-1 if block ~ ~ ~ #minecraft:walls[south=true] run function wrnmd:generic/types/wall/faces/y14_s
execute if score @s wrnmd_y0 matches ..-1 if block ~ ~ ~ #minecraft:walls[east=true] run function wrnmd:generic/types/wall/faces/y14_e
execute if score @s wrnmd_y0 matches ..-1 if block ~ ~ ~ #minecraft:walls[west=true] run function wrnmd:generic/types/wall/faces/y14_w

execute if block ~ ~ ~ #minecraft:walls[up=true] run function wrnmd:generic/types/wall/faces/x4
execute if block ~ ~ ~ #minecraft:walls[north=true] run function wrnmd:generic/types/wall/faces/x5_n
execute if block ~ ~ ~ #minecraft:walls[south=true] run function wrnmd:generic/types/wall/faces/x5_s
execute if block ~ ~ ~ #minecraft:walls[north=true] run function wrnmd:generic/types/wall/faces/x11_n
execute if block ~ ~ ~ #minecraft:walls[south=true] run function wrnmd:generic/types/wall/faces/x11_s
execute if block ~ ~ ~ #minecraft:walls[up=true] run function wrnmd:generic/types/wall/faces/x12

execute if block ~ ~ ~ #minecraft:walls[up=true] run function wrnmd:generic/types/wall/faces/z4
execute if block ~ ~ ~ #minecraft:walls[east=true] run function wrnmd:generic/types/wall/faces/z5_e
execute if block ~ ~ ~ #minecraft:walls[west=true] run function wrnmd:generic/types/wall/faces/z5_w
execute if block ~ ~ ~ #minecraft:walls[east=true] run function wrnmd:generic/types/wall/faces/z11_e
execute if block ~ ~ ~ #minecraft:walls[west=true] run function wrnmd:generic/types/wall/faces/z11_w
execute if block ~ ~ ~ #minecraft:walls[up=true] run function wrnmd:generic/types/wall/faces/z12

execute if entity @e[tag=wrnmd_touch_mark] run tag @s add wrnmd_touch_edge
execute if entity @e[tag=wrnmd_touch_mark] run tag @s add wrnmd_touch_edge_complex

# 添加碰撞方向
execute if score @s wrnmd_x0 matches 0.. run tag @e[tag=wrnmd_touch_mark,tag=wrnmd_touch_x] add wrnmd_touch_x_minus
execute if score @s wrnmd_x0 matches ..-1 run tag @e[tag=wrnmd_touch_mark,tag=wrnmd_touch_x] add wrnmd_touch_x_plus
execute if score @s wrnmd_y0 matches 0.. run tag @e[tag=wrnmd_touch_mark,tag=wrnmd_touch_y] add wrnmd_touch_y_minus
execute if score @s wrnmd_y0 matches ..-1 run tag @e[tag=wrnmd_touch_mark,tag=wrnmd_touch_y] add wrnmd_touch_y_plus
execute if score @s wrnmd_z0 matches 0.. run tag @e[tag=wrnmd_touch_mark,tag=wrnmd_touch_z] add wrnmd_touch_z_minus
execute if score @s wrnmd_z0 matches ..-1 run tag @e[tag=wrnmd_touch_mark,tag=wrnmd_touch_z] add wrnmd_touch_z_plus