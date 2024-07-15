# Not version classified
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:player_can_pass/minecraft_non_versioned run function mrcd:private/sort/player_can_pass/minecraft_non_versioned
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:player_can_pass/mrcd_non_versioned run function mrcd:private/sort/player_can_pass/mrcd_non_versioned

# Versioned
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:player_can_pass/1_13 run function mrcd:private/sort/player_can_pass/1_13
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:player_can_pass/1_14 run function mrcd:private/sort/player_can_pass/1_14
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:player_can_pass/1_16 run function mrcd:private/sort/player_can_pass/1_16
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:player_can_pass/1_17 run function mrcd:private/sort/player_can_pass/1_17
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:player_can_pass/1_19 run function mrcd:private/sort/player_can_pass/1_19
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:player_can_pass/1_20 run function mrcd:private/sort/player_can_pass/1_20

