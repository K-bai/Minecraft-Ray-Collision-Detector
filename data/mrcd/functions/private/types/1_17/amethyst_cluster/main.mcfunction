execute if block ~ ~ ~ amethyst_cluster[facing=up] run function mrcd:private/types/1_17/amethyst_cluster/up
execute if block ~ ~ ~ amethyst_cluster[facing=down] run function mrcd:private/types/1_17/amethyst_cluster/down
execute if block ~ ~ ~ amethyst_cluster[facing=north] run function mrcd:private/types/1_17/amethyst_cluster/north
execute if block ~ ~ ~ amethyst_cluster[facing=south] run function mrcd:private/types/1_17/amethyst_cluster/south
execute if block ~ ~ ~ amethyst_cluster[facing=east] run function mrcd:private/types/1_17/amethyst_cluster/east
execute if block ~ ~ ~ amethyst_cluster[facing=west] run function mrcd:private/types/1_17/amethyst_cluster/west

function mrcd:private/cube/main
tag @s add mrcd_detected
