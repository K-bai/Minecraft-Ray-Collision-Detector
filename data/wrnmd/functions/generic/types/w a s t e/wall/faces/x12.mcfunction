# 计算线面交点
## 平面方程 x=750
## 相交条件 0<=y<=1000 250<=z<=750

scoreboard players set #target_x wrnmd_system 750
function wrnmd:generic/calculate/x
execute if score #target_y wrnmd_system matches 0..1000 if score #target_z wrnmd_system matches 250..750 run summon area_effect_cloud ~ ~ ~ {Duration:999,Tags:["wrnmd_touch_mark","wrnmd_touch_mark_new","wrnmd_touch_x","wrnmd_touch_x12"]}

execute as @e[tag=wrnmd_touch_mark_new] run function wrnmd:generic/move
tag @e[tag=wrnmd_touch_mark_new] remove wrnmd_touch_mark_new