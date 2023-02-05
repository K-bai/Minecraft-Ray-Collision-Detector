# Tp to #target position
scoreboard players operation #total_x mrcd_system += #start_x mrcd_system
scoreboard players operation #total_y mrcd_system += #start_y mrcd_system
scoreboard players operation #total_z mrcd_system += #start_z mrcd_system

execute store result entity @s Pos[0] double 0.001 run scoreboard players get #total_x mrcd_system
execute store result entity @s Pos[1] double 0.001 run scoreboard players get #total_y mrcd_system
execute store result entity @s Pos[2] double 0.001 run scoreboard players get #total_z mrcd_system

# Debug
# tellraw @a ["----- reach total -----"]
# tellraw @a ["final pos (",{"score":{"name":"#total_x","objective":"mrcd_system"}},", ",{"score":{"name":"#total_y","objective":"mrcd_system"}},", ",{"score":{"name":"#total_z","objective":"mrcd_system"}}, ") (x, y, z)"]

# Last entity check
scoreboard players set #steps mrcd_system 3
execute if score #detect_entity mrcd_system matches 1 align xyz if entity @e[tag=!mrcd_ignore,dx=0,limit=1] at @s run function mrcd:private/recurse/entity_collision/loop

# Clear collision tags and scoreboards
tag @s[tag=mrcd_touch_edge] remove mrcd_touch_edge
scoreboard players set #target_x mrcd_system 0
scoreboard players set #target_y mrcd_system 0
scoreboard players set #target_z mrcd_system 0
