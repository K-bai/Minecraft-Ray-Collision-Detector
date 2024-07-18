execute if block ~ ~ ~ #minecraft:doors[facing=north,hinge=right] run function mrcd:private/types/door/open/west
execute if block ~ ~ ~ #minecraft:doors[facing=south,hinge=right] run function mrcd:private/types/door/open/east
execute if block ~ ~ ~ #minecraft:doors[facing=east,hinge=right] run function mrcd:private/types/door/open/north
execute if block ~ ~ ~ #minecraft:doors[facing=west,hinge=right] run function mrcd:private/types/door/open/south