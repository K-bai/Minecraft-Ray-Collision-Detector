execute if block ~ ~ ~ small_amethyst_bud[facing=up] run function mrcd:private/types/1_17/small_amethyst_bud/up
execute if block ~ ~ ~ small_amethyst_bud[facing=down] run function mrcd:private/types/1_17/small_amethyst_bud/down
execute if block ~ ~ ~ small_amethyst_bud[facing=north] run function mrcd:private/types/1_17/small_amethyst_bud/north
execute if block ~ ~ ~ small_amethyst_bud[facing=south] run function mrcd:private/types/1_17/small_amethyst_bud/south
execute if block ~ ~ ~ small_amethyst_bud[facing=east] run function mrcd:private/types/1_17/small_amethyst_bud/east
execute if block ~ ~ ~ small_amethyst_bud[facing=west] run function mrcd:private/types/1_17/small_amethyst_bud/west

function mrcd:private/cube/main
tag @s add mrcd_detected
