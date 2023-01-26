# Tp to #target position
scoreboard players operation #target_x mrcd_system = #total_x mrcd_system
scoreboard players operation #target_y mrcd_system = #total_y mrcd_system
scoreboard players operation #target_z mrcd_system = #total_z mrcd_system
scoreboard players operation #target_x mrcd_system += #block_x mrcd_system
scoreboard players operation #target_y mrcd_system += #block_y mrcd_system
scoreboard players operation #target_z mrcd_system += #block_z mrcd_system
function mrcd:private/recurse/move_to_target

# Debug
# tellraw @a ["----- reach total -----"]
# tellraw @a ["target (",{"score":{"name":"#target_x","objective":"mrcd_system"}},", ",{"score":{"name":"#target_y","objective":"mrcd_system"}},", ",{"score":{"name":"#target_z","objective":"mrcd_system"}}, ") (x, y, z)"]

# Clear collision tags and scoreboards
tag @s[tag=mrcd_touch_edge] remove mrcd_touch_edge
scoreboard players set #target_x mrcd_system 0
scoreboard players set #target_y mrcd_system 0
scoreboard players set #target_z mrcd_system 0
