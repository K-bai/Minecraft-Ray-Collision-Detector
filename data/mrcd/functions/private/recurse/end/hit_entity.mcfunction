# Debug 
# tellraw @a ["----- hit entity -----"]
# tellraw @a ["target_x:",{"score":{"name":"#target_x","objective":"mrcd_system"}},", target_y:",{"score":{"name":"#target_y","objective":"mrcd_system"}},", target_z:",{"score":{"name":"#target_z","objective":"mrcd_system"}}]

# Clear collision scoreboards
scoreboard players set #target_x mrcd_system 0
scoreboard players set #target_y mrcd_system 0
scoreboard players set #target_z mrcd_system 0