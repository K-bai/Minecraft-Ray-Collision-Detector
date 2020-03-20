# +y
execute if score @s[tag=!mrcd_touch_edge] mrcd_y0 matches 0.. run function mrcd:generic/types/stair/template/y0
tag @s[tag=mrcd_touch_y0_00] add mrcd_touch_y_minus
tag @s[tag=mrcd_touch_y0_01] add mrcd_touch_y_minus
tag @s[tag=mrcd_touch_y0_10] add mrcd_touch_y_minus
tag @s[tag=mrcd_touch_y0_11] add mrcd_touch_y_minus
tag @s[tag=mrcd_touch_y_minus] add mrcd_touch_edge

# 未碰撞
execute if entity @s[tag=!mrcd_touch_edge] if block ~ ~ ~ #minecraft:stairs[facing=east] run function mrcd:generic/types/stair/bottom/east/main
execute if entity @s[tag=!mrcd_touch_edge] if block ~ ~ ~ #minecraft:stairs[facing=west] run function mrcd:generic/types/stair/bottom/west/main
execute if entity @s[tag=!mrcd_touch_edge] if block ~ ~ ~ #minecraft:stairs[facing=north] run function mrcd:generic/types/stair/bottom/north/main
execute if entity @s[tag=!mrcd_touch_edge] if block ~ ~ ~ #minecraft:stairs[facing=south] run function mrcd:generic/types/stair/bottom/south/main
