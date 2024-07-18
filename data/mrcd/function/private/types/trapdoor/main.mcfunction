execute if block ~ ~ ~ #minecraft:trapdoors[half=bottom,open=false] run function mrcd:private/types/trapdoor/bottom
execute if block ~ ~ ~ #minecraft:trapdoors[half=top,open=false] run function mrcd:private/types/trapdoor/top
execute if block ~ ~ ~ #minecraft:trapdoors[facing=south,open=true] run function mrcd:private/types/trapdoor/south
execute if block ~ ~ ~ #minecraft:trapdoors[facing=north,open=true] run function mrcd:private/types/trapdoor/north
execute if block ~ ~ ~ #minecraft:trapdoors[facing=east,open=true] run function mrcd:private/types/trapdoor/east
execute if block ~ ~ ~ #minecraft:trapdoors[facing=west,open=true] run function mrcd:private/types/trapdoor/west

function mrcd:private/cube/main
