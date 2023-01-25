# Tp to #target position
function mrcd:private/recurse/move_to_target

# Debug
# tellraw @a ["----- hit block -----"]
# tellraw @a ["target_x:",{"score":{"name":"#target_x","objective":"mrcd_system"}},", target_y:",{"score":{"name":"#target_y","objective":"mrcd_system"}},", target_z:",{"score":{"name":"#target_z","objective":"mrcd_system"}}]

# Clear collision scoreboards
scoreboard players set #target_x mrcd_system 0
scoreboard players set #target_y mrcd_system 0
scoreboard players set #target_z mrcd_system 0