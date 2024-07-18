execute if block ~ ~ ~ #minecraft:doors[open=false] run function mrcd:private/types/door/open/main
execute if block ~ ~ ~ #minecraft:doors[open=true,hinge=right] run function mrcd:private/types/door/closed/right
execute if block ~ ~ ~ #minecraft:doors[open=true,hinge=left] run function mrcd:private/types/door/closed/left

function mrcd:private/cube/main
