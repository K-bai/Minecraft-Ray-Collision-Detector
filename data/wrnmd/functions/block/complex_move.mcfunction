tag @s add wrnmd_temp

execute as @e[tag=wrnmd_touch_mark,sort=nearest,limit=1] if entity @s[tag=wrnmd_touch_x_plus] run tag @e[tag=wrnmd_temp] add wrnmd_touch_x_plus
execute as @e[tag=wrnmd_touch_mark,sort=nearest,limit=1] if entity @s[tag=wrnmd_touch_x_minus] run tag @e[tag=wrnmd_temp] add wrnmd_touch_x_minus
execute as @e[tag=wrnmd_touch_mark,sort=nearest,limit=1] if entity @s[tag=wrnmd_touch_y_plus] run tag @e[tag=wrnmd_temp] add wrnmd_touch_y_plus
execute as @e[tag=wrnmd_touch_mark,sort=nearest,limit=1] if entity @s[tag=wrnmd_touch_y_minus] run tag @e[tag=wrnmd_temp] add wrnmd_touch_y_minus
execute as @e[tag=wrnmd_touch_mark,sort=nearest,limit=1] if entity @s[tag=wrnmd_touch_z_plus] run tag @e[tag=wrnmd_temp] add wrnmd_touch_z_plus
execute as @e[tag=wrnmd_touch_mark,sort=nearest,limit=1] if entity @s[tag=wrnmd_touch_z_minus] run tag @e[tag=wrnmd_temp] add wrnmd_touch_z_minus

execute at @e[tag=wrnmd_touch_mark,sort=nearest,limit=1] run tp @s ~ ~ ~
kill @e[tag=wrnmd_touch_mark]
tag @s remove wrnmd_temp
