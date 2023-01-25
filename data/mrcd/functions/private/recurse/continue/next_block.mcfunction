# total
scoreboard players operation #total_x mrcd_system -= #collision_dx mrcd_system
scoreboard players operation #total_y mrcd_system -= #collision_dy mrcd_system
scoreboard players operation #total_z mrcd_system -= #collision_dz mrcd_system

# block
scoreboard players operation #block_x mrcd_system = #target_x mrcd_system
scoreboard players operation #block_y mrcd_system = #target_y mrcd_system
scoreboard players operation #block_z mrcd_system = #target_z mrcd_system
execute if score #target_x mrcd_system matches 1000 run scoreboard players set #block_x mrcd_system 0
execute if score #target_y mrcd_system matches 1000 run scoreboard players set #block_y mrcd_system 0
execute if score #target_z mrcd_system matches 1000 run scoreboard players set #block_z mrcd_system 0
execute if score #target_x mrcd_system matches -1 run scoreboard players set #block_x mrcd_system 1000
execute if score #target_y mrcd_system matches -1 run scoreboard players set #block_y mrcd_system 1000
execute if score #target_z mrcd_system matches -1 run scoreboard players set #block_z mrcd_system 1000

# block_corner
execute if score #target_x mrcd_system matches 1000 run scoreboard players add #block_corner_x mrcd_system 1000
execute if score #target_y mrcd_system matches 1000 run scoreboard players add #block_corner_y mrcd_system 1000
execute if score #target_z mrcd_system matches 1000 run scoreboard players add #block_corner_z mrcd_system 1000
execute if score #target_x mrcd_system matches -1 run scoreboard players remove #block_corner_x mrcd_system 1000
execute if score #target_y mrcd_system matches -1 run scoreboard players remove #block_corner_y mrcd_system 1000
execute if score #target_z mrcd_system matches -1 run scoreboard players remove #block_corner_z mrcd_system 1000

# Debug
# tellraw @a ["----- next block -----"]
# tellraw @a ["total_x:",{"score":{"name":"#total_x","objective":"mrcd_system"}},", total_y:",{"score":{"name":"#total_y","objective":"mrcd_system"}},", total_z:",{"score":{"name":"#total_z","objective":"mrcd_system"}}]
# tellraw @a ["block_x:",{"score":{"name":"#block_x","objective":"mrcd_system"}},", block_y:",{"score":{"name":"#block_y","objective":"mrcd_system"}},", block_z:",{"score":{"name":"#block_z","objective":"mrcd_system"}}]
# tellraw @a ["block_corner_x:",{"score":{"name":"#block_corner_x","objective":"mrcd_system"}},", block_corner_y:",{"score":{"name":"#block_corner_y","objective":"mrcd_system"}},", block_corner_z:",{"score":{"name":"#block_corner_z","objective":"mrcd_system"}}]

# Change execute position and continue
execute if score #target_x mrcd_system matches 1000 positioned ~1 ~ ~ run function mrcd:private/recurse
execute if score #target_x mrcd_system matches -1 positioned ~-1 ~ ~ run function mrcd:private/recurse
execute if score #target_y mrcd_system matches 1000 positioned ~ ~1 ~ run function mrcd:private/recurse
execute if score #target_y mrcd_system matches -1 positioned ~ ~-1 ~ run function mrcd:private/recurse
execute if score #target_z mrcd_system matches 1000 positioned ~ ~ ~1 run function mrcd:private/recurse
execute if score #target_z mrcd_system matches -1 positioned ~ ~ ~-1 run function mrcd:private/recurse