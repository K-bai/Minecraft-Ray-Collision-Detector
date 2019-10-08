# -y
execute if score @s[tag=!wrnmd_touch_edge] wrnmd_y0 matches ..-1 run function wrnmd:generic/types/stair/template/y1
tag @s[tag=wrnmd_touch_y1_00] add wrnmd_touch_y_plus
tag @s[tag=wrnmd_touch_y1_01] add wrnmd_touch_y_plus
tag @s[tag=wrnmd_touch_y1_10] add wrnmd_touch_y_plus
tag @s[tag=wrnmd_touch_y1_11] add wrnmd_touch_y_plus
tag @s[tag=wrnmd_touch_y_plus] add wrnmd_touch_edge

# 未碰撞
execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #minecraft:stairs[facing=east] run function wrnmd:generic/types/stair/top/east/main
execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #minecraft:stairs[facing=west] run function wrnmd:generic/types/stair/top/west/main
execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #minecraft:stairs[facing=north] run function wrnmd:generic/types/stair/top/north/main
execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #minecraft:stairs[facing=south] run function wrnmd:generic/types/stair/top/south/main
