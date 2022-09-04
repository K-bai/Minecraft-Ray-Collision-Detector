execute as @e[type=!#mrcd:ignore,dx=0,dy=0,dz=0] positioned ~-.99 ~-.99 ~-.99 run tag @s[dx=0] add mrcd_target_entity
execute if entity @e[tag=mrcd_target_entity,limit=1] run tag @s add mrcd_touch_entity
execute if entity @s[tag=mrcd_touch_entity] run tag @s add mrcd_touch_edge
