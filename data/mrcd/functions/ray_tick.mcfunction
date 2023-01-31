# === Clear tags ===
tag @s[tag=mrcd_touch_edge] remove mrcd_touch_edge
tag @s[tag=mrcd_touch_edge_complex] remove mrcd_touch_edge_complex
tag @s[tag=mrcd_touch_x_plus] remove mrcd_touch_x_plus
tag @s[tag=mrcd_touch_x_minus] remove mrcd_touch_x_minus
tag @s[tag=mrcd_touch_y_plus] remove mrcd_touch_y_plus
tag @s[tag=mrcd_touch_y_minus] remove mrcd_touch_y_minus
tag @s[tag=mrcd_touch_z_plus] remove mrcd_touch_z_plus
tag @s[tag=mrcd_touch_z_minus] remove mrcd_touch_z_minus

# === Set total distance ===
# total_x,y,z [mblocks]: motion vector of the current entity we are processing (a.k. distance to travel each tick)
scoreboard players operation #total_x mrcd_system = @s mrcd_x0
scoreboard players operation #total_y mrcd_system = @s mrcd_y0
scoreboard players operation #total_z mrcd_system = @s mrcd_z0

# === Get the coordinate of current block ===
# block_x,y,z [mblocks]: point of the ray relative to the corner of the block, range from 0-1000
# block_corner_x,y,z [mblocks]: absolute coordinate of current block from the corner (relative to the world, a.k. minecraft coordinates)
execute store result score #block_x mrcd_system run data get entity @s Pos[0] 1000
execute store result score #block_y mrcd_system run data get entity @s Pos[1] 1000
execute store result score #block_z mrcd_system run data get entity @s Pos[2] 1000
scoreboard players operation #block_corner_x mrcd_system = #block_x mrcd_system
scoreboard players operation #block_corner_y mrcd_system = #block_y mrcd_system
scoreboard players operation #block_corner_z mrcd_system = #block_z mrcd_system
scoreboard players operation #block_x mrcd_system %= #const_1000 mrcd_system
scoreboard players operation #block_y mrcd_system %= #const_1000 mrcd_system
scoreboard players operation #block_z mrcd_system %= #const_1000 mrcd_system
scoreboard players operation #block_corner_x mrcd_system -= #block_x mrcd_system
scoreboard players operation #block_corner_y mrcd_system -= #block_y mrcd_system
scoreboard players operation #block_corner_z mrcd_system -= #block_z mrcd_system
execute if score #block_x mrcd_system matches 999 run scoreboard players set #block_x mrcd_system 1000
execute if score #block_y mrcd_system matches 999 run scoreboard players set #block_y mrcd_system 1000
execute if score #block_z mrcd_system matches 999 run scoreboard players set #block_z mrcd_system 1000

# Init flags
# if mrcd_entity or mrcd_entity_targeted = not(mrcd_entity and mrcd_entity_targeted)
execute store result score #detect_entity mrcd_system run execute unless entity @s[tag=!mrcd_entity,tag=!mrcd_entity_targeted]

# Debug
# tellraw @a ["\n\n\n\n\n\n\n----- start -----"]
# tellraw @a ["total (",{"score":{"name":"#total_x","objective":"mrcd_system"}},", ",{"score":{"name":"#total_y","objective":"mrcd_system"}},", ",{"score":{"name":"#total_z","objective":"mrcd_system"}}, ") (x, y, z)"]
# tellraw @a ["block (",{"score":{"name":"#block_x","objective":"mrcd_system"}},", ",{"score":{"name":"#block_y","objective":"mrcd_system"}},", ",{"score":{"name":"#block_z","objective":"mrcd_system"}}, ") (x, y, z)"]
# tellraw @a ["block_corner (",{"score":{"name":"#block_corner_x","objective":"mrcd_system"}},", ",{"score":{"name":"#block_corner_y","objective":"mrcd_system"}},", ",{"score":{"name":"#block_corner_z","objective":"mrcd_system"}}, ") (x, y, z)"]
# scoreboard players set n_recurse mrcd_system 0

# === Recurse ===
tag @s add mrcd_ignore
execute at @s run function mrcd:private/recurse
tag @s remove mrcd_ignore