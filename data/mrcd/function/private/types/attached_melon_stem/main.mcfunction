execute if block ~ ~ ~ #mrcd:attached_melon_stem_like[facing=south] run function mrcd:private/types/attached_melon_stem/south
execute if block ~ ~ ~ #mrcd:attached_melon_stem_like[facing=north] run function mrcd:private/types/attached_melon_stem/north
execute if block ~ ~ ~ #mrcd:attached_melon_stem_like[facing=east] run function mrcd:private/types/attached_melon_stem/east
execute if block ~ ~ ~ #mrcd:attached_melon_stem_like[facing=west] run function mrcd:private/types/attached_melon_stem/west

function mrcd:private/cube/main
tag @s add mrcd_block_collision_done
