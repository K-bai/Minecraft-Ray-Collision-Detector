execute if block ~ ~ ~ #ceiling_hanging_signs[rotation=0] run function mrcd:private/types/1_20/ceiling_hanging_signs/0
execute if block ~ ~ ~ #ceiling_hanging_signs[rotation=4] run function mrcd:private/types/1_20/ceiling_hanging_signs/4
execute if block ~ ~ ~ #ceiling_hanging_signs[rotation=8] run function mrcd:private/types/1_20/ceiling_hanging_signs/0
execute if block ~ ~ ~ #ceiling_hanging_signs[rotation=12] run function mrcd:private/types/1_20/ceiling_hanging_signs/4
execute unless block ~ ~ ~ #ceiling_hanging_signs[rotation=0] unless block ~ ~ ~ #ceiling_hanging_signs[rotation=4] unless block ~ ~ ~ #ceiling_hanging_signs[rotation=8] unless block ~ ~ ~ #ceiling_hanging_signs[rotation=12] run function mrcd:private/types/1_20/ceiling_hanging_signs/1

function mrcd:private/cube/main
