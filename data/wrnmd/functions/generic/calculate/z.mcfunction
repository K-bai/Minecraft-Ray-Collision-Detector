# 方程联立
## 直线方程 (x-x1)/x0=(y-y1)/y0=(z-z1)/z0
## 平面方程 z=#target_z
# 计算线面交点
## 若z0!=0
### 方程整理得 x=(#target_z-z1)x0/z0+x1
### 方程整理得 y=(#target_z-z1)y0/z0+y1
## 若z0=0，无交点


# x
execute store result score #target_x wrnmd_system run scoreboard players get #target_z wrnmd_system
scoreboard players operation #target_x wrnmd_system -= #block_z wrnmd_system
scoreboard players operation #target_x wrnmd_system *= @s wrnmd_x0
scoreboard players operation #target_x wrnmd_system /= @s wrnmd_z0
scoreboard players operation #target_x wrnmd_system += #block_x wrnmd_system

# y
execute store result score #target_y wrnmd_system run scoreboard players get #target_z wrnmd_system
scoreboard players operation #target_y wrnmd_system -= #block_z wrnmd_system
scoreboard players operation #target_y wrnmd_system *= @s wrnmd_y0
scoreboard players operation #target_y wrnmd_system /= @s wrnmd_z0
scoreboard players operation #target_y wrnmd_system += #block_y wrnmd_system

# z

