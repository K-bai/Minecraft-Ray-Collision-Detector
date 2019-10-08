# 方程联立
## 直线方程 (x-x1)/x0=(y-y1)/y0=(z-z1)/z0
## 平面方程 y=#target_y
# 计算线面交点
## 若y0!=0
### 方程整理得 x=(#target_y-y1)x0/y0+x1
### 方程整理得 z=(#target_y-y1)z0/y0+z1
## 若y0=0，无交点

# x
execute store result score #target_x wrnmd_system run scoreboard players get #target_y wrnmd_system
scoreboard players operation #target_x wrnmd_system -= #block_y wrnmd_system
scoreboard players operation #target_x wrnmd_system *= @s wrnmd_x0
scoreboard players operation #target_x wrnmd_system /= @s wrnmd_y0
scoreboard players operation #target_x wrnmd_system += #block_x wrnmd_system

# y

# z
execute store result score #target_z wrnmd_system run scoreboard players get #target_y wrnmd_system
scoreboard players operation #target_z wrnmd_system -= #block_y wrnmd_system
scoreboard players operation #target_z wrnmd_system *= @s wrnmd_z0
scoreboard players operation #target_z wrnmd_system /= @s wrnmd_y0
scoreboard players operation #target_z wrnmd_system += #block_z wrnmd_system


