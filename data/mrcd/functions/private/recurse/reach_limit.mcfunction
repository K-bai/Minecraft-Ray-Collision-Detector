scoreboard players set #hit_entity_and_not_bullet mrcd_system 1
tellraw @a [{"text":"⚠ Reached recrursion limit of ","color":"#FF3333"},{"score":{"name":"#recursion_limit","objective":"mrcd_system"}}," blocks ⚠"]
kill @s