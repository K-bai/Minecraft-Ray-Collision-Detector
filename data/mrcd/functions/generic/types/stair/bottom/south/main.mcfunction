execute if entity @s[tag=!mrcd_touch_edge] if block ~ ~ ~ #minecraft:stairs[shape=straight] run function mrcd:generic/types/stair/bottom/south/straight
execute if entity @s[tag=!mrcd_touch_edge] if block ~ ~ ~ #minecraft:stairs[shape=inner_left] run function mrcd:generic/types/stair/bottom/south/inner_left
execute if entity @s[tag=!mrcd_touch_edge] if block ~ ~ ~ #minecraft:stairs[shape=inner_right] run function mrcd:generic/types/stair/bottom/south/inner_right
execute if entity @s[tag=!mrcd_touch_edge] if block ~ ~ ~ #minecraft:stairs[shape=outer_left] run function mrcd:generic/types/stair/bottom/south/outer_left
execute if entity @s[tag=!mrcd_touch_edge] if block ~ ~ ~ #minecraft:stairs[shape=outer_right] run function mrcd:generic/types/stair/bottom/south/outer_right
