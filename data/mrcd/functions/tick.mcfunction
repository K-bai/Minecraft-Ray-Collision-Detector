# 子弹飞行 bullet ticks
execute as @e[tag=mrcd_bullet] at @s run function mrcd:generic/start
execute as @e[tag=mrcd_bullet,tag=mrcd_touch_edge,tag=mrcd_touch_x_plus] at @s run say touched x+
execute as @e[tag=mrcd_bullet,tag=mrcd_touch_edge,tag=mrcd_touch_x_minus] at @s run say touched x-
execute as @e[tag=mrcd_bullet,tag=mrcd_touch_edge,tag=mrcd_touch_y_plus] at @s run say touched y+
execute as @e[tag=mrcd_bullet,tag=mrcd_touch_edge,tag=mrcd_touch_y_minus] at @s run say touched y-
execute as @e[tag=mrcd_bullet,tag=mrcd_touch_edge,tag=mrcd_touch_z_plus] at @s run say touched z+
execute as @e[tag=mrcd_bullet,tag=mrcd_touch_edge,tag=mrcd_touch_z_minus] at @s run say touched z-
tag @e[tag=mrcd_bullet,tag=mrcd_touch_edge] remove mrcd_bullet