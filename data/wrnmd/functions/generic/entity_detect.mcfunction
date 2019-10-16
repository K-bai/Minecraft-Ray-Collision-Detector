# 实体检测
execute positioned ~-.05 ~-.05 ~-.05 if entity @e[type=#wrnmd:target,dx=0,dy=0,dz=0] positioned ~-.9 ~-.9 ~-.9 run tag @e[type=#wrnmd:target,dx=0,dy=0,dz=0] add wrnmd_target_entity_temp
execute if entity @e[tag=wrnmd_target_entity_temp] run tag @s add wrnmd_touch_entity
execute if entity @s[tag=wrnmd_touch_entity] run tp @s ~ ~ ~