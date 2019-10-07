# +z
execute if score @s[tag=!wrnmd_touch_edge] wrnmd_z0 matches 0.. run function wrnmd:block/types/stair/template/z0
tag @s[tag=wrnmd_touch_z0_00] add wrnmd_touch_z_minus
tag @s[tag=wrnmd_touch_z0_01] add wrnmd_touch_z_minus
tag @s[tag=wrnmd_touch_z0_10] add wrnmd_touch_z_minus
tag @s[tag=wrnmd_touch_z0_11] add wrnmd_touch_z_minus
tag @s[tag=wrnmd_touch_z_minus] add wrnmd_touch_edge

execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #minecraft:stairs[shape=straight] run function wrnmd:block/types/stair/top/north/straight
execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #minecraft:stairs[shape=inner_left] run function wrnmd:block/types/stair/top/north/inner_left
execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #minecraft:stairs[shape=inner_right] run function wrnmd:block/types/stair/top/north/inner_right
execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #minecraft:stairs[shape=outer_left] run function wrnmd:block/types/stair/top/north/outer_left
execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #minecraft:stairs[shape=outer_right] run function wrnmd:block/types/stair/top/north/outer_right
