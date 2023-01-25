# === Compute line-surface intersection ===
# Line equation:                (x-x1)/x0 = (y-y1)/y0 = (z-z1)/z0
# Plane equation:               y = 1000
# Intersection condition:       0 <= x <= 1000  0 <= z <=1000
# The equation is sorted into:  x = (-y1)x0/y0+x1
# The equation is sorted into:  z = (-y1)z0/y0+z1

scoreboard players set #target_y mrcd_system -1
function mrcd:private/calculate/y
execute if score #target_x mrcd_system matches 0..1000 if score #target_z mrcd_system matches 0..1000 run tag @s add mrcd_touch_edge_air
