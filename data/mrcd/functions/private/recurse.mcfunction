# Debug 
# scoreboard players add n_recurse mrcd_system 1
# particle end_rod ~ ~ ~ 0 0 0 0 1 force

# === Entity Collision Test ===
function mrcd:private/recurse/collision_test/entity
execute store result score #hit_entity_and_not_bullet mrcd_system run execute if entity @s[tag=mrcd_touch_entity,tag=!mrcd_entity_bullet]
execute if score #hit_entity_and_not_bullet mrcd_system matches 1 run function mrcd:private/recurse/end/hit_entity

# === Block Collision Test ===
execute if score #hit_entity_and_not_bullet mrcd_system matches 0 run function mrcd:private/recurse/collision_test/block
execute if score #hit_entity_and_not_bullet mrcd_system matches 0 run function mrcd:private/recurse/is_total_before_collision
# total_x,y,z < collision_dx,dy,dz ----> Reached the distance limit
execute if score #hit_entity_and_not_bullet mrcd_system matches 0 if score #total_before_collision mrcd_system matches 1 run function mrcd:private/recurse/end/reach_total
# total_x,y,z >= collision_dx,dy,dz and collide with a block ----> Collide with a block
execute if score #hit_entity_and_not_bullet mrcd_system matches 0 if score #total_before_collision mrcd_system matches 0 if entity @s[tag=mrcd_touch_edge] run function mrcd:private/recurse/end/hit_block
# total_x,y,z >= collision_dx,dy,dz and not collide with a block ----> Next cycle
execute if score #hit_entity_and_not_bullet mrcd_system matches 0 if score #total_before_collision mrcd_system matches 0 if entity @s[tag=!mrcd_touch_edge] run function mrcd:private/recurse/continue/next_block