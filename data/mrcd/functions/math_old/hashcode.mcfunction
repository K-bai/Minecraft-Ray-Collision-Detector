# 函数参数: #var0, #var1
# var0-1: int值，xz坐标
# 返回值: #var0, #var1, #var2, #var3, #var4, #var5, #var6, #var7
# var0: 2^8格式的数，哈希值

# params: #var0, #var1
# var0-1: int number, x and z position
# return values: #var0, #var1, #var2, #var3, #var4, #var5, #var6, #var7
# var0-7: 2^8 format number, hashcode

execute store result score #var_hc_x mrcd_system run scoreboard players get #var0 mrcd_system
execute store result score #var_hc_z mrcd_system run scoreboard players get #var1 mrcd_system

# x = x*3129871
function mrcd:math/n_init
execute store result score #var_hc_x0 mrcd_system run scoreboard players get #var0 mrcd_system
execute store result score #var_hc_x1 mrcd_system run scoreboard players get #var1 mrcd_system
execute store result score #var_hc_x2 mrcd_system run scoreboard players get #var2 mrcd_system
execute store result score #var_hc_x3 mrcd_system run scoreboard players get #var3 mrcd_system
execute store result score #var_hc_x4 mrcd_system run scoreboard players get #var4 mrcd_system
execute store result score #var_hc_x5 mrcd_system run scoreboard players get #var5 mrcd_system
execute store result score #var_hc_x6 mrcd_system run scoreboard players get #var6 mrcd_system
execute store result score #var_hc_x7 mrcd_system run scoreboard players get #var7 mrcd_system

scoreboard players set #var0 mrcd_system 3129871
function mrcd:math/n_init
execute store result score #var10 mrcd_system run scoreboard players get #var_hc_x0 mrcd_system
execute store result score #var11 mrcd_system run scoreboard players get #var_hc_x1 mrcd_system
execute store result score #var12 mrcd_system run scoreboard players get #var_hc_x2 mrcd_system
execute store result score #var13 mrcd_system run scoreboard players get #var_hc_x3 mrcd_system
execute store result score #var14 mrcd_system run scoreboard players get #var_hc_x4 mrcd_system
execute store result score #var15 mrcd_system run scoreboard players get #var_hc_x5 mrcd_system
execute store result score #var16 mrcd_system run scoreboard players get #var_hc_x6 mrcd_system
execute store result score #var17 mrcd_system run scoreboard players get #var_hc_x7 mrcd_system

function mrcd:math/multiply
execute store result score #var_hc_x0 mrcd_system run scoreboard players get #var0 mrcd_system
execute store result score #var_hc_x1 mrcd_system run scoreboard players get #var1 mrcd_system
execute store result score #var_hc_x2 mrcd_system run scoreboard players get #var2 mrcd_system
execute store result score #var_hc_x3 mrcd_system run scoreboard players get #var3 mrcd_system
execute store result score #var_hc_x4 mrcd_system run scoreboard players get #var4 mrcd_system
execute store result score #var_hc_x5 mrcd_system run scoreboard players get #var5 mrcd_system
execute store result score #var_hc_x6 mrcd_system run scoreboard players get #var6 mrcd_system
execute store result score #var_hc_x7 mrcd_system run scoreboard players get #var7 mrcd_system

#function mrcd:math/output


# z = z*116129781
execute store result score #var0 mrcd_system run scoreboard players get #var_hc_z mrcd_system
function mrcd:math/n_init
execute store result score #var_hc_z0 mrcd_system run scoreboard players get #var0 mrcd_system
execute store result score #var_hc_z1 mrcd_system run scoreboard players get #var1 mrcd_system
execute store result score #var_hc_z2 mrcd_system run scoreboard players get #var2 mrcd_system
execute store result score #var_hc_z3 mrcd_system run scoreboard players get #var3 mrcd_system
execute store result score #var_hc_z4 mrcd_system run scoreboard players get #var4 mrcd_system
execute store result score #var_hc_z5 mrcd_system run scoreboard players get #var5 mrcd_system
execute store result score #var_hc_z6 mrcd_system run scoreboard players get #var6 mrcd_system
execute store result score #var_hc_z7 mrcd_system run scoreboard players get #var7 mrcd_system

scoreboard players set #var0 mrcd_system 116129781
function mrcd:math/n_init

execute store result score #var10 mrcd_system run scoreboard players get #var_hc_z0 mrcd_system
execute store result score #var11 mrcd_system run scoreboard players get #var_hc_z1 mrcd_system
execute store result score #var12 mrcd_system run scoreboard players get #var_hc_z2 mrcd_system
execute store result score #var13 mrcd_system run scoreboard players get #var_hc_z3 mrcd_system
execute store result score #var14 mrcd_system run scoreboard players get #var_hc_z4 mrcd_system
execute store result score #var15 mrcd_system run scoreboard players get #var_hc_z5 mrcd_system
execute store result score #var16 mrcd_system run scoreboard players get #var_hc_z6 mrcd_system
execute store result score #var17 mrcd_system run scoreboard players get #var_hc_z7 mrcd_system
function mrcd:math/multiply

#function mrcd:math/output


# t = x^z
execute store result score #var10 mrcd_system run scoreboard players get #var_hc_x0 mrcd_system
execute store result score #var11 mrcd_system run scoreboard players get #var_hc_x1 mrcd_system
execute store result score #var12 mrcd_system run scoreboard players get #var_hc_x2 mrcd_system
execute store result score #var13 mrcd_system run scoreboard players get #var_hc_x3 mrcd_system
execute store result score #var14 mrcd_system run scoreboard players get #var_hc_x4 mrcd_system
execute store result score #var15 mrcd_system run scoreboard players get #var_hc_x5 mrcd_system
execute store result score #var16 mrcd_system run scoreboard players get #var_hc_x6 mrcd_system
execute store result score #var17 mrcd_system run scoreboard players get #var_hc_x7 mrcd_system

function mrcd:math/xor_all
execute store result score #var_hc_t0 mrcd_system run scoreboard players get #var0 mrcd_system
execute store result score #var_hc_t1 mrcd_system run scoreboard players get #var1 mrcd_system
execute store result score #var_hc_t2 mrcd_system run scoreboard players get #var2 mrcd_system
execute store result score #var_hc_t3 mrcd_system run scoreboard players get #var3 mrcd_system
execute store result score #var_hc_t4 mrcd_system run scoreboard players get #var4 mrcd_system
execute store result score #var_hc_t5 mrcd_system run scoreboard players get #var5 mrcd_system
execute store result score #var_hc_t6 mrcd_system run scoreboard players get #var6 mrcd_system
execute store result score #var_hc_t7 mrcd_system run scoreboard players get #var7 mrcd_system

#function mrcd:math/output


# n = t*t*42317861
execute store result score #var10 mrcd_system run scoreboard players get #var0 mrcd_system
execute store result score #var11 mrcd_system run scoreboard players get #var1 mrcd_system
execute store result score #var12 mrcd_system run scoreboard players get #var2 mrcd_system
execute store result score #var13 mrcd_system run scoreboard players get #var3 mrcd_system
execute store result score #var14 mrcd_system run scoreboard players get #var4 mrcd_system
execute store result score #var15 mrcd_system run scoreboard players get #var5 mrcd_system
execute store result score #var16 mrcd_system run scoreboard players get #var6 mrcd_system
execute store result score #var17 mrcd_system run scoreboard players get #var7 mrcd_system
function mrcd:math/multiply

execute store result score #var_hc_n0 mrcd_system run scoreboard players get #var0 mrcd_system
execute store result score #var_hc_n1 mrcd_system run scoreboard players get #var1 mrcd_system
execute store result score #var_hc_n2 mrcd_system run scoreboard players get #var2 mrcd_system
execute store result score #var_hc_n3 mrcd_system run scoreboard players get #var3 mrcd_system
execute store result score #var_hc_n4 mrcd_system run scoreboard players get #var4 mrcd_system
execute store result score #var_hc_n5 mrcd_system run scoreboard players get #var5 mrcd_system
execute store result score #var_hc_n6 mrcd_system run scoreboard players get #var6 mrcd_system
execute store result score #var_hc_n7 mrcd_system run scoreboard players get #var7 mrcd_system

scoreboard players set #var0 mrcd_system 42317861
function mrcd:math/n_init
execute store result score #var10 mrcd_system run scoreboard players get #var_hc_n0 mrcd_system
execute store result score #var11 mrcd_system run scoreboard players get #var_hc_n1 mrcd_system
execute store result score #var12 mrcd_system run scoreboard players get #var_hc_n2 mrcd_system
execute store result score #var13 mrcd_system run scoreboard players get #var_hc_n3 mrcd_system
execute store result score #var14 mrcd_system run scoreboard players get #var_hc_n4 mrcd_system
execute store result score #var15 mrcd_system run scoreboard players get #var_hc_n5 mrcd_system
execute store result score #var16 mrcd_system run scoreboard players get #var_hc_n6 mrcd_system
execute store result score #var17 mrcd_system run scoreboard players get #var_hc_n7 mrcd_system
function mrcd:math/multiply
execute store result score #var_hc_n0 mrcd_system run scoreboard players get #var0 mrcd_system
execute store result score #var_hc_n1 mrcd_system run scoreboard players get #var1 mrcd_system
execute store result score #var_hc_n2 mrcd_system run scoreboard players get #var2 mrcd_system
execute store result score #var_hc_n3 mrcd_system run scoreboard players get #var3 mrcd_system
execute store result score #var_hc_n4 mrcd_system run scoreboard players get #var4 mrcd_system
execute store result score #var_hc_n5 mrcd_system run scoreboard players get #var5 mrcd_system
execute store result score #var_hc_n6 mrcd_system run scoreboard players get #var6 mrcd_system
execute store result score #var_hc_n7 mrcd_system run scoreboard players get #var7 mrcd_system

#function mrcd:math/output

# t = t*11
scoreboard players set #var0 mrcd_system 11
function mrcd:math/n_init
execute store result score #var10 mrcd_system run scoreboard players get #var_hc_t0 mrcd_system
execute store result score #var11 mrcd_system run scoreboard players get #var_hc_t1 mrcd_system
execute store result score #var12 mrcd_system run scoreboard players get #var_hc_t2 mrcd_system
execute store result score #var13 mrcd_system run scoreboard players get #var_hc_t3 mrcd_system
execute store result score #var14 mrcd_system run scoreboard players get #var_hc_t4 mrcd_system
execute store result score #var15 mrcd_system run scoreboard players get #var_hc_t5 mrcd_system
execute store result score #var16 mrcd_system run scoreboard players get #var_hc_t6 mrcd_system
execute store result score #var17 mrcd_system run scoreboard players get #var_hc_t7 mrcd_system
function mrcd:math/multiply

#function mrcd:math/output


# r = n+t
execute store result score #var10 mrcd_system run scoreboard players get #var_hc_n0 mrcd_system
execute store result score #var11 mrcd_system run scoreboard players get #var_hc_n1 mrcd_system
execute store result score #var12 mrcd_system run scoreboard players get #var_hc_n2 mrcd_system
execute store result score #var13 mrcd_system run scoreboard players get #var_hc_n3 mrcd_system
execute store result score #var14 mrcd_system run scoreboard players get #var_hc_n4 mrcd_system
execute store result score #var15 mrcd_system run scoreboard players get #var_hc_n5 mrcd_system
execute store result score #var16 mrcd_system run scoreboard players get #var_hc_n6 mrcd_system
execute store result score #var17 mrcd_system run scoreboard players get #var_hc_n7 mrcd_system
function mrcd:math/add

#function mrcd:math/output


# 右移16 right shift 16 
# r = r>>>16
execute store result score #var0 mrcd_system run scoreboard players get #var2 mrcd_system
execute store result score #var1 mrcd_system run scoreboard players get #var3 mrcd_system
execute store result score #var2 mrcd_system run scoreboard players get #var4 mrcd_system
execute store result score #var3 mrcd_system run scoreboard players get #var5 mrcd_system
execute store result score #var4 mrcd_system run scoreboard players get #var6 mrcd_system
execute store result score #var5 mrcd_system run scoreboard players get #var7 mrcd_system
scoreboard players set #var6 mrcd_system 0
scoreboard players set #var7 mrcd_system 0