execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #minecraft:stairs[shape=straight] run function wrnmd:generic/types/stair/bottom/east/straight
execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #minecraft:stairs[shape=inner_left] run function wrnmd:generic/types/stair/bottom/north/inner_right
execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #minecraft:stairs[shape=inner_right] run function wrnmd:generic/types/stair/bottom/south/inner_left
execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #minecraft:stairs[shape=outer_left] run function wrnmd:generic/types/stair/bottom/north/outer_right
execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #minecraft:stairs[shape=outer_right] run function wrnmd:generic/types/stair/bottom/south/outer_left
