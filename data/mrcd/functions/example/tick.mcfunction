# Summon each diferent ray. In this example, we use the player as a reference for where and towards where the ray will go
# We use some simple math (two points subtraction) to eassily calculate the motion

# If we whant a ray that will travel a distance over time (ticks), we set that distance and call ray_tick each tick
# For example we whant a ray taht travels 10b/s = 10b/20t = 0.5b/t and then end. (b = blocks, s = seconds, t = ray_tick call)
# To do this we summon an area_effect_cloud that lasts 10 ticks (Duration tag) = 0.5 /t *10 t = 5b/10 t = 10b/20t = 10b/s
execute as @a[nbt={SelectedItem:{id:"minecraft:stick"}}] at @s run function mrcd:example/raycast
execute as @a[nbt={SelectedItem:{id:"minecraft:blaze_rod"}}] at @s run function mrcd:example/bullet
execute as @a[nbt={SelectedItem:{id:"minecraft:bone"}}] at @s run function mrcd:example/entity
execute as @a[nbt={SelectedItem:{id:"minecraft:bamboo"}}] at @s run tag @e[type=armor_stand] add mrcd_target
execute as @a[nbt={SelectedItem:{id:"minecraft:bamboo"}}] at @s run function mrcd:example/entity_targeted
execute as @a[nbt={SelectedItem:{id:"minecraft:arrow"}}] at @s run function mrcd:example/bullet_entity
execute as @a[nbt={SelectedItem:{id:"minecraft:spectral_arrow"}}] at @s run function mrcd:example/bullet_and_entity

# The best way to raycast if it happends instnatly (not over a course of time) is to set the motion, and not have any duration
execute as @a[nbt={SelectedItem:{id:"minecraft:feather"}}] at @s run function mrcd:example/bullet_and_entity_instant

# If we whant a ray that is 

# Do something at the ray (trace ray path)
execute at @e[tag=test_mark] run particle mycelium ~ ~ ~ 0 0 0 0 1 force
# execute at @e[tag=mrcd_bullet] run particle wax_on ~ ~ ~ 0 0 0 0 1 force
# execute at @e[tag=mrcd_entity] run particle wax_off ~ ~ ~ 0 0 0 0 1 force
# execute at @e[tag=mrcd_entity_targeted] run particle scrape ~ ~ ~ 0 0 0 0 1 force
# execute at @e[tag=mrcd_entity_bullet] run particle enchanted_hit ~ ~ ~ 0 0 0 0 1 force

# Bullet ticks
execute as @e[tag=test_mark] at @s run function mrcd:ray_tick

# Do something at the ray (trace ray path) after ticking
execute at @e[tag=test_mark,tag=instnat] run particle end_rod ~ ~ ~ 0 0 0 0 1 force

# Check entity hited
effect give @e[tag=mrcd_target_entity] glowing 1 0 true
# execute as @e[tag=mrcd_target_entity] at @s run say I'm marked.
effect clear @e[tag=!mrcd_target_entity,nbt={ActiveEffects:[{Id:24,Duration:15}]}] glowing
tag @e[tag=mrcd_target_entity] remove mrcd_target_entity

# Check block hited
# execute as @e[tag=mrcd_touch_edge,tag=mrcd_touch_x_plus] at @s run say touched x+
# execute as @e[tag=mrcd_touch_edge,tag=mrcd_touch_x_minus] at @s run say touched x-
# execute as @e[tag=mrcd_touch_edge,tag=mrcd_touch_y_plus] at @s run say touched y+
# execute as @e[tag=mrcd_touch_edge,tag=mrcd_touch_y_minus] at @s run say touched y-
# execute as @e[tag=mrcd_touch_edge,tag=mrcd_touch_z_plus] at @s run say touched z+
# execute as @e[tag=mrcd_touch_edge,tag=mrcd_touch_z_minus] at @s run say touched z-

# Once hited remove
kill @e[tag=mrcd_bullet,tag=mrcd_touch_edge]

# Remove target entities for entity_targeted ray
tag @e[type=armor_stand] remove mrcd_target
