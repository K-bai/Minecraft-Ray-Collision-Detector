# bullet ticks
execute as @e[tag=wrnmd_bullet] at @s run function wrnmd:generic/start
execute as @e[tag=wrnmd_bullet,tag=wrnmd_touch_x_plus] at @s run say touched x+
execute as @e[tag=wrnmd_bullet,tag=wrnmd_touch_x_minus] at @s run say touched x-
execute as @e[tag=wrnmd_bullet,tag=wrnmd_touch_y_plus] at @s run say touched y+
execute as @e[tag=wrnmd_bullet,tag=wrnmd_touch_y_minus] at @s run say touched y-
execute as @e[tag=wrnmd_bullet,tag=wrnmd_touch_z_plus] at @s run say touched z+
execute as @e[tag=wrnmd_bullet,tag=wrnmd_touch_z_minus] at @s run say touched z-
kill @e[tag=wrnmd_bullet,tag=wrnmd_touch_edge]