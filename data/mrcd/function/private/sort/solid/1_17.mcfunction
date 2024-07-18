# Global/Grouped: Walls, Slabs, Stairs, Ligthning Rod, Flower Pots, Moss Carpet

# Complex blocks
execute if block ~ ~ ~ big_dripleaf run return run function mrcd:private/types/1_17/big_dripleaf/main

execute if block ~ ~ ~ #candle_cakes run return run function mrcd:private/types/1_17/candle_cake
execute if block ~ ~ ~ #cauldrons run return run function mrcd:private/types/cauldron

# Simple blocks
execute if block ~ ~ ~ small_amethyst_bud run return run function mrcd:private/types/1_17/small_amethyst_bud/main
execute if block ~ ~ ~ medium_amethyst_bud run return run function mrcd:private/types/1_17/medium_amethyst_bud/main
execute if block ~ ~ ~ large_amethyst_bud run return run function mrcd:private/types/1_17/large_amethyst_bud/main
execute if block ~ ~ ~ amethyst_cluster run return run function mrcd:private/types/1_17/amethyst_cluster/main
execute if block ~ ~ ~ pointed_dripstone run return run function mrcd:private/types/1_17/pointed_dripstone/main
execute if block ~ ~ ~ sculk_sensor run return run function mrcd:private/types/slab/bottom

execute if block ~ ~ ~ #candles run return run function mrcd:private/types/1_17/candle/main

execute if block ~ ~ ~ #mrcd:azalea run return run function mrcd:private/types/1_17/azalea