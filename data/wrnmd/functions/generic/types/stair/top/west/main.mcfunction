execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #minecraft:stairs[shape=straight] run function wrnmd:generic/types/stair/top/west/straight
execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #minecraft:stairs[shape=inner_left] run function wrnmd:generic/types/stair/top/south/inner_right
execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #minecraft:stairs[shape=inner_right] run function wrnmd:generic/types/stair/top/north/inner_left
execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #minecraft:stairs[shape=outer_left] run function wrnmd:generic/types/stair/top/south/outer_right
execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #minecraft:stairs[shape=outer_right] run function wrnmd:generic/types/stair/top/north/outer_left
