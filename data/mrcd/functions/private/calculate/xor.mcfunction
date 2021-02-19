# 函数参数: #var0, #var1
# var0-1: 0-65535之间的被异或的数
# 返回值: #var0
# var0: 0-65535之间的数

# params: #var0, #var1
# var0-1: number range from 0-65535
# return values: #var0
# var0: number range from 0-65535

# 保存符号位 save sign bit
scoreboard players set #var_xor_sign0 mrcd_system 0
scoreboard players set #var_xor_sign1 mrcd_system 0
execute if score #var0 mrcd_system matches -2147483648..-1 run scoreboard players set #var_xor_sign0 mrcd_system 1
execute if score #var1 mrcd_system matches -2147483648..-1 run scoreboard players set #var_xor_sign1 mrcd_system 1

# 计算补码 convert to complement
execute if score #var_xor_sign0 mrcd_system matches 1 run scoreboard players set #var_xor_t0 mrcd_system 2147483647
execute if score #var_xor_sign0 mrcd_system matches 1 run scoreboard players operation #var_xor_t0 mrcd_system += #var0 mrcd_system
execute if score #var_xor_sign0 mrcd_system matches 1 run scoreboard players add #var_xor_t0 mrcd_system 1
execute if score #var_xor_sign0 mrcd_system matches 1 run scoreboard players operation #var0 mrcd_system = #var_xor_t0 mrcd_system
execute if score #var_xor_sign1 mrcd_system matches 1 run scoreboard players set #var_xor_t1 mrcd_system 2147483647
execute if score #var_xor_sign1 mrcd_system matches 1 run scoreboard players operation #var_xor_t1 mrcd_system += #var1 mrcd_system
execute if score #var_xor_sign1 mrcd_system matches 1 run scoreboard players add #var_xor_t1 mrcd_system 1
execute if score #var_xor_sign1 mrcd_system matches 1 run scoreboard players operation #var1 mrcd_system = #var_xor_t1 mrcd_system


# 转换为二进制 convert to binary
execute store result score #var_xor_t0_0 mrcd_system run scoreboard players get #var0 mrcd_system
execute store result score #var_xor_t0_1 mrcd_system run scoreboard players get #var0 mrcd_system
execute store result score #var_xor_t0_2 mrcd_system run scoreboard players get #var0 mrcd_system
execute store result score #var_xor_t0_3 mrcd_system run scoreboard players get #var0 mrcd_system
execute store result score #var_xor_t0_4 mrcd_system run scoreboard players get #var0 mrcd_system
execute store result score #var_xor_t0_5 mrcd_system run scoreboard players get #var0 mrcd_system
execute store result score #var_xor_t0_6 mrcd_system run scoreboard players get #var0 mrcd_system
execute store result score #var_xor_t0_7 mrcd_system run scoreboard players get #var0 mrcd_system
execute store result score #var_xor_t0_8 mrcd_system run scoreboard players get #var0 mrcd_system
execute store result score #var_xor_t0_9 mrcd_system run scoreboard players get #var0 mrcd_system
execute store result score #var_xor_t0_10 mrcd_system run scoreboard players get #var0 mrcd_system
execute store result score #var_xor_t0_11 mrcd_system run scoreboard players get #var0 mrcd_system
execute store result score #var_xor_t0_12 mrcd_system run scoreboard players get #var0 mrcd_system
execute store result score #var_xor_t0_13 mrcd_system run scoreboard players get #var0 mrcd_system
execute store result score #var_xor_t0_14 mrcd_system run scoreboard players get #var0 mrcd_system
execute store result score #var_xor_t0_15 mrcd_system run scoreboard players get #var0 mrcd_system
execute store result score #var_xor_t0_16 mrcd_system run scoreboard players get #var0 mrcd_system
execute store result score #var_xor_t0_17 mrcd_system run scoreboard players get #var0 mrcd_system
execute store result score #var_xor_t0_18 mrcd_system run scoreboard players get #var0 mrcd_system
execute store result score #var_xor_t0_19 mrcd_system run scoreboard players get #var0 mrcd_system
execute store result score #var_xor_t0_20 mrcd_system run scoreboard players get #var0 mrcd_system
execute store result score #var_xor_t0_21 mrcd_system run scoreboard players get #var0 mrcd_system
execute store result score #var_xor_t0_22 mrcd_system run scoreboard players get #var0 mrcd_system
execute store result score #var_xor_t0_23 mrcd_system run scoreboard players get #var0 mrcd_system
execute store result score #var_xor_t0_24 mrcd_system run scoreboard players get #var0 mrcd_system
execute store result score #var_xor_t0_25 mrcd_system run scoreboard players get #var0 mrcd_system
execute store result score #var_xor_t0_26 mrcd_system run scoreboard players get #var0 mrcd_system
execute store result score #var_xor_t0_27 mrcd_system run scoreboard players get #var0 mrcd_system
execute store result score #var_xor_t0_28 mrcd_system run scoreboard players get #var0 mrcd_system
execute store result score #var_xor_t0_29 mrcd_system run scoreboard players get #var0 mrcd_system
execute store result score #var_xor_t0_30 mrcd_system run scoreboard players get #var0 mrcd_system
scoreboard players operation #var_xor_t0_1 mrcd_system /= #n2 mrcd_system
scoreboard players operation #var_xor_t0_2 mrcd_system /= #n4 mrcd_system
scoreboard players operation #var_xor_t0_3 mrcd_system /= #n8 mrcd_system
scoreboard players operation #var_xor_t0_4 mrcd_system /= #n16 mrcd_system
scoreboard players operation #var_xor_t0_5 mrcd_system /= #n32 mrcd_system
scoreboard players operation #var_xor_t0_6 mrcd_system /= #n64 mrcd_system
scoreboard players operation #var_xor_t0_7 mrcd_system /= #n128 mrcd_system
scoreboard players operation #var_xor_t0_8 mrcd_system /= #n256 mrcd_system
scoreboard players operation #var_xor_t0_9 mrcd_system /= #n512 mrcd_system
scoreboard players operation #var_xor_t0_10 mrcd_system /= #n1024 mrcd_system
scoreboard players operation #var_xor_t0_11 mrcd_system /= #n2048 mrcd_system
scoreboard players operation #var_xor_t0_12 mrcd_system /= #n4096 mrcd_system
scoreboard players operation #var_xor_t0_13 mrcd_system /= #n8192 mrcd_system
scoreboard players operation #var_xor_t0_14 mrcd_system /= #n16384 mrcd_system
scoreboard players operation #var_xor_t0_15 mrcd_system /= #n32768 mrcd_system
scoreboard players operation #var_xor_t0_16 mrcd_system /= #n65536 mrcd_system
scoreboard players operation #var_xor_t0_17 mrcd_system /= #n131072 mrcd_system
scoreboard players operation #var_xor_t0_18 mrcd_system /= #n262144 mrcd_system
scoreboard players operation #var_xor_t0_19 mrcd_system /= #n524288 mrcd_system
scoreboard players operation #var_xor_t0_20 mrcd_system /= #n1048576 mrcd_system
scoreboard players operation #var_xor_t0_21 mrcd_system /= #n2097152 mrcd_system
scoreboard players operation #var_xor_t0_22 mrcd_system /= #n4194304 mrcd_system
scoreboard players operation #var_xor_t0_23 mrcd_system /= #n8388608 mrcd_system
scoreboard players operation #var_xor_t0_24 mrcd_system /= #n16777216 mrcd_system
scoreboard players operation #var_xor_t0_25 mrcd_system /= #n33554432 mrcd_system
scoreboard players operation #var_xor_t0_26 mrcd_system /= #n67108864 mrcd_system
scoreboard players operation #var_xor_t0_27 mrcd_system /= #n134217728 mrcd_system
scoreboard players operation #var_xor_t0_28 mrcd_system /= #n268435456 mrcd_system
scoreboard players operation #var_xor_t0_29 mrcd_system /= #n536870912 mrcd_system
scoreboard players operation #var_xor_t0_30 mrcd_system /= #n1073741824 mrcd_system
scoreboard players operation #var_xor_t0_0 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t0_1 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t0_2 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t0_3 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t0_4 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t0_5 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t0_6 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t0_7 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t0_8 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t0_9 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t0_10 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t0_11 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t0_12 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t0_13 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t0_14 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t0_15 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t0_16 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t0_17 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t0_18 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t0_19 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t0_20 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t0_21 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t0_22 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t0_23 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t0_24 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t0_25 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t0_26 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t0_27 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t0_28 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t0_29 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t0_30 mrcd_system %= #n2 mrcd_system
execute store result score #var_xor_t0_31 mrcd_system run scoreboard players get #var_xor_sign0 mrcd_system

execute store result score #var_xor_t1_0 mrcd_system run scoreboard players get #var1 mrcd_system
execute store result score #var_xor_t1_1 mrcd_system run scoreboard players get #var1 mrcd_system
execute store result score #var_xor_t1_2 mrcd_system run scoreboard players get #var1 mrcd_system
execute store result score #var_xor_t1_3 mrcd_system run scoreboard players get #var1 mrcd_system
execute store result score #var_xor_t1_4 mrcd_system run scoreboard players get #var1 mrcd_system
execute store result score #var_xor_t1_5 mrcd_system run scoreboard players get #var1 mrcd_system
execute store result score #var_xor_t1_6 mrcd_system run scoreboard players get #var1 mrcd_system
execute store result score #var_xor_t1_7 mrcd_system run scoreboard players get #var1 mrcd_system
execute store result score #var_xor_t1_8 mrcd_system run scoreboard players get #var1 mrcd_system
execute store result score #var_xor_t1_9 mrcd_system run scoreboard players get #var1 mrcd_system
execute store result score #var_xor_t1_10 mrcd_system run scoreboard players get #var1 mrcd_system
execute store result score #var_xor_t1_11 mrcd_system run scoreboard players get #var1 mrcd_system
execute store result score #var_xor_t1_12 mrcd_system run scoreboard players get #var1 mrcd_system
execute store result score #var_xor_t1_13 mrcd_system run scoreboard players get #var1 mrcd_system
execute store result score #var_xor_t1_14 mrcd_system run scoreboard players get #var1 mrcd_system
execute store result score #var_xor_t1_15 mrcd_system run scoreboard players get #var1 mrcd_system
execute store result score #var_xor_t1_16 mrcd_system run scoreboard players get #var1 mrcd_system
execute store result score #var_xor_t1_17 mrcd_system run scoreboard players get #var1 mrcd_system
execute store result score #var_xor_t1_18 mrcd_system run scoreboard players get #var1 mrcd_system
execute store result score #var_xor_t1_19 mrcd_system run scoreboard players get #var1 mrcd_system
execute store result score #var_xor_t1_20 mrcd_system run scoreboard players get #var1 mrcd_system
execute store result score #var_xor_t1_21 mrcd_system run scoreboard players get #var1 mrcd_system
execute store result score #var_xor_t1_22 mrcd_system run scoreboard players get #var1 mrcd_system
execute store result score #var_xor_t1_23 mrcd_system run scoreboard players get #var1 mrcd_system
execute store result score #var_xor_t1_24 mrcd_system run scoreboard players get #var1 mrcd_system
execute store result score #var_xor_t1_25 mrcd_system run scoreboard players get #var1 mrcd_system
execute store result score #var_xor_t1_26 mrcd_system run scoreboard players get #var1 mrcd_system
execute store result score #var_xor_t1_27 mrcd_system run scoreboard players get #var1 mrcd_system
execute store result score #var_xor_t1_28 mrcd_system run scoreboard players get #var1 mrcd_system
execute store result score #var_xor_t1_29 mrcd_system run scoreboard players get #var1 mrcd_system
execute store result score #var_xor_t1_30 mrcd_system run scoreboard players get #var1 mrcd_system
scoreboard players operation #var_xor_t1_1 mrcd_system /= #n2 mrcd_system
scoreboard players operation #var_xor_t1_2 mrcd_system /= #n4 mrcd_system
scoreboard players operation #var_xor_t1_3 mrcd_system /= #n8 mrcd_system
scoreboard players operation #var_xor_t1_4 mrcd_system /= #n16 mrcd_system
scoreboard players operation #var_xor_t1_5 mrcd_system /= #n32 mrcd_system
scoreboard players operation #var_xor_t1_6 mrcd_system /= #n64 mrcd_system
scoreboard players operation #var_xor_t1_7 mrcd_system /= #n128 mrcd_system
scoreboard players operation #var_xor_t1_8 mrcd_system /= #n256 mrcd_system
scoreboard players operation #var_xor_t1_9 mrcd_system /= #n512 mrcd_system
scoreboard players operation #var_xor_t1_10 mrcd_system /= #n1024 mrcd_system
scoreboard players operation #var_xor_t1_11 mrcd_system /= #n2048 mrcd_system
scoreboard players operation #var_xor_t1_12 mrcd_system /= #n4096 mrcd_system
scoreboard players operation #var_xor_t1_13 mrcd_system /= #n8192 mrcd_system
scoreboard players operation #var_xor_t1_14 mrcd_system /= #n16384 mrcd_system
scoreboard players operation #var_xor_t1_15 mrcd_system /= #n32768 mrcd_system
scoreboard players operation #var_xor_t1_16 mrcd_system /= #n65536 mrcd_system
scoreboard players operation #var_xor_t1_17 mrcd_system /= #n131072 mrcd_system
scoreboard players operation #var_xor_t1_18 mrcd_system /= #n262144 mrcd_system
scoreboard players operation #var_xor_t1_19 mrcd_system /= #n524288 mrcd_system
scoreboard players operation #var_xor_t1_20 mrcd_system /= #n1048576 mrcd_system
scoreboard players operation #var_xor_t1_21 mrcd_system /= #n2097152 mrcd_system
scoreboard players operation #var_xor_t1_22 mrcd_system /= #n4194304 mrcd_system
scoreboard players operation #var_xor_t1_23 mrcd_system /= #n8388608 mrcd_system
scoreboard players operation #var_xor_t1_24 mrcd_system /= #n16777216 mrcd_system
scoreboard players operation #var_xor_t1_25 mrcd_system /= #n33554432 mrcd_system
scoreboard players operation #var_xor_t1_26 mrcd_system /= #n67108864 mrcd_system
scoreboard players operation #var_xor_t1_27 mrcd_system /= #n134217728 mrcd_system
scoreboard players operation #var_xor_t1_28 mrcd_system /= #n268435456 mrcd_system
scoreboard players operation #var_xor_t1_29 mrcd_system /= #n536870912 mrcd_system
scoreboard players operation #var_xor_t1_30 mrcd_system /= #n1073741824 mrcd_system
scoreboard players operation #var_xor_t1_0 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t1_1 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t1_2 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t1_3 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t1_4 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t1_5 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t1_6 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t1_7 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t1_8 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t1_9 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t1_10 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t1_11 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t1_12 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t1_13 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t1_14 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t1_15 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t1_16 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t1_17 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t1_18 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t1_19 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t1_20 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t1_21 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t1_22 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t1_23 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t1_24 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t1_25 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t1_26 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t1_27 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t1_28 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t1_29 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t1_30 mrcd_system %= #n2 mrcd_system
execute store result score #var_xor_t1_31 mrcd_system run scoreboard players get #var_xor_sign1 mrcd_system



#tellraw @a ["n0: ",{"score":{"name":"#var_xor_t0_31","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_30","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_29","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_28","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_27","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_26","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_25","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_24","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_23","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_22","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_21","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_20","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_19","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_18","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_17","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_16","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_15","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_14","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_13","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_12","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_11","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_10","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_9","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_8","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_7","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_6","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_5","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_4","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_3","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_2","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_1","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_0","objective":"mrcd_system"}}]
#tellraw @a ["n1: ",{"score":{"name":"#var_xor_t1_31","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t1_30","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t1_29","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t1_28","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t1_27","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t1_26","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t1_25","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t1_24","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t1_23","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t1_22","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t1_21","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t1_20","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t1_19","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t1_18","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t1_17","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t1_16","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t1_15","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t1_14","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t1_13","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t1_12","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t1_11","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t1_10","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t1_9","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t1_8","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t1_7","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t1_6","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t1_5","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t1_4","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t1_3","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t1_2","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t1_1","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t1_0","objective":"mrcd_system"}}]

# 按位异或 xor by bit
scoreboard players operation #var_xor_t0_0 mrcd_system += #var_xor_t1_0 mrcd_system
scoreboard players operation #var_xor_t0_1 mrcd_system += #var_xor_t1_1 mrcd_system
scoreboard players operation #var_xor_t0_2 mrcd_system += #var_xor_t1_2 mrcd_system
scoreboard players operation #var_xor_t0_3 mrcd_system += #var_xor_t1_3 mrcd_system
scoreboard players operation #var_xor_t0_4 mrcd_system += #var_xor_t1_4 mrcd_system
scoreboard players operation #var_xor_t0_5 mrcd_system += #var_xor_t1_5 mrcd_system
scoreboard players operation #var_xor_t0_6 mrcd_system += #var_xor_t1_6 mrcd_system
scoreboard players operation #var_xor_t0_7 mrcd_system += #var_xor_t1_7 mrcd_system
scoreboard players operation #var_xor_t0_8 mrcd_system += #var_xor_t1_8 mrcd_system
scoreboard players operation #var_xor_t0_9 mrcd_system += #var_xor_t1_9 mrcd_system
scoreboard players operation #var_xor_t0_10 mrcd_system += #var_xor_t1_10 mrcd_system
scoreboard players operation #var_xor_t0_11 mrcd_system += #var_xor_t1_11 mrcd_system
scoreboard players operation #var_xor_t0_12 mrcd_system += #var_xor_t1_12 mrcd_system
scoreboard players operation #var_xor_t0_13 mrcd_system += #var_xor_t1_13 mrcd_system
scoreboard players operation #var_xor_t0_14 mrcd_system += #var_xor_t1_14 mrcd_system
scoreboard players operation #var_xor_t0_15 mrcd_system += #var_xor_t1_15 mrcd_system
scoreboard players operation #var_xor_t0_16 mrcd_system += #var_xor_t1_16 mrcd_system
scoreboard players operation #var_xor_t0_17 mrcd_system += #var_xor_t1_17 mrcd_system
scoreboard players operation #var_xor_t0_18 mrcd_system += #var_xor_t1_18 mrcd_system
scoreboard players operation #var_xor_t0_19 mrcd_system += #var_xor_t1_19 mrcd_system
scoreboard players operation #var_xor_t0_20 mrcd_system += #var_xor_t1_20 mrcd_system
scoreboard players operation #var_xor_t0_21 mrcd_system += #var_xor_t1_21 mrcd_system
scoreboard players operation #var_xor_t0_22 mrcd_system += #var_xor_t1_22 mrcd_system
scoreboard players operation #var_xor_t0_23 mrcd_system += #var_xor_t1_23 mrcd_system
scoreboard players operation #var_xor_t0_24 mrcd_system += #var_xor_t1_24 mrcd_system
scoreboard players operation #var_xor_t0_25 mrcd_system += #var_xor_t1_25 mrcd_system
scoreboard players operation #var_xor_t0_26 mrcd_system += #var_xor_t1_26 mrcd_system
scoreboard players operation #var_xor_t0_27 mrcd_system += #var_xor_t1_27 mrcd_system
scoreboard players operation #var_xor_t0_28 mrcd_system += #var_xor_t1_28 mrcd_system
scoreboard players operation #var_xor_t0_29 mrcd_system += #var_xor_t1_29 mrcd_system
scoreboard players operation #var_xor_t0_30 mrcd_system += #var_xor_t1_30 mrcd_system
scoreboard players operation #var_xor_t0_31 mrcd_system += #var_xor_t1_31 mrcd_system
execute if score #var_xor_t0_0 mrcd_system matches 2 run scoreboard players set #var_xor_t0_0 mrcd_system 0
execute if score #var_xor_t0_1 mrcd_system matches 2 run scoreboard players set #var_xor_t0_1 mrcd_system 0
execute if score #var_xor_t0_2 mrcd_system matches 2 run scoreboard players set #var_xor_t0_2 mrcd_system 0
execute if score #var_xor_t0_3 mrcd_system matches 2 run scoreboard players set #var_xor_t0_3 mrcd_system 0
execute if score #var_xor_t0_4 mrcd_system matches 2 run scoreboard players set #var_xor_t0_4 mrcd_system 0
execute if score #var_xor_t0_5 mrcd_system matches 2 run scoreboard players set #var_xor_t0_5 mrcd_system 0
execute if score #var_xor_t0_6 mrcd_system matches 2 run scoreboard players set #var_xor_t0_6 mrcd_system 0
execute if score #var_xor_t0_7 mrcd_system matches 2 run scoreboard players set #var_xor_t0_7 mrcd_system 0
execute if score #var_xor_t0_8 mrcd_system matches 2 run scoreboard players set #var_xor_t0_8 mrcd_system 0
execute if score #var_xor_t0_9 mrcd_system matches 2 run scoreboard players set #var_xor_t0_9 mrcd_system 0
execute if score #var_xor_t0_10 mrcd_system matches 2 run scoreboard players set #var_xor_t0_10 mrcd_system 0
execute if score #var_xor_t0_11 mrcd_system matches 2 run scoreboard players set #var_xor_t0_11 mrcd_system 0
execute if score #var_xor_t0_12 mrcd_system matches 2 run scoreboard players set #var_xor_t0_12 mrcd_system 0
execute if score #var_xor_t0_13 mrcd_system matches 2 run scoreboard players set #var_xor_t0_13 mrcd_system 0
execute if score #var_xor_t0_14 mrcd_system matches 2 run scoreboard players set #var_xor_t0_14 mrcd_system 0
execute if score #var_xor_t0_15 mrcd_system matches 2 run scoreboard players set #var_xor_t0_15 mrcd_system 0
execute if score #var_xor_t0_16 mrcd_system matches 2 run scoreboard players set #var_xor_t0_16 mrcd_system 0
execute if score #var_xor_t0_17 mrcd_system matches 2 run scoreboard players set #var_xor_t0_17 mrcd_system 0
execute if score #var_xor_t0_18 mrcd_system matches 2 run scoreboard players set #var_xor_t0_18 mrcd_system 0
execute if score #var_xor_t0_19 mrcd_system matches 2 run scoreboard players set #var_xor_t0_19 mrcd_system 0
execute if score #var_xor_t0_20 mrcd_system matches 2 run scoreboard players set #var_xor_t0_20 mrcd_system 0
execute if score #var_xor_t0_21 mrcd_system matches 2 run scoreboard players set #var_xor_t0_21 mrcd_system 0
execute if score #var_xor_t0_22 mrcd_system matches 2 run scoreboard players set #var_xor_t0_22 mrcd_system 0
execute if score #var_xor_t0_23 mrcd_system matches 2 run scoreboard players set #var_xor_t0_23 mrcd_system 0
execute if score #var_xor_t0_24 mrcd_system matches 2 run scoreboard players set #var_xor_t0_24 mrcd_system 0
execute if score #var_xor_t0_25 mrcd_system matches 2 run scoreboard players set #var_xor_t0_25 mrcd_system 0
execute if score #var_xor_t0_26 mrcd_system matches 2 run scoreboard players set #var_xor_t0_26 mrcd_system 0
execute if score #var_xor_t0_27 mrcd_system matches 2 run scoreboard players set #var_xor_t0_27 mrcd_system 0
execute if score #var_xor_t0_28 mrcd_system matches 2 run scoreboard players set #var_xor_t0_28 mrcd_system 0
execute if score #var_xor_t0_29 mrcd_system matches 2 run scoreboard players set #var_xor_t0_29 mrcd_system 0
execute if score #var_xor_t0_30 mrcd_system matches 2 run scoreboard players set #var_xor_t0_30 mrcd_system 0
execute if score #var_xor_t0_31 mrcd_system matches 2 run scoreboard players set #var_xor_t0_31 mrcd_system 0

#tellraw @a ["n2: ",{"score":{"name":"#var_xor_t0_31","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_30","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_29","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_28","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_27","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_26","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_25","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_24","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_23","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_22","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_21","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_20","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_19","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_18","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_17","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_16","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_15","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_14","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_13","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_12","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_11","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_10","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_9","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_8","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_7","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_6","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_5","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_4","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_3","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_2","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_1","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0_0","objective":"mrcd_system"}}]





# 转换为十进制 convert to demical
scoreboard players operation #var_xor_t0_1 mrcd_system *= #n2 mrcd_system
scoreboard players operation #var_xor_t0_2 mrcd_system *= #n4 mrcd_system
scoreboard players operation #var_xor_t0_3 mrcd_system *= #n8 mrcd_system
scoreboard players operation #var_xor_t0_4 mrcd_system *= #n16 mrcd_system
scoreboard players operation #var_xor_t0_5 mrcd_system *= #n32 mrcd_system
scoreboard players operation #var_xor_t0_6 mrcd_system *= #n64 mrcd_system
scoreboard players operation #var_xor_t0_7 mrcd_system *= #n128 mrcd_system
scoreboard players operation #var_xor_t0_8 mrcd_system *= #n256 mrcd_system
scoreboard players operation #var_xor_t0_9 mrcd_system *= #n512 mrcd_system
scoreboard players operation #var_xor_t0_10 mrcd_system *= #n1024 mrcd_system
scoreboard players operation #var_xor_t0_11 mrcd_system *= #n2048 mrcd_system
scoreboard players operation #var_xor_t0_12 mrcd_system *= #n4096 mrcd_system
scoreboard players operation #var_xor_t0_13 mrcd_system *= #n8192 mrcd_system
scoreboard players operation #var_xor_t0_14 mrcd_system *= #n16384 mrcd_system
scoreboard players operation #var_xor_t0_15 mrcd_system *= #n32768 mrcd_system
scoreboard players operation #var_xor_t0_16 mrcd_system *= #n65536 mrcd_system
scoreboard players operation #var_xor_t0_17 mrcd_system *= #n131072 mrcd_system
scoreboard players operation #var_xor_t0_18 mrcd_system *= #n262144 mrcd_system
scoreboard players operation #var_xor_t0_19 mrcd_system *= #n524288 mrcd_system
scoreboard players operation #var_xor_t0_20 mrcd_system *= #n1048576 mrcd_system
scoreboard players operation #var_xor_t0_21 mrcd_system *= #n2097152 mrcd_system
scoreboard players operation #var_xor_t0_22 mrcd_system *= #n4194304 mrcd_system
scoreboard players operation #var_xor_t0_23 mrcd_system *= #n8388608 mrcd_system
scoreboard players operation #var_xor_t0_24 mrcd_system *= #n16777216 mrcd_system
scoreboard players operation #var_xor_t0_25 mrcd_system *= #n33554432 mrcd_system
scoreboard players operation #var_xor_t0_26 mrcd_system *= #n67108864 mrcd_system
scoreboard players operation #var_xor_t0_27 mrcd_system *= #n134217728 mrcd_system
scoreboard players operation #var_xor_t0_28 mrcd_system *= #n268435456 mrcd_system
scoreboard players operation #var_xor_t0_29 mrcd_system *= #n536870912 mrcd_system
scoreboard players operation #var_xor_t0_30 mrcd_system *= #n1073741824 mrcd_system
scoreboard players set #var0 mrcd_system 0
scoreboard players operation #var0 mrcd_system += #var_xor_t0_0 mrcd_system
scoreboard players operation #var0 mrcd_system += #var_xor_t0_1 mrcd_system
scoreboard players operation #var0 mrcd_system += #var_xor_t0_2 mrcd_system
scoreboard players operation #var0 mrcd_system += #var_xor_t0_3 mrcd_system
scoreboard players operation #var0 mrcd_system += #var_xor_t0_4 mrcd_system
scoreboard players operation #var0 mrcd_system += #var_xor_t0_5 mrcd_system
scoreboard players operation #var0 mrcd_system += #var_xor_t0_6 mrcd_system
scoreboard players operation #var0 mrcd_system += #var_xor_t0_7 mrcd_system
scoreboard players operation #var0 mrcd_system += #var_xor_t0_8 mrcd_system
scoreboard players operation #var0 mrcd_system += #var_xor_t0_9 mrcd_system
scoreboard players operation #var0 mrcd_system += #var_xor_t0_10 mrcd_system
scoreboard players operation #var0 mrcd_system += #var_xor_t0_11 mrcd_system
scoreboard players operation #var0 mrcd_system += #var_xor_t0_12 mrcd_system
scoreboard players operation #var0 mrcd_system += #var_xor_t0_13 mrcd_system
scoreboard players operation #var0 mrcd_system += #var_xor_t0_14 mrcd_system
scoreboard players operation #var0 mrcd_system += #var_xor_t0_15 mrcd_system
scoreboard players operation #var0 mrcd_system += #var_xor_t0_16 mrcd_system
scoreboard players operation #var0 mrcd_system += #var_xor_t0_17 mrcd_system
scoreboard players operation #var0 mrcd_system += #var_xor_t0_18 mrcd_system
scoreboard players operation #var0 mrcd_system += #var_xor_t0_19 mrcd_system
scoreboard players operation #var0 mrcd_system += #var_xor_t0_20 mrcd_system
scoreboard players operation #var0 mrcd_system += #var_xor_t0_21 mrcd_system
scoreboard players operation #var0 mrcd_system += #var_xor_t0_22 mrcd_system
scoreboard players operation #var0 mrcd_system += #var_xor_t0_23 mrcd_system
scoreboard players operation #var0 mrcd_system += #var_xor_t0_24 mrcd_system
scoreboard players operation #var0 mrcd_system += #var_xor_t0_25 mrcd_system
scoreboard players operation #var0 mrcd_system += #var_xor_t0_26 mrcd_system
scoreboard players operation #var0 mrcd_system += #var_xor_t0_27 mrcd_system
scoreboard players operation #var0 mrcd_system += #var_xor_t0_28 mrcd_system
scoreboard players operation #var0 mrcd_system += #var_xor_t0_29 mrcd_system
scoreboard players operation #var0 mrcd_system += #var_xor_t0_30 mrcd_system

execute if score #var_xor_t0_31 mrcd_system matches 1 run scoreboard players add #var0 mrcd_system 2147483647
execute if score #var_xor_t0_31 mrcd_system matches 1 run scoreboard players add #var0 mrcd_system 1

#tellraw @a ["r: ",{"score":{"name":"#var0","objective":"mrcd_system"}}]
