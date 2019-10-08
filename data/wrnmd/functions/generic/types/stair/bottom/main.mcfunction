# +y
execute if score @s[tag=!wrnmd_touch_edge] wrnmd_y0 matches 0.. run function wrnmd:generic/types/stair/template/y0
tag @s[tag=wrnmd_touch_y0_00] add wrnmd_touch_y_minus
tag @s[tag=wrnmd_touch_y0_01] add wrnmd_touch_y_minus
tag @s[tag=wrnmd_touch_y0_10] add wrnmd_touch_y_minus
tag @s[tag=wrnmd_touch_y0_11] add wrnmd_touch_y_minus
tag @s[tag=wrnmd_touch_y_minus] add wrnmd_touch_edge

# 未碰撞
execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #minecraft:stairs[facing=east] run function wrnmd:generic/types/stair/bottom/east/main
execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #minecraft:stairs[facing=west] run function wrnmd:generic/types/stair/bottom/west/main
execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #minecraft:stairs[facing=north] run function wrnmd:generic/types/stair/bottom/north/main
execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #minecraft:stairs[facing=south] run function wrnmd:generic/types/stair/bottom/south/main
