# 方程联立
## 直线方程 (x-x1)/x0=(y-y1)/y0=(z-z1)/z0
## 平面方程 y=#target_y
# 计算线面交点
## 若y0!=0
### 方程整理得 x=(#target_y-y1)x0/y0+x1
### 方程整理得 z=(#target_y-y1)z0/y0+z1
## 若y0=0，无交点

## Line equation: (x-x1)/x0=(y-y1)/y0=(z-z1)/z0
## Plane equation: y=#target_y
# Calculate the intersection point coordinate
## if y0!=0
### The equation can be arranged to: x=(#target_y-y1)x0/y0+x1
### The equation can be arranged to: z=(#target_y-y1)z0/y0+z1
## if y0=0, no intersection point


# x
execute store result score #target_x mrcd_system run scoreboard players get #target_y mrcd_system
scoreboard players operation #target_x mrcd_system -= #block_y mrcd_system
scoreboard players operation #target_x mrcd_system *= @s mrcd_x0
scoreboard players operation #target_x mrcd_system /= @s mrcd_y0
scoreboard players operation #target_x mrcd_system += #block_x mrcd_system

# y

# z
execute store result score #target_z mrcd_system run scoreboard players get #target_y mrcd_system
scoreboard players operation #target_z mrcd_system -= #block_y mrcd_system
scoreboard players operation #target_z mrcd_system *= @s mrcd_z0
scoreboard players operation #target_z mrcd_system /= @s mrcd_y0
scoreboard players operation #target_z mrcd_system += #block_z mrcd_system


