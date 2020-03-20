# 函数参数: #var0, #var1, #var2, #var3, #var4, #var5, #var6, #var7, #var10, #var11, #var12, #var13, #var14, #var15, #var16, #var17
# var0-7: 2^8格式的数，乘数之一
# var10-17: 2^8格式的数，乘数之二
# 返回值: #var0, #var1, #var2, #var3, #var4, #var5, #var6, #var7
# var0-7: 2^8格式的数

# params: #var0, #var1, #var2, #var3, #var4, #var5, #var6, #var7, #var10, #var11, #var12, #var13, #var14, #var15, #var16, #var17
# var0-7: 2^8 format number, the first multiplier
# var10-17: 2^8 format number, the second multiplier
# return values: #var0, #var1, #var2, #var3, #var4, #var5, #var6, #var7
# var0-7: 2^8 format number



execute store result score #var20 mrcd_system run scoreboard players get #var0 mrcd_system
execute store result score #var21 mrcd_system run scoreboard players get #var1 mrcd_system
execute store result score #var22 mrcd_system run scoreboard players get #var2 mrcd_system
execute store result score #var23 mrcd_system run scoreboard players get #var3 mrcd_system
execute store result score #var24 mrcd_system run scoreboard players get #var4 mrcd_system
execute store result score #var25 mrcd_system run scoreboard players get #var5 mrcd_system
execute store result score #var26 mrcd_system run scoreboard players get #var6 mrcd_system
execute store result score #var27 mrcd_system run scoreboard players get #var7 mrcd_system


# 各位相乘 multiply per bit
scoreboard players operation #var0 mrcd_system *= #var10 mrcd_system

scoreboard players operation #var1 mrcd_system *= #var10 mrcd_system
execute store result score #var_t mrcd_system run scoreboard players get #var20 mrcd_system
scoreboard players operation #var_t mrcd_system *= #var11 mrcd_system
scoreboard players operation #var1 mrcd_system += #var_t mrcd_system

scoreboard players operation #var2 mrcd_system *= #var10 mrcd_system
execute store result score #var_t mrcd_system run scoreboard players get #var21 mrcd_system
scoreboard players operation #var_t mrcd_system *= #var11 mrcd_system
scoreboard players operation #var2 mrcd_system += #var_t mrcd_system
execute store result score #var_t mrcd_system run scoreboard players get #var20 mrcd_system
scoreboard players operation #var_t mrcd_system *= #var12 mrcd_system
scoreboard players operation #var2 mrcd_system += #var_t mrcd_system

scoreboard players operation #var3 mrcd_system *= #var10 mrcd_system
execute store result score #var_t mrcd_system run scoreboard players get #var22 mrcd_system
scoreboard players operation #var_t mrcd_system *= #var11 mrcd_system
scoreboard players operation #var3 mrcd_system += #var_t mrcd_system
execute store result score #var_t mrcd_system run scoreboard players get #var21 mrcd_system
scoreboard players operation #var_t mrcd_system *= #var12 mrcd_system
scoreboard players operation #var3 mrcd_system += #var_t mrcd_system
execute store result score #var_t mrcd_system run scoreboard players get #var20 mrcd_system
scoreboard players operation #var_t mrcd_system *= #var13 mrcd_system
scoreboard players operation #var3 mrcd_system += #var_t mrcd_system

scoreboard players operation #var4 mrcd_system *= #var10 mrcd_system
execute store result score #var_t mrcd_system run scoreboard players get #var23 mrcd_system
scoreboard players operation #var_t mrcd_system *= #var11 mrcd_system
scoreboard players operation #var4 mrcd_system += #var_t mrcd_system
execute store result score #var_t mrcd_system run scoreboard players get #var22 mrcd_system
scoreboard players operation #var_t mrcd_system *= #var12 mrcd_system
scoreboard players operation #var4 mrcd_system += #var_t mrcd_system
execute store result score #var_t mrcd_system run scoreboard players get #var21 mrcd_system
scoreboard players operation #var_t mrcd_system *= #var13 mrcd_system
scoreboard players operation #var4 mrcd_system += #var_t mrcd_system
execute store result score #var_t mrcd_system run scoreboard players get #var20 mrcd_system
scoreboard players operation #var_t mrcd_system *= #var14 mrcd_system
scoreboard players operation #var4 mrcd_system += #var_t mrcd_system

scoreboard players operation #var5 mrcd_system *= #var10 mrcd_system
execute store result score #var_t mrcd_system run scoreboard players get #var24 mrcd_system
scoreboard players operation #var_t mrcd_system *= #var11 mrcd_system
scoreboard players operation #var5 mrcd_system += #var_t mrcd_system
execute store result score #var_t mrcd_system run scoreboard players get #var23 mrcd_system
scoreboard players operation #var_t mrcd_system *= #var12 mrcd_system
scoreboard players operation #var5 mrcd_system += #var_t mrcd_system
execute store result score #var_t mrcd_system run scoreboard players get #var22 mrcd_system
scoreboard players operation #var_t mrcd_system *= #var13 mrcd_system
scoreboard players operation #var5 mrcd_system += #var_t mrcd_system
execute store result score #var_t mrcd_system run scoreboard players get #var21 mrcd_system
scoreboard players operation #var_t mrcd_system *= #var14 mrcd_system
scoreboard players operation #var5 mrcd_system += #var_t mrcd_system
execute store result score #var_t mrcd_system run scoreboard players get #var20 mrcd_system
scoreboard players operation #var_t mrcd_system *= #var15 mrcd_system
scoreboard players operation #var5 mrcd_system += #var_t mrcd_system

scoreboard players operation #var6 mrcd_system *= #var10 mrcd_system
execute store result score #var_t mrcd_system run scoreboard players get #var25 mrcd_system
scoreboard players operation #var_t mrcd_system *= #var11 mrcd_system
scoreboard players operation #var6 mrcd_system += #var_t mrcd_system
execute store result score #var_t mrcd_system run scoreboard players get #var24 mrcd_system
scoreboard players operation #var_t mrcd_system *= #var12 mrcd_system
scoreboard players operation #var6 mrcd_system += #var_t mrcd_system
execute store result score #var_t mrcd_system run scoreboard players get #var23 mrcd_system
scoreboard players operation #var_t mrcd_system *= #var13 mrcd_system
scoreboard players operation #var6 mrcd_system += #var_t mrcd_system
execute store result score #var_t mrcd_system run scoreboard players get #var22 mrcd_system
scoreboard players operation #var_t mrcd_system *= #var14 mrcd_system
scoreboard players operation #var6 mrcd_system += #var_t mrcd_system
execute store result score #var_t mrcd_system run scoreboard players get #var21 mrcd_system
scoreboard players operation #var_t mrcd_system *= #var15 mrcd_system
scoreboard players operation #var6 mrcd_system += #var_t mrcd_system
execute store result score #var_t mrcd_system run scoreboard players get #var20 mrcd_system
scoreboard players operation #var_t mrcd_system *= #var16 mrcd_system
scoreboard players operation #var6 mrcd_system += #var_t mrcd_system

scoreboard players operation #var7 mrcd_system *= #var10 mrcd_system
execute store result score #var_t mrcd_system run scoreboard players get #var26 mrcd_system
scoreboard players operation #var_t mrcd_system *= #var11 mrcd_system
scoreboard players operation #var7 mrcd_system += #var_t mrcd_system
execute store result score #var_t mrcd_system run scoreboard players get #var25 mrcd_system
scoreboard players operation #var_t mrcd_system *= #var12 mrcd_system
scoreboard players operation #var7 mrcd_system += #var_t mrcd_system
execute store result score #var_t mrcd_system run scoreboard players get #var24 mrcd_system
scoreboard players operation #var_t mrcd_system *= #var13 mrcd_system
scoreboard players operation #var7 mrcd_system += #var_t mrcd_system
execute store result score #var_t mrcd_system run scoreboard players get #var23 mrcd_system
scoreboard players operation #var_t mrcd_system *= #var14 mrcd_system
scoreboard players operation #var7 mrcd_system += #var_t mrcd_system
execute store result score #var_t mrcd_system run scoreboard players get #var22 mrcd_system
scoreboard players operation #var_t mrcd_system *= #var15 mrcd_system
scoreboard players operation #var7 mrcd_system += #var_t mrcd_system
execute store result score #var_t mrcd_system run scoreboard players get #var21 mrcd_system
scoreboard players operation #var_t mrcd_system *= #var16 mrcd_system
scoreboard players operation #var7 mrcd_system += #var_t mrcd_system
execute store result score #var_t mrcd_system run scoreboard players get #var20 mrcd_system
scoreboard players operation #var_t mrcd_system *= #var17 mrcd_system
scoreboard players operation #var7 mrcd_system += #var_t mrcd_system


# 进位 carry
execute store result score #var_t mrcd_system run scoreboard players get #var0 mrcd_system
scoreboard players operation #var_t mrcd_system /= #n256 mrcd_system
scoreboard players operation #var1 mrcd_system += #var_t mrcd_system

execute store result score #var_t mrcd_system run scoreboard players get #var1 mrcd_system
scoreboard players operation #var_t mrcd_system /= #n256 mrcd_system
scoreboard players operation #var2 mrcd_system += #var_t mrcd_system

execute store result score #var_t mrcd_system run scoreboard players get #var2 mrcd_system
scoreboard players operation #var_t mrcd_system /= #n256 mrcd_system
scoreboard players operation #var3 mrcd_system += #var_t mrcd_system

execute store result score #var_t mrcd_system run scoreboard players get #var3 mrcd_system
scoreboard players operation #var_t mrcd_system /= #n256 mrcd_system
scoreboard players operation #var4 mrcd_system += #var_t mrcd_system

execute store result score #var_t mrcd_system run scoreboard players get #var4 mrcd_system
scoreboard players operation #var_t mrcd_system /= #n256 mrcd_system
scoreboard players operation #var5 mrcd_system += #var_t mrcd_system

execute store result score #var_t mrcd_system run scoreboard players get #var5 mrcd_system
scoreboard players operation #var_t mrcd_system /= #n256 mrcd_system
scoreboard players operation #var6 mrcd_system += #var_t mrcd_system

execute store result score #var_t mrcd_system run scoreboard players get #var6 mrcd_system
scoreboard players operation #var_t mrcd_system /= #n256 mrcd_system
scoreboard players operation #var7 mrcd_system += #var_t mrcd_system

# 求余 mod
scoreboard players operation #var0 mrcd_system %= #n256 mrcd_system
scoreboard players operation #var1 mrcd_system %= #n256 mrcd_system
scoreboard players operation #var2 mrcd_system %= #n256 mrcd_system
scoreboard players operation #var3 mrcd_system %= #n256 mrcd_system
scoreboard players operation #var4 mrcd_system %= #n256 mrcd_system
scoreboard players operation #var5 mrcd_system %= #n256 mrcd_system
scoreboard players operation #var6 mrcd_system %= #n256 mrcd_system
scoreboard players operation #var7 mrcd_system %= #n256 mrcd_system



