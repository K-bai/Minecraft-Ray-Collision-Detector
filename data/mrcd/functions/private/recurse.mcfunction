# === Debug ===
# scoreboard players add n_recurse mrcd_system 1
# particle flame ~ ~ ~ 0 0 0 0 1 force
# execute at @s run particle end_rod ~ ~ ~ 0 0 0 0 1 force


# == Block Collision Test ===
tag @s[tag=mrcd_block_collision_done] remove mrcd_block_collision_done
# Skip if current block is air
execute if block ~ ~ ~ #mrcd:air_like run tag @s add mrcd_block_collision_done
# Skip if the marker type is bullet and current block can be passed by player
execute if entity @s[tag=!mrcd_block_collision_done,tag=mrcd_bullet] if block ~ ~ ~ #mrcd:player_can_pass run tag @s add mrcd_block_collision_done
# Test if current block can't be passed by player
execute if entity @s[tag=!mrcd_block_collision_done] unless block ~ ~ ~ #mrcd:player_can_pass run function mrcd:private/sort/solid
# Test if current block can be passed by player
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:player_can_pass run function mrcd:private/sort/player_can_pass
# Test if current block is undefined (treated as a full block)
execute if entity @s[tag=!mrcd_block_collision_done] run function mrcd:private/types/full_block
# Move #target_x,y,z coord to the edge of the block if marker doesn't touch the hitbox of the block
execute if entity @s[tag=!mrcd_touch_edge] run function mrcd:private/types/air/main

# Convert the complex block markers to target_x,y,z
execute if entity @s[tag=mrcd_touch_edge_complex] run function mrcd:private/complex_cube/convert


# === Is max distance before collision ===
# Calculate distance from ray point to collision point (distance from block_x,y,z to target_x,y,z)
# collision_dx,dy,dz [mblocks]: distance from the ray point to the collision point
scoreboard players operation #collision_dx mrcd_system = #target_x mrcd_system
scoreboard players operation #collision_dy mrcd_system = #target_y mrcd_system
scoreboard players operation #collision_dz mrcd_system = #target_z mrcd_system
scoreboard players operation #collision_dx mrcd_system -= #block_x mrcd_system
scoreboard players operation #collision_dy mrcd_system -= #block_y mrcd_system
scoreboard players operation #collision_dz mrcd_system -= #block_z mrcd_system

# Which is longer? Length of collision_dx,dy,dz or total_x,y,z?
scoreboard players operation #var0 mrcd_system = #total_x mrcd_system
scoreboard players operation #var1 mrcd_system = #collision_dx mrcd_system
scoreboard players operation #var2 mrcd_system = #total_y mrcd_system
scoreboard players operation #var3 mrcd_system = #collision_dy mrcd_system
scoreboard players operation #var4 mrcd_system = #total_z mrcd_system
scoreboard players operation #var5 mrcd_system = #collision_dz mrcd_system

# Absolute value
execute if score #var0 mrcd_system matches ..-1 run scoreboard players operation #var0 mrcd_system *= #const_minus_1 mrcd_system
execute if score #var1 mrcd_system matches ..-1 run scoreboard players operation #var1 mrcd_system *= #const_minus_1 mrcd_system
execute if score #var2 mrcd_system matches ..-1 run scoreboard players operation #var2 mrcd_system *= #const_minus_1 mrcd_system
execute if score #var3 mrcd_system matches ..-1 run scoreboard players operation #var3 mrcd_system *= #const_minus_1 mrcd_system
execute if score #var4 mrcd_system matches ..-1 run scoreboard players operation #var4 mrcd_system *= #const_minus_1 mrcd_system
execute if score #var5 mrcd_system matches ..-1 run scoreboard players operation #var5 mrcd_system *= #const_minus_1 mrcd_system

# P_motion - P_collision = abs(total_x,y,z) - abs(collision_dx,dy,dz)
scoreboard players operation #var0 mrcd_system -= #var1 mrcd_system
scoreboard players operation #var2 mrcd_system -= #var3 mrcd_system
scoreboard players operation #var4 mrcd_system -= #var5 mrcd_system

execute if score #var0 mrcd_system matches ..0 if score #var2 mrcd_system matches ..0 if score #var4 mrcd_system matches ..0 run scoreboard players set #total_before_collision mrcd_system 1
execute if score #var0 mrcd_system matches 0.. if score #var2 mrcd_system matches 0.. if score #var4 mrcd_system matches 0.. run scoreboard players set #total_before_collision mrcd_system 0


# === Entity Collision Test ===
# If is mrcd_entity or mrcd_entity_targeted and there is a entity hitbox in this block
execute if score #detect_entity mrcd_system matches 1 align xyz if entity @e[tag=!mrcd_ignore,dx=0,limit=1] at @s run function mrcd:private/recurse/entity_collision/main
execute store result score #hit_entity_and_not_bullet mrcd_system run execute if entity @s[tag=mrcd_touch_entity,tag=!mrcd_entity_bullet]


# === Debug ===
# tellraw @a ["----- block test -----"]
# tellraw @a ["target (",{"score":{"name":"#target_x","objective":"mrcd_system"}},", ",{"score":{"name":"#target_y","objective":"mrcd_system"}},", ",{"score":{"name":"#target_z","objective":"mrcd_system"}}, ") (x, y, z)"]
# tellraw @a ["block (",{"score":{"name":"#block_x","objective":"mrcd_system"}},", ",{"score":{"name":"#block_y","objective":"mrcd_system"}},", ",{"score":{"name":"#block_z","objective":"mrcd_system"}}, ") (x, y, z)"]
# tellraw @a ["collision (",{"score":{"name":"#collision_dx","objective":"mrcd_system"}},", ",{"score":{"name":"#collision_dy","objective":"mrcd_system"}},", ",{"score":{"name":"#collision_dz","objective":"mrcd_system"}}, ") (x, y, z)"]


# === Ray loop end conditions ===
execute if score #hit_entity_and_not_bullet mrcd_system matches 1 run function mrcd:private/recurse/end/hit_entity
# total_x,y,z < collision_dx,dy,dz ----> Reached the distance limit
execute if score #hit_entity_and_not_bullet mrcd_system matches 0 if score #total_before_collision mrcd_system matches 1 run function mrcd:private/recurse/end/reach_total
# total_x,y,z >= collision_dx,dy,dz and collide with a block ----> Collide with a block
execute if score #hit_entity_and_not_bullet mrcd_system matches 0 if score #total_before_collision mrcd_system matches 0 if entity @s[tag=mrcd_touch_edge] run function mrcd:private/recurse/end/hit_block
# total_x,y,z >= collision_dx,dy,dz and not collide with a block ----> Next cycle
execute if score #hit_entity_and_not_bullet mrcd_system matches 0 if score #total_before_collision mrcd_system matches 0 if entity @s[tag=!mrcd_touch_edge] run function mrcd:private/recurse/continue/next_block