# 计算线面交点
## 平面方程 z=250
## 相交条件 250<=x<=750 0<=y<=1000

scoreboard players set #target_z wrnmd_system 250
function wrnmd:generic/calculate/z
execute if score #target_x wrnmd_system matches 250..750 if score #target_y wrnmd_system matches 0..1000 run summon area_effect_cloud ~ ~ ~ {Duration:999,Tags:["wrnmd_touch_mark","wrnmd_touch_mark_new","wrnmd_touch_z","wrnmd_touch_z4"]}

execute as @e[tag=wrnmd_touch_mark_new] run function wrnmd:generic/move
tag @e[tag=wrnmd_touch_mark_new] remove wrnmd_touch_mark_new