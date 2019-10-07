execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #minecraft:stairs[shape=straight] run function wrnmd:block/types/stair/bottom/north/straight
execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #minecraft:stairs[shape=inner_left] run function wrnmd:block/types/stair/bottom/north/inner_left
execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #minecraft:stairs[shape=inner_right] run function wrnmd:block/types/stair/bottom/north/inner_right
execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #minecraft:stairs[shape=outer_left] run function wrnmd:block/types/stair/bottom/north/outer_left
execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #minecraft:stairs[shape=outer_right] run function wrnmd:block/types/stair/bottom/north/outer_right
