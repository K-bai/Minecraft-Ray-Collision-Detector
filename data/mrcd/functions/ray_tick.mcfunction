# === Clear tags ===
tag @s[tag=mrcd_touch_edge] remove mrcd_touch_edge
tag @s[tag=mrcd_touch_edge_complex] remove mrcd_touch_edge_complex
tag @s[tag=mrcd_touch_x_plus] remove mrcd_touch_x_plus
tag @s[tag=mrcd_touch_x_minus] remove mrcd_touch_x_minus
tag @s[tag=mrcd_touch_y_plus] remove mrcd_touch_y_plus
tag @s[tag=mrcd_touch_y_minus] remove mrcd_touch_y_minus
tag @s[tag=mrcd_touch_z_plus] remove mrcd_touch_z_plus
tag @s[tag=mrcd_touch_z_minus] remove mrcd_touch_z_minus
tag @s[tag=mrcd_touch_entity] remove mrcd_touch_entity
tag @e[tag=mrcd_target_entity] remove mrcd_target_entity

# === Set total distance ===
# total_x,y,z [mblocks]: motion vector of the current entity we are processing (a.k. distance to travel each tick)
scoreboard players operation #total_x mrcd_system = @s mrcd_x0
scoreboard players operation #total_y mrcd_system = @s mrcd_y0
scoreboard players operation #total_z mrcd_system = @s mrcd_z0

scoreboard players operation #abs_total_x mrcd_system = @s mrcd_x0
scoreboard players operation #abs_total_y mrcd_system = @s mrcd_y0
scoreboard players operation #abs_total_z mrcd_system = @s mrcd_z0
execute if score #abs_total_x mrcd_system matches ..-1 run scoreboard players operation #abs_total_x mrcd_system *= #const_minus_1 mrcd_system
execute if score #abs_total_y mrcd_system matches ..-1 run scoreboard players operation #abs_total_y mrcd_system *= #const_minus_1 mrcd_system
execute if score #abs_total_z mrcd_system matches ..-1 run scoreboard players operation #abs_total_z mrcd_system *= #const_minus_1 mrcd_system

# === Reset travaled distance ===
scoreboard players set #traveled_x mrcd_system 0
scoreboard players set #traveled_y mrcd_system 0
scoreboard players set #traveled_z mrcd_system 0

# === Get the coordinate of current block ===
# start_x,y,z [mblocks]: world coords of the starting cast
# block_x,y,z [mblocks]: point of the ray relative to the corner of the block, range from 0-1000
# block_corner_x,y,z [mblocks]: absolute coordinate of current block from the corner (relative to the world, a.k. minecraft coordinates)
execute store result score #start_x mrcd_system run data get entity @s Pos[0] 1000
execute store result score #start_y mrcd_system run data get entity @s Pos[1] 1000
execute store result score #start_z mrcd_system run data get entity @s Pos[2] 1000
scoreboard players operation #block_x mrcd_system = #start_x mrcd_system
scoreboard players operation #block_y mrcd_system = #start_y mrcd_system
scoreboard players operation #block_z mrcd_system = #start_z mrcd_system
scoreboard players operation #block_corner_x mrcd_system = #start_x mrcd_system
scoreboard players operation #block_corner_y mrcd_system = #start_y mrcd_system
scoreboard players operation #block_corner_z mrcd_system = #start_z mrcd_system
scoreboard players operation #block_x mrcd_system %= #const_1000 mrcd_system
scoreboard players operation #block_y mrcd_system %= #const_1000 mrcd_system
scoreboard players operation #block_z mrcd_system %= #const_1000 mrcd_system
scoreboard players operation #block_corner_x mrcd_system -= #block_x mrcd_system
scoreboard players operation #block_corner_y mrcd_system -= #block_y mrcd_system 
scoreboard players operation #block_corner_z mrcd_system -= #block_z mrcd_system
execute if score #block_x mrcd_system matches 999 run scoreboard players set #block_x mrcd_system 1000
execute if score #block_y mrcd_system matches 999 run scoreboard players set #block_y mrcd_system 1000
execute if score #block_z mrcd_system matches 999 run scoreboard players set #block_z mrcd_system 1000

# === Clear target ===
scoreboard players set #target_x mrcd_system 0
scoreboard players set #target_y mrcd_system 0
scoreboard players set #target_z mrcd_system 0

# === Init flags ===
# if mrcd_entity or mrcd_entity_targeted = not(mrcd_entity and mrcd_entity_targeted)
execute store result score #detect_entity mrcd_system run execute unless entity @s[tag=!mrcd_entity,tag=!mrcd_entity_targeted]

# === Debug ===
# summon marker ~ ~ ~ {Tags:["at_target","init"]}

# === Recurse ===
scoreboard players set n_recursion mrcd_system 0
tag @s[tag=mrcd_ignore] add mrcd_ignore_keep
tag @s add mrcd_ignore

execute at @s run function mrcd:private/recurse

tag @s[tag=!mrcd_ignore_keep] remove mrcd_ignore
tag @s remove mrcd_ignore_keep
tag @e remove mrcd_tick_done

# === Debug ===
# tellraw @a ["Nº recursions ",{"score":{"name":"n_recursion","objective":"mrcd_system"}}]