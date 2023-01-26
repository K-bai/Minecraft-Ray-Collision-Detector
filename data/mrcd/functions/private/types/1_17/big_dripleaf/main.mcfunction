execute if block ~ ~ ~ big_dripleaf[tilt=none] run function mrcd:private/types/1_17/big_dripleaf/top_tilt_none
execute if block ~ ~ ~ big_dripleaf[tilt=unstable] run function mrcd:private/types/1_17/big_dripleaf/top_tilt_none
execute if block ~ ~ ~ big_dripleaf[tilt=partial] run function mrcd:private/types/1_17/big_dripleaf/top_tilt_partial
# tilt = full -> no top block collision

# The player can pass through the stem part of the block
execute if entity @s[tag=!mrcd_bullet] if block ~ ~ ~ big_dripleaf[facing=north] run function mrcd:private/types/1_17/big_dripleaf/north
execute if entity @s[tag=!mrcd_bullet] if block ~ ~ ~ big_dripleaf[facing=south] run function mrcd:private/types/1_17/big_dripleaf/south
execute if entity @s[tag=!mrcd_bullet] if block ~ ~ ~ big_dripleaf[facing=east] run function mrcd:private/types/1_17/big_dripleaf/east
execute if entity @s[tag=!mrcd_bullet] if block ~ ~ ~ big_dripleaf[facing=west] run function mrcd:private/types/1_17/big_dripleaf/west

execute if entity @e[tag=mrcd_touch_mark] run tag @s add mrcd_touch_edge
execute if entity @e[tag=mrcd_touch_mark] run tag @s add mrcd_touch_edge_complex
tag @s add mrcd_block_collision_done
