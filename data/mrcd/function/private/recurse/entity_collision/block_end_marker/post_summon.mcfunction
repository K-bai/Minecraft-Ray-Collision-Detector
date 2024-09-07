tag @s add mrcd_ignore
tag @s add mrcd_block_end
tag @s add mrcd_block_marker

# Set marker position: depends if reached ray total or colided with a block
execute if score #total_before_collision mrcd_system matches 1 run function mrcd:private/recurse/entity_collision/block_end_marker/total
execute if score #total_before_collision mrcd_system matches 0 run function mrcd:private/recurse/entity_collision/block_end_marker/collision