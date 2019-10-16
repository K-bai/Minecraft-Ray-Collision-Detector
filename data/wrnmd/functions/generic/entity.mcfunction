# 一条线实体检测
execute at @s[tag=!wrnmd_touch_entity] run function wrnmd:generic/entity_detect
execute at @s[tag=!wrnmd_touch_entity] positioned ^ ^ ^.2 run function wrnmd:generic/entity_detect
execute at @s[tag=!wrnmd_touch_entity] positioned ^ ^ ^.4 run function wrnmd:generic/entity_detect
execute at @s[tag=!wrnmd_touch_entity] positioned ^ ^ ^.6 run function wrnmd:generic/entity_detect
execute at @s[tag=!wrnmd_touch_entity] positioned ^ ^ ^.8 run function wrnmd:generic/entity_detect
execute at @s[tag=!wrnmd_touch_entity] positioned ^ ^ ^1.0 run function wrnmd:generic/entity_detect
execute at @s[tag=!wrnmd_touch_entity] positioned ^ ^ ^1.2 run function wrnmd:generic/entity_detect
execute at @s[tag=!wrnmd_touch_entity] positioned ^ ^ ^1.4 run function wrnmd:generic/entity_detect
execute at @s[tag=!wrnmd_touch_entity] positioned ^ ^ ^1.6 run function wrnmd:generic/entity_detect
execute at @s[tag=!wrnmd_touch_entity] positioned ^ ^ ^1.7 run function wrnmd:generic/entity_detect

# 加tag
execute if entity @s[tag=wrnmd_touch_entity] run tag @s add wrnmd_touch_edge
tag @e[tag=wrnmd_target_entity_temp] add wrnmd_target_entity
tag @e[tag=wrnmd_target_entity_temp] remove wrnmd_target_entity_temp
