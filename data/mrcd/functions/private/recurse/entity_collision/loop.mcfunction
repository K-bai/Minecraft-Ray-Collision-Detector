# Tag collided entities
execute if entity @s[tag=mrcd_entity,tag=!mrcd_entity_targeted] as @e[type=!#mrcd:ignore,tag=!mrcd_ignore,dx=0] positioned ~-.9 ~-.9 ~-.9 run tag @s[dx=0] add mrcd_target_entity
execute if entity @s[tag=mrcd_entity_targeted] as @e[tag=mrcd_target,tag=!mrcd_ignore,dx=0] positioned ~-.9 ~-.9 ~-.9 run tag @s[dx=0] add mrcd_target_entity

# Debug
particle end_rod ~ ~ ~ 0 0 0 0 1

# Loop 
scoreboard players add #steps mrcd_system 1
execute if score #steps mrcd_system matches ..3 unless entity @e[tag=mrcd_block_end,limit=1,distance=..0.34] positioned ^ ^ ^.34 run function mrcd:private/recurse/entity_collision/loop