# Debug 
# tellraw @a ["----- hit entity -----"]
# tellraw @a ["target (",{"score":{"name":"#target_x","objective":"mrcd_system"}},", ",{"score":{"name":"#target_y","objective":"mrcd_system"}},", ",{"score":{"name":"#target_z","objective":"mrcd_system"}}, ") (x, y, z)"]

# Clear collision scoreboards
scoreboard players set #target_x mrcd_system 0
scoreboard players set #target_y mrcd_system 0
scoreboard players set #target_z mrcd_system 0