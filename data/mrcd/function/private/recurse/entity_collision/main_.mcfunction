# Summon finish point marker at block edge (collision or total)
summon area_effect_cloud ~ ~ ~ {Tags:["mrcd_block_end","mrcd_ignore"]}
execute if score #total_before_collision mrcd_system matches 1 as @e[type=area_effect_cloud,tag=mrcd_block_end,limit=1] run function mrcd:private/recurse/entity_collision/marker/total
execute if score #total_before_collision mrcd_system matches 0 as @e[type=area_effect_cloud,tag=mrcd_block_end,limit=1] run function mrcd:private/recurse/entity_collision/marker/collision

# Tp @s to current block starting position
scoreboard players operation #temp_x mrcd_system = #block_x mrcd_system
scoreboard players operation #temp_y mrcd_system = #block_y mrcd_system
scoreboard players operation #temp_z mrcd_system = #block_z mrcd_system

scoreboard players operation #temp_x mrcd_system += #block_corner_x mrcd_system
scoreboard players operation #temp_y mrcd_system += #block_corner_y mrcd_system
scoreboard players operation #temp_z mrcd_system += #block_corner_z mrcd_system

execute store result entity @s Pos[0] double 0.001 run scoreboard players get #temp_x mrcd_system
execute store result entity @s Pos[1] double 0.001 run scoreboard players get #temp_y mrcd_system
execute store result entity @s Pos[2] double 0.001 run scoreboard players get #temp_z mrcd_system

# Iterate in small steps checking if entity is reached
scoreboard players set #steps mrcd_system 0
execute at @s run function mrcd:private/recurse/entity_collision/loop

# If collision detected and is bullet
execute if entity @e[tag=mrcd_target_entity,limit=1] if entity @s[tag=!mrcd_entity_bullet] run function mrcd:private/recurse/entity_collision/not_bullet
execute if entity @e[tag=mrcd_target_entity,limit=1] run tag @s add mrcd_touch_entity

# Clean
kill @e[type=area_effect_cloud,tag=mrcd_block_end,limit=1]