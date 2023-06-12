# Not version classified
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:solid/minecraft_non_versioned run function mrcd:private/sort/solid/minecraft_non_versioned
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:solid/mrcd_non_versioned run function mrcd:private/sort/solid/mrcd_non_versioned

# Versioned
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:solid/1_13 run function mrcd:private/sort/solid/1_13
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:solid/1_14 run function mrcd:private/sort/solid/1_14
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:solid/1_17 run function mrcd:private/sort/solid/1_17
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:solid/1_20 run function mrcd:private/sort/solid/1_20