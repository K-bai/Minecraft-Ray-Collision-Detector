# bullet ticks
execute as @e[tag=wrnmd_bullet] at @s run function wrnmd:generic/start
execute as @e[tag=wrnmd_bullet,tag=wrnmd_touch_x_plus] at @s run say 碰到了 x+
execute as @e[tag=wrnmd_bullet,tag=wrnmd_touch_x_minus] at @s run say 碰到了 x-
execute as @e[tag=wrnmd_bullet,tag=wrnmd_touch_y_plus] at @s run say 碰到了 y+
execute as @e[tag=wrnmd_bullet,tag=wrnmd_touch_y_minus] at @s run say 碰到了 y-
execute as @e[tag=wrnmd_bullet,tag=wrnmd_touch_z_plus] at @s run say 碰到了 z+
execute as @e[tag=wrnmd_bullet,tag=wrnmd_touch_z_minus] at @s run say 碰到了 z-
kill @e[tag=wrnmd_bullet,tag=wrnmd_touch_edge]