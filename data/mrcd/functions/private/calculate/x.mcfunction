# Line equation:    (x-x1)/x0 = (y-y1)/y0 = (z-z1)/z0
# Plane equation:   x = #target_x
# Calculate the intersection point coordinate
#   if x0!=0
#       The equation can be arranged to: y = (#target_x-x1)y0/x0+y1
#       The equation can be arranged to: z = (#target_x-x1)z0/x0+z1
#   if x0=0, no intersection point

# x

# y
execute store result score #target_y mrcd_system run scoreboard players get #target_x mrcd_system
scoreboard players operation #target_y mrcd_system -= #block_x mrcd_system
scoreboard players operation #target_y mrcd_system *= @s mrcd_y0
scoreboard players operation #target_y mrcd_system /= @s mrcd_x0
scoreboard players operation #target_y mrcd_system += #block_y mrcd_system

# z
execute store result score #target_z mrcd_system run scoreboard players get #target_x mrcd_system
scoreboard players operation #target_z mrcd_system -= #block_x mrcd_system
scoreboard players operation #target_z mrcd_system *= @s mrcd_z0
scoreboard players operation #target_z mrcd_system /= @s mrcd_x0
scoreboard players operation #target_z mrcd_system += #block_z mrcd_system


