# 函数参数: #var0, #var1, #var2, #var3, #var4, #var5, #var6, #var7
# var0-3: 需要转换至文本的2^8格式的数
# 返回值: #var0, #var1, #var2, #var3, #var4, #var5, #var6, #var7
# var0-7: 原始数据


# params: #var0, #var1, #var2, #var3, #var4, #var5, #var6, #var7
# var0-7: the 2^8 format value ready to be converted into text
# return values: #var0, #var1, #var2, #var3, #var4, #var5, #var6, #var7
# var0-7: the original number

execute store result score #var_o_sign mrcd_system run scoreboard players get #var7 mrcd_system
scoreboard players operation #var_o_sign mrcd_system /= #n128 mrcd_system

execute store result score #var_o_n0 mrcd_system run scoreboard players get #var0 mrcd_system
execute store result score #var_o_n1 mrcd_system run scoreboard players get #var1 mrcd_system
execute store result score #var_o_n2 mrcd_system run scoreboard players get #var2 mrcd_system
execute store result score #var_o_n3 mrcd_system run scoreboard players get #var3 mrcd_system
execute store result score #var_o_n4 mrcd_system run scoreboard players get #var4 mrcd_system
execute store result score #var_o_n5 mrcd_system run scoreboard players get #var5 mrcd_system
execute store result score #var_o_n6 mrcd_system run scoreboard players get #var6 mrcd_system
execute store result score #var_o_n7 mrcd_system run scoreboard players get #var7 mrcd_system


scoreboard players set #var8 mrcd_system 10
function mrcd:math/divide
execute store result score #var_bit0 mrcd_system run scoreboard players get #var8 mrcd_system
scoreboard players set #var8 mrcd_system 10
function mrcd:math/divide
execute store result score #var_bit1 mrcd_system run scoreboard players get #var8 mrcd_system
scoreboard players set #var8 mrcd_system 10
function mrcd:math/divide
execute store result score #var_bit2 mrcd_system run scoreboard players get #var8 mrcd_system
scoreboard players set #var8 mrcd_system 10
function mrcd:math/divide
execute store result score #var_bit3 mrcd_system run scoreboard players get #var8 mrcd_system
scoreboard players set #var8 mrcd_system 10
function mrcd:math/divide
execute store result score #var_bit4 mrcd_system run scoreboard players get #var8 mrcd_system
scoreboard players set #var8 mrcd_system 10
function mrcd:math/divide
execute store result score #var_bit5 mrcd_system run scoreboard players get #var8 mrcd_system
scoreboard players set #var8 mrcd_system 10
function mrcd:math/divide
execute store result score #var_bit6 mrcd_system run scoreboard players get #var8 mrcd_system
scoreboard players set #var8 mrcd_system 10
function mrcd:math/divide
execute store result score #var_bit7 mrcd_system run scoreboard players get #var8 mrcd_system
scoreboard players set #var8 mrcd_system 10
function mrcd:math/divide
execute store result score #var_bit8 mrcd_system run scoreboard players get #var8 mrcd_system
scoreboard players set #var8 mrcd_system 10
function mrcd:math/divide
execute store result score #var_bit9 mrcd_system run scoreboard players get #var8 mrcd_system
scoreboard players set #var8 mrcd_system 10
function mrcd:math/divide
execute store result score #var_bit10 mrcd_system run scoreboard players get #var8 mrcd_system
scoreboard players set #var8 mrcd_system 10
function mrcd:math/divide
execute store result score #var_bit11 mrcd_system run scoreboard players get #var8 mrcd_system
scoreboard players set #var8 mrcd_system 10
function mrcd:math/divide
execute store result score #var_bit12 mrcd_system run scoreboard players get #var8 mrcd_system
scoreboard players set #var8 mrcd_system 10
function mrcd:math/divide
execute store result score #var_bit13 mrcd_system run scoreboard players get #var8 mrcd_system
scoreboard players set #var8 mrcd_system 10
function mrcd:math/divide
execute store result score #var_bit14 mrcd_system run scoreboard players get #var8 mrcd_system
scoreboard players set #var8 mrcd_system 10
function mrcd:math/divide
execute store result score #var_bit15 mrcd_system run scoreboard players get #var8 mrcd_system
scoreboard players set #var8 mrcd_system 10
function mrcd:math/divide
execute store result score #var_bit16 mrcd_system run scoreboard players get #var8 mrcd_system
scoreboard players set #var8 mrcd_system 10
function mrcd:math/divide
execute store result score #var_bit17 mrcd_system run scoreboard players get #var8 mrcd_system
scoreboard players set #var8 mrcd_system 10
function mrcd:math/divide
execute store result score #var_bit18 mrcd_system run scoreboard players get #var8 mrcd_system
scoreboard players set #var8 mrcd_system 10
function mrcd:math/divide
execute store result score #var_bit19 mrcd_system run scoreboard players get #var8 mrcd_system

# test
execute if score #var_o_sign mrcd_system matches 0 run tellraw @a ["n: ",{"score":{"name":"#var_bit19","objective":"mrcd_system"}},{"score":{"name":"#var_bit18","objective":"mrcd_system"}},{"score":{"name":"#var_bit17","objective":"mrcd_system"}},{"score":{"name":"#var_bit16","objective":"mrcd_system"}},{"score":{"name":"#var_bit15","objective":"mrcd_system"}},{"score":{"name":"#var_bit14","objective":"mrcd_system"}},{"score":{"name":"#var_bit13","objective":"mrcd_system"}},{"score":{"name":"#var_bit12","objective":"mrcd_system"}},{"score":{"name":"#var_bit11","objective":"mrcd_system"}},{"score":{"name":"#var_bit10","objective":"mrcd_system"}},{"score":{"name":"#var_bit9","objective":"mrcd_system"}},{"score":{"name":"#var_bit8","objective":"mrcd_system"}},{"score":{"name":"#var_bit7","objective":"mrcd_system"}},{"score":{"name":"#var_bit6","objective":"mrcd_system"}},{"score":{"name":"#var_bit5","objective":"mrcd_system"}},{"score":{"name":"#var_bit4","objective":"mrcd_system"}},{"score":{"name":"#var_bit3","objective":"mrcd_system"}},{"score":{"name":"#var_bit2","objective":"mrcd_system"}},{"score":{"name":"#var_bit1","objective":"mrcd_system"}},{"score":{"name":"#var_bit0","objective":"mrcd_system"}}]
execute if score #var_o_sign mrcd_system matches 1 run tellraw @a ["n: -",{"score":{"name":"#var_bit19","objective":"mrcd_system"}},{"score":{"name":"#var_bit18","objective":"mrcd_system"}},{"score":{"name":"#var_bit17","objective":"mrcd_system"}},{"score":{"name":"#var_bit16","objective":"mrcd_system"}},{"score":{"name":"#var_bit15","objective":"mrcd_system"}},{"score":{"name":"#var_bit14","objective":"mrcd_system"}},{"score":{"name":"#var_bit13","objective":"mrcd_system"}},{"score":{"name":"#var_bit12","objective":"mrcd_system"}},{"score":{"name":"#var_bit11","objective":"mrcd_system"}},{"score":{"name":"#var_bit10","objective":"mrcd_system"}},{"score":{"name":"#var_bit9","objective":"mrcd_system"}},{"score":{"name":"#var_bit8","objective":"mrcd_system"}},{"score":{"name":"#var_bit7","objective":"mrcd_system"}},{"score":{"name":"#var_bit6","objective":"mrcd_system"}},{"score":{"name":"#var_bit5","objective":"mrcd_system"}},{"score":{"name":"#var_bit4","objective":"mrcd_system"}},{"score":{"name":"#var_bit3","objective":"mrcd_system"}},{"score":{"name":"#var_bit2","objective":"mrcd_system"}},{"score":{"name":"#var_bit1","objective":"mrcd_system"}},{"score":{"name":"#var_bit0","objective":"mrcd_system"}}]

execute store result score #var0 mrcd_system run scoreboard players get #var_o_n0 mrcd_system
execute store result score #var1 mrcd_system run scoreboard players get #var_o_n1 mrcd_system
execute store result score #var2 mrcd_system run scoreboard players get #var_o_n2 mrcd_system
execute store result score #var3 mrcd_system run scoreboard players get #var_o_n3 mrcd_system
execute store result score #var4 mrcd_system run scoreboard players get #var_o_n4 mrcd_system
execute store result score #var5 mrcd_system run scoreboard players get #var_o_n5 mrcd_system
execute store result score #var6 mrcd_system run scoreboard players get #var_o_n6 mrcd_system
execute store result score #var7 mrcd_system run scoreboard players get #var_o_n7 mrcd_system
