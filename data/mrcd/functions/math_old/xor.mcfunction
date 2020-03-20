# 函数参数: #var0, #var1
# var0-1: 0-255之间的被异或的数
# 返回值: #var0
# var0: 0-255之间的数

# params: #var0, #var1
# var0-1: number range from 0-255
# return values: #var0
# var0: number range from 0-255


# 转换为二进制 convert to binary
execute store result score #var_xor_t0 mrcd_system run scoreboard players get #var0 mrcd_system
execute store result score #var_xor_t1 mrcd_system run scoreboard players get #var_xor_t0 mrcd_system
scoreboard players operation #var_xor_t0 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t1 mrcd_system /= #n2 mrcd_system
execute store result score #var_xor_t2 mrcd_system run scoreboard players get #var_xor_t1 mrcd_system
scoreboard players operation #var_xor_t1 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t2 mrcd_system /= #n2 mrcd_system
execute store result score #var_xor_t3 mrcd_system run scoreboard players get #var_xor_t2 mrcd_system
scoreboard players operation #var_xor_t2 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t3 mrcd_system /= #n2 mrcd_system
execute store result score #var_xor_t4 mrcd_system run scoreboard players get #var_xor_t3 mrcd_system
scoreboard players operation #var_xor_t3 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t4 mrcd_system /= #n2 mrcd_system
execute store result score #var_xor_t5 mrcd_system run scoreboard players get #var_xor_t4 mrcd_system
scoreboard players operation #var_xor_t4 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t5 mrcd_system /= #n2 mrcd_system
execute store result score #var_xor_t6 mrcd_system run scoreboard players get #var_xor_t5 mrcd_system
scoreboard players operation #var_xor_t5 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t6 mrcd_system /= #n2 mrcd_system
execute store result score #var_xor_t7 mrcd_system run scoreboard players get #var_xor_t6 mrcd_system
scoreboard players operation #var_xor_t6 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t7 mrcd_system /= #n2 mrcd_system
scoreboard players operation #var_xor_t7 mrcd_system %= #n2 mrcd_system

execute store result score #var_xor_t10 mrcd_system run scoreboard players get #var1 mrcd_system
execute store result score #var_xor_t11 mrcd_system run scoreboard players get #var_xor_t10 mrcd_system
scoreboard players operation #var_xor_t10 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t11 mrcd_system /= #n2 mrcd_system
execute store result score #var_xor_t12 mrcd_system run scoreboard players get #var_xor_t11 mrcd_system
scoreboard players operation #var_xor_t11 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t12 mrcd_system /= #n2 mrcd_system
execute store result score #var_xor_t13 mrcd_system run scoreboard players get #var_xor_t12 mrcd_system
scoreboard players operation #var_xor_t12 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t13 mrcd_system /= #n2 mrcd_system
execute store result score #var_xor_t14 mrcd_system run scoreboard players get #var_xor_t13 mrcd_system
scoreboard players operation #var_xor_t13 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t14 mrcd_system /= #n2 mrcd_system
execute store result score #var_xor_t15 mrcd_system run scoreboard players get #var_xor_t14 mrcd_system
scoreboard players operation #var_xor_t14 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t15 mrcd_system /= #n2 mrcd_system
execute store result score #var_xor_t16 mrcd_system run scoreboard players get #var_xor_t15 mrcd_system
scoreboard players operation #var_xor_t15 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t16 mrcd_system /= #n2 mrcd_system
execute store result score #var_xor_t17 mrcd_system run scoreboard players get #var_xor_t16 mrcd_system
scoreboard players operation #var_xor_t16 mrcd_system %= #n2 mrcd_system
scoreboard players operation #var_xor_t17 mrcd_system /= #n2 mrcd_system
scoreboard players operation #var_xor_t17 mrcd_system %= #n2 mrcd_system

#tellraw @a ["n0: ",{"score":{"name":"#var_xor_t7","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t6","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t5","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t4","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t3","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t2","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t1","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0","objective":"mrcd_system"}}]
#tellraw @a ["n1: ",{"score":{"name":"#var_xor_t17","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t16","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t15","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t14","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t13","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t12","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t11","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t10","objective":"mrcd_system"}}]

# 按位异或 xor by bit
scoreboard players operation #var_xor_t0 mrcd_system += #var_xor_t10 mrcd_system
scoreboard players operation #var_xor_t1 mrcd_system += #var_xor_t11 mrcd_system
scoreboard players operation #var_xor_t2 mrcd_system += #var_xor_t12 mrcd_system
scoreboard players operation #var_xor_t3 mrcd_system += #var_xor_t13 mrcd_system
scoreboard players operation #var_xor_t4 mrcd_system += #var_xor_t14 mrcd_system
scoreboard players operation #var_xor_t5 mrcd_system += #var_xor_t15 mrcd_system
scoreboard players operation #var_xor_t6 mrcd_system += #var_xor_t16 mrcd_system
scoreboard players operation #var_xor_t7 mrcd_system += #var_xor_t17 mrcd_system
execute if score #var_xor_t0 mrcd_system matches 2 run scoreboard players set #var_xor_t0 mrcd_system 0
execute if score #var_xor_t1 mrcd_system matches 2 run scoreboard players set #var_xor_t1 mrcd_system 0
execute if score #var_xor_t2 mrcd_system matches 2 run scoreboard players set #var_xor_t2 mrcd_system 0
execute if score #var_xor_t3 mrcd_system matches 2 run scoreboard players set #var_xor_t3 mrcd_system 0
execute if score #var_xor_t4 mrcd_system matches 2 run scoreboard players set #var_xor_t4 mrcd_system 0
execute if score #var_xor_t5 mrcd_system matches 2 run scoreboard players set #var_xor_t5 mrcd_system 0
execute if score #var_xor_t6 mrcd_system matches 2 run scoreboard players set #var_xor_t6 mrcd_system 0
execute if score #var_xor_t7 mrcd_system matches 2 run scoreboard players set #var_xor_t7 mrcd_system 0


#tellraw @a ["n2: ",{"score":{"name":"#var_xor_t7","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t6","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t5","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t4","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t3","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t2","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t1","objective":"mrcd_system"}},{"score":{"name":"#var_xor_t0","objective":"mrcd_system"}}]


# 转换为十进制 convert to demical
scoreboard players set #var0 mrcd_system 0
scoreboard players operation #var0 mrcd_system += #var_xor_t0 mrcd_system
scoreboard players operation #var_xor_t1 mrcd_system *= #n2 mrcd_system
scoreboard players operation #var0 mrcd_system += #var_xor_t1 mrcd_system
scoreboard players operation #var_xor_t2 mrcd_system *= #n4 mrcd_system
scoreboard players operation #var0 mrcd_system += #var_xor_t2 mrcd_system
scoreboard players operation #var_xor_t3 mrcd_system *= #n8 mrcd_system
scoreboard players operation #var0 mrcd_system += #var_xor_t3 mrcd_system
scoreboard players operation #var_xor_t4 mrcd_system *= #n16 mrcd_system
scoreboard players operation #var0 mrcd_system += #var_xor_t4 mrcd_system
scoreboard players operation #var_xor_t5 mrcd_system *= #n32 mrcd_system
scoreboard players operation #var0 mrcd_system += #var_xor_t5 mrcd_system
scoreboard players operation #var_xor_t6 mrcd_system *= #n64 mrcd_system
scoreboard players operation #var0 mrcd_system += #var_xor_t6 mrcd_system
scoreboard players operation #var_xor_t7 mrcd_system *= #n128 mrcd_system
scoreboard players operation #var0 mrcd_system += #var_xor_t7 mrcd_system

#tellraw @a ["r: ",{"score":{"name":"#var0","objective":"mrcd_system"}}]
