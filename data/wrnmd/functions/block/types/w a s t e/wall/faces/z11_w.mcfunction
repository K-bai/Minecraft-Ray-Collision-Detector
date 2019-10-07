# 计算线面交点
## 平面方程 z=687
## 相交条件 0<=y<=875 0<=x<=500

scoreboard players set #target_z wrnmd_system 687
function wrnmd:block/calculate/z
execute if score #target_y wrnmd_system matches 0..875 if score #target_x wrnmd_system matches 0..500 run summon area_effect_cloud ~ ~ ~ {Duration:999,Tags:["wrnmd_touch_mark","wrnmd_touch_mark_new","wrnmd_touch_z","wrnmd_touch_z11_w"]}

execute as @e[tag=wrnmd_touch_mark_new] run function wrnmd:block/move
tag @e[tag=wrnmd_touch_mark_new] remove wrnmd_touch_mark_new