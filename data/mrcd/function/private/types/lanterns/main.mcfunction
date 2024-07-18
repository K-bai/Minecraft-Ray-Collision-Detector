execute if block ~ ~ ~ #mrcd:lanterns[hanging=false] run function mrcd:private/types/lanterns/no_hanging
execute if block ~ ~ ~ #mrcd:lanterns[hanging=true] run function mrcd:private/types/lanterns/hanging

execute if entity @e[tag=mrcd_touch_mark] run tag @s add mrcd_touch_edge
execute if entity @e[tag=mrcd_touch_mark] run tag @s add mrcd_touch_edge_complex

