# === Compute line-surface intersection ===
# Line equation:                (x-x1)/x0 = (y-y1)/y0 = (z-z1)/z0
# Plane equation:               z = 1000
# Intersection condition:       0 <= x <= 1000  0 <= y <=1000
# The equation is sorted into:  x = (1000-z1)x0/z0+x1
# The equation is sorted into:  y = (1000-z1)z0/z0+y1

scoreboard players set #target_z mrcd_system 1000
function mrcd:private/calculate/z
execute if score #target_x mrcd_system matches 0..1000 if score #target_y mrcd_system matches 0..1000 run tag @s add mrcd_touch_edge_air
