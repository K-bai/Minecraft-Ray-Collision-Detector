# === Compute line-surface intersection ===
# Line equation:                (x-x1)/x0 = (y-y1)/y0 = (z-z1)/z0
# Plane equation:               x = 0
# Intersection condition:       0 <= y <= 1000  0 <= z <=1000
# The equation is sorted into:  y = (-x1)y0/x0+y1
# The equation is sorted into:  z = (-x1)z0/x0+z1

scoreboard players set #target_x mrcd_system -1
function mrcd:private/calculate/x
execute if score #target_y mrcd_system matches 0..1000 if score #target_z mrcd_system matches 0..1000 run tag @s add mrcd_touch_edge_air

