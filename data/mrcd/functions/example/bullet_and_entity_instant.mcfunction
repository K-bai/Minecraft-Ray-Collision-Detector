# Create marker
# We use oriented relative coordinates and some math to eassily assing the speed (this case, 10 b/t).
# Since we what it instant, we wont set a Duration
execute at @s positioned ^ ^ ^10 run summon area_effect_cloud ~ ~ ~ {Tags:["test_mark","init","mrcd_bullet","mrcd_entity","instnat"]}

# Save speed and direction
execute as @e[tag=init] store result score @s mrcd_x0 run data get entity @s Pos[0] 1000
execute as @e[tag=init] store result score @s mrcd_y0 run data get entity @s Pos[1] 1000
execute as @e[tag=init] store result score @s mrcd_z0 run data get entity @s Pos[2] 1000
execute store result score #var0 mrcd_system run data get entity @s Pos[0] 1000
execute store result score #var1 mrcd_system run data get entity @s Pos[1] 1000
execute store result score #var2 mrcd_system run data get entity @s Pos[2] 1000
scoreboard players operation @e[tag=init,limit=1] mrcd_x0 -= #var0 mrcd_system
scoreboard players operation @e[tag=init,limit=1] mrcd_y0 -= #var1 mrcd_system
scoreboard players operation @e[tag=init,limit=1] mrcd_z0 -= #var2 mrcd_system

# Rotate to the moving direction and placed it to player eyes
execute at @s anchored eyes positioned ^ ^ ^ run tp @e[tag=init,limit=1] ~ ~ ~ ~ ~

# Clear tag
tag @e[tag=init] remove init
