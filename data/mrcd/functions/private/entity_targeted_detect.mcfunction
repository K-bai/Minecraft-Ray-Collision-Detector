# 实体检测 Entity test
execute positioned ~-.05 ~-.05 ~-.05 if entity @e[tag=mrcd_target,dx=0,dy=0,dz=0] positioned ~-.9 ~-.9 ~-.9 run tag @e[tag=mrcd_target,dx=0,dy=0,dz=0] add mrcd_target_entity_temp
execute if entity @e[tag=mrcd_target_entity_temp] run tag @s add mrcd_touch_entity
#execute if entity @s[tag=mrcd_touch_entity] run tp @s ~ ~ ~
