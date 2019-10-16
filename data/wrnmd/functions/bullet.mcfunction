# create marker
execute at @s positioned ^ ^ ^0.5 run summon area_effect_cloud ~ ~ ~ {Tags:["wrnmd_mark","wrnmd_bullet"],Duration:100}
# save speed and direction
execute as @e[tag=wrnmd_mark] store result score @s wrnmd_x0 run data get entity @s Pos[0] 1000
execute as @e[tag=wrnmd_mark] store result score @s wrnmd_y0 run data get entity @s Pos[1] 1000
execute as @e[tag=wrnmd_mark] store result score @s wrnmd_z0 run data get entity @s Pos[2] 1000
execute store result score #var0 wrnmd_system run data get entity @s Pos[0] 1000
execute store result score #var1 wrnmd_system run data get entity @s Pos[1] 1000
execute store result score #var2 wrnmd_system run data get entity @s Pos[2] 1000
scoreboard players operation @e[tag=wrnmd_mark,limit=1] wrnmd_x0 -= #var0 wrnmd_system
scoreboard players operation @e[tag=wrnmd_mark,limit=1] wrnmd_y0 -= #var1 wrnmd_system
scoreboard players operation @e[tag=wrnmd_mark,limit=1] wrnmd_z0 -= #var2 wrnmd_system
execute at @s anchored eyes positioned ^ ^ ^ run tp @e[tag=wrnmd_mark,limit=1] ~ ~ ~ ~ ~

# clear tag
tag @e[tag=wrnmd_mark] remove wrnmd_mark