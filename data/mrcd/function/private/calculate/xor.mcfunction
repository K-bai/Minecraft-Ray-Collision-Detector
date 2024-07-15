# args: 
#   #var0 (int32)
#   #var1 (int32)
# return: 
#   #var0 (int32)

# What if I do an addition first?
scoreboard players operation #xor_result mrcd_system = #var0 mrcd_system
scoreboard players operation #xor_result mrcd_system += #var1 mrcd_system

# detect and remove carried bits
scoreboard players operation #var0 mrcd_system *= #n2 mrcd_system
scoreboard players operation #var1 mrcd_system *= #n2 mrcd_system
execute if score #var0 mrcd_system matches ..-1 if score #var1 mrcd_system matches ..-1 run scoreboard players operation #xor_result mrcd_system += #n2147483648 mrcd_system
scoreboard players operation #var0 mrcd_system *= #n2 mrcd_system
scoreboard players operation #var1 mrcd_system *= #n2 mrcd_system
execute if score #var0 mrcd_system matches ..-1 if score #var1 mrcd_system matches ..-1 run scoreboard players remove #xor_result mrcd_system 1073741824
scoreboard players operation #var0 mrcd_system *= #n2 mrcd_system
scoreboard players operation #var1 mrcd_system *= #n2 mrcd_system
execute if score #var0 mrcd_system matches ..-1 if score #var1 mrcd_system matches ..-1 run scoreboard players remove #xor_result mrcd_system 536870912
scoreboard players operation #var0 mrcd_system *= #n2 mrcd_system
scoreboard players operation #var1 mrcd_system *= #n2 mrcd_system
execute if score #var0 mrcd_system matches ..-1 if score #var1 mrcd_system matches ..-1 run scoreboard players remove #xor_result mrcd_system 268435456
scoreboard players operation #var0 mrcd_system *= #n2 mrcd_system
scoreboard players operation #var1 mrcd_system *= #n2 mrcd_system
execute if score #var0 mrcd_system matches ..-1 if score #var1 mrcd_system matches ..-1 run scoreboard players remove #xor_result mrcd_system 134217728
scoreboard players operation #var0 mrcd_system *= #n2 mrcd_system
scoreboard players operation #var1 mrcd_system *= #n2 mrcd_system
execute if score #var0 mrcd_system matches ..-1 if score #var1 mrcd_system matches ..-1 run scoreboard players remove #xor_result mrcd_system 67108864
scoreboard players operation #var0 mrcd_system *= #n2 mrcd_system
scoreboard players operation #var1 mrcd_system *= #n2 mrcd_system
execute if score #var0 mrcd_system matches ..-1 if score #var1 mrcd_system matches ..-1 run scoreboard players remove #xor_result mrcd_system 33554432
scoreboard players operation #var0 mrcd_system *= #n2 mrcd_system
scoreboard players operation #var1 mrcd_system *= #n2 mrcd_system
execute if score #var0 mrcd_system matches ..-1 if score #var1 mrcd_system matches ..-1 run scoreboard players remove #xor_result mrcd_system 16777216
scoreboard players operation #var0 mrcd_system *= #n2 mrcd_system
scoreboard players operation #var1 mrcd_system *= #n2 mrcd_system
execute if score #var0 mrcd_system matches ..-1 if score #var1 mrcd_system matches ..-1 run scoreboard players remove #xor_result mrcd_system 8388608
scoreboard players operation #var0 mrcd_system *= #n2 mrcd_system
scoreboard players operation #var1 mrcd_system *= #n2 mrcd_system
execute if score #var0 mrcd_system matches ..-1 if score #var1 mrcd_system matches ..-1 run scoreboard players remove #xor_result mrcd_system 4194304
scoreboard players operation #var0 mrcd_system *= #n2 mrcd_system
scoreboard players operation #var1 mrcd_system *= #n2 mrcd_system
execute if score #var0 mrcd_system matches ..-1 if score #var1 mrcd_system matches ..-1 run scoreboard players remove #xor_result mrcd_system 2097152
scoreboard players operation #var0 mrcd_system *= #n2 mrcd_system
scoreboard players operation #var1 mrcd_system *= #n2 mrcd_system
execute if score #var0 mrcd_system matches ..-1 if score #var1 mrcd_system matches ..-1 run scoreboard players remove #xor_result mrcd_system 1048576
scoreboard players operation #var0 mrcd_system *= #n2 mrcd_system
scoreboard players operation #var1 mrcd_system *= #n2 mrcd_system
execute if score #var0 mrcd_system matches ..-1 if score #var1 mrcd_system matches ..-1 run scoreboard players remove #xor_result mrcd_system 524288
scoreboard players operation #var0 mrcd_system *= #n2 mrcd_system
scoreboard players operation #var1 mrcd_system *= #n2 mrcd_system
execute if score #var0 mrcd_system matches ..-1 if score #var1 mrcd_system matches ..-1 run scoreboard players remove #xor_result mrcd_system 262144
scoreboard players operation #var0 mrcd_system *= #n2 mrcd_system
scoreboard players operation #var1 mrcd_system *= #n2 mrcd_system
execute if score #var0 mrcd_system matches ..-1 if score #var1 mrcd_system matches ..-1 run scoreboard players remove #xor_result mrcd_system 131072
scoreboard players operation #var0 mrcd_system *= #n2 mrcd_system
scoreboard players operation #var1 mrcd_system *= #n2 mrcd_system
execute if score #var0 mrcd_system matches ..-1 if score #var1 mrcd_system matches ..-1 run scoreboard players remove #xor_result mrcd_system 65536
scoreboard players operation #var0 mrcd_system *= #n2 mrcd_system
scoreboard players operation #var1 mrcd_system *= #n2 mrcd_system
execute if score #var0 mrcd_system matches ..-1 if score #var1 mrcd_system matches ..-1 run scoreboard players remove #xor_result mrcd_system 32768
scoreboard players operation #var0 mrcd_system *= #n2 mrcd_system
scoreboard players operation #var1 mrcd_system *= #n2 mrcd_system
execute if score #var0 mrcd_system matches ..-1 if score #var1 mrcd_system matches ..-1 run scoreboard players remove #xor_result mrcd_system 16384
scoreboard players operation #var0 mrcd_system *= #n2 mrcd_system
scoreboard players operation #var1 mrcd_system *= #n2 mrcd_system
execute if score #var0 mrcd_system matches ..-1 if score #var1 mrcd_system matches ..-1 run scoreboard players remove #xor_result mrcd_system 8192
scoreboard players operation #var0 mrcd_system *= #n2 mrcd_system
scoreboard players operation #var1 mrcd_system *= #n2 mrcd_system
execute if score #var0 mrcd_system matches ..-1 if score #var1 mrcd_system matches ..-1 run scoreboard players remove #xor_result mrcd_system 4096
scoreboard players operation #var0 mrcd_system *= #n2 mrcd_system
scoreboard players operation #var1 mrcd_system *= #n2 mrcd_system
execute if score #var0 mrcd_system matches ..-1 if score #var1 mrcd_system matches ..-1 run scoreboard players remove #xor_result mrcd_system 2048
scoreboard players operation #var0 mrcd_system *= #n2 mrcd_system
scoreboard players operation #var1 mrcd_system *= #n2 mrcd_system
execute if score #var0 mrcd_system matches ..-1 if score #var1 mrcd_system matches ..-1 run scoreboard players remove #xor_result mrcd_system 1024
scoreboard players operation #var0 mrcd_system *= #n2 mrcd_system
scoreboard players operation #var1 mrcd_system *= #n2 mrcd_system
execute if score #var0 mrcd_system matches ..-1 if score #var1 mrcd_system matches ..-1 run scoreboard players remove #xor_result mrcd_system 512
scoreboard players operation #var0 mrcd_system *= #n2 mrcd_system
scoreboard players operation #var1 mrcd_system *= #n2 mrcd_system
execute if score #var0 mrcd_system matches ..-1 if score #var1 mrcd_system matches ..-1 run scoreboard players remove #xor_result mrcd_system 256
scoreboard players operation #var0 mrcd_system *= #n2 mrcd_system
scoreboard players operation #var1 mrcd_system *= #n2 mrcd_system
execute if score #var0 mrcd_system matches ..-1 if score #var1 mrcd_system matches ..-1 run scoreboard players remove #xor_result mrcd_system 128
scoreboard players operation #var0 mrcd_system *= #n2 mrcd_system
scoreboard players operation #var1 mrcd_system *= #n2 mrcd_system
execute if score #var0 mrcd_system matches ..-1 if score #var1 mrcd_system matches ..-1 run scoreboard players remove #xor_result mrcd_system 64
scoreboard players operation #var0 mrcd_system *= #n2 mrcd_system
scoreboard players operation #var1 mrcd_system *= #n2 mrcd_system
execute if score #var0 mrcd_system matches ..-1 if score #var1 mrcd_system matches ..-1 run scoreboard players remove #xor_result mrcd_system 32
scoreboard players operation #var0 mrcd_system *= #n2 mrcd_system
scoreboard players operation #var1 mrcd_system *= #n2 mrcd_system
execute if score #var0 mrcd_system matches ..-1 if score #var1 mrcd_system matches ..-1 run scoreboard players remove #xor_result mrcd_system 16
scoreboard players operation #var0 mrcd_system *= #n2 mrcd_system
scoreboard players operation #var1 mrcd_system *= #n2 mrcd_system
execute if score #var0 mrcd_system matches ..-1 if score #var1 mrcd_system matches ..-1 run scoreboard players remove #xor_result mrcd_system 8
scoreboard players operation #var0 mrcd_system *= #n2 mrcd_system
scoreboard players operation #var1 mrcd_system *= #n2 mrcd_system
execute if score #var0 mrcd_system matches ..-1 if score #var1 mrcd_system matches ..-1 run scoreboard players remove #xor_result mrcd_system 4
scoreboard players operation #var0 mrcd_system *= #n2 mrcd_system
scoreboard players operation #var1 mrcd_system *= #n2 mrcd_system
execute if score #var0 mrcd_system matches ..-1 if score #var1 mrcd_system matches ..-1 run scoreboard players remove #xor_result mrcd_system 2

# Bam! There you have it! EZ!
scoreboard players operation #var0 mrcd_system = #xor_result mrcd_system
