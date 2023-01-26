# Calculate distance from ray point to collision point (distance from block_x,y,z to target_x,y,z)
# collision_dx,dy,dz [mblocks]: distance from the ray point to the collision point
scoreboard players operation #collision_dx mrcd_system = #target_x mrcd_system
scoreboard players operation #collision_dy mrcd_system = #target_y mrcd_system
scoreboard players operation #collision_dz mrcd_system = #target_z mrcd_system
scoreboard players operation #collision_dx mrcd_system -= #block_x mrcd_system
scoreboard players operation #collision_dy mrcd_system -= #block_y mrcd_system
scoreboard players operation #collision_dz mrcd_system -= #block_z mrcd_system

# Which is longer? Length of collision_dx,dy,dz or total_x,y,z?
scoreboard players operation #var0 mrcd_system = #total_x mrcd_system
scoreboard players operation #var1 mrcd_system = #collision_dx mrcd_system
scoreboard players operation #var2 mrcd_system = #total_y mrcd_system
scoreboard players operation #var3 mrcd_system = #collision_dy mrcd_system
scoreboard players operation #var4 mrcd_system = #total_z mrcd_system
scoreboard players operation #var5 mrcd_system = #collision_dz mrcd_system

# Absolute value
execute if score #var0 mrcd_system matches ..-1 run scoreboard players operation #var0 mrcd_system *= #const_minus_1 mrcd_system
execute if score #var1 mrcd_system matches ..-1 run scoreboard players operation #var1 mrcd_system *= #const_minus_1 mrcd_system
execute if score #var2 mrcd_system matches ..-1 run scoreboard players operation #var2 mrcd_system *= #const_minus_1 mrcd_system
execute if score #var3 mrcd_system matches ..-1 run scoreboard players operation #var3 mrcd_system *= #const_minus_1 mrcd_system
execute if score #var4 mrcd_system matches ..-1 run scoreboard players operation #var4 mrcd_system *= #const_minus_1 mrcd_system
execute if score #var5 mrcd_system matches ..-1 run scoreboard players operation #var5 mrcd_system *= #const_minus_1 mrcd_system

# total_x,y,z < collision_dx,dy,dz ?
# scoreboard players set #total_before_collision mrcd_system 0
# execute if score #var0 mrcd_system < #var1 mrcd_system if score #var2 mrcd_system < #var3 mrcd_system if score #var4 mrcd_system < #var5 mrcd_system run scoreboard players set #total_before_collision mrcd_system 1

# P_motion - P_collision = abs(total_x,y,z) - abs(collision_dx,dy,dz)
scoreboard players operation #var0 mrcd_system -= #var1 mrcd_system
scoreboard players operation #var2 mrcd_system -= #var3 mrcd_system
scoreboard players operation #var4 mrcd_system -= #var5 mrcd_system

execute if score #var0 mrcd_system matches ..0 if score #var2 mrcd_system matches ..0 if score #var4 mrcd_system matches ..0 run scoreboard players set #total_before_collision mrcd_system 1
execute if score #var0 mrcd_system matches 0.. if score #var2 mrcd_system matches 0.. if score #var4 mrcd_system matches 0.. run scoreboard players set #total_before_collision mrcd_system 0