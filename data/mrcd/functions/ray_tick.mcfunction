# Clear tags
tag @s[tag=mrcd_touch_edge] remove mrcd_touch_edge
tag @s[tag=mrcd_touch_edge_complex] remove mrcd_touch_edge_complex
tag @s[tag=mrcd_touch_x_plus] remove mrcd_touch_x_plus
tag @s[tag=mrcd_touch_x_minus] remove mrcd_touch_x_minus
tag @s[tag=mrcd_touch_y_plus] remove mrcd_touch_y_plus
tag @s[tag=mrcd_touch_y_minus] remove mrcd_touch_y_minus
tag @s[tag=mrcd_touch_z_plus] remove mrcd_touch_z_plus
tag @s[tag=mrcd_touch_z_minus] remove mrcd_touch_z_minus

# Set total distance
execute store result score #total_x mrcd_system run scoreboard players get @s mrcd_x0
execute store result score #total_y mrcd_system run scoreboard players get @s mrcd_y0
execute store result score #total_z mrcd_system run scoreboard players get @s mrcd_z0

# Get the coordinate of current block
# #block_x,y,z: range from 0-1000, relative coordinate in a block
# #block_corner_x,y,z: absolute coordinate of current block (multiply by 1000)
execute store result score #block_x mrcd_system run data get entity @s Pos[0] 1000
execute store result score #block_y mrcd_system run data get entity @s Pos[1] 1000
execute store result score #block_z mrcd_system run data get entity @s Pos[2] 1000
execute store result score #block_corner_x mrcd_system run scoreboard players get #block_x mrcd_system
execute store result score #block_corner_y mrcd_system run scoreboard players get #block_y mrcd_system
execute store result score #block_corner_z mrcd_system run scoreboard players get #block_z mrcd_system
scoreboard players operation #block_x mrcd_system %= #const_1000 mrcd_system
scoreboard players operation #block_y mrcd_system %= #const_1000 mrcd_system
scoreboard players operation #block_z mrcd_system %= #const_1000 mrcd_system
scoreboard players operation #block_corner_x mrcd_system -= #block_x mrcd_system
scoreboard players operation #block_corner_y mrcd_system -= #block_y mrcd_system
scoreboard players operation #block_corner_z mrcd_system -= #block_z mrcd_system
execute if score #block_x mrcd_system matches 999 run scoreboard players set #block_x mrcd_system 1000
execute if score #block_y mrcd_system matches 999 run scoreboard players set #block_y mrcd_system 1000
execute if score #block_z mrcd_system matches 999 run scoreboard players set #block_z mrcd_system 1000

#tellraw @a ["\n\n\n\n\n\n\n-----start-----"]
#tellraw @a ["total_x:",{"score":{"name":"#total_x","objective":"mrcd_system"}},", total_y:",{"score":{"name":"#total_y","objective":"mrcd_system"}},", total_z:",{"score":{"name":"#total_z","objective":"mrcd_system"}}]
#tellraw @a ["block_x:",{"score":{"name":"#block_x","objective":"mrcd_system"}},", block_y:",{"score":{"name":"#block_y","objective":"mrcd_system"}},", block_z:",{"score":{"name":"#block_z","objective":"mrcd_system"}}]
#tellraw @a ["block_corner_x:",{"score":{"name":"#block_corner_x","objective":"mrcd_system"}},", block_corner_y:",{"score":{"name":"#block_corner_y","objective":"mrcd_system"}},", block_corner_z:",{"score":{"name":"#block_corner_z","objective":"mrcd_system"}}]

# Recurse
execute at @s run function mrcd:private/recurse
