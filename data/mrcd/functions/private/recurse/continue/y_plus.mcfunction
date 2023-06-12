scoreboard players set #block_y mrcd_system 0
scoreboard players add #block_corner_y mrcd_system 1000

execute as @e[type=marker,tag=new_pos,limit=1] at @s run tp @s ~ ~1 ~