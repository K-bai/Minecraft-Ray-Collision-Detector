execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #minecraft:stairs[shape=straight] run function wrnmd:block/types/stair/top/east/straight
execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #minecraft:stairs[shape=inner_left] run function wrnmd:block/types/stair/top/north/inner_right
execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #minecraft:stairs[shape=inner_right] run function wrnmd:block/types/stair/top/south/inner_left
execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #minecraft:stairs[shape=outer_left] run function wrnmd:block/types/stair/top/north/outer_right
execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #minecraft:stairs[shape=outer_right] run function wrnmd:block/types/stair/top/south/outer_left
