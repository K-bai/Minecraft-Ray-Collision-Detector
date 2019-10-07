execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #minecraft:fences[east=true] if score @s wrnmd_z0 matches ..-1 run function wrnmd:block/types/glass_pane_like/faces/z09_e
tag @s[tag=wrnmd_touch_z09_e] add wrnmd_touch_z_plus
tag @s[tag=wrnmd_touch_z_plus] add wrnmd_touch_edge
execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #minecraft:fences[south=true] if score @s wrnmd_x0 matches ..-1 run function wrnmd:block/types/glass_pane_like/faces/x09_s
tag @s[tag=wrnmd_touch_x09_s] add wrnmd_touch_x_plus
tag @s[tag=wrnmd_touch_x_plus] add wrnmd_touch_edge

execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #minecraft:fences[west=true] if score @s wrnmd_z0 matches ..-1 run function wrnmd:block/types/glass_pane_like/faces/z09_w
tag @s[tag=wrnmd_touch_z09_w] add wrnmd_touch_z_plus
tag @s[tag=wrnmd_touch_z_plus] add wrnmd_touch_edge
execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #minecraft:fences[north=true] if score @s wrnmd_x0 matches ..-1 run function wrnmd:block/types/glass_pane_like/faces/x09_n
tag @s[tag=wrnmd_touch_x09_n] add wrnmd_touch_x_plus
tag @s[tag=wrnmd_touch_x_plus] add wrnmd_touch_edge