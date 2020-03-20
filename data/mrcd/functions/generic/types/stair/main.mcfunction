execute if block ~ ~ ~ #minecraft:stairs[half=top] run function mrcd:generic/types/stair/top/main
execute if block ~ ~ ~ #minecraft:stairs[half=bottom] run function mrcd:generic/types/stair/bottom/main
function mrcd:generic/types/stair/template/remove_tags
tag @s add mrcd_detected
