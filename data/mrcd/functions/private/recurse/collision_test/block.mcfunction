tag @s[tag=mrcd_block_collision_done] remove mrcd_block_collision_done
# Skip if current block is air
execute if block ~ ~ ~ #mrcd:air_like run tag @s add mrcd_block_collision_done
# Skip if the marker type is bullet and current block can be passed by player
execute if entity @s[tag=!mrcd_block_collision_done,tag=mrcd_bullet] if block ~ ~ ~ #mrcd:player_can_pass run tag @s add mrcd_block_collision_done
# Test if current block can't be passed by player
execute if entity @s[tag=!mrcd_block_collision_done] unless block ~ ~ ~ #mrcd:player_can_pass run function mrcd:private/sort/solid
# Test if current block can be passed by player
execute if entity @s[tag=!mrcd_block_collision_done] if block ~ ~ ~ #mrcd:player_can_pass run function mrcd:private/sort/player_can_pass
# Test if current block is undefined (treated as a full block)
execute if entity @s[tag=!mrcd_block_collision_done] run function mrcd:private/types/solid
# Move #target_x,y,z coord to the edge of the block if marker doesn't touch the hitbox of the block
execute if entity @s[tag=!mrcd_touch_edge] run function mrcd:private/types/air/main

# Convert the complex block markers to target_x,y,z
execute if entity @s[tag=mrcd_touch_edge_complex] run function mrcd:private/complex_cube/convert

# tellraw @a ["----- block test -----"]
# tellraw @a ["target (",{"score":{"name":"#target_x","objective":"mrcd_system"}},", ",{"score":{"name":"#target_y","objective":"mrcd_system"}},", ",{"score":{"name":"#target_z","objective":"mrcd_system"}}, ") (x, y, z)"]
# tellraw @a ["block (",{"score":{"name":"#block_x","objective":"mrcd_system"}},", ",{"score":{"name":"#block_y","objective":"mrcd_system"}},", ",{"score":{"name":"#block_z","objective":"mrcd_system"}}, ") (x, y, z)"]