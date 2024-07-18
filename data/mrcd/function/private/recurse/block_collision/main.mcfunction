# Skip if the marker type is bullet and current block can be passed by player
execute if entity @s[tag=mrcd_bullet] if block ~ ~ ~ #mrcd:player_can_pass run return run scoreboard players set #return mrcd_system 0

# Test if current block can't be passed by player
execute if block ~ ~ ~ #mrcd:solid run return run function mrcd:private/sort/solid

# Test if current block can be passed by player
execute if block ~ ~ ~ #mrcd:player_can_pass run return run function mrcd:private/sort/player_can_pass

# Test if current block is undefined (treated as a full block)
function mrcd:private/types/full_block