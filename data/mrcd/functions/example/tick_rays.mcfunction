# === Do something at the ray before ticking ===
# trace ray path
# execute if entity @s[tag=test_mark] run particle mycelium ~ ~ ~ 0 0 0 0 1 force
# execute if entity @s[tag=mrcd_bullet] run particle wax_on ~ ~ ~ 0 0 0 0 1 force
# execute if entity @s[tag=mrcd_entity] run particle wax_off ~ ~ ~ 0 0 0 0 1 force
# execute if entity @s[tag=mrcd_entity_targeted] run particle scrape ~ ~ ~ 0 0 0 0 1 force
# execute if entity @s[tag=mrcd_entity_bullet] run particle enchanted_hit ~ ~ ~ 0 0 0 0 1 force

# === Ray tick ===
function mrcd:ray_tick

# === Do something at the ray after ticking ===
# trace ray path
execute at @e[tag=test_mark,tag=instnat] run particle end_rod ~ ~ ~ 0 0 0 0 1 force

# Check entity hit
effect give @e[tag=mrcd_target_entity] glowing 1 0 true

# Check block hit
# execute as @e[tag=mrcd_touch_edge,tag=mrcd_touch_x_plus] at @s run say touched x+
# execute as @e[tag=mrcd_touch_edge,tag=mrcd_touch_x_minus] at @s run say touched x-
# execute as @e[tag=mrcd_touch_edge,tag=mrcd_touch_y_plus] at @s run say touched y+
# execute as @e[tag=mrcd_touch_edge,tag=mrcd_touch_y_minus] at @s run say touched y-
# execute as @e[tag=mrcd_touch_edge,tag=mrcd_touch_z_plus] at @s run say touched z+
# execute as @e[tag=mrcd_touch_edge,tag=mrcd_touch_z_minus] at @s run say touched z-

execute at @e[tag=mrcd_touch_edge] run particle small_flame ~ ~ ~ 0 0 0 0 1 force
execute at @e[tag=mrcd_touch_entity] run particle small_flame ~ ~ ~ 0 0 0 0 1 force

# Once hited remove
kill @e[tag=mrcd_touch_edge]
kill @e[tag=mrcd_touch_entity]

# Remove target entities for entity_targeted ray
tag @e[type=armor_stand] remove mrcd_target
