# === Debug ===
# tellraw @a ["\n\n\n\n------------ Calc Cube ------------"]
# tellraw @a ["block (",{"score":{"name":"#block_x","objective":"mrcd_system"}},", ",{"score":{"name":"#block_y","objective":"mrcd_system"}},", ",{"score":{"name":"#block_z","objective":"mrcd_system"}}, ") (x, y, z)"]
# tellraw @a ["box_0 (",{"score":{"name":"#box_x0","objective":"mrcd_system"}},", ",{"score":{"name":"#box_y0","objective":"mrcd_system"}},", ",{"score":{"name":"#box_z0","objective":"mrcd_system"}}, ") (x, y, z)"]
# tellraw @a ["box_1 (",{"score":{"name":"#box_x1","objective":"mrcd_system"}},", ",{"score":{"name":"#box_y1","objective":"mrcd_system"}},", ",{"score":{"name":"#box_z1","objective":"mrcd_system"}}, ") (x, y, z)"]

# Choose a side to detect based on direction
execute if score @s[tag=!mrcd_touch_edge] mrcd_x0 matches 1.. if score #block_x mrcd_system <= #box_x0 mrcd_system run function mrcd:private/cube/x0
execute if score @s[tag=!mrcd_touch_edge] mrcd_x0 matches ..-1 if score #block_x mrcd_system >= #box_x1 mrcd_system run function mrcd:private/cube/x1
execute if score @s[tag=!mrcd_touch_edge] mrcd_y0 matches 1.. if score #block_y mrcd_system <= #box_y0 mrcd_system run function mrcd:private/cube/y0
execute if score @s[tag=!mrcd_touch_edge] mrcd_y0 matches ..-1 if score #block_y mrcd_system >= #box_y1 mrcd_system run function mrcd:private/cube/y1
execute if score @s[tag=!mrcd_touch_edge] mrcd_z0 matches 1.. if score #block_z mrcd_system <= #box_z0 mrcd_system run function mrcd:private/cube/z0
execute if score @s[tag=!mrcd_touch_edge] mrcd_z0 matches ..-1 if score #block_z mrcd_system >= #box_z1 mrcd_system run function mrcd:private/cube/z1
