# args: x and z position
#   #var0 (int)
#   #var1 (int) 
# return: hashcode
#   #var0 (int)

scoreboard players operation #var_hc_x mrcd_system = #var0 mrcd_system
scoreboard players operation #var_hc_z mrcd_system = #var1 mrcd_system

# x = x*3129871
scoreboard players operation #var0 mrcd_system *= #n3129871 mrcd_system

# z = z*116129781
scoreboard players operation #var1 mrcd_system *= #n116129781 mrcd_system

# t = x^z
function mrcd:private/calculate/xor
scoreboard players operation #var_hc_t mrcd_system = #var0 mrcd_system

# n = t*t*42317861
scoreboard players operation #var0 mrcd_system *= #var0 mrcd_system
scoreboard players operation #var0 mrcd_system *= #n42317861 mrcd_system

# t = t*11
scoreboard players operation #var_hc_t mrcd_system *= #n11 mrcd_system

# r = n+t
scoreboard players operation #var0 mrcd_system += #var_hc_t mrcd_system

# r = r>>16
scoreboard players operation #var0 mrcd_system /= #n65536 mrcd_system
