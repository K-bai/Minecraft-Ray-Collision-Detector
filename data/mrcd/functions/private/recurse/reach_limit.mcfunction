scoreboard players set #hit_entity_and_not_bullet mrcd_system 1
tellraw @a ["⚠ Reached recrursion limit of ",{"score":{"name":"n_recursion","objective":"mrcd_system"}}]
kill @s