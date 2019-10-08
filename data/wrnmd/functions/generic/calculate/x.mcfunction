# 方程联立
## 直线方程 (x-x1)/x0=(y-y1)/y0=(z-z1)/z0
## 平面方程 x=#target_x
# 计算线面交点
## 若x0!=0
### 方程整理得 y=(#target_x-x1)y0/x0+y1
### 方程整理得 z=(#target_x-x1)z0/x0+z1
## 若x0=0，无交点

# x


# y
execute store result score #target_y wrnmd_system run scoreboard players get #target_x wrnmd_system
scoreboard players operation #target_y wrnmd_system -= #block_x wrnmd_system
scoreboard players operation #target_y wrnmd_system *= @s wrnmd_y0
scoreboard players operation #target_y wrnmd_system /= @s wrnmd_x0
scoreboard players operation #target_y wrnmd_system += #block_y wrnmd_system

# z
execute store result score #target_z wrnmd_system run scoreboard players get #target_x wrnmd_system
scoreboard players operation #target_z wrnmd_system -= #block_x wrnmd_system
scoreboard players operation #target_z wrnmd_system *= @s wrnmd_z0
scoreboard players operation #target_z wrnmd_system /= @s wrnmd_x0
scoreboard players operation #target_z wrnmd_system += #block_z wrnmd_system


