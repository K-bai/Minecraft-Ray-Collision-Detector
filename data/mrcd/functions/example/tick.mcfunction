# summon each diferent ray. In this example, we use the player as a reference for where and towards where the ray will go.
# So, we use oriented relative coordinates and some math to eassily assing the speed (this case, 0.5 b/ray_tick).
# Since the summoned area_effect_cloud lasts for 10 ticks (Duration), it will travel at max 5 blocks
execute as @e[nbt={SelectedItem:{id:"minecraft:stick"}}] at @s run function mrcd:example/raycast
execute as @e[nbt={SelectedItem:{id:"minecraft:blaze_rod"}}] at @s run function mrcd:example/bullet
execute as @e[nbt={SelectedItem:{id:"minecraft:bone"}}] at @s run function mrcd:example/entity
execute as @e[nbt={SelectedItem:{id:"minecraft:bamboo"}}] at @s run tag @e[type=armor_stand] add mrcd_target
execute as @e[nbt={SelectedItem:{id:"minecraft:bamboo"}}] at @s run function mrcd:example/entity_targeted
execute as @e[nbt={SelectedItem:{id:"minecraft:arrow"}}] at @s run function mrcd:example/bullet_entity
execute as @e[nbt={SelectedItem:{id:"minecraft:spectral_arrow"}}] at @s run function mrcd:example/bullet_and_entity

# Do something at the ray (trace ray path)
execute at @e[tag=test_mark] run particle mycelium ~ ~ ~ 0 0 0 0 1 force
# execute at @e[tag=mrcd_bullet] run particle wax_on ~ ~ ~ 0 0 0 0 1 force
# execute at @e[tag=mrcd_entity] run particle wax_off ~ ~ ~ 0 0 0 0 1 force
# execute at @e[tag=mrcd_entity_targeted] run particle scrape ~ ~ ~ 0 0 0 0 1 force
# execute at @e[tag=mrcd_entity_bullet] run particle enchanted_hit ~ ~ ~ 0 0 0 0 1 force

# Bullet ticks
execute as @e[tag=test_mark] at @s run function mrcd:ray_tick

# Check entity hited
effect give @e[tag=mrcd_target_entity] glowing 1 0 true
effect clear @e[tag=!mrcd_target_entity] glowing
# execute as @e[tag=mrcd_target_entity] at @s run say I'm marked.
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
