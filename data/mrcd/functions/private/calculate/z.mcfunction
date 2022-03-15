# Line equation: (x-x1)/x0 = (y-y1)/y0 = (z-z1)/z0
# Plane equation: z = #target_z
# Calculate the intersection point coordinate
#   if z0!=0
#       The equation can be arranged to: x = (#target_z-z1)x0/z0+x1
#       The equation can be arranged to: y = (#target_z-z1)y0/z0+y1
#   if z0=0, no intersection point



# x
execute store result score #target_x mrcd_system run scoreboard players get #target_z mrcd_system
scoreboard players operation #target_x mrcd_system -= #block_z mrcd_system
scoreboard players operation #target_x mrcd_system *= @s mrcd_x0
scoreboard players operation #target_x mrcd_system /= @s mrcd_z0
scoreboard players operation #target_x mrcd_system += #block_x mrcd_system

# y
execute store result score #target_y mrcd_system run scoreboard players get #target_z mrcd_system
scoreboard players operation #target_y mrcd_system -= #block_z mrcd_system
scoreboard players operation #target_y mrcd_system *= @s mrcd_y0
scoreboard players operation #target_y mrcd_system /= @s mrcd_z0
scoreboard players operation #target_y mrcd_system += #block_y mrcd_system

# z

