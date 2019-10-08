# 计算线面交点
## 直线方程 (x-x1)/x0=(y-y1)/y0=(z-z1)/z0
## 平面方程 z=1000
## 相交条件 0<=x<=1000 0<=y<=1000
## 方程整理得 x=(1000-z1)x0/z0+x1
## 方程整理得 y=(1000-z1)y0/z0+y1

# x
scoreboard players set #target_x wrnmd_system 1000
scoreboard players operation #target_x wrnmd_system -= #block_z wrnmd_system
scoreboard players operation #target_x wrnmd_system *= @s wrnmd_x0
scoreboard players operation #target_x wrnmd_system /= @s wrnmd_z0
scoreboard players operation #target_x wrnmd_system += #block_x wrnmd_system

# y
scoreboard players set #target_y wrnmd_system 1000
scoreboard players operation #target_y wrnmd_system -= #block_z wrnmd_system
scoreboard players operation #target_y wrnmd_system *= @s wrnmd_y0
scoreboard players operation #target_y wrnmd_system /= @s wrnmd_z0
scoreboard players operation #target_y wrnmd_system += #block_y wrnmd_system

# z
scoreboard players set #target_z wrnmd_system 1000


execute if score #target_x wrnmd_system matches 0..1000 if score #target_y wrnmd_system matches 0..1000 run tag @s add wrnmd_touch_edge_air
