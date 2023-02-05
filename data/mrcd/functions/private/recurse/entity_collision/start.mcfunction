execute if entity @s[tag=mrcd_entity,tag=!mrcd_entity_targeted] if entity @e[type=!#mrcd:ignore,tag=!mrcd_ignore,dx=0,limit=1] run function mrcd:private/recurse/entity_collision/main
execute if entity @s[tag=mrcd_entity_targeted] if entity @e[tag=mrcd_target,tag=!mrcd_ignore,dx=0,limit=1] run function mrcd:private/recurse/entity_collision/main

execute if entity @e[tag=!mrcd_ignore,dx=0,limit=1] run say me
