# Only target nearest
tag @e[tag=mrcd_target_entity,sort=nearest,limit=1] add tmp
tag @e[tag=mrcd_target_entity,tag=!tmp] remove mrcd_target_entity
tag @e[tag=mrcd_target_entity,sort=nearest,limit=1] remove tmp