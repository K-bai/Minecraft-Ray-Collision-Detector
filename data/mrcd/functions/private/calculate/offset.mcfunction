# args: x and z position
#   #var0 (int)
#   #var1 (int)
# return: x and z position offset
#   #var0 (int)
#   #var1 (int)

function mrcd:private/calculate/hashcode
scoreboard players operation #var_ofs_hc mrcd_system = #var0 mrcd_system

# ((hashcode & 0xF)*1000/15-500)/2
scoreboard players operation #var0 mrcd_system %= #n16 mrcd_system
scoreboard players operation #var0 mrcd_system *= #n1000 mrcd_system
scoreboard players operation #var0 mrcd_system /= #n15 mrcd_system
scoreboard players remove #var0 mrcd_system 500
scoreboard players operation #var0 mrcd_system /= #n2 mrcd_system

# ((hashcode>>8 & 0xF)*1000/15-500)/2
scoreboard players operation #var1 mrcd_system = #var_ofs_hc mrcd_system
scoreboard players operation #var1 mrcd_system /= #n256 mrcd_system
scoreboard players operation #var1 mrcd_system %= #n16 mrcd_system
scoreboard players operation #var1 mrcd_system *= #n1000 mrcd_system
scoreboard players operation #var1 mrcd_system /= #n15 mrcd_system
scoreboard players remove #var1 mrcd_system 500
scoreboard players operation #var1 mrcd_system /= #n2 mrcd_system
