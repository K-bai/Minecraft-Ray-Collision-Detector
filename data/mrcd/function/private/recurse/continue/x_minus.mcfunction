scoreboard players set #block_x mrcd_system 1000
scoreboard players remove #block_corner_x mrcd_system 1000

execute as @e[type=marker,tag=new_pos,limit=1] at @s run tp @s ~-1 ~ ~