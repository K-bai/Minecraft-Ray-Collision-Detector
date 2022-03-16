execute if block ~ ~ ~ big_dripleaf_stem[facing=north] run function mrcd:private/types/big_dripleaf_stem/north
execute if block ~ ~ ~ big_dripleaf_stem[facing=south] run function mrcd:private/types/big_dripleaf_stem/south
execute if block ~ ~ ~ big_dripleaf_stem[facing=east] run function mrcd:private/types/big_dripleaf_stem/east
execute if block ~ ~ ~ big_dripleaf_stem[facing=west] run function mrcd:private/types/big_dripleaf_stem/west

function mrcd:private/cube/main
tag @s add mrcd_detected
