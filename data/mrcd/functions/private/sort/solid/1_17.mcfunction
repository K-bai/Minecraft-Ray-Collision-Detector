# Global/Grouped: Walls, Slabs, Stairs, Ligthning Rod, Flower Pots, Moss Carpet

# Complex blocks
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ big_dripleaf run function mrcd:private/types/1_17/big_dripleaf/main

execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ #candle_cakes run function mrcd:private/types/1_17/candle_cake
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ #cauldrons run function mrcd:private/types/cauldron

# Simple blocks
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ small_amethyst_bud run function mrcd:private/types/1_17/small_amethyst_bud/main
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ medium_amethyst_bud run function mrcd:private/types/1_17/medium_amethyst_bud/main
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ large_amethyst_bud run function mrcd:private/types/1_17/large_amethyst_bud/main
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ amethyst_cluster run function mrcd:private/types/1_17/amethyst_cluster/main
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ pointed_dripstone run function mrcd:private/types/1_17/pointed_dripstone/main
execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ sculk_sensor run function mrcd:private/types/1_17/sculk_sensor

execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ #candles run function mrcd:private/types/1_17/candle/main

execute if entity @s[tag=!mrcd_detected] if block ~ ~ ~ #mrcd:azalea run function mrcd:private/types/1_17/azalea