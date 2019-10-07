execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #minecraft:fences[west=true] if score @s wrnmd_z0 matches 0.. run function wrnmd:block/types/glass_pane_like/faces/z07_w
tag @s[tag=wrnmd_touch_z07_w] add wrnmd_touch_z_minus
tag @s[tag=wrnmd_touch_z_minus] add wrnmd_touch_edge
execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #minecraft:fences[north=true] if score @s wrnmd_x0 matches 0.. run function wrnmd:block/types/glass_pane_like/faces/x07_n
tag @s[tag=wrnmd_touch_x07_n] add wrnmd_touch_x_minus
tag @s[tag=wrnmd_touch_x_minus] add wrnmd_touch_edge

execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #minecraft:fences[south=true] if score @s wrnmd_x0 matches 0.. run function wrnmd:block/types/glass_pane_like/faces/x07_s
tag @s[tag=wrnmd_touch_x07_s] add wrnmd_touch_x_minus
tag @s[tag=wrnmd_touch_x_minus] add wrnmd_touch_edge
execute if entity @s[tag=!wrnmd_touch_edge] if block ~ ~ ~ #minecraft:fences[east=true] if score @s wrnmd_z0 matches 0.. run function wrnmd:block/types/glass_pane_like/faces/z07_e
tag @s[tag=wrnmd_touch_z07_e] add wrnmd_touch_z_minus
tag @s[tag=wrnmd_touch_z_minus] add wrnmd_touch_edge