scoreboard players set #box_x0 wrnmd_system 0
scoreboard players set #box_y0 wrnmd_system 188
scoreboard players set #box_z0 wrnmd_system 0
scoreboard players set #box_x1 wrnmd_system 1000
scoreboard players set #box_y1 wrnmd_system 563
scoreboard players set #box_z1 wrnmd_system 1000
function wrnmd:generic/complex_cube/main

# 10
scoreboard players set #box_x0 wrnmd_system 812
scoreboard players set #box_y0 wrnmd_system 0
scoreboard players set #box_z0 wrnmd_system 0
scoreboard players set #box_x1 wrnmd_system 1000
scoreboard players set #box_y1 wrnmd_system 188
scoreboard players set #box_z1 wrnmd_system 188
execute if block ~ ~ ~ #minecraft:beds[part=head,facing=north] run function wrnmd:generic/complex_cube/main
execute if block ~ ~ ~ #minecraft:beds[part=foot,facing=south] run function wrnmd:generic/complex_cube/main
execute if block ~ ~ ~ #minecraft:beds[part=foot,facing=east] run function wrnmd:generic/complex_cube/main
execute if block ~ ~ ~ #minecraft:beds[part=head,facing=east] run function wrnmd:generic/complex_cube/main
# 00
scoreboard players set #box_x0 wrnmd_system 0
scoreboard players set #box_y0 wrnmd_system 0
scoreboard players set #box_z0 wrnmd_system 0
scoreboard players set #box_x1 wrnmd_system 188
scoreboard players set #box_y1 wrnmd_system 188
scoreboard players set #box_z1 wrnmd_system 188
execute if block ~ ~ ~ #minecraft:beds[part=head,facing=north] run function wrnmd:generic/complex_cube/main
execute if block ~ ~ ~ #minecraft:beds[part=foot,facing=south] run function wrnmd:generic/complex_cube/main
execute if block ~ ~ ~ #minecraft:beds[part=head,facing=west] run function wrnmd:generic/complex_cube/main
execute if block ~ ~ ~ #minecraft:beds[part=foot,facing=west] run function wrnmd:generic/complex_cube/main
# 11
scoreboard players set #box_x0 wrnmd_system 812
scoreboard players set #box_y0 wrnmd_system 0
scoreboard players set #box_z0 wrnmd_system 812
scoreboard players set #box_x1 wrnmd_system 1000
scoreboard players set #box_y1 wrnmd_system 188
scoreboard players set #box_z1 wrnmd_system 1000
execute if block ~ ~ ~ #minecraft:beds[part=head,facing=south] run function wrnmd:generic/complex_cube/main
execute if block ~ ~ ~ #minecraft:beds[part=foot,facing=north] run function wrnmd:generic/complex_cube/main
execute if block ~ ~ ~ #minecraft:beds[part=head,facing=east] run function wrnmd:generic/complex_cube/main
execute if block ~ ~ ~ #minecraft:beds[part=foot,facing=west] run function wrnmd:generic/complex_cube/main
# 01
scoreboard players set #box_x0 wrnmd_system 0
scoreboard players set #box_y0 wrnmd_system 0
scoreboard players set #box_z0 wrnmd_system 812
scoreboard players set #box_x1 wrnmd_system 188
scoreboard players set #box_y1 wrnmd_system 188
scoreboard players set #box_z1 wrnmd_system 1000
execute if block ~ ~ ~ #minecraft:beds[part=head,facing=south] run function wrnmd:generic/complex_cube/main
execute if block ~ ~ ~ #minecraft:beds[part=foot,facing=north] run function wrnmd:generic/complex_cube/main
execute if block ~ ~ ~ #minecraft:beds[part=foot,facing=east] run function wrnmd:generic/complex_cube/main
execute if block ~ ~ ~ #minecraft:beds[part=head,facing=west] run function wrnmd:generic/complex_cube/main


tag @s add wrnmd_detected