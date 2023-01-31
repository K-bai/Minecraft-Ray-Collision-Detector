# Tp to #target position
function mrcd:private/recurse/move_to_target

# Debug
# tellraw @a ["----- hit block -----"]
# tellraw @a ["target (",{"score":{"name":"#target_x","objective":"mrcd_system"}},", ",{"score":{"name":"#target_y","objective":"mrcd_system"}},", ",{"score":{"name":"#target_z","objective":"mrcd_system"}}, ") (x, y, z)"]

# Last entity check
scoreboard players set #steps mrcd_system 3
execute if score #detect_entity mrcd_system matches 1 align xyz if entity @e[tag=!mrcd_ignore,dx=0,limit=1] at @s run function mrcd:private/recurse/entity_collision/loop

# Clear collision scoreboards
scoreboard players set #target_x mrcd_system 0
scoreboard players set #target_y mrcd_system 0
scoreboard players set #target_z mrcd_system 0