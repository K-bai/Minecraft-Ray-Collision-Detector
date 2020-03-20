# 函数参数: #var0, #var1, #var2, #var3, #var4, #var5, #var6, #var7, #var8
# var0-7: 2^8格式的数，被除数
# var8: 0-255之间的数，除数
# 返回值: #var0, #var1, #var2, #var3, #var4, #var5, #var6, #var7, #var8
# var0-7: 2^8格式的数，商数
# var8: 0-255之间的数，余数

# params: #var0, #var1, #var2, #var3, #var4, #var5, #var6, #var7, #var8
# var0-7: 2^8 format number, dividend
# var8: number range from 0-255, divisor
# return values: #var0, #var1, #var2, #var3, #var4, #var5, #var6, #var7, #var8
# var0-7: 2^8 format number, quotient
# var8: number range from 0-255, remainder


execute store result score #var_divisor mrcd_system run scoreboard players get #var8 mrcd_system
execute store result score #var10 mrcd_system run scoreboard players get #var0 mrcd_system
execute store result score #var11 mrcd_system run scoreboard players get #var1 mrcd_system
execute store result score #var12 mrcd_system run scoreboard players get #var2 mrcd_system
execute store result score #var13 mrcd_system run scoreboard players get #var3 mrcd_system
execute store result score #var14 mrcd_system run scoreboard players get #var4 mrcd_system
execute store result score #var15 mrcd_system run scoreboard players get #var5 mrcd_system
execute store result score #var16 mrcd_system run scoreboard players get #var6 mrcd_system
execute store result score #var17 mrcd_system run scoreboard players get #var7 mrcd_system


# 补码转换回原码 convert to original
execute store result score #var_sign mrcd_system run scoreboard players get #var7 mrcd_system
scoreboard players operation #var_sign mrcd_system /= #n128 mrcd_system

execute if score #var_sign mrcd_system matches 1 run scoreboard players set #var10 mrcd_system 256
execute if score #var_sign mrcd_system matches 1 run scoreboard players set #var11 mrcd_system 255
execute if score #var_sign mrcd_system matches 1 run scoreboard players set #var12 mrcd_system 255
execute if score #var_sign mrcd_system matches 1 run scoreboard players set #var13 mrcd_system 255
execute if score #var_sign mrcd_system matches 1 run scoreboard players set #var14 mrcd_system 255
execute if score #var_sign mrcd_system matches 1 run scoreboard players set #var15 mrcd_system 255
execute if score #var_sign mrcd_system matches 1 run scoreboard players set #var16 mrcd_system 255
execute if score #var_sign mrcd_system matches 1 run scoreboard players set #var17 mrcd_system 255
execute if score #var_sign mrcd_system matches 1 run scoreboard players operation #var10 mrcd_system -= #var0 mrcd_system
execute if score #var_sign mrcd_system matches 1 run scoreboard players operation #var11 mrcd_system -= #var1 mrcd_system
execute if score #var_sign mrcd_system matches 1 run scoreboard players operation #var12 mrcd_system -= #var2 mrcd_system
execute if score #var_sign mrcd_system matches 1 run scoreboard players operation #var13 mrcd_system -= #var3 mrcd_system
execute if score #var_sign mrcd_system matches 1 run scoreboard players operation #var14 mrcd_system -= #var4 mrcd_system
execute if score #var_sign mrcd_system matches 1 run scoreboard players operation #var15 mrcd_system -= #var5 mrcd_system
execute if score #var_sign mrcd_system matches 1 run scoreboard players operation #var16 mrcd_system -= #var6 mrcd_system
execute if score #var_sign mrcd_system matches 1 run scoreboard players operation #var17 mrcd_system -= #var7 mrcd_system
execute if score #var_sign mrcd_system matches 1 run scoreboard players operation #var0 mrcd_system = #var10 mrcd_system
execute if score #var_sign mrcd_system matches 1 run scoreboard players operation #var1 mrcd_system = #var11 mrcd_system
execute if score #var_sign mrcd_system matches 1 run scoreboard players operation #var2 mrcd_system = #var12 mrcd_system
execute if score #var_sign mrcd_system matches 1 run scoreboard players operation #var3 mrcd_system = #var13 mrcd_system
execute if score #var_sign mrcd_system matches 1 run scoreboard players operation #var4 mrcd_system = #var14 mrcd_system
execute if score #var_sign mrcd_system matches 1 run scoreboard players operation #var5 mrcd_system = #var15 mrcd_system
execute if score #var_sign mrcd_system matches 1 run scoreboard players operation #var6 mrcd_system = #var16 mrcd_system
execute if score #var_sign mrcd_system matches 1 run scoreboard players operation #var7 mrcd_system = #var17 mrcd_system


# 除法 divide
scoreboard players operation #var7 mrcd_system /= #var_divisor mrcd_system
scoreboard players operation #var17 mrcd_system %= #var_divisor mrcd_system
scoreboard players operation #var17 mrcd_system *= #n256 mrcd_system
scoreboard players operation #var6 mrcd_system += #var17 mrcd_system
scoreboard players operation #var16 mrcd_system = #var6 mrcd_system

scoreboard players operation #var6 mrcd_system /= #var_divisor mrcd_system
scoreboard players operation #var16 mrcd_system %= #var_divisor mrcd_system
scoreboard players operation #var16 mrcd_system *= #n256 mrcd_system
scoreboard players operation #var5 mrcd_system += #var16 mrcd_system
scoreboard players operation #var15 mrcd_system = #var5 mrcd_system

scoreboard players operation #var5 mrcd_system /= #var_divisor mrcd_system
scoreboard players operation #var15 mrcd_system %= #var_divisor mrcd_system
scoreboard players operation #var15 mrcd_system *= #n256 mrcd_system
scoreboard players operation #var4 mrcd_system += #var15 mrcd_system
scoreboard players operation #var14 mrcd_system = #var4 mrcd_system

scoreboard players operation #var4 mrcd_system /= #var_divisor mrcd_system
scoreboard players operation #var14 mrcd_system %= #var_divisor mrcd_system
scoreboard players operation #var14 mrcd_system *= #n256 mrcd_system
scoreboard players operation #var3 mrcd_system += #var14 mrcd_system
scoreboard players operation #var13 mrcd_system = #var3 mrcd_system

scoreboard players operation #var3 mrcd_system /= #var_divisor mrcd_system
scoreboard players operation #var13 mrcd_system %= #var_divisor mrcd_system
scoreboard players operation #var13 mrcd_system *= #n256 mrcd_system
scoreboard players operation #var2 mrcd_system += #var13 mrcd_system
scoreboard players operation #var12 mrcd_system = #var2 mrcd_system

scoreboard players operation #var2 mrcd_system /= #var_divisor mrcd_system
scoreboard players operation #var12 mrcd_system %= #var_divisor mrcd_system
scoreboard players operation #var12 mrcd_system *= #n256 mrcd_system
scoreboard players operation #var1 mrcd_system += #var12 mrcd_system
scoreboard players operation #var11 mrcd_system = #var1 mrcd_system

scoreboard players operation #var1 mrcd_system /= #var_divisor mrcd_system
scoreboard players operation #var11 mrcd_system %= #var_divisor mrcd_system
scoreboard players operation #var11 mrcd_system *= #n256 mrcd_system
scoreboard players operation #var0 mrcd_system += #var11 mrcd_system
scoreboard players operation #var8 mrcd_system = #var0 mrcd_system

scoreboard players operation #var0 mrcd_system /= #var_divisor mrcd_system
scoreboard players operation #var8 mrcd_system %= #var_divisor mrcd_system


# 转换为补码 convert to complement
execute if score #var_sign mrcd_system matches 1 run scoreboard players set #var10 mrcd_system 256
execute if score #var_sign mrcd_system matches 1 run scoreboard players set #var11 mrcd_system 255
execute if score #var_sign mrcd_system matches 1 run scoreboard players set #var12 mrcd_system 255
execute if score #var_sign mrcd_system matches 1 run scoreboard players set #var13 mrcd_system 255
execute if score #var_sign mrcd_system matches 1 run scoreboard players set #var14 mrcd_system 255
execute if score #var_sign mrcd_system matches 1 run scoreboard players set #var15 mrcd_system 255
execute if score #var_sign mrcd_system matches 1 run scoreboard players set #var16 mrcd_system 255
execute if score #var_sign mrcd_system matches 1 run scoreboard players set #var17 mrcd_system 255

execute if score #var_sign mrcd_system matches 1 run scoreboard players operation #var10 mrcd_system -= #var0 mrcd_system
execute if score #var_sign mrcd_system matches 1 run scoreboard players operation #var11 mrcd_system -= #var1 mrcd_system
execute if score #var_sign mrcd_system matches 1 run scoreboard players operation #var12 mrcd_system -= #var2 mrcd_system
execute if score #var_sign mrcd_system matches 1 run scoreboard players operation #var13 mrcd_system -= #var3 mrcd_system
execute if score #var_sign mrcd_system matches 1 run scoreboard players operation #var14 mrcd_system -= #var4 mrcd_system
execute if score #var_sign mrcd_system matches 1 run scoreboard players operation #var15 mrcd_system -= #var5 mrcd_system
execute if score #var_sign mrcd_system matches 1 run scoreboard players operation #var16 mrcd_system -= #var6 mrcd_system
execute if score #var_sign mrcd_system matches 1 run scoreboard players operation #var17 mrcd_system -= #var7 mrcd_system
execute if score #var_sign mrcd_system matches 1 run scoreboard players operation #var0 mrcd_system = #var10 mrcd_system
execute if score #var_sign mrcd_system matches 1 run scoreboard players operation #var1 mrcd_system = #var11 mrcd_system
execute if score #var_sign mrcd_system matches 1 run scoreboard players operation #var2 mrcd_system = #var12 mrcd_system
execute if score #var_sign mrcd_system matches 1 run scoreboard players operation #var3 mrcd_system = #var13 mrcd_system
execute if score #var_sign mrcd_system matches 1 run scoreboard players operation #var4 mrcd_system = #var14 mrcd_system
execute if score #var_sign mrcd_system matches 1 run scoreboard players operation #var5 mrcd_system = #var15 mrcd_system
execute if score #var_sign mrcd_system matches 1 run scoreboard players operation #var6 mrcd_system = #var16 mrcd_system
execute if score #var_sign mrcd_system matches 1 run scoreboard players operation #var7 mrcd_system = #var17 mrcd_system
