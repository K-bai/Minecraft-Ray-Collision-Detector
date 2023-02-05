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
tellraw @a ["------------ NEXT BLOCK ------------"]
tellraw @a ["block (",{"score":{"name":"#block_x","objective":"mrcd_system"}},", ",{"score":{"name":"#block_y","objective":"mrcd_system"}},", ",{"score":{"name":"#block_z","objective":"mrcd_system"}}, ") (x, y, z)"]
tellraw @a ["block_corner (",{"score":{"name":"#block_corner_x","objective":"mrcd_system"}},", ",{"score":{"name":"#block_corner_y","objective":"mrcd_system"}},", ",{"score":{"name":"#block_corner_z","objective":"mrcd_system"}}, ") (x, y, z)"]

# Change execute position and continue
execute if score #target_x mrcd_system matches 1000 positioned ~1 ~ ~ run function mrcd:private/recurse
execute if score #target_x mrcd_system matches -1 positioned ~-1 ~ ~ run function mrcd:private/recurse
execute if score #target_y mrcd_system matches 1000 positioned ~ ~1 ~ run function mrcd:private/recurse
execute if score #target_y mrcd_system matches -1 positioned ~ ~-1 ~ run function mrcd:private/recurse
execute if score #target_z mrcd_system matches 1000 positioned ~ ~ ~1 run function mrcd:private/recurse
execute if score #target_z mrcd_system matches -1 positioned ~ ~ ~-1 run function mrcd:private/recurse