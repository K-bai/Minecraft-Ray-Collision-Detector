# 计算线面交点
## 平面方程 y=0
## 相交条件 313<=x<=687 750<=z<=1000

scoreboard players set #target_y wrnmd_system 0
function wrnmd:generic/calculate/y
execute if score #target_x wrnmd_system matches 313..687 if score #target_z wrnmd_system matches 750..1000 run summon area_effect_cloud ~ ~ ~ {Duration:999,Tags:["wrnmd_touch_mark","wrnmd_touch_mark_new","wrnmd_touch_y","wrnmd_touch_y0_n"]}

execute as @e[tag=wrnmd_touch_mark_new] run function wrnmd:generic/move
tag @e[tag=wrnmd_touch_mark_new] remove wrnmd_touch_mark_new