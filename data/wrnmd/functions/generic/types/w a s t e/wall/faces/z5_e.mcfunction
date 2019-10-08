# 计算线面交点
## 平面方程 z=313
## 相交条件 500<=x<=1000 0<=y<=875

scoreboard players set #target_z wrnmd_system 313
function wrnmd:generic/calculate/z
execute if score #target_x wrnmd_system matches 500..1000 if score #target_y wrnmd_system matches 0..875 run summon area_effect_cloud ~ ~ ~ {Duration:999,Tags:["wrnmd_touch_mark","wrnmd_touch_mark_new","wrnmd_touch_z","wrnmd_touch_z5_e"]}

execute as @e[tag=wrnmd_touch_mark_new] run function wrnmd:generic/move
tag @e[tag=wrnmd_touch_mark_new] remove wrnmd_touch_mark_new