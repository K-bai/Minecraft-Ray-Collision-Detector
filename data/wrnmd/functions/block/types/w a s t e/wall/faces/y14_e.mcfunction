# 计算线面交点
## 平面方程 y=875
## 相交条件 500<=x<=1000 313<=z<=687

scoreboard players set #target_y wrnmd_system 875
function wrnmd:block/calculate/y
execute if score #target_x wrnmd_system matches 500..1000 if score #target_z wrnmd_system matches 313..687 run summon area_effect_cloud ~ ~ ~ {Duration:999,Tags:["wrnmd_touch_mark","wrnmd_touch_mark_new","wrnmd_touch_y","wrnmd_touch_y14_e"]}

execute as @e[tag=wrnmd_touch_mark_new] run function wrnmd:block/move
tag @e[tag=wrnmd_touch_mark_new] remove wrnmd_touch_mark_new