# 函数参数: #var0, #var1, #var2, #var3, #var4, #var5, #var6, #var7, #var10, #var11, #var12, #var13, #var14, #var15, #var16, #var17
# var0-7: 2^8格式的数
# var10-17: 2^8格式的数
# 返回值: #var0, #var1, #var2, #var3, #var4, #var5, #var6, #var7
# var0-7: 2^8格式的数

# params: #var0, #var1, #var2, #var3, #var4, #var5, #var6, #var7, #var10, #var11, #var12, #var13, #var14, #var15, #var16, #var17
# var0-7: 2^8 format number
# var10-17: 2^8 format number
# return values: #var0, #var1, #var2, #var3, #var4, #var5, #var6, #var7
# var0-7: 2^8 format number

execute store result score #var_xa_t0 mrcd_system run scoreboard players get #var0 mrcd_system
execute store result score #var_xa_t1 mrcd_system run scoreboard players get #var1 mrcd_system
scoreboard players operation #var1 mrcd_system = #var10 mrcd_system
function mrcd:math/xor
scoreboard players operation #var_xa_t0 mrcd_system = #var0 mrcd_system

scoreboard players operation #var0 mrcd_system = #var_xa_t1 mrcd_system
scoreboard players operation #var1 mrcd_system = #var11 mrcd_system
function mrcd:math/xor
scoreboard players operation #var_xa_t1 mrcd_system = #var0 mrcd_system

scoreboard players operation #var0 mrcd_system = #var2 mrcd_system
scoreboard players operation #var1 mrcd_system = #var12 mrcd_system
function mrcd:math/xor
scoreboard players operation #var_xa_t2 mrcd_system = #var0 mrcd_system

scoreboard players operation #var0 mrcd_system = #var3 mrcd_system
scoreboard players operation #var1 mrcd_system = #var13 mrcd_system
function mrcd:math/xor
scoreboard players operation #var_xa_t3 mrcd_system = #var0 mrcd_system

scoreboard players operation #var0 mrcd_system = #var4 mrcd_system
scoreboard players operation #var1 mrcd_system = #var14 mrcd_system
function mrcd:math/xor
scoreboard players operation #var_xa_t4 mrcd_system = #var0 mrcd_system

scoreboard players operation #var0 mrcd_system = #var5 mrcd_system
scoreboard players operation #var1 mrcd_system = #var15 mrcd_system
function mrcd:math/xor
scoreboard players operation #var_xa_t5 mrcd_system = #var0 mrcd_system

scoreboard players operation #var0 mrcd_system = #var6 mrcd_system
scoreboard players operation #var1 mrcd_system = #var16 mrcd_system
function mrcd:math/xor
scoreboard players operation #var_xa_t6 mrcd_system = #var0 mrcd_system

scoreboard players operation #var0 mrcd_system = #var7 mrcd_system
scoreboard players operation #var1 mrcd_system = #var17 mrcd_system
function mrcd:math/xor
scoreboard players operation #var_xa_t7 mrcd_system = #var0 mrcd_system

scoreboard players operation #var0 mrcd_system = #var_xa_t0 mrcd_system
scoreboard players operation #var1 mrcd_system = #var_xa_t1 mrcd_system
scoreboard players operation #var2 mrcd_system = #var_xa_t2 mrcd_system
scoreboard players operation #var3 mrcd_system = #var_xa_t3 mrcd_system
scoreboard players operation #var4 mrcd_system = #var_xa_t4 mrcd_system
scoreboard players operation #var5 mrcd_system = #var_xa_t5 mrcd_system
scoreboard players operation #var6 mrcd_system = #var_xa_t6 mrcd_system
scoreboard players operation #var7 mrcd_system = #var_xa_t7 mrcd_system
