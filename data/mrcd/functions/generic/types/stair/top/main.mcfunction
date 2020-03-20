# -y
execute if score @s[tag=!mrcd_touch_edge] mrcd_y0 matches ..-1 run function mrcd:generic/types/stair/template/y1
tag @s[tag=mrcd_touch_y1_00] add mrcd_touch_y_plus
tag @s[tag=mrcd_touch_y1_01] add mrcd_touch_y_plus
tag @s[tag=mrcd_touch_y1_10] add mrcd_touch_y_plus
tag @s[tag=mrcd_touch_y1_11] add mrcd_touch_y_plus
tag @s[tag=mrcd_touch_y_plus] add mrcd_touch_edge

# 未碰撞
execute if entity @s[tag=!mrcd_touch_edge] if block ~ ~ ~ #minecraft:stairs[facing=east] run function mrcd:generic/types/stair/top/east/main
execute if entity @s[tag=!mrcd_touch_edge] if block ~ ~ ~ #minecraft:stairs[facing=west] run function mrcd:generic/types/stair/top/west/main
execute if entity @s[tag=!mrcd_touch_edge] if block ~ ~ ~ #minecraft:stairs[facing=north] run function mrcd:generic/types/stair/top/north/main
execute if entity @s[tag=!mrcd_touch_edge] if block ~ ~ ~ #minecraft:stairs[facing=south] run function mrcd:generic/types/stair/top/south/main
