execute if block ~ ~ ~ bell[attachment=floor] run function mrcd:private/types/1_14/bell/floor/main

# bell part
execute unless block ~ ~ ~ bell[attachment=floor] run function mrcd:private/types/1_14/bell/bell_part

execute if block ~ ~ ~ bell[attachment=ceiling] run function mrcd:private/types/1_14/bell/ceiling
execute if block ~ ~ ~ bell[attachment=double_wall] run function mrcd:private/types/1_14/bell/double_wall/main
execute if block ~ ~ ~ bell[attachment=single_wall] run function mrcd:private/types/1_14/bell/single_wall/main

execute if entity @e[tag=mrcd_touch_mark] run tag @s add mrcd_touch_edge
execute if entity @e[tag=mrcd_touch_mark] run tag @s add mrcd_touch_edge_complex

tag @s add mrcd_block_collision_done