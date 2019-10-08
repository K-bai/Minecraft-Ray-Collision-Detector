# 计算线面交点
## 平面方程 y=1000
## 相交条件 250<=x<=750 250<=z<=750

scoreboard players set #target_y wrnmd_system 1000
function wrnmd:generic/calculate/y
execute if score #target_x wrnmd_system matches 250..750 if score #target_z wrnmd_system matches 250..750 run summon area_effect_cloud ~ ~ ~ {Duration:999,Tags:["wrnmd_touch_mark","wrnmd_touch_mark_new","wrnmd_touch_y","wrnmd_touch_y1"]}

execute as @e[tag=wrnmd_touch_mark_new] run function wrnmd:generic/move
tag @e[tag=wrnmd_touch_mark_new] remove wrnmd_touch_mark_new