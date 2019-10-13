# 一条线实体检测
execute at @s positioned ~-.05 ~-.05 ~-.05 if entity @e[type=#wrnmd:target,dx=0,dy=0,dz=0] positioned ~-.9 ~-.9 ~-.9 run tag @e[type=#wrnmd:target,dx=0,dy=0,dz=0] add wrnmd_target_entity_temp
execute unless entity @e[tag=wrnmd_target_entity_temp] at @s positioned ^ ^ ^.2 positioned ~-.05 ~-.05 ~-.05 if entity @e[type=#wrnmd:target,dx=0,dy=0,dz=0] positioned ~-.9 ~-.9 ~-.9 run tag @e[type=#wrnmd:target,dx=0,dy=0,dz=0] add wrnmd_target_entity_temp
execute unless entity @e[tag=wrnmd_target_entity_temp] at @s positioned ^ ^ ^.4 positioned ~-.05 ~-.05 ~-.05 if entity @e[type=#wrnmd:target,dx=0,dy=0,dz=0] positioned ~-.9 ~-.9 ~-.9 run tag @e[type=#wrnmd:target,dx=0,dy=0,dz=0] add wrnmd_target_entity_temp
execute unless entity @e[tag=wrnmd_target_entity_temp] at @s positioned ^ ^ ^.6 positioned ~-.05 ~-.05 ~-.05 if entity @e[type=#wrnmd:target,dx=0,dy=0,dz=0] positioned ~-.9 ~-.9 ~-.9 run tag @e[type=#wrnmd:target,dx=0,dy=0,dz=0] add wrnmd_target_entity_temp
execute unless entity @e[tag=wrnmd_target_entity_temp] at @s positioned ^ ^ ^.8 positioned ~-.05 ~-.05 ~-.05 if entity @e[type=#wrnmd:target,dx=0,dy=0,dz=0] positioned ~-.9 ~-.9 ~-.9 run tag @e[type=#wrnmd:target,dx=0,dy=0,dz=0] add wrnmd_target_entity_temp
execute unless entity @e[tag=wrnmd_target_entity_temp] at @s positioned ^ ^ ^1.0 positioned ~-.05 ~-.05 ~-.05 if entity @e[type=#wrnmd:target,dx=0,dy=0,dz=0] positioned ~-.9 ~-.9 ~-.9 run tag @e[type=#wrnmd:target,dx=0,dy=0,dz=0] add wrnmd_target_entity_temp
execute unless entity @e[tag=wrnmd_target_entity_temp] at @s positioned ^ ^ ^1.2 positioned ~-.05 ~-.05 ~-.05 if entity @e[type=#wrnmd:target,dx=0,dy=0,dz=0] positioned ~-.9 ~-.9 ~-.9 run tag @e[type=#wrnmd:target,dx=0,dy=0,dz=0] add wrnmd_target_entity_temp
execute unless entity @e[tag=wrnmd_target_entity_temp] at @s positioned ^ ^ ^1.4 positioned ~-.05 ~-.05 ~-.05 if entity @e[type=#wrnmd:target,dx=0,dy=0,dz=0] positioned ~-.9 ~-.9 ~-.9 run tag @e[type=#wrnmd:target,dx=0,dy=0,dz=0] add wrnmd_target_entity_temp
execute unless entity @e[tag=wrnmd_target_entity_temp] at @s positioned ^ ^ ^1.6 positioned ~-.05 ~-.05 ~-.05 if entity @e[type=#wrnmd:target,dx=0,dy=0,dz=0] positioned ~-.9 ~-.9 ~-.9 run tag @e[type=#wrnmd:target,dx=0,dy=0,dz=0] add wrnmd_target_entity_temp
execute unless entity @e[tag=wrnmd_target_entity_temp] at @s positioned ^ ^ ^1.8 positioned ~-.05 ~-.05 ~-.05 if entity @e[type=#wrnmd:target,dx=0,dy=0,dz=0] positioned ~-.9 ~-.9 ~-.9 run tag @e[type=#wrnmd:target,dx=0,dy=0,dz=0] add wrnmd_target_entity_temp
# 加tag
execute if entity @e[tag=wrnmd_target_entity_temp] run scoreboard players set #total_x wrnmd_system 0
execute if entity @e[tag=wrnmd_target_entity_temp] run scoreboard players set #total_y wrnmd_system 0
execute if entity @e[tag=wrnmd_target_entity_temp] run scoreboard players set #total_z wrnmd_system 0
execute if entity @e[tag=wrnmd_target_entity_temp] run tag @s add wrnmd_touch_edge
execute if entity @e[tag=wrnmd_target_entity_temp] run tag @s add wrnmd_touch_entity
tag @e[tag=wrnmd_target_entity_temp] add wrnmd_target_entity
tag @e[tag=wrnmd_target_entity_temp] remove wrnmd_target_entity_temp
