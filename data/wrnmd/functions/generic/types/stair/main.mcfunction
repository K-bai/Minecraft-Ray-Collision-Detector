execute if block ~ ~ ~ #minecraft:stairs[half=top] run function wrnmd:generic/types/stair/top/main
execute if block ~ ~ ~ #minecraft:stairs[half=bottom] run function wrnmd:generic/types/stair/bottom/main
function wrnmd:generic/types/stair/template/remove_tags
tag @s add wrnmd_detected
