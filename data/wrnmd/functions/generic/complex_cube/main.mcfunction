# 根据朝向决定检测哪个面
execute unless entity @e[tag=wrnmd_touch_cube_edge] if score @s wrnmd_x0 matches 1.. if score #block_x wrnmd_system <= #box_x0 wrnmd_system run function wrnmd:generic/complex_cube/x0
execute unless entity @e[tag=wrnmd_touch_cube_edge] if score @s wrnmd_x0 matches ..-1 if score #block_x wrnmd_system >= #box_x1 wrnmd_system run function wrnmd:generic/complex_cube/x1
execute unless entity @e[tag=wrnmd_touch_cube_edge] if score @s wrnmd_y0 matches 1.. if score #block_y wrnmd_system <= #box_y0 wrnmd_system run function wrnmd:generic/complex_cube/y0
execute unless entity @e[tag=wrnmd_touch_cube_edge] if score @s wrnmd_y0 matches ..-1 if score #block_y wrnmd_system >= #box_y1 wrnmd_system run function wrnmd:generic/complex_cube/y1
execute unless entity @e[tag=wrnmd_touch_cube_edge] if score @s wrnmd_z0 matches 1.. if score #block_z wrnmd_system <= #box_z0 wrnmd_system run function wrnmd:generic/complex_cube/z0
execute unless entity @e[tag=wrnmd_touch_cube_edge] if score @s wrnmd_z0 matches ..-1 if score #block_z wrnmd_system >= #box_z1 wrnmd_system run function wrnmd:generic/complex_cube/z1
tag @e[tag=wrnmd_touch_cube_edge] remove wrnmd_touch_cube_edge