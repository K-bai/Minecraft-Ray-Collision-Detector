execute if block ~ ~ ~ #minecraft:doors[facing=north,hinge=left] run function mrcd:private/types/door/open/east
execute if block ~ ~ ~ #minecraft:doors[facing=south,hinge=left] run function mrcd:private/types/door/open/west
execute if block ~ ~ ~ #minecraft:doors[facing=east,hinge=left] run function mrcd:private/types/door/open/south
execute if block ~ ~ ~ #minecraft:doors[facing=west,hinge=left] run function mrcd:private/types/door/open/north