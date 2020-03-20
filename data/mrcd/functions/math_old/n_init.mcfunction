# 函数参数: #var0
# var0: 需要转换至2^16格式的数
# 返回值: #var0, #var1, #var2, #var3, #var4, #var5, #var6, #var7
# 2^8格式每一位的值，从低位到高位排列，以补码形式存储
# params: #var0
# var0: the value to be converted into 2^8 format
# return values: #var0, #var1, #var2, #var3, #var4, #var5, #var6, #var7
# 2^8 format bit, from low to high, saved as complement

# 保存符号位 save sign bit
scoreboard players set #var_sign mrcd_system 0
execute if score #var0 mrcd_system matches -2147483648..-1 run scoreboard players set #var_sign mrcd_system -1
execute if score #var_sign mrcd_system matches -1 run scoreboard players operation #var0 mrcd_system *= #nm1 mrcd_system


# 数位分离 bit split
execute store result score #var1 mrcd_system run scoreboard players get #var0 mrcd_system
scoreboard players operation #var0 mrcd_system %= #n256 mrcd_system
scoreboard players operation #var1 mrcd_system /= #n256 mrcd_system
execute store result score #var2 mrcd_system run scoreboard players get #var1 mrcd_system
scoreboard players operation #var1 mrcd_system %= #n256 mrcd_system
scoreboard players operation #var2 mrcd_system /= #n256 mrcd_system
execute store result score #var3 mrcd_system run scoreboard players get #var2 mrcd_system
scoreboard players operation #var2 mrcd_system %= #n256 mrcd_system
scoreboard players operation #var3 mrcd_system /= #n256 mrcd_system
scoreboard players set #var4 mrcd_system 0
scoreboard players set #var5 mrcd_system 0
scoreboard players set #var6 mrcd_system 0
scoreboard players set #var7 mrcd_system 0


# 转换为补码 convert to complement
execute if score #var_sign mrcd_system matches -1 run scoreboard players set #var4 mrcd_system 255
execute if score #var_sign mrcd_system matches -1 run scoreboard players set #var5 mrcd_system 255
execute if score #var_sign mrcd_system matches -1 run scoreboard players set #var6 mrcd_system 255
execute if score #var_sign mrcd_system matches -1 run scoreboard players set #var7 mrcd_system 255

execute if score #var_sign mrcd_system matches -1 run scoreboard players set #var10 mrcd_system 256
execute if score #var_sign mrcd_system matches -1 run scoreboard players set #var11 mrcd_system 255
execute if score #var_sign mrcd_system matches -1 run scoreboard players set #var12 mrcd_system 255
execute if score #var_sign mrcd_system matches -1 run scoreboard players set #var13 mrcd_system 255

execute if score #var_sign mrcd_system matches -1 run scoreboard players operation #var10 mrcd_system -= #var0 mrcd_system
execute if score #var_sign mrcd_system matches -1 run scoreboard players operation #var11 mrcd_system -= #var1 mrcd_system
execute if score #var_sign mrcd_system matches -1 run scoreboard players operation #var12 mrcd_system -= #var2 mrcd_system
execute if score #var_sign mrcd_system matches -1 run scoreboard players operation #var13 mrcd_system -= #var3 mrcd_system
execute if score #var_sign mrcd_system matches -1 run scoreboard players operation #var0 mrcd_system = #var10 mrcd_system
execute if score #var_sign mrcd_system matches -1 run scoreboard players operation #var1 mrcd_system = #var11 mrcd_system
execute if score #var_sign mrcd_system matches -1 run scoreboard players operation #var2 mrcd_system = #var12 mrcd_system
execute if score #var_sign mrcd_system matches -1 run scoreboard players operation #var3 mrcd_system = #var13 mrcd_system


# test
#tellraw @a ["v0: ",{"score":{"name":"#var0","objective":"mrcd_system"}}]
#tellraw @a ["v1: ",{"score":{"name":"#var1","objective":"mrcd_system"}}]
#tellraw @a ["v2: ",{"score":{"name":"#var2","objective":"mrcd_system"}}]
#tellraw @a ["v3: ",{"score":{"name":"#var3","objective":"mrcd_system"}}]
#tellraw @a ["v4: ",{"score":{"name":"#var4","objective":"mrcd_system"}}]
#tellraw @a ["v5: ",{"score":{"name":"#var5","objective":"mrcd_system"}}]
#tellraw @a ["v6: ",{"score":{"name":"#var6","objective":"mrcd_system"}}]
#tellraw @a ["v7: ",{"score":{"name":"#var7","objective":"mrcd_system"}}]