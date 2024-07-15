# Tp to #target position
scoreboard players operation #target_temp_x mrcd_system = #target_x mrcd_system
scoreboard players operation #target_temp_y mrcd_system = #target_y mrcd_system
scoreboard players operation #target_temp_z mrcd_system = #target_z mrcd_system
scoreboard players operation #target_x mrcd_system += #block_corner_x mrcd_system
scoreboard players operation #target_y mrcd_system += #block_corner_y mrcd_system
scoreboard players operation #target_z mrcd_system += #block_corner_z mrcd_system
execute store result entity @s Pos[0] double 0.001 run scoreboard players get #target_x mrcd_system
execute store result entity @s Pos[1] double 0.001 run scoreboard players get #target_y mrcd_system
execute store result entity @s Pos[2] double 0.001 run scoreboard players get #target_z mrcd_system

# -1 means it reached the block on the negative side
execute if score #target_temp_x mrcd_system matches -1 at @s run tp @s ~0.0009 ~ ~ ~ ~
execute if score #target_temp_y mrcd_system matches -1 at @s run tp @s ~ ~0.0009 ~ ~ ~
execute if score #target_temp_z mrcd_system matches -1 at @s run tp @s ~ ~ ~0.0009 ~ ~
# 1000 means it reached the block on the positive side
execute if entity @s[tag=mrcd_touch_edge] if score #target_temp_x mrcd_system matches 1000 at @s run tp @s ~-0.00001 ~ ~ ~ ~
execute if entity @s[tag=mrcd_touch_edge] if score #target_temp_y mrcd_system matches 1000 at @s run tp @s ~ ~-0.00001 ~ ~ ~
execute if entity @s[tag=mrcd_touch_edge] if score #target_temp_z mrcd_system matches 1000 at @s run tp @s ~ ~ ~-0.00001 ~ ~

# Debug
# tellraw @a ["----- hit block -----"]
# tellraw @a ["target (",{"score":{"name":"#target_x","objective":"mrcd_system"}},", ",{"score":{"name":"#target_y","objective":"mrcd_system"}},", ",{"score":{"name":"#target_z","objective":"mrcd_system"}}, ") (x, y, z)"]
# tellraw @a ["target_temp (",{"score":{"name":"#target_temp_x","objective":"mrcd_system"}},", ",{"score":{"name":"#target_temp_y","objective":"mrcd_system"}},", ",{"score":{"name":"#target_temp_z","objective":"mrcd_system"}}, ") (x, y, z)"]

# Last entity check
scoreboard players set #steps mrcd_system 3
execute if score #detect_entity mrcd_system matches 1 align xyz if entity @e[tag=!mrcd_ignore,dx=0,limit=1] at @s run function mrcd:private/recurse/entity_collision/loop