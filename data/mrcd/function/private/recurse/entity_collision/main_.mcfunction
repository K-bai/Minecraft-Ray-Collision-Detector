# Summon finish position marker at block edge
execute summon area_effect_cloud run function mrcd:private/recurse/entity_collision/block_end_marker/post_summon

# Summon starting position marker
execute summon area_effect_cloud run function mrcd:private/recurse/entity_collision/block_start_marker/post_summon

# Debug (show block where entity is found)
# particle wax_off ~ ~ ~ 0 0 0 0 1 force
# particle wax_off ~1 ~ ~ 0 0 0 0 1 force
# particle wax_off ~ ~1 ~ 0 0 0 0 1 force
# particle wax_off ~ ~ ~1 0 0 0 0 1 force
# particle wax_off ~1 ~1 ~ 0 0 0 0 1 force
# particle wax_off ~1 ~ ~1 0 0 0 0 1 force
# particle wax_off ~ ~1 ~1 0 0 0 0 1 force
# particle wax_off ~1 ~1 ~1 0 0 0 0 1 force

# execute at @e[type=area_effect_cloud,tag=mrcd_block_start,limit=1] run particle scrape ~ ~ ~ 0 0 0 0 1 force
# execute at @e[type=area_effect_cloud,tag=mrcd_block_end,limit=1] run particle wax_on ~ ~ ~ 0 0 0 0 1 force

# Iterate in small steps checking if entity is reached
scoreboard players set #steps mrcd_system 0
execute as @e[type=area_effect_cloud,tag=mrcd_block_start,limit=1] at @s run function mrcd:private/recurse/entity_collision/loop

# If collision detected and is bullet
execute if entity @e[tag=mrcd_target_entity,limit=1] if entity @s[tag=!mrcd_entity_bullet] run function mrcd:private/recurse/entity_collision/not_bullet
execute if entity @e[tag=mrcd_target_entity,limit=1] run tag @s add mrcd_touch_entity

# Clean
kill @e[type=area_effect_cloud,tag=mrcd_block_marker]