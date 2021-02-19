# 一条线实体检测 Test entities on the sight
execute at @s[tag=!mrcd_touch_entity] run function mrcd:private/entity_targeted_detect
execute at @s[tag=!mrcd_touch_entity] positioned ^ ^ ^.2 run function mrcd:private/entity_targeted_detect
execute at @s[tag=!mrcd_touch_entity] positioned ^ ^ ^.4 run function mrcd:private/entity_targeted_detect
execute at @s[tag=!mrcd_touch_entity] positioned ^ ^ ^.6 run function mrcd:private/entity_targeted_detect
execute at @s[tag=!mrcd_touch_entity] positioned ^ ^ ^.8 run function mrcd:private/entity_targeted_detect
execute at @s[tag=!mrcd_touch_entity] positioned ^ ^ ^1.0 run function mrcd:private/entity_targeted_detect
execute at @s[tag=!mrcd_touch_entity] positioned ^ ^ ^1.2 run function mrcd:private/entity_targeted_detect
execute at @s[tag=!mrcd_touch_entity] positioned ^ ^ ^1.4 run function mrcd:private/entity_targeted_detect
execute at @s[tag=!mrcd_touch_entity] positioned ^ ^ ^1.6 run function mrcd:private/entity_targeted_detect
execute at @s[tag=!mrcd_touch_entity] positioned ^ ^ ^1.7 run function mrcd:private/entity_targeted_detect

# 加tag Add tags
execute if entity @s[tag=mrcd_touch_entity] run tag @s add mrcd_touch_edge
tag @e[tag=mrcd_target_entity_temp] add mrcd_target_entity
tag @e[tag=mrcd_target_entity_temp] remove mrcd_target_entity_temp
