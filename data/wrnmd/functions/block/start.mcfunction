# 创建实体
execute positioned ^ ^ ^1 run summon area_effect_cloud ~ ~ ~ {Tags:["wrnmd_mark","wrnmd_block"],Duration:100}
# 保存方向值
execute as @e[tag=wrnmd_mark] store result score @s wrnmd_x0 run data get entity @s Pos[0] 1000
execute as @e[tag=wrnmd_mark] store result score @s wrnmd_y0 run data get entity @s Pos[1] 1000
execute as @e[tag=wrnmd_mark] store result score @s wrnmd_z0 run data get entity @s Pos[2] 1000
execute store result score #var0 wrnmd_system run data get entity @s Pos[0] 1000
execute store result score #var1 wrnmd_system run data get entity @s Pos[1] 1000
execute store result score #var2 wrnmd_system run data get entity @s Pos[2] 1000
scoreboard players operation @e[tag=wrnmd_mark,limit=1] wrnmd_x0 -= #var0 wrnmd_system
scoreboard players operation @e[tag=wrnmd_mark,limit=1] wrnmd_y0 -= #var1 wrnmd_system
scoreboard players operation @e[tag=wrnmd_mark,limit=1] wrnmd_z0 -= #var2 wrnmd_system
execute anchored eyes positioned ^ ^ ^ run tp @e[tag=wrnmd_mark,limit=1] ~ ~ ~ ~ ~

# 递归
scoreboard players set #glo0 wrnmd_system 0
execute as @e[tag=wrnmd_mark,limit=1] at @s run function wrnmd:block/recurse
# 删除
tag @e[tag=wrnmd_mark] remove wrnmd_mark