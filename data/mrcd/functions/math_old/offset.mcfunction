# 函数参数: #var0, #var1
# var0-1: int值，xz坐标
# 返回值: #var0, #var1
# var0-1: int值，xz坐标偏移量

# params: #var0, #var1
# var0-1: int value, x and z position
# return values: #var0, #var1
# var0-7: int value, x and z position offset

function mrcd:math/hashcode
execute store result score #var_ofs_hc0 mrcd_system run scoreboard players get #var0 mrcd_system
execute store result score #var_ofs_hc1 mrcd_system run scoreboard players get #var1 mrcd_system
execute store result score #var_ofs_hc2 mrcd_system run scoreboard players get #var2 mrcd_system
execute store result score #var_ofs_hc3 mrcd_system run scoreboard players get #var3 mrcd_system
execute store result score #var_ofs_hc4 mrcd_system run scoreboard players get #var4 mrcd_system
execute store result score #var_ofs_hc5 mrcd_system run scoreboard players get #var5 mrcd_system
execute store result score #var_ofs_hc6 mrcd_system run scoreboard players get #var6 mrcd_system
execute store result score #var_ofs_hc7 mrcd_system run scoreboard players get #var7 mrcd_system


# ((hashcode & 0xF)*1000/15-500)/2
scoreboard players operation #var0 mrcd_system %= #n16 mrcd_system
scoreboard players operation #var0 mrcd_system *= #n1000 mrcd_system
scoreboard players operation #var0 mrcd_system /= #n15 mrcd_system
scoreboard players remove #var0 mrcd_system 500
scoreboard players operation #var0 mrcd_system /= #n2 mrcd_system

# ((hashcode>>8 & 0xF)*1000/15-500)/2
scoreboard players operation #var1 mrcd_system %= #n16 mrcd_system
scoreboard players operation #var1 mrcd_system *= #n1000 mrcd_system
scoreboard players operation #var1 mrcd_system /= #n15 mrcd_system
scoreboard players remove #var1 mrcd_system 500
scoreboard players operation #var1 mrcd_system /= #n2 mrcd_system