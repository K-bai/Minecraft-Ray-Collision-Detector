execute if block ~ ~ ~ pitcher_crop[age=0] run function mrcd:private/types/1_20/pitcher_crop/0
execute unless block ~ ~ ~ pitcher_crop[age=0] if block ~ ~ ~ pitcher_crop[half=lower] run function mrcd:private/types/1_20/pitcher_crop/lower
execute unless block ~ ~ ~ pitcher_crop[age=0] if block ~ ~ ~ pitcher_crop[half=upper] run function mrcd:private/types/1_20/pitcher_crop/upper

function mrcd:private/cube/main
