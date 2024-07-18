scoreboard players add n_recursion mrcd_system 1

# === Debug ===
# tellraw @a ["------------ BLOCK ------------"]
# tellraw @a ["block (",{"score":{"name":"#block_x","objective":"mrcd_system"}},", ",{"score":{"name":"#block_y","objective":"mrcd_system"}},", ",{"score":{"name":"#block_z","objective":"mrcd_system"}}, ") (x, y, z)"]
# tellraw @a ["block_corner (",{"score":{"name":"#block_corner_x","objective":"mrcd_system"}},", ",{"score":{"name":"#block_corner_y","objective":"mrcd_system"}},", ",{"score":{"name":"#block_corner_z","objective":"mrcd_system"}}, ") (x, y, z)"]

# particle end_rod ~ ~ ~ 0 0 0 0.01 1 force
# execute at @s run particle end_rod ~ ~ ~ 0 0 0 0 1 force


# === Block Collision Test ===
# Skip if current block is air
execute unless block ~ ~ ~ #mrcd:air_like run function mrcd:private/recurse/block_collision/main

# Move #target_x,y,z coord to the edge of the block if marker doesn't touch the hitbox of the block
execute if entity @s[tag=!mrcd_touch_edge] run function mrcd:private/types/air/main

# Convert the complex block markers to target_x,y,z
execute if entity @s[tag=mrcd_touch_edge_complex] run function mrcd:private/complex_cube/convert


# === Is max distance before collision ===
# Calculate acomulated distance travaled (sum of distance from ray point to collision point (distance from block_x,y,z to target_x,y,z))
# traveled_x,y,z [mblocks]: distance from the start to the current target
scoreboard players operation #traveled_x mrcd_system += #target_x mrcd_system
scoreboard players operation #traveled_y mrcd_system += #target_y mrcd_system
scoreboard players operation #traveled_z mrcd_system += #target_z mrcd_system
scoreboard players operation #traveled_x mrcd_system -= #block_x mrcd_system
scoreboard players operation #traveled_y mrcd_system -= #block_y mrcd_system
scoreboard players operation #traveled_z mrcd_system -= #block_z mrcd_system

scoreboard players operation #abs_traveled_x mrcd_system = #traveled_x mrcd_system
scoreboard players operation #abs_traveled_y mrcd_system = #traveled_y mrcd_system
scoreboard players operation #abs_traveled_z mrcd_system = #traveled_z mrcd_system
execute if score #abs_traveled_x mrcd_system matches ..-1 run scoreboard players operation #abs_traveled_x mrcd_system *= #-1 mrcd_system
execute if score #abs_traveled_y mrcd_system matches ..-1 run scoreboard players operation #abs_traveled_y mrcd_system *= #-1 mrcd_system
execute if score #abs_traveled_z mrcd_system matches ..-1 run scoreboard players operation #abs_traveled_z mrcd_system *= #-1 mrcd_system

execute if score #abs_total_x mrcd_system <= #abs_traveled_x mrcd_system if score #abs_total_y mrcd_system <= #abs_traveled_y mrcd_system if score #abs_total_z mrcd_system <= #abs_traveled_z mrcd_system run scoreboard players set #total_before_collision mrcd_system 1
execute if score #abs_total_x mrcd_system >= #abs_traveled_x mrcd_system if score #abs_total_y mrcd_system >= #abs_traveled_y mrcd_system if score #abs_total_z mrcd_system >= #abs_traveled_z mrcd_system run scoreboard players set #total_before_collision mrcd_system 0


# === Entity Collision Test ===
# If is mrcd_entity or mrcd_entity_targeted and there is a entity hitbox in this block
execute if score #detect_entity mrcd_system matches 1 align xyz run function mrcd:private/recurse/entity_collision/main


# === Debug ===
# tellraw @a ["----- block test -----"]
# tellraw @a ["target (",{"score":{"name":"#target_x","objective":"mrcd_system"}},", ",{"score":{"name":"#target_y","objective":"mrcd_system"}},", ",{"score":{"name":"#target_z","objective":"mrcd_system"}}, ") (x, y, z)"]
# tellraw @a ["total (",{"score":{"name":"#total_x","objective":"mrcd_system"}},", ",{"score":{"name":"#total_y","objective":"mrcd_system"}},", ",{"score":{"name":"#total_z","objective":"mrcd_system"}}, ") (x, y, z)"]
# tellraw @a ["traveled (",{"score":{"name":"#traveled_x","objective":"mrcd_system"}},", ",{"score":{"name":"#traveled_y","objective":"mrcd_system"}},", ",{"score":{"name":"#traveled_z","objective":"mrcd_system"}}, ") (x, y, z)"]
# tellraw @a [" t<c ",{"score":{"name":"#total_before_collision","objective":"mrcd_system"}}, " r ",{"score":{"name":"n_recursion","objective":"mrcd_system"}}]

# function mrcd:private/debug/particle_at_target

# === Ray loop end conditions ===
# if max recursions
execute if score n_recursion mrcd_system > #recursion_limit mrcd_system run return run function mrcd:private/recurse/reach_limit
# else if hit entity
execute if entity @s[tag=mrcd_touch_entity,tag=!mrcd_entity_bullet] run return run function mrcd:private/recurse/end/hit_entity
# else if Reached the distance limit ---> (and no entity hit and total_x,y,z < collision_dx,dy,dz)
execute if score #total_before_collision mrcd_system matches 1 run return run function mrcd:private/recurse/end/reach_total
# else if collided with a block ---> (and no entity hit and total_x,y,z >= collision_dx,dy,dz)
execute if entity @s[tag=mrcd_touch_edge] run return run function mrcd:private/recurse/end/hit_block
# else ---> (not collided with a block) = (and no entity hit and total_x,y,z >= collision_dx,dy,dz)
function mrcd:private/recurse/continue/next_block