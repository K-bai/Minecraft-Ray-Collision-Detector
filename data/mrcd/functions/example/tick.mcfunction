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

# The best way to raycast if it happends instnatly (not over a course of time) is to set the motion, and not have any duration. This way you use a lot less commands
execute as @a[nbt={SelectedItem:{id:"minecraft:feather"}}] at @s run function mrcd:example/bullet_and_entity_instant

# Tick earch ray and then do something
execute as @e[tag=test_mark] at @s run function mrcd:example/tick_rays

# Clear glowing after x seconds
effect clear @e[nbt={ActiveEffects:[{Id:24,Duration:19}]}] glowing

# Remove target entities for entity_targeted ray
tag @e[type=armor_stand] remove mrcd_target
