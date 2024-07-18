scoreboard objectives add mrcd_x0 dummy ["mrcd vector x"]
scoreboard objectives add mrcd_y0 dummy ["mrcd vector y"]
scoreboard objectives add mrcd_z0 dummy ["mrcd vector z"]

scoreboard objectives add mrcd_system dummy ["mrcd system"]
scoreboard players set #installed mrcd_system 1

scoreboard players set #recursion_limit mrcd_system 256

scoreboard players set #n2 mrcd_system 2
scoreboard players set #n16 mrcd_system 16
scoreboard players set #n256 mrcd_system 256
scoreboard players set #n65536 mrcd_system 65536

# Use the sign bit in calculation. This is the only one more thing I need for XOR. It wont matter as long as no division happens.
scoreboard players set #n2147483648 mrcd_system -2147483648

scoreboard players set #nm1 mrcd_system -1
scoreboard players set #n11 mrcd_system 11
scoreboard players set #n15 mrcd_system 15
scoreboard players set #n1000 mrcd_system 1000
scoreboard players set #n3129871 mrcd_system 3129871
scoreboard players set #n42317861 mrcd_system 42317861
scoreboard players set #n116129781 mrcd_system 116129781

scoreboard players set #2 mrcd_system 2
scoreboard players set #4 mrcd_system 4
scoreboard players set #1000 mrcd_system 1000
scoreboard players set #-1 mrcd_system -1
