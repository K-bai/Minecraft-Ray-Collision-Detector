# 计算线面交点
## 平面方程 x=687
## 相交条件 0<=y<=875 500<=z<=1000

scoreboard players set #target_x wrnmd_system 687
function wrnmd:block/calculate/x
execute if score #target_y wrnmd_system matches 0..875 if score #target_z wrnmd_system matches 500..1000 run summon area_effect_cloud ~ ~ ~ {Duration:999,Tags:["wrnmd_touch_mark","wrnmd_touch_mark_new","wrnmd_touch_x","wrnmd_touch_x11_s"]}

execute as @e[tag=wrnmd_touch_mark_new] run function wrnmd:block/move
tag @e[tag=wrnmd_touch_mark_new] remove wrnmd_touch_mark_new